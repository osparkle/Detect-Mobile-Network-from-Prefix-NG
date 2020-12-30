-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 30, 2020 at 05:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simdauhv_sitbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobile_network_prefixes_ng`
--

CREATE TABLE `mobile_network_prefixes_ng` (
  `sn` int(4) NOT NULL,
  `prefix` varchar(6) NOT NULL,
  `network` varchar(32) NOT NULL,
  `long_network_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ng_mobile_network_prefixes`
--

INSERT INTO `ng_mobile_network_prefixes` (`sn`, `prefix`, `network`, `long_network_name`) VALUES
(1, '0701', 'Airtel', 'Airtel Nigeria'),
(2, '07020', 'Smile', 'Smile'),
(3, '07025', 'MTN', 'MTN Nigeria (formerly Visafone)'),
(4, '07026', 'MTN', 'MTN Nigeria (formerly Visafone)'),
(5, '07027', 'Multi-Links', 'Multi-Links'),
(6, '07028', 'Starcomms', 'Starcomms'),
(7, '07029', 'Starcomms', 'Starcomms'),
(8, '0703', 'MTN', 'MTN Nigeria'),
(9, '0704', 'MTN', 'MTN Nigeria (formerly Visafone)'),
(10, '0705', 'Globacom', 'Globacom'),
(11, '0706', 'MTN', 'MTN Nigeria'),
(12, '0707', 'ZoomMobile', 'ZoomMobile (formerly Reltel)'),
(13, '0708', 'Airtel', 'Airtel Nigeria'),
(14, '0709', 'Multi-Links', 'Multi-Links'),
(15, '0802', 'Airtel', 'Airtel Nigeria'),
(16, '0803', 'MTN', 'MTN Nigeria'),
(17, '0804', 'MTEL', 'Mtel'),
(18, '0805', 'Globacom', 'Globacom'),
(19, '0806', 'MTN', 'MTN Nigeria'),
(20, '0807', 'Globacom', 'Globacom'),
(21, '0808', 'Airtel', 'Airtel Nigeria'),
(22, '0809', '9mobile', '9mobile'),
(23, '0810', 'MTN', 'MTN Nigeria'),
(24, '0811', 'Globacom', 'Globacom'),
(25, '0812', 'Airtel', 'Airtel Nigeria'),
(26, '0813', 'MTN', 'MTN Nigeria'),
(27, '0814', 'MTN', 'MTN Nigeria'),
(28, '0815', 'Globacom', 'Globacom'),
(29, '0816', 'MTN', 'MTN Nigeria'),
(30, '0817', '9mobile', '9mobile'),
(31, '0818', '9mobile', '9mobile'),
(32, '0819', 'Starcomms', 'Starcomms'),
(33, '0901', 'Airtel', 'Airtel Nigeria'),
(34, '0902', 'Airtel', 'Airtel Nigeria'),
(35, '0903', 'MTN', 'MTN Nigeria'),
(36, '0904', 'Airtel', 'Airtel Nigeria'),
(37, '0905', 'Globacom', 'Globacom'),
(38, '0906', 'MTN', 'MTN Nigeria'),
(39, '0907', 'Airtel', 'Airtel Nigeria'),
(40, '0908', '9mobile', '9mobile'),
(41, '0909', '9mobile', '9mobile'),
(42, '0913', 'MTN', 'MTN Nigeria'),
(43, '0915', 'Globacom', 'Globacom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ng_mobile_network_prefixes`
--
ALTER TABLE `ng_mobile_network_prefixes`
  ADD PRIMARY KEY (`sn`),
  ADD UNIQUE KEY `prefix` (`prefix`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ng_mobile_network_prefixes`
--
ALTER TABLE `ng_mobile_network_prefixes`
  MODIFY `sn` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
