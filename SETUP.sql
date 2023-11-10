-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 05:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25
CREATE Database 'facilityshop';

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facilityshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `adminname` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `password` int(16) NOT NULL,
  `firstname` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(30) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `adminname`, `password`, `firstname`, `lastname`, `phone`, `email`) VALUES
(1, 'mohammadsadeghi', 1234, 'mohammad', 'sadeghi', 913355901, 'mohammad@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(30) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`producer_id`, `producer_name`) VALUES
(1, 'Iranradiator'),
(2, 'Botan');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `model` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `warranty` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `model`, `warranty`) VALUES
(1, 'پکیج دیواری شوفاژکار', 'کامفورت', '2024-11-13'),
(2, 'الکتروپمپ گراندفورس', 'jpc', '2025-11-19'),
(3, 'لوله آب', 'سبز', '2027-11-25'),
(4, 'شیر و زانو', 'رادیاتور', '2025-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `password` int(16) NOT NULL,
  `firstname` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_persian_ci NOT NULL,
  `address` text COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `is_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`, `phone`, `address`, `email`, `is_delete`) VALUES
(1, 'alireza1234', 12345678, 'alireza', 'sadeghi', '09133889012', 'خیابان شهیدان شرقی', 'alireza@gmail,com', 0),
(2, 'hamid1234', 12345, 'hamid', 'sadeghi', '09131179421', 'خیابان شهیدان غربی', 'hamid@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
