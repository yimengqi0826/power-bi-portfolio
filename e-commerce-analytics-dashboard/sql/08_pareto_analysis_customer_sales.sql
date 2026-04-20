-- Pareto analysis: customer sales contribution (80/20 rule)

WITH customer_sales AS (
    -- Aggregate total sales at customer level
    SELECT 
        Customer_Name,
        SUM(Total_Sales) AS total_sales
    FROM stg_sales
    GROUP BY Customer_Name
),

ranked AS (
    -- Rank customers and calculate cumulative sales contribution
    SELECT 
        Customer_Name,
        total_sales,

        RANK() OVER (ORDER BY total_sales DESC) AS rnk,
        -- Rank customers by total sales (highest first)

        SUM(total_sales) OVER (
            ORDER BY total_sales DESC
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS cumulative_sales,
        -- Running total of sales (used for cumulative distribution)

        SUM(total_sales) OVER () AS total_revenue
        -- Total sales across all customers (used for percentage calculation)

    FROM customer_sales
)

SELECT 
    Customer_Name,
    total_sales,
    rnk,

    -- Cumulative share of total sales
    cumulative_sales * 1.0 / total_revenue AS cumulative_share,

    -- Pareto classification: Top 80% contributors vs Long Tail
    CASE 
        WHEN cumulative_sales * 1.0 / total_revenue <= 0.8 THEN 'Top 80%'
        ELSE 'Long Tail'
    END AS pareto_group

FROM ranked
ORDER BY total_sales DESC;
