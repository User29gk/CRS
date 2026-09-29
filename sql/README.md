# E-Commerce Churn & Customer Lifetime Value (LTV) Analytics

An end-to-end data analytics and machine learning project designed to quantify customer churn, segment user behavior using RFM analysis, and identify high-value at-risk customers from non-subscription e-commerce transactional data.

---

## Executive Summary

* **Objective:** Predict customer churn, evaluate Customer Lifetime Value (LTV), and deliver actionable insights for customer retention strategies.
* **Dataset:** 500,000+ transactional records from an online retail platform.
* **Key Findings:**
  * Identified a overall customer churn rate of **33.4%** based on a 90-day recency cutoff.
  * RFM segmentation revealed that top-tier customers drive over 80% of total lifetime revenue.
  * Machine learning models showed that **Monetary Value** and **Average Order Value** are the strongest behavioral indicators of potential churn.

---

## Project Architecture & Workflow

```text
ecommerce-churn-ltv-analytics/
│
├── data/
│   ├── OnlineRetail.csv              # Raw transactional dataset
│   ├── cleaned_online_retail.csv     # Preprocessed transaction data
│   └── rfm_churn_data.csv            # Aggregated RFM metrics & churn labels
│
├── notebooks/
│   └── 01_data_cleaning_eda.ipynb    # Python cleaning, RFM analysis & ML churn modeling
│
├── sql/
│   └── 01_churn_ltv_queries.sql      # Analytical SQL queries for business aggregations
│
├── dashboards/
│   └── churn_ltv_dashboard.pbix      # Interactive Power BI executive dashboard
│
└── README.md                         # Project documentation