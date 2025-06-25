USE e_commerce_db;

INSERT INTO Users (Name, Email, Password) 
VALUES 
('Aanya Rao', 'aanya@example.com', 'pass123'),
('Jay Singh', NULL, 'pass456'),
('Mehul K', 'mehul@example.com', NULL);

UPDATE Users 
SET Name = 'Updated User'
WHERE UserID IN (1, 3);

DELETE FROM Cart
WHERE Quantity = 0;

INSERT INTO Categories (CategoryName) 
VALUES ('Beauty');

INSERT INTO Orders (UserID, TotalAmount) 
VALUES (2, 2000.00);

SELECT * FROM Users WHERE Email IS NULL;

INSERT INTO Cart (UserID, ProductID, Quantity)
SELECT UserID, ProductID, 1
FROM OrderItems
WHERE Quantity > 1;