-- Top 10 products per year using window functions

SELECT *
FROM (
    SELECT 
        order_year,
        Product_Name,
        SUM(Total_Sales) AS total_sales,
        -- Total sales per product per year

        RANK() OVER (
            PARTITION BY order_year 
            ORDER BY SUM(Total_Sales) DESC
        ) AS product_rank
        -- Rank products within each year by sales

    FROM stg_sales
    GROUP BY order_year, Product_Name
) t

WHERE product_rank <= 10
-- Keep top 10 products per year

ORDER BY order_year, total_sales DESC;
-- Sort by year and sales performance
