-- 08_top_performing_segments.sql
-- Identify top-performing segments by platform and country

SELECT 
    platform,
    country,
    SUM(ad_spend) AS spend,
    SUM(revenue) AS revenue,
    SUM(revenue) / NULLIF(SUM(ad_spend), 0) AS roas

FROM stg_ads
GROUP BY platform, country
ORDER BY roas DESC
LIMIT 10;
