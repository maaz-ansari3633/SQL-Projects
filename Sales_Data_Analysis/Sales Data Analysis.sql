CREATE DATABASE SalesDb;
USE SalesDb;

CREATE TABLE sales (
  Orderid INT PRIMARY KEY,
  Product VARCHAR (50),
  Customer VARCHAR(50),
  Quantity INT,
  Price DECIMAL(10,2),
  OrderDate DATE 
);

INSERT INTO sales VALUES
(101,"Laptop","Ram",2,500000,"2026-01-10"),
(102,"Keyboard","Rahul",1,1500,"2026-01-11"),
(103,"Mouse","Sara",3,500,"2026-01-13"),
(104,"Moniter","John",2,12000,"2026-01-14"),
(105,"Keyboard","Ram",2,1500,"2026-01-15"),
(106,"Headphone","John",1,1000,"2026-01-16");

SELECT * FROM sales;

SELECT SUM(Quantity * Price) AS TotalRevenue
FROM sales;

SELECT Product,
    SUM(Quantity) AS TotalSold
FROM sales 
GROUP BY PRODUCT
ORDER BY TotalSold DESC;

SELECT product,
    SUM(Quantity * Price) AS Revenue
FROM sales 
GROUP BY Product;

SELECT Customer,
   SUM(Quantity * Price) AS TotalPurchase
FROM sales 
GROUP BY Customer
ORDER BY TotalPurchase DESC
LIMIT 1;
