SELECT
    c.customer_state,
    COUNT(o.order_id)
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_state;