USE furama_resort;

-- task 16
--  16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.

-- cach1:
DELETE FROM nhan_vien
WHERE NOT EXISTS(SELECT ma_nhan_vien FROM hop_dong
WHERE ma_nhan_vien = nhan_vien.ma_nhan_vien AND year(hop_dong.ngay_lam_hop_dong) BETWEEN 2019 AND 2021);
SELECT ma_nhan_vien, ho_ten 
FROM nhan_vien;

-- cach2:
DELETE FROM nhan_vien
WHERE nhan_vien.ma_nhan_vien NOT IN (
SELECT hop_dong.ma_nhan_vien 
FROM hop_dong
WHERE year(hop_dong.ngay_lam_hop_dong) BETWEEN 2019 AND 2021);
SELECT ma_nhan_vien, ho_ten
FROM nhan_vien;

-- task 17
--  17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 1.000.000 VNĐ. ??????

DROP VIEW IF EXISTS view2;
CREATE VIEW view2 AS
SELECT khach_hang.ma_khach_hang as ma_khach_hang,khach_hang.ho_ten,loai_khach.ten_loai_khach, hop_dong.ma_hop_dong, dich_vu.ten_dich_vu, hop_dong.ngay_lam_hop_dong,hop_dong.ngay_ket_thuc, (ifnull(dich_vu.chi_phi_thue,0)+ SUM(ifnull(hop_dong_chi_tiet.so_luong,0)*ifnull(dich_vu_di_kem.gia,0))) as tong_tien
FROM khach_hang
LEFT JOIN loai_khach ON khach_hang.ma_loai_khach = loai_khach.ma_loai_khach 
LEFT JOIN hop_dong ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
LEFT JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong 
LEFT JOIN dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu 
LEFT JOIN dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem 
GROUP BY hop_dong.ma_hop_dong
ORDER BY khach_hang.ma_khach_hang;
SELECT * FROM view2;

UPDATE khach_hang 
SET khach_hang.ma_loai_khach =1 
WHERE khach_hang.ma_khach_hang IN(
SELECT ma_khach_hang 
FROM view2
WHERE ten_loai_khach = "Platinium" 
Group by ma_khach_hang
having sum(tong_tien)>1000000);

SELECT *
 FROM khach_hang;


-- task 18
-- Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).

-- cach 1:
ALTER TABLE khach_hang
ADD trang_thai BOOLEAN DEFAULT 1;

UPDATE khach_hang
SET trang_thai = 0
WHERE ma_khach_hang IN (SELECT ma_khach_hang
FROM hop_dong
WHERE year(hop_dong.ngay_lam_hop_dong)<2021);
SELECT * FROM khach_hang WHERE trang_thai = 0;



-- cach2:
SET FOREIGN_KEY_CHECKS=0;
DELETE  FROM khach_hang
WHERE khach_hang.ma_khach_hang IN (
SELECT ma_khach_hang
FROM hop_dong
WHERE year(hop_dong.ngay_lam_hop_dong)<2021);
SELECT * 
FROM khach_hang;
SET FOREIGN_KEY_CHECKS=1;


-- task 19
-- Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.

DROP VIEW IF EXISTS view3;
CREATE VIEW view3 AS
SELECT hop_dong_chi_tiet.ma_dich_vu_di_kem, SUM(hop_dong_chi_tiet.so_luong) as so_luong 
FROM hop_dong_chi_tiet
JOIN hop_dong ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
WHERE hop_dong.ma_hop_dong  IN (
SELECT hop_dong.ma_hop_dong 
FROM hop_dong 
WHERE year(hop_dong.ngay_lam_hop_dong)=2020)
GROUP BY hop_dong_chi_tiet.ma_dich_vu_di_kem;
SELECT * from view3;

UPDATE dich_vu_di_kem 
JOIN view3 ON view3.ma_dich_vu_di_kem =  dich_vu_di_kem.ma_dich_vu_di_kem
SET dich_vu_di_kem.gia = dich_vu_di_kem.gia*2
WHERE view3.so_luong>10;
SELECT * FROM dich_vu_di_kem;

-- ko dùng view

UPDATE dich_vu_di_kem 
SET 
    gia = gia * 2
WHERE
    ma_dich_vu_di_kem IN (SELECT 
            tinh_tong.ma_dich_vu_di_kem
        FROM
            (SELECT 
                hdct.ma_dich_vu_di_kem, SUM(hdct.so_luong) AS tong_so_lan_su_dung
            FROM
                hop_dong_chi_tiet hdct
            JOIN hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
            WHERE
                    YEAR(hd.ngay_lam_hop_dong) = 2020
            GROUP BY hdct.ma_dich_vu_di_kem
            HAVING tong_so_lan_su_dung > 10 )
            as tinh_tong) ;

-- task 20
-- Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, 
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

SELECT 'nhan vien' as type, ma_nhan_vien as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi 
FROM nhan_vien
UNION ALL
SELECT 'khach hang' as type, ma_khach_hang as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi 
FROM khach_hang;