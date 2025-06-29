
-- A. SELECT, WHERE, ORDER BY, GROUP BY
-- Number of orders per state
SELECT c.customer_state, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;

-- B. JOINS (INNER, LEFT)
-- INNER JOIN example: orders with customer info and payment type
SELECT o.order_id, c.customer_city, p.payment_type
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN order_payments p ON o.order_id = p.order_id;

-- LEFT JOIN example: all customers with or without orders
SELECT c.customer_id, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- C. Subqueries
-- Customers who placed more than 5 orders
SELECT customer_id
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING COUNT(order_id) > 5
);

-- D. Aggregate Functions (SUM, AVG)
-- Average payment per payment type
SELECT payment_type, AVG(payment_value) AS avg_payment
FROM order_payments
GROUP BY payment_type;

-- E. Views
-- View: total order value per order
CREATE VIEW order_totals AS
SELECT order_id, SUM(price + freight_value) AS total_amount
FROM order_items
GROUP BY order_id;

-- F. Indexes for optimization
-- Indexes on common join fields
CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_order_items_order ON order_items(order_id);
CREATE INDEX idx_order_payments_order ON order_payments(order_id);
