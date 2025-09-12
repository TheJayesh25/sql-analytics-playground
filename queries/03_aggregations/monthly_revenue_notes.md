# Monthly Revenue

## Objective
Measure total revenue generated each month.

## Tables Used
olist_order_payments_dataset

## Explanation
The query groups payment transactions by month using DATE_TRUNC and then
sums the payment values to calculate total revenue per month.

## SQL Concepts
DATE_TRUNC
GROUP BY
SUM
ORDER BY