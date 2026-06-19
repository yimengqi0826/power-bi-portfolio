-- 03_platform_analysis.sql
-- Performance comparison across platforms

SELECT 
    platform,
    SUM(impressions) AS impressions,
    SUM(clicks) AS clicks,
    SUM(ad_spend) AS spend,
    SUM(revenue) AS revenue,
    SUM(conversions) AS conversions,

    -- Platform-level KPIs
    SUM(clicks) / NULLIF(SUM(impressions), 0) AS ctr,
    SUM(ad_spend) / NULLIF(SUM(clicks), 0) AS cpc,
    SUM(ad_spend) / NULLIF(SUM(conversions), 0) AS cpa,
    SUM(revenue) / NULLIF(SUM(ad_spend), 0) AS roas

FROM stg_ads
GROUP BY platform
ORDER BY roas DESC;
