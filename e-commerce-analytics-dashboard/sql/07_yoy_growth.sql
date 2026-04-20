-- Year-over-year (YoY) sales growth analysis

WITH yearly_sales AS (
    -- Aggregate total sales by year
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
    -- Get previous year's sales for comparison

    (sales - LAG(sales) OVER (ORDER BY order_year)) 
        * 1.0 / LAG(sales) OVER (ORDER BY order_year) AS yoy_growth
    -- Calculate year-over-year growth rate

FROM yearly_sales;
