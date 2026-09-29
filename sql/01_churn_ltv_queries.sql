-- 1. Total Revenue, Orders, and Active Customers Overview
SELECT 
    COUNT(DISTINCT CustomerID) AS Total_Customers,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders,
    ROUND(SUM(TotalAmount), 2) AS Total_Revenue,
    ROUND(SUM(TotalAmount) / COUNT(DISTINCT InvoiceNo), 2) AS Avg_Order_Value
FROM cleaned_online_retail;

-- 2. Customer Lifetime Value (LTV) and Order Count by Segment
SELECT 
    Churn,
    COUNT(CustomerID) AS Customer_Count,
    ROUND(AVG(Monetary), 2) AS Avg_LTV,
    ROUND(AVG(Frequency), 2) AS Avg_Orders_Per_Customer
FROM rfm_churn_data
GROUP BY Churn;

-- 3. High-Value Customers At Risk of Churn
SELECT 
    CustomerID,
    Recency,
    Frequency,
    Monetary AS Customer_LTV,
    RFM_Segment
FROM rfm_churn_data
WHERE Churn = 1 AND Monetary > 1000
ORDER BY Monetary DESC;