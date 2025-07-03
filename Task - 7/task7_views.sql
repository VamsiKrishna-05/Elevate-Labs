-- task7_views.sql

-- View: Customer Orders Summary
CREATE VIEW CustomerOrdersSummary AS
SELECT C.customer_id, C.name, COUNT(O.order_id) AS total_orders, SUM(O.quantity * P.price) AS total_spent
FROM Customers C
JOIN Orders O ON C.customer_id = O.customer_id
JOIN Products P ON O.product_id = P.product_id
GROUP BY C.customer_id, C.name;

-- View: Expensive Products
CREATE VIEW ExpensiveProducts AS
SELECT product_id, name, price, category
FROM Products
WHERE price > 1000;

-- View: Recent Orders (last 30 days)
CREATE VIEW RecentOrders AS
SELECT *
FROM Orders
WHERE order_date >= DATE('now', '-30 day');

-- View with WITH CHECK OPTION (only for updatable views, supported in some DBMS like MySQL)
-- Example: View to restrict updates to Electronics category
CREATE VIEW ElectronicsOnly AS
SELECT * FROM Products
WHERE category = 'Electronics'
WITH CHECK OPTION;

-- Drop a view
-- DROP VIEW IF EXISTS CustomerOrdersSummary;