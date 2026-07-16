# 🏦 Bank Customer Churn Prediction (R)

## 📌 Overview
This repository contains an R script designed to analyze and predict customer churn for a retail bank. The project applies statistical modeling techniques to identify the key drivers of customer attrition, allowing financial institutions to implement proactive retention strategies. 

The core of this analysis relies on **Logistic Regression**, iterative variable selection using **Variance Inflation Factor (VIF)**, and classification threshold optimization.

## 🛠️ Tech Stack & Libraries
This project is built entirely in **R**. Ensure you have the following packages installed before running the script:
* `tidyverse` (Data manipulation and visualization via ggplot2)
* `caret` (Data splitting and machine learning workflows)
* `pROC` (ROC curve generation and AUC calculation)
* `car` (Calculating VIF for multicollinearity checks)

To install these dependencies, run:
```R
install.packages(c("tidyverse", "pROC", "caret", "car"))
