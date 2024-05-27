-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2023 at 01:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportzify`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(15) NOT NULL,
  `admin_email` varchar(20) NOT NULL,
  `admin_password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `booking_id` int(10) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` int(10) NOT NULL,
  `turf_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `booking_status` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `booking_date`, `booking_time`, `turf_id`, `user_id`, `booking_status`, `type`) VALUES
(3, '2023-09-30', 18, 1, 1, 0, '1100'),
(4, '2023-12-12', 10, 1, 1, 5, '1100'),
(5, '2023-12-12', 3, 1, 1, 1, '1000'),
(6, '2023-08-24', 10, 1, 1, 0, '1000'),
(7, '2023-09-20', 10, 1, 1, 0, '1100'),
(8, '2023-09-27', 10, 1, 1, 4, '1000'),
(9, '2023-09-05', 10, 1, 1, 1, '1100'),
(10, '2023-09-14', 10, 1, 1, 1, '1000'),
(12, '2023-10-01', 2, 1, 1, 4, '1100'),
(13, '2023-10-10', 23, 1, 24, 5, '800'),
(14, '2023-10-06', 8, 1, 24, 0, '800');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `cart_quantity` int(50) NOT NULL DEFAULT 1,
  `cart_status` int(50) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `product_id`, `cart_quantity`, `cart_status`, `booking_id`) VALUES
(1, 3, 1, 4, 1),
(2, 3, 1, 1, 2),
(3, 4, 1, 4, 3),
(4, 3, 1, 1, 4),
(5, 3, 1, 1, 5),
(6, 3, 1, 1, 6),
(7, 3, 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(10) NOT NULL,
  `complaint_date` int(8) NOT NULL,
  `complaint_replay` varchar(15) NOT NULL,
  `complaint_status` varchar(15) NOT NULL,
  `user_id` int(8) NOT NULL,
  `turf_id` int(8) NOT NULL,
  `complaint_details` varchar(15) NOT NULL,
  `complaint_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complaint`
--

INSERT INTO `tbl_complaint` (`complaint_id`, `complaint_date`, `complaint_replay`, `complaint_status`, `user_id`, `turf_id`, `complaint_details`, `complaint_title`) VALUES
(1, 20231005, '', '', 24, 0, 'Welcomr', 'Heelo'),
(3, 20231005, 'kjhgfdx', '', 24, 1, 'the previous te', 'Time lag when starting playtime');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(2, 'Kollam'),
(4, 'Kottayam'),
(6, 'Idukki'),
(9, 'Thrissur'),
(12, 'Malappuram'),
(13, 'Kasaragod'),
(14, 'Kannur'),
(15, 'Wayanad'),
(16, 'Palakkad'),
(17, 'Ernakulam'),
(18, 'Alappuzha'),
(19, 'Pathanamthitta'),
(20, 'Thiruvananthapuram'),
(21, 'Kozhikod');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pbook`
--

CREATE TABLE `tbl_pbook` (
  `booking_id` int(100) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_amount` int(100) NOT NULL,
  `user_id` int(50) NOT NULL,
  `booking_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pbook`
--

INSERT INTO `tbl_pbook` (`booking_id`, `booking_date`, `booking_amount`, `user_id`, `booking_status`) VALUES
(1, '2023-10-08', 12000, 1, 1),
(2, '2023-10-08', 12000, 1, 1),
(3, '2023-10-06', 1000, 24, 1),
(4, '2023-10-06', 1000, 24, 1),
(5, '2023-10-08', 12000, 1, 1),
(6, '2023-10-08', 12000, 1, 1),
(7, '2023-10-08', 12000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `district_id`) VALUES
(3, 'Karunagapally', 2),
(4, 'Pala', 4),
(5, 'THiruvalla', 0),
(7, 'Thodupuzha', 6),
(8, 'Kattapana', 6),
(9, 'Chalakkudy', 9),
(10, 'Kunnamkulam', 9),
(11, 'Manjeri', 12),
(12, 'Nilambur', 12),
(15, 'Punalur', 2),
(16, 'Varkala', 20),
(17, 'Neyyattinkara', 20),
(18, 'Adur', 19),
(19, 'Ranny', 19),
(21, 'Kayamkulam', 18),
(22, 'Kuttanad', 18),
(23, 'Kochi', 17),
(24, 'Kothamangalam', 17),
(25, 'Thiruvalla', 4),
(26, 'Ottapalam', 16),
(27, 'Nenmara', 16),
(28, 'Mananthavady', 15),
(29, 'Sulthan Bathery', 15),
(30, 'Beypore', 21),
(31, 'Thamarassery', 21),
(33, 'Payyannur', 14),
(34, 'Iritty', 14),
(35, 'Nileshwar', 13),
(36, 'kudlu', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_detail` varchar(500) NOT NULL,
  `product_rate` int(10) NOT NULL,
  `product_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_detail`, `product_rate`, `product_image`) VALUES
(3, 'brazuca', 'Football', 1000, 'Screenshot 2023-09-28 122953.png'),
(4, 'CRICKET BAT', 'CRICKET BAT IS USED TO PLAY CRICKET', 2000, 'Screenshot 2023-09-28 123235.png'),
(5, 'CRICKET BALL', 'TO PLAY CRICKET', 1500, 'cricket-ball-isolated.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productrating`
--

CREATE TABLE `tbl_productrating` (
  `prating_id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `user_rating` varchar(50) NOT NULL,
  `user_review` varchar(1000) NOT NULL,
  `user_id` int(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `review_datetime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_productrating`
--

INSERT INTO `tbl_productrating` (`prating_id`, `product_id`, `user_rating`, `user_review`, `user_id`, `user_name`, `review_datetime`) VALUES
(1, 3, '5', 'Nice', 1, 'Someone', '2023-10-05 14:49:00'),
(2, 4, '0', 'excellent', 24, 'arun', '2023-10-05 18:41:41'),
(3, 4, '5', 'excellent', 24, 'arun', '2023-10-05 18:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(10) NOT NULL,
  `review_date` date NOT NULL,
  `review_details` varchar(15) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `turf_id` varchar(15) NOT NULL,
  `review_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`review_id`, `review_date`, `review_details`, `user_id`, `turf_id`, `review_rating`) VALUES
(1, '2023-09-25', 'Good', '1', '1', 4),
(3, '2023-10-05', 'Good', '24', '1', 5),
(4, '2023-10-06', 'super', '1', '1', 5),
(5, '2023-10-06', 'good', '1', '1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` int(50) NOT NULL,
  `stock_quantity` int(100) NOT NULL,
  `stock_date` date NOT NULL,
  `product_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`stock_id`, `stock_quantity`, `stock_date`, `product_id`) VALUES
(1, 20, '2023-09-28', 3),
(2, 30, '2023-10-05', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_turf`
--

CREATE TABLE `tbl_turf` (
  `turf_id` int(15) NOT NULL,
  `turf_name` varchar(20) NOT NULL,
  `turf_details` varchar(50) NOT NULL,
  `turf_logo` varchar(300) NOT NULL,
  `turf_proof` varchar(300) NOT NULL,
  `turf_address` varchar(50) NOT NULL,
  `place_id` int(15) NOT NULL,
  `turf_5s` varchar(15) NOT NULL,
  `turf_7s` varchar(15) NOT NULL,
  `turf_11s` varchar(15) NOT NULL,
  `turf_cricket` varchar(15) NOT NULL,
  `turf_doe` date NOT NULL,
  `turf_email` varchar(100) NOT NULL,
  `turf_password` varchar(8) NOT NULL,
  `turf_vstatus` int(11) NOT NULL DEFAULT 0,
  `turf_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_turf`
--

INSERT INTO `tbl_turf` (`turf_id`, `turf_name`, `turf_details`, `turf_logo`, `turf_proof`, `turf_address`, `place_id`, `turf_5s`, `turf_7s`, `turf_11s`, `turf_cricket`, `turf_doe`, `turf_email`, `turf_password`, `turf_vstatus`, `turf_contact`) VALUES
(1, 'Spotlight', 'Kunnamkulam', 'Screenshot 2023-09-09 114958.png', 'Screenshot 2023-09-09 115004.png', 'Kunnamkulam p.o Thrissur', 10, '800', '', '1100', '1000', '2014-12-12', 'spotlight@gmail.com', '12345678', 1, '6789054321'),
(2, 'Delight', 'manjeri', 'Screenshot 2023-09-09 114958.png', 'Screenshot 2023-09-09 115004.png', 'malappuram', 11, '700', '900', '1100', '1100', '2022-03-06', 'delight@gmail.com', '12345678', 2, '6789098777'),
(3, 'Club one ', 'nilambur', 'Screenshot 2023-09-09 114958.png', 'Screenshot 2023-09-09 115004.png', 'nilambur', 12, '900', '1000', '1300', '1500', '2020-03-21', 'clubone@gmail.com', '12345678', 0, '9087899876'),
(4, 'Touch down', 'beypore', 'Screenshot 2023-09-09 114958.png', 'Screenshot 2023-09-09 115004.png', 'beypore', 30, '600', '800', '1100', '1200', '2019-07-09', 'touchdown@gmail.com', '12345678', 2, '6576547890'),
(5, 'Hill top', 'kochi', 'Screenshot 2023-09-09 114958.png', 'Screenshot 2023-09-09 115004.png', 'kochi', 23, '1000', '1200', '1400', '1400', '2020-02-20', 'hilltop@gmail.com', '12345678', 0, '7687678900'),
(6, 'Soccer Arena', 'Thalikulam', 'Screenshot 2023-09-09 115004.png', 'Screenshot 2023-09-09 114958.png', 'Pathamkallu p.o Thalikulam', 10, '900', '1100', '1500', '1500', '2015-03-02', 'soccerarena@gmail.com', '12345678', 0, '6578678909'),
(7, 'kingdomsolly', 'ernakulam', 'Screenshot 2023-09-09 115004.png', 'Screenshot 2023-09-09 114958.png', 'kingdomsolly kolencherry p.o ernakulam', 23, '900', '1100', '1500', '1500', '2014-08-04', 'kingdomsolly@gmail.com', '12345678', 0, '7896503421'),
(8, 'Soccer club', 'Near bus stand kozhikkod', 'Screenshot 2023-10-05 173753.png', 'Screenshot 2023-10-05 173753.png', 'soccer club p.o Beypore', 30, '900', '1100', '1500', '1500', '2023-10-05', 'club@gmail.com', '12345678', 1, '9098909876');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_turffeedback`
--

CREATE TABLE `tbl_turffeedback` (
  `feedback_id` int(50) NOT NULL,
  `feedback_title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `turf_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_turffeedback`
--

INSERT INTO `tbl_turffeedback` (`feedback_id`, `feedback_title`, `description`, `turf_id`) VALUES
(1, 'Time lag', '', 0),
(2, 'Time lag', '', 0),
(3, 'Time lag', '', 1),
(4, 'Time lag', '', 1),
(5, 'Time lag', '', 1),
(6, 'ilkuyjhgf', 'fghjn,m', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_email` varchar(15) NOT NULL,
  `user_password` varchar(8) NOT NULL,
  `user_address` varchar(25) NOT NULL,
  `user_contact` varchar(20) NOT NULL,
  `user_photo` varchar(300) NOT NULL,
  `user_dob` int(8) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_address`, `user_contact`, `user_photo`, `user_dob`, `place_id`) VALUES
(1, 'Babu', 'babu@gmail.com', '12345678', 'babuvilla\r\nkarunagapally ', '9876543210', 'Screenshot 2023-09-09 114958.png', 1995, 3),
(3, 'David', 'david123@gmal.c', '12345678', 'kallikkal house\r\npunalur ', '7654321765', 'Screenshot 2023-09-14 181309.png', 1980, 15),
(4, 'Gabriel', 'gabrial@gmail.c', '12345678', 'simhamadayil house\r\npala ', '9089674554', 'Screenshot 2023-09-14 181309.png', 1990, 4),
(5, 'Shajahan', 'shaju@gmail.com', '12345678', 'jannathul manzil\r\nthruval', '9870678467', 'Screenshot 2023-09-14 181309.png', 1996, 25),
(6, 'Falahul jabbar', 'jabbar@gmail.co', '12345678', 'mubarak manzil\r\nthodupuzh', '7868790564', 'Screenshot 2023-09-14 181309.png', 2000, 7),
(7, 'Karnan ', 'karnan@gmail.co', '12345678', 'kottaram veettil\r\nkattapa', '7483647214', 'Screenshot 2023-09-14 181309.png', 1995, 8),
(8, 'Simharaja vinay', 'simha@gmail.com', '12345678', 'rajyasabha house\r\nchalakk', '6789078567', 'Screenshot 2023-09-14 181309.png', 2000, 9),
(10, 'Veerasimha Redd', 'veera@gmail.com', '12345678', 'reddy bhavan\r\nkunnamkulam', '8364721474', 'Screenshot 2023-09-14 181309.png', 1999, 10),
(12, 'bheeman', 'bheema@gmail.co', '12345678', 'snehaveed\r\nkudlu (p.o)', '7652147483', 'Screenshot 2023-09-14 181309.png', 1997, 36),
(17, 'anoop', 'anoop@gmail.com', '12345678', 'anoopvilla p.o thambankad', '9340982137', 'Screenshot 2023-09-09 115004.png', 2024, 3),
(21, 'Nandu', 'nandu@gmail.com', '12345678', 'Nandu House', '8289900958', 'Screenshot 2023-09-09 114958.png', 2023, 23),
(22, 'arjun', 'admin@gmail.com', '12345678', 'Managhath house p.o Thali', '9876543211', 'Screenshot 2023-09-09 114958.png', 2003, 10),
(23, 'rajesh', 'rajesh@gmail.co', '12345678', 'rajeshvilla kunnamkulam p', '7652147483', 'Screenshot 2023-09-14 181309.png', 2009, 10),
(24, 'arun', 'arun@gmail.com', '12345678', 'Pathamkallu p.o Thalikula', '7727805631', 'Screenshot 2023-10-05 175805.png', 2000, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_pbook`
--
ALTER TABLE `tbl_pbook`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_productrating`
--
ALTER TABLE `tbl_productrating`
  ADD PRIMARY KEY (`prating_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_turf`
--
ALTER TABLE `tbl_turf`
  ADD PRIMARY KEY (`turf_id`);

--
-- Indexes for table `tbl_turffeedback`
--
ALTER TABLE `tbl_turffeedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_pbook`
--
ALTER TABLE `tbl_pbook`
  MODIFY `booking_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_productrating`
--
ALTER TABLE `tbl_productrating`
  MODIFY `prating_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_turf`
--
ALTER TABLE `tbl_turf`
  MODIFY `turf_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_turffeedback`
--
ALTER TABLE `tbl_turffeedback`
  MODIFY `feedback_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
