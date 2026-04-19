-- Top 10 products per year using window functions

SELECT *
FROM (
    SELECT 
        order_year,
        Product_Name,
        SUM(Total_Sales) AS total_sales,

        RANK() OVER (
            PARTITION BY order_year 
            ORDER BY SUM(Total_Sales) DESC
        ) AS rank

    FROM stg_sales
    GROUP BY order_year, Product_Name
) t
WHERE rank <= 10
ORDER BY order_year, total_sales DESC;
