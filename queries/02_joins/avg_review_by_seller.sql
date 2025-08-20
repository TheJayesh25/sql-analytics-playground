SELECT
    oi.seller_id,
    AVG(r.review_score)
FROM reviews r
JOIN orders o
ON r.order_id = o.order_id
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY oi.seller_id;