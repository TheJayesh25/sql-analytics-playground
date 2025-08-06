SELECT
    product_id,
    MAX(price) AS max_price
FROM order_items
GROUP BY product_id
ORDER BY max_price DESC
LIMIT 10;