-- Select all columns from Users table
SELECT * FROM Users;

-- Select specific columns from Products table
SELECT name, price FROM Products;

-- Filter users who signed up after 2023-01-01
SELECT * FROM Users
WHERE created_at > '2023-01-01';

-- Find products in 'Electronics' category with price > 1000
SELECT * FROM Products
WHERE category = 'Electronics' AND price > 1000;

-- Use LIKE to find users with 'gmail.com' emails
SELECT * FROM Users
WHERE email LIKE '%@gmail.com';

-- Use BETWEEN to find products in a price range
SELECT * FROM Products
WHERE price BETWEEN 500 AND 2000;

-- Sort products by price in ascending order
SELECT * FROM Products
ORDER BY price ASC;

-- Sort orders by order_date in descending order
SELECT * FROM Orders
ORDER BY order_date DESC;

-- Use LIMIT to get top 5 most recent orders
SELECT * FROM Orders
ORDER BY order_date DESC
LIMIT 5;

-- Use aliasing to rename columns
SELECT name AS ProductName, price AS ProductPrice FROM Products;

-- Use DISTINCT to find unique categories
SELECT DISTINCT category FROM Products;

-- Use IN to filter for specific categories
SELECT * FROM Products
WHERE category IN ('Electronics', 'Books');

-- Combine AND & OR logic
SELECT * FROM Products
WHERE category = 'Books' AND (price < 500 OR price > 1500);
