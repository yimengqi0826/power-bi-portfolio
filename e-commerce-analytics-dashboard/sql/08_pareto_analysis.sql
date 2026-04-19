-- Pareto analysis: customer revenue contribution (80/20 rule)

WITH customer_sales AS (
    SELECT 
        Customer_Name,
        SUM(Total_Sales) AS total_sales
    FROM stg_sales
    GROUP BY Customer_Name
),

ranked AS (
    SELECT 
        Customer_Name,
        total_sales,

        -- Rank customers by revenue
        RANK() OVER (ORDER BY total_sales DESC) AS rnk,

        -- Cumulative revenue
        SUM(total_sales) OVER (ORDER BY total_sales DESC) AS cumulative_sales,

        -- Total revenue
        SUM(total_sales) OVER () AS total_revenue

    FROM customer_sales
)

SELECT 
    Customer_Name,
    total_sales,
    cumulative_sales / total_revenue AS cumulative_share

FROM ranked
ORDER BY total_sales DESC;
