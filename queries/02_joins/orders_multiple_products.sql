SELECT
    order_id,
    COUNT(product_id) AS product_count
FROM order_items
GROUP BY order_id
HAVING COUNT(product_id) > 1;