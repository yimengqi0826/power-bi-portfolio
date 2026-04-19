-- Monthly sales and profit trend

SELECT 
    order_year,
    order_month,
    SUM(Total_Sales) AS monthly_sales,
    SUM(Profit) AS monthly_profit
FROM stg_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
