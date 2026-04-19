-- Regional performance over time

SELECT 
    order_year,
    Region,
    SUM(Total_Sales) AS total_sales
FROM stg_sales
GROUP BY order_year, Region
ORDER BY order_year, total_sales DESC;
