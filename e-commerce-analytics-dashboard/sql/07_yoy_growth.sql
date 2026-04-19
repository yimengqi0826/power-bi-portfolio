-- Year-over-year sales growth

WITH yearly_sales AS (
    SELECT 
        order_year,
        SUM(Total_Sales) AS sales
    FROM stg_sales
    GROUP BY order_year
)

SELECT 
    order_year,
    sales,
    LAG(sales) OVER (ORDER BY order_year) AS prev_year_sales,

    (sales - LAG(sales) OVER (ORDER BY order_year)) 
        / LAG(sales) OVER (ORDER BY order_year) AS yoy_growth

FROM yearly_sales;
