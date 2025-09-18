SELECT
    seller_id,
    SUM(price) AS revenue,
    RANK() OVER (ORDER BY SUM(price) DESC) AS rank
FROM order_items
GROUP BY seller_id;