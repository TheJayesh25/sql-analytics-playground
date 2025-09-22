# Cohort Analysis

## Objective
Group customers based on the month of their first purchase.

## Tables Used
olist_orders_dataset

## Explanation
A common table expression calculates the first purchase date for each
customer. Customers are then grouped by the month of that purchase
to create acquisition cohorts.

## SQL Concepts
CTE
DATE_TRUNC
GROUP BY