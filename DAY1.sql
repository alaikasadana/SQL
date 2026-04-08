--  First Class - Day 1 

create database Cybrom2;

create database Employees;

use Cybrom2;



create table customers(
Customer_ID int ,
Customer_name varchar(20),
City varchar(20),
Date_of_Purchase date );

select * from customers;

create table Orders(
Order_ID int,
Order_name varchar(20),
City varchar(20),
Date_of_Order date);

select * from Orders;


/* My Sql is a tool in which we use sql language 
to manage the data , where sql stands for Structure Query Language
     
         My Sql server is a place where data gets stored and 
         mySql workbench is a place where we can see the data 
         wrokbench is a UI(User interface)
         
         1. firstly we create the database in mySql for making it active
            we double click on the database or write a query now whatever
            the table we create it will be stored in the active database.
            
            Active database comes in bold letter.
            
            for creating any table we have to define the column 
            headers with the data type .alter
            
            Databases can't have the same name
            
            */
            
create database Cybrom1;

use Cybrom1;

create table Patient(
Patient_ID int,
Patient_Name varchar(20),
Doctor_Name varchar(20)
);

select * from Patient;


-- SECOND CLASS 

use cybrom2;


-- this is query is use to see the table in active database  
show tables;

-- It describe the table column headers with its attribute  
desc customers;

-- It gives by default databases in the schema  
show databases;

insert into customers values
(01,"Shakti","Bhopal","2001-01-01"),
(02,"Sanjay","Indore","2002-02-02");


select * from customers;
select  customer_name  from customers; 

-- To fetch the particular coloumn from the table name 
select customer_id , customer_name from customers;

-- TASK 1

create database a; 

create table b(
s_name varchar(20), 
City varchar(20) ,
Datee date,
Salary int );

desc b;

insert into b values
("AA", "BB" , "2001-01-01", 50000),
("cc", "dd" , "2002-02-02", 60000),
("ee", "ff" , "2003-03-03", 70000);

select * from b;

select s_name , city from b;

 


/* INT Q -  SQL IS A DECLARATIVE LANGUAGE , BECAUSE UNDER IT WE GIVES THE ORDERS AND 

REQUIREMENTS AND IT DISPLAYS THE OUTPUT ITS NOT A PROCEDURAL LANGUAGE 

 TO MAKE ANY OUTPUT PERMANENTLY VISIBLE IN THE RESULT GRID 
WE DO THE PIN TAB BY RIGHT CLICK OVER THE RESULT 

My sql is an open source app because we can freely doqnload it in the system */



-- THIRD CLASS --  DAY 3 

select * from customers;
desc customers;

drop table customers;

create table customers( 
Customer_ID int , 
customer_name varchar(20),
Performance varchar(20),
Salary int ,
Date_of_Joining date);


insert into customers values
(1, "AA", "Good" , 2000 , "2001-01-01"),
(2, "BB", "Execellent" , 3000 , "2002-10-01"),
(3, "CC", "Very Good" , 4000 , "2003-01-01"),
(4, "DD", "Good" , 5000 , "2005-01-01");

insert into customers values
(5,"OO", "Very good " , 6000 , "2005-02-05");

-- Where Clause -: it is used for applying the filteration 
select * from customers
where performance = "good";

select * from customers
where performance = "very good";

select * from customers
where Performance = "Good" and salary > 2000;

select * from customers
where Customer_id > 2 and salary >3000 ;

select * from customers
where Customer_ID > 2 or salary >2000;

select customer_name from customers 
where salary between 2000 and 4000 ;

select customer_name from customers
where performance is null;

select customer_name from customers
where performance is not null;

select * from customers 
where customer_name like "a%";

select * from customers
where customer_name like "%a";

select * from customers
where customer_name like "g%";

select * from customers
where customer_name like "_o%";

select * from customers 
where customer_name like "___d%";

select * from customers
where customer_name like "a%" or Performance = "good";

select customer_name from customers
where customer_name like "a%" and salary > 2000;


-- FOURTH CLASS -- DAY 4 

select * from customers;

-- To make salary in descending order  
select * from customers
order by salary desc;

-- To make salary in ascending order
select * from customers
order by salary asc;

-- 
select * from customers 
order by salary desc
limit 3;

select * from customers
order by salary asc limit 2;

select * from customers 
limit 5;

select * from customers
order by salary desc;

select * from customers
limit 3 offset 1;

select customer_id , salary from customers
order by salary desc 
limit 3 offset 1;

select customer_id , customer_name , performance from customers
where performance like "g%d" and customer_id > 2
order by customer_id asc;
  
/* A short trick to remember the sequence 
from 
where
group by
having 
select 
order by 
limit 
offset 
offset */
 
 
 
-- DAY 5 

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
where price >50000
order by price desc;

select order_id , product , price from sales
where product like "%p" and price >50000 
order by product asc;

select city , sum(quantity) from  sales
group by city;

select product ,sum(price) from sales
group by product ;

select product , sum(price) as Total_sales from sales
group by product;

select product , sum(quantity) as Total_Quantity from sales
where product like "%p" or product like "%e"
group by product
order by Total_Quantity desc;


select product , sum(quantity) as total_quantity from sales
where product like "%p" or product like "%e" 
group by product
order by total_quantity desc;

select product , sum(price) as total from sales
group by product
having total>100000;



select product, sum(quantity) as total from sales
where product like "_a%" or product like "_o%"
group by product 
having total >2
order by total desc
limit 3 offset 1;
 
 
 
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
 
 
 -- DAY 7 
 
 create database A;
 use A;
 create table B(customer_id int , customer_name varchar(20));
 
 insert into B values
(2,"BB");
 
 select * from B;
 
 -- Now insert the new column under this table 
 alter table B add column Customer_performance varchar(20); 
 
 desc b;

 -- Now change the new column data type 
 alter table b modify column Customer_performance int;


 -- drop the existing column   
 alter table b drop column Customer_performance;
 
 -- renaming the table name
 rename table b to c;
 
 rename table c to b;
 
 -- we want where customer_id = 1 , make customer_name = dd
 
 update b set  customer_name = "dd"
 where Customer_id = 1;
 
 -- When it asks for safe update mode so run queryy
 set sql_safe_updates = 0;
 
 -- Now rename the column name
 alter table b rename column customer_id to cus_id;
 
 alter table b rename column cus_id to customer_id;
 
 /* delete is used to remove particular row from
 the table where truncate is used to erase the complete data from table 
 and drop is used  to remove table or database */
 
 -- remove the row where customer_id = 1
delete from b 
where customer_id = 1; 

select * from b;

 -- now remove the complete data from the table means complete rows
 truncate b;
 
 -- now remove the entire table 
 drop table b;
 
 
 -- where claus is used for the filter process
 -- order by claus is used for srorting the data 
 -- limit clause is used to see the top or bottom data n number of rows 

 
 
/* under sql commands are categorised into 5 types 
One is DDL ( data definition language )
1. Drop
2. Rename
3. Create
4. Alter
5. Truncate

Shortcut t remember this commands under SQL is DR CAT

Second is DML (Data Manipulation Language) 
it is used to modify data in the table 
1.Insert
2. Update
3. Delete


third is DCL (Data control language) 
it is used to control access/permissions
1. Grant 
2. Revoke


fourth is DQL (Data query language)
it is used to  fetch data from database.
1. Select

Fifth is TCL (Transaction Control Language)
it is Used to manage database transactions.
1. Commit 
2. Rollback 
3. savepoint




/* Real life example of SQL is E-commerce websites example amazon
suppose if i search for LED then at the backend the amazon 
software will create the sql query like select LED_name from Database */

-- Fourth Class 


-- TASK 

create database b;

create table c (Cus_id int , Cus_name varchar(20));


alter table c add column amount_integer int;

alter table c modify column amount_integer varchar(20);

alter table c drop column amount_integer;

insert into c values(1,"AA"),(2,"bb");

update c set cus_name = "EE"
where Cus_id = 1;

select * from c;

 
 -- DAY 8 
 
 create database D;
 
 
 create table E(Customer_id int , Customer_name varchar(20));
 
 insert into E values
 (1,"AA"),
 (2,"BB");
 
 select * from E;
 
 alter table E add column performance varchar(20);
 
 set sql_safe_updates = 0;
 update E set performance = "good"
 where customer_id =1;
 
 update E set performance = "very good"
 where customer_id = 2;
 
 set autocommit = 0;
 commit;
 
-- another method 
 
 rollback;
 select * from E;
 
 update E set 
 performance = case
 when customer_id = 1 then "very Good"
 when customer_id = 2 then "good"
 else
 "Nothing"
 end;
 
 
 -- another method
 
 rollback;
 rollback;
 
select * from E;

update E set performance = "V.good";
 
 
-- new task 

create database E;

use E;

create table F
(Cus_id int, 
Cus_name varchar(20));

insert into F values
(1,"AA"),
(2,"BB");

alter table F add column performance  varchar(20);

select * from F;

update F set
performance = case
when cus_id = 1 then "Good"
when cus_id = 2 then "Very good"
else 
"Nothing"
end;
 
 
 
 create table G
 (Cus_id int,
 cus_name varchar(20));
 
 insert into G values
 (1,"AA"),
 (2,"BB");
 
 insert into g values
 (5,"EE");
 
 
 
 set autocommit =0;
 commit;
 
 select * from G;
 
 rollback to sp1;
 
 savepoint sp1;
 
 rollback;
 
 
 /* /*
TCL (Transaction Control Language) is used to control the changes made in the database.
It helps us save the changes or undo them.

If something goes wrong. Firstly we set autocommit = 0. It avoids the system from
permanent store.

Later we create a table and insert 2 rows under that. After it
now I set commit;

It will do the permanent store of the 2 lines data.

Now if I insert the 3rd line after it, if I do the rollback
now it will again my table till 2nd row only.

Actually the rollback acts like undo (Ctrl + Z) only.
Even if I write 10 lines and insert also but if I rollback
again then again table will be in the status of 2 rows only.

Now we also use the savepoint, so the savepoint works as a
landmark. Then if I rollback to particular savepoint and then
if I see the table by

select * from table_name

then under the table the data will be visible till that point
only.
*/

-- Class 8

-- Revision

-- Class 9

create database A;

use  A;

create table B
(Cus_id int , Cust_name varchar(20), Cust_Performance varchar(20));

insert into B values
(1,"A", "B"),
(2,"C",null),
(3,"D","E"),
(4,null,"F"),
(5,"G","H"),
(6,null,null);

select * from B;

desc B;


alter table B add column Cust_Purchase int;

set sql_safe_updates = 0;

update B set 

Cust_purchase = case
when Cus_id <=3 then 100
when Cus_id between 4 and 5 then 200
else 
400
end;


select * , isnull(Cust_name) as Null_in_cust_name  from B;

select * , ifnull(cust_name,2) Null_in_cust_name from B;

select * , coalesce(cust_name,Cust_performance,Cust_purchase) as  Null_in_cust_name from B;

select Cus_id , Cust_name from B 
where Cus_id > 2 and Cust_purchase > 200
limit 1 offset 1;

select * from B;

-- DCL (DATA CONTROL LANGUAGE) COMMANDS

-- TO GIVE ACCESS TO TABLE TO THE USER  
grant all on b
to user_name; 

-- TO GIVE THE ACCESS FOR PARTICULAR COLUMN TO USER 
-- grant cust_id , cust_name on b
-- to user_name;

-- TO RESTRICT THE PERMISSIONS OF USER 
-- revoke all on b 
-- to user_name;

-- TO RESTRICT THE ACCESS FOR PARTICULAR COLUMN TO USER 
-- revoke cust_id , cust_name on b
-- to user_name; 
--  

 
 select * from b;
 
 set autocommit = 0;
 commit;
 
 insert into B values
 (8,"K","L",100);
 
 rollback;
 
 savepoint sp1;
 
 rollback to sp1;
 
 
 
 -- Class 10
 
 drop database A;
 
 create database A;
 
 create table B(Cust_Id int , Cust_name varchar(20));
 
 insert into B values 
 (1,"A"),
 (2,"B");
 
 select * from B;
 
 insert into B values
 (1,"C");
 
 drop table B;
 
 create table b 
(Cust_Id int unique, 
Cust_name varchar(20) not null );

select * from B;
 
 select * from C;
 
 create table C(
 Cust_id int primary key,
 Cust_name varchar(20) not null
  );
  
  insert into c values
  (1,"A"),
  (2,"B");



create table Customers(
Cust_id int primary key,
C_name varchar(20) not null
);

desc Customers;

create table Orders(
Order_id int primary key ,
Order_name varchar(20) not null ,
Cust_id int,
foreign key (cust_id) references Customers(Cust_id) 
);

desc Orders;


-- TASK

create table Doctors(
D_ID int primary key ,
D_name varchar(20) not null
);

create table Hospitals(
H_ID int primary key ,
H_Name varchar(20) not null,
D_ID int,
foreign key (D_ID) references Doctors(D_id)
);

desc Doctors;
desc Hospitals;

create table Students(
Stud_id int primary key,
Stud_name varchar(20) not null ,
Stud_age int check(Stud_age>18)
);

insert into Students values
(2,"C",17);

select * from Students;
desc Students;

Drop table Students;

create table Students(
Student_id int primary key ,
Student_name varchar(20) not null ,
Student_age int default 20
);

desc Students;

insert into Students values
(1,"A",18),
(2,"B",21);

select * from Students;

insert into Students
(student_id , student_name ) values
(3,"C");

 -- Class 11 
 
 
 
 -- SCALER FUNCTIONS 
 
 -- Tenth Class
/* Constraints: It is used to restrict the data that what data
should be allowed into the table .
Actually we can conclude that it acts as a filter or guard.
There are 6 types of Constraints:
1.Unique
2.Not Null
3.Primary Key
4.Foreign Key
5.check
6.Default
*/


 -- Employees Dataset for practicing Text and Numeric Functions

create database Emp;
use Emp;

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

select * from employees;

select first_name from employees
where emp_id = 101;

select upper(first_name) from employees;

select lower(first_name) from employees;

-- Trim removes the unnecessary spacing  
select trim(first_name) from employees;

-- alias is used to rename column header but its temporary 
select first_name as First_name from employees;


select First_name , length(first_name) from employees;

select First_name , last_name , concat(First_name , " " , last_name) as fullname from employees; 

select department from employees;

select department , replace(department , "IT" , "Information Technology") from employees;



select first_name from employees;

select first_name , mid(first_name , 3 , 2) from employees;

select first_name , substring(first_name , 1, 3) from employees;
select first_name , substr(first_name , 1, 3 ) from employees;
 
-- Aggregate functions

select count(emp_id) from employees;

select count(first_name ) from employees;

select count(distinct first_name) from employees;

select max(salary) from employees;

select min(salary) from employees;

select sum(salary) from employees;

select  avg(salary) from employees;

select sqrt(salary) from employees;

select distinct(department)
from employees;

select department, sum(salary) as total_salary
from employees
group by department 
having total_salary > 100000;

-- Arthematic functionss 

select experience_years , power(experience_years , 2) from employees;

select salary , truncate(salary,0) 
from employees;


select salary , round(salary,0)
from employees;

select salary, floor(salary) 
from employees;

select salary, ceil(salary) 
from employees;

/* Scaler Funcntions(row-wise processing (independent))
Scaler functions are classified into arthemetic , txt,
date & time , conversion , and NULL-handling functions 
*/


/* How to distinguish aggregate and numeric functions
If we giving multiple input rows and having multiple output
rows than it will be a Numeric Function ex round,ceil,sqrt

If we giving multiple input rows and having output with single
row than it is aggregate fn ex sum,count,avg

Numeric function works on row level gives the output row wise
But Aggregate fn takes the group or set of rows as a Input and
gives the single output
If you use GROUP BY, then:
Aggregate functions return one output per group, not just one row
*/



-- Class 13

select * from employees
where emp_id =110;


show indexes from employees;

create index idx_1
on employees(age);

create index id_c2
on employees(city);

drop index idx_1
on employees;

show indexes from employees;

create index id_s
on employees(salary);

select * from employees;

show indexes from employees;

drop index id_c2
on employees;

show indexes from employees;

/*

 System created indexes like primary key and
unique key cant be dropped directly. We must drop the
constraint first which automatically removes the index 

If we create a index on a column, the database stores
the column values along with their locations.
So, when we search using that column the database
directly goes to the required row instead of scanning
the whole table.

Q. Main reasons why creating the index is not
always preferred?

Ans 1. When you insert, update or delete
data the database must update the table and the
index also .

So it slows down insert, update and delete
operations.
2. Use extra storage space
3. Not useful for small tables database can
quickly scan without indexes.
4. Too many indexes reduce overall performance.

Indexes improve SELECT performance but can slow down
INSERT, UPDATE, and DELETE operations because the
indexes also need to be maintained.




* When Index is Preferred:
1. For Larger tables
2. Columns frequently used in where clause
3. Columns used in foreign key
4. Primary key and Foreign key

* Indexes can be categorised based on their
internal structure (2 types):
1. B_tree index (most common)
2. Hash Index

* It also can be categorised based on storage:
1. Clustered Index
2. Non-Clustered Index

* An index can be created on one or more columns
of the table, when an index involves multiple
columns its called a Composite Key.

Use the Composite Index, when queries prefer the
condition that

where column1 = ?
and column2 = ?

They are frequently used when queries
involves multiple columns together */




show indexes
from employees;

drop index id_s
on  employees;

 

-- How to create composite index

create index idx1_1
on employees(city,department);

show indexes 
from employees;

drop index idx1_1
on employees;

create table customers(
cust_id int  primary key ,
cust_name varchar(20)
);

show indexes from employees;

alter table customers modify column cust_id int ;

select * from customer;

desc customers;


select * from employees;


-- Class 14 

create table a
(Cust_id int primary key ,
Cust_name varchar(20) not null
);

desc a;

select * from a;

show indexes from a;

-- to drop index in primary key

alter table a drop primary key; 

-- JOINS
-- JOIN PRACTICE DATASET

CREATE DATABASE IF NOT EXISTS join_practice;
USE join_practice;

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO customers VALUES
(1,'Shubham','Delhi','shubham@gmail.com'),
(2,'Amit','Mumbai','amit@gmail.com'),
(3,'Neha','Pune','neha@gmail.com'),
(4,'Rohit','Delhi','rohit@gmail.com'),
(5,'Priya','Bangalore','priya@gmail.com');

-- Categories table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO categories VALUES
(1,'Electronics'),
(2,'Clothing'),
(3,'Books');

-- Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

INSERT INTO products VALUES
(101,'Laptop',50000,1),
(102,'Mobile',20000,1),
(103,'T-Shirt',500,2),
(104,'Jeans',1200,2),
(105,'SQL Book',700,3);

-- Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(1001,1,'2024-01-10'),
(1002,2,'2024-01-12'),
(1003,1,'2024-01-15'),
(1004,3,'2024-01-18'),
(1005,5,'2024-01-20');

-- Order Items table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,103,2),
(3,1002,102,1),
(4,1003,105,3),
(5,1004,104,1),
(6,1005,101,1);

-- SAMPLE JOIN QUERY
SELECT customers.customer_name, products.product_name, order_items.quantity
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
JOIN products ON order_items.product_id = products.product_id; 

select * from categories;
select * from customers;
select * from order_items;
select * from orders;
select * from products;


/*
-- Data of Country having country names with 5 letters
select * from country
where name like "_____";

/* Deadlock
Under its multiple transactions working at a time a resource under mysql
which is used by the other transaction it is needed by the other same for
the case of other transaction also ... in this noone transaction will be
completed because they will wait for each other forever.
So, Mysql resolves this issue by its own, by allowing one transaction
to be completed and using the all resources which is needed by the first
then same it does for the another

EX suppose if need pen and paper and i am having the pen similarly another
person having paper and he needs pen then they will wait for each other for
forever it is an example of deadlock
*/



-- INNER JOIN

select * from customers as C 
inner join 
orders as O
on c.customer_id = o.customer_id;

-- CLass 15

select * from categories;
select * from customers;
select * from order_items;
select * from orders;
select * from products;

select * from order_items as o_i
inner join 
orders as o
on o_i.order_id = o.order_id;


select * from categories as c
inner join
products as p
on c.category_id = p.category_id;


select * from categories as c
left join
products as p
on c.category_id = p.category_id;

select * from categories as c
right join
products as p
on c.category_id = p.category_id;


select * from order_items as o_i
left join
orders as o
on o_i.order_id = o.order_id;


select * from order_items as o_i
right join 
orders as o
on o_i.order_id = o.order_id;

 
 select * from customers as c 
 right join
 orders as o 
 on c.customer_id = o.customer_id;
 
 select * from customers as c
 left join 
 orders as o
 on c.customer_id = o.customer_id;

--  CROSS JOIN 

select * from 
customers as c
cross join
categories as cate;


--  NATURAL JOIN

select * from 
customers as c
natural join
categories as cate;


select * from 
orders as o
natural join 
order_items as o_i;

-- FULL JOIN 

-- select * from products as p
-- full join 
-- categories as c
-- on p.customer_id = c.customer_id;
--  it does't exist in My SQL but it can work in oracle or ms_sql


/* Join : Join combines the rows between Multi tables
with the help of common column between them
It does not insert the rows it just combines only.
There are 7 Types of Join:
1.Inner join
2.Left join
3.Right join
4.Full Join
5.Self Join
6.Natural Join
7.Cross Join

The first 3 are basic joins where the remaining joins
are intermediate or advanced level join.

In the place of inner join i can write normally join
also, because inner join is the by default join in
mysql.

Inner Join: It gives the common areas between the tables.

Left join: It gives the inner join between both the tables
and the left table rows which are unmatched with right table.

Right join: It gives the inner join between both the tables
and the right table rows which are unmatched with left table.

Now if i need to call some particular columns from inner
join then in the place of * i would write the columns
name. But in the common column the system will be in
confused mode that from which TABLE it is to pickup
that column so it will show the ambiguous error.

Then instead of writting c_id we write c.c_id now system
will easily identify


 
/* Full join is not supported by MY_SQL but it
works in other tools like oracle etc.
Full Join: Common area between multi tables and left
table remaining parts unmatched with the right table
part and right table remaining parts unmatched with
the left table part .

formula :- l.t + unmatched rows + right table + unmatched rows

*/


/* Self Join: It can be defined as the table performs the join
with itself.

Cross Join : It gives the cartesian product
Ex. In any table if 5 rows are there and in another table 4 rows are
there then the overall result will be of 20 rows.
It does not require the common column thats why we dont use the common
column condition like "on"

Natural Join : It finds the common column between the tables
by itself. If there is a common column then it will provide the inner
join and if its not there then it provides cross join means cartesian
product so it also doesnt require the "on" conditon.
*/

-- SQL Operators
/* In the Join we perform the merge because the multi tables
columns are added up but in sql operators we perform the Append

*/

-- Class 16 

create table a
(Cust_id int primary key , Cust_name varchar(20));


insert into a values
(1,"A"),
(2,"B"),
(3,"C");




create table b
(Cust_id int , Products varchar(20) ,
foreign  key (Cust_id) references a(Cust_id) );

create table b(
Cust_id int , Products varchar(20));

insert into b values 
(1,"Mobile"),
(2,"Laptop"),
(4,"Mobile");

create table c(
Prod_id int , Products varchar(20));

insert into c values
(1,"Mobile"),
(2,"Laptop"),
(3,"Earphones");

select * from a;
select * from b;
select * from c;

select * from a 
inner join 
b;

select * from a 
left join 
b 
on a.Cust_id = b.Cust_id;

select * from a 
right join 
b 
on a.Cust_id = b.Cust_id;


select a.Cust_id,a.Cust_name,b.Products from  a
inner join b
on a.Cust_id = b.Cust_id;

select a.cust_id , a.cust_id , b.products from a
left join b
on a.cust_id = b.cust_id;


select a.cust_id , a.cust_id , b.products from a
right join b
on a.cust_id = b.cust_id;



select a.cust_id , a.cust_name , b.products from a
cross join b
on a.cust_id = b.cust_id;

select a.cust_id , a.cust_name , b.products from a
natural join b;


-- Class 17 


create table a(
Cust_id int , Cust_name varchar(20) );

create table b 
(Order_id int , Cust_id int);


select * from a;
select * from b;

alter table b  modify column order_id int primary key;

desc a;
desc b;


alter table b add constraint Cust_id 
foreign key (Cust_id) references a(Cust_id);

alter table b drop primary key;

alter table b drop foreign key Cust_id;

alter table a drop primary key;


show indexes from b;

drop index Cust_id 
on b;


-- CLASS 18 

/*

My SQL is an RDBMS tool because it satisfies the following conditions :

1. SQL must be used to manage the data 
2. data must be store in tabular format 
3. conqurrancy control (multiple people can work at a same time and there 
   transactions will not interfere)
4. DATABASE integrity  violation (supoose if i put the contraint unique , so before and after the transaction
   it must be unique only ) 
5. it must satisfies the asset properties
6. But by default MYSQL is DBMS also because for DBMS because it satisfies the following conditions 
7. All the conditions of RDBMS and DBMS are same , but changes in two conditions :
		
        1. In RDBMS Sql is used to fetch the data but in DBMS you can use other languages also 
        2. Data is not compulsory in Tabular format 
        3. RDBMS does't mean that their must be a relation between the table 
        4. relation is the feature not the must condition 

*/

-- CLASS 19 

create database rev;

use rev;

create table A(
Cust_id int , Cus_name varchar(20) );

create table B(
Order_id int , Cust_id int);

show 



-- alter table A modify column Cust_id int primary key; 
alter table B modify column order_id int primary key;


alter table B add constraint  foreign key
(Cust_id) references A(Cust_id);


select * from A;
select * from B;

desc A ;
desc B;

alter table B drop primary key;  

alter table B drop foreign key b_ibfk_1 ; 

show indexes from b;

drop index Cust_id on b;


alter table A drop primary key;


create table C(
Cust_id int primary key , Cust_name varchar(20));

create table D (
Order_id int primary key , Cust_id int );

alter table D add foreign key (Cust_id)
references C(Cust_id);


-- Here have not create the constraint name , so that's why we have to change the syntax to drop the foreign key   
alter table D drop foreign key D_ibfk_1;

show create table d;
 

/* 

when i import in mysql that time i can import CSV format 
and SQL formate only 

suppose the file in EXcel form then we have to convert its format into csv

from any tool to mysql we can connect for fetching the data but 
if we want to send the data directly from MySql to the other tool , so it is not possible 
we can do it with the help of ETL Tool 


*/

-- Class 20

create  database Append;

use Append;

create table A
(Cust_id int , Cust_name varchar(20));

create table B (
Cust_id int , Cust_name varchar(20));

insert into A values
(1, "A"),
(2, "B"),
(3, "C");


insert into B values 
(3, "C"),
(4, "D"),
(5, "E");

select * from A ;
select * from B;


-- duplicacy not allowed 
select * from A 
union 
select * from b;

-- it gives all the data
select * from A 
union all
select * from b;

-- it gives unique value 
select * from A
intersect
select * from B;


-- it gives the output for right or left  
select * from A
except
select * from ;


-- SQL Operators

/* In the Join we perform the merge because the multi tables
columns are added up but in sql operators we perform the Append
because under it rows of 1 table is added with the rows of other
table 

4 types of SQLOperators
1. Union
2. Union all
3. Except
4. Intersect

While Performing the most of the join the must condn was there that there
must be a common column between the tables
Similarly for Sql Operators 2 Condn are must:
1. The tables must have the same number of columns
2. The data type of the columns with the other table columns
must be same

select * from employees;

*/

-- Full join

/* now we performing the left join and rightrt because we will 
use them to perform full join the help of union all */

select * from orders;
select * from customers; 


select * from orders as o
left join 
 customers as c
on o.customer_id = c.customer_id
union all
select * from orders as o
right join 
 customers as c
on o.customer_id = c.customer_id;



/*
We used union all in the place of union because if i use union then 
there is a possibility that it will remove the duplicate rows which are 
informative

there is a possibility that it will remove the duplicate rows which are
informative */

/* SQL Operators are of 4 types:
1. Union : It appends the rows between the tables but it doesnt consist
the duplicate.
2. Union all : It also appends the rows between the tables but it
includes duplicate rows also.
3. Intersect : It works like inner join but on the basis of rows
not columns.
4. Except : It gives the uncommon rows between the columns 

 */


create table C 
(Cust_id int, Cust_name varchar(20));

insert into C values 
(1,"A"),
(2,"B"),
(3,"C"),
(4,"D"),
(5,"E");

select * from C;

alter table C add column Cust_performnace Varchar(20);

update C set
Cust_performnace = case
when Cust_id <= 2  then "Good"
when Cust_id between 3 and 4 then "Avg"
when Cust_id between 4 and 5 then "Excellent"
else 
"Nothing"
end;

set sql_safe_update = 0;


-- CLass 21 

/*

RDBMS consists the ACID properties

where A means atomicity which means once the  execution of transaction is
done then if the system fails then either it will be completely passed or
rolled back.

where C means consistency which means the data will remain unchanged untill
we do any change intentionally .

where I means Isolation it means that the one transaction doesnt interfere the
other transaction .
      

where D means Durability under it if once we commit the transaction than even if the
system failure takes place but the transaction process will be completed

but before commit the transaction if the system failure takes place than it will
be rolled back.

*/ 


--  Date and time function 
 
 
 select current_time();
 
 select current_date();
 
 select current_timestamp();
 
 select day("2022-03-04");
 
 select dayname("2021-09-09");
 
 select month("2023-04-05");
 
 select year("2027-09-11");


 create database recall;
 
 use recall;
 
 
 
-- Day 22  Sub Query 

create database Sub_Query;



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
(110, 'Anjali', 65000 , 1);

select * from employees;
select *  from departments;

select max(salary) from employees;

select * from employees
where salary = (select max(salary) from employees); -- Co-related sub-query 


select * from employees
order by salary desc 
limit 1;

select * from employees
order by salary desc 
limit 2;

select * from employees
order by salary desc 
limit 1
offset 1;

select max(salary) from employees
order by salary desc
limit 1
offset 2;



-- Nested sub_Query  
select max(salary) as Highest_salary,
(select max(salary) from employees
where salary < ( select max(salary) from employees ) )
as Second_highest_salary
from employees;


select * from employees 
where salary > 50000 ;


select * from employees 
where salary> 50000  and (select * from employees having employee_id > 105);


-- 

select * from (
select * from employees 
where salary > 50000 ) as A 
where employee_id > 105;


/* 
SUB_query 

A Query under a query is sub query , basically it is 
of three types 

1. CO-related sub_query which comes with where clause 

2. nested Sub_Query or Scaler sub_query :- this is query works at column level  
and the over all sub query which comes under a select statement 

3. Derived or Inline_view Sub_query :- This query is used with from clause 
that's why we can say it is used for calculate table and it gives the temporary table 

*/



-- Class 23 

create database class23;
use class23;

create table A
(Cust_id int ,
Cust_name varchar(20));

insert into A values
(1,"A"),
(2,"B"),
(3,"C"),
(4,"D"),
(5,"E");

create table B
(Order_id int ,
Cust_id int);

insert into b values
(1,"1"),
(2,"1"),
(3,"2"),
(4,"2"),
(5,"3");

select * from A;
select * from B;

alter table A modify column Cust_id int  Primary key;  

alter table B modify column Order_id Int primary key;

alter table B add constraint Cust_id 
foreign key (Cust_id) references A(Cust_id);

desc A;
desc B;

alter table A add column Cust_performance varchar(20);



set sql_safe_updates = 0;

update A set
Cust_performance = case
when Cust_id <= 2  then "Good"
when Cust_id between 3 and 4 then "Avg"
else 
"Execellent"
end;

select * from A;
select * from b;

desc b;
desc a;

alter table b drop  foreign key Cust_id;
alter table A drop primary key;

show indexes from b;

alter table B drop index Cust_id; 


show indexes from A; 

select cust_id , cust_name , case

when cust_id between 1 and 3 then "AVG" 
when Cust_id between 4 and 5 then "Good"
end as Cust_performance

from a;


create index inx_1
on a(cust_id);



-- Class 24 

create database Rank_s;

use Rank_s;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_id, emp_name, department, salary) VALUES
(101, 'Amit', 'HR', 50000),
(102, 'Riya', 'IT', 60000),
(103, 'Sohan', 'IT', 60000),
(104, 'Priya', 'Finance', 75000),
(105, 'Rahul', 'HR', 50000),
(106, 'Neha', 'Finance', 75000),
(107, 'Karan', 'IT', 90000),
(108, 'Simran', 'HR', 50000),
(109, 'Vikas', 'Finance', 90000),
(110, 'Anjali', 'IT', 60000),
(111, 'Rohit', 'HR', 45000),
(112, 'Pooja', 'Finance', 75000),
(113, 'Arjun', 'IT', 90000),
(114, 'Kavya', 'HR', 45000),
(115, 'Manish', 'Finance', 60000); 

select * from employees;

-- Rank  
select * , rank() over(order by salary desc) as ranking
from employees;

--  Dense rank
select * , dense_rank() over( order by salary desc ) as dense_Ranking 
from employees;
   
   
-- Percent _ rank  
select * , percent_rank() over(order by salary desc) as Percent_Rank_
from employees;


-- Row number 
select * , Row_number() over(order by salary desc ) as Row_number_
from employees;

-- ntile
select * , ntile(6) over(order by salary desc ) as ntile_func
from employees;  


-- partision by 
select * , rank() over(partition by department order by salary desc) as Ranking
from employees;


-- Dense rank with partision
select * , dense_rank() over(partition by department order by salary desc) as Dense_ranking
from employees;  


-- WINDOWS AGGREGATES FUNCTIONS 

select * , sum(salary) over(order by salary desc )  as Rolling_sum
from employees;

select * , avg(salary) over(order by salary desc ) as Rolling_avg
from employees;


select * , max(salary) over(order by salary desc ) Rolling_max
from employees;

select * , min(salary) over(order by salary desc ) Rolling_max
from employees;


select * , count(salary) over(order by salary desc ) Rolling_max
from employees;


-- Value function

select * , first_value(salary) over(order by salary desc) First_value_func
from employees; 

select * , first_value(salary) over(partition by department order by salary desc) First_value_func
from employees; 

select * , last_value(salary) over(partition by department order by salary desc) Last_value_func
from employees;

select * , lead(salary) over(partition by  department order by salary desc) Lead_value_func
from employees;

select * , lag(salary) over(partition by  department order by salary desc) Lead_value_func
from employees;

/*

Window function takes n number of input rows and provides n number of output rows. 
The input rows and output rows numbers are always equal.

It works at row level and provides the output for each row. 
So, we can say the window is created for each row. 
In the query, if the OVER() clause is given, then we decide that it is a window function.

Window Functions are categorised into 3 types:
1. Rank Fn
2. Aggregate Window Fn
3. Value Fn

The Rank Fn in the condition of tie on the column skips the coming rows.
Where the Dense_Rank Fn does not skip the coming rows.
While the Row_Number always provides the unique sequential order.

And NTILE(x) divides the data into x groups.

Percent_Rank Fn provides the output between 0 & 1.
Basically, Percent Rank uses the formula:
= (rank - 1) / (No of Rows - 1)
It works for Normal Distribution data.

-- In the Value Fn
The LEAD function gives the next values, whereas the LAG function
gives the previous value.

The FIRST_VALUE gives the first value of the column,
whereas the LAST_VALUE provides the last value of the data
based on partition.

All aggregate functions work on a row-level basis.
If we perform the MIN function, it does not find the minimum
at the column level; it processes row by row.

OVER() : It is an identity of the window function.
ORDER BY : Defines the column on which the function operates.
PARTITION BY : It is optional, but if we need grouping
in window functions, then we use it.

*/

--  Class 24 -- views

select * from employees;

select * from employees 
where salary > 50000;

show databases;

create view First_view
as 
select * from employees
where salary > 50000; 

select * from first_view
where department = "It"
having salary > 75000;

/* A view is a virtual table create from a sql query.

It does not store data  Physically
it stores only the sql query defination
when you select from a views,it fetches data from table
original table.
           It is an user defined object or database
           objects. It is database level objects.
A view is a virtual table creatde from one or more tables."

database object or user defined : - this both are same , this is created by the user
to improve the working of database or SQL operations , where exmaple :- index, views, procedure , triggers , functions .....

some database object are table level and some are database level
whereas the system define object are those which created by the system to improve its working
and to help in SQL operations 
example :- when we click show databases that time sql sourse some default databases 
eg :- shakeela, sys , performance information etc 
this databases are created to improve the internal operations or to help in SQL operations.


important points
1. View does not store data
2. View always shows uodates data from base table
3. Used  fro securituy (hide some column)
4. Used to simplify complex queries
5. A view is used to store reusable select queries

Types of views:
 1) Simple view
 Created from one table
 no group by, no function
 
 2) Complex view
 Created from multiple table can use
 joins,group by, function 
 
 Difference between table and view :
 "table stores data physically,
 While view stores only the query and shows
 data virtually."
 
 
 */
 
-- Class 25 Normalisation

/*

Normalisation :- it is used for the  design process , its not a feature of SQL .

we have to normalise the database manually .
SQL system does't automatically  normalise the data.
we do the normalisation to reduce redundancy , improve data integrity , avoid anomalies (insert , update , delete)


normalisation = breaking one big messy table into small related tables using keys. 


LIST OF NF (Normal Form )

1) 1NF (Atomic values )
2) 2NF ( no partial dependency )
3) 3NF ( no transitive dependency )
4) BCNF ( boyce codd Normal Form ) , Stronger version of 3NF
5) 4NF 
6) 5NF 
7) 6NF


1NF :- each cell should consist a single value and the data 
should not consist the repeated rows , each row must be unique.
here single value means atomic values .

2NF (No partial dependency) :- a non key attribute depends on only part of a composite primary key ,
not the whole key , it is partial dependency which should not exist . 

example : -  | Student_id | Course_id   |  Stud_name  |  Course_name |      

---this table does't satisfy 2NF , beacause completly depends on Student_id and the couse name depends on
course_id , but here we use composite primary key which is a combination of C_Id ad S_id ,
so partial dependency is there ---

example :-  | S_id | Course_id| Marks|  

-- it satisfy the 2NF condition, here composite key is build by using S_id and C_id and 
the non-key column depends both the columns  , so the 2NF conditions is satisfies --


Suppose if we use only primary key not a Composite primary key then by default 2NF is satisfied


3NF :- it is already in 2NF and no transitive dependency exist.

meaning all non-key columns depending only on the primary key  

3NF is about removing indirect dependency .

helps reduce  redundency and maintain data integrity .alter

after 3NF the remaining are used for complex or specialised databases .

after creating the database we can normalise the database later
but it is harder because the data exist

*/

-- Class 26

create database Normalisation; 

create table Students(
student_id int, 
courses varchar(20) ,  
primary key(student_id , courses));

desc students;


insert into students values 
(1, "IT");


alter table students drop primary key;

select * from students;


/* Composite primary key 

In a table the primary key is always single but the foreign key can be multiple 
but in some special cases a single primary  key is not enough to provide the unique row 
identification then we have to create composite primary key 

in the composite key still the primary key is single only but it is the combination 
of more than one column  but 

*/






