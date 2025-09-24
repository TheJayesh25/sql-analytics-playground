SELECT
    customer_id,
    COUNT(order_id) AS orders
FROM orders
GROUP BY customer_id;