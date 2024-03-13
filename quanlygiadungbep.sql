
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL AUTO_INCREMENT,
  `TenSP` varchar(100) NOT NULL,
  `Gia` int(11) NOT NULL,
  `LoaiSP` varchar(50) NOT NULL,
  PRIMARY KEY (`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `sanpham` (`TenSP`, `Gia`, `LoaiSP`) VALUES
('Nồi cơm điện', 129000, 'Nồi'),
('Chảo chống dính', 159000, 'Chảo'),
('Bát sứ', 19000, 'Bát'),
('Đũa inox', 10000, 'Đũa'),
('Thìa nhựa', 5000, 'Thìa'),
('Dao bếp', 75000, 'Dao'),
('Kéo bếp', 80000, 'Kéo'),
('Bếp ga', 299000, 'Bếp'),
('Bếp từ', 399000, 'Bếp'),
('Nồi áp suất', 249000, 'Nồi'),
('Lò vi sóng', 119000, 'Lò'),
('Bình đun nước', 130000, 'Bình'),
('Máy xay sinh tố', 149000, 'Máy'),
('Máy ép trái cây', 239000, 'Máy'),
('Lò nướng đa năng', 229000, 'Lò');

CREATE TABLE `nhacungcap` (
  `MaNCC` int(11) NOT NULL AUTO_INCREMENT,
  `TenNCC` varchar(100) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(15) NOT NULL,
  PRIMARY KEY (`MaNCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `nhacungcap` (`TenNCC`, `DiaChi`, `SDT`) VALUES
('Công ty TNHH Nồi Cơm Điện', '123 Đường ABC, Quận 1, TP. Hồ Chí Minh', '0123456789'),
('Công ty TNHH Chảo Chống Dính', '456 Đường XYZ, Quận 2, TP. Hồ Chí Minh', '0987654321'),
('Công ty TNHH Bát Sứ', '789 Đường KLM, Quận 3, TP. Hồ Chí Minh', '0123987654'),
('Công ty TNHH Đũa Inox', '101 Đường NOP, Quận 4, TP. Hồ Chí Minh', '0987123456'),
('Công ty TNHH Thìa Nhựa', '111 Đường QRS, Quận 5, TP. Hồ Chí Minh', '0123567890');

CREATE TABLE `hoadonnhap` (
  `MaHDNhap` int(11) NOT NULL AUTO_INCREMENT,
  `NgayNhap` date NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  PRIMARY KEY (`MaHDNhap`),
  FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cthdnhap` (
  `MaHDNhap` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGiaNhap` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  PRIMARY KEY (`MaHDNhap`, `MaSP`),
  FOREIGN KEY (`MaHDNhap`) REFERENCES `hoadonnhap` (`MaHDNhap`),
  FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(50) NOT NULL,
  `ChucVu` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(15) NOT NULL,
  PRIMARY KEY (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(15) NOT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

COMMIT;
