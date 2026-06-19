-- 01_kpi_analysis.sql
-- Overall KPI performance of marketing campaigns

SELECT 
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(ad_spend) AS total_spend,
    SUM(revenue) AS total_revenue,
    SUM(conversions) AS total_conversions,

    -- Key performance metrics (calculated using aggregated values)
    SUM(clicks) / NULLIF(SUM(impressions), 0) AS ctr,
    SUM(ad_spend) / NULLIF(SUM(clicks), 0) AS cpc,
    SUM(ad_spend) / NULLIF(SUM(conversions), 0) AS cpa,
    SUM(revenue) / NULLIF(SUM(ad_spend), 0) AS roas

FROM stg_ads;
