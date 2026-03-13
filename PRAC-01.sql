-- Create Database
CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

-- Drop table if already exists (to avoid duplicate errors)
DROP TABLE IF EXISTS sales;

-- Create Table
CREATE TABLE sales (
    order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    city VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);
-- Insert Sample Data (Including NULL Values)
INSERT INTO sales VALUES
(1, 'Amit', 'Laptop', 'Mumbai', 1, 55000, '2024-01-10'),
(2, 'Rahul', 'Mobile', 'Delhi', 2, 20000, '2024-01-12'),
(3, 'Sneha', 'Laptop', 'Mumbai', 1, 60000, '2024-01-15'),
(4, 'Priya', 'Tablet', 'Chennai', 3, 15000, '2024-01-18'),
(5, 'Amit', 'Mobile', 'Mumbai', 1, 18000, '2024-01-20'),
(6, 'Rahul', 'Laptop', 'Delhi', 2, 52000, '2024-01-25'),
(7, 'Sneha', 'Tablet', 'Mumbai', 1, 14000, '2024-01-28'),
(8, 'Priya', 'Mobile', 'Chennai', 2, 21000, '2024-02-02'),
(9, 'Amit', 'Tablet', 'Mumbai', 2, 16000, '2024-02-05'),
(10, 'Rahul', 'Mobile', 'Delhi', 1, 19000, '2024-02-08'),
(11, 'Karan', 'Laptop', 'Mumbai', 1, 58000, '2024-02-10'),
(12, 'Meena', 'Mobile', NULL, 2, 22000, '2024-02-12'),
(13, 'Rohit', NULL, 'Delhi', 1, 30000, '2024-02-15'),
(14, NULL, 'Tablet', 'Chennai', 3, 15000, '2024-02-18'),
(15, 'Anjali', 'Laptop', 'Mumbai', NULL, 62000, '2024-02-20'),
(16, 'Vikas', 'Mobile', 'Delhi', 2, NULL, '2024-02-22'),
(17, 'Neha', 'Tablet', NULL, 1, 14000, NULL),
(18, NULL, NULL, 'Mumbai', 2, 18000, '2024-02-25');

select * from sales;

select customer_name , price from sales
 where price > 50000 
 order by price desc;

select order_id , product , price from sales 
where product like "%p" and  price >50000  
order by product asc;


select city , sum(quantity) from sales 
group by city ;


select product , sum(price) from sales 
group by product;


select product , sum(price) as Total_sales from sales 
group by product;


select product , sum(quantity) as total_quantity from sales
where product like "%p" or product like "%e"
group by product
order by total_quantity desc;

select product , sum(quantity) as total_quantity from sales
where product like "%p" or product like "%e" 
group by product
order by total_quantity desc;

select product , sum(price) as total from sales
group by product
having total>100000;


select product , sum(quantity) as total from sales
where product like "_a%" or product like "_o%"
group by product
having total>2 
order by total desc 
limit 3 offset 1 ;



-- Day 6 
 
 
 select * , isnull(customer_name) from sales;
 select * , ifnull(customer_name,5) from sales;
 select * , ifnull(customer_name, product) from sales;
 select * , coalesce(customer_name,product, 2) from sales;
 
select * , isnull(quantity) from sales;
select * , ifnull(quantity,2) from sales;
select * , coalesce(quantity,customer_name,product,"doesn't exist") from sales;



select customer_name , product , price , coalesce(customer_name, product,city,2) as "null_replacement" from sales
where product like "l%p" or "m%e" and price between 50000 and 75000
limit 3 offset 2;

 

 select city , product , sum(price) as "Total_price" from sales
 group by city , product
 having Total_price > 55000
 order by Total_price desc;
 
 
 select order_id , coalesce(quantity,2) as "Null_verification" from sales
 having Null_verification > 1;



