# Digital Marketing Performance Dashboard | Power BI Portfolio Project

## Dashboard Preview

![Dashboard Overview](images/dashboard_preview.png)

---

## Project Description

This dashboard analyzes **online marketing campaigns** in 2024 for e-commerce products.  
It provides insights into campaign performance, platform efficiency, and regional outcomes.  

Key KPIs include **Impressions, Clicks, Conversions, CTR, ROAS, CVR, and CPA**.  
Analysis dimensions include **Date, Platform, Campaign Type, Country, and Industry**.

---

## Key Skills Demonstrated

- Data Transformation and Cleaning (Power Query)  
- Data Modeling (Star Schema with multiple fact tables)  
- DAX Measure Development  
- Interactive Dashboard Design  
- Business Insight Generation

---

## Business Insights

### Revenue & Campaign Trends
- Revenue peaked in **April and December**, with May the lowest.  
- **SaaS and EdTech** industries contributed most to overall revenue.  
- Search campaigns generated the **highest revenue (USD 15M)**; Google Ads had highest revenue but lowest ROAS.

### Platform & Campaign Performance
- **TikTok Ads** shows best overall performance, especially for E-Commerce and SaaS.  
- **Meta Ads** performs strongly in EdTech and Healthcare campaigns.  
- Campaign effectiveness varies month-to-month; conversion rates remain relatively low.

### Geographical Insights
- Top revenue-generating countries: **UAE, Australia, India**.  
- The **UK** has strong ROAS and Conversion Rate but low CTR, suggesting optimization opportunities.

---

## Dashboard Structure

- **Executive Overview**  
- **Campaign Strategy**  
- **Performance & Market Insights**  

---

## Features / Highlights

- Page slicers for dynamic filtering  
- KPI cards for key metrics  
- Field Parameters for **dynamic switching between metrics and dimensions** (hidden in report view)  
- Dynamic scatter chart with quadrant analysis to evaluate and compare campaigns by plotting two key performance metrics at the same time
- Funnel visualizations for conversion analysis  
- Heatmap visualizations that use color intensity to emphasize performance patterns and support quick interpretation of business metrics
- Drill-down matrix (Country → Industry → Campaign Type)

---

## Data Source

- Kaggle: [Global Ads Performance (Google, Meta, TikTok) CSV)](https://www.kaggle.com/datasets/nudratabbas/global-ads-performance-google-meta-tiktok)

---

## Data Preparation

- Created three fact tables from raw data: **Ad Performance, Conversions, Revenue**  
- Removed redundant CTR, CPC, CPA, and ROAS columns from the fact table to streamline the model, then calculated these metrics dynamically using DAX measures in Power BI
- Created dimension tables for **Campaign Type, Platform, Country, Industry, and Date**  
- Added surrogate keys and mapped them to fact tables  
- Star schema with multiple fact tables sharing common dimensions  
- All KPI measures stored in **Calculations folder** within Fact_Ad_Performance

---

## Tech Stack

- Power BI Desktop  
- DAX  
- Power Query  
- Excel / CSV  
- GitHub

---

## Contact

GitHub: [GitHubProfile](https://github.com/yimengqi0826)  
Email: yimengqi99@gmail.com

