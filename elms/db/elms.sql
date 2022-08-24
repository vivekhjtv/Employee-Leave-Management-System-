-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 08:18 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2021-03-02 05:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(6, 'Networking', 'NW', 'NW101', '2021-04-04 05:00:35'),
(7, 'Computer', 'CE', 'CE102', '2021-04-29 04:43:32'),
(8, 'Human Resource', 'HR', 'HR103', '2021-04-29 04:44:58'),
(9, 'Finance Department', 'FD', 'FD104', '2021-04-29 05:39:59'),
(10, 'Sales Department', 'SD', 'SD105', '2021-04-29 05:41:33'),
(11, 'Marketing Department', 'MD', 'MD106', '2021-04-29 05:41:59'),
(12, 'General Management', 'GM', 'GM107', '2021-04-29 05:42:25'),
(13, 'Internet of Things', 'IOT', 'IOT108', '2021-04-29 05:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, '101', 'Vishal', 'Jayswal', 'vivek18@gmail.com', '6e7a75bf85811d2fecd3ba0feb31bd8d', 'Male', '4 March, 2021', 'Computer', 'Near Grampanchayat kacheri , Timbi, Swaminarayan School, Timbi', 'AMRELI', 'India', '9512788432', 1, '2021-03-03 10:47:37'),
(2, '102', 'Parth ', 'Jethva', 'Parth12@gmail.com', '6473275bea530d628855e20736b9aeb6', 'Male', '4 March, 2014', 'Information Technology', 'Swaminarayan School, Timbi', 'Una', 'India', '1568746562', 1, '2021-03-03 10:48:38'),
(3, '103', 'Vivek', 'Jethva', 'vivekhjtv18@gmail.com', 'e35cf7b66449df565f93c607d5a81d09', 'Male', '1 March, 2021', 'Information Technology', 'Swaminarayan School, Timbi', 'AMRELI', 'India', '9512788989', 1, '2021-03-25 08:34:01'),
(4, '104', 'Ashish', 'Kuriya', 'ashish12@gmail.com', '6a710cdccdb02b3301d71d83ed3d15b3', 'Male', '5 August, 2014', 'Networking', 'Pachali gali Dhangadhra', 'Dhangadhra', 'Pakistan', '8527419630', 0, '2021-04-04 05:04:49'),
(5, '105', 'Dhaval', 'Gusai', 'DG@123.gmail.com', 'c37bf859faf392800d739a41fe5af151', 'Male', '12 July, 2000', 'Networking', 'Bhuj ', 'Bhuj', 'India', '8798987897', 1, '2021-04-29 04:55:01'),
(6, '106', 'Nikita', 'Patel', 'np@123gmail.com', 'a500b93bd1d753f1155876ea03d3b6de', 'Female', '4 February, 1997', 'Internet of Things', 'Amreli', 'AMRELI', 'India', '8529637410', 1, '2021-04-29 05:48:27'),
(7, '107', 'Asha', 'Trivedi', 'at123@gmail.com', 'e6366d5e284915139decdfd0bcf07fb6', 'Female', '22 September, 1993', 'Marketing Department', 'Gh-5', 'Gandhinagar', 'India', '7894613212', 1, '2021-04-29 05:50:23'),
(8, '108', 'vandana', 'patel', 'vandu123@gmail.com', '1b4035e19c2a6da35503e2ccbf395bf3', 'Female', '15 April, 1998', 'Human Resource', 'Anand ', 'Anand', 'India', '9512785274', 1, '2021-04-29 05:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(11, 'Casual Leave', '11/02/2033', '11/02/2033', 'dbdfb', '2020-07-07 10:51:37', 'goooo', '2020-07-07 16:30:52 ', 0, 1, 1),
(12, 'Casual Leave', '30/01/2021', '29/01/2021', 'test', '2021-01-29 05:42:49', 'test desc', '2021-01-29 11:13:31 ', 0, 1, 2),
(13, 'Medical Leave test', '03/03/2021', '12/02/2021', 'asdasbambsdmnasb', '2021-03-02 07:18:35', 'rrrr', '2021-03-02 17:25:09 ', 0, 1, 3),
(14, 'Casual Leave', '13/02/2021', '12/02/2021', 'asdasdasd', '2021-03-02 07:19:08', 'yeh', '2021-03-02 12:49:59 ', 0, 1, 3),
(15, 'Medical Leave test', '17/12/2021', '15/12/2021', 'some', '2021-03-02 16:36:40', NULL, NULL, 0, 1, 4),
(16, 'Casual Leave', '20/01/2012', '18/01/2012', 'marriage', '2021-03-02 16:39:31', 'yes ', '2021-04-04 10:37:40 ', 1, 1, 4),
(17, 'Casual Leave', '17/02/2000', '15/02/2000', 'axy', '2021-03-03 10:50:19', NULL, NULL, 0, 1, 2),
(18, 'Medical Leave test', '13/03/2021', '13/03/2021', 'Medical', '2021-03-12 08:49:27', NULL, NULL, 0, 1, 2),
(19, 'Medical Leave test', '26/03/2020', '24/03/2020', 'due some reason', '2021-03-25 09:05:50', 'abc', '2021-03-25 14:44:56 ', 2, 1, 3),
(20, 'Sick Leave', '2021-04-03', '2021-04-01', 'abc', '2021-03-31 08:33:06', 'xyz', '2021-03-31 14:05:15 ', 1, 1, 3),
(21, 'marriage leave', '2021-04-07', '2021-04-05', 'asdfghjkl;', '2021-04-04 05:09:52', 'not ', '2021-04-04 10:41:11 ', 2, 1, 4),
(22, 'Sick Leave', '2021-05-01', '2021-04-30', 'asdfgj', '2021-04-29 04:51:12', NULL, NULL, 0, 1, 2),
(23, 'Casual Leave', '2021-05-01', '2021-04-29', 'abcdef', '2021-04-29 06:12:03', 'you can take leave', '2021-04-29 11:47:02 ', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(4, 'Half-pay leave', 'Half-pay leave', '2021-03-31 08:22:44'),
(5, 'Maternity leave', 'Maternity leave', '2021-03-31 08:22:44'),
(6, 'Marriage leave', 'Marriage leave', '2021-03-31 08:23:35'),
(7, 'Sick Leave', 'Sick Leave', '2021-03-31 08:24:43'),
(8, 'Holiday', 'Holiday', '2021-04-29 04:45:32'),
(9, 'Casual Leave', 'Casual Leave', '2021-04-29 05:36:22'),
(10, 'Paternity Leave', 'Paternity Leave', '2021-04-29 05:38:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
