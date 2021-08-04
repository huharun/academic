#builtin function
    great work! u lost that file 


show databases;
use arun;

show tables;

create table employees (Emp_Id int primary key,Emp_name varchar(25),Age int, Gender char(1),Doj date,Dept varchar(20),City varchar(10),Salary float);

describe employees;

insert into employees values
(115, "William", 36, "M", "2016-04-20", "IT", "Chicago",83000),
(116, "John", 32, "M", "2004-08-09", "Marketing", "Miami",67000),
(117, "Bella", 29, "F", "2002-06-11", "Tech", "Detroit", 72000),
(118, "Maya", 25, "F", "2018-10-15", "IT", "Houston",48000),
(119, "Alice", 37, "F", "2019-05-28", "Product", "Seattle", 76000),
(120, "Joseph", 45, "M", "2016-11-23", "Sales", "Chicago" ,115000);

select * from employees;

select distinct city from employees;

select avg(age) from employees;

#each dept

select dept, avg(age)  as average_age from employees group by dept;

#having

select count(Emp_Id),city from employees group by city having count(Emp_Id)>1 c;



#subquery

select * from employees;

select Emp_name,Dept,Salary from employees
where Salary<(select avg(Salary) from employees);

show databases;

create table products
(prod_id int, item varchar(30), sell_price float, product_type varchar(30));

insert into products
values(101, 'Jewellery', 1800, 'Luxury'),
(102, 'T-Shirt', 100, 'Non-Luxury'),
(183, 'Laptop', 1308, 'Luxury'),
(184, 'Table', 400, 'Non-Luxury');


select * from products;


create table orders
(order_id int, product_sold varchar(30), selling_price float);

insert into orders
select prod_id, item,sell_price
from products where prod_id in
(select prod_id from products where sell_price>10000);


select * from orders;

#update
#delete



#triggers

create database triggers;
use triggers;
show tables;


#beforeinsert

create table customer
(cust_id int,age int, name varchar(30));

delimeter //
create trigger age_verify
before insert on customers
for each row
if new.age < 0 then set new.age=0;
end if; //


#after insert

#before delete
#afterdelete


use classicmodels;

select * from products;

select * from orderdetails;

select productcode,productname,msrp from products
where productcode in (select productcode from orderdetails
where priceeach < 100);

#storedprocedure
call updte(i,v)

