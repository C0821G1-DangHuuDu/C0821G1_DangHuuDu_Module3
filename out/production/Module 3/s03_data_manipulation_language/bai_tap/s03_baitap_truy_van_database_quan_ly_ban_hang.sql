use s02_baitap_quan_ly_ban_hang;
insert into customer value (1,'Minh Quan',10);
insert into customer value (2,'Ngoc Oanh',20);
insert into customer value (3,'Hong Ha',50);
insert into `order` value (1,1,'2006/03/21',null);
insert into `order` value (2,2,'2006/03/23',null);
insert into `order` value (3,1,'2006/03/16',null);
insert into product value (1,'May Giat',3);
insert into product value (2,'Tu Lanh',5);
insert into product value (3,'Dieu Hoa',7);
insert into product value (4,'Quat',1);
insert into product value (5,'Bep Dien',2);
insert into order_detail value (1,1,3);
insert into order_detail value (1,3,7);
insert into order_detail value (1,4,2);
insert into order_detail value (3,1,8);
insert into order_detail value (2,5,4);
insert into order_detail value (2,3,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order.
select order_id,order_date,order_total_price
from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select c.customer_id,c.customer_name,p.product_name,od.order_quantity
from customer c
inner join `order` o on c.customer_id = o.customer_customer_id
inner join order_detail od on o.order_id = od.order_id
inner join product p on p.product_id = od.product_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
-- Cách 1: 
select c.customer_id,c.customer_name,p.product_name,od.order_quantity
from customer c
left join `order` o on c.customer_id = o.customer_customer_id
left join order_detail od on o.order_id = od.order_id
left join product p on p.product_id = od.product_id
where not exists (select * from `order` where o.order_id = od.order_id);
-- Cách 2:
select c.customer_id,c.customer_name
from customer c
left join `order` o on c.customer_id = o.customer_customer_id
where not exists (select * from `order` where o.customer_customer_id = c.customer_id);

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice)

select o.order_id,o.order_date, sum(od.order_quantity*p.product_price) AS price
from `order` o
inner join order_detail od on o.order_id = od.order_id
inner join product p on p.product_id = od.product_id
group by od.order_id

