-- Class 23
create database Practice;
use practice;

create table A(cust_id int , cust_name varchar(30));
create table B(order_id int , cust_id int);

insert into A values(1,"A") , (2,"B") , (3,"C") , (4,"D") , (5,"D");
insert into B values (1,1),(2,1),(3,2),(4,2),(5,3);

select * from A;
select * from B;

Alter table A modify column cust_id int primary key ;
alter table B modify column order_id int primary key;

alter table B add constraint
cust_id foreign key(cust_id) references a(cust_id) ;

alter table A add column performance varchar(30);


update A set performance = case
when cust_id <= 2  then "good"
when cust_id < 5 and cust_id >= 3 then "avg"
else 
"excellent"
end;

set sql_safe_updates = 0;

alter table B drop foreign key cust_id;
alter table A drop primary key;

desc a;
desc b;

show indexes from B;
alter table B drop index cust_id;

select cust_id , cust_name , case
 when cust_id between 1 and 3 then "good"
 when cust_id between 4 and 5 then "very good"
 end as perform from A;


show indexes from A;

create index inde_1 
on a(cust_name);



use helo;

SELECT * FROM employee;

select job_title , sum(salary) from employee
group by job_title; 

select job_title , sum(salary) as total from employee
group by job_title 
having total > 50000 
order by total desc ; 

-- Class 24

select * from employees;

select  * , rank() over(order by salary desc) as Ranking
from employees;

select * , dense_rank() over(order by salary desc) as denRanks
from employees;

select * , percent_rank() over(order by salary desc) as percent_ranking
from employees;

select * , row_number() over(order by salary desc) as row_identity
from employees;

select * , ntile(3) over(order by salary desc) as nti
from employees;

select * , rank() over(partition by department order by salary desc) as ranking
from employees;

select * , dense_rank() over(partition by department order by salary desc) as ranking
from employees;

-- Windows Aggregate Function
select * , sum(salary) over(order by salary desc) as Rolling_sum
from employees;

select * , avg(salary) over(order by salary desc) as rolling_avg
from employees;

select * , max(salary) over(order by salary desc) as rolling_max
from employees;

select * , min(salary) over(order by salary desc) as rolling_min
from employees;

select * , count(salary)  over(order by salary desc) as rolling_count
from employees;

--  Windows Value Function
select * , first_value(salary) over( partition by department order by salary desc) as value_fun
from employees;

select * , last_value(salary) over( partition by department order by salary desc) as value_fun
from employees;

select * , last_value(salary) over( partition by department ) as value_fun
from employees;


select * , lead(salary) over( partition by department order by salary desc) as value_fun
from employees;

select * , lead(salary) over( order by salary desc) as value_fun
from employees;

select * , lag(salary) over( partition by department order by salary desc) as value_fun
from employees;






