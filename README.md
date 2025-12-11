# Task 3 – SQL Data Analysis (Olist E-Commerce Dataset)
This project is part of my internship assignment, where I performed SQL-based data analysis on the Olist Brazilian E-Commerce Dataset.

## Datasets Imported
The following Olist CSV files were used and imported as tables in SQLite:
1. customers
2. orders
3. order_items
4. payments
5. products

## Tools Used
1. SQLite
2. DB Browser for SQLite
3. Olist E-Commerce CSV Dataset(https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

## Tasks Performed
### 1. Importing CSV Files
All provided CSV files were imported into SQLite and converted into relational tables.

### 2. Basic Data Exploration
Queries were written to:
- Display the first 10 rows
- Count total records
- Check distinct order statuses

### 3. Aggregation and Analysis
Queries were written to analyze:
- Number of orders per order status
- Total number of orders
- Total order value using order_items
- Customer and product-level insights

### 4. Creating a SQL View
A view named orders_summary was created to calculate total order amount by combining orders and order_items.

### 5. Exporting Final SQL Script
All queries and schema details were exported into a single .sql file.
