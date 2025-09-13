# Moving Average Revenue

## Objective
Smooth revenue fluctuations using a rolling average.

## Tables Used
olist_order_payments_dataset

## Explanation
A window function calculates the average payment value across the
current row and the six preceding rows to create a moving average.

## SQL Concepts
WINDOW FUNCTIONS
ROWS BETWEEN
AVG OVER()