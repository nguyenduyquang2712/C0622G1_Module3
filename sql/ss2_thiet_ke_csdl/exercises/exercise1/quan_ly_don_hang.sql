drop database if exists quan_ly_don_hang ;
create database quan_ly_don_hang;
use quan_ly_don_hang;

create table phieu_xuat(
so_px int primary key auto_increment not null,
ngay_xuat datetime
);

create table vat_tu(
ma_vat_tu int primary key auto_increment not null,
ten_vat_tu varchar(50)
);

create table phieu_xuat_vat_tu (
dg_xuat double,
sl_xuat int,
so_px int,
ma_vat_tu int,	
primary key(so_px,ma_vat_tu),
foreign key(so_px) references phieu_xuat(so_px),
foreign key(ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table phieu_nhap(
so_pn int primary key auto_increment not null,
ngay_nhap datetime
);

create table phieu_nhap_vat_tu (
dg_nhap double,
sl_nhap int,
so_pn int,
ma_vat_tu int,	
primary key(so_pn,ma_vat_tu),
foreign key(so_pn) references phieu_nhap(so_pn),
foreign key(ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table nha_cung_cap(
ma_nha_cung_cap int primary key auto_increment not null,
ten_nha_cung_cap varchar(50),
dia_chi varchar(50)
);

create table don_dat_hang(
so_dh int primary key auto_increment not null,
ngay_dh datetime,
ma_nha_cung_cap int,
foreign key(ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);

create table so_dien_thoai (
id_sdt INT PRIMARY KEY,
so_dien_thoai varchar(50),
ma_nha_cung_cap int,
foreign key(ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);

create table don_dat_hang_vat_tu(
ma_vat_tu int,
so_dh int,
primary key(ma_vat_tu,so_dh),
foreign key(ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key(so_dh) references don_dat_hang(so_dh)
);