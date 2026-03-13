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

My sql is an open source app because we can freely download it in the system */



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

-- Class 5th

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
 
 
 -- Day 7 
 create database B;
 use B;
 create table C(customer_id int , customer_name varchar(20));
 insert into C values
 (1,"AA"),
 (2,"BB");
 
 select * from C;
 
 
 -- is diye hue table mei ek naya column add krna hai 
 -- now insert the new column under this table 
 
 alter table C add column customer_performance varchar(20);

-- now chng the new column datatype 

alter table C modify column customer_performance int;

-- drop the existing column from the table

alter table C drop column customer_performance;
desc C;

-- renaming the table name 
rename table C to B ;
rename table B to C ;


-- we want where customer id=1 make customer name = dd
update C set customer_name ="DD"
where customer_id = 1;

-- when it asks for safe update mode so run this query 
set sql_safe_updates = 0;

-- now rename the column name
alter table C rename Column customer_id to cus_id;

/* - > delete is used to remove particular row from the table 
 - > where truncate is used to erase the complete data
 - >drop is used to removes table and database; */
 
 
 -- remove the row where id=1
delete from C 
where cus_id=1;

-- now remove the complete data from table means complete rows
truncate C ;

-- now lets remove the whole/entire table 
drop table C ;

-- where clause is used for the filter process 
-- order by clause is used for sorting the data
-- limit clause is used to see the top or bottom n number of rows

/* underSQL the commands are categorised into 5 types One in DDL (Data Defination Language)
which works on the structure of the table or database It contains the commands like 
1. drop 
2. rename 
3. create 
4. alter 
5. truncate

shortcut to remember these commands under SQL is Dr Cat */

/* Real World example of SQL is E-commerce websites example amazon 
suppose in amazon if i search for LED then at the backend the amazon software 
will create the SQL query like 

select LED from table */



-- Task of the day 
create database B;
use B;

create table C(cus_id int , cus_name varchar(20));
alter table C add column Amount int; 
alter table C modify  column Amount varchar(20); 
alter table C drop column Amount;

insert into C values 
(1,"AA"),
(2,"BB");

update C set cus_name = "DD"
where cus_name="BB";

select * from C;




-- Day 8
CREATE DATABASE C;
USE C;

CREATE TABLE D (cus_id int , cus_name varchar(20));

INSERT INTO D VALUES 
(1,"AA"),
(2,"BB");

SELECT * FROM D;

alter table D add column performance varchar(20);

set sql_safe_updates=0;

update D set performance="good"
where cus_id=1;

set autocommit=0;
commit;

update D set performance="verygood"
where cus_id=2;

rollback;  -- control+z

update d set
performance = case
when cus_id=1 then "good"
when cus_id=2 then "very good"
else 
"Nothing"
end;

select * from d;

update d set performance = "good";


-- TASK-1 OF THE DAY : 
create database E;
use E;

create table f (cus_id int , cus_name varchar(20));
insert into f values
(1,"AA"),
(2,"BB");

alter table f add column performance varchar(20);
update f set performance = case
when cus_id =1 then "good"
when cus_id =2 then "verygood"
else 
"nothing"
end;

select  * from f;

create table g (cus_id int , cus_name varchar(20));

insert into g values
(1,"AA"),
(2,"BB");

select * from g;

insert into g values
(3,"CC");
rollback;

set autocommit=0;
commit;

insert into g values
(4,"DD");

select * from g;

rollback;

insert into g values
(5,"EE");


-- SAVEPOINT 
savepoint sp1;

insert into g values
(6,"FF"),
(7,"GG");

rollback to sp1;
rollback;

/*
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

 -- class 10
 
 create database A;
 use A;

create table B (cus_id int, cus_name varchar(30));
insert into B values 
(1,"AA"),
(2,"BB");

insert into B values
(1,"CC");


select * from B;

drop table B;


create table B (
cus_id int unique,
cus_name varchar(30) not null);

insert into B values 
(1,"AA"),
(2,"BB");

select * from B;

insert into B values
(1,"CC");


create table C (cus_id int primary key , cus_name varchar(30));
insert into C values 
(1,"AA"),
(2,"BB");

insert into C values 
(1,"CC");

-- TASK
CREATE TABLE customer(cus_id int primary key , cus_name varchar(30) not null);

desc customer;

CREATE TABLE orders
( order_id int primary key ,
 or_name varchar(30) not null ,
 cus_id int , 
foreign key (cus_id) references customer(cus_id));

desc orders; 

CREATE TABLE doc 
(d_id int primary key ,
d_name varchar(30) not null);

desc doc;

CREATE TABLE hospital
(h_id int primary key ,
h_name varchar(30) not null,
d_id int , foreign key (d_id) references doc(d_id));

desc hospital;


CREATE TABLE Students 
( stu_id int primary key,
 stu_name varchar(30) not null ,
 stu_age int check (stu_age > 18));
 
 desc students;

insert into students values
(1,"a",19),
(2,"b",20);

insert into students values
(3,"c",15);

drop table students;

CREATE TABLE students(
stu_id int primary key ,
stu_name varchar(30) not null,
stu_age int default 20);

desc students;

insert into students values
(1,"a",18),
(2,"b",21);

insert into students (stu_id,stu_name) values
(3,"c");

select * from students;

truncate students;


-- class 11
-- SCALER FUNCTIONS

/* Constraints: It is used to restrict the data that what data should be allowed into the table .
Actually we can conclude that it acts as a filter or guard.
There are 6 types of Constraints:
1.Unique
2.Not Null
3.Primary Key
4.Foreign Key
5.check
6.Default
*/

SELECT * FROM employees;

-- STRING FUCNTIONS
select first_name from employees ;

select upper(first_name) from employees;
select lower(first_name) from employees;

-- trim removes the unnecessary spacing
select trim(first_name) from employees;

-- alias is used to rename the column header but it is temporary.
select first_name as FIRST_NAME 
from employees;

select first_name , length(first_name)
from employees;

select first_name , last_name , concat(first_name ," ", last_name) as NAME
from employees;

select department , replace(department,"IT","Information Technology") as Complete_name
from employees;

select first_name from employees;

select first_name , mid(first_name , 3,2)
from employees;

select first_name , substring(first_name , 1,3)
from employees;

select first_name , substr(first_name ,1,3)
from employees;


-- AGREGATE FUNCTIONS

select count(emp_id) from employees;

select count(first_name) from employees;

select count( distinct first_name) from employees;

select max(salary) from employees;

select min(salary) from employees;


select avg(salary)  from employees;

select sum(salary)  from employees;

select salary , sqrt(salary)  from employees;

select distinct(department)  from employees;

select department , sum(salary) as total from employees
group by department 
having total > 100000 ;

-- ARITHMETIC FUNCTIONS
select experience_years , power(experience_years,2) from employees;

select salary , truncate(salary,0) from employees;

select salary , truncate(salary,1) from employees;

select salary , round(salary,0)  from employees;

select salary , floor(salary)  from employees;

select salary , ceil(salary)  from employees;

/* Scalar Functions (row-wise processing (independent))
Scalar functions are classified into airthmetic , text , data & time , conversion
and NULL-HANDLING functions */



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


-- class 12
-- INDEX
SELECT * FROM employees;

show indexes from employees;

create index idx_1 
on employees(age); 

create index idx_2 
on employees(city);

drop index idx_2 on employees;

create index idx_3 
on employees(salary);

drop index idx_3 on employees;

/* System created indexes like primary key and
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
index also.

So it slows down insert, update and delete
operations.

2. Use extra storage space
3. Not useful for small tables database can
quickly scan without indexes.
4. Too many indexes reduce overall performance.

Indexes improve SELECT performance but can slow down
INSERT, UPDATE, and DELETE operations because the
indexes also need to be maintained. */



/* When Index is Preferred:
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


-- Composite Index 
create index idx_4 
on employees(city,department,age);

drop index idx_4
on employees;

create table Customer 
(cus_id int primary key , cus_name varchar(30));

show indexes from Customer;

alter table Customer modify 
column cus_id int;

desc Customers;


-- class 14
create table A(cus_id int primary key , cus_name varchar(20) not null);
insert into A values
(1,"A");

desc A;

show indexes from A;

alter table A 
drop primary key;



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


-- JOINS
SHOW TABLES;
select * from categories;
select * from customers;
select * from order_items;
select * from orders;
select * from products;


-- INNER JOIN
SELECT * FROM customers as c
inner join orders as o on
c.customer_id = o.customer_id;



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

create database Joins;
use Joins;

create table A(cust_id int , cust_name varchar(30));
insert into A values(1,"A"),(2,"B"),(3,"C");

create table B (cust_id int , Products varchar(30));
insert into B values(1,"Mobile"),(2,"Laptop"),(4,"Mobile");
drop table A;

create table C(prod_id int , product_name varchar(30));
insert into C values(1,"Mobile"),(2,"Laptop"),(3,"Earphone");

select * from A inner join b;


select * from A right join 
b on a.cust_id = b.cust_id;

select * from A right join b 
on a.cust_id = b.cust_id;

select A.cust_id , cust_name , products from
A inner join B on
a.cust_id = b.cust_id;

select * from b;

select a.cust_id , cust_name , products from A right join 
b on a.cust_id = b.cust_id;


select a.cust_id , cust_name , products from A left join
b on a.cust_id = b.cust_id;

select a.cust_id , cust_name , products from A natural join 
B ;

select a.cust_id , cust_name , products from A cross join 
B on a.cust_id = b.cust_id;


-- class 17

use Joins;
create table A (cust_id int , cust_name varchar(30));
create table b(order_id int, cust_id int);

alter table a modify 
column cust_id int primary key;

alter table b modify 
column order_id int primary key;

alter table b add constraint cust_id
foreign key (cust_id) references a(cust_id);

alter table b drop primary key;

alter table b drop foreign key cust_id;

alter table a drop primary key;

desc b;

show indexes from b;

drop index cust_id on b;

