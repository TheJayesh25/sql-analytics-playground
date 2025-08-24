SELECT
    seller_id,
    COUNT(order_id) AS orders
FROM order_items
GROUP BY seller_id
ORDER BY orders DESC
LIMIT 10;