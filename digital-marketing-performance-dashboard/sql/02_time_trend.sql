-- 02_time_trend.sql
-- Monthly performance trend analysis

SELECT 
    year,
    month,
    SUM(ad_spend) AS total_spend,
    SUM(revenue) AS total_revenue,
    SUM(conversions) AS total_conversions,

    -- Performance metrics over time
    SUM(revenue) / NULLIF(SUM(ad_spend), 0) AS roas,
    SUM(clicks) / NULLIF(SUM(impressions), 0) AS ctr

FROM stg_ads
GROUP BY year, month
ORDER BY year, month;
