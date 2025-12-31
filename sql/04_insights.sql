-- High-margin products
SELECT
    product_name,
    SUM(profit) AS total_profit
FROM orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- Regional performance
SELECT
    state,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders
GROUP BY state
ORDER BY total_sales DESC;
