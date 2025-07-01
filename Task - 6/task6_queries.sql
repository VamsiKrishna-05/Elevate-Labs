-- task6_queries.sql

-- Scalar subquery: Get users who spent more than the average total spending
SELECT user_id, name
FROM Users
WHERE user_id IN (
    SELECT user_id
    FROM Orders
    GROUP BY user_id
    HAVING SUM(quantity * (SELECT price FROM Products WHERE Products.product_id = Orders.product_id)) >
           (SELECT AVG(total_spent) FROM (
                SELECT user_id, SUM(quantity * (SELECT price FROM Products WHERE Products.product_id = Orders.product_id)) AS total_spent
                FROM Orders
                GROUP BY user_id
           ))
);

-- Subquery in SELECT: Total orders placed by each user
SELECT user_id, name,
    (SELECT COUNT(*) FROM Orders WHERE Orders.user_id = Users.user_id) AS total_orders
FROM Users;

-- Subquery in FROM: Derived table for user spending
SELECT user_id, total_spent
FROM (
    SELECT user_id, SUM(quantity * (SELECT price FROM Products WHERE Products.product_id = Orders.product_id)) AS total_spent
    FROM Orders
    GROUP BY user_id
) AS spending
WHERE total_spent > 1000;

-- EXISTS: Users who placed at least one order
SELECT name
FROM Users U
WHERE EXISTS (
    SELECT 1 FROM Orders O WHERE O.user_id = U.user_id
);

-- NOT EXISTS: Users who never placed an order
SELECT name
FROM Users U
WHERE NOT EXISTS (
    SELECT 1 FROM Orders O WHERE O.user_id = U.user_id
);

-- Correlated subquery: Products more expensive than category average
SELECT name, price, category
FROM Products P1
WHERE price > (
    SELECT AVG(price) FROM Products P2 WHERE P2.category = P1.category
);