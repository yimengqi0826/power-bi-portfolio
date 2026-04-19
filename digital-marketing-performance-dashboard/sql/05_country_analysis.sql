-- 05_country_analysis.sql
-- Performance analysis by country

SELECT 
    country,
    SUM(ad_spend) AS spend,
    SUM(revenue) AS revenue,
    SUM(conversions) AS conversions,

    -- Efficiency metrics
    SUM(revenue) / NULLIF(SUM(ad_spend), 0) AS roas,
    SUM(ad_spend) / NULLIF(SUM(conversions), 0) AS cpa

FROM stg_ads
GROUP BY country
ORDER BY roas DESC;
