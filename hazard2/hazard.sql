-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 09:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hazard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_pass`) VALUES
(1, 'admin', '$2y$10$KKhlw0ZUjv9rSXMR.cEAouPwDuAUaT0F8Q18VGLIM3htAQGG4vCNK');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `hz_id` int(11) NOT NULL,
  `hz_location` varchar(255) NOT NULL,
  `hz_state` varchar(100) NOT NULL,
  `hz_repname` varchar(150) NOT NULL,
  `hz_type` varchar(150) NOT NULL,
  `hz_desc` text NOT NULL,
  `hz_time` time NOT NULL,
  `hz_date` date NOT NULL,
  `hz_lat` decimal(10,4) NOT NULL,
  `hz_lng` decimal(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`hz_id`, `hz_location`, `hz_state`, `hz_repname`, `hz_type`, `hz_desc`, `hz_time`, `hz_date`, `hz_lat`, `hz_lng`) VALUES
(2, 'Jalan Ikan Mas', 'KUALA LUMPUR', 'Putri', 'Physical hazards', 'Petrol car explode', '17:19:00', '2022-07-05', '3.1179', '101.7267'),
(3, 'Jalan Mahsuri', 'KEDAH', 'Aina', 'Physical hazards', 'Car Accident', '23:41:00', '2022-07-10', '5.5084', '100.5377'),
(4, 'Jalan Bunga Raya Besar', 'JOHOR', 'Fariza', 'Physical hazards', 'Road Construction', '19:50:00', '2022-07-11', '1.5096', '103.7685'),
(5, 'Gelang Patah', 'JOHOR', 'Fariza', 'Physical hazards', 'Car Crash', '12:07:00', '2022-07-14', '1.5533', '103.6012'),
(11, 'Jalan Simpant Empat', 'PERLIS', 'Fariza', 'Physical hazards', 'Road Construction', '05:04:00', '2022-07-10', '6.3315', '100.1994'),
(14, 'Shah Alam', 'NEGERI SEMBILAN', 'Fariza', 'Physical hazards', 'Car Crash between Motor', '09:11:00', '2022-07-08', '3.1835', '101.5094'),
(19, 'Chendering', 'TERENGGANU', 'Aina', 'Environmental hazards', 'Landslide', '21:22:00', '2022-06-28', '5.2728', '103.1669'),
(22, 'Kota Bharu', 'KELANTAN', 'Fariza', 'Physical hazards', 'Road Constructions', '17:52:00', '2022-07-17', '6.1259', '102.2544'),
(23, 'Kuantan', 'PAHANG', 'Fariza', 'Environmental hazards', 'Landslide', '23:04:00', '2022-07-18', '3.9700', '103.3288'),
(24, 'Bukit Panau', 'KELANTAN', 'Aina', 'Physical hazards', 'Car Crash', '08:16:00', '2022-07-04', '5.8943', '102.1753'),
(25, 'Taman Teguh Chat Rimau', 'KELANTAN', 'Aina', 'Physical hazards', 'Car Crash', '12:30:00', '2022-07-22', '5.8407', '102.1486'),
(27, 'Tanah Merah', 'KELANTAN', 'Fariza', 'Environmental hazards', 'Storms', '15:37:00', '2022-07-22', '5.9218', '102.1391');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`hz_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `hz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
