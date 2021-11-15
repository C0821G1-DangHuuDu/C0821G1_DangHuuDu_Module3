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






SELECT *
FROM nhan_vien 
WHERE ho_va_ten LIKE 'h%' and length(ho_va_ten)<15;

update nhan_vien set ho_va_ten = 'tao là ai' where ma_nhan_vien = 4;

select * from bo_phan;

delete from nhan_vien where ma_nhan_vien=5;
