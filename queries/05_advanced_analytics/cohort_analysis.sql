WITH first_purchase AS (
    SELECT
        customer_id,
        MIN(order_purchase_timestamp) AS first_date
    FROM orders
    GROUP BY customer_id
)

SELECT
    DATE_TRUNC('month', first_date) AS cohort_month,
    COUNT(customer_id)
FROM first_purchase
GROUP BY cohort_month;