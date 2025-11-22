-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 07:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nags`
--

-- --------------------------------------------------------

--
-- Table structure for table `transection`
--

CREATE TABLE `transection` (
  `sid` int(4) NOT NULL,
  `sac` varchar(10) NOT NULL,
  `sna` varchar(20) NOT NULL,
  `rid` int(4) NOT NULL,
  `rac` varchar(10) NOT NULL,
  `rna` varchar(20) NOT NULL,
  `amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transection`
--

INSERT INTO `transection` (`sid`, `sac`, `sna`, `rid`, `rac`, `rna`, `amt`) VALUES
(1001, '67348299', 'Nagaraj gk', 1005, '98745622', 'Ayush Arora', 200),
(1002, '34561287', 'likith', 1003, '34651288', 'Ramanatha B', 20000),
(1004, '34651289', 'Rakshit M', 1007, '23451256', 'L Ashwini', 500),
(1010, '56783411', 'Srinivas A', 1006, '98745623', 'Anubhav ', 20000),
(1008, '23451253', 'Divya', 1002, '34561287', 'likith', 100000),
(1009, '56783411', 'Shreya S', 1001, '67348299', 'Nagaraj gk', 250000),
(1010, '56783411', 'Srinivas A', 1002, '34561287', 'likith', 90000),
(1007, '23451256', 'L Ashwini', 1009, '56783411', 'Shreya S', 3000),
(1009, '56783411', 'Shreya S', 1008, '23451253', 'Divya', 20103),
(1006, '98745623', 'Anubhav ', 1003, '34651288', 'Ramanatha B', 20000),
(1002, '34561287', 'likith', 1001, '67348299', 'Nagaraj gk', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `ac` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `no` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `ac`, `name`, `no`, `email`, `amt`) VALUES
(1001, '67348299', 'Nagaraj gk', '9740900123', 'nags@gmail.com', 1349800),
(1002, '34561287', 'likith', '9768124365', 'liki@gmail.com', 8070000),
(1003, '34651288', 'Ramanatha B', '9768333310', 'ram@gmail.com', 540000),
(1004, '34651289', 'Rakshit M', '9768333311', 'raksh@gmail.com', 99500),
(1005, '98745622', 'Ayush Arora', '9740001432', 'ayush@gmail.com', 50200),
(1006, '98745623', 'Anubhav ', '9740001435', 'anubh@gmail.com', 11000),
(1007, '23451256', 'L Ashwini', '9980674533', 'ash@gmail.com', 7500),
(1008, '23451253', 'Divya', '9980674536', 'Div@gmail.com', 820103),
(1009, '56783411', 'Shreya S', '9110626235', 'shreya@gmail.com', 332897),
(1010, '56783411', 'Srinivas A', '9110626235', 'srinivasa@gmail.com', 690000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
