# 🏦 Bank Customer Churn: Predictive Analytics & Retention Strategy

## Project Overview
Customer churn is a critical metric for any financial institution, directly impacting long-term profitability and growth. This project bridges the gap between raw financial data and business strategy by identifying why customers leave and predicting who is at risk.

By conducting statistical analysis and machine learning in R, and translating those findings into an executive-ready Power BI dashboard, this project delivers actionable strategies to improve customer retention, cross-selling, and regional targeting.

## 🛠️ Tech Stack & Tools

* Data Manipulation & Modeling: R (tidyverse, caret, pROC, car)

* Machine Learning Algorithm: Logistic Regression (glm)

* Data Visualization & Business Intelligence: Power BI

* UI/UX: Custom Power BI JSON Theme

## 🔬 Methodology & Statistical Analysis (R)

The predictive modeling was built entirely in R to ensure statistical rigor before visual deployment.

1. Exploratory Data Analysis (EDA)
Class Imbalance: Identified a mild imbalance (80% retained vs. 20% churned). Decided against synthetic oversampling (SMOTE) to preserve the original distribution of the data.

Variable Relationships: Visualized features like balance, products_number, age, and credit_score against churn using ggplot2 boxplots to identify initial trends.

2. Feature Engineering
Converted categorical variables into numeric dummy variables to prepare for regression analysis (e.g., gender_id, country_Germany, country_France).

3. Logistic Regression Modeling
Built iterative models, systematically dropping statistically insignificant variables (like estimated_salary and credit_card) and checking for multicollinearity using the Variance Inflation Factor (VIF).

Final Model Selection (Model 4): Incorporated credit_score, age, tenure, balance, gender, products_number, country, and active_member status.

Threshold Tuning: Adjusted the classification threshold from the default 0.5 down to 0.3 to prioritize identifying actual churners (True Positives), ensuring relationship managers can target at-risk customers early.

Model Evaluation: The final model achieved a solid AUC (Area Under the ROC Curve) score of 76.53%, confirming its reliability in distinguishing between loyal customers and churn risks.

## 📊 Executive Dashboard (Power BI)

The statistical findings were deployed into an interactive Power BI application designed for banking executives. The dashboard utilizes a custom JSON theme to provide a clean, modern, and trustworthy user interface.

### Dashboard Architecture

* Executive Summary: High-level KPIs, overall churn rate (20.37%), and financial impact (Average Balance vs. Churn).

* Customer Risk Segmentation: Deep dive into the demographics driving churn, including a Treemap of geographic losses and churn rates by age bracket.

* Retention Strategy Recommendations: Actionable, data-backed business strategies derived directly from the predictive model.

(Note: Add screenshots of your dashboard here by dragging and dropping the image files into the GitHub editor!)

## 💡 Key Business Insights & Recommendations

Based on the synthesis of the predictive model and data visualizations, the following strategic actions are recommended:

🌍 Geographic Intervention (Germany): The German market exhibits a disproportionately high churn rate (32.4%). The bank must immediately conduct localized customer satisfaction surveys and assign dedicated relationship managers to high-value German accounts.

📦 Product Cross-Selling: Customers holding only a single banking product make up the vast majority of churn. The bank should introduce bundled packages (e.g., linking a savings account with an investment product) to increase dependency and engagement.

🧑‍🦳 Targeted Loyalty for Ages 41+: The 41+ demographic is leaving at significantly higher rates than younger cohorts. Introducing premium banking benefits, personalized financial planning, and targeted loyalty rewards for this group is critical.

💳 High-Balance Protection: Customers with higher account balances show a surprising tendency to churn. Because these represent high-revenue accounts, they must receive priority retention efforts and personalized offers.

## 🚀 How to Use This Repository

* R Script (Bank_customer_churn_script.R): Contains the full data pipeline, from EDA and dummy variable creation to training the Logistic Regression model and generating the ROC curve.

* Dataset: The raw dataset Bank Customer Churn Prediction.csv is required to run the R script. Update the file path in the read.csv() function to match your local directory.

* Power BI Theme (BankChurnTheme.json): The custom theme file used to format the dashboard.

* Power BI File (.pbix): Download the .pbix file to interact with the visual dashboard and explore the DAX measures used for KPI calculations.


---

## 👨‍💻 Author

**Anmol Verma**
* B.A. (Hons) Economics, Third Year | Delhi University
* Passionate about Data Analytics, Business Analyst, Economics, and Predictive Modeling
* [LinkedIn](https://www.linkedin.com/in/anmol-verma-2810a2369/)
* [Email](manojaashp.anm@gmail.com)

If you have any questions about this analysis, the predictive modeling, or the Power BI dashboard, feel free to reach out!
