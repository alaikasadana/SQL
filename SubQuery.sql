CREATE DATABASE SUBQUERY;
USE SUBQUERY;


CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Sales'),
(4, 'Finance'),
(5, 'Marketing');

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees VALUES
(101, 'Amit', 30000, 1),
(102, 'Neha', 60000, 2),
(103, 'Rahul', 45000, 3),
(104, 'Priya', 80000, 2),
(105, 'Vikas', 50000, 4),
(106, 'Sneha', 75000, 2),
(107, 'Arjun', 40000, 5),
(108, 'Kavya', 90000, 4),
(109, 'Rohit', 55000, 3),
(110, 'Anjali', 65000, 1);