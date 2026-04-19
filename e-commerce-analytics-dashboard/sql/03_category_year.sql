-- Sales by year and product category

SELECT 
    order_year,
    Product_Category,
    SUM(Total_Sales) AS total_sales
FROM stg_sales
GROUP BY order_year, Product_Category
ORDER BY order_year, total_sales DESC;
