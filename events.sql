-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 02:23 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adminid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_no` int(10) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `is_delete` char(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminid`, `name`, `email`, `password`, `phone_no`, `dob`, `gender`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, '', 'r.islam973@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, '2018-04-17', 'f', '1', '2018-04-08 20:37:09', '2018-04-08 21:30:40'),
(4, 'Roksana Islam', 'roksana@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, '2018-04-07', 'f', '1', '2018-04-08 21:09:27', '2018-04-09 19:51:07'),
(5, 'sana', 'sana@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1924794662, '2018-04-26', 'f', '1', '2018-04-09 18:18:51', '2018-04-09 19:51:01'),
(6, 'samila', 'sam@gmail.com', '332532dcfaa1cbf61e2a266bd723612c', 1924794662, '2018-04-11', 'f', '1', '2018-04-09 18:21:16', '2018-04-09 19:51:04'),
(7, 'danish', 'dan@gmail.com', '9180b4da3f0c7e80975fad685f7f134e', 1924794662, '2018-04-21', 'm', '1', '2018-04-09 18:27:02', '2018-04-09 19:50:58'),
(8, 'ram', 'ram@gmail.com', '202cb962ac59075b964b07152d234b70', 1924794662, '2018-04-18', 'm', '0', '2018-04-09 20:34:38', '2018-04-09 20:34:38'),
(9, 'rukhsana', 'rukhsana@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1234567890, '2018-04-18', 'f', '0', '2018-04-09 21:24:39', '2018-04-09 21:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventid` int(11) NOT NULL,
  `eventname` varchar(255) NOT NULL,
  `eventdate` date NOT NULL,
  `eventtime` time NOT NULL,
  `venue` varchar(255) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `seats` int(255) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `eventname`, `eventdate`, `eventtime`, `venue`, `phoneno`, `seats`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, 'krayola', '2018-04-14', '03:00:00', 'jkhjk', 1924794662, 30, 1, '2018-04-09 21:06:03', '2018-04-09 21:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `studentid` int(10) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `event` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`studentid`, `studentname`, `email`, `phoneno`, `event`, `created_at`, `updated_at`) VALUES
(1620686042, 'Roksana Islam', 'roksana@gmail.com', 1924794662, '1', '2018-04-10 11:42:01', '2018-04-10 11:42:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`studentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
