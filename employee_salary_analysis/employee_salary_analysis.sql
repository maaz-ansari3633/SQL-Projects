CREATE DATABASE EmployeeDb;

USE EmployeeDb;

CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Experience INT,
    City VARCHAR(50)
);

INSERT INTO Employees
(Emp_ID, Emp_Name, Department, Salary, Experience, City)
VALUES
(101, 'Amit', 'HR', 45000, 2, 'Mumbai'),
(102, 'Rahul', 'IT', 75000, 5, 'Pune'),
(103, 'Sneha', 'Finance', 68000, 4, 'Delhi'),
(104, 'Priya', 'IT', 90000, 7, 'Mumbai'),
(105, 'Karan', 'HR', 52000, 3, 'Chennai'),
(106, 'Neha', 'Finance', 85000, 6, 'Bangalore'),
(107, 'Rohit', 'IT', 65000, 4, 'Hyderabad'),
(108, 'Anjali', 'Marketing', 58000, 3, 'Mumbai'),
(109, 'Vikas', 'Marketing', 72000, 5, 'Delhi'),
(110, 'Pooja', 'HR', 48000, 2, 'Pune');

SELECT * FROM Employees;

-- Average salary
SELECT AVG(Salary) AS Average_Salary
FROM Employees;

-- Department-wise highest salary 
SELECT Department,
       MAX(Salary) AS Highest_Salary
FROM Employees
GROUP BY Department;

-- Highest-paid employees
SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 3;