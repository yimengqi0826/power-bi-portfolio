-- 09_pareto_analysis.sql
-- Pareto analysis: identify top revenue-driving segments (80/20 rule)

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
        ROW_NUMBER() OVER (ORDER BY total_revenue DESC) AS rank,

        -- Cumulative revenue
        SUM(total_revenue) OVER (ORDER BY total_revenue DESC) AS cumulative_revenue,

        -- Total revenue (for percentage calculation)
        SUM(total_revenue) OVER () AS total_revenue_all

    FROM campaign_performance
)

SELECT 
    campaign_type,
    total_revenue,
    rank,

    -- Cumulative contribution
    cumulative_revenue / total_revenue_all AS cumulative_share

FROM ranked_campaigns
ORDER BY total_revenue DESC;
