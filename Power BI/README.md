# 📊 Bank Customer Churn - Executive Power BI Dashboard

## 📌 Overview
This repository contains a highly interactive, executive-ready Power BI dashboard (`.pbix`) designed to track, visualize, and analyze bank customer churn. 

The goal of this dashboard is to translate raw banking data and predictive statistical models into actionable business intelligence. It empowers relationship managers and bank executives to quickly identify at-risk customer segments and deploy targeted retention strategies.

## 🎨 UI/UX & Design Strategy
To ensure the dashboard is both professional and easy to interpret, a custom JSON theme was developed and applied:
* **Strategic Color Coding:** Navy Blue is used consistently to represent active/retained customers and stable metrics, while Red is used exclusively to highlight "Churned" customers and critical risk areas. 
* **Modern Interface:** The dashboard utilizes a light gray canvas with stark white, rounded-corner visual cards and subtle drop shadows to create a clean, modern "floating" effect.
* **Custom Navigation:** Built-in page navigation buttons allow users to seamlessly click through the report without relying on standard Power BI tabs.

## 🗂️ Dashboard Architecture 
The report is divided into three focused pages to guide the user from high-level metrics down to actionable business steps:

### 1. Customer Churn Executive Dashboard
* **Primary KPIs:** Displays Total Customers (10K), Customers Lost (2,037), Active Customers (7,963), Average Balance ($76.49K), and the overall Churn Rate (20.37%).
* **High-Level Trends:** Highlights average balances across regions and visualizes the stark contrast in churn rates based on the number of products a customer holds.

### 2. Customer Risk Segmentation
* **Geographic Risk:** A breakdown of lost customers by country, clearly highlighting the heavy losses in specific regions like Germany and France.
* **Demographic Breakdown:** Analyzes churn rates across age groups (showing a massive spike in the 41-50 and 51+ demographics) and gender differences.
* **Risk Categorization:** Segments active customers into Low, Medium, and High-risk buckets to help prioritize outreach.

### 3. Retention Strategy Recommendations
* Translates the visual data into a text-based, strategic action plan.
* Recommends specific business interventions, such as focusing on single-product customers for cross-selling, designing premium loyalty programs for the 41+ demographic, and assigning dedicated managers to high-balance German accounts.

## 🚀 How to Use This File
1. **Download the file:** Download the `.pbix` file from this repository.
2. **Install Power BI:** Ensure you have [Power BI Desktop](https://powerbi.microsoft.com/desktop/) installed on your machine (it is free to download).
3. **Open and Interact:** Open the file to interact with the cross-filtering visuals, hover over data points for tooltips, and explore the DAX measures used to calculate the KPIs.


