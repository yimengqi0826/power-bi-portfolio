-- Pareto analysis: customer sales contribution (80/20 rule)

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

        RANK() OVER (ORDER BY total_sales DESC) AS rnk,

        SUM(total_sales) OVER (
            ORDER BY total_sales DESC
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS cumulative_sales,

        SUM(total_sales) OVER () AS total_revenue

    FROM customer_sales
)

SELECT 
    Customer_Name,
    total_sales,
    rnk,

    cumulative_sales * 1.0 / total_revenue AS cumulative_share,

    CASE 
        WHEN cumulative_sales * 1.0 / total_revenue <= 0.8 THEN 'Top 80%'
        ELSE 'Long Tail'
    END AS pareto_group

FROM ranked
ORDER BY total_sales DESC;
