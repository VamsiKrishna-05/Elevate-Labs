use e_commerce_db;
INSERT INTO Users (Name, Email, Password) 
VALUES 
('Aanya Rao', 'aanya@example.com', 'pass123'),
('Jay Singh', NULL, 'pass456'),                  -- NULL email (if allowed)
('Mehul K', 'mehul@example.com', NULL);

select Name from users;
select U.Name , U.Email 
From users U left join orders O
ON U.UserID = O.UserID
where TotalAmount>5000;

select ProductID , SUM(Quantity) from orderitems group by ProductID;

select * from users where isnull(Email);


