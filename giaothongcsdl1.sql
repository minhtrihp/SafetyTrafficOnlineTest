-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2020 lúc 06:59 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `giaothongcsdl1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `a1_license`
--

CREATE TABLE `a1_license` (
  `ID` int(10) UNSIGNED NOT NULL,
  `question` mediumtext NOT NULL,
  `option_a` mediumtext NOT NULL,
  `option_b` mediumtext NOT NULL,
  `option_c` mediumtext DEFAULT NULL,
  `option_d` mediumtext DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `driving_tests_id` int(10) UNSIGNED NOT NULL,
  `correct` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `a1_license`
--

INSERT INTO `a1_license` (`ID`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `picture`, `driving_tests_id`, `correct`) VALUES
(1, 'Biển nào cấm người đi bộ ?', 'Biển 1', 'Biển 1 và 3', 'Biển 2', 'Biển 2 và 3', 'cau1.jpg', 1, 'C'),
(2, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ ?', 'Biển 1', 'Biển 3', 'Biển 2', 'Biển 1 và 3', 'cau2.jpg', 1, 'A'),
(3, 'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này ?', 'Biển 1', 'Biển 1 và 3', 'Biển 3', 'Cả ba biển', 'cau3.jpg', 1, 'C'),
(4, 'Biển nào cấm mọi loại xe cơ giới đi vào, trừ xe gắn máy, mô tô 2 bánh và các loại xe ưu tiên theo luật định ?', 'Biển 1', 'Biển 2', 'Biển 1 và 3', 'Cả ba biển', 'cau4.jpg', 1, 'A'),
(5, 'Biển nào cấm ôtô tải ?', 'Cả ba biển', 'Biển 2 và 3', 'Biển 1 và 3', 'Biển 1 và 2', 'cau5.jpg', 1, 'D'),
(6, 'Biển nào cấm máy kéo ?', 'Biển 2 và 3', 'Biển 1 và 3', 'Cả ba biển', 'Biển 1', 'cau6.jpg', 1, 'A'),
(7, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm ?', 'Biển 1 và 2', 'Biển 2 và 3', 'Biển 1 ', 'Cả ba biển', 'cau7.jpg', 1, 'B'),
(8, 'Biển nào báo hiệu sắp đến chỗ giao nhau với đường sắt có rào chắn ?', 'Biển 1', 'Biển 2 và 3', 'Biển 3', 'Cả ba biển', 'cau8.jpg', 1, 'A'),
(9, 'Biển nào báo hiệu giao nhau có tín hiệu đèn ?', 'Biển 2', 'Biển 1', 'Biển 3', 'Cả ba biển', 'cau9.jpg', 1, 'C'),
(10, 'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt ?', 'Biển 1 và 3', 'Biển 1 và 2', 'Biển 2 và 3', 'Cả ba biển', 'cau10.jpg', 1, 'A'),
(11, 'Biển nào báo hiệu chú ý chướng ngại vật ?', 'Biển 1', 'Biển 2 và 3', 'Biển 1 và 3', 'Cả ba biển', 'cau11.jpg', 1, 'B'),
(12, 'Biển nào báo hiệu đoạn đường hay xảy ra tai nạn ?', 'Biển 1', 'Biển 2', 'Biển 2 và 3', 'Cả ba biển', 'cau12.jpg', 1, 'B'),
(13, 'Biển số 1 có ý nghĩa gì ?', 'Đi thẳng hoặc rẽ trái trên cầu vượt', 'Đi thẳng hoặc rẽ phải trên cầu vượt', 'Báo hiệu cầu vượt liên thông', 'Đi thẳng trên cầu vượt', 'cau13.jpg', 1, 'C'),
(14, 'Biển nào báo hiệu tuyến đường cầu vượt cắt qua ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau14.jpg', 1, 'A'),
(15, 'Biển nào báo hiệu đường hầm ?', 'Cả ba biển', 'Biển 2 và 3', 'Biển 2', 'Biển 1 và 3', 'cau15.jpg', 1, 'C'),
(16, 'Biển nào chỉ dẫn tên đường trên các tuyến đường đối ngoại ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 2', 'cau16.jpg', 1, 'C'),
(17, 'Biển số 1 có ý nghĩa gì ?', 'Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại', 'Biển chỉ dẫn hết hiệu lực khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe theo giờ trên các tuyến đường đối ngoại', 'cau17.jpg', 1, 'A'),
(18, 'Biển số 3 có ý nghĩa gì ?', 'Biển chỉ dẫn khu vực cấm đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực hạn chế tốc độ tối đa trên các tuyến đường đối ngoại', 'Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại', 'cau18.jpg', 1, 'C'),
(19, 'Biển nào báo hiệu đường có làn đường dành cho ôtô khách ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau19.jpg', 1, 'B'),
(20, 'Biển nào báo hiệu rẽ ra đường có làn đường dành cho ôtô khách ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau20.jpg', 1, 'C'),
(21, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe tải, xe lam, xe con, mô tô', 'Xe tải, mô tô, xe lam, xe con', 'Xe lam, xe tải, xe con, mô tô', 'Mô tô, xe lam, xe tải, xe con', 'cau21.jpg', 1, 'B'),
(22, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe công an, xe con, xe tải, xe lam', 'Xe công an, xe lam, xe con, xe tải', 'Xe công an, xe tải, xe lam, xe con', 'Xe con, xe công an, xe tải, xe lam', 'cau22.jpg', 1, 'A'),
(23, 'Theo hướng mũi tên, thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe tải, xe công an, xe khách, xe con', 'Xe công an, xe khách, xe con, xe tải', 'Xe công an, xe con, xe tải, xe khách', 'Xe công an, xe tải, xe khách, xe con', 'cau23.jpg', 1, 'D'),
(24, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe tải, xe lam, mô tô', 'Xe lam, xe tải, mô tô', 'Mô tô, xe lam, xe tải', 'Xe lam, mô tô, xe tải', 'cau24.jpg', 1, 'C'),
(25, 'Biển nào báo hiệu cấm xe mô tô ba bánh đi vào ?', 'Biển 1 và 3', 'Biển 1 và 2', 'Biển 2 và 3', 'Cả ba biển', 'cau25.jpg', 1, 'B'),
(26, 'Biển nào báo hiệu cấm xe mô tô hai bánh đi vào ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau26.jpg', 1, 'A'),
(27, 'Khi gặp biển nào thì xe mô tô hai bánh được đi vào ?', 'Không biển nào', 'Biển 1 và 2', 'Biển 2 và 3', 'Cả ba biển', 'cau27.jpg', 1, 'C'),
(28, 'Biển nào xe mô tô hai bánh được đi vào ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau28.jpg', 1, 'B'),
(29, 'Biển nào xe mô tô hai bánh không được đi vào ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau29.jpg', 1, 'B'),
(30, 'Biển nào cho phép ôtô con được vượt ?', 'Biển 1 và 2', 'Biển 2', 'Biển 3', 'Biển 1 và 3', 'cau30.jpg', 1, 'D'),
(31, 'Biển nào không có hiệu lực đối với ôtô tải không kéo moóc ?', 'Biển 1 và 2', 'Biển 2 và 3', 'Cả ba biển', 'Biển 1 và 3', 'cau31.jpg', 1, 'A'),
(32, 'Biển nào cấm máy kéo ?', 'Biển 1 và 3', 'Biển 1 và 2', 'Cả ba biển', 'Biển 2 và 3', 'cau32.jpg', 1, 'D'),
(33, 'Biển này có ý nghĩa gì ?', 'Cấm xe cơ giới (trừ xe ưu tiên theo Luật định) đi thẳng', 'Cấm xe ô tô và mô tô (trừ xe ưu tiên theo Luật định) đi về bên trái và bên phải', 'Hướng trái và phải không cấm xe cơ giới', 'Cả ba ý kiến đều đúng', 'cau33.jpg', 1, 'B'),
(34, 'Biển phụ đặt dưới biển cấm bóp còi có ý nghĩa gì ?', 'Báo khoảng cách đến nơi cấm bóp còi', 'Chiều dài đoạn đường cấm bóp còi từ nơi đặt biển', 'Báo cấm dùng còi có độ vang xa 500m', 'Cả ba ý kiến đều đúng', 'cau34.jpg', 1, 'B'),
(35, 'Biển này có ý nghĩa gì ?', 'Cấm dừng xe về hướng bên phải', 'Cấm đỗ xe và cấm dừng xe theo hướng bên phải', 'Được phép đỗ xe và dừng xe theo hướng bên phải', 'Cả ba ý kiến đều đúng', 'cau35.jpg', 1, 'B'),
(36, 'Biển nào cấm xe đạp đi vào ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau36.jpg', 1, 'B'),
(37, 'Biển nào báo hiệu đường dành cho xe thô sơ ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau37.jpg', 1, 'A'),
(38, 'Biển nào báo hiệu phần đường cho người tàn tật ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau38.jpg', 1, 'B'),
(39, 'Biển nào báo hiệu đường đôi ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau39.jpg', 1, 'B'),
(40, 'Biển nào báo hiệu hết đường cao tốc ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau40.jpg', 1, 'B');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `a2_license`
--

CREATE TABLE `a2_license` (
  `ID` int(10) UNSIGNED NOT NULL,
  `question` mediumtext NOT NULL,
  `option_a` mediumtext NOT NULL,
  `option_b` mediumtext NOT NULL,
  `option_c` mediumtext DEFAULT NULL,
  `option_d` mediumtext DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `driving_tests_id` int(10) UNSIGNED NOT NULL,
  `correct` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `a2_license`
--

INSERT INTO `a2_license` (`ID`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `picture`, `driving_tests_id`, `correct`) VALUES
(1, 'Biển nào cấm người đi bộ ?', 'Biển 1', 'Biển 1 và 3', 'Biển 2', 'Biển 2 và 3', 'cau1.jpg', 2, 'C'),
(2, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ ?', 'Biển 1', 'Biển 3', 'Biển 2', 'Biển 1 và 3', 'cau2.jpg', 2, 'A'),
(3, 'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này ?', 'Biển 1', 'Biển 1 và 3', 'Biển 3', 'Cả ba biển', 'cau3.jpg', 2, 'C'),
(4, 'Biển nào cấm mọi loại xe cơ giới đi vào, trừ xe gắn máy, mô tô 2 bánh và các loại xe ưu tiên theo luật định ?', 'Biển 1', 'Biển 2', 'Biển 1 và 3', 'Cả ba biển', 'cau4.jpg', 2, 'A'),
(5, 'Biển nào cấm ôtô tải ?', 'Cả ba biển', 'Biển 2 và 3', 'Biển 1 và 3', 'Biển 1 và 2', 'cau5.jpg', 2, 'D'),
(6, 'Biển nào cấm máy kéo ?', 'Biển 2 và 3', 'Biển 1 và 3', 'Cả ba biển', 'Biển 1', 'cau6.jpg', 2, 'A'),
(7, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm ?', 'Biển 1 và 2', 'Biển 2 và 3', 'Biển 1 ', 'Cả ba biển', 'cau7.jpg', 2, 'B'),
(8, 'Biển nào báo hiệu sắp đến chỗ giao nhau với đường sắt có rào chắn ?', 'Biển 1', 'Biển 2 và 3', 'Biển 3', 'Cả ba biển', 'cau8.jpg', 2, 'A'),
(9, 'Biển nào báo hiệu giao nhau có tín hiệu đèn ?', 'Biển 2', 'Biển 1', 'Biển 3', 'Cả ba biển', 'cau9.jpg', 2, 'C'),
(10, 'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt ?', 'Biển 1 và 3', 'Biển 1 và 2', 'Biển 2 và 3', 'Cả ba biển', 'cau10.jpg', 2, 'A'),
(11, 'Biển nào báo hiệu chú ý chướng ngại vật ?', 'Biển 1', 'Biển 2 và 3', 'Biển 1 và 3', 'Cả ba biển', 'cau11.jpg', 2, 'B'),
(12, 'Biển nào báo hiệu đoạn đường hay xảy ra tai nạn ?', 'Biển 1', 'Biển 2', 'Biển 2 và 3', 'Cả ba biển', 'cau12.jpg', 2, 'B'),
(13, 'Biển số 1 có ý nghĩa gì ?', 'Đi thẳng hoặc rẽ trái trên cầu vượt', 'Đi thẳng hoặc rẽ phải trên cầu vượt', 'Báo hiệu cầu vượt liên thông', 'Đi thẳng trên cầu vượt', 'cau13.jpg', 2, 'C'),
(14, 'Biển nào báo hiệu tuyến đường cầu vượt cắt qua ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau14.jpg', 2, 'A'),
(15, 'Biển nào báo hiệu đường hầm ?', 'Cả ba biển', 'Biển 2 và 3', 'Biển 2', 'Biển 1 và 3', 'cau15.jpg', 2, 'C'),
(16, 'Biển nào chỉ dẫn tên đường trên các tuyến đường đối ngoại ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 2', 'cau16.jpg', 2, 'C'),
(17, 'Biển số 1 có ý nghĩa gì ?', 'Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại', 'Biển chỉ dẫn hết hiệu lực khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe theo giờ trên các tuyến đường đối ngoại', 'cau17.jpg', 2, 'A'),
(18, 'Biển số 3 có ý nghĩa gì ?', 'Biển chỉ dẫn khu vực cấm đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực hạn chế tốc độ tối đa trên các tuyến đường đối ngoại', 'Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại', 'cau18.jpg', 2, 'C'),
(19, 'Biển nào báo hiệu đường có làn đường dành cho ôtô khách ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau19.jpg', 2, 'B'),
(20, 'Biển nào báo hiệu rẽ ra đường có làn đường dành cho ôtô khách ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau20.jpg', 2, 'C'),
(21, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe tải, xe lam, xe con, mô tô', 'Xe tải, mô tô, xe lam, xe con', 'Xe lam, xe tải, xe con, mô tô', 'Mô tô, xe lam, xe tải, xe con', 'cau21.jpg', 2, 'B'),
(22, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe công an, xe con, xe tải, xe lam', 'Xe công an, xe lam, xe con, xe tải', 'Xe công an, xe tải, xe lam, xe con', 'Xe con, xe công an, xe tải, xe lam', 'cau22.jpg', 2, 'A'),
(23, 'Theo hướng mũi tên, thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe tải, xe công an, xe khách, xe con', 'Xe công an, xe khách, xe con, xe tải', 'Xe công an, xe con, xe tải, xe khách', 'Xe công an, xe tải, xe khách, xe con', 'cau23.jpg', 2, 'D'),
(24, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe tải, xe lam, mô tô', 'Xe lam, xe tải, mô tô', 'Mô tô, xe lam, xe tải', 'Xe lam, mô tô, xe tải', 'cau24.jpg', 2, 'C'),
(25, 'Biển nào báo hiệu cấm xe mô tô ba bánh đi vào ?', 'Biển 1 và 3', 'Biển 1 và 2', 'Biển 2 và 3', 'Cả ba biển', 'cau25.jpg', 2, 'B'),
(26, 'Biển nào báo hiệu cấm xe mô tô hai bánh đi vào ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau26.jpg', 2, 'A'),
(27, 'Khi gặp biển nào thì xe mô tô hai bánh được đi vào ?', 'Không biển nào', 'Biển 1 và 2', 'Biển 2 và 3', 'Cả ba biển', 'cau27.jpg', 2, 'C'),
(28, 'Biển nào xe mô tô hai bánh được đi vào ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau28.jpg', 2, 'B'),
(29, 'Biển nào xe mô tô hai bánh không được đi vào ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau29.jpg', 2, 'B'),
(30, 'Biển nào cho phép ôtô con được vượt ?', 'Biển 1 và 2', 'Biển 2', 'Biển 3', 'Biển 1 và 3', 'cau30.jpg', 2, 'D'),
(31, 'Biển nào không có hiệu lực đối với ôtô tải không kéo moóc ?', 'Biển 1 và 2', 'Biển 2 và 3', 'Cả ba biển', 'Biển 1 và 3', 'cau31.jpg', 2, 'A'),
(32, 'Biển nào cấm máy kéo ?', 'Biển 1 và 3', 'Biển 1 và 2', 'Cả ba biển', 'Biển 2 và 3', 'cau32.jpg', 2, 'D'),
(33, 'Biển này có ý nghĩa gì ?', 'Cấm xe cơ giới (trừ xe ưu tiên theo Luật định) đi thẳng', 'Cấm xe ô tô và mô tô (trừ xe ưu tiên theo Luật định) đi về bên trái và bên phải', 'Hướng trái và phải không cấm xe cơ giới', 'Cả ba ý kiến đều đúng', 'cau33.jpg', 2, 'B'),
(34, 'Biển phụ đặt dưới biển cấm bóp còi có ý nghĩa gì ?', 'Báo khoảng cách đến nơi cấm bóp còi', 'Chiều dài đoạn đường cấm bóp còi từ nơi đặt biển', 'Báo cấm dùng còi có độ vang xa 500m', 'Cả ba ý kiến đều đúng', 'cau34.jpg', 2, 'B'),
(35, 'Biển này có ý nghĩa gì ?', 'Cấm dừng xe về hướng bên phải', 'Cấm đỗ xe và cấm dừng xe theo hướng bên phải', 'Được phép đỗ xe và dừng xe theo hướng bên phải', 'Cả ba ý kiến đều đúng', 'cau35.jpg', 2, 'B'),
(36, 'Biển nào cấm xe đạp đi vào ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau36.jpg', 2, 'B'),
(37, 'Biển nào báo hiệu đường dành cho xe thô sơ ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau37.jpg', 2, 'A'),
(38, 'Biển nào báo hiệu phần đường cho người tàn tật ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau38.jpg', 2, 'B'),
(39, 'Biển nào báo hiệu đường đôi ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau39.jpg', 2, 'B'),
(40, 'Biển nào báo hiệu hết đường cao tốc ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau40.jpg', 2, 'B');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `b1_license`
--

CREATE TABLE `b1_license` (
  `ID` int(10) UNSIGNED NOT NULL,
  `question` mediumtext NOT NULL,
  `option_a` mediumtext NOT NULL,
  `option_b` mediumtext NOT NULL,
  `option_c` mediumtext DEFAULT NULL,
  `option_d` mediumtext DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `driving_tests_id` int(10) UNSIGNED NOT NULL,
  `correct` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `b1_license`
--

INSERT INTO `b1_license` (`ID`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `picture`, `driving_tests_id`, `correct`) VALUES
(1, 'Trong các biển dưới đây biển nào là biển \"Hết tốc độ tối thiểu\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 2', 'cau1.jpg', 3, 'C'),
(2, 'Biển nào dưới đây báo hiệu hết cấm vượt ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 2 và 3', 'cau2.jpg', 3, 'D'),
(3, 'Trong các biến dưới đây biển nào là biển \"Hết mọi lệnh cấm\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau3.jpg', 3, 'B'),
(4, 'Biển nào cho phép được quay đầu xe đi theo hướng ngược lại khi đạt biển trước ngã ba, ngã tư ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Không biển nào', 'cau4.jpg', 3, 'C'),
(5, 'Biển nào không cho phép rẽ phải ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 3', 'cau5.jpg', 3, 'A'),
(6, 'Khi đến chỗ giao nhau, gặp biển nào thì người lái xe không được cho xe đi thẳng, phải rẽ sang hướng khác ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau6.jpg', 3, 'A'),
(7, 'Biển nào cho phép quay đầu xe ?', 'Biển 1', 'Biển 2', 'Cả 2 biển', 'Không biển nào', 'cau7.jpg', 3, 'C'),
(8, 'Biển nào chỉ dẫn tên đường trên các tuyến đường đối ngoại ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 2', 'cau8.jpg', 3, 'C'),
(9, 'Biển số 1 có ý nghĩa gì ?', 'Biển chỉ dẫn hết cấm đỗ xe theo giờ trong khu vực', 'Biển chỉ dẫn hết hiệu lực khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Không ý kiến nào đúng', 'cau9.jpg', 3, 'A'),
(10, 'Biển số 3 có ý nghĩa gì ?', 'Biển chỉ dẫn khu vực cấm đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển hạn chế tốc độ tối đa trong khu vực', 'Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại', 'cau10.jpg', 3, 'C'),
(11, 'Theo tín hiệu đèn, xe tải đi theo hướng nào là đúng quy tắc giao thông ?', 'Hướng 2, 3, 4', 'Chỉ hướng 1', 'Hướng 1 và 2', 'Hướng 3 và 4', 'cau11.jpg', 3, 'B'),
(12, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông ?', 'Xe khách, xe tải, mô tô', 'Xe tải, xe con, mô tô', 'Xe khách, xe con, mô tô', 'Xe khách, xe tải, xe con', 'cau12.jpg', 3, 'A'),
(13, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe khách, xe tải, mô tô, xe con', 'Xe con, xe khách, xe tải, mô tô', 'Mô tô, xe tải, xe khách, xe con ', 'Mô tô, xe tải, xe con, xe khách', 'cau13.jpg', 3, 'C'),
(14, 'Trong trường hợp này xe nào đỗ vi phạm quy tắc giao thông ?', 'Xe tải', 'Xe con và mô tô', 'Cả ba xe', 'Xe con và xe tải', 'cau14.jpg', 3, 'A'),
(15, 'Xe nào được quyền đi trước ?', 'Xe tải', 'Xe con (B)', 'Xe con (A)', 'Cả Xe con (B) và Xe con (A)', 'cau15.jpg', 3, 'B'),
(16, 'Theo hướng mũi tên, những hướng nào xe gắn máy đi được ?', 'Cả ba hướng', 'Chỉ hướng 1 và 3', 'Chỉ hướng 1 ', 'Chỉ hướng 2', 'cau16.jpg', 3, 'B'),
(17, 'Xe nào đỗ vi phạm quy tắc giao thông ?', 'Cả hai xe', 'Không xe nào vi phạm', 'Chỉ xe mô tô vi phạm', 'Chỉ xe tải vi phạm', 'cau17.jpg', 3, 'A'),
(18, 'Xe nào đỗ vi phạm quy tắc giao thông ?', 'Chỉ mô tô', 'Chỉ xe tải', 'Cả ba xe', 'Chỉ mô tô và xe tải', 'cau18.jpg', 3, 'C'),
(19, 'Theo hướng mũi tên, những hướng nào ô tô không được phép đi ?', 'Hướng 1 và 2', 'Hướng 3', 'Hướng 1 và 4', 'Hướng 2 và 3', 'cau19.jpg', 3, 'B'),
(20, 'Xe nào vượt đúng quy tắc giao thông ?', 'Cả 2 xe đều đúng', 'Xe con', 'Xe khách', 'Cả 2 xe đều sai', 'cau20.jpg', 3, 'A'),
(21, 'Hai biển này có ý nghĩa gì ?', 'Để chỉ nơi đường sắt giao vuông góc với đường bộ không có rào chắn', 'Để báo trước sắp đến vị trí giao cắt đường bộ với đường sắt cùng mức, không vuông góc và không có người gác, không có rào chắn', 'Nơi đường sắt giao nhau với đường bộ', 'Cả ba ý kiến đều sai', 'cau21.jpg', 3, 'A'),
(22, 'Biển nào báo hiệu \"Nơi đường sắt giao vuông góc với đường bộ\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 2', 'cau22.jpg', 3, 'D'),
(23, 'Các biển này có ý nghĩa gì ?', 'Nơi đường sắt giao với đường bộ', 'Nơi đường sắt giao vuông góc với đường bộ', 'Để báo trước sắp đến vị trí đường sắt giao không vuông góc với đường bộ, không có người gác và không có rào chắn', 'Cả ba ý kiến trên đều sai', 'cau23.jpg', 3, 'C'),
(24, 'Biển nào báo hiệu \"Hết đoạn đường ưu tiên\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau24.jpg', 3, 'C'),
(25, 'Biển nào báo hiệu, chỉ dẫn xe đi trên đường này được quyền ưu tiên nơi giao nhau ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau25.jpg', 3, 'B'),
(26, 'Biển nào báo hiệu \"Giao nhau với đường không ưu tiên\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 2 và 3', 'cau26.jpg', 3, 'A'),
(27, 'Biển nào báo hiệu \"Giao nhau với đường ưu tiên\" ?', 'Biển 1 và 3', 'Biển 2', 'Biển 1', 'Biển 2 và 3', 'cau27.jpg', 3, 'B'),
(28, 'Biển nào báo hiệu \"Đường bị thu hẹp\" ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả 3 biển', 'cau28.jpg', 3, 'A'),
(29, 'Khi gặp biển nào, người lái xe phải giảm tốc độ, chú ý xe đi ngược chiều, xe đi ở phía đương bị hẹp phải nhường đường cho xe đi ngược chiều ?', 'Biển 1', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau29.jpg', 3, 'C'),
(30, 'Biển nào báo hiệu \"Giao nhau với đường ưu tiên\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau30.jpg', 3, 'C'),
(31, 'Xe của bạn được đi theo hướng nào trong trường hợp này ?', 'Đi thẳng, rẽ trái', 'Đi thẳng, rẽ phải', 'Rẽ trái', 'Đi thẳng, rẽ phải, rẽ trái', 'cau31.jpg', 3, 'A'),
(32, 'Xe của bạn được đi theo hướng nào trong trường hợp này ?', 'Chuyển sang làn đường bên phải và rẽ phải', 'Dừng lại trước vạch dừng và rẽ phải khi đèn xanh', 'Dừng lại trước vạch dừng và đi thẳng hoặc rẽ trái khi đèn xanh', 'Cả ba ý kiến đều sai', 'cau32.jpg', 3, 'C'),
(33, 'Bạn xử lý như thế nào trong trường hợp này ?', 'Tăng tốc độ, rẽ phải trước xe tải và xe đạp', 'Giảm tốc độ, rẽ phải sau xe tải và xe đạp', 'Tăng tốc độ, rẽ phải trước xe đạp', 'Cả ba ý kiến trên đều sai', 'cau33.jpg', 3, 'B'),
(34, 'Bạn xử lý như thế nào trong trường hợp này ?', 'Tăng tốc độ, rẽ phải trước xe con màu xanh phía trước và người đi bộ', 'Giảm tốc độ, để người đi bộ qua đường và rẽ phải trước xe con màu xanh', 'Giảm tốc độ, để người đi bộ qua đường và rẽ phải sau xe con màu xanh', 'Cả ba ý kiến trên đều sai', 'cau34.jpg', 3, 'C'),
(35, 'Bạn xử lý như thế nào trong trường hợp này ?', 'Nhường đường cho xe khách và đi trước xe đạp', 'Nhường đường cho xe đạp và đi trước xe khách', 'Nhường đường cho xe đạp và xe khách', 'Cả ba ý kiến trên đều sai', 'cau35.jpg', 3, 'C'),
(36, 'Phía trước có một xe đang lùi vào nơi đỗ, xe con phía trước đang chuyển sang làn đường bên trái, bạn xử lý như thế nào trong trường hợp này ?', 'Nếu phía sau không có xe xin vượt, chuyển sang làn đường bên trái', 'Nếu phía sau có xe xin vượt, thì giảm tốc độ, ở lại làn đường, dừng lại khi cần thiết', 'Tăng tốc độ trên làn đường của mình và vượt xe con', 'Cả ý A và B', 'cau36.jpg', 3, 'D'),
(37, 'Bạn xử lý như thế nào khi xe phía trước đang lùi ra khỏi nơi đỗ ?', 'Chuyển sang nửa đường bên trái để đi tiếp', 'Bấm còi, nháy đèn báo hiệu và đi tiếp', 'Giảm tốc độ, dừng lại nhường đường', 'Cả ba ý kiến trên đều sai', 'cau37.jpg', 3, 'C'),
(38, 'Phía trước có một xe màu xanh đang vượt xe màu vàng trên làn đường của bạn, bạn xử lý như thế nào trong trường hợp này ?', 'Phanh xe giảm tốc độ và đi sát lề đường bên phải', 'Bấm còi, nháy đèn báo hiệu, giữ nguyên tốc độ và đi tiếp', 'Phanh xe giảm tốc độ và đi sát lề đường bên trái', 'Cả ba ý kiến trên đều sai', 'cau38.jpg', 3, 'A'),
(39, 'Xe tải phía trước có tín hiệu xin chuyển làn đường, bạn xử lý như thế nào trong trường hợp này ?', 'Bật tín hiệu xin chuyển làn đường sang trái để vượt xe tải', 'Phanh xe giảm tốc độ chờ xe tải phía trước chuyển làn đường', 'Bấm còi báo hiệu và vượt qua xe tải trên làn đường của mình', 'Cả ba ý kiến trên đều sai', 'cau39.jpg', 3, 'B'),
(40, 'Bạn xử lý như thế nào trong trường hợp này ?', 'Tăng tốc độ và đi thẳng qua ngã tư', 'Dừng xe trước vạch dừng', 'Giảm tốc độ và đi thẳng qua ngã tư', 'Cả ba ý kiến trên đều sai', 'cau40.jpg', 3, 'C');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `b2_license`
--

CREATE TABLE `b2_license` (
  `ID` int(10) UNSIGNED NOT NULL,
  `question` mediumtext NOT NULL,
  `option_a` mediumtext NOT NULL,
  `option_b` mediumtext NOT NULL,
  `option_c` mediumtext DEFAULT NULL,
  `option_d` mediumtext DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `driving_tests_id` int(10) UNSIGNED NOT NULL,
  `correct` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `b2_license`
--

INSERT INTO `b2_license` (`ID`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `picture`, `driving_tests_id`, `correct`) VALUES
(1, 'Trong các biển dưới đây biển nào là biển \"Hết tốc độ tối thiểu\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 2', 'cau1.jpg', 4, 'C'),
(2, 'Biển nào dưới đây báo hiệu hết cấm vượt ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 2 và 3', 'cau2.jpg', 4, 'D'),
(3, 'Trong các biến dưới đây biển nào là biển \"Hết mọi lệnh cấm\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau3.jpg', 4, 'B'),
(4, 'Biển nào cho phép được quay đầu xe đi theo hướng ngược lại khi đạt biển trước ngã ba, ngã tư ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Không biển nào', 'cau4.jpg', 4, 'C'),
(5, 'Biển nào không cho phép rẽ phải ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 3', 'cau5.jpg', 4, 'A'),
(6, 'Khi đến chỗ giao nhau, gặp biển nào thì người lái xe không được cho xe đi thẳng, phải rẽ sang hướng khác ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau6.jpg', 4, 'A'),
(7, 'Biển nào cho phép quay đầu xe ?', 'Biển 1', 'Biển 2', 'Cả 2 biển', 'Không biển nào', 'cau7.jpg', 4, 'C'),
(8, 'Biển nào chỉ dẫn tên đường trên các tuyến đường đối ngoại ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 2', 'cau8.jpg', 4, 'C'),
(9, 'Biển số 1 có ý nghĩa gì ?', 'Biển chỉ dẫn hết cấm đỗ xe theo giờ trong khu vực', 'Biển chỉ dẫn hết hiệu lực khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Không ý kiến nào đúng', 'cau9.jpg', 4, 'A'),
(10, 'Biển số 3 có ý nghĩa gì ?', 'Biển chỉ dẫn khu vực cấm đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển hạn chế tốc độ tối đa trong khu vực', 'Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại', 'cau10.jpg', 4, 'C'),
(11, 'Theo tín hiệu đèn, xe tải đi theo hướng nào là đúng quy tắc giao thông ?', 'Hướng 2, 3, 4', 'Chỉ hướng 1', 'Hướng 1 và 2', 'Hướng 3 và 4', 'cau11.jpg', 4, 'B'),
(12, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông ?', 'Xe khách, xe tải, mô tô', 'Xe tải, xe con, mô tô', 'Xe khách, xe con, mô tô', 'Xe khách, xe tải, xe con', 'cau12.jpg', 4, 'A'),
(13, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông ?', 'Xe khách, xe tải, mô tô, xe con', 'Xe con, xe khách, xe tải, mô tô', 'Mô tô, xe tải, xe khách, xe con ', 'Mô tô, xe tải, xe con, xe khách', 'cau13.jpg', 4, 'C'),
(14, 'Trong trường hợp này xe nào đỗ vi phạm quy tắc giao thông ?', 'Xe tải', 'Xe con và mô tô', 'Cả ba xe', 'Xe con và xe tải', 'cau14.jpg', 4, 'A'),
(15, 'Xe nào được quyền đi trước ?', 'Xe tải', 'Xe con (B)', 'Xe con (A)', 'Cả Xe con (B) và Xe con (A)', 'cau15.jpg', 4, 'B'),
(16, 'Theo hướng mũi tên, những hướng nào xe gắn máy đi được ?', 'Cả ba hướng', 'Chỉ hướng 1 và 3', 'Chỉ hướng 1 ', 'Chỉ hướng 2', 'cau16.jpg', 4, 'B'),
(17, 'Xe nào đỗ vi phạm quy tắc giao thông ?', 'Cả hai xe', 'Không xe nào vi phạm', 'Chỉ xe mô tô vi phạm', 'Chỉ xe tải vi phạm', 'cau17.jpg', 4, 'A'),
(18, 'Xe nào đỗ vi phạm quy tắc giao thông ?', 'Chỉ mô tô', 'Chỉ xe tải', 'Cả ba xe', 'Chỉ mô tô và xe tải', 'cau18.jpg', 4, 'C'),
(19, 'Theo hướng mũi tên, những hướng nào ô tô không được phép đi ?', 'Hướng 1 và 2', 'Hướng 3', 'Hướng 1 và 4', 'Hướng 2 và 3', 'cau19.jpg', 4, 'B'),
(20, 'Xe nào vượt đúng quy tắc giao thông ?', 'Cả 2 xe đều đúng', 'Xe con', 'Xe khách', 'Cả 2 xe đều sai', 'cau20.jpg', 4, 'A'),
(21, 'Hai biển này có ý nghĩa gì ?', 'Để chỉ nơi đường sắt giao vuông góc với đường bộ không có rào chắn', 'Để báo trước sắp đến vị trí giao cắt đường bộ với đường sắt cùng mức, không vuông góc và không có người gác, không có rào chắn', 'Nơi đường sắt giao nhau với đường bộ', 'Cả ba ý kiến đều sai', 'cau21.jpg', 4, 'A'),
(22, 'Biển nào báo hiệu \"Nơi đường sắt giao vuông góc với đường bộ\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 2', 'cau22.jpg', 4, 'D'),
(23, 'Các biển này có ý nghĩa gì ?', 'Nơi đường sắt giao với đường bộ', 'Nơi đường sắt giao vuông góc với đường bộ', 'Để báo trước sắp đến vị trí đường sắt giao không vuông góc với đường bộ, không có người gác và không có rào chắn', 'Cả ba ý kiến trên đều sai', 'cau23.jpg', 4, 'C'),
(24, 'Biển nào báo hiệu \"Hết đoạn đường ưu tiên\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau24.jpg', 4, 'C'),
(25, 'Biển nào báo hiệu, chỉ dẫn xe đi trên đường này được quyền ưu tiên nơi giao nhau ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau25.jpg', 4, 'B'),
(26, 'Biển nào báo hiệu \"Giao nhau với đường không ưu tiên\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 2 và 3', 'cau26.jpg', 4, 'A'),
(27, 'Biển nào báo hiệu \"Giao nhau với đường ưu tiên\" ?', 'Biển 1 và 3', 'Biển 2', 'Biển 1', 'Biển 2 và 3', 'cau27.jpg', 4, 'B'),
(28, 'Biển nào báo hiệu \"Đường bị thu hẹp\" ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả 3 biển', 'cau28.jpg', 4, 'A'),
(29, 'Khi gặp biển nào, người lái xe phải giảm tốc độ, chú ý xe đi ngược chiều, xe đi ở phía đương bị hẹp phải nhường đường cho xe đi ngược chiều ?', 'Biển 1', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau29.jpg', 4, 'C'),
(30, 'Biển nào báo hiệu \"Giao nhau với đường ưu tiên\" ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau30.jpg', 4, 'C'),
(31, 'Xe của bạn được đi theo hướng nào trong trường hợp này ?', 'Đi thẳng, rẽ trái', 'Đi thẳng, rẽ phải', 'Rẽ trái', 'Đi thẳng, rẽ phải, rẽ trái', 'cau31.jpg', 4, 'A'),
(32, 'Xe của bạn được đi theo hướng nào trong trường hợp này ?', 'Chuyển sang làn đường bên phải và rẽ phải', 'Dừng lại trước vạch dừng và rẽ phải khi đèn xanh', 'Dừng lại trước vạch dừng và đi thẳng hoặc rẽ trái khi đèn xanh', 'Cả ba ý kiến đều sai', 'cau32.jpg', 4, 'C'),
(33, 'Bạn xử lý như thế nào trong trường hợp này ?', 'Tăng tốc độ, rẽ phải trước xe tải và xe đạp', 'Giảm tốc độ, rẽ phải sau xe tải và xe đạp', 'Tăng tốc độ, rẽ phải trước xe đạp', 'Cả ba ý kiến trên đều sai', 'cau33.jpg', 4, 'B'),
(34, 'Bạn xử lý như thế nào trong trường hợp này ?', 'Tăng tốc độ, rẽ phải trước xe con màu xanh phía trước và người đi bộ', 'Giảm tốc độ, để người đi bộ qua đường và rẽ phải trước xe con màu xanh', 'Giảm tốc độ, để người đi bộ qua đường và rẽ phải sau xe con màu xanh', 'Cả ba ý kiến trên đều sai', 'cau34.jpg', 4, 'C'),
(35, 'Bạn xử lý như thế nào trong trường hợp này ?', 'Nhường đường cho xe khách và đi trước xe đạp', 'Nhường đường cho xe đạp và đi trước xe khách', 'Nhường đường cho xe đạp và xe khách', 'Cả ba ý kiến trên đều sai', 'cau35.jpg', 4, 'C'),
(36, 'Phía trước có một xe đang lùi vào nơi đỗ, xe con phía trước đang chuyển sang làn đường bên trái, bạn xử lý như thế nào trong trường hợp này ?', 'Nếu phía sau không có xe xin vượt, chuyển sang làn đường bên trái', 'Nếu phía sau có xe xin vượt, thì giảm tốc độ, ở lại làn đường, dừng lại khi cần thiết', 'Tăng tốc độ trên làn đường của mình và vượt xe con', 'Cả ý A và B', 'cau36.jpg', 4, 'D'),
(37, 'Bạn xử lý như thế nào khi xe phía trước đang lùi ra khỏi nơi đỗ ?', 'Chuyển sang nửa đường bên trái để đi tiếp', 'Bấm còi, nháy đèn báo hiệu và đi tiếp', 'Giảm tốc độ, dừng lại nhường đường', 'Cả ba ý kiến trên đều sai', 'cau37.jpg', 4, 'C'),
(38, 'Phía trước có một xe màu xanh đang vượt xe màu vàng trên làn đường của bạn, bạn xử lý như thế nào trong trường hợp này ?', 'Phanh xe giảm tốc độ và đi sát lề đường bên phải', 'Bấm còi, nháy đèn báo hiệu, giữ nguyên tốc độ và đi tiếp', 'Phanh xe giảm tốc độ và đi sát lề đường bên trái', 'Cả ba ý kiến trên đều sai', 'cau38.jpg', 4, 'A'),
(39, 'Xe tải phía trước có tín hiệu xin chuyển làn đường, bạn xử lý như thế nào trong trường hợp này ?', 'Bật tín hiệu xin chuyển làn đường sang trái để vượt xe tải', 'Phanh xe giảm tốc độ chờ xe tải phía trước chuyển làn đường', 'Bấm còi báo hiệu và vượt qua xe tải trên làn đường của mình', 'Cả ba ý kiến trên đều sai', 'cau39.jpg', 4, 'B'),
(40, 'Bạn xử lý như thế nào trong trường hợp này ?', 'Tăng tốc độ và đi thẳng qua ngã tư', 'Dừng xe trước vạch dừng', 'Giảm tốc độ và đi thẳng qua ngã tư', 'Cả ba ý kiến trên đều sai', 'cau40.jpg', 4, 'C');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `ID` int(10) UNSIGNED NOT NULL,
  `contents` text NOT NULL,
  `date` date NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `driving_licenses`
--

CREATE TABLE `driving_licenses` (
  `ID` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `driving_licenses`
--

INSERT INTO `driving_licenses` (`ID`, `name`, `description`) VALUES
(1, 'Bằng lái xe hạng A1', 'Người lái xe mô tô hai bánh có dung tích xy lanh từ 50 cm3 đến dưới 175 cm3.Người khuyết tật lái xe mô tô ba bánh dành cho người khuyết tật.'),
(2, 'Bằng lái xe hạng A2', 'Người lái xe để điều khiển xe mô tô hai bánh có dung tích xy lanh từ 175 cm3 trở lên và các loại xe quy định cho giấy phép lái xe hạng A1.'),
(5, 'Bằng lái xe ô tô hạng B1', 'Số tự động cấp cho người không hành nghề lái xe để điều khiển các loại xe sau đây:\r\nÔ tô số tự động chở người đến 9 chỗ ngồi, kể cả chỗ ngồi cho người lái xe\r\nÔ tô tải, kể cả ô tô tải chuyên dùng số tự động có trọng tải thiết kế dưới 3.500 kg\r\nÔ tô dùng cho người khuyết tật.'),
(6, 'Bằng lái xe ô tô hạng B2', 'Hạng B2 cấp cho người hành nghề lái xe để điều khiển các loại xe sau đây:\r\nNgười lái xe ô tô 4 - 9 chỗ, ô tô chuyên dùng có trọng tải thiết kế dưới 3,5 tấn\r\nCác loại xe quy định cho giấy phép lái xe hạng B1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `driving_tests`
--

CREATE TABLE `driving_tests` (
  `ID` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `driving_licenses_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `driving_tests`
--

INSERT INTO `driving_tests` (`ID`, `name`, `date`, `description`, `driving_licenses_id`) VALUES
(1, 'Đề 001 - A1', '2020-10-15', 'Đề thi 001 của bằng lái hạng A1', 1),
(2, 'Đề 001 - A2', '2020-10-15', 'Đề thi 001 của bằng lái hạng A2', 2),
(3, 'Đề 001 - B1', '2020-10-15', 'Đề thi 001 của bằng lái hạng B1', 5),
(4, 'Đề 001 - B2', '2020-10-15', 'Đề thi 001 của bằng lái hạng B2', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbacks`
--

CREATE TABLE `feedbacks` (
  `ID` int(11) UNSIGNED NOT NULL,
  `contents` mediumtext NOT NULL,
  `comments_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `ID` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `contents` longtext NOT NULL,
  `topics_id` int(10) UNSIGNED DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `hot` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`ID`, `name`, `description`, `contents`, `topics_id`, `date`, `picture`, `hot`, `views`) VALUES
(1, '&quot;Siêu mô tô&quot; BMW gây tai nạn, 2 người tử vong, 1 người nguy kịch', '<a data-utm=\"Cate_GiaoThong|MainList|1\" class=\"news-item__sapo\" title=\"&quot;Siêu mô tô&quot; BMW gây tai nạn, 2 người tử vong, 1 người nguy kịch\" href=\"/xa-hoi/sieu-mo-to-bmw-gay-tai-nan-2-nguoi-tu-vong-1-nguoi-nguy-kich-20201118231733846.htm\">(Dân trí)&nbsp;- Khi đến ngã tư, chiếc \"siêu mô tô\" BMW bất ngờ va chạm với một xe máy khác rồi văng xa gần 100m. Hậu quả làm 2 người tử vong, 1 người phải nhập viện cấp cứu trong tình trạng nguy kịch.</a>', 'https://dantri.com.vn/xa-hoi/sieu-mo-to-bmw-gay-tai-nan-2-nguoi-tu-vong-1-nguoi-nguy-kich-20201118231733846.htm', NULL, '<span class=\"news-item__time\">Thứ Năm 19/11/2020 - 07:10</span>', 'sieu-mo-to-bmw-gay-tai-nan-3-nguoi-nhap-vien-nguy-kich-1-1605744975551.jpeg', NULL, NULL),
(2, 'TPHCM gặp khó tại dự án cao tốc hơn 13.000 tỷ đồng', '<a data-utm=\"Cate_GiaoThong|MainList|2\" class=\"news-item__sapo\" title=\"TPHCM gặp khó tại dự án cao tốc hơn 13.000 tỷ đồng\" href=\"/xa-hoi/tphcm-gap-kho-tai-du-an-cao-toc-hon-13000-ty-dong-20201118150404778.htm\">(Dân trí)&nbsp;- Tuyến cao tốc TPHCM - Mộc Bài dự kiến tổng vốn đầu tư hơn 13.600 tỷ đồng đang gặp vướng mắc thủ tục quyết định chủ trương đầu tư, phê duyệt dự án, thẩm định nguồn vốn và khả năng cân đối nguồn vốn.</a>', 'https://dantri.com.vn/xa-hoi/tphcm-gap-kho-tai-du-an-cao-toc-hon-13000-ty-dong-20201118150404778.htm', NULL, '<span class=\"news-item__time\">Thứ Tư 18/11/2020 - 15:16</span>', 'quoc-lo-22-1605686447095.jpg', NULL, NULL),
(3, 'Xe container lao vào nhà dân rồi bốc cháy ngùn ngụt, 1 người tử vong', '<a data-utm=\"Cate_GiaoThong|MainList|3\" class=\"news-item__sapo\" title=\"Xe container lao vào nhà dân rồi bốc cháy ngùn ngụt, 1 người tử vong\" href=\"/xa-hoi/xe-container-lao-vao-nha-dan-roi-boc-chay-ngun-ngut-1-nguoi-tu-vong-20201118094746484.htm\">(Dân trí)&nbsp;- Trong lúc di chuyển cùng chiều, 2 chiếc xe container đã xảy ra va chạm khiến 1 xe lao vào nhà dân bốc cháy dữ dội, tài xế chết trong cabin, 2 nhà dân bốc cháy.</a>', 'https://dantri.com.vn/xa-hoi/xe-container-lao-vao-nha-dan-roi-boc-chay-ngun-ngut-1-nguoi-tu-vong-20201118094746484.htm', NULL, '<span class=\"news-item__time\">Thứ Tư 18/11/2020 - 10:24</span>', '2-xe-container-va-cham-khien-1-xe-lao-vao-nha-dan-boc-chay-1-nguoi-tu-vong-2-1605669789039.jpeg', NULL, NULL),
(4, 'Hà Nội: Hàng chục bao bột đá rơi trên cao tốc, 2 xe khách &quot;lĩnh chưởng&quot;', '<a data-utm=\"Cate_GiaoThong|MainList|4\" class=\"news-item__sapo\" title=\"Hà Nội: Hàng chục bao bột đá rơi trên cao tốc, 2 xe khách &quot;lĩnh chưởng&quot;\" href=\"/xa-hoi/ha-noi-hang-chuc-bao-bot-da-roi-tren-cao-toc-2-xe-khach-linh-chuong-20201117100607596.htm\">(Dân trí)&nbsp;- Trong quá trình di chuyển trên cao tốc Pháp Vân - Cầu Giẽ, xe đầu kéo làm rơi hàng chục bao tải chứa bột đá xuống mặt đường khiến nhiều phương tiện đi phía sau không kịp xử lý, gây ra tai nạn.</a>', 'https://dantri.com.vn/xa-hoi/ha-noi-hang-chuc-bao-bot-da-roi-tren-cao-toc-2-xe-khach-linh-chuong-20201117100607596.htm', NULL, '<span class=\"news-item__time\">Thứ Ba 17/11/2020 - 10:29</span>', 'tai-nan-tren-cao-toc-phap-van-cau-gie-1605582070061.jpg', NULL, NULL),
(5, 'Tách Luật Giao thông đường bộ: Bộ nào làm cũng phải quan tâm tính hiệu quả', '<a data-utm=\"Cate_GiaoThong|MainList|5\" class=\"news-item__sapo\" title=\"Tách Luật Giao thông đường bộ: Bộ nào làm cũng phải quan tâm tính hiệu quả\" href=\"/xa-hoi/tach-luat-giao-thong-duong-bo-bo-nao-lam-cung-phai-quan-tam-tinh-hieu-qua-20201116131512549.htm\">(Dân trí)&nbsp;- Sáng 16/11, Quốc hội thảo luận tại hội trường về dự án Luật Giao thông đường bộ (sửa đổi). Nhiều đại biểu đã nêu các ý kiến khác nhau về việc có nên tách luật này hay không...</a>', 'https://dantri.com.vn/xa-hoi/tach-luat-giao-thong-duong-bo-bo-nao-lam-cung-phai-quan-tam-tinh-hieu-qua-20201116131512549.htm', NULL, '<span class=\"news-item__time\">Thứ Hai 16/11/2020 - 13:29</span>', 'dai-bieu-nguyen-sy-cuong-1605507117804.jpg', NULL, NULL),
(6, 'Triển khai thi công 2 gói thầu thuộc cao tốc Phan Thiết - Dầu Giây', '<a data-utm=\"Cate_GiaoThong|MainList|6\" class=\"news-item__sapo\" title=\"Triển khai thi công 2 gói thầu thuộc cao tốc Phan Thiết - Dầu Giây\" href=\"/xa-hoi/trien-khai-thi-cong-2-goi-thau-thuoc-cao-toc-phan-thiet-dau-giay-20201116142202399.htm\">(Dân trí)&nbsp;- Sáng 16/11, Thứ trưởng Bộ GTVT Nguyễn Ngọc Đông đã đến dự buổi lễ triển khai 2 gói thầu quan trọng thuộc dự án thành phần đầu tư xây dựng đoạn cao tốc Phan Thiết - Dầu Giây.</a>', 'https://dantri.com.vn/xa-hoi/trien-khai-thi-cong-2-goi-thau-thuoc-cao-toc-phan-thiet-dau-giay-20201116142202399.htm', NULL, '<span class=\"news-item__time\">Thứ Hai 16/11/2020 - 13:00</span>', 'anh-3-1605511132690.jpg', NULL, NULL),
(7, 'Hai nạn nhân tử vong sau va chạm với xe đầu kéo là mẹ con ruột', '<a data-utm=\"Cate_GiaoThong|MainList|7\" class=\"news-item__sapo\" title=\"Hai nạn nhân tử vong sau va chạm với xe đầu kéo là mẹ con ruột\" href=\"/xa-hoi/hai-nan-nhan-tu-vong-sau-va-cham-voi-xe-dau-keo-la-me-con-ruot-20201116112641839.htm\">(Dân trí)&nbsp;- Lực lượng chức năng đã xác định được danh tính 2 nữ nạn nhân trong vụ tai nạn tại điểm giao Đàm Quang Trung với Cổ Linh, quận Long Biên, ngày 15/11, đồng thời xác minh danh tính tài xế xe đầu kéo.</a>', 'https://dantri.com.vn/xa-hoi/hai-nan-nhan-tu-vong-sau-va-cham-voi-xe-dau-keo-la-me-con-ruot-20201116112641839.htm', NULL, '<span class=\"news-item__time\">Thứ Hai 16/11/2020 - 12:00</span>', 'bvcbdfgdfg-1605501009512-1605501891143.jpeg', NULL, NULL),
(8, 'Cấm hành khách mang Macbook Pro 15 inch có pin&#xA0;lithium lên máy bay', '<a data-utm=\"Cate_GiaoThong|MainList|8\" class=\"news-item__sapo\" title=\"Cấm hành khách mang Macbook Pro 15 inch có pin&#xA0;lithium lên máy bay\" href=\"/xa-hoi/cam-hanh-khach-mang-macbook-pro-15-inch-co-pinlithium-len-may-bay-20201116114602639.htm\">(Dân trí)&nbsp;- Cục Hàng không Việt Nam yêu cầu các hãng hàng không phải phát thanh trên tàu bay về việc cấm hành khách mang lên máy bay máy tính Macbook Pro 15 inch có pin lithium bị thu hồi.</a>', 'https://dantri.com.vn/xa-hoi/cam-hanh-khach-mang-macbook-pro-15-inch-co-pinlithium-len-may-bay-20201116114602639.htm', NULL, '<span class=\"news-item__time\">Thứ Hai 16/11/2020 - 11:56</span>', 'cam-macbook-pro-1605501762407.jpg', NULL, NULL),
(9, 'Tai nạn liên hoàn, cao tốc TPHCM - Trung Lương kẹt cứng hơn 10km', '<a data-utm=\"Cate_GiaoThong|MainList|9\" class=\"news-item__sapo\" title=\"Tai nạn liên hoàn, cao tốc TPHCM - Trung Lương kẹt cứng hơn 10km\" href=\"/xa-hoi/tai-nan-lien-hoan-cao-toc-tphcm-trung-luong-ket-cung-hon-10-km-20201116101132805.htm\">(Dân trí)&nbsp;- Vụ tai nạn liên hoàn đã làm cho 3 phương tiện hư hỏng nặng, 2 ô tô bị kẹp ở giữa bẹp dúm, may mắn người ngồi trong xe chỉ bị thương nhẹ. Vụ tại nạn làm kẹt xe kéo dài hơn 10km.</a>', 'https://dantri.com.vn/xa-hoi/tai-nan-lien-hoan-cao-toc-tphcm-trung-luong-ket-cung-hon-10-km-20201116101132805.htm', NULL, '<span class=\"news-item__time\">Thứ Hai 16/11/2020 - 10:18</span>', '12521610611417431529081333557941503159733465-n-1605496193947-1605496585858.jpg', NULL, NULL),
(10, '“Phí bảo trì đường bộ đóng không thiếu một xu mà đường toàn “ổ voi”!”', '<a data-utm=\"Cate_GiaoThong|MainList|11\" class=\"news-item__sapo\" title=\"“Phí bảo trì đường bộ đóng không thiếu một xu mà đường toàn “ổ voi”!”\" href=\"/xa-hoi/phi-bao-tri-duong-bo-dong-khong-thieu-mot-xu-ma-duong-toan-o-voi-20201115181608490.htm\">(Dân trí)&nbsp;- Sau những đợt mưa lũ kéo dài, quốc lộ 1 đoạn qua tỉnh Phú Yên chi chít “ổ gà”, “ổ voi” khiến người tham gia giao thông ngán ngẩm.</a>', 'https://dantri.com.vn/xa-hoi/phi-bao-tri-duong-bo-dong-khong-thieu-mot-xu-ma-duong-toan-o-voi-20201115181608490.htm', NULL, '<span class=\"news-item__time\">Thứ Hai 16/11/2020 - 07:19</span>', '81605438188093-1605485873061.jpg', NULL, NULL),
(11, 'Hà Nội: Va chạm với xe đầu kéo, 2 phụ nữ đi xe máy tử vong', '<a data-utm=\"Cate_GiaoThong|MainList|12\" class=\"news-item__sapo\" title=\"Hà Nội: Va chạm với xe đầu kéo, 2 phụ nữ đi xe máy tử vong\" href=\"/xa-hoi/ha-noi-va-cham-voi-xe-dau-keo-2-phu-nu-di-xe-may-tu-vong-20201115142615871.htm\">(Dân trí)&nbsp;- Vụ tai nạn xảy ra tại khu vực gầm cầu vượt ngã tư đường Cổ Linh, phường Long Biên, quận Long Biên giữa xe đầu kéo chở bê tông và xe máy chở 2 phụ nữ. Vụ việc khiến 2 nữ nạn nhân tử vong.</a>', 'https://dantri.com.vn/xa-hoi/ha-noi-va-cham-voi-xe-dau-keo-2-phu-nu-di-xe-may-tu-vong-20201115142615871.htm', NULL, '<span class=\"news-item__time\">Chủ nhật 15/11/2020 - 17:18</span>', '0-c-3-b-739-cd-3774-ffeb-53-af-7335-b-758-f-88-1605424792500.jpeg', NULL, NULL),
(12, 'Vụ tai nạn trên QL 5A: Bộ Công an chỉ đạo xem xét chất lượng dải phân cách', '<a data-utm=\"Cate_GiaoThong|MainList|13\" class=\"news-item__sapo\" title=\"Vụ tai nạn trên QL 5A: Bộ Công an chỉ đạo xem xét chất lượng dải phân cách\" href=\"/xa-hoi/vu-tai-nan-tren-ql-5-a-bo-cong-an-chi-dao-xem-xet-chat-luong-dai-phan-cach-20201114123241137.htm\">(Dân trí)&nbsp;- Thiếu tướng Nguyễn Duy Ngọc, Thứ trưởng Bộ Công an chỉ đạo Công an Hưng Yên làm rõ nguyên nhân vụ tai nạn, đồng thời xem xét trách nhiệm của cơ quan quản lý bảo trì và khai thác tuyến đường...</a>', 'https://dantri.com.vn/xa-hoi/vu-tai-nan-tren-ql-5-a-bo-cong-an-chi-dao-xem-xet-chat-luong-dai-phan-cach-20201114123241137.htm', NULL, '<span class=\"news-item__time\">Thứ Bảy 14/11/2020 - 13:15</span>', 'gfdgdgdf-1605285218088-1605312462138.jpg', NULL, NULL),
(13, 'TPHCM quyết tâm thực hiện dự án buýt nhanh hơn 140 triệu USD', '<a data-utm=\"Cate_GiaoThong|MainList|14\" class=\"news-item__sapo\" title=\"TPHCM quyết tâm thực hiện dự án buýt nhanh hơn 140 triệu USD\" href=\"/xa-hoi/tphcm-quyet-tam-thuc-hien-du-an-buyt-nhanh-hon-140-trieu-usd-20201114075412297.htm\">(Dân trí)&nbsp;- Sau khi đánh giá tính khả thi, hiệu quả đầu tư, TPHCM xin điều chỉnh tổng mức đầu tư dự án tuyến buýt nhanh (BRT) còn hơn 143 triệu USD, thời gian thực hiện kéo dài thêm 3 năm.</a>', 'https://dantri.com.vn/xa-hoi/tphcm-quyet-tam-thuc-hien-du-an-buyt-nhanh-hon-140-trieu-usd-20201114075412297.htm', NULL, '<span class=\"news-item__time\">Thứ Bảy 14/11/2020 - 09:01</span>', 'dai-lo-vo-van-kiet-1605314830084.jpg', NULL, NULL),
(14, 'Hà Nội: Tìm nhân chứng vụ tai nạn khiến người đàn ông đi xe máy tử vong', '<a data-utm=\"Cate_GiaoThong|MainList|16\" class=\"news-item__sapo\" title=\"Hà Nội: Tìm nhân chứng vụ tai nạn khiến người đàn ông đi xe máy tử vong\" href=\"/xa-hoi/ha-noi-tim-nhan-chung-vu-tai-nan-khien-nguoi-dan-ong-di-xe-may-tu-vong-20201113105919954.htm\">(Dân trí)&nbsp;- Sau va chạm, anh Nguyễn Xuân Đăng (SN 1991, ở Hà Nội) tử vong tại chỗ. Cơ quan điều tra đề nghị người dân có thông tin liên quan hãy liên hệ làm rõ vụ tai nạn này.</a>', 'https://dantri.com.vn/xa-hoi/ha-noi-tim-nhan-chung-vu-tai-nan-khien-nguoi-dan-ong-di-xe-may-tu-vong-20201113105919954.htm', NULL, '<span class=\"news-item__time\">Thứ Sáu 13/11/2020 - 11:43</span>', 'tim-nhan-chung-vu-tai-nan-giao-thong-o-nam-tu-niem-1605239619674.jpg', NULL, NULL),
(15, 'Xe chở rác lật ngửa trên cầu Nhật Tân, tài xế nhập viện cấp cứu', '<a data-utm=\"Cate_GiaoThong|MainList|17\" class=\"news-item__sapo\" title=\"Xe chở rác lật ngửa trên cầu Nhật Tân, tài xế nhập viện cấp cứu\" href=\"/xa-hoi/xe-cho-rac-lat-ngua-tren-cau-nhat-tan-tai-xe-nhap-vien-cap-cuu-20201113091517659.htm\">(Dân trí)&nbsp;- Khi đang di chuyển trên cầu Nhật Tân, hướng đi Sân bay Quốc tế Nội Bài, xe ô tô chở rác thải bất ngờ gặp nạn rồi lật ngửa 4 bánh lên trời. Hậu quả khiến tài xế bị thương phải nhập viện cấp cứu.</a>', 'https://dantri.com.vn/xa-hoi/xe-cho-rac-lat-ngua-tren-cau-nhat-tan-tai-xe-nhap-vien-cap-cuu-20201113091517659.htm', NULL, '<span class=\"news-item__time\">Thứ Sáu 13/11/2020 - 11:30</span>', 'xe-tro-rac-gap-nan-o-cau-nhat-tan-1605233574517.jpg', NULL, NULL),
(16, 'Khách nước ngoài la hét có bom khi máy bay chuẩn bị rời Nội Bài', '<a data-utm=\"Cate_GiaoThong|MainList|18\" class=\"news-item__sapo\" title=\"Khách nước ngoài la hét có bom khi máy bay chuẩn bị rời Nội Bài\" href=\"/xa-hoi/khach-nuoc-ngoai-la-het-co-bom-khi-may-bay-chuan-bi-roi-noi-bai-20201112180645020.htm\">(Dân trí)&nbsp;- Sự việc xảy ra vào trưa nay (12/11) khi chuyến bay BL6011 của Hãng hàng không Pacific Airlines chuẩn bị cất cánh rời Cảng hàng không quốc tế Nội Bài - Hà Nội đi TPHCM.</a>', 'https://dantri.com.vn/xa-hoi/khach-nuoc-ngoai-la-het-co-bom-khi-may-bay-chuan-bi-roi-noi-bai-20201112180645020.htm', NULL, '<span class=\"news-item__time\">Thứ Năm 12/11/2020 - 18:46</span>', 'pacific-airlines-1605179014014.jpeg', NULL, NULL),
(17, 'Ba tác động khi chuyển cấp bằng lái xe từ Bộ Giao thông sang Bộ Công an', '<a data-utm=\"Cate_GiaoThong|MainList|19\" class=\"news-item__sapo\" title=\"Ba tác động khi chuyển cấp bằng lái xe từ Bộ Giao thông sang Bộ Công an\" href=\"/xa-hoi/ba-tac-dong-khi-chuyen-cap-bang-lai-xe-tu-bo-giao-thong-sang-bo-cong-an-20201111185341499.htm\">(Dân trí)&nbsp;- Đó là tác động về biên chế, tổ chức bộ máy; cơ sở vật chất, hạ tầng kỹ thuật; tác động đến người dân.</a>', 'https://dantri.com.vn/xa-hoi/ba-tac-dong-khi-chuyen-cap-bang-lai-xe-tu-bo-giao-thong-sang-bo-cong-an-20201111185341499.htm', NULL, '<span class=\"news-item__time\">Thứ Năm 12/11/2020 - 05:18</span>', 'sat-hach-lai-xe-1605095284916.png', NULL, NULL),
(18, 'Xe khách “đại náo” cầu Sài Gòn, cửa ngõ thành phố ùn tắc nghiêm trọng', '<a data-utm=\"Cate_GiaoThong|MainList|21\" class=\"news-item__sapo\" title=\"Xe khách “đại náo” cầu Sài Gòn, cửa ngõ thành phố ùn tắc nghiêm trọng\" href=\"/xa-hoi/xe-khach-dai-nao-cau-sai-gon-cua-ngo-thanh-pho-un-tac-nghiem-trong-20201111123339806.htm\">(Dân trí)&nbsp;- Đang đổ dốc cầu Sài Gòn thì xe khách bất ngờ lao sang trái tông gãy nhiều đoạn thanh chắn rồi leo lên dải phân cách. Sự cố xảy ra trong giờ cao điểm gây ùn tắc nghiêm trọng.</a>', 'https://dantri.com.vn/xa-hoi/xe-khach-dai-nao-cau-sai-gon-cua-ngo-thanh-pho-un-tac-nghiem-trong-20201111123339806.htm', NULL, '<span class=\"news-item__time\">Thứ Tư 11/11/2020 - 15:00</span>', 'anh-1-4-1605072726401.jpg', NULL, NULL),
(19, 'Chuyển cấp giấy phép lái xe sang Bộ Công an liệu có làm phình bộ máy?', '<a data-utm=\"Cate_GiaoThong|MainList|22\" class=\"news-item__sapo\" title=\"Chuyển cấp giấy phép lái xe sang Bộ Công an liệu có làm phình bộ máy?\" href=\"/xa-hoi/chuyen-cap-giay-phep-lai-xe-sang-bo-cong-an-lieu-co-lam-phinh-bo-may-20201111112302852.htm\">(Dân trí)&nbsp;- Thảo luận về Luật Bảo đảm trật tự, an toàn giao thông, đại biểu Quốc hội đề nghị ban soạn thảo làm rõ việc chuyển cấp giấy phép lái xe từ Bộ GTVT sang Bộ Công an có làm phình bộ máy ngành công an?</a>', 'https://dantri.com.vn/xa-hoi/chuyen-cap-giay-phep-lai-xe-sang-bo-cong-an-lieu-co-lam-phinh-bo-may-20201111112302852.htm', NULL, '<span class=\"news-item__time\">Thứ Tư 11/11/2020 - 14:06</span>', 'nguyenhuquang-1605068493297.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hoangphamminhtri@gmail.com', '$2y$10$sdhnFiDNotiapTNfnPKsqexiwEGz4ZXmG3wubL77qGdzCk3X/GuBi', '2020-12-01 21:42:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_tests`
--

CREATE TABLE `question_tests` (
  `ID` int(10) UNSIGNED NOT NULL,
  `question` mediumtext NOT NULL,
  `option_a` mediumtext NOT NULL,
  `option_b` mediumtext NOT NULL,
  `option_c` mediumtext DEFAULT NULL,
  `option_d` mediumtext DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `driving_tests_id` int(10) UNSIGNED NOT NULL,
  `correct` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `question_tests`
--

INSERT INTO `question_tests` (`ID`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `picture`, `driving_tests_id`, `correct`) VALUES
(1, 'Biển nào cấm người đi bộ ?', 'Biển 1', 'Biển 1 và 3', 'Biển 2', 'Biển 2 và 3', 'cau1.jpg', 1, 'C'),
(2, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ ?', 'Biển 1', 'Biển 3', 'Biển 2', 'Biển 1 và 3', 'cau2.jpg', 1, 'A'),
(3, 'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này ?', 'Biển 1', 'Biển 1 và 3', 'Biển 3', 'Cả ba biển', 'cau3.jpg', 1, 'C'),
(4, 'Biển nào cấm mọi loại xe cơ giới đi vào, trừ xe gắn máy, mô tô 2 bánh và các loại xe ưu tiên theo luật định ?', 'Biển 1', 'Biển 2', 'Biển 1 và 3', 'Cả ba biển', 'cau4.jpg', 1, 'A'),
(5, 'Biển nào cấm ôtô tải ?', '', 'Cả ba biển', 'Biển 2 và 3', 'Biển 1 và 3', 'cau5.jpg', 1, 'D'),
(6, 'Biển nào cấm máy kéo ?', 'Biển 2 và 3', 'Biển 1 và 3', 'Cả ba biển', 'Biển 1', 'cau6.jpg', 1, 'A'),
(7, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm ?', 'Biển 1 và 2', 'Biển 2 và 3', 'Biển 1 ', 'Cả ba biển', 'cau7.jpg', 1, 'B'),
(8, 'Biển nào báo hiệu sắp đến chỗ giao nhau với đường sắt có rào chắn ?', 'Biển 1', 'Biển 2 và 3', 'Biển 3', 'Cả ba biển', 'cau8.jpg', 1, 'A'),
(9, 'Biển nào báo hiệu giao nhau có tín hiệu đèn ?', 'Biển 2', 'Biển 1', 'Biển 3', 'Cả ba biển', 'cau9.jpg', 1, 'C'),
(10, 'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt ?', 'Biển 1 và 3', 'Biển 1 và 2', 'Biển 2 và 3', 'Cả ba biển', 'cau10.jpg', 1, 'A'),
(11, 'Biển nào báo hiệu chú ý chướng ngại vật ?', 'Biển 1', 'Biển 2 và 3', 'Biển 1 và 3', 'Cả ba biển', 'cau11.jpg', 1, 'B'),
(12, 'Biển nào báo hiệu đoạn đường hay xảy ra tai nạn ?', 'Biển 1', 'Biển 2', 'Biển 2 và 3', 'Cả ba biển', 'cau12.jpg', 1, 'B'),
(13, 'Biển số 1 có ý nghĩa gì ?', 'Đi thẳng hoặc rẽ trái trên cầu vượt', 'Đi thẳng hoặc rẽ phải trên cầu vượt', 'Báo hiệu cầu vượt liên thông', 'Đi thẳng trên cầu vượt', 'cau13.jpg', 1, 'C'),
(14, 'Biển nào báo hiệu tuyến đường cầu vượt cắt qua ?', 'Biển 1 và 2', 'Biển 1 và 3', 'Biển 2 và 3', 'Cả ba biển', 'cau14.jpg', 1, 'A'),
(15, 'Biển nào báo hiệu đường hầm ?', 'Cả ba biển', 'Biển 2 và 3', 'Biển 2', 'Biển 1 và 3', 'cau15.jpg', 1, 'C'),
(16, 'Biển nào chỉ dẫn tên đường trên các tuyến đường đối ngoại ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Biển 1 và 2', 'cau16.jpg', 1, 'C'),
(17, 'Biển số 1 có ý nghĩa gì ?', 'Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại', 'Biển chỉ dẫn hết hiệu lực khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe theo giờ trên các tuyến đường đối ngoại', 'cau17.jpg', 1, 'A'),
(18, 'Biển số 3 có ý nghĩa gì ?', 'Biển chỉ dẫn khu vực cấm đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại', 'Biển chỉ dẫn khu vực hạn chế tốc độ tối đa trên các tuyến đường đối ngoại', 'Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại', 'cau18.jpg', 1, 'C'),
(19, 'Biển nào báo hiệu đường có làn đường dành cho ôtô khách ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau19.jpg', 1, 'B'),
(20, 'Biển nào báo hiệu rẽ ra đường có làn đường dành cho ôtô khách ?', 'Biển 1', 'Biển 2', 'Biển 3', 'Cả ba biển', 'cau20.jpg', 1, 'C');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topics`
--

CREATE TABLE `topics` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `topics`
--

INSERT INTO `topics` (`ID`, `Name`, `description`) VALUES
(1, 'An toàn giao thông đô thị', 'An toàn giao thông đô thị.'),
(2, 'An toàn giao thông địa phương', 'An toàn giao thông địa phương.'),
(3, 'Chính sách An toàn giao thông', 'Chính sách An toàn giao thông.'),
(4, 'Chiến lược An toàn giao thông', 'Chiến lược An toàn giao thông.'),
(5, 'Vấn đề chung về An toàn giao thông', 'Vấn đề chung về An toàn giao thông.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `level` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `birthdate`, `level`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'truongan', 'anmaster122@gmail.com', '1999-06-18', 0, NULL, '$2y$10$xP8fcyA2aWiBJ/SxyA9EFeJFNTY61fe4dmxFATk7Gb4.q25jhQnyy', 'DZJsXqKdqOMnOIPajznCLBdnrzJjbZpemo2ogpoEFJZfntUkXxLqijPY4ZxA', '2020-11-02 22:09:02', '2020-11-02 22:09:02'),
(2, 'truongan1', '1751010001an@ou.edu.vn', '1999-06-18', 1, NULL, '$2y$10$.aOJWBoLC4.RHNdTruxvD.6cVUNixmjejRCFIXobR6xb2RN4l2xf2', 'dvLyg7iPjPTFNrWaWaRnsjvAKuel1zBC1fAzLK6Rf0Kr7GHZHbPqCxdOKRDl', '2020-11-04 11:37:33', '2020-11-04 11:37:33'),
(3, 'Tri Hoang', 'hoangphamminhtri@gmail.com', '2020-11-05', 1, NULL, '$2y$10$.T5GBSmFTttmBeKaQUtEC./vMxGnqf9235xWjTi6PirJQ081.cza.', 'Q0H63BDHW1z8ZTfNp3GFbtpjNSAaNCcmT5wUxqkVPvYIOTE4VjRfatwJbc6c', '2020-11-09 19:18:38', '2020-11-09 19:18:38'),
(4, 'Tri Hoang', '1751010168tri@ou.edu.vn', '2020-12-12', 0, NULL, '$2y$10$o1DIa5irIUJuctGZ454LFemC5GsiEW8cQA/g4wey0B5C7MBr4ljgm', '9HvHyi3i7U5za7C7MBOZHRYcL4ZcUoS3tgWDyDQjZJeRnEVDXidR3l6HDmj4', '2020-12-12 09:49:22', '2020-12-12 09:49:22');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `a1_license`
--
ALTER TABLE `a1_license`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `driving_tests_id` (`driving_tests_id`);

--
-- Chỉ mục cho bảng `a2_license`
--
ALTER TABLE `a2_license`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `driving_tests_id` (`driving_tests_id`);

--
-- Chỉ mục cho bảng `b1_license`
--
ALTER TABLE `b1_license`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `driving_tests_id` (`driving_tests_id`);

--
-- Chỉ mục cho bảng `b2_license`
--
ALTER TABLE `b2_license`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `driving_tests_id` (`driving_tests_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `driving_licenses`
--
ALTER TABLE `driving_licenses`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `driving_tests`
--
ALTER TABLE `driving_tests`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `driving_licenses_id` (`driving_licenses_id`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `comments_id` (`comments_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `topics_id` (`topics_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `question_tests`
--
ALTER TABLE `question_tests`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `driving_tests_id` (`driving_tests_id`);

--
-- Chỉ mục cho bảng `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `a1_license`
--
ALTER TABLE `a1_license`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `a2_license`
--
ALTER TABLE `a2_license`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `b1_license`
--
ALTER TABLE `b1_license`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `b2_license`
--
ALTER TABLE `b2_license`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `driving_licenses`
--
ALTER TABLE `driving_licenses`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `driving_tests`
--
ALTER TABLE `driving_tests`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `question_tests`
--
ALTER TABLE `question_tests`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `topics`
--
ALTER TABLE `topics`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `a1_license`
--
ALTER TABLE `a1_license`
  ADD CONSTRAINT `a1_license_ibfk_1` FOREIGN KEY (`driving_tests_id`) REFERENCES `driving_tests` (`ID`);

--
-- Các ràng buộc cho bảng `a2_license`
--
ALTER TABLE `a2_license`
  ADD CONSTRAINT `a2_license_ibfk_1` FOREIGN KEY (`driving_tests_id`) REFERENCES `driving_tests` (`ID`);

--
-- Các ràng buộc cho bảng `b1_license`
--
ALTER TABLE `b1_license`
  ADD CONSTRAINT `b1_license_ibfk_1` FOREIGN KEY (`driving_tests_id`) REFERENCES `driving_tests` (`ID`);

--
-- Các ràng buộc cho bảng `b2_license`
--
ALTER TABLE `b2_license`
  ADD CONSTRAINT `b2_license_ibfk_1` FOREIGN KEY (`driving_tests_id`) REFERENCES `driving_tests` (`ID`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`ID`),
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `driving_tests`
--
ALTER TABLE `driving_tests`
  ADD CONSTRAINT `driving_tests_ibfk_1` FOREIGN KEY (`driving_licenses_id`) REFERENCES `driving_licenses` (`ID`);

--
-- Các ràng buộc cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`comments_id`) REFERENCES `comments` (`ID`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`topics_id`) REFERENCES `topics` (`ID`);

--
-- Các ràng buộc cho bảng `question_tests`
--
ALTER TABLE `question_tests`
  ADD CONSTRAINT `question_tests_ibfk_1` FOREIGN KEY (`driving_tests_id`) REFERENCES `driving_tests` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
