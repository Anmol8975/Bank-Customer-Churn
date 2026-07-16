## Load Packages 
install.packages("tidyverse")
install.packages("pROC")
install.packages("caret")
library(tidyverse)
library(pROC)
library(caret)
library(car)

## Load Data set
Bank_Data <- read.csv("C:/Users/manoj/OneDrive/Documents/Bank Customer Churn Prediction.csv")
view(Bank_Data)
prop.table(table(Bank_Data$churn))
## by viewing result this is a mild imbalance data set 0 = 79.63% and 1 = 20.37%, so it does not require any sampling.
## How this affects our data set if the data set is imbalance then the model will act lazy and it will predict 0 the customers who did not left more.
## now lets make a new column as gender_id to test does the churn also depends on gender we are taking Female = 1 and otherwise = 0.

Bank_Data$gender_id <- ifelse(Bank_Data$gender == "Female",1,0)

## lets create dummy variables for country
Bank_Data$country_Spain = ifelse(Bank_Data$country == "Spain",1,0)
Bank_Data$country_France = ifelse(Bank_Data$country == "France",1,0)
Bank_Data$country_Germany = ifelse(Bank_Data$country == "Germany",1,0)

## Lest split the data in train and test for better result 
set.seed(688)
index <- createDataPartition(Bank_Data$churn, p = 0.8, list = FALSE)
train <- Bank_Data[index, ]
test  <- Bank_Data[-index, ]

## lets build plots on train data to vizualy understand which factors affects churn.
## Plot 1 Churn vs Balance 
ggplot(train, aes(x = factor(churn),
                  y = balance)) +
  geom_boxplot() + theme_grey()
## By this plot we understand that the customer with higher balance has left the bank.

## Plot 2 
ggplot(train, aes(x = factor(churn),
                  y = products_number)) + 
  geom_boxplot() + theme_grey()
## by this plot we understand that the customer with fewer products has left the bank.

## Plot 3 
ggplot(train, aes(x = factor(churn),
                  y = age)) + 
  geom_boxplot() + theme_grey()
## by this plot plot we understand that the customer with 40+ Age has left the bank and customers with age below 40 has stayed in the bank.

## Plot 4 
ggplot(train, aes(x = factor(churn),
                  y = credit_score)) + 
  geom_boxplot() + theme_grey()
## the median credit score is almost same with a error of plus minus 15, so its not likely to make a difference.

## Now lets build our fist model 
Model_1 <- glm(churn ~ credit_score + age + tenure + balance + products_number + credit_card +
               active_member + estimated_salary, data = train, family = "binomial")
summary(Model_1)
vif(Model_1)
## products_number, credit_card and estimated salary are not statistically significant and non of the variable have Multicollinearity which is good,
## lets make a new model by dropping the credit_card and estimated salary except products_number as they shows in box plot that customer with lower products leave.

## Model 2 
Model_2 <- glm(churn ~ credit_score + age + tenure + balance + products_number + 
               active_member , data = train, family = "binomial")
summary(Model_2)
vif(Model_2)
## The AIC has improved which means this is a better model than Model_1 and non of the variable have multicolinearity.

## lets build model three by add dummy variable gender in model.
Model_3 <- glm(churn ~ credit_score + age + tenure + balance + gender_id + products_number + 
                 active_member , data = train, family = "binomial")
summary(Model_3)
vif(Model_3)
## gender is statistically significant female has more possibility to left bank compared to males and products_number become significant at 1% of significant level.

## Lets make a new model and add country dummy variable in model and test does country affect churn.
## i have add only 2 country variable because if i have added all three then it will show perfect multicollinearity.
Model_4 <- glm(churn ~ credit_score + age + tenure + balance + gender_id + 
                 products_number + country_Germany + country_France +  
                 active_member , data = train, family = "binomial")
summary(Model_4)
vif(Model_4)
## this model shows that Germany is highly significant while France and after adding country dummy variable the products_number become highly significant.
## lets consider this our final model and see hows the model works.

test$predicted <- predict(Model_4, newdata = test, type = "response")
test$prdicted_class <- ifelse(test$predicted > 0.5, 1,0)

## validate model by confusion matrix 
table( Actual = test$churn, Predicted = test$prdicted_class)
## confusion matrix shows that model predicted 1531 no churn as true negative and 94 as true positive which makes our model accuracy as 81.25%.
## model predicted 45 non churners as churners and 330 churners as non churner which is big.
## so lets make a new class column take if predicted value is more than 0.3 then the customer is churner and does it improve our model.

test$prdicted_class_2 <- ifelse(test$predicted > 0.3, 1, 0)

## validate it 
table( Actual = test$churn, Predicted = test$prdicted_class_2)
## this Devaluation our model accuracy to 78.95%, but it capture the churners so its good and bank can target them before leaving.

## lets make a AUC graph to understand model accuracy

roc_obj <- roc(test$churn, test$predicted)
auc(roc_obj)
plot(roc_obj)
## this shows are overall model score is 76.53% which is good.







