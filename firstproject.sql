-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2021 at 12:39 PM
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
(6, 'Nhà Cửa & Đời Sống'),
(20, 'Nhà Sách Online'),
(19, 'Ô Tô & Xe Máy & Xe Đạp'),
(16, 'Phụ Kiện & Trang Sức Nữ'),
(8, 'Sắc Đẹp'),
(10, 'Sức Khỏe'),
(17, 'Thể Thao & Du Lịch'),
(15, 'Thiết Bị Điện Gia Dụng'),
(5, 'Thiết Bị Điện Tử'),
(1, 'Thời Trang Nam'),
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
(2, 'Apple'),
(8, 'CD project Blue'),
(1, 'Google'),
(9, 'Lokia'),
(7, 'Rito'),
(4, 'Samsung'),
(6, 'Tencent'),
(5, 'Tesla'),
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
(2, 'Essential Sweater oversize', '', 'https://cf.shopee.vn/file/c189915ecd411f1b1fe264f67fa89f34_tn', 258530, 3, 1),
(3, 'Ví Nam Da Thật 100% ', '', 'https://cf.shopee.vn/file/bfa9785cdb88df72a0c3d6ab686b731c_tn', 622905, 5, 1),
(4, 'Quần Lót Nam Boxer thun lạnh cao cấp', '', 'https://cf.shopee.vn/file/a1faa102a525c5fea2e0b4b4c2c35411_tn', 461981, 9, 1),
(5, 'Áo khoác nỉ nam áo hoodie nữ Chuột Stitch cao cấp phối đồ cực đẹp SooMin KNN03', '', 'https://cf.shopee.vn/file/b2407d305eae182882dc2f174221047b_tn', 872610, 4, 1),
(6, 'Combo 2 chiếc quần boxer Nhật Thun lạnh Thông hơi (có size lớn)', '', 'https://cf.shopee.vn/file/b7cd5ac6a6f6efe3b1cdcf221fd0d9cc_tn', 649382, 7, 1),
(7, 'Khăn mùi xoa nam / khăn tay nam cao cấp Christian Hàn Quốc', '', 'https://cf.shopee.vn/file/97253338ab4db1d01f969fc5102b1223_tn', 213468, 2, 1),
(8, 'Ví Nam Da Bò Thật 100% Cao Cấp Siêu Bền ', '', 'https://cf.shopee.vn/file/a06783d510c1ee231d7731c44d6c6b25_tn', 177269, 5, 1),
(9, 'Quần Short Dispersal Nam - Q01-06 ProbeeShop', '', 'https://cf.shopee.vn/file/29876d6deccc1736e08a149537d1004b_tn', 678090, 7, 1),
(10, 'áo nỉ Hoodie Drew house mặt cười Hogoto shop ', '', 'https://cf.shopee.vn/file/3fdda5af42ae2529d1e042692dcb19c3_tn', 162619, 4, 1),
(11, 'Ví Sen Da Bò Cao Cấp Nam Nữ Siêu Chất Bền Đẹp ', '', 'https://cf.shopee.vn/file/c2b8df28290d27ddddd033a14f439d60_tn', 675476, 2, 1),
(12, 'Kính cường lực iPad Air 1/2/3/4', '', 'https://cf.shopee.vn/file/3b951cd108adf981c842af576a8588b9_tn', 50183, 3, 3),
(13, 'Tai Nghe Bluetooth 5.0 Amoi F9 Pro Không Dây Nút Cảm Ứng Kiêm Sạc Pin Dự Phòng | F9 PRO thanhlam68 hhbt27', '', 'https://cf.shopee.vn/file/ca1263e9699e836a78a8bb9dc8efb36f_tn', 964256, 7, 3),
(14, 'Cáp Sạc rút tròn đa năng 3 Đầu', '', 'https://cf.shopee.vn/file/48f2c3922bc65c812b6126212b40129d_tn', 241181, 4, 3),
(15, 'Bộ Sạc Nhanh Iphone 20w❤️FREESHIP❤️Củ Sạc Iphone USB-C To Lightning Sử Dụng Cho Máy 8/8P/X/XS/11/11Pro/12/12 Pro Max', '', 'https://cf.shopee.vn/file/2c2fb42f3c07fd5c48f59a7489a77729_tn', 384192, 5, 3),
(16, 'DMST Miếng dán pin 18650 bảo vệ cực dương', '', 'https://cf.shopee.vn/file/6f32c3e0dbe25d101947ac86cc823e46_tn', 45863, 4, 3),
(17, 'Vỏ Bảo Vệ Bao Đựng Hộp Sạc Tai Nghe', '', 'https://cf.shopee.vn/file/c4627704af899a59fdbbe853603e1b66_tn', 914855, 3, 3),
(18, 'Phụ Kiện Nút Bảo Vệ Đầu Dây Cáp Sạc / Tai Nghe Tiện Dụng Chất Lượng Cao', '', 'https://cf.shopee.vn/file/fa4b513922c733f933cfc60a1bcf9079_tn', 343323, 4, 3),
(19, 'Dây Đeo Thẻ Đa Năng Hoạ Tiết Hoạt Hình Đáng Yêu', '', 'https://cf.shopee.vn/file/5af61674273c96aecab14ef58c782130_tn', 245825, 4, 3),
(20, 'Móc treo phụ kiện điện thoại cài hộp inox 15*30mm D1 - hàng YON', '', 'https://cf.shopee.vn/file/0a5047026f414a0f2d3ef77c027a7657_tn', 954025, 2, 3),
(21, 'Dây đeo điện thoại bằng Polyester đa năng chống thất lạc có thể tháo rời', '', 'https://cf.shopee.vn/file/2997b969b4484680d2b8cf3e1ba31b19_tn', 119966, 6, 3),
(22, 'Đồ Bộ Cao Cấp - bộ ngủ pijama bò sữa nữ lụa mango hàng cao cấp vải mềm mịn chất mát thiết kế thời trang mặc mùa hè ở nhà', '', 'https://cf.shopee.vn/file/2cdb32e2eaa4eae4291f16f4d4620ad8_tn', 446327, 8, 2),
(23, 'Bộ Đồ Ngủ Nữ Lụa - Đồ Bộ Nữ Pijama Mặc Nhà', '', 'https://cf.shopee.vn/file/19b85aaaefab3a86bba7149dce82e668_tn', 481615, 6, 2),
(24, 'Quần bò baggy nữ quần jean baggy nữ quần jeans nữ lưng cao chất đẹp Top xu hướng 2021 - HAPONO-J012', '', 'https://cf.shopee.vn/file/fa741dda455449b95d869e6decce3e59_tn', 953631, 3, 2),
(25, 'Áo Nỉ Thu Đông Nữ Đẹp Free Ship Toàn Quốc', '', 'https://cf.shopee.vn/file/1b4b36544de67c8b027142ce41cbc4c7_tn', 516493, 8, 2),
(26, 'Quần jeans ống rộng gài eo Ulzzang Unisex Kanimi', '', 'https://cf.shopee.vn/file/b5e06d9252264a81fd6280c3c760bae1_tn', 104466, 9, 2),
(27, 'Áo Gile Len Thời Trang', '', 'https://cf.shopee.vn/file/efb9de6974697092023eec92a945c178_tn', 98024, 7, 2),
(28, 'Set Đồ Nữ', '', 'https://cf.shopee.vn/file/b11cdc9325887a139a4a03db8039d719_tn', 629460, 4, 2),
(29, 'Áo Gile Len Nữ Kiểu Dáng Hàn Quốc', '', 'https://cf.shopee.vn/file/d7d6b2399373f1abf02cf7011ef79de7_tn', 537269, 4, 2),
(30, '[Ảnh+Video thật] Áo Bomber Chữ G Xanh Phong Cách Cá Tính Unisex Kèm Ảnh Thật Cận Chất', '', 'https://cf.shopee.vn/file/d3657e33168bf07ab6aef428c35f00b1_tn', 905682, 5, 2),
(31, '[Sỉ] Áo mưa măng tô 1 người họat hình kakao talk cute dễ thương thái lan', '', 'https://cf.shopee.vn/file/038d857d0d8eba87b202b1ec55ea9fb4_tn', 523166, 8, 2),
(42, 'Ống hút sữa tiệt trùng mỹ (Biologix)', '', 'https://cf.shopee.vn/file/7b21ad98076718e00f0636b75fa15278_tn', 569490, 7, 4),
(43, 'Sỉ đầu bông giấy nhún', '', 'https://cf.shopee.vn/file/db43887c7a2a92250654e63dfe86d2c1_tn', 796385, 8, 4),
(44, '[MUA 1 TẶNG 1] Siro Ăn Ngon BABYPLUS Cho Trẻ Biếng Ăn', '', 'https://cf.shopee.vn/file/704a6dba4a08569d26770ec1174184e7_tn', 322431, 1, 4),
(45, 'Máy hút sữa điện đôi Real bubee tặng kèm máy hâm sữa cao cấp(an toàn cho bé)', '', 'https://cf.shopee.vn/file/64bacfa10adc5a9b386a32898b7e3ec8_tn', 741497, 8, 4),
(46, 'Ghế ngồi xe đạp cho bé', '', 'https://cf.shopee.vn/file/65d0782fd03587ce0ccdba2c824b3a96_tn', 508934, 9, 4),
(47, 'Khay úp bình sữa núm vú hình cây cao cấp vệ sinh an toàn cho bé DS01', '', 'https://cf.shopee.vn/file/0b86acf601ae624fa03fd09991b6a379_tn', 312644, 7, 4),
(48, '[KÈM DEAL 0Đ] XE TRÒN TẬP ĐI CHO BÉ THAY ĐỔI ĐỘ CAO', '', 'https://cf.shopee.vn/file/cdd4d26c61857241299823552285fa7c_tn', 724384, 6, 4),
(49, 'chậu tắm ếch cho bé (có van thoát nước)85×50cm', '', 'https://cf.shopee.vn/file/2f503013bf89a3d25555ed7529a58b21_tn', 819188, 4, 4),
(50, 'Bột Daishi Pigeon 5m+', '', 'https://cf.shopee.vn/file/fd1c481a838cbe3a5ee17f3968827b67_tn', 159308, 4, 4),
(51, 'Xe đẩy du lịch cho bé', '', 'https://cf.shopee.vn/file/d0de8b894974a9c6132316c244b40ca1_tn', 311834, 6, 4),
(52, '[chính hãng giá rẻ] Bộ MICRO livestream Icon Upod Pro Micro và mic thu âm Takstar PC-K200', '', 'https://cf.shopee.vn/file/5e79820a3741be55de019f6e52acdf4a_tn', 208187, 1, 5),
(53, '[tặng tai nghe chính hãng] Bộ livestream K300 model 2021 Micro thu âm ISK AT100', '', 'https://cf.shopee.vn/file/73e9d3ec36b2a546dd62bdb669541971_tn', 604251, 9, 5),
(54, 'Cục lọc chống Nhiễu hàng rã máy. 589nhattao', '', 'https://cf.shopee.vn/file/f9f0352c8bad2163345b8cd2181013ae_tn', 690654, 4, 5),
(55, '[TẶNG TAI NGHE VÀ DÂY LIVESTREAM] Micro thu âm livestream C11- Phiên bản nâng cấp - bắt xa 3m', '', 'https://cf.shopee.vn/file/0c663a293393a525f8a2359cf0a97603_tn', 220630, 6, 5),
(56, 'Tai Nghe Bluetooth Chính Hãng I12 Không Dây Nhét Tai Phụ Kiện Tai Nghe Điện Thoại IOS Và Android Hoaianshop29', '', 'https://cf.shopee.vn/file/62cfe53382bde805c9bf05b7628daa66_tn', 281586, 7, 5),
(57, 'SÒ ÂM THANH KTB688 CHÍNH HÃNG KEC THÁO MÁY LƯNG ĐỒNG CHÂN DÀI', '', 'https://cf.shopee.vn/file/2e7fe90757ea9163ed1522a7416c0162_tn', 211892, 4, 5),
(58, '[VN] Áo thẻ SD2Vita Pro 6.0 cho PS Vita psvita psv', '', 'https://cf.shopee.vn/file/6650ed2186b128090ee7da034bf89439_tn', 594820, 4, 5),
(59, 'Tai Nghe Bluetooth 5.0 i12 TWS - Cảm Biến Vân Tay', '', 'https://cf.shopee.vn/file/45d1b850154a3dde5ee7887493d3c602_tn', 515148, 8, 5),
(60, 'Giá đỡ mic C7 C11 at 100 Bm 900 rất chắc chắn', '', 'https://cf.shopee.vn/file/edfa27dc0859498caf1c23246b0341bd_tn', 605565, 1, 5),
(61, 'Loa Bluetooth Mini Earldom XDHE-005 Thiết kế độc đáo âm thanh sống động', '', 'https://cf.shopee.vn/file/860b0edc2669a6c3ce4251a6c01b86a1_tn', 592393, 8, 5),
(62, '[Thiệp đẹp] Tấm card chúc mừng sinh nhật', '', 'https://cf.shopee.vn/file/d007896b6b85f60f2e6456a1ac9e2d49_tn', 568021, 4, 6),
(63, 'Biến Trở Tam Giác WH-06-2', '', 'https://cf.shopee.vn/file/defb030c08aaf617a0a4e8d8b1ffd205_tn', 639406, 9, 6),
(64, 'Móc Dán Tường Siêu Dính Trong Suốt Chịu Lực Tốt Treo Tường Chắc Chắn 6x6 cm', '', 'https://cf.shopee.vn/file/c3c2f0cbe61bf9353433bea1cf1fe034_tn', 819199, 9, 6),
(65, 'Thìa Thép Không Gỉ Tay Cầm Silicon Hình Thú Hoạt Hình 🍀 Clovershop68 🍀', '', 'https://cf.shopee.vn/file/0dae9bf07e5bd3813e031588240908a5_tn', 62784, 8, 6),
(66, 'Khoá giọt lệ loại 25cm', '', 'https://cf.shopee.vn/file/d8b636667c849cd16bde7d0be02280ff_tn', 872299, 5, 6),
(67, 'Công tắc bập bênh 2 chân 2 nấc (On/ Off)', '', 'https://cf.shopee.vn/file/c613740bf3f325e45862a34a84412a67_tn', 333345, 4, 6),
(68, 'Jack cắm đầu cắm đuôi DC cái 5.5*2.1 DC022B', '', 'https://cf.shopee.vn/file/092cec6de29ef2e67cff38399549eef5_tn', 819811, 8, 6),
(69, 'Thiết bị đo áp suất WH148 B1K 2K 5K 10K 20K 50K 100K 250K 500K 1M 15MM 3PIN WH148 chất lượng cao', '', 'https://cf.shopee.vn/file/c0763d68de324e99faf2e974d4f6035e_tn', 769962, 7, 6),
(70, 'Chậu nhựa ĐỎ C9 (20x16 cm) trồng hoa Tết', '', 'https://cf.shopee.vn/file/ce4d7ecabd3b1fe7b90f5eb0225d4a84_tn', 764032, 4, 6),
(71, 'Nơ rút trang trí bản to 5cm', '', 'https://cf.shopee.vn/file/1a48cfb8f93677dec29712c041ab0723_tn', 16712, 8, 6),
(72, 'JACK DC Cái 5.5*2.1mm', '', 'https://cf.shopee.vn/file/079c06dc40a650bf370ef72dd4b63035_tn', 490857, 2, 7),
(73, 'Dây Nguồn có Jack DC 5.5*2.1mm', '', 'https://cf.shopee.vn/file/f2d055cf521f062eaaa5abb3b0eaf14c_tn', 776575, 9, 7),
(74, 'Giấy in Hóa Đơn in Bill K58 K58x45 - Giấy in nhiệt khổ K57 - 57mm dùng cho máy POS bán hàng', '', 'https://cf.shopee.vn/file/043f2d60ce4eea706cec4c4ed30600eb_tn', 59019, 5, 7),
(75, 'Combo Fan mod VGA (combo 2 fan vs 1 zac cắm vào vga)', '', 'https://cf.shopee.vn/file/6456eb09b064e4ab23535b4d82df01e1_tn', 20470, 8, 7),
(76, 'Switch Gateron KS-8 | Gateron RGB SMD KS-9 dùng cho Bàn Phím Cơ (3 pin)| Gateron Yellow', '', 'https://cf.shopee.vn/file/edf4184ce4437f2cd6d46b1ee4ec76c2_tn', 871406, 3, 7),
(77, 'Switch Outemu dùng cho bàn phím cơ', '', 'https://cf.shopee.vn/file/04dd662e9661a5c07fb3087bcdee415e_tn', 287702, 7, 7),
(78, 'Pin khuy cúc áo CR1220 3V Lithium maxcell chính hãng', '', 'https://cf.shopee.vn/file/a1f316872a6fb5ac7edc124c22b84a6c_tn', 120546, 2, 7),
(79, 'Dây Cáp tín hiệu SATA 3-6G/S mới hàng zin theo main', '', 'https://cf.shopee.vn/file/9f6efd1f939bbd1b87fd1c0248ed816e_tn', 438442, 5, 7),
(80, 'Đi ốt Diode chỉnh lưu rectifier 1000V 10A 20A MIC', '', 'https://cf.shopee.vn/file/c00ad07c4a459ea59ebcf084328a15f7_tn', 927090, 5, 7),
(81, 'Cáp đồng trục liền nguồn loại tốt', '', 'https://cf.shopee.vn/file/fa12870bc6b426ff880401ff979689ef_tn', 800509, 5, 7),
(82, 'hoa bột nail xả kho', '', 'https://cf.shopee.vn/file/2a3abba9acb51968a22cb0a2d4b8cf25_tn', 760466, 6, 8),
(83, 'Đầu Kim nano xanh lắp máy dr.pen', '', 'https://cf.shopee.vn/file/8c2e82b99dddd6fe18958a1ee93f85b8_tn', 172177, 8, 8),
(84, 'Phụ Khoa Thảo Dược cho bà bầu - Nấm Ngứa phụ nữ mang bầu', '', 'https://cf.shopee.vn/file/cae7f3ed8c5a73108558ee001848fbbc_tn', 378209, 1, 8),
(85, 'Cốc Nguyệt San Tulip Cup 100% Silicone Y Tế Cao cấp Siêu Mềm', '', 'https://cf.shopee.vn/file/fe12bf93513da4a7d2acbc24a7bc23d5_tn', 655559, 3, 8),
(86, 'Xịt tan mỡ nano J.Plus Đan Trường', '', 'https://cf.shopee.vn/file/bedfb3f70e171fea2482d5db51c9f37b_tn', 133557, 6, 8),
(87, 'Dầu Gội', '', 'https://cf.shopee.vn/file/c3e3d9a7464198daec1028d05923e78c_tn', 235419, 5, 8),
(88, 'Dầu xả cao cấp HACHI VIETNAM Cascade 480g xanh ngọc Tinh chất bạc hà dầu Oliu liên kết cấu trúc tóc', '', 'https://cf.shopee.vn/file/e2a65d293b77ee5a4e7bdb93664d5945_tn', 373670, 2, 8),
(89, '[CHÍNH HÃNG] Tinh Chất Dài Mi Mọc Tóc Dr Hair Zenpali 10ml(𝐌𝐇.𝐏𝐞𝐫𝐟𝐮𝐦𝐞Ⓜ)', '', 'https://cf.shopee.vn/file/ae80c9a6cea3f37011d68f3c88ed3bf0_tn', 188789, 8, 8),
(90, 'Combo dầu gội dầu xả TRÀ XANH - dành cho tóc dầu - HACHI - Khắc phục tình trạng dư thừa dầu chiết xuất tự nhiên', '', 'https://cf.shopee.vn/file/46620a85f8a676e3ea0c25949998476a_tn', 393077, 9, 8),
(91, 'Máy Cạo Râu [INVESTER.OFFICIAL] Máy Cạo Râu FLYCO FS318 Chống Nước & Chống kẹt Râu Thông Minh', '', 'https://cf.shopee.vn/file/20aeb9332354d6e56ae76042c009ae52_tn', 238774, 8, 8),
(102, 'Jack DC đực - cái vặn ốc', '', 'https://cf.shopee.vn/file/d81bc422e1063ad027a20ead9525b906_tn', 977197, 3, 9),
(103, 'Thẻ ghi hình lưu trữ đám mây dành cho các dòng camera yoosee hỗ trợ lưu trữ đám mây VÀ CÁC LOẠI THẺ NHỚ 16/32/64GB', '', 'https://cf.shopee.vn/file/e65cbbb1076702edc72ff7fd8c7e0c33_tn', 589714, 2, 9),
(104, '[Rẻ vô địch]Gậy sạc dự phòng Ulanzi BG-4 5000mah choGoPro 9/8/7 action cam điện thoại', '', 'https://cf.shopee.vn/file/d49b70c35453e68c8b0d31aa64f6e6da_tn', 871606, 4, 9),
(105, 'Giắc XT60', '', 'https://cf.shopee.vn/file/ee9310c4724f629726f141e7caf0f292_tn', 107096, 6, 9),
(106, 'Vít Khóa Nhựa GoPro - Vít Khoá Thép GoPro - GoPro101 - inoxnamkim', '', 'https://cf.shopee.vn/file/baa310b97ea6746fad3171cb9ca5c104_tn', 572661, 4, 9),
(107, 'Dây Sino liền nguồn', '', 'https://cf.shopee.vn/file/d60e9011727259a539d1e8ec8808fd7d_tn', 836233, 4, 9),
(108, '(16 Màu Kèm Remote)Đèn LiveStream Trợ Sáng Chụp Hình Cầu Vồng', '', 'https://cf.shopee.vn/file/cc96a8ea841777ed0de22a621788c8a3_tn', 740256, 1, 9),
(109, '(16 Màu Kèm Remote) Đèn Led Hoàng Hôn LiveSteam', '', 'https://cf.shopee.vn/file/8c7dab42df4a08fcd623e40b5ecff422_tn', 213967, 4, 9),
(110, 'Đèn LiveSteam Trợ Sáng Tiktok 16 Màu Kèm Remote', '', 'https://cf.shopee.vn/file/3e0a9204c050090a7a684b0dde33e7c8_tn', 141228, 7, 9),
(111, 'Đèn Led Hỗ Trợ Quay Phim Dvft-96 Cho Máy Ảnh Canon Nikon Minolta', '', 'https://cf.shopee.vn/file/b4ba9119be9ae37f2050da50339260b6_tn', 235670, 3, 9),
(142, 'CỒN 70 ĐỘ BIDOPHA - CHAI 1000 ml- rửa tay', '', 'https://cf.shopee.vn/file/cd7864fb2dc9de464c8a02e976a1042f_tn', 864903, 5, 10),
(143, 'Bỉm người già', '', 'https://cf.shopee.vn/file/0aff0798279445871d3bcf9c070562a1_tn', 962558, 2, 10),
(144, 'Viên Sủi Giảm Cân BODY BEAUTY SLIM CHÍNH HÃNG', '', 'https://cf.shopee.vn/file/7bf1fda2effde2cbec266ada8c90c4f5_tn', 204518, 4, 10),
(145, 'Tai Nghe Y Tế', '', 'https://cf.shopee.vn/file/3f440ce25bd5151f6cadedd35151f4d7_tn', 361616, 6, 10),
(146, 'Khẩu trang y tế trẻ em', '', 'https://cf.shopee.vn/file/38bb028fae7e528fbcdb225821ffce9a_tn', 198188, 6, 10),
(147, 'Túi Sưởi Ấm Chân Tay Mini Hình Thú Nhiều Mẫu', '', 'https://cf.shopee.vn/file/d07710d6f3020f7dd5f945d66e1262fc_tn', 974258, 8, 10),
(148, 'Khẩu trang y tế 4 lớp ', '', 'https://cf.shopee.vn/file/2d969b49d5b419602dc111d506fc7e0a_tn', 103072, 5, 10),
(149, 'Khẩu trang y tế', '', 'https://cf.shopee.vn/file/084d97d3ad8fe013adbed4c16fca1e93_tn', 555163, 8, 10),
(150, 'Khẩu trang y tế 3 lớp ', '', 'https://cf.shopee.vn/file/64225e8b4a2890d946b785eb2f344103_tn', 7846, 2, 10),
(151, 'Khẩu trang y tế trẻ', '', 'https://cf.shopee.vn/file/d82b7aeff881de29966f2e05116f9b63_tn', 706214, 5, 10),
(152, 'Đồng Hồ Nữ Đeo Tay Cao Cấp', '', 'https://cf.shopee.vn/file/2294b8b716ab00ff8f6dd31aa142f48b_tn', 618162, 2, 11),
(153, 'Đồng hồ nữ đeo tay BURBERRY cao cấp thời trang đẹp dây thép không gỉ bảo hành 12 tháng freeship -DHN15', '', 'https://cf.shopee.vn/file/f2decce6dd35f618cd5d740ae4fd9443_tn', 224560, 7, 11),
(154, 'Pin đồng hồ đeo tay ', '', 'https://cf.shopee.vn/file/3d1eb680d80f8bc08fca152cb82daced_tn', 974532, 9, 11),
(155, 'Đồng Hồ Đeo Tay Nữ Dây Kim Loại', '', 'https://cf.shopee.vn/file/e1d7bebea4a9174c3a4ad57debadd2e4_tn', 264875, 1, 11),
(156, 'Đồng Hồ Nữ Đeo Tay Thời Trang Bolun Dây Da Mặt Tròn', '', 'https://cf.shopee.vn/file/193cef87106ba7c983de1954de9bb39a_tn', 600082, 6, 11),
(157, 'Đồng hồ nữ đeo tay đẹp VERSACE thời trang cao cấp dây thép không gỉ chống nước bảo hành 12 tháng - DHN 17', '', 'https://cf.shopee.vn/file/8618bea56bd54675e7378638d1a718e2_tn', 723447, 6, 11),
(158, 'Móc khóa mô hình máy ảnh phát sáng', '', 'https://cf.shopee.vn/file/06c5f00d72ff9632470a7245ed2a3c75_tn', 108577, 5, 11),
(159, 'Đồng Hồ Nữ Đeo Tay Versace Dây Cao Su Silicon Nhiều Màu Đẹp Mềm', '', 'https://cf.shopee.vn/file/13e6aecee86c2c33b2088ba970f5cd90_tn', 86930, 4, 11),
(160, 'Đồng hồ nam op đẳng cấp phái mạnh chính hãng nhật [BH 12 THÁNG 1 ĐỔI 1]', '', 'https://cf.shopee.vn/file/6800b39aed3ea191be22329523c767fd_tn', 34569, 1, 11),
(161, 'Vỏ hộp đồng hồ đen bán từ 30 hộp', '', 'https://cf.shopee.vn/file/7095ecf15628e5913375e6e1e435505f_tn', 585514, 3, 11),
(162, 'Hộp Catong bảo vệ box giày', '', 'https://cf.shopee.vn/file/06e2bd3de39b28861fdfc0db7a64805a_tn', 156138, 9, 12),
(163, 'Giày Jodan Xám Thấp Cổ Hàng Cao Cấp', '', 'https://cf.shopee.vn/file/4d9631959497447671a48c134289ac6a_tn', 46661, 2, 12),
(164, 'Giày Nike Hồng Cổ Thấp', '', 'https://cf.shopee.vn/file/7c3094a5a3220ba2d80b67dac98a39f2_tn', 878591, 3, 12),
(165, 'Giày Nữ Chiến Binh Cao Cổ - Bốt Kéo Khóa Thời Trang cá tính', '', 'https://cf.shopee.vn/file/53450d32142619703085a371a8047f11_tn', 246408, 5, 12),
(166, 'Giày Cao Cổ Nữ - Bốt Chiến Binh HOTTREND buộc dây', '', 'https://cf.shopee.vn/file/10b0bfc897bc2c30571f61f65ae0b98d_tn', 981407, 4, 12),
(167, 'Giày Jordan Xanh Than Cao Cổ Hot Full Size', '', 'https://cf.shopee.vn/file/636d686a55c9355f4aa15ae0e496cf95_tn', 499828, 4, 12),
(168, 'Giày MLB LA Nam Nữ', '', 'https://cf.shopee.vn/file/9b8636ad3a25dadab37885619f6c8777_tn', 12105, 2, 12),
(169, 'Giày Thể Thao Nữ Cổ Thấp Giày Nike Air Jordan 1 JD1 Low Hồng Vảy Sơn Full Box Bill', '', 'https://cf.shopee.vn/file/41cc8fe3f1a8ffb06768673b781022a0_tn', 37159, 6, 12),
(170, 'GiàyThể Thao Jodan 1 Pari Gót Xanh', '', 'https://cf.shopee.vn/file/f4c556c88717693696f20778c72675b9_tn', 400840, 1, 12),
(171, 'Giày MLB NY Nam Nữ', '', 'https://cf.shopee.vn/file/d563a4df880df16b3f39bc2aeab5adbf_tn', 284629, 6, 12),
(201, 'Giày Mc Queen MCQ Nam Nữ Trắng Cổ Thấp Gót Nỉ Đen Đế Khâu Bản Trung Full Box Bill', '', 'https://cf.shopee.vn/file/42ba9934a4a115fc1cf4a1260a2b0909_tn', 665364, 9, 13),
(202, 'Giày JD1 Cổ Thấp Cam Đen Giá Rẻ', '', 'https://cf.shopee.vn/file/dcee28af4f6f5845fccaa693b6ac3779_tn', 539712, 4, 13),
(203, '[Ảnh+Video tGiày thế thao Sneakers nam nữ', '', 'https://cf.shopee.vn/file/236d0a5ca2b5f3c1e4e7ad39bb5c176d_tn', 38409, 3, 13),
(204, '[FREE SHIP] giày thể thao puma trắng full ', '', 'https://cf.shopee.vn/file/d6f25ba6e7c1cbf2390a4531a7545578_tn', 275491, 4, 13),
(205, 'Giày Jordan Panda Bản CHuẩn Cao Cổ Full Box', '', 'https://cf.shopee.vn/file/0375ec691648d3e635c9fdc70465b50a_tn', 507796, 2, 13),
(206, '[TỐP BÁN CHẠY] (Ảnh thật) Dép quai ngang nam mochi siêu đẹp - mẫu dép đẹp 2021', '', 'https://cf.shopee.vn/file/ba51e9d6c5ab36194e700e4ea1ce0a26_tn', 462355, 8, 13),
(207, 'Dép Lê Nữ ⚡𝑭𝑹𝑬𝑬 𝑺𝑯𝑰𝑷⚡ Dép Chữ H thời trang đế bệt quai ngang Hottrend phối đồ cực đỉnh', '', 'https://cf.shopee.vn/file/17cda6c33d36c9ca029b5bcf923520d7_tn', 734122, 1, 13),
(208, 'Giày Thể Thao Nam Nữ Jordan JD1 Xám Cổ Thấp Gót Thêu Chỉ Đỏ Full Box', '', 'https://cf.shopee.vn/file/988d5c70be3898a595ab9c522f4a21cd_tn', 530086, 3, 13),
(209, 'Giày Thể Thao Nam Nữ Jordan JD1 Low Cam Đen Cổ Thấp', '', 'https://cf.shopee.vn/file/7a40034ade218f5eb06c476b57c1faa4_tn', 387853, 4, 13),
(210, 'Giày Jordan Xanh Dương Thấp Cổ Full Size 36 - 43', '', 'https://cf.shopee.vn/file/024993e950e31e06b9d447896d2a162e_tn', 4656, 3, 13),
(211, 'Dây giầy phát sáng 1m (1 đôi - đọc HDSD) 🍉Duashop🍉', '', 'https://cf.shopee.vn/file/6eb76be53db58b496cba7a8e6cce3917_tn', 528597, 4, 13),
(212, 'Giày thế thao ML B _ NY vàng Nam/Nữ Bản Chuẩn Đế Tà.u', '', 'https://cf.shopee.vn/file/cf5438f08d36419c035426de0153f34a_tn', 979983, 1, 13),
(213, 'Giày Jordan Panda Nam Nữ Thấp Cổ', '', 'https://cf.shopee.vn/file/5ef9127401901c7fc4cf4f8d039c9b60_tn', 137501, 5, 13),
(214, 'GiàyThể Thao', '', 'https://cf.shopee.vn/file/7d864e536799c3eef37efe81da064c42_tn', 217380, 2, 13),
(215, 'Giày Jordan Milan Cổ Thấp', '', 'https://cf.shopee.vn/file/eeb3ca0e986ea75eae30eea38dbd0b09_tn', 498378, 5, 13),
(216, 'Dép Xỏ Ngón Unisex EBET EB1509427 - Động lực', '', 'https://cf.shopee.vn/file/df6e23454c1e3760fea85826269bd462_tn', 262654, 4, 13),
(217, 'Giày Thể Thao Jordan 1 Hồng Cao Cổ Full Size Nữ', '', 'https://cf.shopee.vn/file/c4ee11ded280d242e4666e679d857a4b_tn', 651724, 9, 13),
(218, 'Giày Jordan Đen Trắng', '', 'https://cf.shopee.vn/file/a677fb8a11f614c1e05bb27fe53e8161_tn', 449027, 4, 13),
(219, 'Giày JD Xám Cổ Thấp ', '', 'https://cf.shopee.vn/file/da165c13dadb2441333eba7856035eb1_tn', 403594, 9, 13),
(220, 'Giày Jordan Cổ Thấp Nữ', '', 'https://cf.shopee.vn/file/4d9c767c4464ed1d27fcd7cad9d759aa_tn', 808927, 6, 13),
(221, '[ Combo 2 đôi ] Tất Vớ Gấu Xinh Brown Dễ Thương Siêu Hot', '', 'https://cf.shopee.vn/file/99d8883dad93e39807886653ff69496d_tn', 578187, 8, 13),
(222, '[TỐP BÁN CHẠY] Dép nam đính hổ quai đính đá mới nhất 2021 - Dép nam PLP chất', '', 'https://cf.shopee.vn/file/7d371722d14fbef2e2517b10398be112_tn', 568220, 3, 13),
(223, 'Giày', '', 'https://cf.shopee.vn/file/92ef09854ef4723cc01c23b2abc53f2e_tn', 654634, 3, 13),
(224, 'Giày Thể Thao Nike_Gucci', '', 'https://cf.shopee.vn/file/8c13a7ff56948a115ce3300ca82d04be_tn', 340829, 9, 13),
(225, 'Giày Thể Thao Nam Nữ Jordan JD1 Xám Cổ Cao Hang Cao Cấp Cực Chất', '', 'https://cf.shopee.vn/file/d22a257c873d5584e895c5c74d776131_tn', 436459, 1, 13),
(226, 'Balo Ulzzang Nam Nữ Basic Hàn Quốc Dễ Thương', '', 'https://cf.shopee.vn/file/8944335bec29d1498ab2116641758120_tn', 292562, 3, 14),
(227, 'Balo Degrey Basic Nhiều Ngăn Đen Trắng', '', 'https://cf.shopee.vn/file/4cf81415ed55e580de05d3da42c58ccf_tn', 423151, 4, 14),
(228, '(1 cái) Vỏ bọc đựng thẻ ATM', '', 'https://cf.shopee.vn/file/02db70ec979080ba6b0e312bead56645_tn', 79781, 8, 14),
(229, 'Balo Ulzzang Hàn Quốc Basic Đen', '', 'https://cf.shopee.vn/file/c3e342076bae548021c26a933e0a9bd0_tn', 794242, 4, 14),
(230, 'Balo Đi Học Thời Trang Ulzzang Basic Nhiều Ngăn', '', 'https://cf.shopee.vn/file/a33d8771f33adf171e0afd6eab1b7e06_tn', 471844, 4, 14),
(231, 'Balo Ulzzang Nam Nữ Đen Basic Nhiều Ngăn', '', 'https://cf.shopee.vn/file/00bc73a8d56edcdddb2906d0be0c3ad3_tn', 751734, 4, 14),
(232, '[8 MÀU] Ví Nữ Mini Ngắn Cầm Tay Phong Cách Hàn Quốc TVNN172', '', 'https://cf.shopee.vn/file/77ebb7c51a6b1933f2229d604dd61fae_tn', 201125, 2, 14),
(233, '30mm Khoen tròn Khoen vòng mở inox', '', 'https://cf.shopee.vn/file/ccedfc579f4d97a18f331f9306d579a4_tn', 529333, 7, 14),
(234, 'Túi xách tay nữ thời trang', '', 'https://cf.shopee.vn/file/d18ca79a7b3570cb332e6d73da72936d_tn', 728551, 3, 14),
(235, 'TMU hành trình A PLĐC', '', 'https://cf.shopee.vn/file/21e8fea6dc7338dbcc77c403c6090520_tn', 691249, 4, 14),
(256, 'Máy ép chậm Gesun G500 chính hãng - máy ép trái cây', '', 'https://cf.shopee.vn/file/089358080a5e2d115765b4d3de4ac0c1_tn', 403000, 5, 15),
(257, 'Công tắc Quạt Thông Gió 💎Dây Đồng 100%💎 Quạt Hút Mùi Nhà Vệ Sinh ', '', 'https://cf.shopee.vn/file/de5979acdb66cfefd8f90aa74b181e9f_tn', 705305, 6, 15),
(258, '[Chính hãng-Lỗi 1 đổi 1] Lò vi sóng Sharp cơ R205VN 20 lít | R20A1-S 22 lít 800W (Mới 100%', '', 'https://cf.shopee.vn/file/2c2fcfba3280a91d07e804582c94b043_tn', 321998, 4, 15),
(259, 'Máy Thổi Bụi Cầm Tay- Máy thổi bụi mini Công Suất Lớn Cao Cấp', '', 'https://cf.shopee.vn/file/a0dc8a21400e25c6472b366fecf1e586_tn', 997714, 4, 15),
(260, 'Máy Khâu Mini Gia Đình 2 Tốc Độ Có Đèn Led Cắt Chỉ', '', 'https://cf.shopee.vn/file/cc0fab84199f5b0d55cc10a3af9f3547_tn', 657349, 4, 15),
(261, 'Quạt sưởi ấm đa năng 2 chiều tiết kiệm điện - Máy Sưởi Ấm - Đèn Sưởi Ấm', '', 'https://cf.shopee.vn/file/f91cc213be0cc3a8e1c43ade1bda751e_tn', 586309, 4, 15),
(262, '[Freeship - Chính Hãng] Đèn sưởi nhà tắm FUJI POVA công nghệ Nhật Bản sưởi ấm nhanh', '', 'https://cf.shopee.vn/file/e3c2e893f5b7a6aeda1116f4a290b50c_tn', 848430, 5, 15),
(263, 'Quạt Sưởi Ấm 2 Chế Độ Tiết Kiệm Điện - Máy Sưởi Ấm Thông Minh', '', 'https://cf.shopee.vn/file/a48a0d4e8a0ad0dfb1f07a7f07678ba9_tn', 927090, 3, 15),
(264, 'Quạt sưởi ấm đa năng mùa đông 2 chiều', '', 'https://cf.shopee.vn/file/f6df8735de574d37e63422b8b4ed067d_tn', 972203, 2, 15),
(265, 'Quạt sưởi ấm đa năng 2 chiều tiết kiệm  - Máy Sưởi Ấm - Đèn Sưởi Ấm', '', 'https://cf.shopee.vn/file/3c255e0eff5ca86630a50062ef95f1ed_tn', 637354, 4, 15),
(286, 'Kính chống giọt bắn bảo hộ phòng dịch faceshield cao cấp cho bé cho người lớn TODOCO 01', '', 'https://cf.shopee.vn/file/4f695439a7f56c63858519b8756cf69f_tn', 94568, 6, 16),
(287, 'Nước ngâm áp tròng Hàn Quốc chính hãng rửa lens', '', 'https://cf.shopee.vn/file/fb1cd95ec62cf4d66f813d6aabb993f1_tn', 945605, 3, 16),
(288, 'Bao Da Đựng Mắt Kính Điện Thoại', '', 'https://cf.shopee.vn/file/a32fcccbca9cea357f07058c0d376901_tn', 672141, 3, 16),
(289, 'Khuyên tàng hình', '', 'https://cf.shopee.vn/file/8d4d82daee79ac59cb663002c70b4001_tn', 4687, 4, 16),
(290, '100 chiếc Túi zip mini đựng đá trang sức', '', 'https://cf.shopee.vn/file/8cccd6cade7dba8e355c072042dd11a3_tn', 429653, 7, 16),
(291, 'Găng tay chống nắng xỏ ngón Let Slim chống tia UV', '', 'https://cf.shopee.vn/file/ed225cea8fdd53d5d01b1313f4e51ed7_tn', 512105, 3, 16),
(292, ' Chuyên Sỉ  Tấm chắn chống giọt bắn trong suốt nhựa PET - Face Shield Mask', '', 'https://cf.shopee.vn/file/bd2e6124f7224b305d2e1157bfa6303e_tn', 573444, 1, 16),
(293, 'Kính che mặt trong suốt', '', 'https://cf.shopee.vn/file/38e669fae01048e9afcd43ed1014d592_tn', 463677, 7, 16),
(294, 'Khăn mùi xoa nam / khăn tay nam cao cấp ', '', 'https://cf.shopee.vn/file/e253eedc4bc7d4baa15ff70117aca856_tn', 195535, 8, 16),
(295, 'Kim Cương Nhân Tạo Moissanite 5.4mm', '', 'https://cf.shopee.vn/file/c7bb5a1e5cf262b40123bc23fe9366a4_tn', 798627, 4, 17),
(296, 'Giày bóng chuyền', '', 'https://cf.shopee.vn/file/846b4eecffa105f8f06659c3553dfe77_tn', 869837, 3, 17),
(297, 'Quả bóng golf bọt biển màu cầu vồng nổi bật S3I6', '', 'https://cf.shopee.vn/file/b886b965bc834534779bc703c7598bbb_tn', 372352, 8, 17),
(298, 'Cuốn cán vợt vây cá chính hãng', '', 'https://cf.shopee.vn/file/6a177062bf73663f9bade39877b0b133_tn', 998750, 2, 17),
(299, 'Chai nhựa pet chiết mỹ phẩm xịt phun sương 50ml/100ml/30ml/20ml/10ml đựng nước hoa', '', 'https://cf.shopee.vn/file/52070c9df5121db666042be7e01bc4af_tn', 932278, 1, 17),
(300, '[5ml/10ml] Lọ đựng tinh dầu bóp giọt Khoen vàng chiết mỹ phẩm', '', 'https://cf.shopee.vn/file/c6809442350c88dec4726d2ed807bcd8_tn', 332836, 2, 17),
(301, 'Lót nón mũ bảo hiểm HÚT MỒ HÔI vừa với nhiều cỡ đầu mẫu mới 2021', '', 'https://cf.shopee.vn/file/b95dfc97ae82a0ad12c39ce9c52d2d40_tn', 902530, 6, 17),
(302, 'Lưới chắn sân golf ', '', 'https://cf.shopee.vn/file/818f07523fe188435a805862bd66631b_tn', 370618, 4, 17),
(303, 'Bóng Golf', '', 'https://cf.shopee.vn/file/e3ee96fcf47c369c190ec86bcf277294_tn', 328344, 7, 17),
(304, 'Thảm tập YOGA', '', 'https://cf.shopee.vn/file/0f893394930ac10fa22a3f44dfd86b12_tn', 737756, 2, 17),
(305, 'ốc salaza thái inox 304 8li25 5li15 nhiễn 6li15 5li15 xoắn 4li xoắn', '', 'https://cf.shopee.vn/file/be3b30837aea907fb5cf3fb4658a4733_tn', 5725, 3, 17),
(306, 'Bánh tráng Sate Muối Tắc Hồng Hạnh', '', 'https://cf.shopee.vn/file/d95c68be88518d02789ce3134de70a48_tn', 972891, 2, 18),
(307, 'Cháo gấu đỏ vị gà/thịt bằm gói 50g', '', 'https://cf.shopee.vn/file/489012229bcc52824281166bef2b94fe_tn', 437654, 9, 18),
(308, 'Hồng Trà Tân Nam Bắc 300gr', '', 'https://cf.shopee.vn/file/2f64ba2f06c43ebe5a7e709e1c43be8e_tn', 845816, 6, 18),
(309, 'Tinh mùi (các loại) hiệu Rayner 28ml', '', 'https://cf.shopee.vn/file/f85be655d578b7a8f12e6897ac5d2f48_tn', 867026, 2, 18),
(310, 'Date 2023) Thịt hộp', '', 'https://cf.shopee.vn/file/a7cb4619351834e759bb92130935fb04_tn', 701599, 3, 18),
(311, 'BÁNH GẠO HÀN QUỐC GÓI 1KG NGON', '', 'https://cf.shopee.vn/file/1c0987bbf7c05577cf41e06c9aee7bc8_tn', 657011, 7, 18),
(312, '(Bao bì mới) Bột phô mai lắc cam Sajang 250gram', '', 'https://cf.shopee.vn/file/d7f812ab50060beaae419379022e9320_tn', 477712, 6, 18),
(313, 'Đường Thốt nốt hữu cơ gói 5g', '', 'https://cf.shopee.vn/file/582308afcb2d65adb72c49af026b0e64_tn', 355785, 5, 18),
(314, 'Kem Chuối Nước Cốt Dừa', '', 'https://cf.shopee.vn/file/cdafffce7bebc41cf303e56d29276a83_tn', 823124, 8, 18),
(315, 'MẬT ONG CÀ PHÊ ĐAKLAK NGUYÊN CHẤT 100%', '', 'https://cf.shopee.vn/file/0ca6aa0408d2b86842251e0c89ce9b6c_tn', 232582, 4, 18),
(316, 'Lông đền nhôm thailand', '', 'https://cf.shopee.vn/file/88774ce44ec871c49ccd0af3bdbdcb6c_tn', 385880, 4, 19),
(317, 'Dây Câu Bình Acquy - Dây Câu Bình Acquy Ô Tô Lõi Đồng Siêu To 2000A Kích Điện Acquy Cứu Hộ Ô Tô', '', 'https://cf.shopee.vn/file/157930fb503a4d8c037dcff054b9cc7f_tn', 994911, 9, 19),
(318, 'Bọc Ghế Ô Tô', '', 'https://cf.shopee.vn/file/63b80b07043788b5c8b51c4e7f74e3e5_tn', 244591, 3, 19),
(319, 'Van ( Vòi Hơi) Xe Đạp Pháp (Lọai 2)', '', 'https://cf.shopee.vn/file/feda6d7d5ab3c3dfb2f09554259fc78c_tn', 707702, 6, 19),
(320, 'Cầu Chì Ô Tô Cầu Chì Xe Máy Mới Công Suất Ngắt Chuẩn Xác TORECA', '', 'https://cf.shopee.vn/file/46994b4c74350d83f3b425cd9966800a_tn', 109777, 9, 19),
(321, '[RẺ NHẤT SHOPEE] Vỏ lọ tinh dầu treo xe ô tô - lọ hình kim cương sang trọng', '', 'https://cf.shopee.vn/file/3f9334e2435efd074950d52acd53b18e_tn', 329447, 5, 19),
(322, '4 cái / bộ Phim bảo vệ cửa sổ bên ô tô Miếng dán chống thấm nước chống sương mù', '', 'https://cf.shopee.vn/file/0d4f942923d1fb71ad970e050f7edd99_tn', 734053, 6, 19),
(323, 'Gối Tựa Ô Tô - Gối Tựa Đầu Tựa Lưng Cao Su Non Nỉ Nguyên Khối Chính Hãng Siêu Đàn Hồi Chống Đau Mỏi Lưng', '', 'https://cf.shopee.vn/file/819ad78e63230d0df4bf39387b692962_tn', 108832, 6, 19),
(324, 'Led sườn sd4003 12v 24v giá 75k:1 đôi', '', 'https://cf.shopee.vn/file/8d4a91fd43a06d4059f914cf7faa1a79_tn', 785853, 9, 19),
(325, 'Set 20 vòi phun bình xăng PWM PWK NSR KSR Keihin OKO CVK', '', 'https://cf.shopee.vn/file/f3893545852db512409acf20be765f0b_tn', 949495, 7, 19),
(326, 'Truyện lẻ - Spy X Family', '', 'https://cf.shopee.vn/file/4d33d644ee6ca0a85a19712120af77a8_tn', 291249, 4, 20),
(327, 'Sách - Combo 8 Cuốn Bộ Sách Chuẩn Bị Cho Bé Vào Lớp 1 (8 cuốn)', '', 'https://cf.shopee.vn/file/72dcf974abfa7cc57499dfe118902bcd_tn', 835389, 1, 20),
(328, 'Sách - Methode Rose: Giáo Trình Piano - nguyetlinhbook', '', 'https://cf.shopee.vn/file/5595ef646f47db359987b2a64f0ba5fd_tn', 647340, 5, 20),
(329, '[CHỈ BÁN HÀNG THÁI] KEM OHO THOA RẠN DA', '', 'https://cf.shopee.vn/file/a19be5329b80157985a9a5cb086645e3_tn', 781962, 8, 20),
(330, 'Keo dán đa năng super Glue Đức Anh - Tuýp 3G', '', 'https://cf.shopee.vn/file/5360b3e232ae5c8b5e0ca37d4a12399f_tn', 419151, 8, 20),
(331, 'Ảnh polaroid chất lượng cao', '', 'https://cf.shopee.vn/file/e637f0fc24f8824ad6ca2eedf8fcd558_tn', 971344, 4, 20),
(332, '1 kg túi nilon gói hàng', '', 'https://cf.shopee.vn/file/908beec77fbb1faa51aa3c8fa69eba39_tn', 849434, 9, 20),
(333, 'Keo nến nhỏ lớn đủ size', '', 'https://cf.shopee.vn/file/ca8c01d440ca58b3ed0bd4e84f9aa6ca_tn', 613603, 5, 20),
(334, 'BÚT CỌ MẦU NƯỚC SAKURA KOI COLOURING BRUSH PEN A', '', 'https://cf.shopee.vn/file/fac2538f5b527a544041005933d3448e_tn', 473033, 2, 20),
(335, 'Gọt bút chì hoạt hình siêu dễ thương', '', 'https://cf.shopee.vn/file/3fab1304d97aba6f8bb4a1c411e8d240_tn', 804746, 4, 20);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
