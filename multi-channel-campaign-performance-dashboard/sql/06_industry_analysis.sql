-- 06_industry_analysis.sql
-- Performance comparison across industries

SELECT 
    industry,
    SUM(ad_spend) AS spend,
    SUM(revenue) AS revenue,
    SUM(conversions) AS conversions,

    -- Industry-level performance metrics
    SUM(revenue) / NULLIF(SUM(ad_spend), 0) AS roas,
    SUM(ad_spend) / NULLIF(SUM(conversions), 0) AS cpa

FROM stg_ads
GROUP BY industry
ORDER BY roas DESC;
