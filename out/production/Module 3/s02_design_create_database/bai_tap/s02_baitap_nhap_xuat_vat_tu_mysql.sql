drop database if exists s02_baitap_xuat_nhap_hang;

create database s02_baitap_xuat_nhap_hang;

use s02_baitap_xuat_nhap_hang;
create table phieu_xuat (
so_phieu_xuat int primary key auto_increment,
ngay_xuat date
);
create table vat_tu (
ma_vat_tu int primary key auto_increment,
ten_vat_tu varchar(50)
);
create table chi_tiet_phieu_xuat (
phieu_xuat_so_phieu_xuat int,
vat_tu_ma_vat_tu int,
don_gia_xuat float not null,
so_luong_xuat int not null,
primary key (phieu_xuat_so_phieu_xuat,vat_tu_ma_vat_tu),
foreign key (phieu_xuat_so_phieu_xuat) references phieu_xuat(so_phieu_xuat),
foreign key (vat_tu_ma_vat_tu) references vat_tu(ma_vat_tu)
);
create table phieu_nhap (
so_phieu_nhap int primary key auto_increment,
ngay_nhap date
);
create table chi_tiet_phieu_nhap (
phieu_nhap_so_phieu_nhap int,
vat_tu_ma_vat_tu int,
don_gia_nhap float not null,
so_luong_nhap int not null,
primary key (phieu_nhap_so_phieu_nhap,vat_tu_ma_vat_tu),
foreign key (phieu_nhap_so_phieu_nhap) references phieu_nhap(so_phieu_nhap),
foreign key (vat_tu_ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table nha_cung_cap (
ma_ncc int primary key auto_increment,
ten_ncc varchar(255),
dia_chi varchar(255),
sdt_id_sdt int

);
create table so_dien_thoai_ncc(
id_sdt int primary key auto_increment,
sdt_ncc varchar(20),
ncc_ma_ncc int,
foreign key (ncc_ma_ncc) references nha_cung_cap(ma_ncc)
);
create table don_dat_hang (
so_don_dat_hang int primary key auto_increment,
ngay_don_dat_hang date,
ncc_ma_ncc int,
foreign key (ncc_ma_ncc) references nha_cung_cap(ma_ncc)
);
create table chi_tiet_don_dat_hang (
don_dat_hang_so_don_dat_hang int,
vat_tu_ma_vat_tu int,
don_gia_nhap float not null,
so_luong_nhap int not null,
primary key (don_dat_hang_so_don_dat_hang,vat_tu_ma_vat_tu),
foreign key (don_dat_hang_so_don_dat_hang) references don_dat_hang(so_don_dat_hang),
foreign key (vat_tu_ma_vat_tu) references vat_tu(ma_vat_tu)
);
