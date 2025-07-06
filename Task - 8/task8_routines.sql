-- task8_routines.sql

-- Stored Procedure: Get total amount spent by a customer
DELIMITER //
CREATE PROCEDURE GetCustomerSpending(IN cust_id INT)
BEGIN
    SELECT C.name, SUM(O.quantity * P.price) AS total_spent
    FROM Customers C
    JOIN Orders O ON C.customer_id = O.customer_id
    JOIN Products P ON O.product_id = P.product_id
    WHERE C.customer_id = cust_id
    GROUP BY C.customer_id;
END;
//
DELIMITER ;

-- Function: Get product stock value (price * quantity)
DELIMITER //
CREATE FUNCTION GetStockValue(prod_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE stock_value DECIMAL(10,2);
    SELECT price * quantity INTO stock_value FROM Products WHERE product_id = prod_id;
    RETURN stock_value;
END;
//
DELIMITER ;

-- Example calls (MySQL):
-- CALL GetCustomerSpending(1);
-- SELECT GetStockValue(101);