SELECT
    seller_id,
    SUM(price) AS seller_revenue
FROM order_items
GROUP BY seller_id
ORDER BY seller_revenue DESC;