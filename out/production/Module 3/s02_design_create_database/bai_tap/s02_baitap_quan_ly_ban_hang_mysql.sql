drop database if exists s02_baitap_quan_ly_ban_hang;

create database s02_baitap_quan_ly_ban_hang;

use s02_baitap_quan_ly_ban_hang;
create table customer (
customer_id int primary key auto_increment,
customer_name varchar(50),
customer_age int default 1 check (customer_age>0)
);
create table `order`(
order_id int primary key auto_increment,
customer_customer_id int,
order_date date,
order_total_price float,
foreign key (customer_customer_id) references customer(customer_id)
);
create table product (
product_id int primary key auto_increment,
product_name varchar (70),
product_price float
);
create table order_detail (
order_id int,
product_id int,
order_quantity int,
primary key(order_id,product_id),
foreign key (order_id) references `order`(order_id),
foreign key (product_id) references product(product_id)
);
