-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2024 at 02:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(11) NOT NULL,
  `Roll` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Course` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL unique,
  `Phone` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `Roll`, `Name`, `Course`, `Email`, `Phone`, `message`) VALUES
(1, 'A21126510147', 'sujith', ' B tech', 'dudduramasuith7@gmail.com', '9347275453', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `material_id`) VALUES
(1, 3, 12),
(2, 8, 1),
(3, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `avail` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `Likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `name`, `file`, `owner`, `avail`, `year`, `Likes`) VALUES
(16, 'rama', 'third/harish internship reviw22.pdf', 'A21126510147', 'YES', 3, 12),
(17, 'sujith', 'third/INTERNSHIP DOCUMENT-1 (1).pdf', 'A21126510147', 'YES', 3, 12),
(18, 'sujith1', 'third/Python_Essentials_1_Badge20231006-29-xftqy8.pdf', 'A21126510147', 'NO', 3, 1),
(19, 'sujith47', 'second/INTERNSHIP DOCUMENT-1 (1).pdf', '123', 'NO', 2, 0),
(20, 'rama1', 'first/Data Structures and Algorithms in Python.pdf', '123', 'YES', 1, 0),
(21, 'A21126510159', 'fourth/CertificateOfCompletion_C Essential Training (1).pdf', '123', 'NO', 4, 0),
(22, 'A211265100146', 'materials/CertificateOfCompletion_C Essential Training (1).pdf', '123', 'NO', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `highest_education` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `phone`, `email`, `image`, `highest_education`, `experience`) VALUES
(10, 'rama', '9347275453', 'rama123@gmail.com', 'image/Screenshot 2024-03-18 142956.png', 'MTech', '3yrs'),
(9, 'efv', 'werd', 'dudduramasujith@gmail.com', 'image/ferrari.jpg', 'phd', '4'),
(10, '123', '123', 'a123@gmail.com', 'image/ferrari.jpg', 'sadv', '3');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `phone`, `email`, `usertype`, `password`, `Year`) VALUES
(1, 'rama1', '9347275453', 'dudduramasujith7@gmail.com', 'Admin', '123', 0),
(5, 'A21126510147', '9849344359', 'a123@gmail.com ', 'student', '123', 3),
(6, 'A21126510146', '12345678', 'rama2@gmail.com', 'student', '123', 2),
(7, 'A21126510159', '1234', 'tulasi123@gmail.com', 'student', '123', 1),
(9, '123', '123', 'a@gmail.com', 'teacher', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);
  Alter Table'user'
    ADD PRIMARY KEY('email');

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
