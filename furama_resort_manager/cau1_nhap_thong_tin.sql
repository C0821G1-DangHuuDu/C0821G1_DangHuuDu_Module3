use furama_resort_manager;
-- Nhập dữ liệu vào bảng vị trí: 
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (1,'Giám đốc');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (2,'Quản lý');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (3,'Giám sát');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (4,'Chuyên viên');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (5,'Phục vụ');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (6,'Lễ tân');

-- Nhập dữ liệu vào bảng trình độ: 
insert into trinh_do value (1,'Đại học');
insert into trinh_do value (2,'Cao đẳng');
insert into trinh_do value (3,'Sau Đại học');
insert into trinh_do value (4,'Trung cấp');

-- select*
-- from trinh_do

-- Nhập dữ liệu vào bảng bộ phận: 
insert into bo_phan value (1,'Hành Chính');
insert into bo_phan value (2,'Sale – Marketing');
insert into bo_phan value (3,'Phục vụ');
insert into bo_phan value (4,'Quản lý');

-- update bo_phan set ten_bo_phan = 'Sale – Marketing' where ma_bo_phan = 2;

-- Nhập dữ liệu vào bảng nhân viên:
insert into nhan_vien value (1,'Tôn Tằng Tôn Nữ Tạ Thị Mộng H','1990/09/19', '205301590',5000000.00,'0905000111','H@gmail.com', 'Quảng Nam',1,3,1);
insert into nhan_vien value (2,'Tống Mộng Mơ K','1993/10/20', '205333555',8000000.00,'0905000222','k@gmail.com', 'Quảng Nam',2,1,1);
insert into nhan_vien value (3,'Tao Là Tao','1995/11/20', '205333666',10000000.00,'0905000333','tao@gmail.com', 'Quảng Nam',3,1,2);
insert into nhan_vien value (4,'Hao Là Hao','1994/11/20', '205333777',11000000.00,'0905000444','hao@gmail.com', 'Quảng Nam',3,2,2);
insert into nhan_vien value (5,'Kiên Là Tao','1998/12/22', '205333888',10000000.00,'0905000555','kien@gmail.com', 'Quảng Nam',3,2,2);

-- Nhập dữ liệu vào bảng loại khách:
insert into loai_khach value (1,'Diamond');
insert into loai_khach value (2,'Platinium,');
insert into loai_khach value (3,'Gold,');
insert into loai_khach value (4,'Silver,');
insert into loai_khach value (5,'Member,');

 -- update loai_khach set ten_loai_khach = 'Platinium,' where ma_loai_khach = 2;
 
-- Nhập dữ liệu vào bảng khách hàng:
insert into khach_hang value (1,1,'Nguyễn Văn A','1989/09/19',1, '205301590','0905000111','a@gmail.com', 'Quảng Nam');
insert into khach_hang value (2,1,'Nguyễn Thị B','1989/09/19',0, '205111222','0905111222','b@gmail.com', 'Đà Nẵng');
insert into khach_hang value (3,2,'David','1988/01/15',1, '205333111','0905333111','david@gmail.com', 'USA');
insert into khach_hang value (4,2,'Mary','1981/03/17',0, '205222333','0905222333','mary@gmail.com', 'CAN');
insert into khach_hang value (5,2,'Mary','1985/02/19',0, '205222444','0905222333','mary1@gmail.com', 'ENG');
insert into khach_hang value (6,2,'David','1988/01/15',1, '205333111','0905333111','david@gmail.com', 'USA');

-- Nhập dữ liệu vào bảng kiểu thuê:
insert into kieu_thue value (1,'theo giờ',100);
insert into kieu_thue value (2,'theo ngày',90);
insert into kieu_thue value (3,'theo tháng',80);
insert into kieu_thue value (4,'theo năm',50);

-- Nhập dữ liệu vào bảng loại dịch vụ:
insert into loai_dich_vu value (1,'Villa');
insert into loai_dich_vu value (2,'House');
insert into loai_dich_vu value (3,'Room');

-- Nhập dữ liệu vào bảng dịch vụ:
-- dich_vu(ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, 
--          mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang)
insert into dich_vu value (1,'Villa 2 tầng', 150, 500, 10, 3, 1, '5 sao','Có hồ bơi', 30,2);
insert into dich_vu value(2,"villa 1 tầng",100,300,7,2,1,"4 sao","không",10,1);
insert into dich_vu value (3,'House 1 tầng', 80, 200, 5, 2, 2, '3 sao','Có bếp',null,1);
insert into dich_vu value(4,"house1",40,15.00,4,1,2,"3 sao","không",null,3);
insert into dich_vu value(5,"room1",20,15.00,2,3,3,null,null,null,null);
insert into dich_vu value (6,'Room 2 giường', 50, 100, 3, 1, 3, null,null,null,null);

-- Nhập dữ liệu vào bảng hợp đồng:
insert into hop_dong value (1,'2020/01/15 14:00:00','2020/02/15 12:00:00', 250, 500, 3, 1, 1);
insert into hop_dong value (2,'2019/05/20 14:00:00','2020/05/21 12:00:00', 150, 300, 2, 3, 2);
insert into hop_dong value (3,'2018/07/17 14:00:00','2018/07/18 12:00:00', 100, 200, 3, 2, 3);
insert into hop_dong value (4,"2020/04/03 14:00:00","2020/04/04 12:00:00",20,15.00,4,2,4);
insert into hop_dong value (5,"2020/07/20 14:00:00","2020/07/20 22:00:00",15,15.00,4,1,5);
insert into hop_dong value (6,"2020/05/20 14:00:00","2020/06/20 12:00:00",20,100,5,4,6);


-- Task 2:
SELECT *
FROM nhan_vien 
WHERE (ho_va_ten LIKE 't%' or ho_va_ten LIKE 'h%' or ho_va_ten LIKE 'k%') and length(ho_va_ten)<15;

-- Task 3:
select *
from khach_hang
where (year(curdate())-year(ngay_sinh)) between 18 and 50 and (dia_chi='Đà Nẵng' or dia_chi='Quảng Trị');

-- Task 4:
select kh.ma_khach_hang,kh.ho_ten,lk.ten_loai_khach, count(hd.ma_hop_dong) as 'Số lần đặt phòng'
from khach_hang kh
inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
inner join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
where lk.ten_loai_khach = 'Diamond'
group by kh.ma_khach_hang
order by 'Số lần đặt phòng';

-- Task 5:
select kh.ma_khach_hang,kh.ho_ten,lk.ten_loai_khach, hd.ma_hop_dong,dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,hd.tong_tien
from khach_hang kh
left join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
left join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu;

-- Task 6:
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dịch_vu,hd.ngay_lam_hop_dong
from hop_dong hd
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where not exists (select * 
from hop_dong 
where year(hd.ngay_lam_hop_dong) between 2019 and year(curdate()));


-- Task 7:
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dịch_vu,hd.ngay_lam_hop_dong
from hop_dong hd
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where not exists (select * 
from hop_dong 
where year(hd.ngay_lam_hop_dong) between 2019 and year(curdate()));

-- Task 8:
-- Cách 1: 
select distinct ho_ten
from khach_hang;

-- Task 9:


 

-- SELECT *
-- FROM nhan_vien 
-- WHERE (ho_va_ten LIKE 't%' or ho_va_ten LIKE 'h%' or ho_va_ten LIKE 'k%') and length(ho_va_ten)<15;

-- update nhan_vien set ho_va_ten = 'tao là ai' where ma_nhan_vien = 4;

-- select * from bo_phan;

-- delete from nhan_vien where ma_nhan_vien=5;
