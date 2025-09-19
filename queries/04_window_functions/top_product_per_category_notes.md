# Top Product Per Category

## Objective
Find the highest revenue generating product within each category.

## Tables Used
olist_order_items_dataset
olist_products_dataset

## Explanation
Products are grouped by category and revenue is calculated.
A ranking window function identifies the top product within each
category partition.

## SQL Concepts
JOIN
GROUP BY
WINDOW FUNCTIONS
RANK()
PARTITION BY