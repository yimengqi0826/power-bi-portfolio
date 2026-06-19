-- 10_funnel_analysis.sql
-- Conversion funnel analysis

SELECT 
    platform,

    SUM(impressions) AS impressions,
    SUM(clicks) AS clicks,
    SUM(conversions) AS conversions,

    SUM(clicks) / NULLIF(SUM(impressions), 0) AS click_through_rate,
    SUM(conversions) / NULLIF(SUM(clicks), 0) AS conversion_rate,
    -- Funnel conversion rates

    SUM(conversions) / NULLIF(SUM(impressions), 0) AS overall_conversion_rate
    -- End-to-end conversion

FROM stg_ads
GROUP BY platform
ORDER BY overall_conversion_rate DESC;
