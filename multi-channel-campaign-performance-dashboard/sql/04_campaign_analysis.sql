-- 04_campaign_analysis.sql
-- Campaign effectiveness analysis

SELECT 
    campaign_type,
    SUM(impressions) AS impressions,
    SUM(clicks) AS clicks,
    SUM(conversions) AS conversions,
    SUM(ad_spend) AS spend,
    SUM(revenue) AS revenue,

    -- KPI calculations
    SUM(clicks) / NULLIF(SUM(impressions), 0) AS ctr,
    SUM(ad_spend) / NULLIF(SUM(clicks), 0) AS cpc,
    SUM(ad_spend) / NULLIF(SUM(conversions), 0) AS cpa,
    SUM(revenue) / NULLIF(SUM(ad_spend), 0) AS roas

FROM stg_ads
GROUP BY campaign_type
ORDER BY roas DESC;
