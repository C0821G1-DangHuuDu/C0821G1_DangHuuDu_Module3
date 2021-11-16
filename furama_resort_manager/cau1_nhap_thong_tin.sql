use furama_resort_manager;
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (1,'Giám đốc');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (2,'Quản lý');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (3,'Nhân viên');
insert into trinh_do value (1,'Đại học');
insert into trinh_do value (2,'Cao đẳng');
insert into trinh_do value (3,'Sau Đại học');
insert into bo_phan value (1,'Văn phòng');
insert into bo_phan value (2,'Sales');
insert into nhan_vien value (1,'Tôn Tằng Tôn Nữ Tạ Thị Mộng H','1990/09/19', '205301590',5000000.00,'0905000111','H@gmail.com', 'Quảng Nam',1,3,1);
insert into nhan_vien value (2,'Tống Mộng Mơ K','1993/10/20', '205333555',8000000.00,'0905000222','k@gmail.com', 'Quảng Nam',2,1,1);
insert into nhan_vien value (3,'Tao Là Tao','1995/11/20', '205333666',10000000.00,'0905000333','tao@gmail.com', 'Quảng Nam',3,1,2);
insert into nhan_vien value (4,'Hao Là Hao','1994/11/20', '205333777',11000000.00,'0905000444','hao@gmail.com', 'Quảng Nam',3,2,2);
insert into nhan_vien value (5,'Kiên Là Tao','1998/12/22', '205333888',10000000.00,'0905000555','kien@gmail.com', 'Quảng Nam',3,2,2);
insert into loai_khach value (1,'Việt Nam');
insert into loai_khach value (2,'Quốc tế');
insert into khach_hang value (1,1,'Nguyễn Văn A','1989/09/19',1, '205301590','0905000111','a@gmail.com', 'Quảng Nam');
insert into khach_hang value (2,1,'Nguyễn Thị B','1989/09/19',0, '205111222','0905111222','b@gmail.com', 'Đà Nẵng');
insert into khach_hang value (3,2,'David','1988/01/15',1, '205333111','0905333111','david@gmail.com', 'USA');
insert into khach_hang value (4,2,'Mary','1981/03/17',0, '205222333','0905222333','mary@gmail.com', 'CAN');





-- Task 2:
SELECT *
FROM nhan_vien 
WHERE (ho_va_ten LIKE 't%' or ho_va_ten LIKE 'h%' or ho_va_ten LIKE 'k%') and length(ho_va_ten)<15;






-- SELECT *
-- FROM nhan_vien 
-- WHERE (ho_va_ten LIKE 't%' or ho_va_ten LIKE 'h%' or ho_va_ten LIKE 'k%') and length(ho_va_ten)<15;

-- update nhan_vien set ho_va_ten = 'tao là ai' where ma_nhan_vien = 4;

-- select * from bo_phan;

-- delete from nhan_vien where ma_nhan_vien=5;
