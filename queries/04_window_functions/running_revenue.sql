SELECT
    o.order_purchase_timestamp AS payment_date,
    SUM(p.payment_value)
    OVER (
        ORDER BY o.order_purchase_timestamp
    ) AS running_revenue
FROM payments p
JOIN orders o
    ON p.order_id = o.order_id;