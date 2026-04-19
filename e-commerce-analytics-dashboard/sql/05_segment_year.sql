-- Customer segment performance by year

SELECT 
    order_year,
    Customer_Segment,
    SUM(Total_Sales) AS total_sales
FROM stg_sales
GROUP BY order_year, Customer_Segment
ORDER BY order_year;
