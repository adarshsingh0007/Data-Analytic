create database PW_Sept;

use PW_Sept; -- to enter database

show tables;

create table employees
(ID int, salary int, dept varchar(100));

insert into employees values(1,50000,"HR");
insert into employees values(2,70000,"Sales");
insert into employees values(3,50000,"Analytics");

insert into employees values(4,40000,"Marketing");
insert into employees values(5,60000,"HR");
insert into employees values(6,80000,"Analytics");



-- Structured query language 
select * from employees;
select id from employees;
select dept from employees;

# show distinct departments in the data
select distinct dept from employees;

# Show data only for analytics dept
select * from employees
where dept = "Analytics";

# Show data only for employees with salary
# more than 50000
select * from employees 
where salary > 50000;

# Show data for analytics employees with 
# salary more than 50000

select id,dept,salary from employees
where salary > 50000 and dept="Analytics";

select id,dept,salary from employees
where dept="data analysis";

# Show data for employees other than analytics 
select id,dept,salary from employees
where dept!="Analytics";

# Show data for employees in HR, sales 
Select * from employees
where dept ="HR" or dept ="Sales";

Select * from employees
where dept in ("HR","Sales");

insert into employees values
(7,10000,"Marketing"),
(8,12000,"Sales");

select * from employees;

-- manipulate data

