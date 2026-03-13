-- Employees Dataset for practicing Text and Numeric Functions
CREATE DATABASE company;
USE company;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    age INT,
    experience_years INT
);

INSERT INTO employees VALUES
(101, 'Rahul', 'Sharma', 'IT', 'Delhi', 55000.75, 5000.50, 25, 2),
(102, 'Priya', 'Verma', 'HR', 'Mumbai', 48000.50, 4000.00, 28, 4),
(103, 'Amit', 'Singh', 'Finance', 'Kolkata', 62000.00, 6000.75, 32, 7),
(104, 'Neha', 'Gupta', 'IT', 'Bangalore', 71000.25, 7000.25, 30, 6),
(105, 'Rohit', 'Mehta', 'Sales', 'Pune', 45000.00, 3500.50, 26, 3),
(106, 'Anjali', 'Patel', 'Marketing', 'Ahmedabad', 52000.60, 4200.40, 29, 5),
(107, 'Vikas', 'Yadav', 'IT', 'Delhi', 68000.80, 6500.60, 31, 8),
(108, 'Sneha', 'Reddy', 'Finance', 'Hyderabad', 59000.45, 5000.00, 27, 4),
(109, 'Karan', 'Malhotra', 'Sales', 'Chennai', 47000.90, 3000.30, 24, 2),
(110, 'Pooja', 'Kapoor', 'HR', 'Delhi', 51000.00, 4500.75, 28, 5);

SELECT * FROM employees;