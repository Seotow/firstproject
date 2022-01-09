-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2022 at 07:31 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firstproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `time_ordered` datetime NOT NULL,
  `receiver_name` varchar(50) NOT NULL,
  `receiver_phone` varchar(15) NOT NULL,
  `receiver_address` varchar(200) NOT NULL,
  `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(18, 'Bách Hóa Online'),
(13, 'Giày Dép Nam'),
(12, 'Giày Dép Nữ'),
(9, 'Máy Ảnh & Máy Quay Phim'),
(7, 'Máy Tính & Laptop'),
(4, 'Mẹ & Bé'),
(35, 'Nguyễn Trung Hiếu'),
(6, 'Nhà Cửa & Đời Sống'),
(20, 'Nhà Sách Online'),
(19, 'Ô Tô & Xe Máy & Xe Đạp'),
(16, 'Phụ Kiện & Trang Sức Nữ'),
(8, 'Sắc Đẹp'),
(10, 'Sức Khỏe'),
(17, 'Thể Thao & Du Lịch'),
(15, 'Thiết Bị Điện Gia Dụng'),
(5, 'Thiết Bị Điện Tử'),
(1, 'Thời Trang Nam1111'),
(2, 'Thời Trang Nữ'),
(14, 'Túi Ví Nữ'),
(3, 'Điện Thoại & Phụ Kiện'),
(11, 'Đồng Hồ');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` bit(1) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `birthdate`, `email`, `password`) VALUES
(1, 'Nguyễn Trung Hiếu', NULL, NULL, 'nguyenhieu@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `details_bills`
--

CREATE TABLE `details_bills` (
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`) VALUES
(19, 'Appled'),
(2, 'Appleđ'),
(8, 'CD project Blue'),
(9, 'Lokia'),
(18, 'Nguyen Hieu'),
(15, 'Nguyễn Trung Hiếu'),
(17, 'Nguyễn Trung Hiếu1'),
(7, 'Rito'),
(4, 'Samsung'),
(6, 'Tencent'),
(5, 'Tesla'),
(1, 'Thời Trang Nam1'),
(3, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `manufacturer_id`, `category_id`) VALUES
(2, 'Essential Sweater oversize', '', '1640438987448.jpg', 258530, 3, 1),
(3, 'Ví Nam Da Thật 100% 1', '', '1640438987476.jpg', 622905000, 2, 1),
(4, 'Quần Lót Nam Boxer thun lạnh cao cấp', '', '1640438987478.jpg', 461981, 2, 1),
(5, 'Áo khoác nỉ nam áo hoodie nữ Chuột Stitch cao cấp phối đồ cực đẹp SooMin KNN03', '', '1640438987480.jpg', 872610, 4, 1),
(6, 'Combo 2 chiếc quần boxer Nhật Thun lạnh Thông hơi (có size lớn)', '', '1640438987481.jpg', 649382, 7, 1),
(7, 'Khăn mùi xoa nam / khăn tay nam cao cấp Christian Hàn Quốc', '', '1640438987483.jpg', 213468, 2, 1),
(8, 'Ví Nam Da Bò Thật 100% Cao Cấp Siêu Bền ', '', '1640438987484.jpg', 177269, 5, 1),
(9, 'Quần Short Dispersal Nam - Q01-06 ProbeeShop', '', '1640438987486.jpg', 678090, 7, 1),
(10, 'áo nỉ Hoodie Drew house mặt cười Hogoto shop ', '', '1640438987487.jpg', 162619, 4, 1),
(11, 'Ví Sen Da Bò Cao Cấp Nam Nữ Siêu Chất Bền Đẹp ', '', '1640438987489.jpg', 675476, 2, 1),
(12, 'Kính cường lực iPad Air 1/2/3/4', '', '1640438987491.jpg', 50183, 3, 3),
(13, 'Tai Nghe Bluetooth 5.0 Amoi F9 Pro Không Dây Nút Cảm Ứng Kiêm Sạc Pin Dự Phòng | F9 PRO thanhlam68 hhbt27', '', '1640438987493.jpg', 964256, 7, 3),
(14, 'Cáp Sạc rút tròn đa năng 3 Đầu', '', '1640438987495.jpg', 241181, 4, 3),
(15, 'Bộ Sạc Nhanh Iphone 20w❤️FREESHIP❤️Củ Sạc Iphone USB-C To Lightning Sử Dụng Cho Máy 8/8P/X/XS/11/11Pro/12/12 Pro Max', '', '1640438987496.jpg', 384192, 5, 3),
(16, 'DMST Miếng dán pin 18650 bảo vệ cực dương', '', '1640438987499.jpg', 45863, 4, 3),
(17, 'Vỏ Bảo Vệ Bao Đựng Hộp Sạc Tai Nghe', '', '1640438987500.jpg', 914855, 3, 3),
(18, 'Phụ Kiện Nút Bảo Vệ Đầu Dây Cáp Sạc / Tai Nghe Tiện Dụng Chất Lượng Cao', '', '1640438987502.jpg', 343323, 4, 3),
(19, 'Dây Đeo Thẻ Đa Năng Hoạ Tiết Hoạt Hình Đáng Yêu', '', '1640438987503.jpg', 245825, 4, 3),
(20, 'Móc treo phụ kiện điện thoại cài hộp inox 15*30mm D1 - hàng YON', '', '1640438987505.jpg', 954025, 2, 3),
(21, 'Dây đeo điện thoại bằng Polyester đa năng chống thất lạc có thể tháo rời', '', '1640438987507.jpg', 119966, 6, 3),
(22, 'Đồ Bộ Cao Cấp - bộ ngủ pijama bò sữa nữ lụa mango hàng cao cấp vải mềm mịn chất mát thiết kế thời trang mặc mùa hè ở nhà', '', '1640438987508.jpg', 446327, 8, 2),
(23, 'Bộ Đồ Ngủ Nữ Lụa - Đồ Bộ Nữ Pijama Mặc Nhà', '', '1640438987510.jpg', 481615, 6, 2),
(24, 'Quần bò baggy nữ quần jean baggy nữ quần jeans nữ lưng cao chất đẹp Top xu hướng 2021 - HAPONO-J012', '', '1640438987511.jpg', 953631, 3, 2),
(25, 'Áo Nỉ Thu Đông Nữ Đẹp Free Ship Toàn Quốc', '', '1640438987513.jpg', 516493, 8, 2),
(26, 'Quần jeans ống rộng gài eo Ulzzang Unisex Kanimi', '', '1640438987514.jpg', 104466, 9, 2),
(27, 'Áo Gile Len Thời Trang', '', '1640438987515.jpg', 98024, 7, 2),
(28, 'Set Đồ Nữ', '', '1640438987517.jpg', 629460, 4, 2),
(29, 'Áo Gile Len Nữ Kiểu Dáng Hàn Quốc', '', '1640438987518.jpg', 537269, 4, 2),
(30, '[Ảnh+Video thật] Áo Bomber Chữ G Xanh Phong Cách Cá Tính Unisex Kèm Ảnh Thật Cận Chất', '', '1640438987520.jpg', 905682, 5, 2),
(31, '[Sỉ] Áo mưa măng tô 1 người họat hình kakao talk cute dễ thương thái lan', '', '1640438987521.jpg', 523166, 8, 2),
(42, 'Ống hút sữa tiệt trùng mỹ (Biologix)', '', '1640438987522.jpg', 569490, 7, 4),
(43, 'Sỉ đầu bông giấy nhún', '', '1640438987524.jpg', 796385, 8, 4),
(44, '[MUA 1 TẶNG 1] Siro Ăn Ngon BABYPLUS Cho Trẻ Biếng Ăn', '', '1640438987525.jpg', 322431, 1, 4),
(45, 'Máy hút sữa điện đôi Real bubee tặng kèm máy hâm sữa cao cấp(an toàn cho bé)', '', '1640438987526.jpg', 741497, 8, 4),
(46, 'Ghế ngồi xe đạp cho bé', '', '1640438987529.jpg', 508934, 9, 4),
(47, 'Khay úp bình sữa núm vú hình cây cao cấp vệ sinh an toàn cho bé DS01', '', '1640438987530.jpg', 312644, 7, 4),
(48, '[KÈM DEAL 0Đ] XE TRÒN TẬP ĐI CHO BÉ THAY ĐỔI ĐỘ CAO', '', '1640438987531.jpg', 724384, 6, 4),
(49, 'chậu tắm ếch cho bé (có van thoát nước)85×50cm', '', '1640438987533.jpg', 819188, 4, 4),
(50, 'Bột Daishi Pigeon 5m+', '', '1640438987534.jpg', 159308, 4, 4),
(51, 'Xe đẩy du lịch cho bé', '', '1640438987536.jpg', 311834, 6, 4),
(52, '[chính hãng giá rẻ] Bộ MICRO livestream Icon Upod Pro Micro và mic thu âm Takstar PC-K200', '', '1640438987537.jpg', 208187, 1, 5),
(53, '[tặng tai nghe chính hãng] Bộ livestream K300 model 2021 Micro thu âm ISK AT100', '', '1640438987538.jpg', 604251, 9, 5),
(54, 'Cục lọc chống Nhiễu hàng rã máy. 589nhattao', '', '1640438987540.jpg', 690654, 4, 5),
(55, '[TẶNG TAI NGHE VÀ DÂY LIVESTREAM] Micro thu âm livestream C11- Phiên bản nâng cấp - bắt xa 3m', '', '1640438987541.jpg', 220630, 6, 5),
(56, 'Tai Nghe Bluetooth Chính Hãng I12 Không Dây Nhét Tai Phụ Kiện Tai Nghe Điện Thoại IOS Và Android Hoaianshop29', '', '1640438987542.jpg', 281586, 7, 5),
(57, 'SÒ ÂM THANH KTB688 CHÍNH HÃNG KEC THÁO MÁY LƯNG ĐỒNG CHÂN DÀI', '', '1640438987544.jpg', 211892, 4, 5),
(58, '[VN] Áo thẻ SD2Vita Pro 6.0 cho PS Vita psvita psv', '', '1640439034955.jpg', 594820, 4, 5),
(59, 'Tai Nghe Bluetooth 5.0 i12 TWS - Cảm Biến Vân Tay', '', '1640439034980.jpg', 515148, 8, 5),
(60, 'Giá đỡ mic C7 C11 at 100 Bm 900 rất chắc chắn', '', '1640439034982.jpg', 605565, 1, 5),
(61, 'Loa Bluetooth Mini Earldom XDHE-005 Thiết kế độc đáo âm thanh sống động', '', '1640439034983.jpg', 592393, 8, 5),
(62, '[Thiệp đẹp] Tấm card chúc mừng sinh nhật', '', '1640439034985.jpg', 568021, 4, 6),
(63, 'Biến Trở Tam Giác WH-06-2', '', '1640439034986.jpg', 639406, 9, 6),
(64, 'Móc Dán Tường Siêu Dính Trong Suốt Chịu Lực Tốt Treo Tường Chắc Chắn 6x6 cm', '', '1640439034988.jpg', 819199, 9, 6),
(65, 'Thìa Thép Không Gỉ Tay Cầm Silicon Hình Thú Hoạt Hình 🍀 Clovershop68 🍀', '', '1640439034990.jpg', 62784, 8, 6),
(66, 'Khoá giọt lệ loại 25cm', '', '1640439034991.jpg', 872299, 5, 6),
(67, 'Công tắc bập bênh 2 chân 2 nấc (On/ Off)', '', '1640439034993.jpg', 333345, 4, 6),
(68, 'Jack cắm đầu cắm đuôi DC cái 5.5*2.1 DC022B', '', '1640439034995.jpg', 819811, 8, 6),
(69, 'Thiết bị đo áp suất WH148 B1K 2K 5K 10K 20K 50K 100K 250K 500K 1M 15MM 3PIN WH148 chất lượng cao', '', '1640439034996.jpg', 769962, 7, 6),
(70, 'Chậu nhựa ĐỎ C9 (20x16 cm) trồng hoa Tết', '', '1640439034998.jpg', 764032, 4, 6),
(71, 'Nơ rút trang trí bản to 5cm', '', '1640439034999.jpg', 16712, 8, 6),
(72, 'JACK DC Cái 5.5*2.1mm', '', '1640439035002.jpg', 490857, 2, 7),
(73, 'Dây Nguồn có Jack DC 5.5*2.1mm', '', '1640439035003.jpg', 776575, 9, 7),
(74, 'Giấy in Hóa Đơn in Bill K58 K58x45 - Giấy in nhiệt khổ K57 - 57mm dùng cho máy POS bán hàng', '', '1640439035005.jpg', 59019, 5, 7),
(75, 'Combo Fan mod VGA (combo 2 fan vs 1 zac cắm vào vga)', '', '1640439035006.jpg', 20470, 8, 7),
(76, 'Switch Gateron KS-8 | Gateron RGB SMD KS-9 dùng cho Bàn Phím Cơ (3 pin)| Gateron Yellow', '', '1640439035008.jpg', 871406, 3, 7),
(77, 'Switch Outemu dùng cho bàn phím cơ', '', '1640439035010.jpg', 287702, 7, 7),
(78, 'Pin khuy cúc áo CR1220 3V Lithium maxcell chính hãng', '', '1640439035011.jpg', 120546, 2, 7),
(79, 'Dây Cáp tín hiệu SATA 3-6G/S mới hàng zin theo main', '', '1640439035012.jpg', 438442, 5, 7),
(80, 'Đi ốt Diode chỉnh lưu rectifier 1000V 10A 20A MIC', '', '1640439035014.jpg', 927090, 5, 7),
(81, 'Cáp đồng trục liền nguồn loại tốt', '', '1640439035016.jpg', 800509, 5, 7),
(82, 'hoa bột nail xả kho', '', '1640439035017.jpg', 760466, 6, 8),
(83, 'Đầu Kim nano xanh lắp máy dr.pen', '', '1640439035019.jpg', 172177, 8, 8),
(84, 'Phụ Khoa Thảo Dược cho bà bầu - Nấm Ngứa phụ nữ mang bầu', '', '1640439035020.jpg', 378209, 1, 8),
(85, 'Cốc Nguyệt San Tulip Cup 100% Silicone Y Tế Cao cấp Siêu Mềm', '', '1640439035022.jpg', 655559, 3, 8),
(86, 'Xịt tan mỡ nano J.Plus Đan Trường', '', '1640439035024.jpg', 133557, 6, 8),
(87, 'Dầu Gội', '', '1640439035025.jpg', 235419, 5, 8),
(88, 'Dầu xả cao cấp HACHI VIETNAM Cascade 480g xanh ngọc Tinh chất bạc hà dầu Oliu liên kết cấu trúc tóc', '', '1640439035026.jpg', 373670, 2, 8),
(89, '[CHÍNH HÃNG] Tinh Chất Dài Mi Mọc Tóc Dr Hair Zenpali 10ml(𝐌𝐇.𝐏𝐞𝐫𝐟𝐮𝐦𝐞Ⓜ)', '', '1640439035028.jpg', 188789, 8, 8),
(90, 'Combo dầu gội dầu xả TRÀ XANH - dành cho tóc dầu - HACHI - Khắc phục tình trạng dư thừa dầu chiết xuất tự nhiên', '', '1640439035029.jpg', 393077, 9, 8),
(91, 'Máy Cạo Râu [INVESTER.OFFICIAL] Máy Cạo Râu FLYCO FS318 Chống Nước & Chống kẹt Râu Thông Minh', '', '1640439035030.jpg', 238774, 8, 8),
(102, 'Jack DC đực - cái vặn ốc', '', '1640439035033.jpg', 977197, 3, 9),
(103, 'Thẻ ghi hình lưu trữ đám mây dành cho các dòng camera yoosee hỗ trợ lưu trữ đám mây VÀ CÁC LOẠI THẺ NHỚ 16/32/64GB', '', '1640439035034.jpg', 589714, 2, 9),
(104, '[Rẻ vô địch]Gậy sạc dự phòng Ulanzi BG-4 5000mah choGoPro 9/8/7 action cam điện thoại', '', '1640439035035.jpg', 871606, 4, 9),
(105, 'Giắc XT60', '', '1640439035037.jpg', 107096, 6, 9),
(106, 'Vít Khóa Nhựa GoPro - Vít Khoá Thép GoPro - GoPro101 - inoxnamkim', '', '1640439035038.jpg', 572661, 4, 9),
(107, 'Dây Sino liền nguồn', '', '1640439035040.jpg', 836233, 4, 9),
(108, '(16 Màu Kèm Remote)Đèn LiveStream Trợ Sáng Chụp Hình Cầu Vồng', '', '1640439035041.jpg', 740256, 1, 9),
(109, '(16 Màu Kèm Remote) Đèn Led Hoàng Hôn LiveSteam', '', '1640439035042.jpg', 213967, 4, 9),
(110, 'Đèn LiveSteam Trợ Sáng Tiktok 16 Màu Kèm Remote', '', '1640439035044.jpg', 141228, 7, 9),
(111, 'Đèn Led Hỗ Trợ Quay Phim Dvft-96 Cho Máy Ảnh Canon Nikon Minolta', '', '1640439035045.jpg', 235670, 3, 9),
(142, 'CỒN 70 ĐỘ BIDOPHA - CHAI 1000 ml- rửa tay', '', '1640439035046.jpg', 864903, 5, 10),
(143, 'Bỉm người già', '', '1640439035047.jpg', 962558, 2, 10),
(144, 'Viên Sủi Giảm Cân BODY BEAUTY SLIM CHÍNH HÃNG', '', '1640439035049.jpg', 204518, 4, 10),
(145, 'Tai Nghe Y Tế', '', '1640439035050.jpg', 361616, 6, 10),
(146, 'Khẩu trang y tế trẻ em', '', '1640439035051.jpg', 198188, 6, 10),
(147, 'Túi Sưởi Ấm Chân Tay Mini Hình Thú Nhiều Mẫu', '', '1640439035053.jpg', 974258, 8, 10),
(148, 'Khẩu trang y tế 4 lớp ', '', '1640439065398.jpg', 103072, 5, 10),
(149, 'Khẩu trang y tế', '', '1640439065424.jpg', 555163, 8, 10),
(150, 'Khẩu trang y tế 3 lớp ', '', '1640439065426.jpg', 7846, 2, 10),
(151, 'Khẩu trang y tế trẻ', '', '1640439065427.jpg', 706214, 5, 10),
(152, 'Đồng Hồ Nữ Đeo Tay Cao Cấp', '', '1640439065429.jpg', 618162, 2, 11),
(153, 'Đồng hồ nữ đeo tay BURBERRY cao cấp thời trang đẹp dây thép không gỉ bảo hành 12 tháng freeship -DHN15', '', '1640439065431.jpg', 224560, 7, 11),
(154, 'Pin đồng hồ đeo tay ', '', '1640439065432.jpg', 974532, 9, 11),
(155, 'Đồng Hồ Đeo Tay Nữ Dây Kim Loại', '', '1640439065434.jpg', 264875, 1, 11),
(156, 'Đồng Hồ Nữ Đeo Tay Thời Trang Bolun Dây Da Mặt Tròn', '', '1640439065435.jpg', 600082, 6, 11),
(157, 'Đồng hồ nữ đeo tay đẹp VERSACE thời trang cao cấp dây thép không gỉ chống nước bảo hành 12 tháng - DHN 17', '', '1640439065437.jpg', 723447, 6, 11),
(158, 'Móc khóa mô hình máy ảnh phát sáng', '', '1640439065439.jpg', 108577, 5, 11),
(159, 'Đồng Hồ Nữ Đeo Tay Versace Dây Cao Su Silicon Nhiều Màu Đẹp Mềm', '', '1640439065441.jpg', 86930, 4, 11),
(160, 'Đồng hồ nam op đẳng cấp phái mạnh chính hãng nhật [BH 12 THÁNG 1 ĐỔI 1]', '', '1640439065442.jpg', 34569, 1, 11),
(161, 'Vỏ hộp đồng hồ đen bán từ 30 hộp', '', '1640439065444.jpg', 585514, 3, 11),
(162, 'Hộp Catong bảo vệ box giày', '', '1640439065446.jpg', 156138, 9, 12),
(163, 'Giày Jodan Xám Thấp Cổ Hàng Cao Cấp', '', '1640439065448.jpg', 46661, 2, 12),
(164, 'Giày Nike Hồng Cổ Thấp', '', '1640439065450.jpg', 878591, 3, 12),
(165, 'Giày Nữ Chiến Binh Cao Cổ - Bốt Kéo Khóa Thời Trang cá tính', '', '1640439065451.jpg', 246408, 5, 12),
(166, 'Giày Cao Cổ Nữ - Bốt Chiến Binh HOTTREND buộc dây', '', '1640439065453.jpg', 981407, 4, 12),
(167, 'Giày Jordan Xanh Than Cao Cổ Hot Full Size', '', '1640439065454.jpg', 499828, 4, 12),
(168, 'Giày MLB LA Nam Nữ', '', '1640439065456.jpg', 12105, 2, 12),
(169, 'Giày Thể Thao Nữ Cổ Thấp Giày Nike Air Jordan 1 JD1 Low Hồng Vảy Sơn Full Box Bill', '', '1640439065457.jpg', 37159, 6, 12),
(170, 'GiàyThể Thao Jodan 1 Pari Gót Xanh', '', '1640439065459.jpg', 400840, 1, 12),
(171, 'Giày MLB NY Nam Nữ', '', '1640439065460.jpg', 284629, 6, 12),
(201, 'Giày Mc Queen MCQ Nam Nữ Trắng Cổ Thấp Gót Nỉ Đen Đế Khâu Bản Trung Full Box Bill', '', '1640439065462.jpg', 665364, 9, 13),
(202, 'Giày JD1 Cổ Thấp Cam Đen Giá Rẻ', '', '1640439065463.jpg', 539712, 4, 13),
(203, '[Ảnh+Video tGiày thế thao Sneakers nam nữ', '', '1640439065464.jpg', 38409, 3, 13),
(204, '[FREE SHIP] giày thể thao puma trắng full ', '', '1640439065466.jpg', 275491, 4, 13),
(205, 'Giày Jordan Panda Bản CHuẩn Cao Cổ Full Box', '', '1640439065467.jpg', 507796, 2, 13),
(206, '[TỐP BÁN CHẠY] (Ảnh thật) Dép quai ngang nam mochi siêu đẹp - mẫu dép đẹp 2021', '', '1640439065468.jpg', 462355, 8, 13),
(207, 'Dép Lê Nữ ⚡𝑭𝑹𝑬𝑬 𝑺𝑯𝑰𝑷⚡ Dép Chữ H thời trang đế bệt quai ngang Hottrend phối đồ cực đỉnh', '', '1640439065470.jpg', 734122, 1, 13),
(208, 'Giày Thể Thao Nam Nữ Jordan JD1 Xám Cổ Thấp Gót Thêu Chỉ Đỏ Full Box', '', '1640439065471.jpg', 530086, 3, 13),
(209, 'Giày Thể Thao Nam Nữ Jordan JD1 Low Cam Đen Cổ Thấp', '', '1640439065472.jpg', 387853, 4, 13),
(210, 'Giày Jordan Xanh Dương Thấp Cổ Full Size 36 - 43', '', '1640439065474.jpg', 4656, 3, 13),
(211, 'Dây giầy phát sáng 1m (1 đôi - đọc HDSD) 🍉Duashop🍉', '', '1640439065476.jpg', 528597, 4, 13),
(212, 'Giày thế thao ML B _ NY vàng Nam/Nữ Bản Chuẩn Đế Tà.u', '', '1640439065477.jpg', 979983, 1, 13),
(213, 'Giày Jordan Panda Nam Nữ Thấp Cổ', '', '1640439065478.jpg', 137501, 5, 13),
(214, 'GiàyThể Thao', '', '1640439065480.jpg', 217380, 2, 13),
(215, 'Giày Jordan Milan Cổ Thấp', '', '1640439065481.jpg', 498378, 5, 13),
(216, 'Dép Xỏ Ngón Unisex EBET EB1509427 - Động lực', '', '1640439065483.jpg', 262654, 4, 13),
(217, 'Giày Thể Thao Jordan 1 Hồng Cao Cổ Full Size Nữ', '', '1640439065484.jpg', 651724, 9, 13),
(218, 'Giày Jordan Đen Trắng', '', '1640439065485.jpg', 449027, 4, 13),
(219, 'Giày JD Xám Cổ Thấp ', '', '1640439065486.jpg', 403594, 9, 13),
(220, 'Giày Jordan Cổ Thấp Nữ', '', '1640439065488.jpg', 808927, 6, 13),
(221, '[ Combo 2 đôi ] Tất Vớ Gấu Xinh Brown Dễ Thương Siêu Hot', '', '1640439065489.jpg', 578187, 8, 13),
(222, '[TỐP BÁN CHẠY] Dép nam đính hổ quai đính đá mới nhất 2021 - Dép nam PLP chất', '', '1640439065490.jpg', 568220, 3, 13),
(223, 'Giày', '', '1640439065492.jpg', 654634, 3, 13),
(224, 'Giày Thể Thao Nike_Gucci', '', '1640439065493.jpg', 340829, 9, 13),
(225, 'Giày Thể Thao Nam Nữ Jordan JD1 Xám Cổ Cao Hang Cao Cấp Cực Chất', '', '1640439065494.jpg', 436459, 1, 13),
(226, 'Balo Ulzzang Nam Nữ Basic Hàn Quốc Dễ Thương', '', '1640439065496.jpg', 292562, 3, 14),
(227, 'Balo Degrey Basic Nhiều Ngăn Đen Trắng', '', '1640439078424.jpg', 423151, 4, 14),
(228, '(1 cái) Vỏ bọc đựng thẻ ATM', '', '1640439078470.jpg', 79781, 8, 14),
(229, 'Balo Ulzzang Hàn Quốc Basic Đen', '', '1640439078472.jpg', 794242, 4, 14),
(230, 'Balo Đi Học Thời Trang Ulzzang Basic Nhiều Ngăn', '', '1640439078474.jpg', 471844, 4, 14),
(231, 'Balo Ulzzang Nam Nữ Đen Basic Nhiều Ngăn', '', '1640439078476.jpg', 751734, 4, 14),
(232, '[8 MÀU] Ví Nữ Mini Ngắn Cầm Tay Phong Cách Hàn Quốc TVNN172', '', '1640439078478.jpg', 201125, 2, 14),
(233, '30mm Khoen tròn Khoen vòng mở inox', '', '1640439078479.jpg', 529333, 7, 14),
(234, 'Túi xách tay nữ thời trang', '', '1640439078481.jpg', 728551, 3, 14),
(235, 'TMU hành trình A PLĐC', '', '1640439078483.jpg', 691249, 4, 14),
(256, 'Máy ép chậm Gesun G500 chính hãng - máy ép trái cây', '', '1640439078485.jpg', 403000, 5, 15),
(257, 'Công tắc Quạt Thông Gió 💎Dây Đồng 100%💎 Quạt Hút Mùi Nhà Vệ Sinh ', '', '1640439078487.jpg', 705305, 6, 15),
(258, '[Chính hãng-Lỗi 1 đổi 1] Lò vi sóng Sharp cơ R205VN 20 lít | R20A1-S 22 lít 800W (Mới 100%', '', '1640439078489.jpg', 321998, 4, 15),
(259, 'Máy Thổi Bụi Cầm Tay- Máy thổi bụi mini Công Suất Lớn Cao Cấp', '', '1640439078490.jpg', 997714, 4, 15),
(260, 'Máy Khâu Mini Gia Đình 2 Tốc Độ Có Đèn Led Cắt Chỉ', '', '1640439078492.jpg', 657349, 4, 15),
(261, 'Quạt sưởi ấm đa năng 2 chiều tiết kiệm điện - Máy Sưởi Ấm - Đèn Sưởi Ấm', '', '1640439078495.jpg', 586309, 4, 15),
(262, '[Freeship - Chính Hãng] Đèn sưởi nhà tắm FUJI POVA công nghệ Nhật Bản sưởi ấm nhanh', '', '1640439078497.jpg', 848430, 5, 15),
(263, 'Quạt Sưởi Ấm 2 Chế Độ Tiết Kiệm Điện - Máy Sưởi Ấm Thông Minh', '', '1640439078498.jpg', 927090, 3, 15),
(264, 'Quạt sưởi ấm đa năng mùa đông 2 chiều', '', '1640439078500.jpg', 972203, 2, 15),
(265, 'Quạt sưởi ấm đa năng 2 chiều tiết kiệm  - Máy Sưởi Ấm - Đèn Sưởi Ấm', '', '1640439078502.jpg', 637354, 4, 15),
(286, 'Kính chống giọt bắn bảo hộ phòng dịch faceshield cao cấp cho bé cho người lớn TODOCO 01', '', '1640439078503.jpg', 94568, 6, 16),
(287, 'Nước ngâm áp tròng Hàn Quốc chính hãng rửa lens', '', '1640439078505.jpg', 945605, 3, 16),
(288, 'Bao Da Đựng Mắt Kính Điện Thoại', '', '1640439078506.jpg', 672141, 3, 16),
(289, 'Khuyên tàng hình', '', '1640439078508.jpg', 4687, 4, 16),
(290, '100 chiếc Túi zip mini đựng đá trang sức', '', '1640439078509.jpg', 429653, 7, 16),
(291, 'Găng tay chống nắng xỏ ngón Let Slim chống tia UV', '', '1640439078511.jpg', 512105, 3, 16),
(292, ' Chuyên Sỉ  Tấm chắn chống giọt bắn trong suốt nhựa PET - Face Shield Mask', '', '1640439078512.jpg', 573444, 1, 16),
(293, 'Kính che mặt trong suốt', '', '1640439078514.jpg', 463677, 7, 16),
(294, 'Khăn mùi xoa nam / khăn tay nam cao cấp ', '', '1640439078515.jpg', 195535, 8, 16),
(295, 'Kim Cương Nhân Tạo Moissanite 5.4mm', '', '1640439078517.jpg', 798627, 4, 17),
(296, 'Giày bóng chuyền', '', '1640439078518.jpg', 869837, 3, 17),
(297, 'Quả bóng golf bọt biển màu cầu vồng nổi bật S3I6', '', '1640439078520.jpg', 372352, 8, 17),
(298, 'Cuốn cán vợt vây cá chính hãng', '', '1640439078521.jpg', 998750, 2, 17),
(299, 'Chai nhựa pet chiết mỹ phẩm xịt phun sương 50ml/100ml/30ml/20ml/10ml đựng nước hoa', '', '1640439078522.jpg', 932278, 1, 17),
(300, '[5ml/10ml] Lọ đựng tinh dầu bóp giọt Khoen vàng chiết mỹ phẩm', '', '1640439078524.jpg', 332836, 2, 17),
(301, 'Lót nón mũ bảo hiểm HÚT MỒ HÔI vừa với nhiều cỡ đầu mẫu mới 2021', '', '1640439078525.jpg', 902530, 6, 17),
(302, 'Lưới chắn sân golf ', '', '1640439078528.jpg', 370618, 4, 17),
(303, 'Bóng Golf', '', '1640439078529.jpg', 328344, 7, 17),
(304, 'Thảm tập YOGA', '', '1640439078530.jpg', 737756, 2, 17),
(305, 'ốc salaza thái inox 304 8li25 5li15 nhiễn 6li15 5li15 xoắn 4li xoắn', '', '1640439078532.jpg', 5725, 3, 17),
(306, 'Bánh tráng Sate Muối Tắc Hồng Hạnh', '', '1640439078533.jpg', 972891, 2, 18),
(307, 'Cháo gấu đỏ vị gà/thịt bằm gói 50g', '', '1640439078535.jpg', 437654, 9, 18),
(308, 'Hồng Trà Tân Nam Bắc 300gr', '', '1640439078536.jpg', 845816, 6, 18),
(309, 'Tinh mùi (các loại) hiệu Rayner 28ml', '', '1640439078537.jpg', 867026, 2, 18),
(310, 'Date 2023) Thịt hộp', '', '1640439078539.jpg', 701599, 3, 18),
(311, 'BÁNH GẠO HÀN QUỐC GÓI 1KG NGON', '', '1640439078540.jpg', 657011, 7, 18),
(312, '(Bao bì mới) Bột phô mai lắc cam Sajang 250gram', '', '1640439078541.jpg', 477712, 6, 18),
(313, 'Đường Thốt nốt hữu cơ gói 5g', '', '1640439078543.jpg', 355785, 5, 18),
(314, 'Kem Chuối Nước Cốt Dừa', '', '1640439078544.jpg', 823124, 8, 18),
(315, 'MẬT ONG CÀ PHÊ ĐAKLAK NGUYÊN CHẤT 100%', '', '1640439078546.jpg', 232582, 4, 18),
(316, 'Lông đền nhôm thailand', '', '1640439078547.jpg', 385880, 4, 19),
(317, 'Dây Câu Bình Acquy - Dây Câu Bình Acquy Ô Tô Lõi Đồng Siêu To 2000A Kích Điện Acquy Cứu Hộ Ô Tô', '', '1640439078548.jpg', 994911, 9, 19),
(318, 'Bọc Ghế Ô Tô', '', '1640439078550.jpg', 244591, 3, 19),
(319, 'Van ( Vòi Hơi) Xe Đạp Pháp (Lọai 2)', '', '1640439078551.jpg', 707702, 6, 19),
(320, 'Cầu Chì Ô Tô Cầu Chì Xe Máy Mới Công Suất Ngắt Chuẩn Xác TORECA', '', '1640439078552.jpg', 109777, 9, 19),
(321, '[RẺ NHẤT SHOPEE] Vỏ lọ tinh dầu treo xe ô tô - lọ hình kim cương sang trọng', '', '1640439078554.jpg', 329447, 5, 19),
(322, '4 cái / bộ Phim bảo vệ cửa sổ bên ô tô Miếng dán chống thấm nước chống sương mù', '', '1640439078555.jpg', 734053, 6, 19),
(323, 'Gối Tựa Ô Tô - Gối Tựa Đầu Tựa Lưng Cao Su Non Nỉ Nguyên Khối Chính Hãng Siêu Đàn Hồi Chống Đau Mỏi Lưng', '', '1640439078556.jpg', 108832, 6, 19),
(324, 'Led sườn sd4003 12v 24v giá 75k:1 đôi', '', '1640439078558.jpg', 785853, 9, 19),
(325, 'Set 20 vòi phun bình xăng PWM PWK NSR KSR Keihin OKO CVK', '', '1640439078559.jpg', 949495, 7, 19),
(326, 'Truyện lẻ - Spy X Family', '', '1640439078561.jpg', 291249, 4, 20),
(327, 'Sách - Combo 8 Cuốn Bộ Sách Chuẩn Bị Cho Bé Vào Lớp 1 (8 cuốn)', '', '1640439078562.jpg', 835389, 1, 20),
(328, 'Sách - Methode Rose: Giáo Trình Piano - nguyetlinhbook', '', '1640439078563.jpg', 647340, 5, 20),
(329, '[CHỈ BÁN HÀNG THÁI] KEM OHO THOA RẠN DA', '', '1640439078565.jpg', 781962, 8, 20),
(330, 'Keo dán đa năng super Glue Đức Anh - Tuýp 3G', '', '1640439078566.jpg', 419151, 8, 20),
(331, 'Ảnh polaroid chất lượng cao', '', '1640439078567.jpg', 971344, 4, 20),
(332, '1 kg túi nilon gói hàng', '', '1640439078569.jpg', 849434, 9, 20),
(333, 'Keo nến nhỏ lớn đủ size', '', '1640439078570.jpg', 613603, 5, 20),
(334, 'BÚT CỌ MẦU NƯỚC SAKURA KOI COLOURING BRUSH PEN A', 'none', '1640439078571.jpg', 473033, 2, 20),
(335, 'Gọt bút chì hoạt hình siêu dễ thương', '', '1640439078573.jpg', 804746, 4, 20),
(337, 'Nguyễn Trung Hiếu', 'asdf', '1641021856.jpg', 6229050, 19, 18);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `name`, `gender`, `birthdate`, `phone`, `address`, `email`, `password`, `level`) VALUES
(1, 'hieu', 0, '2004-03-15', '12345', 'hanoi', 'trunghieu@gmail.com', '1234123', 0),
(2, 'Nguyen Hieu', 1, '2022-01-05', '0327272297', 'Ha Noi, Viet Nam', 'trunghieu15004@gmail.com', 'CzTk42Gve8TzVp6', 1),
(3, 'khong phai hieu', 1, '2022-01-02', '0378050602', '233 gì gì đó', 'gmail@gmail.com', '123456', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `details_bills`
--
ALTER TABLE `details_bills`
  ADD PRIMARY KEY (`bill_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `image` (`image`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `details_bills`
--
ALTER TABLE `details_bills`
  ADD CONSTRAINT `details_bills_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `details_bills_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
