-- 00_staging.sql
-- Data cleaning and preparation layer

CREATE VIEW stg_ads AS
SELECT 
    date,
    platform,
    campaign_type,
    industry,
    country,
    impressions,
    clicks,
    ad_spend,
    conversions,
    revenue,

    -- Date transformation
    STR_TO_DATE(date, '%Y-%m-%d') AS clean_date,
    YEAR(STR_TO_DATE(date, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(date, '%Y-%m-%d')) AS month,

    -- Handle zero values for better data quality
    CASE WHEN impressions = 0 THEN NULL ELSE impressions END AS impressions_clean,
    CASE WHEN clicks = 0 THEN NULL ELSE clicks END AS clicks_clean,
    CASE WHEN conversions = 0 THEN NULL ELSE conversions END AS conversions_clean,
    CASE WHEN ad_spend = 0 THEN NULL ELSE ad_spend END AS ad_spend_clean

FROM raw_table;
