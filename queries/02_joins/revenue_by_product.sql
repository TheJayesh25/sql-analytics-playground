SELECT
    product_id,
    SUM(price) AS revenue
FROM order_items
GROUP BY product_id
ORDER BY revenue DESC;