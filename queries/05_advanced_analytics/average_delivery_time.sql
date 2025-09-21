SELECT
    AVG(order_delivered_customer_date - order_purchase_timestamp)
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;