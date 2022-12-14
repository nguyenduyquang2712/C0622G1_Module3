DROP DATABASE IF EXISTS furama_resort;
CREATE DATABASE  furama_resort;
USE furama_resort;
CREATE TABLE  vi_tri(
ma_vi_tri INT PRIMARY KEY AUTO_INCREMENT,
ten_vi_tri VARCHAR(45)
);
CREATE TABLE trinh_do(
ma_trinh_do INT PRIMARY KEY AUTO_INCREMENT,
ten_trinh_do VARCHAR(45)
);
CREATE TABLE bo_phan(
ma_bo_phan INT PRIMARY KEY AUTO_INCREMENT,
ten_bo_phan VARCHAR(45)
);
CREATE TABLE nhan_vien(
ma_nhan_vien INT PRIMARY KEY AUTO_INCREMENT,
ho_ten VARCHAR(45),
ngay_sinh DATE,
so_cmnd VARCHAR(45),
luong DOUBLE,
so_dien_thoai VARCHAR(45),
email VARCHAR(45),
dia_chi VARCHAR(45),
ma_vi_tri INT,
FOREIGN KEY (ma_vi_tri)
REFERENCES vi_tri (ma_vi_tri),
ma_trinh_do INT,
FOREIGN KEY (ma_trinh_do)
REFERENCES trinh_do (ma_trinh_do),
ma_bo_phan INT,
FOREIGN KEY (ma_bo_phan)
REFERENCES bo_phan(ma_bo_phan)
);
CREATE TABLE  loai_khach(
ma_loai_khach INT PRIMARY KEY AUTO_INCREMENT,
ten_loai_khach VARCHAR(45)
);
CREATE TABLE  khach_hang(
ma_khach_hang INT PRIMARY KEY AUTO_INCREMENT,
ma_loai_khach INT,
FOREIGN KEY (ma_loai_khach)
REFERENCES loai_khach(ma_loai_khach),
ho_ten VARCHAR(45),
ngay_sinh DATE,
gioi_tinh BIT(1),
so_cmnd VARCHAR(45),
so_dien_thoai VARCHAR(45),
email VARCHAR(45),
dia_chi VARCHAR(45)
);
CREATE TABLE loai_dich_vu(
ma_loai_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
ten_loai_dich_vu VARCHAR(45)
);
CREATE TABLE kieu_thue(
ma_kieu_thue INT PRIMARY KEY AUTO_INCREMENT,
ten_kieu_thue VARCHAR(45)
);
CREATE TABLE dich_vu(
ma_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
ten_dich_vu VARCHAR(45),
dien_tich INT,
chi_phi_thue DOUBLE,
so_nguoi_toi_da INT,
ma_kieu_thue INT,
FOREIGN KEY (ma_kieu_thue) 
REFERENCES kieu_thue(ma_kieu_thue),
ma_loai_dich_vu INT,
FOREIGN KEY (ma_loai_dich_vu)
REFERENCES loai_dich_vu(ma_loai_dich_vu),
tieu_chuan_phong VARCHAR(45),
mo_ta_tien_nghi_khac VARCHAR(45),
dien_tich_ho_boi VARCHAR(45),
so_tang INT,
dich_vu_mien_phi_di_kem TEXT
);
CREATE TABLE  hop_dong(
ma_hop_dong INT PRIMARY KEY AUTO_INCREMENT,
ngay_lam_hop_dong DATETIME,
ngay_ket_thuc DATETIME,
tien_dat_coc DOUBLE,
ma_nhan_vien INT,
FOREIGN KEY (ma_nhan_vien) 
REFERENCES nhan_vien(ma_nhan_vien),
ma_khach_hang INT,
FOREIGN KEY (ma_khach_hang)
REFERENCES khach_hang(ma_khach_hang),
ma_dich_vu INT,
FOREIGN KEY (ma_dich_vu)
REFERENCES dich_vu(ma_dich_vu)
);
 
CREATE TABLE  dich_vu_di_kem(
ma_dich_vu_di_kem INT PRIMARY KEY AUTO_INCREMENT,
ten_dich_vu_di_kem VARCHAR(45),
gia DOUBLE,
don_vi VARCHAR(45),
trang_thai VARCHAR(45)
);
CREATE TABLE  hop_dong_chi_tiet(
ma_hop_dong_chi_tiet INT PRIMARY KEY AUTO_INCREMENT,
ma_hop_dong INT,
FOREIGN KEY (ma_hop_dong)
REFERENCES hop_dong(ma_hop_dong),
ma_dich_vu_di_kem INT,
FOREIGN KEY (ma_dich_vu_di_kem)
REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem),
so_luong INT
);
INSERT INTO vi_tri(ma_vi_tri,ten_vi_tri)
VALUE(1,'Quản lý'),(2,'Nhân viên');
INSERT INTO trinh_do(ma_trinh_do,ten_trinh_do)
VALUE(1,"Trung Cấp"),(2,"Cao Đẳng"),(3,"Đại Học"),(4,"Sau Đại Học");
INSERT INTO bo_phan(ma_bo_phan,ten_bo_phan)
VALUE(1,"Sale-Marketing"),(2,"Hành Chính"),(3,"Phục vụ"),(4,"Quản Lý");
INSERT INTO nhan_vien(ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do,ma_bo_phan) 
VALUES (1, 'Nguyễn Văn An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', 1, 3, 1),
(2, 'Lê Văn Bình', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', 1, 2, 2),
(3, 'Hồ Thị Yến', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', 1, 3, 2),
(4, 'Võ Công Toản', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', 1, 4, 4),
 (5, 'Nguyễn Bỉnh Phát', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', 2, 1, 1),
(6, 'Khúc Nguyễn An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', 2, 2, 3),
(7, 'Nguyễn Hữu Hà', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', 2, 3, 2),
(8, 'Nguyễn Hà Đông', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', 2, 4, 4),
(9, 'Tòng Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', 2, 4, 4),
(10, 'Nguyễn Công Đạo', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', 2, 3, 2);
INSERT INTO loai_khach(ma_loai_khach,ten_loai_khach)
VALUE(1,"Diamond"),(2,"Platinium"),(3,"Gold"),(4,"Silver"),(5,"Member");
INSERT INTO khach_hang(ma_khach_hang,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach) 
VALUES (1, 'Nguyễn Thị Hào','1970-11-07', 0,'643431213','0945423362','thihao07@gmail.com','23 Nguyễn Hoàng, Đà Nẵng',5),
(2, 'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0954333333','xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị',3),
(3, 'Trương Đình Nghệ', '1990-02-27', 1,'488645199','0373213122','nghenhan2702@gmail.com','K323/12 Ông Ích Khiêm, Vinh',1),
(4, 'Dương Văn Quan', '1981-07-08', 1,'543432111','0490039241','duongquan@gmail.com','K453/12 Lê Lợi, Đà Nẵng',1),
(5, 'Hoàng Trần Nhi Nhi','1995-12-09',0,'795453345','0312345678','nhinhi123@gmail.com','224 Lý Thái Tổ, Gia Lai',4),
(6, 'Tôn Nữ Mộc Châu','2005-12-06', 0,'732434215','0988888844','tonnuchau@gmail.com','37 Yên Thế, Đà Nẵng','4'),
(7, 'Nguyễn Mỹ Kim','1984-04-08', 0,'856453123','0912345698','kimcuong84@gmail.com','K123/45 Lê Lợi, Hồ Chí Minh',1),
(8, 'Nguyễn Thị Hào','1999-04-08',0,'965656433','0763212345','haohao99@gmail.com','55 Nguyễn Văn Linh, Kon Tum',3),
(9,'Trần Đại Danh','1994-07-01', 1,'432341235','0643343433','danhhai99@gmail.com','24 Lý Thường Kiệt, Quảng Ngãi',1),
(10, 'Nguyễn Tâm Đắc','1989-07-01', 1,'344343432','0987654321','dactam@gmail.com','22 Ngô Quyền, Đà Nẵng',2);
INSERT INTO kieu_thue(ma_kieu_thue,ten_kieu_thue)
VALUE(1,'year'),(2,'month'),(3,'day'),(4,'hour');
INSERT INTO loai_dich_vu(ma_loai_dich_vu,ten_loai_dich_vu)
VALUE(1,'Villa'),(2,'House'),(3,'Room');
INSERT INTO dich_vu(ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang, dich_vu_mien_phi_di_kem)
 VALUES (1, 'Villa Beach Front', 25000, 1000000, 10, 3, 1, 'vip', 'Có hồ bơi', 500, 4, null),
(2, 'House Princess 01', 14000, 5000000, 7, 2, 2, 'vip', 'Có thêm bếp nướng', null, 3, null),
(3, 'Room Twin 01', 5000, 1000000, 2,4, 3, 'normal', 'Có tivi', null, null, '1 Xe máy, 1 Xe đạp'),
(4, 'Villa No Beach Front', 22000, '9000000', '8', '3', '1', 'normal', 'Có hồ bơi', 300, 3, null),
(5, 'House Princess 02', 10000, '4000000', 5, 3, 2, 'normal', 'Có thêm bếp nướng', null, 2, null),
(6, 'Room Twin 02', 3000, 900000, 2, 4, 3, 'normal', 'Có tivi', null, null, '1 Xe máy');
INSERT INTO dich_vu_di_kem (ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia, don_vi, trang_thai) 
VALUES (1, 'Karaoke', 10000, 'giờ', 'tiện nghi, hiện tại'),
(2, 'Thuê xe máy', 10000, 'chiếc', 'hỏng 1 xe'),
(3, 'Thuê xe đạp', 20000, 'chiếc', 'tốt'),
(4, 'Buffet buổi sáng', 15000, 'suất', 'đầy đủ đồ ăn, tráng miệng'),
(5, 'Buffet buổi trưa', 90000, 'suất', 'đầy đủ đồ ăn, tráng miệng'),
(6, 'Buffet buổi tối', 16000, 'suất', 'đầy đủ đồ ăn, tráng miệng');
INSERT INTO hop_dong(ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu) 
VALUES (1, '2020-12-08', '2020-12-08', 0, 3, 1, 3),
(2, '2020-07-14', '2020-07-21', 200000, 7, 3, 1),
(3, '2021-03-15', '2021-03-17', 50000, 3, 4, 2),
(4, '2021-01-14', '2021-01-18', 100000, 7, 5, 5),
(5, '2021-07-14', '2021-07-15', 0, 7, 2, 6),
(6, '2021-06-01', '2021-06-03', 0, 7, 7, 6),
(7, '2021-09-02', '2021-09-05', 100000, 7, 4, 4),
(8, '2021-06-17', '2021-06-18', 150000, 3, 4, 1),
(9, '2020-11-19', '2020-11-19', 0, 3, 4, 3),
(10, '2021-04-12', '2021-04-14', 0, 10, 3, 5),
(11, '2021-04-25', '2021-04-25', 0, 2, 2, 1),
(12, '2021-05-25', '2021-05-27', 0, 7, 10, 1);
INSERT INTO hop_dong_chi_tiet(ma_hop_dong_chi_tiet,ma_hop_dong,ma_dich_vu_di_kem,so_luong)
VALUE(1,2,4,5),(2,2,5,8),(3,2,6,15),(4,3,1,1),(5,3,2,11),(6,1,3,1),(7,1,2,2),(8,12,2,2);

-- task 2
SELECT * FROM nhan_vien WHERE (ho_ten  regexp '^[HKT]') AND char_length(ho_ten)<=15; 

-- task3
SELECT * FROM khach_hang WHERE (TIMESTAMPDIFF(YEAR, ngay_sinh, CURDATE()) BETWEEN 18 AND 50) AND (dia_chi LIKE '%Đà Nẵng%' OR dia_chi LIKE '%Quảng Trị%');

-- task4
SELECT  khach_hang.ma_khach_hang, khach_hang.ho_ten,COUNT(hop_dong.ma_khach_hang) as so_lan_dat_phong FROM khach_hang 
INNER JOIN hop_dong ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
INNER JOIN loai_khach ON khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
WHERE (loai_khach.ten_loai_khach="Diamond") GROUP BY hop_dong.ma_khach_hang ORDER BY so_lan_dat_phong ;

-- task5

select khach_hang.ma_khach_hang,
	   khach_hang.ho_ten,
       loai_khach.ten_loai_khach,
       hop_dong.ma_hop_dong,
       dich_vu.ten_dich_vu,
       hop_dong.ngay_lam_hop_dong,
       hop_dong.ngay_ket_thuc,
	   (ifnull(dich_vu.chi_phi_thue,0)+SUM(ifnull(hop_dong_chi_tiet.so_luong,0)*ifnull(dich_vu_di_kem.gia,0))) as tong_tien
        from khach_hang 
		left join loai_khach on khach_hang.ma_loai_khach =loai_khach.ma_loai_khach
		left join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
		left join dich_vu on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
		left join hop_dong_chi_tiet on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
		left join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
		group by hop_dong.ma_hop_dong, khach_hang.ma_khach_hang
		order by khach_hang.ma_khach_hang;

-- task6
SELECT dich_vu.ma_dich_vu, dich_vu.ten_dich_vu,dich_vu.dien_tich,dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu 
FROM dich_vu 
INNER JOIN loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
WHERE dich_vu.ma_dich_vu NOT IN (
SELECT hop_dong.ma_dich_vu FROM hop_dong
WHERE hop_dong.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-03-31');

-- task7
SELECT dich_vu.ma_dich_vu, dich_vu.ten_dich_vu,dich_vu.dien_tich,dich_vu.so_nguoi_toi_da, dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu FROM
dich_vu
JOIN loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
WHERE dich_vu.ma_dich_vu IN (
SELECT hop_dong.ma_dich_vu FROM hop_dong
WHERE Year(hop_dong.ngay_lam_hop_dong)=2020) AND dich_vu.ma_dich_vu NOT IN (
SELECT hop_dong.ma_dich_vu FROM hop_dong
WHERE YEAR(hop_dong.ngay_lam_hop_dong) = 2021);

-- task8
SELECT ho_ten FROM khach_hang
GROUP BY ho_ten;

SELECT DISTINCT ho_ten FROM khach_hang;

SELECT ho_ten FROM khach_hang a
UNION
SELECT ho_ten FROM khach_hang b;

-- task9
SELECT month(ngay_lam_hop_dong) as thang, COUNT(ma_hop_dong) FROM hop_dong
WHERE year(ngay_lam_hop_dong) = 2021
GROUP BY thang
ORDER BY thang;

-- task 10
SELECT hop_dong.ma_hop_dong, hop_dong.ngay_lam_hop_dong,hop_dong.ngay_ket_thuc, hop_dong.tien_dat_coc, SUM(ifnull(hop_dong_chi_tiet.so_luong,0))
FROM hop_dong
LEFT JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
GROUP BY hop_dong.ma_hop_dong;

-- task 11
SELECT dich_vu_di_kem.ma_dich_vu_di_kem, dich_vu_di_kem.ten_dich_vu_di_kem FROM dich_vu_di_kem
JOIN hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
JOIN hop_dong ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
JOIN khach_hang ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
JOIN loai_khach ON loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
WHERE loai_khach.ten_loai_khach = "Diamond" AND (khach_hang.dia_chi LIKE "%VINH%" OR khach_hang.dia_chi LIKE "%Quảng Ngãi%"); 

-- task 12
SELECT hop_dong.ma_hop_dong,nhan_vien.ho_ten,khach_hang.ho_ten, khach_hang.so_dien_thoai,dich_vu.ten_dich_vu,SUM(ifnull(hop_dong_chi_tiet.so_luong,0)),hop_dong.tien_dat_coc
FROM hop_dong
JOIN nhan_vien ON hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
JOIN khach_hang ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
JOIN dich_vu ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
LEFT JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
WHERE hop_dong.ma_hop_dong IN (SELECT hop_dong.ma_hop_dong FROM hop_dong
WHERE hop_dong.ngay_lam_hop_dong BETWEEN '2020-10-01' AND '2020-12-31') AND hop_dong.ma_hop_dong NOT IN (
SELECT hop_dong.ma_hop_dong FROM hop_dong
WHERE hop_dong.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-06-31')
GROUP BY hop_dong.ma_hop_dong;

-- task 13
DROP VIEW IF EXISTS demo;
CREATE VIEW demo AS
SELECT dich_vu_di_kem.ma_dich_vu_di_kem as ma_dich_vu_di_kem, dich_vu_di_kem.ten_dich_vu_di_kem as ten_dich_vu_di_kem, SUM(ifnull(hop_dong_chi_tiet.so_luong,0)) as so_luong_dich_vu_di_kem  FROM dich_vu_di_kem 
JOIN hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
GROUP BY hop_dong_chi_tiet.ma_dich_vu_di_kem;
SELECT demo.ma_dich_vu_di_kem,demo.ten_dich_vu_di_kem, demo.so_luong_dich_vu_di_kem  FROM demo
 WHERE demo.so_luong_dich_vu_di_kem = (SELECT MAX(demo.so_luong_dich_vu_di_kem) FROM demo);
 
-- task 14
-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất.
-- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
-- (được tính dựa trên việc count các ma_dich_vu_di_kem).
SELECT hop_dong.ma_hop_dong, loai_dich_vu.ten_loai_dich_vu, dich_vu_di_kem.ten_dich_vu_di_kem, COUNT(hop_dong_chi_tiet.ma_dich_vu_di_kem) as so_lan_su_dung FROM
hop_dong
JOIN dich_vu ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
JOIN loai_dich_vu ON loai_dich_vu.ma_loai_dich_vu = dich_vu.ma_dich_vu
JOIN hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
JOIN dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
GROUP BY hop_dong_chi_tiet.ma_dich_vu_di_kem
HAVING so_lan_su_dung = 1
ORDER BY hop_dong.ma_hop_dong;

-- task 15
-- Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi 
-- mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
SELECT nhan_vien.ma_nhan_vien, nhan_vien.ho_ten, trinh_do.ten_trinh_do, bo_phan.ten_bo_phan, nhan_vien.so_dien_thoai, nhan_vien.dia_chi
FROM nhan_vien
JOIN trinh_do ON trinh_do.ma_trinh_do = nhan_vien.ma_trinh_do
JOIN bo_phan ON bo_phan.ma_bo_phan = nhan_vien.ma_bo_phan
JOIN hop_dong ON hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
WHERE YEAR(hop_dong.ngay_lam_hop_dong) BETWEEN 2020 AND 2021
GROUP BY nhan_vien.ma_nhan_vien
HAVING COUNT(hop_dong.ma_hop_dong)<4
ORDER BY nhan_vien.ma_nhan_vien;

-- task 16
--  16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
-- cach1:
DELETE FROM nhan_vien
WHERE NOT EXISTS(SELECT ma_nhan_vien FROM hop_dong
WHERE ma_nhan_vien = nhan_vien.ma_nhan_vien AND year(hop_dong.ngay_lam_hop_dong) BETWEEN 2019 AND 2021);
SELECT ma_nhan_vien, ho_ten FROM nhan_vien;
-- cach2:
DELETE FROM nhan_vien
WHERE nhan_vien.ma_nhan_vien not in (SELECT hop_dong.ma_nhan_vien FROM hop_dong
WHERE year(hop_dong.ngay_lam_hop_dong) BETWEEN 2019 AND 2021);

-- task 17
--  17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ. ??????

DROP VIEW IF EXISTS demo2;
CREATE VIEW demo2 AS
SELECT khach_hang.ma_khach_hang as ma_khach_hang,khach_hang.ho_ten,loai_khach.ten_loai_khach, hop_dong.ma_hop_dong, dich_vu.ten_dich_vu, hop_dong.ngay_lam_hop_dong,hop_dong.ngay_ket_thuc, (ifnull(dich_vu.chi_phi_thue,0)+ SUM(ifnull(hop_dong_chi_tiet.so_luong,0)*ifnull(dich_vu_di_kem.gia,0))) as tong_tien
FROM khach_hang
LEFT JOIN loai_khach ON khach_hang.ma_loai_khach = loai_khach.ma_loai_khach 
LEFT JOIN hop_dong ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
LEFT JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong 
LEFT JOIN dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu 
LEFT JOIN dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem 
GROUP BY hop_dong.ma_hop_dong
ORDER BY khach_hang.ma_khach_hang;

UPDATE khach_hang 
JOIN demo2 on khach_hang.ma_khach_hang = demo2.ma_khach_hang
JOIN hop_dong ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
SET khach_hang.ma_loai_khach =1
WHERE khach_hang.ma_loai_khach=2 AND khach_hang.ma_khach_hang IN (SELECT demo2.ma_khach_hang FROM demo2 WHERE demo2.tong_tien >1000000
) AND YEAR(hop_dong.ngay_lam_hop_dong)=2021; 
SELECT * FROM khach_hang;

-- task 18
--  18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
SET FOREIGN_KEY_CHECKS=0;
DELETE khach_hang FROM khach_hang
INNER JOIN hop_dong ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
WHERE hop_dong.ngay_lam_hop_dong IN (SELECT hop_dong.ngay_lam_hop_dong FROM hop_dong
WHERE year(hop_dong.ngay_lam_hop_dong)<2021) AND hop_dong.ngay_lam_hop_dong NOT IN (SELECT hop_dong.ngay_lam_hop_dong FROM hop_dong
WHERE year(hop_dong.ngay_lam_hop_dong)>2021);
SELECT * FROM khach_hang;
SET FOREIGN_KEY_CHECKS=1;

-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
DROP VIEW IF EXISTS view3;
CREATE VIEW view3 AS
SELECT hop_dong_chi_tiet.ma_dich_vu_di_kem, SUM(hop_dong_chi_tiet.so_luong) as so_luong FROM hop_dong_chi_tiet
JOIN hop_dong ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
WHERE hop_dong.ma_hop_dong NOT IN (SELECT hop_dong.ma_hop_dong FROM hop_dong 
WHERE year(hop_dong.ngay_lam_hop_dong)>=2021)
GROUP BY hop_dong_chi_tiet.ma_dich_vu_di_kem;
UPDATE dich_vu_di_kem 
JOIN view3 ON view3.ma_dich_vu_di_kem =  dich_vu_di_kem.ma_dich_vu_di_kem
SET dich_vu_di_kem.gia = dich_vu_di_kem.gia*2
WHERE view3.so_luong>10;
SELECT * FROM dich_vu_di_kem;


-- task 20
-- 20 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, 
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
SELECT 'nhan vien' as type, ma_nhan_vien as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi FROM nhan_vien
UNION ALL
SELECT 'khach hang' as type, ma_khach_hang as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi FROM khach_hang;









