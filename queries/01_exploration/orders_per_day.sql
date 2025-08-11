SELECT
    DATE(order_purchase_timestamp) AS order_day,
    COUNT(*) AS orders
FROM orders
GROUP BY order_day
ORDER BY order_day;