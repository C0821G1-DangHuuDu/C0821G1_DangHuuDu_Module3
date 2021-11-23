drop database if exists s05_view_index_store_procedure;

create database s05_view_index_store_procedure;

use s05_view_index_store_procedure;

create table products (
id int primary key,
product_code varchar(10),
product_name varchar(50),
product_price double,
product_amount int,
product_description varchar(55),
product_status varchar(55)
);

insert into products value (1,'MT001','HP 3000',15000000,3,'nhập khẩu','đã nhập');
insert into products value (2,'MT002','Lenovo 2000',18000000,2,'nhập khẩu','đã nhập');
insert into products value (3,'MT003','Dell 3500',20000000,5,'nhập khẩu','chưa nhập');

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục):
create unique index product_code_index
on products(product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice):
create unique index product_name_price_index
on products(product_name,product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL thực thi như nào:
EXPLAIN SELECT * FROM products WHERE product_name = 'Dell 3500';

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products:
create view product_view as
select product_code,product_name,product_price,product_status
from products;

-- Tiến hành sửa đổi view:
update product_view set product_price = 12000000 where product_code = 'MT001';

select * from products;

-- Tiến hành xoá view
drop view product_view;
