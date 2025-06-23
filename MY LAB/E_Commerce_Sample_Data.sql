USE ecommerce_db;

-- Categories
INSERT INTO Categories (CategoryName) VALUES 
('Electronics'),
('Books'),
('Clothing'),
('Home & Kitchen');

-- Users (20 records)
INSERT INTO Users (Name, Email, Password) VALUES
('Aarav Singh', 'aarav@example.com', 'pass123'),
('Neha Mehta', 'neha@example.com', 'pass123'),
('Rohit Sharma', 'rohit@example.com', 'pass123'),
('Ananya Gupta', 'ananya@example.com', 'pass123'),
('Vikram Rao', 'vikram@example.com', 'pass123'),
('Kiran Das', 'kiran@example.com', 'pass123'),
('Meera Iyer', 'meera@example.com', 'pass123'),
('Sahil Verma', 'sahil@example.com', 'pass123'),
('Divya Kapoor', 'divya@example.com', 'pass123'),
('Yash Malhotra', 'yash@example.com', 'pass123'),
('Sneha Nair', 'sneha@example.com', 'pass123'),
('Arjun Desai', 'arjun@example.com', 'pass123'),
('Priya Sen', 'priya@example.com', 'pass123'),
('Aditya Roy', 'aditya@example.com', 'pass123'),
('Isha Shah', 'isha@example.com', 'pass123'),
('Rahul Reddy', 'rahul@example.com', 'pass123'),
('Tanya Bose', 'tanya@example.com', 'pass123'),
('Manav Gill', 'manav@example.com', 'pass123'),
('Shreya Patel', 'shreya@example.com', 'pass123'),
('Kabir Khan', 'kabir@example.com', 'pass123');

-- Products
INSERT INTO Products (ProductName, Description, Price, Stock, CategoryID) VALUES 
('Smartphone XYZ', '5G smartphone with AMOLED display', 29999.99, 100, 1),
('Bluetooth Speaker', 'Portable and waterproof', 1999.00, 150, 1),
('Laptop ABC', 'i5, 16GB RAM, 512GB SSD', 54999.00, 50, 1),
('Cooking Book', '100 Indian recipes', 499.00, 200, 2),
('Fiction Novel', 'Bestseller mystery novel', 349.00, 120, 2),
('T-Shirt', 'Cotton t-shirt M size', 399.99, 300, 3),
('Jeans', 'Denim jeans size 32', 999.00, 250, 3),
('Blender', '500W kitchen appliance', 2499.99, 80, 4),
('Rice Cooker', 'Electric cooker with timer', 1799.00, 60, 4),
('LED Bulb Pack', '12W energy saver', 499.00, 100, 4);

-- Orders (5 users placed orders)
INSERT INTO Orders (UserID, TotalAmount) VALUES 
(1, 31998.99),
(2, 798.99),
(3, 1999.00),
(4, 54999.00),
(5, 1448.00);

-- OrderItems
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price) VALUES 
(1, 1, 1, 29999.99), -- Smartphone
(1, 2, 1, 1999.00),  -- Speaker
(2, 6, 2, 399.99),   -- T-Shirts
(3, 2, 1, 1999.00),  -- Speaker
(4, 3, 1, 54999.00), -- Laptop
(5, 5, 2, 349.00),   -- Fiction Novel
(5, 7, 1, 999.00);   -- Jeans

-- Payments
INSERT INTO Payments (OrderID, Amount, PaymentMethod) VALUES 
(1, 31998.99, 'Credit Card'),
(2, 798.99, 'UPI'),
(3, 1999.00, 'Debit Card'),
(4, 54999.00, 'Net Banking'),
(5, 1448.00, 'Cash on Delivery');

-- Addresses (for 5 users)
INSERT INTO Addresses (UserID, AddressLine1, City, State, ZipCode, Country) VALUES 
(1, '123 MG Road', 'Mumbai', 'Maharashtra', '400001', 'India'),
(2, '55 Park Street', 'Kolkata', 'West Bengal', '700016', 'India'),
(3, 'Banjara Hills', 'Hyderabad', 'Telangana', '500034', 'India'),
(4, 'Brigade Road', 'Bangalore', 'Karnataka', '560001', 'India'),
(5, 'Civil Lines', 'Delhi', 'Delhi', '110054', 'India');

-- Cart (some users added products but didn’t check out yet)
INSERT INTO Cart (UserID, ProductID, Quantity) VALUES 
(6, 4, 1),
(7, 6, 2),
(8, 10, 4),
(9, 3, 1),
(10, 1, 1),
(11, 7, 1),
(12, 8, 1),
(13, 9, 1),
(14, 5, 2),
(15, 2, 3);
