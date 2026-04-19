-- KPI Analysis

SELECT 
    COUNT(DISTINCT Order_ID) AS total_orders,
    SUM(Total_Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM stg_sales;
