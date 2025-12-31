-- Standardize all column names
CREATE TABLE superstore_standard AS
SELECT
    "Order ID"      AS order_id,
    "Order Date"    AS order_date,
    "Customer ID"   AS customer_id,
    "Customer Name" AS customer_name,
    Segment         AS segment,
    Region          AS region,
    "State"         AS "state",
    City            AS city,
    Category        AS category,
    "Sub-Category"  AS sub_category,
    Sales           AS sales,
    Quantity        AS quantity,
    Profit          AS profit,
    "Product Name"  AS product_name,
    "Ship Date"     AS ship_date
FROM superstore_raw;

-- Remove duplicate orders
CREATE TABLE superstore_cleaned AS
SELECT DISTINCT *
FROM superstore_standard
WHERE sales IS NOT NULL
  AND profit IS NOT NULL;

-- Create customers table
CREATE TABLE customers AS
SELECT DISTINCT
    customer_id,
    customer_name,
    segment,
    region
FROM superstore_cleaned;

-- Create products table
CREATE TABLE products AS
SELECT DISTINCT
    product_name,
    category,
    sub_category
FROM superstore_cleaned;

-- Create orders table
CREATE TABLE orders AS
SELECT
    order_id,
    order_date,
    ship_date,
    customer_id,
    product_name,
    sales,
    quantity,
    profit,
    "state",
    city
FROM superstore_cleaned;
