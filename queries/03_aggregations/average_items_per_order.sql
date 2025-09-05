SELECT
    AVG(item_count)
FROM (
    SELECT
        order_id,
        COUNT(*) AS item_count
    FROM order_items
    GROUP BY order_id
) t;