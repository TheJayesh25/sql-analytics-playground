SELECT *
FROM (
    SELECT
        p.product_category_name,
        oi.product_id,
        SUM(oi.price) AS revenue,
        RANK() OVER (
            PARTITION BY p.product_category_name
            ORDER BY SUM(oi.price) DESC
        ) AS rnk
    FROM order_items oi
    JOIN products p
    ON oi.product_id = p.product_id
    GROUP BY p.product_category_name, oi.product_id
) t
WHERE rnk = 1;