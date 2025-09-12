SELECT
    DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
    SUM(p.payment_value) AS revenue
FROM payments p
JOIN orders o
    ON p.order_id = o.order_id
GROUP BY month
ORDER BY month;