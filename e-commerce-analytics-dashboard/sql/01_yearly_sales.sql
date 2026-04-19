-- Annual sales and profit performance

SELECT 
    order_year,
    COUNT(DISTINCT Order_ID) AS total_orders,
    SUM(Total_Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM stg_sales
GROUP BY order_year
ORDER BY order_year;
