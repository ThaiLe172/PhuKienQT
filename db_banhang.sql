-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2021 at 01:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `MaTH` int(11) NOT NULL,
  `Hang` varchar(50) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `MaNhom` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`MaTH`, `Hang`, `Logo`, `MaNhom`) VALUES
(1, 'Apple', 'Apple54-b_5.jpg', 'TN'),
(2, 'SamSung', 'Samsung54-b_45.png', 'TN'),
(3, 'JBL', 'JBL54-b_27.jpg', 'TN'),
(4, 'SONY', 'Sony54-b_50.jpg', 'TN'),
(5, 'Huawei', 'Huawei54-b_34.jpg', 'TN'),
(6, 'Realme', 'Realme42-b_37.png', 'TN'),
(7, 'Anker', 'Anker58-b_19.png', 'SC'),
(8, 'Mophie', 'Mophie58-b_58.jpg', 'SC'),
(9, 'SamSung', 'Samsung58-b_41.png', 'SC'),
(10, 'Aukey', 'AUKEY58-b_22.png', 'SC'),
(11, 'Xiaomi', 'Xiaomi58-b_9.jpg', 'SC'),
(12, 'Apple', 'Apple58-b_6.jpg', 'SC'),
(13, 'SamSung', 'Samsung58-b_41 (1).png', 'PDP'),
(14, 'Energizer', 'Energizer57-b_50.jpg', 'PDP'),
(15, 'Xiaomi', 'Xiaomi57-b_36.jpg', 'PDP'),
(16, 'Anker', 'Anker57-b_11.png', 'PDP'),
(17, 'Aukey', 'AUKEY57-b_21.png', 'PDP'),
(18, 'Huawei', 'Huawei42-b_30.jpg', 'PDP'),
(19, 'SamSung', 'Samsung42-b_25.jpg', 'PN'),
(20, 'Apple', 'Apple54-b_5 (1).jpg', 'PN'),
(21, 'Aukey', 'AUKEY57-b_21 (1).png', 'PN'),
(22, 'Xiaomi', 'Xiaomi57-b_36 (1).jpg', 'PN'),
(23, 'Realme', 'Realme42-b_37 (1).png', 'PN'),
(24, 'Energizer', 'Energizer57-b_50 (1).jpg', 'PN');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdh`
--

CREATE TABLE `chitietdh` (
  `SoCTDH` int(11) NOT NULL,
  `Mahh` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Tong` int(11) NOT NULL,
  `MaDH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `SoDonDH` int(11) NOT NULL,
  `MSKH` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgayDH` timestamp NOT NULL DEFAULT current_timestamp(),
  `TrangThai` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MSHH` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenHH` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `SoLuongHang` int(4) NOT NULL,
  `MaNhom` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTaHH` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`MSHH`, `TenHH`, `Gia`, `SoLuongHang`, `MaNhom`, `Hinh`, `MoTaHH`) VALUES
('BS001', 'Ốp lưng S-case chống sốc cho iPhone 12 / 12 Pro', 81000, 35, 'BS', 'qdqwdqd_2_1.png', 'Ốp lưng S-Case chống sốc cho iPhone 12 Max/ Pro – Làm từ silicon chống sốc hiệu quả\r\nBạn đang cần một chiếc ốp lưng để bảo vệ toàn diện cho máy nhưng lại không muốn nó làm thay đổi vẻ ngoài của máy, hơn hết bạn muốn để lộ logo quả Táo thời thượng của Apple. Không sản phẩm nào nổi bật hơn ốp lưng S-Case chống sốc cho iPhone 12 Max/ Pro.\r\n\r\nHoàn thiện cao cấp silicon cao cấp, thiết kế trong suốt\r\nỐp lưng cho iPhone 12 Max | Pro S-Case chống sốc được hoàn thiện chủ yếu đến từ chất liệu silicon cao cấp. Đây là loại vật liệu được sử dụng phổ biến làm ốp lưng với đặc tính dẻo dai, độ đàn hồi cao cùng khả năng hấp thụ lực từ mọi hướng. Từ đó, mang đến khả năng chống sốc hiệu quả.\r\n\r\nGiờ đây, bạn hoàn toàn không cần phải lo về việc để thiết bị trong balo hay túi xách chung với những vật nhọn và cứng bởi vì những góc silicon đã được đệm khí bảo vệ tối ưu.\r\n\r\n'),
('BS002', 'Ốp lưng KST Silicon Chống bám bẩn cho Samsung Galaxy S20 Ultra', 150000, 40, 'BS', 'galaxy-s20_accessories_galaxy_s20_ultra.png', 'Ốp lưng KST Silicon cho Samsung Galaxy S20 Ultra – Phụ kiện ốp lưng chống trầy xước, bụi bẩn tuyệt vời\r\nSamsung Galaxy S20 Ultra là chiếc smartphone mới vừa ra mắt của Samsung. Thiết bị sở hữu vẻ ngoài độc đáo đi cùng giá thành đắt đỏ thì chắc chắn rằng việc trang bị cho nó một chiếc ốp lưng là một điều cần thiết. Ốp lưng KST Silicon chống bám bẩn cho Samsung Galaxy S20 Ultra đến từ nhà sản xuất Kaku là sản phẩm mà bạn nên sở hữu.\r\n\r\nChất liệu silicon bảo vệ tốt, lót lớp microfiber ở mặt trong\r\nChất liệu làm nên từ ốp lưng KST Silicon chống bám bẩn cho Samsung Galaxy S20 Ultra chính là silicon. Đây là chất liệu có đặc tính độ đàn hồi cao giúp bạn bảo vệ Samsung Galaxy S20 Ultra tránh khỏi những tai nạn không đáng có. Do đó, khi sử dụng chiếc ốp lưng KST này, người dùng hoàn toàn yên tâm.'),
('BS003', 'Ốp lưng cho iPhone 8 Plus - Spigen Ultra Hybrid S Case', 414000, 35, 'BS', '0_16_108.png', 'Ốp lưng cho iPhone 8 Plus - Spigen Ultra Hybrid S Case\r\nSpigen là thương hiệu phụ kiện nổi tiếng trên thế giới đến từ California, Mỹ và được sản xuất hoàn toàn tại Hàn Quốc. Các sản phẩm của Spigen đã có mặt tại Việt Nam đã khẳng định được thương hiệu trong người tiêu dùng tại Việt Nam với các dòng ốp lưng cho iPhone, chống va đập bảo vệ máy cực tốt. Trong đó, Ốp lưng cho iPhone 8 Plus - Spigen Ultra Hybrid S Case là sản phẩm thuộc dòng Ultra Hybrid S được sản xuất để bảo vệ cho iPhone 8 Plus.'),
('BS004', 'Ốp lưng Chống Sốc UAG Lucent Cho iPhone 12 Pro Max', 720000, 35, 'BS', '1000px_apple_iphone6.png', 'Ốp lưng chống sốc UAG Lucent cho iPhone 12 Pro Max - Linh hoạt, độc đáo & bền chắc\r\nVới những series ốp lưng bảo vệ như Pathfinder, Monarch, Plyo hay Plasma, UAG hiện đang là thương hiệu được tin dùng nhất trong làng phụ kiện iPhone. Với sự ra mắt của iPhone 12 Pro Max, bạn sẽ không thể bỏ qua sản phẩm ốp lưng chống sốc UAG Lucent cho iPhone 12 Pro Max chính hãng.\r\n\r\nThiết kế linh hoạt, nhẹ nhàng với chấm lưng trong suốt độc đáo\r\nUAG Lucent là chiếc ốp lưng cho iPhone 12 Pro Max được thiết kế cho những người dùng thường xuyên di chuyển với điện thoại trên tay. Chiếc ốp có thiết kế theo chuẩn iPhone 12 Pro Max nên rất dễ tháo lắp, đồng thời cũng ốp cũng ôm sát thân máy nhằm đảm bảo không để kẽ hở.\r\n\r\nChế tác từ chất liệu cao cấp, UAG Lucent mang đến cho bạn cảm giác cầm nắm chắc chắn nhưng cũng rất êm nhẹ trên tay, giúp bạn thoải mái di chuyển & cầm máy mà không hề gây cồng kềnh.'),
('BS005', 'Pin dự phòng Baseus Gentleman siêu mỏng 10.000mAh', 290000, 55, 'BS', '_213.png', 'Pin dự phòng Baseus Gentleman dùng cho iPhone – Samsung – Oppo – Xiaomi\r\nVới phân khúc cao cấp, dung lượng lên đến 10.000 mAh – 38Wh, pin sạc dự phòng Baseus Gentleman Digital Display Powerbank hỗ trợ tương thích với tất cả các thiết bị smartphone và tablet cho các thương hiệu thông dụng.\r\n\r\nThương hiệu Baseus và sản phẩm pin sạc dự phòng Gentleman\r\nBaseus là tập đoàn chuyên sản xuất phụ kiện công nghệ, nhãn hàng từ Hồng Kông định hướng phát triển sáng tạo trong thiết kế các phụ kiện công nghệ nguyên bản, đơn giản, tinh tế và thời thượng.\r\n\r\nTập đoàn Baseus là một trong những thương hiệu hàng đầu với nghiên cứu phát triển sản phẩm – R&D, đảm bảo chất lượng từ các khâu chế tạo và sản xuất.'),
('BS006', 'Pin dự phòng AUKEY PB-N51 10000 mAh Slim', 390000, 35, 'BS', 'pin-s_c-d_-ph_ng-aukey-pb-n51-10000mah-1.png', 'Pin dự phòng Aukey PB-N51 10000 mAh Slim – Pin sạc nhanh mọi lúc mọi nơi\r\nAukey là một trong những thương hiệu nổi tiếng về các sản phẩm phụ kiện điện thoại, các sản phẩm đến từ thương hiệu này có thiết kế đẹp mắt, hiệu năng cao. Pin dự phòng Aukey PB-N51 10000 mAh Slim là một trong những sản phẩm đến từ thương hiệu cao cấp này thiết kế đơn giản gọn nhẹ, dung lượng pin lớn cùng nhiều tính năng vượt trội khác, hứa hẹn sẽ là giải pháp giúp người dùng đảm bảo được nhu cầu năng lượng cho các thiết bị di động khi cần thiết.\r\n\r\nKích thước 147 x 75 x 14 mm, trọng lượng 198g\r\nPin dự phòng Aukey PB-N51 10000 mAh Slim sở hữu thiết kế khá nhỏ gọn, với kích thước chuẩn là 147 x 75 x 14 mm và trọng lượng cực kì nhẹ 198g. Với kích thước như vậy, người dùng có thể dễ dàng mang theo pin dự phòng đi bất kỳ đâu mà không hề lo bị cồng kềnh, vướng tay hau tốn nhiều diện tích. Các chi tiết được nhà sản xuất làm rất tỉ mỉ, các góc cạnh được bo cong cho người dùng cảm giác cầm nắm êm ái.'),
('BS007', 'Pin dự phòng AUKEY PB-XN5 5000mAh USB-C', 390000, 55, 'BS', 'aukey-pb-xn5-power-bank-3_2000x_2__1_1.png', 'Sạc dự phòng Aukey PB - XN5 dung lượng 5000 mAh, tốc độ sạc nhanh\r\nPin dự phòng Aukey PB - XN5  là sản phẩm đến từ Aukey - thương hiệu nổi tiếng thế giới chuyên sản xuất các phụ kiện điện thoại, đặc biệt là dòng sản phẩm sạc dự phòng. Với dung lượng pin 5000 mAh, tốc độ sạc nhanh, pin dự phòng Aukey PB-XN5 hứa hẹn sẽ mang lại tiện ích tối đa cho cuộc sống của những người bận rộn.\r\n\r\nThiết kế nhỏ gọn 125g, pin Li-ion chất lượng chống cháy nổ\r\nPin dự phòng Aukey 5000 PB-XN5 sở hữu thiết kế bo tròn, cho cảm giác cầm nắm thoải mái. Sản phẩm có kích thước khá gọn nhẹ với trọng lượng chỉ khoảng 125 g nên rất tiện lợi nếu người dùng muốn mang theo sạc dự phòng bên mình.'),
('BS008', 'Pin dự phòng Mophie Power Station Plus Cổng Type-C 12000Mah', 1290000, 30, 'BS', 'mophie-powerstationplusxl-usbc-a.png', 'Pin dự phòng Mophie Power Station Plus - phụ kiện dành cho người dùng smartphone\r\nTrong cuộc sống hiện nay việc thường xuyên sử dụng các thiết bị điện tử khiến việc dung lượng sẵn có của thiết bị không đủ cho thiết bị hoạt động liên tục nhiều giờ. Vậy nên việc sở hữu 1 viên pin dự phòng Mophie Power Station Plus để sạc lại kịp thời là vô cùng cần thiết.\r\n\r\nPin dự phòng Mophie Power Station Plus được thiết kế màu đen sang trọng\r\nViên pin được thiết kế bao bọc bởi vỏ nhôm nhám màu đen sang trọng, chống trầy xước và chống bám vân tay tốt. Vì bề mặt nhám nên việc cầm nắm viên pin rất dễ dàng, hạn chế được tình trạng làm rơi rớt hỏng sản phẩm.'),
('BS009', 'Cáp sạc nhanh USB-C to Lightning Innostyle Duraflex 1.5m MFI', 300000, 25, 'BS', 'h_1.png', 'Cáp sạc nhanh USB-C to Lightning Innostyle Duraflex 1.5m MFI: Cáp chuẩn Apple\r\nChiếc cáp sạc nhanh iPhone của bạn đang bị hỏng và chập chờn, bạn mong muốn tìm kiếm một chiếc sạc mới bền hơn chiếc cũ và vẫn giữ được các chức năng sạc nhanh? Mời bạn tham khảo về chiếc cáp sạc nhanh USB-C to Lightning Innostyle Duraflex 1.5m MFI.\r\n\r\nCông nghệ cáp Kevlar bền bỉ chất lượng cùng khả năng chống chịu lực lên đến 10000 lần\r\nVới công nghệ Kevlar có độ bền ngang ngửa một chiếc áo chống đạn thì chiếc cáp sạc nhanh USB-C to Lightning Innostyle Duraflex 1.5m MFI được bảo vệ tốt nhất. Công nghệ này bao bọc bên trong chiếc dây và hạn chế được sự gập mở và đứt dây trong.'),
('BS010', 'Sạc AUKEY PA-Y11 48W 2 Cổng USB Type-C Power Delivery 2.0 (30W) và Quick Charge 3.0 PA-Y11', 690000, 40, 'BS', '3_12_243_1.png', 'Sạc AUKEY PA-Y11: Củ sạc 2 cổng đa dụng, hỗ trợ sạc nhanh tiện lợi\r\nBạn đang cảm thấy chiếc củ sạc nhà mình chưa đủ chức năng sạc nhanh hay chưa đủ tiện dụng để có thể sạc cùng lúc 2 thiết bị điện tử? Hãy cùng tham khảo bài viết sạc AUKEY PA-Y11 48W 2 cổng USB Type-C Power Delivery 2.0 (30W) và Quick Charge 3.0 PA-Y11, với nhiều tính năng và trang bị cao cấp đến từ nhà sản xuất Aukey.\r\n\r\nThiết kế bằng nhựa cao cấp, gọn nhẹ cùng khả năng chống cháy nổ tốt\r\nMang trong mình một thiết kế bằng nhựa cao cấp, giúp cho trọng lượng của chiếc củ sạc AUKEY PA-Y11 chỉ đạt 127g. Cùng với đó kích thước tổng thể lần lượt của củ sạc này là 64 x 63 x 29 mm, khá là nhỏ gọn so với các củ sạc cùng phân khúc trên thị trường hiện nay. Việc trọng lượng nhẹ và nhỏ gọn sẽ giúp người dùng thuận tiện hơn trong việc mang vác theo.'),
('BS011', 'Củ sạc nhanh Xiaomi Zmi Ha716 Type C 20W PD', 240000, 35, 'BS', 'cu-sac-nhanh-xiaomi-zmi-ha716-type-c-20w-pd-1_1.png', 'Củ sạc nhanh Xiaomi Zmi HA716 Type C 20W PD – Khả năng sạc nhanh công suất lớn, mạch điện an toàn\r\nCủ sạc của bạn vừa mới mất hoặc vừa mới hỏng, nếu muốn tiếp tục sử dụng chiếc điện thoại đang sắp hết pin kia bạn cần mua một củ sạc mới ngay lập tức. Song bạn cần chú ý đến độ tương thích và công suất sạc nhằm gia tăng thời gian sạc cho thiết bị, củ sạc nhanh Xiaomi Zmi HA716 Type C 20W PD đang là ứng cử viên sáng giá để rút ngắn thời gian sạc ngắn nhất.\r\n\r\nTrọng lượng chỉ 42.8g, hoàn thiện từ nhựa PC\r\nCủ sạc nhanh Xiaomi Zmi HA716 Type C 20W PD mang một thiết kế cực kỳ nhỏ gọn, cụ thể là trọng lượng chỉ đạt 42.8g. Qua đó, bạn hoàn toàn có thể cầm trên tay dễ dàng, hoặc đút vào trong túi quần và đi đến khắp mọi nơi. Bên cạnh đó, nhằm giúp củ sạc có thể chống chọi được các lực va đập thì hãng sản xuất Xiaomi phủ lớp nhựa PC lên Xiaomi Zmi HA716 Type C.'),
('BS012', 'Hub Macbook FEELTEK USB-C Lego hub 8 in 1', 1790000, 25, 'BS', 'hubwireless.png', 'Hub Macbook Feeltek USB-C Lego 8 in 1 - Bộ kết nối thích hợp cho người dùng iPhone, MacBook\r\nVới người dùng thiết bị Apple thường xuyên bận rộn, nhu cầu sạc pin lẫn kết nối luôn là rất lớn. Và sản phẩm phụ kiện Hub Macbook Feeltek USB-C Lego 8 in 1 với 8 cổng kết nối sẽ cho phép bạn sạc pin cho cả iPhone lẫn MacBook và truyền dữ liệu với tốc độ nhanh chóng.\r\n\r\n8 cổng kết nối đa chức năng, hỗ trợ cả sạc không dây Qi\r\nBộ chia cổng kết nối Feeltek USB-C Lego 8 in 1 bao gồm: 1 cổng USB-C thường, 1 cổng USB-C sạc nhanh PD, 2 cổng USB-A 3.1, 1 khe thẻ nhớ SD, 1 khe thẻ nhớ MicroSD, 1 cổng HDMI và 1 jack tai nghe 3.5mm. Ngoài ra còn có đầu kết nối USB-C 3.1 được trang bị vào phụ kiện. Người dùng có thể vừa sạc pin cho thiết bị, vừa sao lưu dữ liệu, vừa chuyển hình ảnh lên màn hình chiếu chỉ với bộ chia cổng này một cách tiện lợi.'),
('OL001', 'Bao Da Clear View cho Samsung Galaxy Note 20 Ultra', 1500000, 30, 'OL', 'den_10_1.png', 'Bao da Clear View cho Samsung Galaxy Note 20 Ultra – Thiết kế tiện lợi, bảo vệ toàn diện\r\nSamsung Galaxy Note 20 Ultra là siêu phẩm vừa ra mắt năm 2020 của Samsung với thiết kế tuyệt đẹp cùng với những tính năng được nâng cấp mang đến trải nghiệm ấn tượng cho người dùng. Sử dụng một chiếc siêu phẩm như thế nên người dùng luôn tìm kiếm những món phụ kiện giúp bảo vệ cho smartphone của mình một cách an toàn. Bao da cho Samsung Galaxy Note 20 Ultra Clear View sẽ là món phụ kiện tuyệt vời với thiết kế mặt trước trong suốt tiện lợi cùng chất liệu da cao cấp sang trọng.'),
('OL002', 'Ốp lưng chống sốc cho iPhone 12/12 Pro Gear4 D3O Hackney 5G', 1080000, 35, 'OL', 'hackney_6-1_black_hero_1_1.png', 'Ốp lưng chống sốc cho iPhone 12 / 12 Pro Gear4 D3O Hackney 5G - Cho độ bền lâu dài & bền vững\r\nMột chiếc ốp lưng bền chắc & chống sốc sẽ đảm bảo iPhone 12 / 12 Pro trở nên an toàn dài lâu. Xuất xứ từ thương hiệu ZAGG Anh Quốc, sản phẩm ốp lưng chống sốc cho iPhone 12 / 12 Pro Gear4 D3O Hackney 5G sẽ là món phụ kiện đồng hành cùng chiếc flagship iPhone của bạn.\r\n\r\nKết cấu ba lớp bảo vệ với công nghệ độc quyền tiên tiến cho khả năng chống va đập\r\nThiết kế của ốp Gear4 D3O Hackney 5G sử dụng kết cấu ba lớp chất liệu D3O, TPU và nhựa polycarbonate cho độ định hình vững chắc cùng khả năng bảo vệ điện thoại tốt nhất. Trong đó, sản phẩm ốp lưng này được sản xuất với công nghệ D3O độc quyền tiên tiến, giúp tạo nên độ chống sốc cao cấp & bảo vệ điện thoại khỏi va đập từ độ cao đến 4 mét.'),
('OL003', 'Ốp lưng Apple Silicone chính hãng cho iPhone 12/12 Pro tương thích sạc MagSafe', 1590000, 15, 'OL', 'mhl43.png', 'Ốp lưng Apple Silicone cho iPhone 12/12 Pro - Ốp lưng tương thích sạc MagSafe công suất 15W\r\nHay tin iPhone 12/ 12 Pro không được tặng kèm củ sạc khiến không ít người dùng lo lắng. Không sao đây chính là lúc đổi sang sử dụng sạc không dây tiện lợi. Ngoài ra, đừng quên trang bị cho chiếc điện thoại của mình một chiếc ốp lưng để bảo vệ nữa nhé.\r\n\r\nHoàn thiện từ chất liệu silicon, chống sốc hiệu quả\r\nỐp lưng cho iPhone 12/ 12 Pro tương thích sạc MagSafe được hoàn thiện chủ yếu đến từ chất liệu silicon. Đây là chất liệu được sử dụng phổ biến trên những dòng ốp lưng cao cấp bởi nó có đặc tính mềm dẻo vượt trội. Qua đó, đem đến trải nghiệm cầm nắm thoải mái trong hàng giờ đồng hồ.'),
('OL004', 'Ốp lưng Aramid Standing cho Samsung Galaxy Z Fold 2', 1490000, 35, 'OL', 'op-lung-aramid-standing-cho-galaxy-z-fold2.png', 'Ốp lưng Aramid Standing cho Samsung Galaxy Z Fold 2 – Thiết kế ôm khít, bảo vệ toàn diện\r\nỐp lưng là phụ kiện bảo vệ điện thoại được sử dụng phổ biến, đặc việt với Samsung Galaxy Z Fold 2. Nếu bạn đang sở hữu mẫu điện thoại đặc biệt này nhưng chưa tìm được ốp lưng ưng ý, hãy tham khảo ốp lưng Aramid Standing cho Samsung Galaxy Z Fold 2.\r\n\r\nThiết kế ôm khít – cầm nắm chắc chắn\r\nCũng nhưng mọi chiếc ốp khác, ốp lưng Aramid Standing có thiết kế ôm khít điện thoại. Nhờ đó Galaxy Z Fold 2 có thể tránh khỏi nhứng trầy xước ở mặt lưng, góc cạnh. Thiết kế này cũng giúp hạn chế bụi bẩn bám vào máy.'),
('OL005', 'Bao Da Clear View cho Samsung Galaxy Note 20', 1500000, 30, 'OL', 'hong_5_5.png', 'Bao da Clear View cho Samsung Note 20 - Hiển thị rõ thông tin trên bề mặt\r\nHẳn bạn đã không còn xa lạ với bao da Clear View - món phụ kiện không thể thiếu cho flagship cao cấp của Samsung. Và nếu bạn vừa sở hữu siêu phẩm Galaxy Note 20, bạn sẽ cần đến chiếc bao da cho Samsung Galaxy Note 20 Clear View .\r\n\r\nThiết kế Clear View tối ưu và mỏng nhẹ tạo cảm giác thoải mái và thuận tiện\r\nChiếc bao da cho Samsung Galaxy Note 20 được thiết kế theo phong cách doanh nhân cao cấp, với tính năng \"Clear View\" giúp hiển thị mọi thông tin và thao tác ngay trên bao da mà không cần phải mở phần nắp bảo vệ. Khi có cuộc gọi, tin nhắn hay thông báo đến, người dùng chỉ cần chạm và vuốt là có thể thoải mái thực hiện mọi thao tác trên, góp phần tối ưu hóa công việc hằng ngày một cách thuận tiện'),
('OL006', 'Ốp lưng chống sốc cho iPhone 11 Gear4 D3O Hampton Light Gray', 960000, 20, 'OL', 'gear4_hampton_lightgrey_iphone2019-6.1_3.png', 'Ốp lưng chống sốc cho iPhone 11 Gear4 D30 Hampton Light Gray – 3 lớp bảo vệ, chống sốc hoàn hảo\r\nỐp lưng chống sốc cho iPhone 11 Gear4 D30 Hampton Light Gray là một món phụ kiện có chất lượng chống sốc tuyệt vời, mang đến một lớp bảo hộ hoàn hảo bảo vệ chiếc iPhone 11 của bạn. Với 3 lớp bảo vệ và thiết kế đơn giản, tinh tế, đây chắc chắn là món phụ kiện không thể bỏ qua.\r\n\r\nThiết kế đơn giản với màu Light Gray tinh tế, trọng lượng nhẹ\r\nỐp lưng chống sốc cho iPhone 11 Gear4 D30 Hampton Light Gray có thiết kế đơn giản và được hoàn thiện tỉ mỉ với các đường nét, đường cắt chính xác, vừa vặn với iPhone 11. Độ mỏng vừa phải, trọng lượng nhẹ chỉ khoảng 0.3g cho cảm giác ốp như không ốp, mỏng nhẹ hoàn hảo.'),
('OL007', 'Ốp lưng ESR Mimic Tempered Glass Cho iPhone 11', 590000, 25, 'OL', 'iphone-11-mimic-tempered-glass-case-2_2.png', 'Ốp lưng cho iPhone 11 ESR Mimic Tempered Glass - Màu sắc sang trọng và bảo vệ tối ưu\r\niPhone 11 đang là một trong những siêu phẩm smartphone hiện nay. Với thiết kế cụm camera vuông ấn tượng cùng mặt lưng kính bắt mắt. Chính vì vậy, việc bảo vệ chiếc điện thoại này bạn cần đến một chiếc ốp lưng để bảo vệ khỏi những rủi ro và ốp lưng ESR Mimic Tempered Glass cho iPhone 11 là một lựa chọ hết sức tuyệt vời.\r\n\r\nThiết kế ôm sát, nhiều phiên bản màu sắc\r\nỐp lưng ESR Mimic Tempered Glass được sản xuất dành riêng cho iPhone 11, sở hữu thiết kế ôm sát vào điện thoại tạo cảm giác chắc chắn hơn cho người sử dụng khi cầm nắm. Các lỗ loa cụm camera cũng được hoàn thiện chính xác, không mang đến cảm giác kho chịu khi sạc cũng như giảm âm lượng khi sử dụng.'),
('OL008', 'Bao Da Clear View cho Samsung Galaxy S20 Ultra', 693000, 25, 'OL', 'galaxy-s20_galaxy_s20_plus_clear_view_black_2.png', 'Bao da Clear View cho Samsung Galaxy S20 Ultra - Thiết kế thời trang, hiển thị thông báo tiện lợi\r\nHiện nay đa số người dùng khi sở hữu chiếc Samsung Galaxy S20 Ultra luôn tìm kiếm cho mình một món phụ kiện bảo vệ toàn diện cho chiếc điện thoại mà không ảnh hưởng đến các chức năng của máy. Bao da Clear View cho Samsung Galaxy S20 Ultra sẽ là một sự lựa chọn hoàn hảo cho bạn. Với thiết kế thời trang, chất liệu da cao cấp đi kèm đường cắt ô hiển thị giúp bạn không bỏ lỡ bất kỳ thông báo nào.\r\n\r\nKiểu dáng thời trang tiện dụng mỏng, trọng lượng nhẹ vừa vặn ôm sát thân máy\r\nBao da Clear View cho Samsung Galaxy S20 Ultra với thiết kế kiểu dáng thời trang tôn lên vẻ đẹp đầy tinh tế cho chiếc điện thoại. Với cấu tạo bọc mở ngang bao da Clear View rất thuận tiện cho việc mở và đóng bao da. Ngoài ra chất liệu tạo nên bao da mỏng không làm tăng lên kích thước của chiếc điện thoại đáng kể nhưng cũng không kém cứng cáp để bảo vệ chiếc điện thoại'),
('OL009', 'Ốp lưng Samsung Kvadrat cho Samsung Galaxy Note 20 Ultra', 560000, 30, 'OL', 'op-lung-cho-galaxy-note20-ultra-kvadrat.png', 'Ốp lưng Samsung Kvadrat cho Samsung Galaxy Note 20 Ultra – Ốp lưng vải cao cấp\r\nBạn đang sử dụng Samsung Galaxy Note 20 Ultra đồng thời đang tìm kiếm phụ kiện bảo vệ cũng như trang trí điện thoại. Vậy ốp lưng Samsung Kvadrat cho Samsung Galaxy Note 20 Ultra là phụ kiện đáng để bạn tham khảo.\r\n\r\nỐp lưng mỏng nhẹ, nhiều màu sắc cá tính\r\nỐp lưng cho Samsung Note 20 Samsung Kvadrat được thiết kế mỏng nhẹ, ôm sát điện thoại, không lo ốp bị lỏng lẻo sau thời gian dài sử dụng. Ốp với chất liệu từ nhựa polyester tái chế giúp giảm thải tác động về môi trường.'),
('OL010', 'Ốp lưng chống sốc Spigen Ultra Hybrid cho Samsung Galaxy Note 20 Ultr', 590000, 50, 'OL', 'clear_title_sp675_uh_03_1.png', 'Ốp lưng chống sốc Spigen Ultra Hybrid thiết kế trong suốt cho Samsung Galaxy Note 20 Ultra\r\nThiết kế ốp lưng trong suốt bán chạy của hãng Spigen thương hiệu cao cấp từ Mỹ với chất lượng đánh giá từ các diễn đàn công nghệ cũng như nhận được nhiều người tin dùng công nhận. Ốp lưng cho Samsung Galaxy Note 20 Ultra chống sốc Spigen Ultra Hybrid với thiết kế trong suốt giữ nguyên kiểu dáng và màu sắc sang trọng, đảm bảo an toàn, chống trầy xước cho chiếc điện thoại thông minh của bạn.\r\n\r\nSamsung Galaxy Note 20 Ultra – Chụp ảnh sắc nét và khả năng tích hợp rộng\r\nSản phẩm ra mắt có kết nối 5G với hai phiên bản màu sắc Mystic Bronze – Đồng huyền bí và Mystic Black – Đen huyền bí, màn hình Dynamic AMOLED lớn 6,9 inch và nâng cấp Samsung DeX hỗ trợ liên kết Galaxy Note 20 với Smart TV cho trải nghiệm trọn vẹn. Samsung Galaxy Note 20 Ultra tăng cường độ nhạy và mang đến trải nghiệm vượt trội với cây bút S Pen thế hệ mới nhất.'),
('OL011', 'Ốp lưng ESR Yippee Color Cho iPhone 11 Pro Max', 390000, 25, 'OL', 'iphone-11-pro-yippee-color-soft-case-4_2.png', 'Ốp lưng cho iPhone 11 Pro Max ESR Yippee Color - chiếc ốp lưng dẻo dai, bền bỉ đáng sở hữu trong tầm giá\r\nVới những ai coi trọng vẻ ngoài cho chiếc điện thoại của mình, cụ thể là chiếc iPhone 11 Pro Max thì sẽ không thể nào bỏ qua chiếc ốp lưng ESR Yippee Color cho iPhone 11 Pro Max với độ bảo vệ cao cùng mức độ đàn hồi tốt.\r\n\r\nESR - hãng phụ kiện đến từ Mỹ được nhiều người tin dùng\r\nLà công ty được sáng lập vào năm 2009 tại Mỹ, với tham vọng mang lại cho người dùng những sản phẩm có chất lượng tốt nhất và cho đến nay, thương hiệu ESR đến nay đã gặt hái được nhiều thành công nhờ vào việc đi theo đúng với tham vọng của họ. Các dải sản phẩm của họ bao gồm ốp lưng, miếng dán, sạc,...'),
('OL012', 'Ốp lưng chống sốc cho iPhone 12 Pro Max Gear4 D3O Piccadilly', 765000, 20, 'OL', 'iphone-11-pro-max-gear4-d3o.png', 'Ốp lưng chống sốc cho iPhone 12 Pro Max Gear4 D30 Piccadilly – Bảo vệ tối ưu\r\nBạn đang sở hữu một chiếc iPhone 12 Pro Max và đang tìm một phụ kiện tốt nhất đế bảo vệ chiếc smartphone yêu quý của mình. Hãy chọn ngay ốp lưng cho iPhone 12 Pro Max chống sốc Gear4 D30 Piccadilly sẽ là chiếc ốp lưng đáng được bạn quan tâm và lựa chọn. Với thiết kế vô cùng hiện đại, trẻ trung cùng khả năng bảo vệ ưu việt. Hy vọng, chiếc ốp lưng này sẽ mang đến sự hài lòng tuyệt đối cho người sử dụng\r\n\r\nThiết kế mỏng nhẹ, chất liệu D30 siêu bền\r\nSở hữu thiết kế được hoàn thiện từ chất liệu D30 siêu bền đây là vật liệu được ứng dụng nhiều trong Quân đội. Chất liệu D3O với độ mỏng nhẹ kinh ngạc giúp thiết bị của bạn vừa vặn trên tay và để dễ dàng trong túi mà không gây bị cấn, bị cộm.'),
('OL013', 'Ốp lưng da cao cấp KST Cho Apple iPhone 7/8 Plus', 200000, 15, 'OL', 'dqxqx.png', 'Ốp lưng da cao cấp KST cho Apple iPhone 7/8 Plus giúp bảo vệ an toàn cho iPhone\r\nĐối với người dùng iPhone thì việc bảo vệ an toàn luôn là điều người dùng quan tâm vì nếu iPhone 7/8 Plus bị hư hỏng thì chi phí sửa chữa là không hề rẻ. Sử dụng ốp lưng chính là cách hiệu quả với chi phí hợp lý và với ốp lưng da cao cấp KST cho Apple iPhone 7/8 Plus sẽ là sự lựa chọn không thể bỏ qua, giúp bảo vệ iPhone của bạn.\r\n\r\nThiết kế đơn giản với mặt lưng da sang trọng, kích thước vừa vặn với iPhone 7/8 Plus\r\nỐp lưng da cao cấp KST cho Apple iPhone 7/8 Plus có thiết kế đơn giản nhưng không kém phần sang trọng nhờ mặt lưng da cao cấp tinh tế. iPhone 7 Plus và 8 Plus có thiết kế tương tự nhưng mặt lưng của iPhone 8 Plus được phủ thêm một mặt kính cường lực giúp iPhone 8 Plus bóng bẩy, sang trọng hơn. Chính vì thế, chiếc ốp lưng da cao cấp KST có thể sử dụng được cho cả iPhone 7 Plus và 8 Plus'),
('OL014', 'Ốp lưng cho iPhone 7 Plus / 8 Plus - S-case Silicon', 90000, 40, 'OL', '1_39_22_1.png', 'Ốp lưng cho iPhone 7 Plus / 8 Plus - S-Case Silicon - Ốp lưng trong suốt, bảo vệ tối ưu\r\nBạn là fan đến từ các sản phẩm Apple, chắc hẳn những cái tên như iPhone 7 Plus / 8 Plus không hề xa lạ đối với mỗi người đam mê công nghệ. Bạn đang tìm cho thiết bị của mình một chiếc ốp lưng giúp bảo vệ điện thoại khỏi các trầy xước và va đập không đáng có trong suốt quá trình sử dụng. Hãy chọn mua ngay ốp lưng cho iPhone 7 Plus / 8 Plus - S-Case Silicon, sản phẩm hứa hẹn là sự lựa chọn hoàn hảo dành cho bạn.\r\n\r\nChất liệu TPU có độ đàn hồi cao, thiết kế trong suốt\r\nỐp lưng cho iPhone 7 Plus / 8 Plus - S-Case Silicon sở hữu thiết kế được làm từ chất liệu nhựa dẻo TPU chất liệu này có độ đàn hồi cao, rất mềm, cho cảm giác cầm êm tay và dễ chịu, thoải mái thao tác trên điện thoại trong thời gian dài. Các chi tiết trên ốp được hoàn thiện một cách tỉ mỉ và chính xác. Thiết kế ôm sát lấy thân máy cho cảm giác cầm nằm chắc tay hạn chế tối đa việc trơn chượt khi người dùng sử dụng.'),
('OL015', 'Ốp lưng chống sốc cho iPhone 12 Pro Max Likgus Light trong suốt viền màu', 225000, 30, 'OL', '_iphone11_11pro_max__2.png', 'Ốp lưng chống sốc cho iPhone 12 Pro Max Likgus Light trong suốt viền màu - Ốp lưng bảo vệ toàn diện\r\nBạn sở hữu iPhone 12 Pro Max và muốn tìm cho mình một chiếc ốp lưng giúp khẳng định phong cách của mình nhưng vẫn không quên nhiệm vụ chính là bảo vệ an toàn cho chiếc máy của bạn. Vậy thì ốp lưng cho iPhone 12 Pro Max Likgus Light trong suốt viền màu sẽ là lựa chọn tuyệt vời để giúp bạn thỏa mãn yêu cầu trên.\r\n\r\nThiết kế mặt lưng trong suốt, khung viền nhiều màu sắc độc đáo\r\nỐp lưng iPhone 12 Pro Max Likgus Light với thiết kế mặt lưng trong suốt giúp show vẻ đẹp mặt lưng của máy. Khung viền nhiều màu sắc cho người dùng lựa chọn giúp tạo điểm nhấn cho sản phẩm.'),
('OL016', 'Ốp lưng cho iPhone 6S Plus / 7 Plus / 8 Plus - UAG Monarch Series', 1379000, 20, 'OL', '0_16_82.png', 'Ốp lưng UAG Monarch Series cho iPhone 6S Plus / 7Plus / 8 Plus – Thiết kế 5 lớp bảo vệ cùng tiêu chuẩn đạt chất lượng quân đội Mỹ\r\nSự phát triển của công nghệ nói chung và cả thế giới smartphone nói riêng đã kéo theo đó là sự phát triển của các mặt hàng liên quan. Đặc biệt trong số đó phải nói đến ốp lưng điện thoại. Nếu như bạn đang tìm kiếm cho mình một chiếc ốp lưng đầy mạnh mẽ và cá tính cho điện thoại của mình cùng với đó là khả năng bảo vệ cực kì tối ưu thì chiếc ốp lưng cho iPhone 6S Plus/ 7Plus/ 8 Plus thuộc UAG Monarch Series sẽ là một sự lựa chọn không thể tốt hơn.'),
('PD001', 'Pin sạc dự phòng Polymer 10.000mAh Xiaomi Mi 18W Fast Charge Power Bank 3', 380000, 30, 'PDP', 'pin-xiaomi-gen-3-10000-h7_4.png', 'Pin sạc dự phòng Xiaomi Gen 3 10000mAh - Hết pin không còn là nỗi lo\r\nBạn đang tìm cho mình một chiếc sạc dự phòng có dung lượng cao đủ cho nhiều lần sử dụng? Bên cạnh đó, các công nghệ hiện đại đi kèm cũng được bạn quan tâm? Sạc dự phòng Xiaomi Gen 3 10000mAh Type C 2019 chính là sự lựa chọn dành cho bạn.\r\n\r\nDung lượng pin 10000mAh, lõi pin tiêu chuẩn đến từ LG/ Panasonic\r\nTương tự những sản phẩm trước, sạc dự phòng Xiaomi 10000mAh Gen 3 Type C 2019 được trang bị lõi pin Li-Po (Lithium Polymer) đến từ nhà sản xuất hàng đầu như LG/Panasonic. Vì thế bạn có thể an tâm về chất lượng cũng như tuổi thọ của sản phẩm.'),
('PD002', 'Pin sạc dự phòng ENERGIZER 10,000MAH - UE10045', 295000, 35, 'PDP', '3136d45580637b3d2272_copy.png', 'Pin sạc dự phòng Energizer UE10045 10,000 mAh – Dung lượng khủng 10000 mAh cùng công nghệ Auto Voltage Sensing an toàn\r\nPin dự phòng Energizer 10000 mAh UE10045 sẽ là sản phẩm mà người dùng cân nhắc sở hữu khi nhu cầu về thời gian sử dụng điện thoại di động đang gia tăng nhằm đáp ứng các mục đích công việc hay giải trí. Bên cạnh dung lượng pin cao, sản phẩm còn sở hữu khả năng sạc nhanh công suất đến 10W.'),
('PD003', 'Pin dự phòng Samsung EB-P1100 10.000 Mah cổng USB-C', 290000, 40, 'PDP', 'untitled_2_10.png', '\r\nPin dự phòng Samsung EB-P1100 10.000 mAh cổng USB-C chính hãng\r\nPin sạc dự phòng là một phụ kiện vô cùng tiện lợi và cần thiết được nhiều người sử dụng trong thời đại công nghệ số hiện nay. Chúng đặc biệt được ưa chuộng trong những chuyến đi xa, hoặc bởi những người bận rộn không có thời gian sạc điện thoại.Với pin sạc dự phòng phòng Samsung EB-P1100 10.000 mAh cổng USB-C với dung lượng khủng 10000 mAh, bạn sẽ không còn phải lo hết pin điện thoại khi đi xa.'),
('PD004', 'Pin sạc dự phòng Huawei 10000Mah Fast charge 18W', 190000, 15, 'PDP', '4f123ac231cca364f9ff11993e5396bd.png', 'Pin dự phòng Huawei 10000mAh – Sạc nhanh fast charge 18W, thiết kế nhỏ gọn\r\nPin dự phòng luôn là món phụ kiện không thể thiếu, giúp bạn sạc pin cho smartphone mọi lúc mọi nơi và là món phụ kiện luôn có mặt trong các chuyến du lịch, công tác, dã ngoại,… Pin sạc dự phòng Huawei 10000mAh fast charge 18W với thiết kế nhỏ gọn, thanh lịch và được trang bị công nghệ sạc nhanh fast charge 18W sẽ giúp bạn sạc pin cho các thiết bị điện tử nhanh chóng, thuận tiện đem theo bên mình.'),
('PD005', 'Pin dự phòng Anker PowerCore Select 10000mAh A1223', 490000, 25, 'PDP', 'a1223_td01_master_1.png', 'Pin sạc dự phòng Anker Powercore Select 10000 mAh A1223 – Sở hữu công nghệ sạc nhanh độc quyền PowerIQ thế hệ 2.0 \r\nPin sạc dự phòng Anker từ lâu đã là một thương hiệu mang lại uy tín nhất định trên thị trường phụ kiện trong nước nói riêng và thế giới nói chung. Sở hữu dung lượng lưu trữ lên đến 10000 mAh cùng nhiều tính năng hiện đại thì sản phẩm pin dự phòng Anker PowerCore Select 10000 mAh A1223 sẽ là một lựa chọn không thể phù hợp hơn dành cho bạn.'),
('PD006', 'Pin sạc dự phòng SamSung EB-P3300X 10.000 MAH sạc nhanh 25W chính hãng', 990000, 45, 'PDP', 'samsung-eb-p3300x-stribrna_ien340633.png', 'Pin dự phòng SamSung EB-P3300X – Dung lượng lớn, hỗ trợ sạc nhanh 25W\r\nNhằm mang lại một độ bền bỉ cùng khả năng sạc nhanh với dung lượng pin lớn. Samsung đã cho ra mắt một sản phẩm sạc dự phòng là pin dự phòng SamSung EB-P3300X 10.000 mAh sạc nhanh 25W chính hãng với nhiều công nghệ đảm bảo độ an toàn cùng khả năng sạc nhanh 25W siêu tốc.\r\n\r\nĐèn LED thông báo tình trạng pin nổi bật cùng thiết kế sơn nhám ôm tay\r\nCụm 4 đèn led thông báo trên sạc dự phòng SamSung EB-P3300X này có khả năng hiển thị đèn led trắng. Mỗi mức led sẽ tương ứng với 25% pin, điều này giúp bạn có thể hiểu rõ hơn tình trạng và mức pin còn trong chiếc viên pin sạc dự phòng của mình. Ngoài ra, kế bên cụm đèn led còn có một nút bấm giúp hiển thị đèn led nhanh.'),
('PD007', 'Pin dự phòng 10000mAh tích hợp sạc không dây 5W Energizer QE10007', 590000, 35, 'PDP', 'p0133_20191114143821.png', 'Pin dự phòng Energizer QE10007 - Sạc pin nhanh chóng, an toàn tuyệt đối\r\nVới sự bùng nổ của thiết bị công nghệ ngày nay thì việc luôn phải sạc thiết bị liên tục là điều không tránh khỏi. Tuy nhiên việc sạc mọi lúc mọi nơi với sạc dự phòng có tích hợp sẵn nhiều cổng kết nối là điều vô cùng hiếm đối với pin sạc dự phòng. Chính vì vậy pin dự phòng 10000mAh Energizer QE10007 ra đời để đáp ứng như cầu cao của người sử dụng.'),
('PD008', 'Pin dự phòng Iwalk Chic 10000mah QC 3.0 PD tích hợp sạc không dây 10W', 500000, 20, 'PDP', 'wireless-charging-typec-micro-input-4.png', 'Pin sạc dự phòng Iwalk chic 10.000 mAh – pin dự phòng hỗ trợ sạc nhanh PD và QC 3.0\r\nĐiện thoại vốn là vật bất ly thân trong thời buổi công nghệ ngày nay, tình trạng điện thoại mau hết pin gây bất tiện cho người dùng, vậy nên bạn cần chuẩn bị một chiếc pin sạc dự phòng để không bị gián đoạn công việc. Vốn là thiết bị phụ kiện thông minh nổi tiếng toàn cầu, pin sạc dự phòng iWALK chic 10.000 mAh tích hợp sạc không dây 10W có thiết kết gọn gàng, dễ dàng cầm nắm và mang theo đến nhiều nơi để sử dụng khi thiết bị cần sạc pin.\r\n\r\nThiết kế sang trọng, đẹp mắt với chất liệu vỏ nhôm anode hóa độ bền cao\r\nPin sạc dự phòng iWALK chic 10.000 mAh tích hợp sạc không dây 10W có thiết kế gọn gàng, chỉ dày hơn chiếc điện thoại của bạn một chút, dài 152 x 71 x 18 mm.'),
('PD009', 'Pin dự phòng Anker PowerCore 13000 A1215', 750000, 30, 'PDP', '1_8_132_4.png', 'Pin dự phòng Anker A1215: Độ bền cùng hiệu năng cao\r\nNhằm mang lại một độ bền bỉ cùng khả năng sạc nhanh với dung lượng pin lớn. Anker đã cho ra mắt một sản phẩm sạc dự phòng nhanh chuẩn Qi là pin dự phòng Anker PowerCore 13000 mah A1215 với nhiều công nghệ đảm bảo độ an toàn cùng khả năng sạc nhanh siêu tốc. Để hiểu rõ hơn mời bạn tham khảo bài viết bên dưới.\r\n\r\nThiết kế bằng nhựa bền bỉ cùng trọng lượng nhẹ\r\nAnker A1215 sở hữu một thiết kế bằng nhựa cao cấp giúp cho chiếc pin sạc dự phòng này trở nên bền bỉ hơn. Ngoài ra, nhà sản xuất còn trang bị thêm một lớp sơn nhám. Giúp cho người dùng có thể cầm nắm sản phẩm pin sạc dự phòng Anker A1215 một cách dễ dàng mà không sợ trơn trượt làm rơi rớt viên pin.'),
('PD010', 'Pin dự phòng iWalk 10000mAh QC 3.0 PD 18w UBC10000PS', 400000, 15, 'PDP', 'screenshot_1_21_5.png', 'Pin dự phòng iWalk 10000mAh QC 3.0 PD 18w ubc 10000ps – Thiết kế ấn tượng, công nghệ sạc nhanh 18W\r\nPin dự phòng iWalk 10000mAh QC 3.0 PD 18w ubc 10000ps là chiếc pin sạc dự phòng mới nhất của iWalk với điểm nổi bật lớn nhất nằm ở thiết kế. Bên cạnh đó, không thể không kể đến khả năng sạc pin công suất lên đến 18W, rút ngắn rất nhiều thời gian sạc.\r\n\r\nTrọng lượng chỉ 240g, hoàn thiện từ nhôm, thiết kế rãnh để cầm nắm\r\nPin dự phòng iWalk 10000mAh QC 3.0 PD 18w ưu tiên bởi sự mỏng nhẹ, cụ thể nó mỏng mỏng 16mm và rất nhẹ chỉ 240g. Qua đó, bạn hoàn toàn có thể bỏ nó vào trong balo, túi xách hay thậm chí là túi quần và đến bất kỳ đâu. Toàn bộ thân của pin sạc dự phòng đều được hoàn thiện từ hợp kim nhôm. Chất liệu này cho pin sạc độ bền cao, chống được tất cả va đập nhẹ và bền màu sau khi đã sử dụng trong thời gian dài.'),
('PD011', 'Pin dự phòng Xiaomi Mi Gen 2 2018 10000 mAh', 360000, 30, 'PDP', '1_29_2.png', 'Sạc dự phòng Xiaomi Mi Gen 2 10000mAh – phụ kiện thông minh không thể thiếu\r\nXiaomi là nhà sản xuất smartphone, phụ kiện và đồ dùng trong nhà thông minh được đông đảo người dùng chào đón. Trong đó có pin dự phòng Xiaomi Mi Gen 2 10.000 mAh. Một phiên bản nâng cấp với rất nhiều cải tiến đáng chú ý, hứa hẹn sẽ mang đến cho người dùng những trải nghiệm mới hoàn hảo hơn.\r\n\r\nThiết kế kim loại nguyên khối, dày 14.2mm cầm vừa tay\r\nViên pin được trang bị 2 màu chính là trắng và đen. Tổng thể thiết kế của viên pin dự phòng này là 147 x 71.2 x 14.2mm, với lớp vỏ kim loại nguyên khối đã đi qua công nghệ anodizing giúp cho bề mặt pin không bị trầy xước và hạn chế được sự ăn mòn trong quá trình sử dụng.'),
('PD012', 'Pin dự phòng AUKEY PB-XN10 10000mAh USB-C', 295000, 25, 'PDP', '8cceb367e8ed6608cc957f94f6353d29_1.png', 'Pin sạc dự phòng AUKEY PB-XN10 10000 mAh USB-C – Phụ kiện sạc pin chất lượng cao\r\nVới việc nhu cầu sử dụng các thiết bị di động như smartphone, tablet ngày càng tăng trong khi thời lượng pin của chúng chưa được cải thiện đáng kể, những viên pin dự phòng trở thành phụ kiện đóng vai trò quan trọng trong quá trình sinh hoạt hàng ngày. Nếu bạn đang cần tìm mua pin dự phòng AUKEY PB-XN10 10000 mAh USB-C, hãy đến CellphoneS để được mua với mức giá hấp dẫn.\r\n\r\nThiết kế tinh tế, gọn gàng và chắc chắn\r\nPin dự phòng AUKEY PB-XN10 có thiết kế nhỏ gọn với kích thước 125.6 x 70 x 15 mm và trọng lượng 200.8 g, thuận tiện để người dùng cầm trên tay và mang theo bên mình.'),
('PN001', 'Tai nghe Bluetooth Samsung Galaxy Buds Live', 2790000, 0, 'PN', 'buds_2_1_.png', 'Samsung Galaxy Buds Live thiết kế hạt đậu vừa tai cùng khả năng khử tiếng ồn\r\nViệc sử dụng tai nghe từ lâu đã trở thành một thói quen của nhiều người bởi sự tiện lợi mà thiết bị này mang lại. Nhưng ngày nay, người dùng đòi hỏi ngày càng cao hơn đối với một chiếc tai nghe không chỉ ở thiết kế mà cả sự cải thiện về tính năng. Đáp ứng điều đó, Samsung đã cho ra mắt Samsung Galaxy Buds Live giúp trải nghiệm sử dụng tai nghe của người dùng trở nên tuyệt vời hơn.\r\nThiết kế hình hạt đậu không nhô khỏi tai và có nhiều màu sắc khác nhau\r\nGalaxy Buds Live có là dạng tai nghe nhét tai với thiết kế hình hạt đậu lạ mắt khi sử dụng không bị nhô ra khỏi tai mà nằm gọn, vừa vặn trên tai của bạn mang đến cảm giác thoải mái khi đeo. Dù bạn sử dụng suốt cả ngày thì tai nghe cũng không khiến bạn cảm thấy khó chịu hay nặng tai.'),
('PN002', 'Tai nghe Bluetooth Apple AirPods 2 VN/A', 3500000, 20, 'PN', 'image_2019-03-29_09-12-07_2.png', 'Tai nghe Apple AirPods 2 – Thiết kế tối giản, chất lượng âm thanh tuyệt vời\r\nVừa qua, Apple đã chính thức cho ra mắt chiếc tai nghe Airpods 2. Thế hệ thứ 2 lần này không có nhiều sự khác biệt so với thế hệ đầu về ngoại hình, trừ một số chi tiết về đèn báo hiệu cũng như ra mắt thêm phiên bản sạc không dây và sạc thường (sạc có dây). Ngoài ra, bạn có thể tham khảo thêm Apple Airpods 3, sắp được ra mắt trong thời gian tới.'),
('PN003', 'Tai nghe bluetooth Realme Buds Air Neo', 1390000, 20, 'PN', 'realme-buds-ai_1_.png', 'Realme Buds Air Neo - Tai nghe không dây giá rẻ, nhiều màu sắc, tốc độ ổn định\r\nHiện nay tai nghe không dây đang trở nên phổ biến với nhiều người dùng đam mê công nghệ hiện nay. Nếu bạn mong muốn có được cặp tai nghe không dây giá rẻ nhưng có vẻ ngoài sang trọng không thua gì tai nghe cao cấp, tai nghe Realme Buds Air Neo chính là món phụ kiện mà bạn đang tìm kiếm.\r\n\r\nThiết kế \"true wireless\" gọn nhẹ với nhiều màu sắc hấp dẫn\r\nRealme Buds Air Neo được thiết kế theo dạng \"true wireless\" nhỏ gọn & êm nhẹ nhằm mang lại cho người dùng trải nghiệm nghe nhạc thoải mái nhất. Củ tai mang hình dáng khá giống với các mẫu tai nghe cao cấp hiện nay, mang đến cho người dùng vẻ ngoài thời thượng chỉ với mức giá phổ thông. Tai nghe được điều khiển thông qua thao tác chạm cảm ứng: 2 chạm để phát/ngưng ngạc và nhận cuộc gọi; 3 chạm để chuyển bài hát; nhấn & giữ 1 bên tai để kết thúc cuộc gọi; nhấn & giữ cả hai bên tai để bật/tắt chế độ Super Low Latency Mode.'),
('PN004', 'Tai nghe Bluetooth Soundpeats True Capsule Smart Touch', 540000, 25, 'PN', '7-7-800x992_1.png', 'Soundpeats TrueCapsule Smart Touch - Chất âm tuyệt hảo trong củ tai nhỏ gọn\r\nVới khả năng mang đến âm thanh sắc nét & trong trẻo, gói gọn bên trong củ tai không dây vừa vặn & nhỏ nhắn, tai nghe Soundpeats TrueCapsule Smart Touch chính là phụ kiện âm thanh sang trọng & thời thượng. Đây sẽ là cặp tai nghe luôn đồng hành cùng bạn mọi lúc mọi nơi. Bên cạnh đó, bạn có thể tham khảo thêm: Soundpeats TrueCapsule 2.\r\n\r\nThiết kế công thái học gọn nhẹ, điều khiển chạm thông minh Smart Touch\r\nTai nghe Soundpeats TrueCapsule Smart Touch có thiết kế theo hướng công thái học với vẻ ngoài đơn giản nhưng không kém phần tinh tế & thời thượng. Củ tai được thiết kế theo dạng nhét trong, với ba kích cỡ nút tai khác nhau giúp người dùng dễ dàng chuyển đổi sang nút tai phù hợp. Đồng thời, trọng lượng nhẹ chỉ 5.4g cho mỗi bên củ tai sẽ đảm bảo mang lại cho người dùng trải nghiệm nghe nhạc thoải mái.'),
('PN005', 'Sạc Energizer 2.4A 2 cổng USB ACA2BUSH', 200000, 50, 'PN', '0_19_38.png', 'Sạc Energizer 2 cổng USB ACA2BUSH – Sạc nhanh hơn với tốc độ 480Mbps và cuông nghệ Fast Charge\r\nCủ sạc là phụ kiện không thể thiếu trong cuộc sống hàng ngày của chúng ta. Và chúng ta sử dụng sạc để nạp năng lượng cho điện thoại, máy tính bảng, laptop và rất nhiều thiết bị điện tử khác. Chính vì vậy, việc sử dụng sạc Energizer Hightech Wall Charger 2.4 A 2 USB ACA2BUSH, thiết bị chất lượng cao của hãng sản xuất uy tín, là việc cực kì cần thiết để đảm bảo sự an toàn cho thiết bị và bản thân người dùng.\r\n\r\nKích thước nhỏ gọn, chất liệu nhựa bền bỉ\r\nSạc Energizer Hightech Wall Charger 2.4 A 2 USB ACA2BUSH có kích thước vô cùng nhỏ gọn, hoàn toàn nằm gọn trong lòng bàn tay người dùng. Ngoài ra, với thiết kế chấu cắm có thể ẩn vào bên trong, người dùng có thể xếp gọn sạc lại và bỏ vào trong balo hay túi xách khi không sử dụng.'),
('PN006', 'Cáp AUKEY USB-C 2M bọc sợi Nylon (Braided Nylon) CB-AC2', 210000, 45, 'PN', 'cb-ac2-3_2000x.png', 'Cáp Aukey USB-C 2M bọc sợi Nylon (Braided Nylon) CB-AC2 - Siêu bền chất lượng, tốc độ truyền tải nhanh\r\nCáp Aukey USB-C CB-AC2 là sản phẩm thuộc một trong những dòng cáp sạc chất lượng cao đến từ hãng Aukey. Phụ kiện được hoàn thiện chính xác đến từng chi tiết, rất linh hoạt và cực kỳ bền bỉ với chất liệu Nylon. Hãy cùng CellphoneS tìm hiểu các tính năng cũng như chuẩn tốc độ mà sợi cáp đến từ thương hiệu nổi tiếng của Đức sở hữu nhé!\r\n\r\nThiết kế đơn giản, bền bỉ với chất liệu Nylon bao bọc bên ngoài\r\nSo với cáp sạc to bản cồng kềnh như trước đây, cáp sạc Aukey CB-AC2 có thiết kế nhỏ gọn hơn rất nhiều, dễ dàng bỏ túi mang đi bất cứ đâu mà bạn muốn. Ngoài ra, dây cáp sạc khá cứng cáp bền chắc bởi có kết cấu nguyên khối, dễ dàng cuộn xếp lại thành cuộn mang theo khi di chuyển nhiều.'),
('PN007', 'Sạc 2 cổng Innostyle MiniGo 2 12W', 190000, 35, 'PN', 'minigo-2.png', 'Sạc Innostyle MiniGo 2 12W – Sạc 2 cổng nhanh chóng, tiện lợi và an toàn\r\nTrong cuộc sống, vì nhu cầu công việc, giải trí mà nhiều người thường dùng nhiều hơn một thiết bị di động (có thể sử dụng thêm smartphone, tablet bên cạnh một chiếc điện thoại chính). Nếu bạn cũng là một người như vậy, hãy mua sạc 2 cổng Innostyle MiniGo 2 12W đang được bán với giá rất hấp dẫn tại CellphoneS để thuận tiện hơn trong quá trình sạc pin.\r\n\r\nThiết kế nhỏ gọn, đầu cắm có thể gập lại\r\nSạc 2 cổng Innostyle MiniGo 2 12W là người bạn đồng hành lý tưởng với những người dùng thường xuyên di chuyển nhờ kích thước nhỏ gọn (40 x 40 x 28.5 mm) cùng trọng lượng nhẹ (45 g), thuận tiện để bạn bỏ vào balo, túi xách hay thậm chí là cả túi quần.'),
('PN008', 'Cáp Belkin Mixit Duratex sợi Kevlar siêu bền Type-C 1.2m', 490000, 50, 'PN', 'webdam.web.1000.1000_3__4_1.png', 'Cáp sạc Type-C Belkin Mixit DuraTek sợi Kevlar siêu bền 1,2 mét - dây sạc tiện lợi không thể thiếu dành cho bạn\r\nVới xã hội ngày nay ngày càng phát triển và dựa dẫm nhiều hơn vào công nghệ thì chắc chắn dây sạc chính là món phụ kiện không thể thiếu đối với mỗi người, đặc biệt là cáp Belkin Mixit Duratex sợi Kevlar siêu bền.\r\n\r\nBelkin International - công ty chuyên về phụ kiện nổi tiếng đến từ Mỹ\r\nĐược thành lập vào năm 1983 tại Mỹ, công ty đặt mục tiêu ban đầu phải tạo ra những sản phẩm thiết thực cũng như dễ dàng sử dụng cho người dùng. Và cho đến ngày nay, công ty đã trở thành một công ty lớn với 3 thương hiệu con là Belkin, Linksys và WeMo. Nếu như Belkin là sản xuất phụ kiện thì Linksys là thương hiệu chuyên cung cấp các giải pháp kết nối không dây và WeMo là chuyên về nhà thông minh.'),
('PN009', 'Ốp Lưng Da KST Cao Cấp cho Samsung Galaxy S20 Ultra', 170000, 35, 'PN', 'c1fa228cad3e0390657652bc87e9a291.png', 'Ốp lưng da KST cao cấp cho Samsung Galaxy S20 Ultra – Bảo vệ toàn diện, kiểu dáng sang trọng\r\nỐp lưng là một món phụ kiện mà những người dùng smartphone đều sở hữu cho mình ít nhất 1 chiếc để bảo vệ cho smartphone của mình khỏi trầy xước, hạn chế hư hỏng do va đập. Với ốp lưng da KST cao cấp dành cho Samsung Galaxy S20 Ultra, bạn sẽ có thể bảo vệ cho chiếc điện thoại của mình tốt hơn với thiết kế sang trọng và cao cấp.\r\n\r\nKích thước dành riêng Samsung Galaxy S20 Ultra, mặt ốp da sang trọng\r\nVới một kiệt tác như Samsung Galaxy S20 Ultra thì việc bảo vệ smartphone sao cho smartphone luôn bền đẹp là điều vô cùng cần thiết. Chiếc ốp lưng da KST cao cấp dành cho Samsung Galaxy S20 Ultra được thiết kế để mang đến hiệu quả bảo vệ tốt nhất dành cho smartphone. Kích thước hoàn toàn vừa vặn và ôm sát từng đường nét của smartphone giúp bảo vệ hiệu quả đồng thời không làm tăng kích thước của smartphone.'),
('PN010', 'Ốp lưng cho Apple Watch Series 3/2/1 (42mm) - Spigen Rugged Armor Case', 490000, 50, 'PN', '0_17_70.png', 'Ốp lưng cho Apple Watch Series 3/2/1 (42mm) - Spigen Rugged Armor Case\r\nApple Watch hiện đã trở thành một phụ kiện hữu ích và cần thiết cho rất nhiều người, đặc biệt là các fan của nhà Apple. Trong quá trình sử dụng Apple Watch, chắc chắn người dùng không thể tránh khỏi những lúc bất cẩn va chạm hay đánh rơi đồng hồ, dẫn đến những vết xước, vỡ và thậm chí là hư hỏng nặng. Để khắc phục được điều này, rất nhiều mẫu ốp lưng cho Apple Watch ra đời. Trong số đó, phải kể đến Ốp lưng cho Apple Watch Series 3/2/1 (42mm) - Spigen Rugged Armor Case, chiếc ốp lưng không chỉ có khả năng bảo vệ mà còn giúp nâng cao vẻ đẹp sang trọng cho đồng hồ Apple Watch của bạn.\r\n\r\nỐp lưng cho Apple Watch Series 3/2/1 (42mm) - Spigen Rugged Armor Case có khả năng bảo vệ tuyệt hảo\r\nỐp lưng cho Apple Watch Series 3/2/1 (42mm) - Spigen Rugged Armor Case là sản phẩm đến từ hãng Spigen (Mỹ), đây là thương hiệu xuất xứ của những chiếc ốp lưng tốt nhất thế giới cho các thiết bị di động trong đó có Apple watch.'),
('PN011', 'Ốp lưng cho iPhone X - Spigen Neo Hybrid', 612000, 30, 'PN', '33191_gear4_crystal-palace_cleark_iphone-xsplus_6_1.png', 'Ốp lưng Spigen Neo Hybrid cho iPhone X - Đơn giản, thời thượng và bảo vệ toàn bộ điện thoại hiệu quả\r\nNeo Hybrid™ là dòng sản phẩm ốp lưng bán chạy nhất của hãng Spigen. Chính thiết kế tối giản dễ bỏ túi cùng khả năng chống sốc hiệu quả đã làm cho Neo Hybrid™ trở nên hấp dẫn đối với nhiều người dùng smartphone. Nếu bạn là người dùng iPhone X, hãy đến ngay CellphoneS để sở hữu ốp lưng cho iPhone X Spigen Neo Hybrid.\r\n\r\nVẻ ngoài tối giản, gọn nhẹ với phím bấm linh hoạt\r\nỐp lưng cho iPhone X Spigen Neo Hybrid có kết cấu vừa vặn, ôm trọn thân máy giúp tạo cảm giác mỏng, gọn, nhẹ và dễ dàng bỏ túi. Vẻ ngoài được thiết kế tối giản với mặt lưng họa tiết rãnh chéo độc đáo, tạo nên sức hút cho toàn bộ thiết bị.'),
('PN012', 'Ốp lưng chống sốc cho iPhone 12 / 12 Pro Gear4 D3O Holborn Slim ', 1080000, 30, 'PN', 'download_3.png', 'Ốp lưng chống sốc cho iPhone 12 / 12 Pro Gear4 D3O Holborn Slim – Thiết kế bền bỉ bảo vệ tối ưu\r\nBạn đang sở hữu chiếc iPhone 12 / 12 Pro tuy nhiên đang băn khoăn lo lắng rằng thiết của mình sẽ bị trầy xước và va đập. Hãy chọn mua ngay Ốp lưng chống sốc cho iPhone 12 /12 Pro Gear4 D3O Holborn Slim, chất liệu cao cấp cùng khả năng bảo vệ an toàn chiếc iPhone 12 Max/ Pro tránh khỏi các tác động xấu từ bên ngoài sẽ làm bạn ấn tượng.\r\n\r\nChất liệu chống sốc D3O, viền nhựa dẻo TPU\r\nỐp lưng chống sốc cho iPhone 12 / 12ro  Gear4 D3O Holborn Slim đến từ thương hiệu hàng đầu trong lĩnh vực thiết kế sản xuất ốp lưng của Anh. \r\n\r\nSở hữu thiết kế được hoàn thiện từ chất liệu chống sốc D3O thân thiện với người sử dụng và môi trường, nếu bạn đã quá chán với chiếc ốp lưng có thiết kế quá dày và nặng thì Gear4 sẽ làm bạn hài lòng ngay từ khi nhìn thấy.'),
('SC001', 'Sạc Xiaomi ZMI 2 cổng USB Type-C 30W HA722 + Cáp C to C 1m', 390000, 50, 'SC', 'xiaomi-zmi-ha722-30w-cap-type-c-to-type-c-1m.png', 'Sạc Xiaomi ZMI 2 cổng USB Type-C 30W HA722 + Cáp C to C 1m - lựa chọn tuyệt vời cho người sở hữu nhiều thiết bị di động\r\nSạc Xiaomi ZMI 2 cổng USB Type-C 30W HA722 là sản phẩm được rất nhiều người yêu thích sử dụng hiện nay. Với thiết kế nhỏ gọn, trang bị 2 cổng ra với công suất sạc nhanh lên tới 30W, cùng với cổng USB type C hỗ trợ PD sản phẩm có thể sạc được cho Laptop, Macbook. Đây là lựa chọn tuyệt vời dành cho những ai sở hữu nhiều thiết bị di động.\r\n\r\nThiết kế nhỏ gọn, chất liệu nhựa nhựa ABS cao cấp, trọng lượng chỉ 65g\r\nSạc nhanh Xiaomi ZMI 2 cổng USB Type-C 30W HA722 có kích thước 48x47x28 mm khá nhỏ gọn. Sản phẩm được làm từ chất liệu nhựa ABS cao cấp mang đến khả năng chống cháy và có thể chịu được nhiệt độ cao.\r\n\r\nBề mặt của cốc sạc được kết hợp tinh tế giữa nhựa bóng và nhựa nhám tạo mang đến cảm giác thú vị cho người sử dụng khi cầm nắm.'),
('SC002', 'Sạc Mophie Power Delivery 18W 1USB-C', 390000, 40, 'SC', 'black_-18w-c-withoutlogo-1200x1200_1.png', 'Sạc Mophie Power Delivery 18W USB-C – Phụ kiện sạc nhanh chính hãng\r\nHiện nay, để tối ưu hóa tốc độ sạc cũng như thay đổi chuẩn để phù hợp với công nghệ sạc trên thiết bị hầu hết các hãng sản xuất sạc đều dần đổi sang sử dụng chuẩn USB-C. Thiết bị của bạn đang sử dụng USB-C và bạn đang tìm kiếm mua cho mình một bộ cáp sạc vừa phù hợp với jack dây sạc vừa phù hợp với chiếc điện thoại để không gây ảnh hưởng tốc độ sạc. Sạc Mophie Power Delivery 18W USB-C là sự lựa chọn hoàn hảo cho bạn cả về tốc độ cũng như độ an toàn.'),
('SC003', 'Sạc Anker PowerPort Mini 12w 2 Cổng - A2620', 180000, 45, 'SC', '2_f481a5f196ef46bfbfab3d0c26cae121_master.png', 'Củ sạc Anker PowerPort Mini 12w 2 cổng - A2620 – Tiện ích nhân đôi với 2 cổng đầu ra\r\nAnker là thương hiệu công nghệ nổi tiếng đến từ Mỹ, các sản phẩm của hãng đều được áp dụng những công nghệ mới và hiện đại tạo cho người dùng những trải nghiệm tốt nhất. Trên củ sạc Anker PowerPort Mini 12W 2 cổng - A2620 cũng không ngoại lệ khi được Anker tích hợp những đặc điểm về thiết kế, hiệu suất, tiện ích mà khó có thể gặp trên những sản phẩm của hãng khác.\r\n\r\nAnker PowePort Mini 12W với thiết kế nhỏ gọn vừa vặn trong lòng bàn tay\r\nĐối với những người đang sử dụng những ổ cắm có kích thước nhỏ thì việc có được một củ sạc nhỏ gọn là điều vô cùng tiện ích. Nắm được điểm yếu này Anker đã cho ra đời sản phẩm có kích thước siêu nhỏ giúp tiết kiệm không gian tối đa trên các ổ cắm.'),
('SC004', 'Sạc Xiaomi ZMI 2 cổng USB Type-C 30W HA722', 290000, 25, 'SC', 'ezgif-2-bfecb58b156a.png', 'Sạc Xiaomi ZMI 2 cổng USB Type-C 30W HA722 - Tốc độ sạc nhanh vượt trội\r\nXiaomi là một trong những hãng sản xuất phụ kiện mang lại chất lượng rất tốt và an toàn. Nếu bạn đang tìm kiếm sạc để giúp cho thiết bị có thể sạc nhanh hơn đảm bảo an toàn thì sạc Xiaomi ZMI 2 cổng USB Type-C 30W HA722 sẽ là lựa chọn hoàn hảo phù hợp nhất trong tầm giá dành cho bạn.\r\n\r\nThiết kế gọn nhẹ, chất liệu nhựa ABS cao cấp\r\nSạc Xiaomi ZMI 2 cổng USB Type-C 30W HA722 được thiết kế khối hình chữ nhật với kích thước nhỏ gọn 48 x 47 x 28 mm chưa bao gồm chân sạc. Không những kích thước gọn gàng mà trọng lượng cũng rất nhẹ chỉ 65g.'),
('SC005', 'Cáp Anker Powerline 2 A8632 Usb C to Lightning 0.9m', 290000, 35, 'SC', '8632.png', 'Cáp Anker Powerline II A8632 – Cáp sạc hỗ trợ sạc nhanh, độ bền cao\r\nKể từ dòng iPhone 8 Plus trở về sau, Apple đã hỗ trợ công nghệ sạc nhanh Power Deleiver(PD) cho phép tăng công suất sạc lên đến 18W thay vì sạc 5W so với các thiết bị trước đó, hỗ trợ rút ngắn thời gian sạc cho người sử dụng. Tuy nhiên sạc nhanh này đòi hỏi người dùng cần trang bị một sợi dây cáp từ USB-C sang Lightning cho các thiết bị của iPhone và iPad. Nếu bạn đang mong muốn tìm cho mình một sợi dây hỗ trợ công nghệ PD, bền bỉ và cao cấp thì cáp Anker Powerline II USB-C to Lightning A8632 sẽ là trợ thủ đắc lực dành cho bạn.');
INSERT INTO `hanghoa` (`MSHH`, `TenHH`, `Gia`, `SoLuongHang`, `MaNhom`, `Hinh`, `MoTaHH`) VALUES
('SC006', 'Cáp Anker PowerLine II Lightning (3FT/0.9M) A8432', 270000, 40, 'SC', 'a8432011_td01_v1.png', 'Cáp Anker PowerLine II Lightning A8432 sở hữu độ bền bỉ cao cùng khả năng tương thích hầu hết iPhone và iPad\r\nAnker là thương hiệu vô cùng nổi tiếng chuyên sản xuất các linh kiện, phụ kiện cho smartphone như cáp sạc hay pin dự phòng. Cáp Anker PowerLine II Lightning A8432 là một trong những sản phẩm rất được ưa chuộng của thương hiệu này nhờ vào chất liệu cao cấp, bền bỉ cùng khả năng tương thích tốt cho bạn trải nghiệm sử dụng tuyệt vời.\r\n\r\nĐộ dài 0.9m vừa phải, dễ sử dụng cùng nhiều màu sắc cho bạn lựa chọn\r\nCáp Anker PowerLine II Lightning A8432 sở hữu độ dài rất vừa phải, không quá dài là 0.9m, với độ dài này bạn sẽ vô cùng tiện lợi khi mang theo và rất dễ sử dụng mà không hề bị vướng víu. Đồng thời với độ dài hợp lí như thế sẽ hạn chế việc dây cáp bị rối khiến bạn rất khó chịu, nhất là khi cần sử dụng gấp.'),
('SC007', 'Cáp Mophie Usb-C To Lightning MFI 1M', 350000, 35, 'SC', '442e395071668a38d377.png', 'Cáp Mophie USB-C to Lightning 1M – Chiếc cáp phù hợp sạc pin từ Macbook\r\nNếu dây cáp iPhone/iPad/iPod của bạn bị hỏng và bạn đang có nhu cầu mua một sợi dây cáp sạc mới, chuyên dụng để sạc và truyền tải dữ liệu của thiết bị với chiếc Macbook thì cáp Mophie USB-C to Lightning 1M chính là sợi cáp mà bạn cần tìm. Sản phẩm sở hữu mức giá phải chăng và chất lượng bền bỉ.\r\n\r\nHoàn thiện dây bện nylon chắc chắn, chiều dài vừa phải 1m\r\nCáp Mophie USB-C to Lightning 1M được hoàn thiện chủ yếu đến từ sợi nylon bện vô cùng chắc chắn. Hơn nữa, cảm giác rất mịn, thân thiện, và vẫn cho cảm giác chắc chắn, yên tâm khi sử dụng. Cảm giác khi cần cáp Mophie USB-C to Lightning này khác hoàn toàn so với các loại cáp khác ngoài thị trường cũng bọc bằng vải dù, cho cảm giác thô, cứng tay. Chất liệu này đem đến khả năng chống rối, chống uốn gập cực tốt.'),
('SC008', 'Sạc Anker 1 Cổng 18W PD A2019', 470000, 45, 'SC', '1_29a3743e8fd04722a8248351be41403c_master.png', 'Củ sạc Anker 1 cổng 18W PD A2019 – sạc nhanh 18W cùng Power Delivery tương thích cao\r\nCủ sạc là phụ kiện không thể thiếu, đóng vai trò cung cấp năng lượng cho smartphone, tablet. Sạc Anker 1 cổng 18W PD A2019 là củ sạc lý tưởng để bạn có thể sạc nhanh đầy điện thoại của bạn với khả năng tương thích nhiều thiết bị bằng cổng USB-C. Ngoài ra, sạc Anker 18W PD A2019 là sản phẩm có thể sạc nhanh công suất lến đến 18W.\r\n\r\nThiết kế sạc Anker 18W PD mang tính di động cao, hai màu cơ bản đen và trắng\r\nSạc Anker 1 cổng 18W PD được thiết kế với cấu trúc đơn giản và chắc chắn. Thiết bị có hai phiên bản màu trắng và đen trang nhã dễ dàng lựa chọn, khối lượng rất nhẹ bạn có thể mang đi bất kỳ đâu mà không gặp phải khó khăn. Sạc Anker 18W trở thành bạn đồng hành của bạn trên mọi nẻo đường.'),
('SC009', 'Cáp Mophie Lightning MFI 1M', 250000, 30, 'SC', '7a597bef-8c11-4a54-9638-326a9fba356a-jpeg.png', 'Cáp Mophie Lightning 1M – Hoàn thiện chất liệu bền bỉ, đạt chứng nhận MFi\r\nVới sự ra đời của iPad Pro và Macbook Pro đã gây ra một cơn sốt trên toàn thế giới, điều này không chỉ là vì thiết kế hay hiệu năng ấn tượng mà còn bởi việc Apple đã chuyển cổng sạc sang cổng USB-C. Vì vậy, điều cấp thiết hiện nay là cần ngay cáp Mophie Lightning 1M để truyền tải dữ liệu giữa iPhone và các thiết bị trên.\r\n\r\nThiết kế bện dây nylon bền chắc, chiều dài đến 1m\r\nCáp Mophie Lightning 1M được hoàn thiện từ chất liệu nylon và được thiết kế theo dạng bện tỉ mỉ, mang đến vẻ ngoài tuy đơn giản nhưng cũng tinh tế và cao cấp không kém. Chất liệu này còn giúp cho cáp bền chắc trong môi trường khắc nghiệt và dễ dàng cuộn gọn mà không bị rối dây. Do đó, bạn hoàn toàn yên tâm khi quấn cáp gọn gàng và bỏ vào trong balo, túi xách mà không suy nghĩ gì thêm.'),
('SC010', 'Sạc Apple iPhone 5W MD813ZM/A', 490000, 50, 'SC', 'cu_sac.png', 'Sạc Apple iPhone chính hãng 5W MD813ZM/A - phụ kiện không thể thiếu cho người dùng Apple\r\nLà sản phẩm củ sạc chính hàng từ Apple, củ sạc Apple iPhone 5W MD813ZM/A cho bạn khả năng nạp lại năng lượng cho các thiết bị iDevice hoặc các thiết bị di động khác thông qua việc kết hợp với dây sạc tương ứng.\r\n\r\nCủ sạc  Apple iPhone 5W MD813ZM/A - Thiết kế dành riêng cho thị trường Việt Nam\r\nCủ sạc Apple iPhone 5W MD813ZM/A với thiết kế đơn giản nhưng không kém phần tinh tế mang lại cho người sử dụng cảm giác sang trọng. Đây là một củ sạc có thiết kế gọn nhẹ, dễ dàng mang đi bất kỳ đâu, mang lại sự tiện dụng cho người dùng.'),
('SC011', 'Sạc Aukey Pa-F3 30W 2 cổng Usb-A + Type C', 490000, 35, 'SC', '1f407ab52ccd752418ce665690af4886-removebg.png', 'Sạc Aukey Pa-F3 30W 2 cổng Usb-A + Type C - Tốc độ sạc nhanh vượt trội\r\nBạn cần một bộ sạc có tốc độ sạc nhanh kèm hỗ trợ nhiều loại cổng sạc mới để phù hợp với xu hướng cổng sạc hiện nay. Sạc Aukey Pa-F3 30W 2 cổng Usb-A + Type C sẽ là một sự lựa chọn hoàn hảo mang đến một tốc độ sạc nhanh chóng dành cho bạn. Với những gì sạc Aukey mang lại bạn sẽ được trải nghiệm tốc độ sạc cực nhanh và đảm bảo an toàn khi sạc.\r\n\r\nThiết kế chân gập thông minh tiện lợi, chất liệu nhựa PC chống cháy\r\nSạc Aukey Pa-F3 30W 2 cổng Usb-A + Type C được hãng Aukey thiết kế mang lại sự tiện lợi nhất cho người dùng. Sạc Aukey Pa-F3 30W được thiết kế chân gập thông minh, tiện dụng có thể gấp lại giảm kích thước nhỏ gọn. Sạc có kích thước nhỏ gọn bạn có thể mang đi bất cứ đâu mà không sợ vướng chiếm diện tích của túi đựng.'),
('SC012', 'Sạc nhanh Samsung 25W kèm cáp C to C', 600000, 50, 'SC', 'samsung-note-10-super-fast-charging-25w.png', 'Sạc nhanh Samsung 25W kèm cáp C to C: Tăng tốc độ sạc ấn tượng và an toàn\r\nChắc hẳn bất kỳ ai sử dụng điện thoại đều đã lâm vào tình trạng hết pin đột xuất, cùng lúc đó bạn đang rất vội và cần tới việc sử dụng điện thoại. Vậy làm cách nào để điện thoại có thể sạc pin nhanh chóng, quay lại sử dụng giúp bạn xử lý công việc tức khắc và cần thiết? Nắm được nhu cầu thiết yếu đó, Samsung đã cho ra mắt dòng sản phẩm sạc nhanh Samsung 25W kèm cáp C to C giúp bạn lúc vội vàng.\r\n\r\nThiết kế phổ thông, bền bỉ cùng với khe cắm type C\r\nSạc nhanh Samsung 25W kèm cáp C to C, Samsung thiết kế từ chất liệu nhựa tổng hợp giúp nó bền bỉ và dễ dàng sử dụng. Nhờ vào chất liệu nhựa tổng hợp, khiến chúng có trọng lượng vô cùng nhẹ với 50g giúp người dùng sử dụng thuận tiện. Bên cạnh đó là màu đen giúp nó sạch sẽ sau thời gian dài sử dụng, không bị ố vàng.'),
('SC013', 'Sạc nhanh Innostyle Minigo PD 18W', 290000, 30, 'SC', 't.png', 'Sạc nhanh Innostyle Minigo PD 18W – Cổng cắm USB-C, công suất sạc đến 18W\r\nNgoài cáp sạc thì củ sạc là phụ kiện cần thiết nhất khi bạn đang sử dụng một chiếc điện thoại. Không phải củ sạc thông thường, hiện bạn đang cần củ sạc nhanh đầy đủ tiêu chuẩn để sạc ngay cho chiếc iPhone hay smartphone của bạn. Vậy hãy tìm hiểu nhanh sạc nhanh Innostyle Minigo PD 18W nhé.\r\n\r\nTrọng lượng chỉ 61g, hoàn thiện từ nhựa PC, trang bị đèn LED\r\nSạc nhanh Innostyle Minigo PD 18W được mang thiết kế nhỏ gọn với kích thước chỉ đạt 40x40x28.5mm, và trọng lượng cũng chỉ 61g. Qua đó, người dùng dễ dàng mang nó đi du lịch hay đi công tác bằng cách bỏ vào trong balo hay túi xách và không cần lo lắng vì nó không chiếm nhiều diện tích.'),
('SC014', 'Sạc nhanh Samsung TA20HW kèm cáp Micro Chính hãng', 290000, 35, 'SC', '_nh_ch_p_m_n_h_nh_2018-12-19_l_c_11.png', 'Sạc nhanh Samsung TA20HW kèm cáp Micro chính hãng\r\nĐối với nhưng người dùng điện thoại smartphone thì việc trang bị cho bản thân một cục sạc nhanh là điều rất cần thiết, đặc biệt là những người bận rộn. Sạc nhanh Samsung TA20HW chính hãng với tốc độ sạc nhanh lại an toàn cho người sử dụng sẽ là một lựa chọn tuyệt vời.\r\n\r\nTiết kiệm thời gian với công nghệ Quick Charge\r\nĐối với những cục sạc thông thường, việc sạc đầy pin phải mất đến 3 – 4 tiếng. Điều này khiến cho nhiều người dùng cảm thấy khó chịu, đặc biệt là những người bận rộn đang cần sử dụng gấp nhưng tốc độ sạc lại quá chậm. Hiểu được điều đó, Samsung đã nhanh chóng áp dụng công nghệ sạc nhanh vào thiết bị sạc của mình.\r\n\r\n'),
('SC015', 'Cáp Anker Powerline+ II Lightning (3FT/0.9M) A8452', 355000, 40, 'SC', '4_8_273_2.png', 'Cáp Anker Powerline+ II Lightning 0.9m A8452 - Phụ kiện bền chắc & thời thượng cho thiết bị Apple của bạn\r\nCó phải bạn đang gặp khó khăn với dây cáp ngắn, bị đứt hở và thậm chí là kết nối chậm chạp, mất thời gian? Đã đến lúc bạn bỏ sợi cáp sạc cũ kỹ đó và chuyển sang cáp Anker Powerline+ II Lightning A8452 chính hãng. Với độ bền chắc chắn, nhỏ gọn tiện dụng và đạt cả chứng nhận của Apple, đây chính là món phụ kiện mà bạn nên dùng cho chiếc iPhone, iPad của bạn.\r\n\r\nDây nylon với thiết kế thắt bím tạo độ bền gấp 10 lần cáp thường\r\nCáp Powerline+ II A8452 được hãng Anker đảm bảo rằng có độ bền hơn 40% so với đời trước. Yếu tố này được khẳng định qua chất liệu sợi nylon làm nên dây cáp. Với thiết kế thắt bím sợi nylon hai màu bắt mắt, dây cáp Anker Powerline+ A8452 hoàn toàn bền bỉ và rất khó bị đứt hay bị rối dây, đáp ứng nhu cầu dùng lâu dài.'),
('SC016', 'Cáp AUKEY USB-C 1.2M Bọc sợi Nylon (Braided Nylon) CB-AC1', 190000, 30, 'SC', '6933b7f22272acd373eda5577dfb8b1b.png', 'Cáp sạc Aukey CB-AC1 - Thiết kế nylon bện chống rối, truyền tải điện năng cao\r\nHiện nay cáp sạc cũng chính là một trong phụ kiện không thể thiếu để cung cấp điện năng cho các thiết bị di động. Không chỉ dụng để sạc, đây còn là phụ kiện giúp truyền dữ liệu giữa các thiết bị với nhau một cách hiệu quả. Sản phẩm Aukey CB-AC1 USB 3.1 to USB-C 1.2m là một trong số ít những sản phẩm cáp sạc có khả năng hỗ trợ USB Type C. Phụ kiện cáp sạc có thiết kế bền bỉ, sạc nhanh và tính tương thích tốt cùng với thiết kế thân thiện.\r\n\r\nAukey CB-AC1 - Vỏ bằng nylon bền bỉ, chống rối\r\nCáp Aukey CB-AC1 là một trong những sản phẩm cáp sạc chính hãng chất lượng cao của hãng Aukey. Cáp sở hữu thiết kế với lớp vỏ ngoài được làm từ sợi nylon bện cùng với các lõi hợp kim nhôm bền chắc, chống lại tình trạng uốn cong hay các lực kéo dãn hàng ngày. Do đó Aukey CB-AC1 hoàn toàn không xảy ra tình trạng đứt gãy cáp trong quá trình sử dụng.'),
('TN001', 'SamSung Galaxy Buds Live', 3290000, 0, 'TN', 'buds_1_1.png', 'Samsung Galaxy Buds Live thiết kế hạt đậu vừa tai cùng khả năng khử tiếng ồn\r\nViệc sử dụng tai nghe từ lâu đã trở thành một thói quen của nhiều người bởi sự tiện lợi mà thiết bị này mang lại. Nhưng ngày nay, người dùng đòi hỏi ngày càng cao hơn đối với một chiếc tai nghe không chỉ ở thiết kế mà cả sự cải thiện về tính năng. Đáp ứng điều đó, Samsung đã cho ra mắt Samsung Galaxy Buds Live giúp trải nghiệm sử dụng tai nghe của người dùng trở nên tuyệt vời hơn.\r\n\r\nThiết kế hình hạt đậu không nhô khỏi tai và có nhiều màu sắc khác nhau\r\nGalaxy Buds Live có là dạng tai nghe nhét tai với thiết kế hình hạt đậu lạ mắt khi sử dụng không bị nhô ra khỏi tai mà nằm gọn, vừa vặn trên tai của bạn mang đến cảm giác thoải mái khi đeo. Dù bạn sử dụng suốt cả ngày thì tai nghe cũng không khiến bạn cảm thấy khó chịu hay nặng tai.'),
('TN002', 'Apple AirPods Pro VN/A', 5750000, 13, 'TN', 'mwp22_av2.png', 'Airpods Pro – Tai nghe bluetooth với chất âm rõ cùng khả năng chống nước IPX4\r\nMẫu AirPods xuất hiện lần đầu vào năm 2016, sau nhiều nâng cấp về thiết kế vào cấu hình, mẫu tai nghe không dây ngày càng được hoàn thiện. Mới đây, Apple đã công bố mẫu tai nghe AirPods mới nhất – tai nghe bluetooth Apple Airpods Pro – với thiết kế mới cùng nhiều tính năng mới.\r\n\r\nAirpods Pro sở hữu thiết kế nhỏ gọn, trọng lượng 5.4 gram\r\nNhững thiết kế của Apple ngày càng hướng đến người dùng hơn khi chiếc tai nghe Airpods Pro mới nhất khá nhỏ gọn, trọng lượng chỉ 5.4g và 45,6 gram cả hộp. Sự nâng cấp đầu tiên phải kể đến đó là Airpods Pro được thiết kế như một tai nghe in-ear thay vì earbud toàn khung nhựa 100% như ở các phiên bản cũ. Cùng với 3 mút silicon mềm giúp Airpods Pro không chỉ giúp tai nghe trở nên sang trọng hơn và còn giúp tai nghe bám chắc vào tai, khả năng cách âm tốt cũng như phù hợp với nhiều kích thước tai khác nhau.'),
('TN003', 'Tai nghe không dây chống ồn Sony WF-1000XM3', 3990000, 15, 'TN', 'sony-wf-1000xm3-wire-3-2_800x0w.png', 'Sony WF-1000XM3 - Tai nghe sở hữu công nghệ không dây đích thực\r\nVới công nghệ không dây bluetooth và thiết kế tiện dụng vừa vặn mang lại sự thoải mái cả ngày dài, tai nghe chống ồn Sony WF-1000XM3 cho bạn sự tự do đích thực của công nghệ không dây.\r\n\r\nThiết kế ôm sát không bị trượt ra ngoài, kèm phụ kiện eartip hybrid\r\nTai nghe chống ồn có thiết kế tiện dụng, tiếp xúc với ba điểm khác nhau trên tai bạn, mang lại cảm giác thoải mái, chắc chắn. Bề mặt cao su với độ ma sát cao giữ cho tai nghe chống ồn vừa khít và chắc chắn trong tai bạn để chúng không bất ngờ bị trượt ra ngoài.'),
('TN004', 'Tai Nghe Không Dây JBL Tune 120 TWS', 1490000, 10, 'TN', 'jbl-tune-120tws-vt62b.png', 'JBL Tune 120 Tws – tai nghe bluetooth in-ear thời trang với âm thanh tuyệt vời\r\nJBL là một thương hiệu nổi tiếng chuyên về các thiết bị âm thanh như loa, tai nghe,…và JBL đã năm 2019, JBL đã cho ra mắt mẫu tai nghe JBL Tune 120 Tws thuộc Tune Series, là mẫu tai nghe in-ear true wireless với thiết kế gọn nhẹ, độc đáo và chất âm mạnh mẽ đặc trưng. Ngoài ra, bạn có thể tham khảo thêm thông tin tai nghe không dây JBL Tune 220TWS mới nhất \r\n\r\nThiết kế độc đáo, gọn nhẹ với driver đường kính 5.8mm và màu sắc thời trang\r\nTai nghe True Wireless JBL Tune 120 Tws có thiết kế gọn nhẹ, mỗi bên tai nghe là 1 driver với đường kính chỉ 5.8mm. Đệm cao su nhét tai êm ái kết hợp với thiết kế công thái học để có thể bám chắc vào tai nhưng vẫn tạo cảm giác thoải mái, dễ chịu khi đeo cho người sử dụng. Với kích thước nhỏ và trọng lượng 73g của mình, Tune 120 Tws sẽ vô cùng thuận tiện cho bạn mang theo bên mình, sử dụng mọi lúc mọi nơi.'),
('TN005', 'Tai nghe không dây Huawei Freebuds Pro', 3490000, 10, 'TN', 'gr_3_4.png', 'Huawei Freebuds Pro – Tai nghe nhỏ gọn âm thanh sống động\r\nTai nghe không dây Huawei Freebuds Pro là sản phẩm hàng đầu đến từ thương hiệu Huawei. Với thiết kế hiện đại và khả năng chống ồn thông minh bậc nhất trên thế giới. Chiếc tai nghe không dây này luôn là niềm ao ước của biết bao bạn trẻ yêu công nghệ. Nếu bạn đang muốn sở hữu bộ tai nghe Huawei FreeBuds Pro thì hãy đến Cellphones để lựa chọn nhé!\r\n\r\nThiết kế đuôi ngắn dạng in-ear, mic thu âm khí động học và được trang bị ăng-ten kép\r\nHuawei FreeBuds Pro được sản xuất với 3 màu đen, trắng và bạc rất bắt mắt và phong cách. Phần thân của FreeBuds Pro có tạo hình lớn với đuôi ngắn dạng in-ear mang lại vẻ chắc chắn nhưng không kém phần hiện đại và trẻ trung.\r\n\r\nHơn nữa, củ tai nghe được thiết kế nâng cao với khả năng chống ồn thông minh bậc nhất trên thế giới, giúp phát hiện âm thanh xung quanh một cách tinh tế, hiệu quả nhất.'),
('TN006', 'Tai nghe không dây LG Tone Free HBS-FN6', 2290000, 20, 'TN', '1600_1_1.png', 'LG Tone Free HBS-FN6 – Tai nghe không dây thiết kế tiện lợi cùng thời lượng sử dụng cao\r\nSẽ thật khó chịu nếu chiếc tai nghe luôn bị rối khi đặt trong túi hay balo, hoặc phải thay cái mới chỉ vì vô tình để tai nghe nhiễm nước. Những vấn đề đó chắc hẳn người dùng tai nghe có dây nào cũng từng gặp phải, vậy tại sao không trang bị cho mình một chiếc tai nghe không dây không chỉ có khả năng kháng nước, mà còn cho thời lượng sử dụng lên đến 18 giờ, như tai nghe LG Tone Free HBS-FN6.\r\n\r\nThiết kế bán mở nhỏ gọn và tiện lợi, phiên bản không dây giúp bạn thuận tiện sử dụng\r\nTai nghe LG HBS-FN6 sẽ giải quyết vấn đề rối dây tai nghe mà bạn gặp phải, với thiết kế vô cùng nhỏ gọn cùng hộp sạc tròn sang trọng giúp bạn có thể mang theo đến bất kì đâu nhưng vẫn đảm bảo tính thời trang.'),
('TN007', 'Tai nghe Bluetooth kiêm sạc dự phòng Energizer UB2', 590000, 10, 'TN', 'picture7_1.png', 'Tai nghe không dây Energizer UB2609 - phụ kiện tiện lợi mang lại sự tuyệt vời\r\nNgày nay việc liên lạc với nhau đã trở nên dễ dàng, thuận tiện và nhanh chóng hơn qua việc gọi điện. Hiểu được điều đó Energizer một thương hiệu nổi tiếng đến từ Mỹ đã nghiên cứu và cho ra đời dòng sản phẩm tai nghe không dây Energizer UB2609 để hỗ trợ tốt hơn cho những cuộc gọi.\r\n\r\nThiết kế nhỏ gọn và thời trang cùng với trang bị màn hình báo mức độ pin\r\nBộ tai nghe không dây Energizer UB2609 được nhà sản xuất thiết kế với thích thước 82 x 53 x 36 mm và trọng lượng chỉ nặng 80 gam đầy nhỏ gọn hợp thời trang có thể đồng hành cùng bạn ở mọi nơi đầy tiện lợi.\r\n\r\nTai nghe không dây Energizer UB2609 được thiết kế thời trang vừa vặn hoàn toàn với tai của người sử dụng với trọng lượng nhẹ chỉ 4 gam mỗi tai nghe thích hợp với mọi hoạt động trong nhà kể cả ngoài trời.'),
('TN008', 'Tai nghe không dây Samsung Galaxy Buds+', 2190000, 20, 'TN', 'fr-galaxy-buds.png', 'Samsung Galaxy Buds+ : Thiết kế nhỏ gọn, chất lượng âm thanh tốt\r\nTiếp nối sự thành công của Samsung Galaxy Buds, Samsung tiếp tục cho ra mắt mẫu tai nghe không dây Galaxy Buds+ với nhiều cải tiến về thiết kế cũng như tính năng.\r\n\r\nThiết kế nhỏ gọn cùng nhiều màu sắc lựa chọn\r\nCũng như nhiều mẫu tai nghe không dây khác, Samsung Galaxy Buds + sở hữu thiết kế nhỏ gọn, nằm trong lòng bàn tay. Nhờ đó, người dùng có thể mang tai nghe đi bất cứ đâu, giúp trải nghiệm âm nhạc mọi lúc, mọi nơi. Phần hộp dựng tai nghe cũng khá nhỏ gọn, với thiết kế hình viên thuốc tương tự thế hệ trước.'),
('TN009', 'Tai nghe Iwalk Crazy duo', 890000, 10, 'TN', 'tai-nghe-bluetooth-iwalk-crazy-duo.png', 'Tai nghe Iwalk Crazy duo: Thoải mái, tinh tế và đẳng cấp\r\nKhi sử dụng tai nghe có dây, chúng sẽ khiến bạn gặp nhiều bất lợi trong việc sử dụng chúng trong những nơi quá nhiều dây nhợ như ở chiếc PC của bạn. Hay chiếc điện thoại hay máy tình mới của bạn không có cổng tai nghe 3.5mm? Đừng lo, với tai nghe Iwalk Crazy duo bạn có thể tự mình tận hưởng được những bản nhạc một cách trọn vẹn hơn.\r\n\r\nThiết kế bằng nhựa bóng kết hợp nhựa mờ tinh tế cùng phần bản lề ngang cứng chắc\r\nMang trong mình một thiết kế bằng nhựa cao cấp và được chia ra làm 2 phần là phần nhựa bóng và phần nhựa nhám. Chúng có thể giúp bạn bám chặt tay hơn và thoải mái sử dụng hơn khi lỡ có làm rơi rớt. Ngoài ra, với lớp nhựa bóng còn có thể giúp cho chiếc tai nghe trở nên sang trọng và tinh tế hơn rất nhiều.'),
('TN010', 'Tai nghe Bluetooth Realme Buds Q', 890000, 10, 'TN', 'black_9_1.png', 'Realme Buds Q - Sự lựa chọn đúng đắn cho một chiếc tai nghe hoàn hảo\r\nSử dụng tai nghe có dây khiến bạn có cảm giác bất tiện trong việc sử dụng hay kết nối rườm rà bởi dây đeo. Tai nghe Realme Buds Q sẽ là một sự lựa chọn hoàn hảo và tiện lợi nhất cho bạn cả về chất lượng âm thanh lẫn các công nghệ kết nối. Đưa người dùng đến một trải nghiệm hoàn toàn mới thoải mái tận hưởng những bài hát mà mình yêu thích.\r\n\r\nThiết kế năng động cá tính, chất liệu nhựa PC và ABS cao cấp\r\nTai nghe bluetooth Realme Buds Q được hãng thiết kế với phong cách năng động không kém phần thoải mái phù hợp cho mọi lứa tuổi mọi môi trường sử dụng. Đặc biệt, nếu bạn là người năng động cá tính tai nghe này sẽ giúp bạn thể hiện cá tính ngay khi sử dụng tai nghe.'),
('TN011', 'Tai nghe Không dây Samsung Galaxy Bud+ BTS', 3790000, 20, 'TN', 'bts-edition-samsung.png', 'Tai nghe không dây Samsung Galaxy Bud+ BTS: Tai nghe sắc tím BTS chất lừ \r\nNgày nay công nghệ càng phát triển, loài người càng tiến bộ và việc nghe nhạc cũng được nâng lên một tầm cao mới. Với sự phát triển của tai nghe bluetooth hiện nay thì việc sở hữu chúng không là một điều quá khó. Nếu là một fan bự của BTS thì một chiếc tai nghe không dây Samsung Galaxy Bud+ BTS là một điều bạn không thể bỏ qua.\r\n\r\nMàu tím BTS thể hiện đam mê âm nhạc, chất riêng BTS với logo đặc trưng\r\nMàu chủ đạo của chiếc tai nghe Samsung Galaxy Bud+ phiên bản đặc biệt BTS này là một màu tím cho tai nghe và cả hộp sạc. Nếu bạn là một fan lớn của BTS thì màu sắc này không thể không quyến rũ bạn và làm bạn mê đắm vào chúng. Không phải là một màu tím bình thường, chúng có logo BTS, hình trái tim mềm mại, hoà quyện và cả một chút BTS nổi bật.'),
('TN012', 'Tai nghe Bluetooth Soundpeats Truewings', 699000, 15, 'TN', 'tai-nghe-bluetooth-soundpeats-true-wings.png', 'Tai nghe Soundpeats Truewings - Đậm chất thể thao, chất lượng âm thanh tuyệt vời\r\nNếu bạn đang tìm kiếm cho mình một chiếc tai nghe không dây để phục vụ cho mục đích chơi thể thao mang đậm tính cách năng động. Tai nghe Soundpeats Truewings sẽ là một sự lựa chọn hoàn hảo dành cho bạn.\r\n\r\nThiết kế thể thao cố định tai nghe chắc chắn, đệm tai nhiều kích thước\r\nTai nghe Soundpeats Truewings với thiết kế đậm chất thể thao dành cho những người muốn trải nghiệm cảm giác mạnh khi chơi thể thao. Tai nghe bluetooth được trang bị vòm đeo tai giúp cố định tai nghe chắc chắn khi bạn vận động mạnh tai nghe sẽ được chắc khắc và không bị rơi ra khỏi tai khi sử dụng. Chiếc tai nghe bluetooth Soundpeats Truewings sẽ giúp bạn có những khoảng thời gian chơi thể thao vui vẻ bên những bài hát sôi động trên tai.'),
('TN013', 'Tai nghe không dây Defunc True Go Tự hào Việt Nam', 690000, 25, 'TN', 'n-removebg-preview.png', 'Tai nghe không dây Defunc True Go Tự Hào Việt Nam là phiên bản đặt biệt mang màu sắc bắt mắt và được quý khách hàng ưa chuộng tại Phụ Kiện TK. Ngoài ra, bạn cũng có thể tham khảo thêm tai nghe Defunc True Go chính hãng.'),
('TN014', 'Tai nghe Bluetooth Pamu Unique', 1490000, 10, 'TN', 'padmate-pamu-unique2.png', 'Tai nghe bluetooth Pamu Unique – Thiết kế thời trang nhỏ gọn, âm thanh sống động\r\nTai nghe đang dần trở thành một trong những sản phẩm không thể thiếu đối với những người dùng công nghệ hiện nay. Chính vì vậy yêu cầu của một chiếc tai nghe ngày càng cao, thiết kế nhỏ gọn âm thanh sống động và đặc biệt phải dễ dàng kết nối. Nếu bạn đang tìm cho mình một chiếc tai nghe đáp ứng đủ những yêu cầu này thì tai nghe Pamu Unique chính là lựa chọn hoàn hảo dành cho bạn.\r\n\r\nThiết kế công thái học chống rơi, Dock sạc cuộn tròn tiện lợi\r\nTai nghe Pamu Unique đến từ thương hiệu nổi tiếng với các sản phẩm âm thanh có chất lượng Padmate đây phiên bản giới hạn dành đến cho thị trường Việt Nam. Sở hữu thiết kế công thái học chống rơi và cực kì nhỏ gọn trọng lượng chỉ 7.1g với kiểu dáng thuôn dài nhằm mục đích giúp sản phẩm có độ tì bám chắc chắn trên tay người dùng mà mặt bàn'),
('TN015', 'Tai nghe không dây QCY T2C', 450000, 30, 'TN', 't2c.png', 'Tai nghe không dây QCY T2C - Thiết kế đột phá, trang bị nhiều tính năng hiện đại\r\nTai nghe không dây hiện nay được xem là phụ kiện được nhiều người dùng sử dụng nhất hiện nay. Bởi sản phẩm mang lại nhiều sự tiện lợi hơn khi liên lạc hay đáp ứng nhu cầu nghe nhạc và mang đến sự tập trung cao độ hơn khi làm việc. Nếu bạn đang có nhu cầu mua một bộ tai nghe chất lượng thì tai nghe không dây QCY T2C là sự lựa chọn hoàn hảo cho bạn.\r\n\r\nThiết kế nhỏ gọn, chất liệu nhựa cao cấp\r\nTổng thể của tai nghe không dây QCY T2C được thiết kế theo kiểu khối tròn dài nhỏ gọn giúp người dùng có thể luôn mang bên người mọi lúc mọi nơi một cách dễ dàng. Hơn thế, tai nghe QCY T2C được hãng thiết kế kích thước nhỏ gọn mini vừa vặn trong tai của người dùng.'),
('TN016', 'Tai nghe không dây Anker Soundcore Spirit X2', 1990000, 10, 'TN', 'soundcore2.png', 'Tai nghe Earbuds Anker Soundcore Spirit X2– Thiết kế móc tai, chất âm tuyệt hảo với tính năng BassUp\r\nTai nghe không dây là món phụ kiện hoàn hảo, thay thế những chiếc tai nghe có dây thông thường bởi tính tiện lợi và không bị vướng víu hay rối dây tai nghe. Tai nghe không dây Earbuds Anker Soundcore Spirit X2 chính là chiếc tai nghe đáng sở hữu với thiết kế hiện đại cùng với chất lượng âm thanh được cải tiến.\r\n\r\nThiết kế móc tai hiện đại, hỗ trợ phụ kiện thay thế vừa vặn và khả năng chống nước IP68\r\nTai nghe không dây Earbuds Anker Soundcore Spirit X2 có thiết kế đơn giản, giống với Powerbeats Pro nhưng được trang bị móc tai tiện lợi và hiện đại giúp cố định tai nghe một cách chắc chắn hơn để bạn có thể thoải mái vận động, sử dụng tai nghe ngay cả lúc chạy bộ, tập luyện,….Phần móc tai và tips nhét tai còn có thể thay thế với bộ phụ kiện đi kèm để giúp bạn điều chỉnh vừa vặn với tai, mang đến cảm giác khi đeo thoải mái nhất');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MSKH` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HoTenKH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoDienThoai` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MSKH`, `HoTenKH`, `DiaChi`, `SoDienThoai`, `MatKhau`, `Hinh`) VALUES
('ht123', 'Nguyễn Hoàng Thái', 'Vĩnh Long', '0343579108', '123123', '120577052_218856729572921.png'),
('khang123', 'khang nguyen', 'acb', '0989859577', '123', ''),
('md123', 'Đại Minh Dương', 'Bạc Liêu', '0987964057', '123123', 'download.png'),
('tk123', 'Ngô Tuấn Kha', 'Cần Thơ', '0799553525', '123456', '101804576_111276970612825.png');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MSNV` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HoTenNV` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChiNV` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SoDienThoai` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MKNV` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MSNV`, `HoTenNV`, `DiaChiNV`, `SoDienThoai`, `MKNV`) VALUES
('AD001', 'Ngô Tuấn Kha', 'Cần Thơ', '0799553525', '123123'),
('admin', 'Admin', 'Cần Thơ', '0799553525', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nhomhanghoa`
--

CREATE TABLE `nhomhanghoa` (
  `MaNhom` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenNhom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhomhanghoa`
--

INSERT INTO `nhomhanghoa` (`MaNhom`, `TenNhom`) VALUES
('BS', 'Sản phẩm bán chạy nhất'),
('OL', 'Ốp Lưng'),
('PDP', 'Pin Dự Phòng'),
('PN', 'Sản phẩm mới nhất'),
('SC', 'Sạc cáp'),
('TN', 'Tai Nghe');

-- --------------------------------------------------------

--
-- Table structure for table `thongso`
--

CREATE TABLE `thongso` (
  `id` int(11) NOT NULL,
  `mahh` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hangsx` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chatlieu` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trongluong` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `kichthuoc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thongso`
--

INSERT INTO `thongso` (`id`, `mahh`, `hangsx`, `chatlieu`, `trongluong`, `kichthuoc`, `mota`) VALUES
(1, 'BS001', 'S-Case', 'Silicon cao cấp', NULL, NULL, NULL),
(2, 'BS002', 'KST', 'Silicon cao cấp', NULL, NULL, NULL),
(3, 'BS003', 'Spigen', 'Silicon cao cấp', NULL, NULL, NULL),
(4, 'BS004', 'UAG', 'Silicon cao cấp', NULL, NULL, NULL),
(5, 'BS005', 'Baseus', 'Nhựa ABS', NULL, '145mm x 65mm dày 15mm', 'Dòng điện vào: Micro USB (5V / 2.1A).\r\nDòng điện ra: USB1 – 5V/1A, USB2 – 5V/2.1A.\r\nPin: 10.000 mAh.\r\nTính năng khác: Trang bị đèn LED, có thể dùng làm đèn pin chiếu sáng .'),
(6, 'BS006', 'Aukey', NULL, '198 g (7 oz)', '147 x 75 x 14 mm (5.8 x 2.95 x 0.55 in', 'Dòng điện vào: DC 5V 2A.\r\nDòng điện ra: DC 5V 2.4A (total).\r\nCổng/Khe cắm: Micro USB.\r\nCổng sạc ra: 2 x USB A.\r\nPin: 10000 mAh.\r\nLõi pin: Li-Po.'),
(7, 'BS007', 'Aukey', NULL, '125g', '12.14 x 6.95 x 1.5 cm', 'Dòng điện vào: SB-C Input: DC 5V/2A.\r\nDòng điện ra: USB-C Output: DC 5V/3A.\r\n              USB-A Output: DC 5V/2.4A.\r\nCổng/Khe cắm: Type-C.\r\nCổng sạc ra: 1 x USB-C.\r\n             1 x USB A.\r\nPin: 5000 mAh.\r\nLõi pin: Li-Po.'),
(8, 'BS008', 'Mophie', 'Nhôm', '288 g', '80 x 164 x 16.8 mm', 'Dòng điện vào: Cổng Type C:18W.\r\n               Cổng Type A:15W.\r\nCổng/Khe cắm: 1 x USB-C và 1 x USB-A.'),
(9, 'BS009', 'Innostyle', 'Lõi cáp siêu bền được gia cố bởi sợi Kevla, lõi đồng nguyên khối, hai đầu cáp được trang bị bên ngoài bằng hộp kim nhôm cao cấp.', NULL, '1.5m', 'Dòng điện ra: 3A.\r\nCổng/Khe cắm: USB Type-C to Lightning.\r\nSạc nhanh: Yes\r\nCông suất: 18W.\r\nTính năng khác: Chứng nhận an toàn và chống cháy nổ: EAC, CE, REACH, RoHS.'),
(10, 'BS010', 'Aukey', NULL, '127g (4.48 oz)', '64 x 63 x 29 mm (2.52 x 2.48 x 1.14 in)', 'Cổng/Khe cắm: 1 USB + 1 Type C.\r\nCông suất: 48W.\r\nTính năng khác: Chip sạc thông minh + sạc nhanh hơn với công nghệ Airpower.'),
(11, 'BS011', 'ZMI', NULL, '42.8g', NULL, 'Dòng điện vào: 100 - 240V.\r\nDòng điện ra: 5V - 3A.\r\n              9V - 2.22A.\r\n              12V - 1.67A.\r\nCổng/Khe cắm: USB-C.'),
(12, 'BS012', 'Feeltek', NULL, '', NULL, 'Cổng/Khe cắm	\r\n   (Đầu vào): USB-C 3.1\r\n   (Đầu ra): USB-C PD x 1\r\n   USB-C x 1\r\n   USB-A 3.1 x 2\r\n   SD x 1\r\n   Micro SD x 1\r\n   HDMI x 1\r\n   Jack 3.5mm x 1\r\nTính năng khác	\r\n   Truyền dữ liệu Thunderbolt 3 / đầu ra video HDMI 4K / 2 khe đọc thẻ nhớ\r\n   Truyền dữ liệu: USB 3.1: Tối đa 5Gbps, SD 2.0, Micro SD 2.0\r\n   Độ phân giải tối đa: HDMI lên tới 4KX2K @ 30Hz\r\n   Bộ sạc không dây: DC 5V/ 400MA, DC 5V/ 1A\r\n   PD: Tối đa 20V/ 5A'),
(13, 'PN001', 'Samsung', NULL, 'Tai nghe: 5.6g\r\nHộp sạc: 42.2g', NULL, 'Chống nước: IPX2\r\nBluetooth: 5.0\r\nPin: 7,5 giờ.\r\n     28 giờ sử dụng với hộp sạc.'),
(14, 'PN002', 'Apple Chính hãng', NULL, '- Airpods: AirPods: 4g\r\n- Hộp đựng: 40g', '- AirPods: 16.5 x 18.0 x 40.5 mm\r\n- Hộp đựng: 44.3 x 21.3 x 53.5 mm', 'Pin: Airpods: 5 giờ chơi nhạc, 3 giờ gọi thoại\r\n     Hộp đựng: Đến 24h\r\nTính năng khác: Hỗ trợ Hey Siri, con chip H1 mới'),
(15, 'PD003', 'Realme', NULL, NULL, NULL, 'Cổng/Khe cắm: Micro USB\r\nBluetooth: Chuẩn kết nối Bluetooth 5.0\r\nPin: Lên tới 17h\r\nNghe gọi: Tích hợp 2 micro để khử ồn\r\nTính năng khác: Chống nước và bám bụi IPX2'),
(16, 'PN004', 'Soundpeats', NULL, '5.4g/1 tai nghe', '42 x 23 x 25 mm', 'Chipset	Realtek\r\nBluetooth: 5.0\r\nPhạm vi hiệu quả: 10m\r\nDung lượng Pin: 4h/1 lần sạc\r\n                24h sử dụng với Case sạc\r\nPin: Tai nghe:43mAh\r\n     Case Sạc: 650mAh\r\nTính năng khác: Điều khiển cảm ứng'),
(17, 'PN005', 'Energizer', NULL, NULL, NULL, 'Cổng/Khe cắm: USB\r\nCông suất: 2.4A\r\nTính năng khác: Chip thông minh tự điều chỉnh dòng + sạc nhanh với công nghệ Fast Charger'),
(18, 'PN006', 'Aukey', 'Nhựa siêu bền + Bọc nylon chống rối', NULL, '2m', 'Cổng/Khe cắm: Type C.\r\nTính năng khác: Sạc + truyền dữ liệu.'),
(19, 'PN007', 'Innostyle', NULL, '45g', '40 x 40 x 28,5 mm', 'Dòng điện vào: AC100-240V, 50 / 60HZ\r\nDòng điện ra: 5V / 2.4A\r\nCông suất: 12W'),
(20, 'PN008', 'Belkin', NULL, NULL, '1.2m', NULL),
(21, 'PN009', 'KST', NULL, NULL, NULL, NULL),
(22, 'PN010', 'Spigen', NULL, NULL, NULL, NULL),
(23, 'PN011', 'Spigen', NULL, NULL, NULL, NULL),
(24, 'PN012', 'Gear4', 'D3O + TPU + POLYCARBONATE', NULL, NULL, NULL),
(25, 'TN001', 'Samsung', NULL, 'Tai nghe:5.6g\r\nHộp sạc:42.2g', NULL, 'Chống nước: IPX2\r\nBluetooth: 5.0\r\nPin: 7,5 giờ\r\n     28 giờ sử dụng với hộp sạc'),
(26, 'TN002', 'Apple Chính hãng', NULL, 'Tai nghe: 5.4 grams\r\nHộp sạc: 45.6 grams', 'Tai nghe: 30.9 - 21.8 - 24.0 mm\r\nHộp sạc: 45.2 - 60.6 - 21.7 mm', 'Cổng/Khe cắm: Lightning\r\nChống nước: Có chống mồ hôi và chống nước.\r\n            Chuẩn IPX4\r\nBluetooth: 5.0\r\nPin:	\r\n- Thời gian nghe lên tới 4,5 giờ\r\n- Thời gian đàm thoại lên tới 3,5 giờ\r\n- 5 phút sạc cung cấp 1 giờ nghe nhạc hoặc 1 giờ đàm thoại.\r\nCảm biến: Micro dạng chùm kép, Micro hướng vào trong, Cảm biến quang kép, Gia tốc kế phát hiện chuyển động, Gia tốc phát hiện lời nói, Cảm biến lực'),
(27, 'TN003', 'Sony', NULL, '8,5 g x 2', '', 'Bluetooth: v5.0\r\nDung lượng Pin: Nghe nhạc liên tục lên đến 8 giờ, kết hợp với hộp sạc có thể sử dụng 24 giờ'),
(28, 'TN004', 'JBL', NULL, '73g', '', 'Dòng điện vào: 15mW\r\nBluetooth: v4.2\r\nDung lượng Pin: Thời gian sử dụng liên tục trong 4 giờ, kết hợp với hộp sạc cho 12 giờ sử dụng'),
(29, 'TN005', 'Huawei', NULL, 'Hộp sạc: 70 mm x 51.3 mm x 24.6 mm\r\nTai nghe: Khoảng 6.1 g mỗi bên\r\nHộp sạc: Khoảng 60 g', 'Tai nghe: 26 mm x 29.6 mm x 21.7 mm', 'Bluetooth: Bluetooth 5.2\r\nDung lượng Pin:	\r\n- Mỗi bên tai nghe: 55mAh\r\n- Hộp sạc: 580mAh\r\nPin:\r\n- Phát nhạc: 4 giờ (có bật ANC), 7 giờ (tắt ANC), 20 giờ khi kết hợp với hộp sạc\r\n- Cuộc gọi: 2.5 giờ (có bật ANC), 3 giờ (tắt ANC), 16 giờ khi kết hợp với hộp sạc\r\n- Thời gian sạc: 40 phút đối với tai nghe (trong hộp sạc), 1 giờ đối với hộp sạc (\r\nTính năng khác:\r\n- Chống ồn chủ động thông minh\r\n- Chống ồn cuộc gọi\r\n- Chế độ nhận dạng môi trường xung quanh\r\n- Chế độ nhận dạng giọng nói\r\n- Kết nối Bluetooth đồng thời với hai thiết bị\r\n- Điều khiển cảm ứng thông minh'),
(30, 'TN006', 'LG', NULL, '', '', 'Chống nước	IPX4\r\nBluetooth	5.0\r\nDung lượng Pin: Tai nghe:6 giờ sử dụng\r\n                Case Sạc:18 giờ sử dụng\r\n                Sạc đầy tai nghe trong 1 giờ\r\nPin: Case Sạc:390 mAh\r\n     Tai nghe:55 mAh\r\nTính năng khác: Âm thanh MERIDIAN\r\n                Chế độ chống ồn'),
(31, 'TN007', 'Energizer', NULL, '80g', '82 x 53 x 36 mm (dài x rộng x cao)', 'Dòng điện vào: DC 5V-1A\r\nDòng điện ra: DC 5V-1A\r\nCổng/Khe cắm: Micro-USB\r\nChống nước: IPX4\r\nBluetooth: Bluetooth 5.0\r\nDung lượng Pin:\r\n- Hộp sạc: 2,600mAh\r\n- Tai nghe: 50mAh mỗi bên\r\nPin: Thời lượng pin 5 giờ sau khi sạc đầy'),
(32, 'TN008', 'Samsung', NULL, '6.3 g', '', 'Chống nước: IPX2\r\nBluetooth: 5.0\r\nDung lượng Pin:\r\n- Nghe nhạc: 11 Giờ với tai nghe\r\n             22 giờ khi đi kèm với Case\r\n- Đàm thoại: 7.5 giờ với tai nghe\r\n             15 giờ khi đi kèm với Case\r\nPin: Tai nghe:85mah\r\n     Case:270mah\r\nTính năng khác:\r\n- Điều khiển cảm ứng\r\n- Công nghệ chống ồn\r\n- Tương thích với Android 5.0,IOS 10 trở lên'),
(33, 'TN009', 'Hãng khác', NULL, '', '', 'Chống nước: IPX5\r\nBluetooth: 5.0\r\nPhạm vi hiệu quả: 10m\r\nDung lượng Pin: 5 giờ nghe nhạc\r\n                80 giờ nếu đi cùng hộp sạc\r\nPin: Case sạc:2,500mAh'),
(34, 'TN010', 'Realme', NULL, '3.6 g', '19.8mm×17.55mm×22.5mm', 'Cổng sạc ra: Micro-USB\r\nChống nước: IPX4\r\nBluetooth: 5.0\r\nPhạm vi hiệu quả: 10m\r\nDung lượng Pin: 20 giờ sử dụng\r\nPin: Tai nghe:40mAh\r\nCase sạc: 400mAh\r\nTính năng khác	Điều khiển cảm ứng'),
(35, 'TN011', 'Samsung', NULL, '6.3 g', NULL, 'Bluetooth: 5.0\r\nDung lượng Pin: Nghe nhạc: 11 Giờ với tai nghe\r\n                           22 giờ khi đi kèm với Case\r\n                Đàm thoại: 7.5 giờ với tai nghe\r\n                           15 giờ khi đi kèm với Case\r\nPin: Tai nghe:85mah\r\n     Case:270mah\r\n     Sạc Không Dây Chuẩn Qi\r\nTính năng khác: Điều khiển cảm ứng\r\n                Công nghệ chống ồn\r\n                Tương thích với Android 5.0,IOS 10 trở lên\r\n                Cảm biến hồng ngoại'),
(36, 'TN012', 'Soundpeats', NULL, NULL, NULL, 'Cổng/Khe cắm: Type-C\r\nChống nước: IPX7\r\nBluetooth: 5\r\nPhạm vi hiệu quả: 10m\r\nDung lượng Pin: Thời gian sử dụng: 4h/ lần sạc\r\n                Thời gian sạc hộp sạc : 2h\r\n                Thời gian sạc tai nghe : 1.5h\r\n                Hộp sạc được 4 lần cho tai nghe\r\nPin: Hộp sạc 600mAH\r\nTính năng khác: Sử dụng độc lập 2 bên tai'),
(37, 'TN013', 'Defunc', NULL, NULL, NULL, 'Cổng/Khe cắm: USB Type C\r\nChống nước: IPX4\r\nBluetooth: 5.0\r\nPhạm vi hiệu quả: 10m\r\nPin: Đàm thoại 5 giờ, nghe nhạc 4.5 giờ\r\n     14 giờ kèm cả box sạc\r\nTính năng khác: Điều khiển cảm ứng\r\nChống ồn'),
(38, 'TN014', 'Padmate', NULL, '7.1g', 'Tai nghe : 37,5x26x19,5mm\r\nHộp sạc : 37x96mm', 'Chipset	Qualcomm QCC3020\r\nChống nước: IPX6\r\nBluetooth: 5.0\r\nPhạm vi hiệu quả: 10m\r\nPin: Tai nghe: 85mAh\r\n     Hộp sạc: 400mAh\r\nTính năng khác: Điều khiển cảm ứng\r\nCông nghệ khử tiếng ồn Dual-Mic'),
(39, 'TN015', 'QCY', NULL, NULL, NULL, 'Chống nước: IPX4\r\nBluetooth: 5.0\r\nPhạm vi hiệu quả: 10m\r\nPin: Tai nghe: 43mAh\r\n     Hộp sạc: 800mAh'),
(40, 'TN016', 'Anker', NULL, NULL, NULL, 'Chống nước: IP68\r\nBluetooth: 5.0\r\nDung lượng Pin: Tai nghe: 9 giờ sử dụng\r\n                Hộp sạc: 36 giờ'),
(41, 'OL001', 'Samsung', NULL, NULL, NULL, NULL),
(42, 'OL002', 'Gear4', NULL, NULL, NULL, NULL),
(43, 'OL003', 'Apple Chính hãng', 'Silicon', NULL, NULL, 'Silicon'),
(44, 'OL004', 'Samsung', 'Nhựa cao cấp', '14g', '64.7 x 160.5 x 9.2 mm', NULL),
(45, 'OL005', 'Samsung', NULL, NULL, NULL, NULL),
(46, 'OL006', 'Gear4', 'Polycarbonate, TPU (polyurethane nhiệt dẻo) và vật liệu D3O', NULL, NULL, 'Tương thích với sạc không dây'),
(47, 'OL007', 'ESR', NULL, NULL, NULL, NULL),
(48, 'OL008', 'Samsung', NULL, NULL, NULL, NULL),
(49, 'OL009', 'Samsung', 'Polyester tái chế sau tiêu dùng (PET)', NULL, NULL, NULL),
(50, 'OL010', 'Spigen', NULL, NULL, NULL, NULL),
(51, 'OL011', 'ESR', NULL, NULL, NULL, NULL),
(52, 'OL012', 'Gear4', 'D3O + TPU + POLYCARBONATE', NULL, NULL, NULL),
(53, 'OL013', 'KST', 'Da', NULL, NULL, NULL),
(54, 'OL014', 'S-Case', NULL, NULL, NULL, NULL),
(55, 'OL015', 'Likgus', 'TPU-PC', NULL, NULL, NULL),
(56, 'OL016', 'UAG', '', NULL, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`MaTH`),
  ADD KEY `fk_nhomsp` (`MaNhom`);

--
-- Indexes for table `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD PRIMARY KEY (`SoCTDH`,`Mahh`),
  ADD KEY `fk_hanghoa` (`Mahh`),
  ADD KEY `fk_dh` (`MaDH`);

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`SoDonDH`),
  ADD KEY `mskh` (`MSKH`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MSHH`),
  ADD KEY `MaNhom` (`MaNhom`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MSKH`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MSNV`);

--
-- Indexes for table `nhomhanghoa`
--
ALTER TABLE `nhomhanghoa`
  ADD PRIMARY KEY (`MaNhom`);

--
-- Indexes for table `thongso`
--
ALTER TABLE `thongso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tshh` (`mahh`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `MaTH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `chitietdh`
--
ALTER TABLE `chitietdh`
  MODIFY `SoCTDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `SoDonDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `thongso`
--
ALTER TABLE `thongso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `fk_nhomsp` FOREIGN KEY (`MaNhom`) REFERENCES `nhomhanghoa` (`MaNhom`);

--
-- Constraints for table `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD CONSTRAINT `fk_dh` FOREIGN KEY (`MaDH`) REFERENCES `dathang` (`SoDonDH`),
  ADD CONSTRAINT `fk_hanghoa` FOREIGN KEY (`Mahh`) REFERENCES `hanghoa` (`MSHH`);

--
-- Constraints for table `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `mskh` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `hanghoa_ibfk_1` FOREIGN KEY (`MaNhom`) REFERENCES `nhomhanghoa` (`MaNhom`) ON UPDATE CASCADE;

--
-- Constraints for table `thongso`
--
ALTER TABLE `thongso`
  ADD CONSTRAINT `tshh` FOREIGN KEY (`mahh`) REFERENCES `hanghoa` (`MSHH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
