-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 07:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(200) NOT NULL,
  `room` varchar(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `myroom` varchar(20) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `room`, `message`, `myroom`, `sender`, `time`, `date`) VALUES
(1, '2', 'slaam', '3', '', '15:56:43', '2023-09-03'),
(2, '3', 'wsalam', '2', '', '15:56:57', '2023-09-03'),
(3, '2', 'kya hal ha alex', '3', '', '15:57:19', '2023-09-03'),
(4, '10', 'slam bhai', '11', '', '16:00:16', '2023-09-03'),
(5, '11', 'wsala shabbar', '10', '', '16:00:42', '2023-09-03'),
(6, '10', 'kyA HAL HA BHAI', '11', '', '16:00:56', '2023-09-03'),
(7, '8', 'd', '10', '', '16:02:57', '2023-09-03'),
(8, '8', 'd', '10', '', '16:02:57', '2023-09-03'),
(9, '8', 'd', '10', '', '16:02:57', '2023-09-03'),
(10, '8', 'd', '10', '', '16:02:57', '2023-09-03'),
(11, '8', 'd', '10', '', '16:02:58', '2023-09-03'),
(12, '8', 'd', '10', '', '16:02:58', '2023-09-03'),
(13, '8', 'd', '10', '', '16:02:58', '2023-09-03'),
(14, '8', 'd', '10', '', '16:02:59', '2023-09-03'),
(15, '8', 'd', '10', '', '16:02:59', '2023-09-03'),
(16, '8', 'd', '10', '', '16:03:00', '2023-09-03'),
(17, '8', 'dd', '10', '', '16:03:00', '2023-09-03'),
(18, '8', 'd', '10', '', '16:03:00', '2023-09-03'),
(19, '8', 'dd', '10', '', '16:03:01', '2023-09-03'),
(20, '8', 'dha', '10', '', '16:03:13', '2023-09-03'),
(21, '8', 'kaisay ho', '10', '', '16:03:46', '2023-09-03'),
(22, '10', 'hii', '12', '', '11:13:58', '2023-09-04'),
(23, '12', 'hello', '10', '', '11:14:50', '2023-09-04'),
(24, '3', 's', '12', '', '16:13:37', '2023-09-04'),
(25, '3', 'heloooooooooooooo', '2', '', '10:29:09', '2023-09-05'),
(26, '2', 'hiiiiiiiiiiiiiiiiiiiiiiiiiiii', '3', '', '10:29:21', '2023-09-05'),
(27, '2', 'kdr ho', '3', '', '10:29:23', '2023-09-05'),
(28, '3', 'j', '3', '', '08:17:07', '2023-09-06'),
(29, '3', 'j', '3', '', '08:17:08', '2023-09-06'),
(30, '3', 'j', '3', '', '08:17:08', '2023-09-06'),
(31, '8', 'j', '3', '', '08:17:14', '2023-09-06'),
(32, '8', 'lklkjlkjkl', '3', '', '08:17:26', '2023-09-06'),
(33, '8', 'jljk', '3', '', '08:17:27', '2023-09-06'),
(34, '2', 'g', '3', '', '09:24:27', '2023-09-08'),
(35, '2', 'fghfghggfh', '3', '', '09:24:35', '2023-09-08'),
(36, '2', 'fg', '3', '', '09:24:38', '2023-09-08'),
(37, '2', 'fg', '3', '', '09:24:43', '2023-09-08'),
(38, '8', 'hi', '7', '', '12:21:07', '2024-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(33) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(133) NOT NULL,
  `cpassword` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `email`, `password`, `cpassword`, `image`) VALUES
(1, 'admin', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar5.jpg'),
(2, 'John', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar6.jpg'),
(3, 'Alex', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar3.jpg'),
(4, 'Elina', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar4.jpg'),
(5, 'daniel', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar8.jpg'),
(6, 'emiliana', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar9.jpg'),
(7, 'peter', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar7.png'),
(8, 'charles', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar1.jpg'),
(9, 'shabbar5', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar5.jpg'),
(10, 'shahzaib', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar8.jpg'),
(11, 'shabbar', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar5.jpg'),
(12, 'admin1', 'ashabbar439@gmail.com', 'a', 'a', 'images/avatar2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sugn_up`
--

CREATE TABLE `sugn_up` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sugn_up`
--

INSERT INTO `sugn_up` (`id`, `name`, `email`, `password`, `cpassword`) VALUES
(1, 'fg', 'fgh', 'gh', 'h'),
(2, 'admin', 'ashabbar439@gmail.co', '', ''),
(3, 'admin', 'ashabbar439@gmail.co', 'df', 'df'),
(4, 'gfhgh', 'alihmza5122@gmail.co', 'fggffg', 'fdhg'),
(5, 'a', 'ashabbar439@gmail.co', 'a', 'a'),
(6, 's', 'shabbar812@gmail.com', 's', 's');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sugn_up`
--
ALTER TABLE `sugn_up`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sugn_up`
--
ALTER TABLE `sugn_up`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
