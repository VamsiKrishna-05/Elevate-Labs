-- task5_queries.sql

-- INNER JOIN: Customers with their orders
SELECT C.customer_id, C.name, O.order_id, O.order_date
FROM Customers C
INNER JOIN Orders O ON C.customer_id = O.customer_id;

-- LEFT JOIN: All customers, with order info if exists
SELECT C.customer_id, C.name, O.order_id, O.order_date
FROM Customers C
LEFT JOIN Orders O ON C.customer_id = O.customer_id;

-- RIGHT JOIN: All orders, with customer info if exists (Note: SQLite does not support RIGHT JOIN directly)
-- Example for databases like MySQL or PostgreSQL
SELECT C.customer_id, C.name, O.order_id, O.order_date
FROM Customers C
RIGHT JOIN Orders O ON C.customer_id = O.customer_id;

-- FULL OUTER JOIN: All customers and orders (using UNION as SQLite does not support FULL JOIN)
-- Replace with FULL OUTER JOIN if using PostgreSQL
SELECT C.customer_id, C.name, O.order_id, O.order_date
FROM Customers C
LEFT JOIN Orders O ON C.customer_id = O.customer_id
UNION
SELECT C.customer_id, C.name, O.order_id, O.order_date
FROM Customers C
RIGHT JOIN Orders O ON C.customer_id = O.customer_id;

-- Joining more than 2 tables: Orders with customer and product info
SELECT O.order_id, C.name AS customer_name, P.name AS product_name, O.quantity
FROM Orders O
INNER JOIN Customers C ON O.customer_id = C.customer_id
INNER JOIN Products P ON O.product_id = P.product_id;

-- CROSS JOIN: All possible combinations of customers and products
SELECT C.name AS customer_name, P.name AS product_name
FROM Customers C
CROSS JOIN Products P;

-- SELF JOIN: Find customers referred by others (assumes referrer_id column)
SELECT A.name AS customer, B.name AS referrer
FROM Customers A
JOIN Customers B ON A.referrer_id = B.customer_id;