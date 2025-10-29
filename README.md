# SQL Analytics Playground

A structured SQL analytics project built on top of the **Olist E-commerce dataset** using **DuckDB**.  

This repository explores real-world e-commerce data through progressively advanced SQL queries covering:

- Data exploration
- Multi-table joins
- Aggregations
- Window functions
- Advanced analytical queries

The goal of this project is to **practice analytical SQL in a realistic environment**, document the reasoning behind queries, and demonstrate how SQL can be used to extract meaningful insights from relational datasets.

---

## Dataset

This project uses the **Brazilian E-commerce Public Dataset by Olist**.

The dataset contains information about:

- Customers
- Orders
- Payments
- Order items
- Products
- Sellers
- Reviews
- Geolocation

It represents a **multi-table relational dataset** typical of a real analytics environment.

Dataset source:  
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

---

## Database

Queries are executed using **DuckDB**, a fast analytical SQL engine that runs locally without requiring a database server.

Advantages of DuckDB:

- No server setup required
- Fast analytical query execution
- Ideal for data exploration and analytics
- Works directly with local files

The database file used in this project:
```olist_database.duckdb```

---

## Project Structure

```
sql-analytics-playground
│
├── datasets/
│ └── Olist CSV files
│
├── schema/
│ └── create_tables.sql
│
├── olist.duckdb
│
├── queries/
│ ├── 01_exploration/
│ ├── 02_joins/
│ ├── 03_aggregations/
│ ├── 04_window_functions/
│ └── 05_advanced_analytics/
│
└── README.md
```


Each query folder contains:
1. query.sql
2. query_notes.md


Where:

- **query.sql** contains the SQL query
- **query_notes.md** explains the logic and insights

Queries also include: ```outputs/```


which contains screenshots of the query output.

---

## Query Categories

The queries are organized from **basic to advanced SQL concepts**.

### 1. Exploration

Basic dataset exploration and sanity checks.

Examples:

- Total orders
- Monthly order counts
- Average items per order
- Revenue overview

Purpose:

- Understand dataset structure
- Identify data distribution

---

### 2. Joins

Queries involving relationships between tables.

Examples:

- Orders joined with customers
- Products joined with order items
- Revenue by product category

Concepts practiced:

- INNER JOIN
- LEFT JOIN
- Multi-table joins

---

### 3. Aggregations

Business-level metrics derived from grouped data.

Examples:

- Revenue per customer
- Average delivery time
- Top product categories
- Average review score by category

Concepts practiced:

- GROUP BY
- Aggregation functions
- Business metrics

---

### 4. Window Functions

Advanced SQL for analytical calculations.

Examples:

- Running revenue totals
- Customer spending rankings
- Moving averages

Concepts practiced:

- ROW_NUMBER
- RANK
- PARTITION BY
- ORDER BY within windows

---

### 5. Advanced Analytics

More complex analytical queries involving multiple steps.

Examples:

- Customer lifetime value
- Cohort analysis
- Customer retention
- Repeat customer analysis

Concepts practiced:

- Common Table Expressions (CTEs)
- Multi-stage transformations
- Analytical SQL patterns

---

## Example Query

Example: **Monthly Revenue**

```
SELECT
    DATE_TRUNC('month', order_purchase_timestamp) AS month,
    SUM(payment_value) AS monthly_revenue
FROM orders
JOIN order_payments
    ON orders.order_id = order_payments.order_id
GROUP BY month
ORDER BY month;
```
---

## How to Run the Queries
1. Install DuckDB
```pip install duckdb```

or use the DuckDB CLI.

2. Create Tables

Run the schema script:
```schema/create_tables.sql```

This loads the CSV datasets into DuckDB tables.

3. Run Queries

Execute any query from the queries folders.

Example:

```queries/03_aggregations/monthly_revenue.sql```

---

## Key SQL Concepts Practiced
This project covers many analytical SQL patterns including:

- Data exploration
- Multi-table joins
- Aggregations
- Window functions
- Cohort analysis
- Customer analytics
- Revenue metrics

---

## Why This Project

Real-world datasets are rarely simple. Analytical SQL often requires:
- Working across multiple related tables
- Handling imperfect or incomplete data
- Transforming raw records into business insights
This project focuses on developing those practical analytical skills.

---

## Future Improvements
Possible extensions for this project:
- Query performance optimization
- Data quality checks
- Additional analytical queries
- Dashboard layer using BI tools
- Automated query testing

---

## Author

**Jayesh Suryawanshi**
Data Analyst / Analytics Engineering
GitHub: https://github.com/TheJayesh25

---

## License
MIT License - This project is provided for educational and learning purposes.