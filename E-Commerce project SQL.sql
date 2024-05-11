-- E-Commerce Data Analysis


CREATE DATABASE E_commerce;

USE E_commerce;
show tables;

-- Create Categories table 

CREATE TABLE  Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255)
);

INSERT INTO Categories VALUES
(1, "Electronics"),
(2, "Clothing"),
(3, "Books"),
(4, "Home & Kitchen"),
(5, "Sports & Outdoors"),
(6, "Health & Beauty"),
(7, "Toys & Games)"),
(8, "Automotive"),
(9, "Tools & Home Improvement"),
(10, "Pet Supplies"),
(11, "Furniture"),
(12, "Jewelry"),
(13, "Office Supplies"),
(14, "Food & Beverages"),
(15, "Music & movies"),
(16, "Baby & Toddler"), 
(17, "Crafts"),
(18, "Travel & luggage"),
(19, "Fitness & Exercise"), 
(20, "Party & Occasion"),
(21, "Electronics"),
(22, "Clothing"),
(23, "Books"),
(24, "Home & Kitchen"),
(25, "Sports & Outdoors"),
(26, "Health & Beauty"),
(27, "Toys & Games)"),
(28, "Automotive"),
(29, "Tools & Home Improvement"),
(30, "Pet Supplies");

SELECT * FROM Categories;

-- create Products tables

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(300),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Products VALUES
(1, "Smartphone", 599.99, 100, 1),
(2, "T-Shirt", 19.99, 200, 2),
(3, "Book: The Great Gatsby", 12.50, 50, 3),
(4, "Coffee Maker", 49.99, 75, 4),
(5, "Soccer Ball", 29.99, 30, 5),
(6, "Shampoo", 9.99, 100, 6),
(7, "Board Game", 39.99, 40, 7),
(8, "Car Wax", 14.99, 100, 8),
(9, "Power Drill", 79.99, 25, 9),
(10, "Dog Food", 29.99, 80, 10),
(11, "Desk", 199.99, 10, 11),
(12, "Diamond Ring", 999.99, 5, 12),
(13, "Notebook", 20, 300, 13),
(14, "Bread", 2.99, 150, 14),
(15, "CD: Greatest Hits", 14.99, 50, 15),
(16, "Baby Onesie", 9.99, 100, 16),
(17, "knitting kit", 19.99, 20, 17),
(18, "Suitcase", 289.89, 30, 18),
(19, "Yoga Mat", 29.89, 50, 19),
(20, "Party Hats", 5.99, 200, 20),
(21, "Laptop", 899.99, 20, 1),
(22, "Jeans", 399.99, 40, 2),
(23, "Novel: Harry Potter", 199.99, 30, 3),
(24, "Toaster", 499, 60, 4),
(25, "BasketBall", 278, 45, 5),
(26, "Conditioner", 7.99, 50, 6),
(27, "Chess Set", 646, 200, 7),
(28, "Motor Oil", 27.99, 150, 8),
(29, "Drill Set", 59.99, 23, 9),
(30, "Cat food", 15.99, 120, 10)
;
SELECT * FROM Products;
-- Create Customers table 
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(200),
    Email VARCHAR(200)
);
INSERT INTO Customers VALUES
(1, "Ekta jain", "ekta@example.com"),
(2, "Tashu garg", "tashu@example.com"),
(3, "Anjali jain", "anjali@example.com"),
(4, "Ajay arya", "ajay@example.com"),
(5, "Aayushi chaudhary", "aayushi@example.com"),
(6, "Shreya sharma", "shreya@example.com"),
(7, "Akshat kakran", "akshat@example.com"),
(8, "Anushka Tygai", "anushka@example.com"),
(9, "Dev sharma", "dev@example.com"),
(10, "Kavya rastogi", "kavya@example.com"),
(11, "Shivani gaur", "shivani@example"),
(12, "Anshika goyal", "anshika@example.com"),
(13, "Paras jain", "paras@example.com"),
(14, "Riya goyal", "riya@example.com"),
(15, "Aman tygai", "aman@example.com"),
(16, "Vasu dass", "vasu@example.com"),
(17, "Krishna verma", "krishna@example.com"),
(18, "Arushi gupta", "arushi@example.com"),
(19, "Divyam jain", "divyam@example.com"),
(20, "Akshita jain", "akshita@example.com"),
(21, "Samyak jain", "samyak@example.com"),
(22, "Harshit Aggarwal", "harshit@example.com"),
(23, "Avni goyal", "avni@example.com"),
(24, "Manya goel", "manya@example.com"),
(25, "Swati sharma", "swati@example.com"),
(26, "Punit mittal", "punit@example.com"),
(27, "Arrav bansal", "arrav@example.com"),
(28, "Yash tayal", "yash@example.com"),
(29, "Ankita kansal", "ankita@example.com"),
(30, "Prakhar mohan", "prakhar@example.com");
SELECT * FROM Customers;


-- create Orders table 
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT, 
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES  Customers(CustomerID)
);
INSERT INTO Orders VALUES
(1, 1, '2024-04-01'),
(2, 2, '2024-04-02'),
(3, 3, '2024-04-03'),
(4, 4, '2024-04-04'),
(5, 5, '2024-04-05'),
(6, 6, '2024-04-06'),
(7, 7, '2024-04-07'),
(8, 8, '2024-04-08'),
(9, 9, '2024-04-09'),
(10, 10, '2024-04-10'),
(11, 11, '2024-04-11'),
(12, 12, '2024-04-12'),
(13, 13, '2024-04-13'),
(14, 14, '2024-04-14'),
(15, 15, '2024-04-15'),
(16, 16, '2024-04-16'),
(17, 17, '2024-04-17'),
(18, 18, '2024-04-18'),
(19, 19, '2024-04-19'),
(20, 20, '2024-04-20'),
(21, 21, '2024-04-21'),
(22, 22, '2024-04-22'),
(23, 23, '2024-04-23'),
(24, 24, '2024-04-24'),
(25, 25, '2024-04-25'),
(26, 26, '2024-04-26'),
(27, 27, '2024-04-27'),
(28, 28, '2024-04-28'),
(29, 29, '2024-04-29'),
(30, 30, '2024-04-30');
SELECT * FROM Orders;

-- Create OrderDetails table
CREATE TABLE OrderDetails (
    DetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO OrderDetails VALUES
(1, 1, 1, 2),
(2, 2, 3, 1),
(3, 3, 5, 3),
(4, 4, 7, 2),
(5, 5, 9, 1),
(6, 6, 11, 4),
(7, 7, 13, 2),
(8, 8, 15, 1),
(9, 9, 17, 3),
(10, 10, 19, 2),
(11, 11, 21, 1),
(12, 12, 23, 2),
(13, 13, 25, 1),
(14, 14, 27, 3),
(15, 15, 29, 2),
(16, 16, 2, 1),
(17, 17, 4, 3),
(18, 18, 6, 2),
(19, 19, 8, 1),
(20, 20, 10, 2),
(21, 21, 12, 1),
(22, 22, 14, 3),
(23, 23, 16, 2),
(24, 24, 18, 1),
(25, 25, 20, 2),
(26, 26, 22, 1),
(27, 27, 24, 4),
(28, 28, 26, 2),
(29, 29, 28, 1),
(30, 30, 30, 3);
SELECT * FROM OrderDetails;

-- Create  Reviews tables
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    Rating INT,
    Comment TEXT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Reviews VALUES 
(1, 1, 1, 5, 'Great product!'),
(2, 3, 2, 4, 'Good quality.'),
(3, 5, 3, 5, 'Very satisfied.'),
(4, 7, 4, 3, 'Average.'),
(5, 9, 5, 4, 'Impressed.'),
(6, 11, 6, 5, 'Excellent!'),
(7, 13, 7, 4, 'Nice.'),
(8, 15, 8, 5, 'Highly recommended.'),
(9, 17, 9, 3, 'Could be better.'),
(10, 19, 10, 4, 'Satisfied.'),
(11, 21, 11, 5, 'Fantastic product!'),
(12, 23, 12, 4, 'Good value for money.'),
(13, 25, 13, 5, 'Amazing!'),
(14, 27, 14, 3, 'Not bad.'),
(15, 29, 15, 4, 'Happy with purchase.'),
(16, 2, 16, 5, 'Love it!'),
(17, 4, 17, 4, 'Decent quality.'),
(18, 6, 18, 5, 'Very good.'),
(19, 8, 19, 3, 'Expected better.'),
(20, 10, 20, 4, 'Good product.'),
(21, 12, 21, 5, 'Superb!'),
(22, 14, 22, 4, 'Nice design.'),
(23, 16, 23, 5, 'Highly satisfied.'),
(24, 18, 24, 3, 'Okay.'),
(25, 20, 25, 4, 'Worth the money.'),
(26, 22, 26, 5, 'Excellent quality!'),
(27, 24, 27, 3, 'Average.'),
(28, 26, 28, 4, 'Happy customer.'),
(29, 28, 29, 5, 'Perfect!'),
(30, 30, 30, 4, 'Good experience.');
SELECT * FROM Reviews;

-- Create Shipping table
CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY,
    OrderID INT,
    ShipDate DATE, 
    DeliveryDate DATE,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO Shipping VALUES
(1, 1, '2024-04-01', '2024-04-05'),
(2, 2, '2024-04-02', '2024-04-06'),
(3, 3, '2024-04-03', '2024-04-07'),
(4, 4, '2024-04-04', '2024-04-08'),
(5, 5, '2024-04-05', '2024-04-09'),
(6, 6, '2024-04-06', '2024-04-10'),
(7, 7, '2024-04-07', '2024-04-11'),
(8, 8, '2024-04-08', '2024-04-12'),
(9, 9, '2024-04-09', '2024-04-13'),
(10, 10, '2024-04-10', '2024-04-14'),
(11, 11, '2024-04-11', '2024-04-15'),
(12, 12, '2024-04-12', '2024-04-16'),
(13, 13, '2024-04-13', '2024-04-17'),
(14, 14, '2024-04-14', '2024-04-18'),
(15, 15, '2024-04-15', '2024-04-19'),
(16, 16, '2024-04-16', '2024-04-20'),
(17, 17, '2024-04-17', '2024-04-21'),
(18, 18, '2024-04-18', '2024-04-22'),
(19, 19, '2024-04-19', '2024-04-23'),
(20, 20, '2024-04-20', '2024-04-24'),
(21, 21, '2024-04-21', '2024-04-25'),
(22, 22, '2024-04-22', '2024-04-26'),
(23, 23, '2024-04-23', '2024-04-27'),
(24, 24, '2024-04-24', '2024-04-28'),
(25, 25, '2024-04-25', '2024-04-29'),
(26, 26, '2024-04-26', '2024-04-30'),
(27, 27, '2024-04-27', '2024-05-01'),
(28, 28, '2024-04-28', '2024-05-02'),
(29, 29, '2024-04-29', '2024-05-03'),
(30, 30, '2024-04-30', '2024-05-04');
SELECT * FROM Shipping


-- Create Discounts table
CREATE  TABLE Discounts (
    DiscountID INT PRIMARY KEY,
    ProductID INT,
    DiscountAmount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Discounts values
(1, 1, 5.00),
(2, 2, 10.00),
(3, 3, 7.50),
(4, 4, 3.00),
(5, 5, 8.75),
(6, 6, 12.50),
(7, 7, 6.25),
(8, 8, 9.00),
(9, 9, 4.50),
(10, 10, 15.00),
(11, 11, 20.00),
(12, 12, 2.50),
(13, 13, 18.75),
(14, 14, 11.25),
(15, 15, 14.00),
(16, 16, 6.75),
(17, 17, 8.50),
(18, 18, 3.25),
(19, 19, 10.00),
(20, 20, 5.75),
(21, 21, 12.00),
(22, 22, 7.25),
(23, 23, 4.00),
(24, 24, 16.50),
(25, 25, 9.75),
(26, 26, 22.00),
(27, 27, 27.50),
(28, 28, 13.25),
(29, 29, 6.00),
(30, 30, 8.25);
SELECT * FROM Discounts;

SELECT table_name                -- This query is used to enter the names of every table that is present in that database.
FROM information_schema.tables
WHERE table_schema = 'E_commerce';



--  DATA ANALYSIS 

-- 1. What is the total revenue generated by order_list, and how has it changed over time?

SELECT o.OrderDate,
SUM(od.Quantity * p.Price) AS TotalRevenue
FROM Orders o
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN Products p 
ON od.ProductID = p.ProductID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;

-- 2. What are the most popular product categories on Order_list, and how do their sales volumes compare to each other?

SELECT c.CategoryName,
SUM(od.Quantity) AS TotalSalesVolume
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY TotalSalesVolume DESC;

-- 3.How do customer reviews and ratings affect sales and product performance on Order_list? 

SELECT p.ProductID,p.Name AS ProductName,
    AVG(r.Rating) AS AverageRating,
    COUNT(r.ReviewID) AS TotalReviews,
    SUM(od.Quantity) AS TotalSalesVolume
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
LEFT JOIN Reviews r ON p.ProductID = r.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalSalesVolume DESC;

-- 4. which item has the biggest savings?

SELECT p.ProductID,p.Name AS ProductName,d.DiscountAmount
FROM Discounts d
JOIN Products p 
ON d.ProductID = p.ProductID
ORDER BY d.DiscountAmount DESC
LIMIT 5;

-- 5. Which categories require a minimum order quantity? 

SELECT DISTINCT c.CategoryName
FROM c.Categories
JOIN Products p 
ON c.CategoryID = p.ProductID
WHERE p.MinOrderQuantity IS NOT NULL;

-- 6. What is the most typical delivery date? 

SELECT DeliveryDate, COUNT(*) AS NumOrder
FROM Shipping
GROUP BY DeliveryDate
ORDER BY NumOrder DESC
LIMIT 1;

-- 7. Which product has the most number of stock? 

SELECT ProductID, Name AS ProductName, StockQuantity
FROM Products
ORDER BY StockQuantity DESC
LIMIT 1;

-- 8. Which client thought the product was the best?

SELECT r.CustomerID, c.Name AS CustomerName, r.ProductID, p.Name AS ProductName, r.Rating
FROM Reviews r
JOIN Customers c ON r.CustomerID = c.CustomerID
JOIN Products p ON r.ProductID = p.ProductID
ORDER BY r.Rating DESC
LIMIT 5;

-- 9. Which clients have left favorable reviews?

SELECT c.CustomerID, c.Name AS CustomerName, r.ProductID, p.Name AS ProductName, r.Rating, r.Comment
FROM Reviews r
JOIN Customers c 
ON r.CustomerID = c.CustomerID
JOIN Products p 
ON r.ProductID = p.ProductID
WHERE r.Rating >= 4;

-- 10. which date is the highest order shipped?

SELECT ShipDate, COUNT(*) AS NumOrder
FROM Shipping 
GROUP BY ShipDate
ORDER BY NumOrder DESC
LIMIT 10;

-- 11. which customer ordered the most expensive product?

SELECT c.Name AS CustomerName
FROM Customers c 
JOIN Orders o 
ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN Products p
ON od.ProductID = p.ProductID
WHERE p.Price = (SELECT MAX(Price) FROM Products)
ORDER BY p.Price DESC 
LIMIT 1;

-- 12. What is the current count of active vendors on Order_list, and how does this figure vary over time?

SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS YearMonth, COUNT(DISTINCT CustomerID) AS ActiveSellers
FROM Orders
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY YearMonth;

-- 13. which order is most quantitative

SELECT OrderID , SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY OrderID
ORDER BY TotalQuantity DESC 
LIMIT 10;

-- 14. Which product has the best price and rating? 

SELECT p.ProductID , p.Name AS ProductName , p.Price , r.Rating
FROM Products p 
JOIN Reviews r 
ON p.ProductID = r.ProductID
WHERE (p.Price / r.Rating) = (
    SELECT MAX(Price / Rating)
    FROM Products
    JOIN Reviews ON Products.ProductID = Reviews.ProductID
);

-- 15.  Which category has the most affordable price?

SELECT CategoryName , MIN(Price) AS Min_price
FROM Products
GROUP BY CategoryName
ORDER BY Min_price DESC
LIMIT 1;

-- 16 Average Quantity per day 

SELECT OrderDate, AVG(Quantity) AS AverageQuantityPerDay
FROM Orders o
JOIN OrderDetails od 
ON o.OrderID = od.OrderID
GROUP BY OrderDate;

-- 17. The total revenue per product category 
SELECT c.CategoryName, SUM(od.Quantity * p.Price) AS TotalRevenue
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- 18. which product got the best reviews?
SELECT p.ProductID, p.Name AS ProductName, AVG(r.Rating) AS AverageRating
FROM Products p
JOIN Reviews r 
ON p.ProductID = r.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY AverageRating DESC
LIMIT 1;

-- 19. What product, and in what amount?

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 1;

-- 20. Who client has paid the highest price for the product?

SELECT c.CustomerID, c.Name AS CustomerName, o.OrderID, MAX(p.Price) AS MaxProductPrice
FROM Customers c
JOIN Orders o 
ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN Products p
ON od.ProductID = p.ProductID
GROUP BY c.CustomerID, c.Name, o.OrderID
ORDER BY MaxProductPrice DESC
LIMIT 5;

-- 21. Which product is the most popular, and what category does it fall under?

SELECT p.ProductID, p.Name AS ProductName, p.CategoryID, c.CategoryName, SUM(od.Quantity) AS TotalQuantityOrdered
FROM Products p
JOIN OrderDetails od 
ON p.ProductID = od.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY p.ProductID, p.Name, p.CategoryID, c.CategoryName
ORDER BY TotalQuantityOrdered DESC
LIMIT 1;

-- 22 What is the customer's discount percentage and amount? 

SELECT c.CustomerID, c.Name AS CustomerName,
    SUM(d.DiscountAmount) AS TotalDiscountAmount,
    SUM(od.Quantity * p.Price) AS TotalOrderAmount,
    CASE
        WHEN SUM(od.Quantity * p.Price) > 0 THEN (SUM(d.DiscountAmount) / SUM(od.Quantity * p.Price)) * 100
        ELSE 0
    END AS DiscountPercentage
FROM Customers c
LEFT JOIN Orders o 
ON c.CustomerID = o.CustomerID
LEFT JOIN OrderDetails od 
ON o.OrderID = od.OrderID
LEFT JOIN Products p 
ON od.ProductID = p.ProductID
LEFT JOIN Discounts d 
ON p.ProductID = d.ProductID
GROUP BY c.CustomerID, c.Name;

-- 23. Which product has been ordered the most and what is its price?

SELECT p.ProductID, p.Name AS ProductName, p.Price,
    SUM(od.Quantity) AS TotalQuantityOrdered
FROM Products p
JOIN OrderDetails od 
ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.Name, p.Price
ORDER BY TotalQuantityOrdered DESC
LIMIT 5;

-- 24. what is the  average cost top 5 product name 

SELECT AVG(Price) AS AverageCostTop5Products
FROM (
    SELECT Price
    FROM Products
    ORDER BY Price DESC
    LIMIT 5
) AS Top5Products;

-- 25.  How much is the overall scale from the order?

SELECT SUM(od.Quantity * p.Price) AS OverallScale
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID;










