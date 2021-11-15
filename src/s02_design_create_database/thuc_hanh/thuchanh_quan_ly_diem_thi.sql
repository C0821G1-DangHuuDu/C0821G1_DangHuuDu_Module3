drop database if exists s02_thuchanh_quan_ly_diem_thi;

create database s02_thuchanh_quan_ly_diem_thi;

use s02_thuchanh_quan_ly_diem_thi;

create table hoc_sinh (
ma_hoc_sinh varchar(20) primary key,
ten_hoc_sinh varchar(50),
ngay_sinh date,
lop varchar(20),
gt varchar(20)
);
create table giao_vien(
ma_giao_vien varchar(20) primary key not null,
ten_giao_vien varchar(50),
sdt varchar(10)
);
create table mon_hoc(
ma_mon_hoc varchar(20) primary key not null,
ten_mon_hoc varchar(50)
);
create table bang_diem(
hoc_sinh_ma_hoc_sinh varchar(20),
mon_hoc_ma_mon_hoc varchar(20),
diem_thi int,
ngay_thi date,
primary key (hoc_sinh_ma_hoc_sinh,mon_hoc_ma_mon_hoc),
foreign key (hoc_sinh_ma_hoc_sinh) references hoc_sinh(ma_hoc_sinh),
foreign key (mon_hoc_ma_mon_hoc) references mon_hoc(ma_mon_hoc)
);
alter table mon_hoc
add giao_vien_ma_giao_vien varchar(20);
alter table mon_hoc
add foreign key (giao_vien_ma_giao_vien) references giao_vien(ma_giao_vien);




