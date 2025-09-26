SELECT
    customer_id,
    MIN(order_purchase_timestamp) AS first_order
FROM orders
GROUP BY customer_id;