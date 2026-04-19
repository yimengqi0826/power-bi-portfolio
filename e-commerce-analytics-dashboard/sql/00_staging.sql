-- 00_staging.sql
-- Staging layer: clean and standardize raw sales data

CREATE VIEW stg_sales AS
SELECT 
    Order_ID,
    STR_TO_DATE(Order_Date, '%Y-%m-%d') AS order_date,
    YEAR(STR_TO_DATE(Order_Date, '%Y-%m-%d')) AS order_year,
    MONTH(STR_TO_DATE(Order_Date, '%Y-%m-%d')) AS order_month,

    Customer_Name,
    Customer_Segment,
    Country,
    Region,
    Product_Category,
    Product_Name,

    Quantity,
    Unit_Price,
    Discount_Percent,

    Total_Sales,
    Shipping_Cost,
    Profit,
    Payment_Method

FROM raw_table;
