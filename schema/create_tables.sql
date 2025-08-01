CREATE TABLE customers AS
SELECT * FROM read_csv_auto('dataset/olist_customers_dataset.csv');

CREATE TABLE orders AS
SELECT * FROM read_csv_auto('dataset/olist_orders_dataset.csv');

CREATE TABLE order_items AS 
SELECT * FROM read_csv_auto('dataset/olist_order_items_dataset.csv');

CREATE TABLE payments AS
SELECT * FROM read_csv_auto('dataset/olist_order_payments_dataset.csv');

CREATE TABLE products AS
SELECT * FROM read_csv_auto('dataset/olist_products_dataset.csv');

CREATE TABLE sellers AS
SELECT * FROM read_csv_auto('dataset/olist_sellers_dataset.csv');

CREATE TABLE reviews AS
SELECT * FROM read_csv_auto('dataset/olist_order_reviews_dataset.csv');