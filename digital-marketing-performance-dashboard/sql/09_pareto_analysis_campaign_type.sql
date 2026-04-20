-- Pareto analysis: identify top revenue-driving campaign types (80/20 rule)

WITH campaign_performance AS (
    SELECT 
        campaign_type,
        SUM(revenue) AS total_revenue
    FROM stg_ads
    GROUP BY campaign_type
),

ranked_campaigns AS (
    SELECT 
        campaign_type,
        total_revenue,

        -- Rank campaigns by revenue
        RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank,

        -- Cumulative revenue (explicit window frame for clarity)
        SUM(total_revenue) OVER (
            ORDER BY total_revenue DESC
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS cumulative_revenue,

        -- Total revenue (for percentage calculation)
        SUM(total_revenue) OVER () AS total_revenue_all

    FROM campaign_performance
)

SELECT 
    campaign_type,
    total_revenue,
    revenue_rank,

    cumulative_revenue * 1.0 / NULLIF(total_revenue_all, 0) AS cumulative_share,
    -- Cumulative contribution (share)

    CASE 
        WHEN cumulative_revenue * 1.0 / NULLIF(total_revenue_all, 0) <= 0.8 
        THEN 'Top 80%'
        ELSE 'Long Tail'
    END AS pareto_group
    -- Pareto classification (80/20 rule)

FROM ranked_campaigns
ORDER BY total_revenue DESC; 
