use zipbasket

select * from orders;

select distinct order_status from orders;

# Show distinct customers
select distinct customer_id from orders;


# count how many customers are there 
select count(distinct customer_id) from orders;

# count unique customers are there 
select count(distinct customer_id) from orders;


# count how many orders are placed 
select count(order_id) from orders;


# Sort the data by quantity

select * from orders order by quantity asc;
select * from orders order by quantity desc;


# Sort the data by delivery_mins
select * from orders order by delivery_mins desc;

# show order with highest quantity
select * from orders order by quantity desc limit 1;

# limit to show limited data
select * from orders order by quantity desc limit 10;

# limit to show limited data
select * from orders order by quantity desc limit 10;


-- Use Cases for Combining
-- DISTINCT, ORDER BY, and LIMIT:

select distinct customer_id from orders;

-- fetching customer_id from orders
select order_id from orders;

-- show 2 customers who placed the most recent orders

select customer_id from orders order by order_date desc limit 2;

-- show total quantity ordered
select sum(quantity) from orders;

-- how many orders are delivered
select count(order_id) from orders where 
order_status='Delivered';

-- Order by on 2 columns
-- order by quantity and then by delivery_mins 
select * from orders order by quantity asc,delivery_mins desc;

--  show orders placed after 2026-02-18
select * from orders where order_date > '2026-02-18';

--  show orders where quantity is more than 2
select * from orders where 
quantity > 2 and order_date > '2026-02-18';

--  how many orders are placed after 2026-02-18
select count(order_id) from orders where order_date > '2026-02-18';

select count(*) from orders where order_date > '2026-02-18';


CREATE TABLE customers (
  customer_id   INT PRIMARY KEY,
  customer_name VARCHAR(50) NOT NULL,
  city          VARCHAR(30) NOT NULL,
  signup_date   DATE        NOT NULL,
  is_blocked    BOOLEAN     DEFAULT FALSE
);

INSERT INTO customers VALUES
(1 ,'Aarav Mehta' ,'Bengaluru','2025-12-20',FALSE),
(2 ,'Diya Nair'   ,'Bengaluru','2026-01-02',FALSE),
(3 ,'Rahul Sharma','Mumbai'   ,'2026-01-05',FALSE),
(4 ,'Sneha Iyer'  ,'Mumbai'   ,'2026-01-10',FALSE),
(5 ,'Rahul Sharma','Delhi'    ,'2026-01-12',FALSE),
(6 ,'Kabir Singh' ,'Delhi'    ,'2026-01-15',TRUE ),
(7 ,'Ananya Das'  ,'Bengaluru','2026-02-01',FALSE),
(8 ,'Vikram Rao'  ,'Mumbai'   ,'2026-02-10',FALSE),
(9 ,'Meera Joshi' ,'Delhi'    ,'2026-03-01',FALSE),
(10,'Ishaan Gupta','Bengaluru','2026-03-05',FALSE);

select * from customers;

# How many customers are there
select count(customer_id) from customers;

# How many customers are from bangalore 
select count(customer_id) from customers
where city = 'Bengaluru';

# How many customers are from bangalore or bombay

select count(customer_id) from customers
where city = 'Bengaluru' or city = "Mumbai";

select count(customer_id) from customers
where city in ('Bengaluru', "Mumbai");

Select count(*) from customers where city = 'Mumbai';

select * from customers;


select count(customer_id) from customers
where city = 'bengaluru' or city = 'mumbai'; 

show tables;

drop database db;

