SELECT
    customer_id,
    SUM(payment_value) AS total_spent,
    RANK() OVER (ORDER BY SUM(payment_value) DESC) AS rank
FROM payments p
JOIN orders o
ON p.order_id = o.order_id
GROUP BY customer_id;