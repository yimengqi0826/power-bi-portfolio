-- 10_funnel_analysis.sql
-- Conversion funnel analysis

SELECT 
    platform,

    SUM(impressions) AS impressions,
    SUM(clicks) AS clicks,
    SUM(conversions) AS conversions,

    -- Funnel conversion rates
    SUM(clicks) / NULLIF(SUM(impressions), 0) AS click_through_rate,
    SUM(conversions) / NULLIF(SUM(clicks), 0) AS conversion_rate,

    -- End-to-end conversion
    SUM(conversions) / NULLIF(SUM(impressions), 0) AS overall_conversion_rate

FROM stg_ads
GROUP BY platform
ORDER BY overall_conversion_rate DESC;
