```sql
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Cơ sở dữ liệu: `quanlycuahanggiadungbep`

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthoadon`
--

CREATE TABLE `cthoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cthoadon`
--

INSERT INTO `cthoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`) VALUES
(18, 114, 2, 159000, 318000),
(18, 122, 3, 249000, 747000),
(18, 124, 6, 19000, 114000),
(18, 130, 2, 19000, 38000),
(18, 132, 2, 25000, 50000),
(19, 115, 2, 119000, 238000),
(19, 120, 1, 239000, 239000),
(19, 128, 4, 19000, 76000),
(19, 131, 5, 10000, 50000),
(20, 118, 1, 129000, 129000),
(20, 120, 2, 239000, 478000),
(20, 129, 5, 19000, 38000),
(20, 130, 5, 19000, 95000),
(20, 131, 10, 10000, 100000),
(21, 112, 3, 129000, 387000),
(21, 117, 2, 149000, 298000),
(21, 126, 10, 19000, 190000),
(21, 127, 3, 29000, 87000),
(21, 128, 15, 19000, 285000),
(21, 131, 6, 10000, 60000),
(22, 114, 5, 159000, 795000),
(22, 127, 10, 29000, 290000),
(22, 129, 6, 19000, 95000),
(22, 132, 3, 25000, 75000),
(23, 112, 3, 129000, 387000),
(23, 113, 1, 119000, 119000),
(23, 118, 1, 129000, 129000),
(23, 128, 6, 19000, 114000),
(23, 131, 5, 10000, 50000),
(23, 132, 2, 25000, 25000),
(24, 115, 1, 119000, 119000),
(24, 116, 1, 130000, 130000),
(24, 119, 1, 239000, 239000),
(24, 126, 6, 19000, 114000),
(24, 127, 3, 29000, 87000),
(24, 131, 7, 10000, 70000),
(24, 132, 4, 25000, 100000),
(25, 118, 1, 129000, 129000),
(25, 121, 1, 229000, 229000),
(25, 130, 4, 19000, 76000),
(25, 131, 3, 10000, 30000),
(25, 132, 4, 25000, 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `HoTen`, `DiaChi`, `SDT`) VALUES
(1, 'Nguyễn Văn A', '123 Đường ABC, Quận 1, TP. Hồ Chí Minh', '0123456789'),
(2, 'Trần Thị B', '456 Đường XYZ, Quận 2, TP. Hồ Chí Minh', '0987654321'),
(3, 'Lê Văn C', '789 Đường KLM, Quận 3, TP. Hồ Chí Minh', '0123987654'),
(4, 'Phạm Thị D', '101 Đường NOP, Quận 4, TP. Hồ Chí Minh', '0987123456'),
(5, 'Hoàng Văn E', '111 Đường QRS, Quận 5, TP. Hồ Chí Minh', '0123567890');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(100) NOT NULL,
  `Gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `Gia`) VALUES
(112, 'Nồi cơm điện', 129000),
(113, 'Bếp từ', 119000),
(114, 'Chảo chống dính', 159000),
(115, 'Lò vi sóng', 119000),
(116, 'Bình đun nước', 130000),
(117, 'Máy xay sinh t

ố', 149000),
(118, 'Bộ dao 6 món', 129000),
(119, 'Bộ nồi 3 món', 239000),
(120, 'Máy ép trái cây', 239000),
(121, 'Lò nướng đa năng', 229000),
(122, 'Nồi áp suất', 249000),
(123, 'Dụng cụ làm bánh', 119000),
(124, 'Khuôn làm bánh', 19000),
(125, 'Dụng cụ trang trí bánh', 99000),
(126, 'Khung treo dao', 19000),
(127, 'Tô đựng thức ăn', 29000),
(128, 'Ly thủy tinh', 19000),
(129, 'Thìa đong', 19000),
(130, 'Chén sứ', 19000),
(131, 'Đũa inox', 10000),
(132, 'Dĩa nhỏ', 25000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `MaKH` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `NgayLap`, `MaKH`, `TongTien`) VALUES
(18, '2024-03-01', 1, 2135000),
(19, '2024-03-02', 2, 1052000),
(20, '2024-03-02', 3, 1181000),
(21, '2024-03-03', 4, 1743000),
(22, '2024-03-04', 5, 1194000),
(23, '2024-03-04', 1, 1062000),
(24, '2024-03-05', 2, 981000),
(25, '2024-03-05', 3, 911000);

--
-- Đặt khóa cho các bảng đã tạo
--

ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Đặt AUTO_INCREMENT cho các bảng đã tạo
--

ALTER TABLE `cthoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
```