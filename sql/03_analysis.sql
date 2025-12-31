-- Total revenue and profit
SELECT
    SUM(sales) AS total_revenue,
    SUM(profit) AS total_profit
FROM orders;

-- Revenue by category
SELECT
    p.category,
    SUM(o.sales) AS revenue
FROM orders o
JOIN products p
ON o.product_name = p.product_name
GROUP BY p.category
ORDER BY revenue DESC;

-- Revenue by state
SELECT "state", SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM orders
GROUP BY "state"
ORDER BY total_sales DESC;

-- Top 10 customers by revenue
SELECT
    c.customer_name,
    SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Monthly sales trend
SELECT
    strftime('%Y-%m', order_date) AS month,
    SUM(sales) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;
