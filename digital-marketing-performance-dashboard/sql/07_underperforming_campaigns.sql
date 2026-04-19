-- 07_underperforming_campaigns.sql
-- Identify campaigns with poor performance (ROAS < 1)

SELECT 
    platform,
    campaign_type,
    SUM(ad_spend) AS spend,
    SUM(revenue) AS revenue,
    SUM(revenue) / NULLIF(SUM(ad_spend), 0) AS roas

FROM stg_ads
GROUP BY platform, campaign_type
HAVING roas < 1
ORDER BY roas ASC;
