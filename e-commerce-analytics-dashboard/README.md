# E-Commerce Analytics Project | SQL + Power BI Portfolio (End-to-End)

## Dashboard Preview

### Sales Overview
![01-dashboard-sales-overview](images/01-dashboard-sales-overview.png)

### Product & Pricing
![02-dashboard-product-and-pricing](images/02-dashboard-product-and-pricing.png)

### Customer & Region
![03-dashboard-customer-and-region](images/03-dashboard-customer-and-region.png)

### Operations & Profitability
![04-dashboard-operations-and-profitability](images/04-dashboard-operations-and-profitability.png)

---

## Project Description

This dashboard analyzes global e-commerce sales performance from **2023 to 2025**.  
It provides insights into sales trends, product performance, customer behavior, and operational efficiency across regions.  

Key KPIs include **Total Sales, Total Profit, Profit Margin, Average Order Value (AOV), Average Discount, Sales YTD, and Sales YoY**.  
Analysis dimensions include **Date, Product, Customer Segment, Discount Level, and Payment Method**.

---

## Dashboard Structure

- **Sales Overview**  
- **Product & Pricing**  
- **Customer & Region**  
- **Operations & Profitability**

---

## End-to-End Workflow & Key Skills

Raw Data (CSV)  
→ Power Query (Data Cleaning & Transformation)  
→ SQL (Analytical Queries)  
→ Power BI (Modeling & Visualization)  
→ Business Insights

**Key Skills:**
- SQL (aggregation, joins, window functions)
- Power Query (data cleaning and transformation)
- Data Modeling (star schema)
- DAX (KPI and metrics calculation)
- Dashboard Design & Business Analysis


---
## Data Processing & SQL Analysis

Before building the Power BI dashboard, SQL was used to structure and analyze the raw dataset.

### SQL Workflow
- Created a staging layer to clean and standardize raw data
- Built analytical tables for sales, product, customer, and regional performance
- Applied window functions for YoY growth and Pareto analysis

### Key SQL Analyses
- KPI aggregation (sales, profit, orders)
- Time-series trend analysis (monthly & yearly)
- Customer segmentation analysis
- Product and regional performance analysis
- Advanced analytics (Pareto, ranking, YoY growth)

📁 All SQL scripts used in this project are available in the `/sql` directory for full reference.

---

## Data Preparation

- Data cleaning and transformation were primarily performed using Power Query
- SQL was used to support analytical queries
- Classified discounts into **No/Low/Medium/High Discount** categories.  
- Created dimension tables for **Product, Customer, Payment Method, Discount Level**.  
- Removed duplicate records, added surrogate keys (Index Columns) and merged them into the fact table.  
- Created **Dim_Date** table using DAX.  
- Applied **currency formatting (USD)** for sales-related metrics.  
- Star schema data model: Fact_Sales linked to five dimension tables (one-to-many relationships).  
- Created DAX measures for all KPIs, stored in a **Calculations folder** within Fact_Sales.

---

## Business Insights

### Market & Sales
- Total sales declined in **2024** but rebounded in **2025**, slightly exceeding 2023 levels.  
- Despite lower sales volume, **2024 achieved the highest profit margin**, indicating stronger cost efficiency.  
- **Europe and North America** are the primary markets driving revenue.

### Product Performance
- **Furniture and Technology** lead in sales, profit, and quantity sold.  
- **Top products**: Standing Desk Converter, Ergonomic Office Chair, and Wireless Bluetooth Headphones.  
- **Clothing & Accessories** records the highest profit margin.

### Customer & Region
- The **Consumer segment** generates the highest sales, profit, and AOV.  
- **Europe** shows the highest AOV; **Middle East & Africa** the lowest.  
- Shipping costs impact profit most in **Asia Pacific**, suggesting potential logistics inefficiencies.

### Pricing & Operations
- Low discounts (1–10%) contribute the largest share of sales; high discounts (21–30%) contribute the least.  
- **Credit Card** is the dominant payment method; **PayPal** leads in Europe starting in 2025.

---

## Features / Highlights

- Page slicers for dynamic filtering  
- KPI cards for key metrics  
- Dynamic scatter chart with quadrant analysis to evaluate and compare campaigns by plotting two key performance metrics at the same time  
- Heatmap visualizations that use color intensity to emphasize performance patterns and support quick interpretation of business metrics  
- Decomposition Tree to analyze Total Profit drivers across multiple dimensions  
- Drill-down matrix (Country → Industry → Campaign Type) for hierarchical KPI analysis

---

## Data Source

- Kaggle: [Global E-Commerce Sales & Customer Data (CSV)](https://www.kaggle.com/datasets/muhammadaammartufail/global-e-commerce-sales-and-customer-data)
- The dataset used in this project can be found in the `/data` folder of this repository

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

