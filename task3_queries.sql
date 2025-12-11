--1. 10 rows from the orders table:
SELECT *
FROM orders
LIMIT 10;

--2. Unique order statuses:
SELECT DISTINCT order_status
FROM orders;

--3. Count of orders in each order status:
SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

--4. Total number of orders in the entire dataset:
SELECT COUNT(*) AS total_orders
FROM orders;

--5. Orders Per Year:
SELECT 
    STRFTIME('%Y', order_purchase_timestamp) AS order_year,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_year
ORDER BY order_year;

--6. Total Revenue:
SELECT 
    SUM(payment_value) AS total_revenue
FROM payments;

--7. Revenue Per Year:
SELECT 
    STRFTIME('%Y', o.order_purchase_timestamp) AS order_year,
    SUM(p.payment_value) AS yearly_revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY order_year
ORDER BY order_year;

--8. Top 10 Customers by Spending:
SELECT 
    o.customer_id,
    SUM(p.payment_value) AS total_spent
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY o.customer_id
ORDER BY total_spent DESC
LIMIT 10;

--9. Top 10 Best-Selling Products:
SELECT 
    product_id,
    COUNT(*) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 10;

--10. View for Order Totals:
CREATE VIEW IF NOT EXISTS orders_summary AS
SELECT 
    o.order_id,
    o.customer_id,
    o.order_status,
    SUM(oi.price + oi.freight_value) AS order_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id;

--11. Checking the View:
SELECT *
FROM orders_summary
LIMIT 10;

 