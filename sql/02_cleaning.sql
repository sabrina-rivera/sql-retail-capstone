-- Remove duplicate orders
CREATE TABLE superstore_cleaned AS
SELECT DISTINCT *
FROM superstore_raw
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
    state,
    city
FROM superstore_cleaned;
