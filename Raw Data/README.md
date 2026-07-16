# 📄 Bank Customer Churn - Raw Dataset

##  Overview
This repository contains the raw dataset used for the Bank Customer Churn predictive modeling and business intelligence dashboard. The data represents a sample of retail banking customers, capturing their demographics, financial standing, and engagement metrics with the bank.

**File Name:** `Bank Customer Churn Prediction.csv`

## 📊 Dataset Characteristics
* **Total Records:** 10,000 customers
* **Target Variable:** `churn` (Binary classification)
* **Class Distribution:** The dataset contains a natural, mild class imbalance[cite: 1]:
  * **Class 0 (Retained):** ~79.63%[cite: 1]
  * **Class 1 (Churned):** ~20.37%[cite: 1]
* **Sampling Note:** No synthetic oversampling (like SMOTE) was applied to the raw data prior to modeling to preserve the real-world distribution of the customer base[cite: 1].

## 📖 Data Dictionary

Below is a breakdown of the features included in the dataset[cite: 1]:

| Feature Name | Data Type | Description |
| :--- | :--- | :--- |
| **customer_id** | String/Numeric | Unique identifier for each bank customer. |
| **credit_score** | Numeric | The customer's credit score. |
| **country** | Categorical | The country of residence (France, Spain, Germany). |
| **gender** | Categorical | The customer's gender (Male, Female). |
| **age** | Numeric | The customer's age in years. |
| **tenure** | Numeric | The number of years the customer has been with the bank. |
| **balance** | Numeric | The customer's total account balance. |
| **products_number** | Numeric | The number of banking products the customer currently holds. |
| **credit_card** | Binary | Indicates whether the customer has a credit card (1 = Yes, 0 = No). |
| **active_member** | Binary | Indicates whether the customer is an active user (1 = Yes, 0 = No). |
| **estimated_salary** | Numeric | The customer's estimated annual salary. |
| **churn (Target)** | Binary | Indicates whether the customer left the bank (1 = Churned, 0 = Retained). |

## ⚙️ Preprocessing Notes for Modeling
During the exploratory data analysis (EDA) and modeling phases (conducted in R), the following transformations are typically applied to this raw data:
1. `gender` is converted into a binary dummy variable (`gender_id` where Female = 1)[cite: 1].
2. `country` is expanded into dummy variables (`country_Germany`, `country_France`, `country_Spain`) to prevent multicollinearity in logistic regression[cite: 1].


