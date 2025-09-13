SELECT
    o.order_purchase_timestamp AS payment_date,
    AVG(p.payment_value)
    OVER (
        ORDER BY o.order_purchase_timestamp
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS moving_avg
FROM payments p
JOIN orders o
    ON p.order_id = o.order_id;