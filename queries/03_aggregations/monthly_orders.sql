SELECT
    DATE_TRUNC('month', order_purchase_timestamp) AS month,
    COUNT(order_id)
FROM orders
GROUP BY month
ORDER BY month;