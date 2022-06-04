-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 08:43 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usi_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `albumlists`
--

CREATE TABLE `albumlists` (
  `albumID` int(11) NOT NULL,
  `galleryTypeID` int(11) NOT NULL,
  `albumName` varchar(254) NOT NULL,
  `albumNote` text NOT NULL COMMENT 'Remarks',
  `albumDescription` text NOT NULL,
  `albumAttachment` varchar(254) NOT NULL,
  `albumCreateDate` datetime NOT NULL,
  `albumStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albumlists`
--

INSERT INTO `albumlists` (`albumID`, `galleryTypeID`, `albumName`, `albumNote`, `albumDescription`, `albumAttachment`, `albumCreateDate`, `albumStatus`, `companyID`, `applicationID`) VALUES
(7, 2, 'Filed Pre-assessment in Cox\'s Bazar for High-Quality Salt Production', '', '', 'image_directory/gallery/album/729eab2ba3-2021-11-04.jpg', '2021-11-04 06:16:11', 1, 1, 1),
(8, 2, 'Experience Exchange Tour in India', '', '', 'image_directory/gallery/album/6a4098f21b-2021-11-04.jpg', '2021-11-04 06:19:56', 1, 1, 1),
(9, 2, 'Exchange Experience of India Tour', '', '', 'image_directory/gallery/album/78912c0354-2021-11-04.jpg', '2021-11-04 06:20:34', 1, 1, 1),
(10, 2, 'The first step in creating a high quality salt production field in Cox\'s Bazar', '', '', 'image_directory/gallery/album/1d43c1aae0-2021-11-04.jpg', '2021-11-04 06:21:09', 1, 1, 1),
(11, 2, 'Qulaity Salt Harvesting During 2018-2019', '', '', 'image_directory/gallery/album/fc3ea22272-2021-11-04.jpg', '2021-11-04 06:21:38', 1, 1, 1),
(12, 2, 'High Quality Salt Production 2018-2019', '', '', 'image_directory/gallery/album/5f6b55f042-2021-11-04.jpg', '2021-11-04 06:22:07', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `allowance_transactions`
--

CREATE TABLE `allowance_transactions` (
  `allowanceTransactionID` int(11) NOT NULL,
  `employeeID` int(11) DEFAULT NULL COMMENT 'profile id',
  `allowanceID` int(11) DEFAULT NULL,
  `allowanceAmount` float DEFAULT '0',
  `allowanceDate` date DEFAULT NULL,
  `allowanceEndDate` date DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  `applicationID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowance_transactions`
--

INSERT INTO `allowance_transactions` (`allowanceTransactionID`, `employeeID`, `allowanceID`, `allowanceAmount`, `allowanceDate`, `allowanceEndDate`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 73, 24, 159.6, '2019-03-14', '2019-03-20', 1, 1, 1),
(2, 81, 27, 90.48, '2019-03-14', '2019-03-20', 1, 1, 1),
(3, 85, 36, 16.5, '2019-03-14', '2019-03-20', 1, 1, 1),
(4, 88, 42, 630.3, '2019-03-14', '2019-03-20', 1, 1, 1),
(5, 73, 24, 159.6, '2019-03-14', '2019-03-20', 1, 1, 1),
(6, 81, 27, 90.48, '2019-03-14', '2019-03-20', 1, 1, 1),
(7, 85, 36, 39, '2019-03-14', '2019-03-20', 1, 1, 1),
(8, 88, 42, 630.3, '2019-03-14', '2019-03-20', 1, 1, 1),
(9, 73, 24, 159.6, '2019-03-14', '2019-03-20', 1, 1, 1),
(10, 81, 27, 90.48, '2019-03-14', '2019-03-20', 1, 1, 1),
(11, 85, 36, 39, '2019-03-14', '2019-03-20', 1, 1, 1),
(12, 88, 42, 630.3, '2019-03-14', '2019-03-20', 1, 1, 1),
(13, 90, 45, 111.6, '2019-03-14', '2019-03-20', 1, 1, 1),
(14, 1, 29, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(15, 73, 24, 159.6, '2019-03-14', '2019-03-20', 1, 1, 1),
(16, 81, 27, 90.48, '2019-03-14', '2019-03-20', 1, 1, 1),
(17, 82, 28, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(18, 84, 34, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(19, 85, 36, 39, '2019-03-14', '2019-03-20', 1, 1, 1),
(20, 86, 38, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(21, 87, 40, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(22, 88, 42, 630.3, '2019-03-14', '2019-03-20', 1, 1, 1),
(23, 89, 43, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(24, 90, 45, 111.6, '2019-03-14', '2019-03-20', 1, 1, 1),
(25, 91, 47, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(26, 92, 49, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(27, 1, 29, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(28, 73, 24, 214.2, '2019-03-14', '2019-03-20', 1, 1, 1),
(29, 81, 27, 125.28, '2019-03-14', '2019-03-20', 1, 1, 1),
(30, 82, 28, 36.3, '2019-03-14', '2019-03-20', 1, 1, 1),
(31, 84, 34, 49.02, '2019-03-14', '2019-03-20', 1, 1, 1),
(32, 85, 36, 72, '2019-03-14', '2019-03-20', 1, 1, 1),
(33, 86, 38, 14.76, '2019-03-14', '2019-03-20', 1, 1, 1),
(34, 87, 40, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(35, 88, 42, 636.9, '2019-03-14', '2019-03-20', 1, 1, 1),
(36, 89, 43, 0, '2019-03-14', '2019-03-20', 1, 1, 1),
(37, 90, 45, 130.2, '2019-03-14', '2019-03-20', 1, 1, 1),
(38, 91, 47, 18.72, '2019-03-14', '2019-03-20', 1, 1, 1),
(39, 92, 49, 24.57, '2019-03-14', '2019-03-20', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `allowance_types`
--

CREATE TABLE `allowance_types` (
  `allowanceTypeID` int(11) NOT NULL,
  `allowanceType` varchar(255) NOT NULL,
  `allowanceTypeDescription` text NOT NULL,
  `allowanceTypeStatus` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowance_types`
--

INSERT INTO `allowance_types` (`allowanceTypeID`, `allowanceType`, `allowanceTypeDescription`, `allowanceTypeStatus`, `companyID`, `branchID`, `applicationID`) VALUES
(7, 'Overtime Duty', '&lt;pre&gt;Overtime Duty&lt;/pre&gt;', 1, 1, 1, 1),
(8, 'Tiffin', '&lt;p&gt;Allowance&lt;/p&gt;', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `application_list`
--

CREATE TABLE `application_list` (
  `ApplicationID` int(4) NOT NULL,
  `application_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_list`
--

INSERT INTO `application_list` (`ApplicationID`, `application_name`, `status`) VALUES
(1, 'Microsoft Office 10', 1),
(2, 'Adobe Photoshop 15', 1),
(3, 'Powerpoint', 1),
(4, 'Paint', 1);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `w_phone` varchar(65) DEFAULT NULL,
  `a_phone` varchar(65) DEFAULT NULL,
  `subject` varchar(65) DEFAULT NULL,
  `method` varchar(150) DEFAULT NULL,
  `message` text,
  `status` tinyint(1) DEFAULT '1',
  `message_date` varchar(16) DEFAULT NULL,
  `message_time` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `w_phone`, `a_phone`, `subject`, `method`, `message`, `status`, `message_date`, `message_time`) VALUES
(6, 'Faisal Ahmed', 'azimaf@gmail.com', '01766489774', '015658847878', 'Hi', 'voice', 'Hoss', 1, '12/01/2021', '11:26 AM');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `SL` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`SL`, `userID`, `date`) VALUES
(1, 53, '0000-00-00'),
(26, 10, '2019-01-09'),
(27, 10, '2019-01-09'),
(37, 10, '2019-01-10'),
(38, 10, '2019-01-10'),
(39, 10, '2019-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_given`
--

CREATE TABLE `attendance_given` (
  `SL` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `checkin` tinyint(4) NOT NULL COMMENT '1=> checkin, 2=> checkout, 3=> launchOut, 4=>launchIn',
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `attendance_given`
--

INSERT INTO `attendance_given` (`SL`, `employeeID`, `date`, `time`, `checkin`, `companyID`, `branchID`, `applicationID`) VALUES
(17, 73, '2019-03-09', '10:00', 1, 1, 1, 1),
(18, 82, '2019-03-07', '14:00', 2, 1, 1, 1),
(19, 90, '2019-03-09', '14:00', 2, 1, 1, 1),
(20, 90, '2019-03-09', '14:00', 2, 1, 1, 1),
(21, 83, '2019-03-12', '14:00', 2, 1, 1, 1),
(22, 83, '2019-03-12', '14:00', 3, 1, 1, 1),
(23, 83, '2019-03-12', '15:00', 4, 1, 1, 1),
(24, 83, '2019-03-12', '14:00', 2, 1, 1, 1),
(25, 90, '2019-03-13', '14:15', 1, 1, 1, 1),
(26, 90, '2019-03-13', '14:15', 2, 1, 1, 1),
(27, 83, '2019-03-12', '14:00', 3, 1, 1, 1),
(28, 83, '2019-03-12', '15:00', 4, 1, 1, 1),
(29, 73, '2019-03-16', '15:50', 4, 1, 1, 1),
(30, 73, '2019-03-14', '09:56', 1, 1, 1, 1),
(31, 84, '2019-03-14', '10:00', 1, 1, 1, 1),
(37, 73, '2019-03-14', '09:58', 1, 1, 1, 1),
(55, 73, '2019-03-14', '15:25', 3, 1, 1, 1),
(56, 73, '2019-03-14', '15:35', 4, 1, 1, 1),
(57, 73, '2019-03-14', '16:00', 3, 1, 1, 1),
(58, 73, '2019-03-14', '16:15', 4, 1, 1, 1),
(59, 73, '2019-03-18', '14:44', 3, 1, 1, 1),
(60, 73, '2019-03-18', '14:45', 4, 1, 1, 1),
(61, 73, '2019-03-16', '15:52', 4, 1, 1, 1),
(62, 73, '2019-03-16', '15:36', 3, 1, 1, 1),
(63, 90, '2019-03-14', '20:00', 2, 1, 1, 1),
(64, 88, '2019-03-14', '20:00', 2, 1, 1, 1),
(65, 82, '2019-03-19', '20:00', 2, 1, 1, 1),
(66, 82, '2019-03-20', '10:00', 1, 1, 1, 1),
(67, 88, '2019-03-13', '20:30', 2, 1, 1, 1),
(68, 88, '2019-03-14', '21:30', 2, 1, 1, 1),
(69, 88, '2019-03-18', '14:50', 3, 1, 1, 1),
(70, 88, '2019-03-18', '15:00', 4, 1, 1, 1),
(71, 88, '2019-03-19', '21:00', 2, 1, 1, 1),
(72, 88, '2019-03-18', '20:30', 2, 1, 1, 1),
(73, 88, '2019-03-20', '14:33', 3, 1, 1, 1),
(74, 88, '2019-03-20', '15:35', 4, 1, 1, 1),
(75, 84, '2019-03-14', '14:00', 4, 1, 1, 1),
(76, 84, '2019-03-14', '14:30', 3, 1, 1, 1),
(77, 90, '2019-03-20', '16:00', 3, 1, 1, 1),
(78, 90, '2019-03-20', '16:45', 4, 1, 1, 1),
(79, 85, '2019-03-19', '14:00', 3, 1, 1, 1),
(80, 85, '2019-03-19', '15:00', 4, 1, 1, 1),
(81, 91, '2019-03-16', '15:00', 3, 1, 1, 1),
(82, 91, '2019-03-16', '16:00', 4, 1, 1, 1),
(83, 91, '2019-03-20', '14:15', 3, 1, 1, 1),
(84, 91, '2019-03-20', '15:14', 4, 1, 1, 1),
(85, 90, '2019-03-20', '21:00', 2, 1, 1, 1),
(86, 86, '2019-03-21', '14:15', 2, 1, 1, 1),
(87, 86, '2019-03-21', '20:15', 2, 1, 1, 1),
(88, 86, '2019-03-23', '20:17', 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attrID` int(11) NOT NULL,
  `attrName` varchar(50) NOT NULL,
  `attrValuesIDs` varchar(255) NOT NULL COMMENT 'Values ID as comma seperated',
  `vendorID` int(11) NOT NULL,
  `storeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attrID`, `attrName`, `attrValuesIDs`, `vendorID`, `storeID`) VALUES
(1, 'Color', '22,21,20,2,1', 45, 16),
(2, 'Processor', '25,24,23,5', 45, 16),
(3, 'Display', '28,27,26', 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_groups`
--

CREATE TABLE `attribute_groups` (
  `SL` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `attrIDs` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `vendorID` int(11) NOT NULL,
  `storeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_groups`
--

INSERT INTO `attribute_groups` (`SL`, `categoryID`, `attrIDs`, `status`, `vendorID`, `storeID`) VALUES
(1, 84, '1', 0, 45, 16),
(2, 84, '3,2,1', 1, 45, 16),
(4, 83, '3,2,1', 1, 45, 16),
(5, 77, '3,2,1', 1, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `attrValueID` int(11) NOT NULL,
  `attrValueName` varchar(50) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `storeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`attrValueID`, `attrValueName`, `vendorID`, `storeID`) VALUES
(1, 'Red', 45, 16),
(2, 'Blue', 45, 16),
(5, '7th Generation', 45, 16),
(6, 'Core i7', 45, 16),
(7, 'Speaker', 45, 16),
(8, 'Entry Level', 45, 16),
(9, 'Professonal', 45, 16),
(10, '4K', 45, 16),
(11, 'Full HD', 45, 16),
(12, 'Mini PC', 45, 16),
(13, 'All In One PC', 45, 16),
(14, 'Intel', 45, 16),
(15, 'AMD', 45, 16),
(16, 'Core i3', 45, 16),
(17, 'Core i5', 45, 16),
(18, '256 SSD', 45, 16),
(19, '500 GB HDD', 45, 16),
(20, 'Black', 45, 16),
(21, 'White', 45, 16),
(22, 'Yellow', 45, 16),
(23, '5th Generation', 45, 16),
(24, '6th Generation', 45, 16),
(25, '8th Genearation', 45, 16),
(26, '5 Inch', 45, 16),
(27, '6 Inch', 45, 16),
(28, '5.8 Inch', 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `a_area`
--

CREATE TABLE `a_area` (
  `AreaID` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `AreaName` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AreaCode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `a_area`
--

INSERT INTO `a_area` (`AreaID`, `district_id`, `AreaName`, `AreaCode`) VALUES
(1, 1, 'Bananai', 'Dhaka - 0234'),
(2, 1, 'Gulshan', 'Dhaka - 0235'),
(3, 1, 'Uttara', 'Dhaka - 0235'),
(4, 1, 'Mirpur', 'Dhaka - 0237'),
(5, 1, 'Sadarghat', 'Dhaka - 0239');

-- --------------------------------------------------------

--
-- Table structure for table `a_branch`
--

CREATE TABLE `a_branch` (
  `BranchID` int(6) NOT NULL,
  `BranchName` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_branch`
--

INSERT INTO `a_branch` (`BranchID`, `BranchName`, `status`) VALUES
(1, 'Moakhali Dhaka ', 1),
(2, 'Uttara Dhaka', 1),
(3, 'Dhaka Malibug', 1),
(4, 'Dhaka Jatrabari', 1);

-- --------------------------------------------------------

--
-- Table structure for table `a_company`
--

CREATE TABLE `a_company` (
  `CompanyID` int(5) NOT NULL,
  `CompanyName` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `a_company`
--

INSERT INTO `a_company` (`CompanyID`, `CompanyName`, `status`) VALUES
(1, 'Google Inc', 1),
(2, 'Facebook', 1),
(3, 'Microsoft', 1),
(4, 'Linkedin', 1),
(5, 'Hostgator Inc', 1),
(6, 'Amazon', 1),
(7, 'Link3 Technology', 1),
(8, 'Amar Tech', 1),
(9, 'Blink Tecnologies', 1),
(10, 'Blueocean Limited', 1),
(11, 'Tonmoy House', 1);

-- --------------------------------------------------------

--
-- Table structure for table `a_districts`
--

CREATE TABLE `a_districts` (
  `district_id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bn_name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `a_districts`
--

INSERT INTO `a_districts` (`district_id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd'),
(5, 3, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd'),
(10, 3, 'Mymensingh', 'ময়মনসিং', 0, 0, 'www.mymensingh.gov.bd'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd'),
(13, 3, 'Netrokona', 'নেত্রকোনা', 24.870955, 90.727887, 'www.netrokona.gov.bd'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd'),
(16, 3, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd'),
(18, 5, 'Bogra', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd'),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd'),
(35, 1, 'Barisal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd'),
(43, 2, 'Chittagong', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd'),
(44, 2, 'Comilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd'),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd'),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd'),
(57, 4, 'Jessore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `a_divisions`
--

CREATE TABLE `a_divisions` (
  `division_id` int(2) UNSIGNED NOT NULL,
  `CountryID` int(11) DEFAULT '21',
  `name` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bn_name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `a_divisions`
--

INSERT INTO `a_divisions` (`division_id`, `CountryID`, `name`, `bn_name`) VALUES
(1, 21, 'Barisal', 'বরিশাল'),
(2, 21, 'Chittagong', 'চট্টগ্রাম'),
(3, 21, 'Dhaka', 'ঢাকা'),
(4, 21, 'Khulna', 'খুলনা'),
(5, 21, 'Rajshahi', 'রাজশাহী'),
(6, 21, 'Rangpur', 'রংপুর'),
(7, 21, 'Sylhet', 'সিলেট');

-- --------------------------------------------------------

--
-- Table structure for table `a_listofcounties`
--

CREATE TABLE `a_listofcounties` (
  `CountryID` int(3) NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `a_listofcounties`
--

INSERT INTO `a_listofcounties` (`CountryID`, `country_name`, `country_code`) VALUES
(1, 'Andorra', 'AD'),
(2, 'United Arab Emirates', 'AE'),
(3, 'Afghanistan', 'AF'),
(4, 'Antigua and Barbuda', 'AG'),
(5, 'Anguilla', 'AI'),
(6, 'Albania', 'AL'),
(7, 'Armenia', 'AM'),
(8, 'Netherlands Antilles', 'AN'),
(9, 'Angola', 'AO'),
(10, 'Asia/Pacific Region', 'AP'),
(11, 'Antarctica', 'AQ'),
(12, 'Argentina', 'AR'),
(13, 'American Samoa', 'AS'),
(14, 'Austria', 'AT'),
(15, 'Australia', 'AU'),
(16, 'Aruba', 'AW'),
(17, 'Aland Islands', 'AX'),
(18, 'Azerbaijan', 'AZ'),
(19, 'Bosnia and Herzegovina', 'BA'),
(20, 'Barbados', 'BB'),
(21, 'Bangladesh', 'BD'),
(22, 'Belgium', 'BE'),
(23, 'Burkina Faso', 'BF'),
(24, 'Bulgaria', 'BG'),
(25, 'Bahrain', 'BH'),
(26, 'Burundi', 'BI'),
(27, 'Benin', 'BJ'),
(28, 'Bermuda', 'BM'),
(29, 'Brunei Darussalam', 'BN'),
(30, 'Bolivia', 'BO'),
(31, 'Brazil', 'BR'),
(32, 'Bahamas', 'BS'),
(33, 'Bhutan', 'BT'),
(34, 'Bouvet Island', 'BV'),
(35, 'Botswana', 'BW'),
(36, 'Belarus', 'BY'),
(37, 'Belize', 'BZ'),
(38, 'Canada', 'CA'),
(39, 'Cocos (Keeling) Islands', 'CC'),
(40, 'Congo , The Democratic Republic of the', 'CD'),
(41, 'Central African Republic', 'CF'),
(42, 'Congo', 'CG'),
(43, 'Switzerland', 'CH'),
(44, 'Cote d\'Ivoire', 'CI'),
(45, 'Cook Islands', 'CK'),
(46, 'Chile', 'CL'),
(47, 'Cameroon', 'CM'),
(48, 'China', 'CN'),
(49, 'Colombia', 'CO'),
(50, 'Costa Rica', 'CR'),
(51, 'Cuba', 'CU'),
(52, 'Cape Verde', 'CV'),
(53, 'Christmas Island', 'CX'),
(54, 'Cyprus', 'CY'),
(55, 'Czech Republic', 'CZ'),
(56, 'Germany', 'DE'),
(57, 'Djibouti', 'DJ'),
(58, 'Denmark', 'DK'),
(59, 'Dominica', 'DM'),
(60, 'Dominican Republic', 'DO'),
(61, 'Algeria', 'DZ'),
(62, 'Ecuador', 'EC'),
(63, 'Estonia', 'EE'),
(64, 'Egypt', 'EG'),
(65, 'Western Sahara', 'EH'),
(66, 'Eritrea', 'ER'),
(67, 'Spain', 'ES'),
(68, 'Ethiopia', 'ET'),
(69, 'Europe', 'EU'),
(70, 'Finland', 'FI'),
(71, 'Fiji', 'FJ'),
(72, 'Falkland Islands (Malvinas)', 'FK'),
(73, 'Micronesia,Federated States of', 'FM'),
(74, 'Faroe Islands', 'FO'),
(75, 'France', 'FR'),
(76, 'Gabon', 'GA'),
(77, 'United Kingdom', 'GB'),
(78, 'Grenada', 'GD'),
(79, 'Georgia', 'GE'),
(80, 'French Guiana', 'GF'),
(81, 'Guernsey', 'GG'),
(82, 'Ghana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Greenland', 'GL'),
(85, 'Gambia', 'GM'),
(86, 'Guinea', 'GN'),
(87, 'Guadeloupe', 'GP'),
(88, 'Equatorial Guinea', 'GQ'),
(89, 'Greece', 'GR'),
(90, 'South Georgia and the South Sandwich Islands', 'GS'),
(91, 'Guatemala', 'GT'),
(92, 'Guam', 'GU'),
(93, 'Guinea-Bissau', 'GW'),
(94, 'Guyana', 'GY'),
(95, 'Hong Kong', 'HK'),
(96, 'Heard Island and McDonald Islands', 'HM'),
(97, 'Honduras', 'HN'),
(98, 'Croatia', 'HR'),
(99, 'Haiti', 'HT'),
(100, 'Hungary', 'HU'),
(101, 'Indonesia', 'ID'),
(102, 'Ireland', 'IE'),
(103, 'Israel', 'IL'),
(104, 'Isle of Man', 'IM'),
(105, 'India', 'IN'),
(106, 'British Indian Ocean Territory', 'IO'),
(107, 'Iraq', 'IQ'),
(108, 'Iran, Islamic Republic of', 'IR'),
(109, 'Iceland', 'IS'),
(110, 'Italy', 'IT'),
(111, 'Jersey', 'JE'),
(112, 'Jamaica', 'JM'),
(113, 'Jordan', 'JO'),
(114, 'Japan', 'JP'),
(115, 'Kenya', 'KE'),
(116, 'Kyrgyzstan', 'KG'),
(117, 'Cambodia', 'KH'),
(118, 'Kiribati', 'KI'),
(119, 'Comoros', 'KM'),
(120, 'Saint Kitts and Nevis', 'KN'),
(121, 'Korea, Democratic People\'s Republic of', 'KP'),
(122, 'Korea,Republic of', 'KR'),
(123, 'Kuwait', 'KW'),
(124, 'Cayman Islands', 'KY'),
(125, 'Kazakhstan', 'KZ'),
(126, 'Lao People\'s Democratic Republic', 'LA'),
(127, 'Lebanon', 'LB'),
(128, 'Saint Lucia', 'LC'),
(129, 'Liechtenstein', 'LI'),
(130, 'Sri Lanka', 'LK'),
(131, 'Liberia', 'LR'),
(132, 'Lesotho', 'LS'),
(133, 'Lithuania', 'LT'),
(134, 'Luxembourg', 'LU'),
(135, 'Latvia', 'LV'),
(136, 'Libyan Arab Jamahiriya', 'LY'),
(137, 'Morocco', 'MA'),
(138, 'Monaco', 'MC'),
(139, 'Moldova, Republic of', 'MD'),
(140, 'Montenegro', 'ME'),
(141, 'Madagascar', 'MG'),
(142, 'Marshall Islands', 'MH'),
(143, 'Macedonia', 'MK'),
(144, 'Mali', 'ML'),
(145, 'Myanmar', 'MM'),
(146, 'Mongolia', 'MN'),
(147, 'Macao', 'MO'),
(148, 'Northern Mariana Islands', 'MP'),
(149, 'Martinique', 'MQ'),
(150, 'Mauritania', 'MR'),
(151, 'Montserrat', 'MS'),
(152, 'Malta', 'MT'),
(153, 'Mauritius', 'MU'),
(154, 'Maldives', 'MV'),
(155, 'Malawi', 'MW'),
(156, 'Mexico', 'MX'),
(157, 'Malaysia', 'MY'),
(158, 'Mozambique', 'MZ'),
(159, 'Namibia', 'NA'),
(160, 'New Caledonia', 'NC'),
(161, 'Niger', 'NE'),
(162, 'Norfolk Island', 'NF'),
(163, 'Nigeria', 'NG'),
(164, 'Nicaragua', 'NI'),
(165, 'Netherlands', 'NL'),
(166, 'Norway', 'NO'),
(167, 'Nepal', 'NP'),
(168, 'Nauru', 'NR'),
(169, 'Niue', 'NU'),
(170, 'New Zealand', 'NZ'),
(171, 'Oman', 'OM'),
(172, 'Panama', 'PA'),
(173, 'Peru', 'PE'),
(174, 'French Polynesia', 'PF'),
(175, 'Papua New Guinea', 'PG'),
(176, 'Philippines', 'PH'),
(177, 'Pakistan', 'PK'),
(178, 'Poland', 'PL'),
(179, 'Saint Pierre and Miquelon', 'PM'),
(180, 'Pitcairn', 'PN'),
(181, 'Puerto Rico', 'PR'),
(182, 'Palestinian Territory', 'PS'),
(183, 'Portugal', 'PT'),
(184, 'Palau', 'PW'),
(185, 'Paraguay', 'PY'),
(186, 'Qatar', 'QA'),
(187, 'Reunion', 'RE'),
(188, 'Romania', 'RO'),
(189, 'Serbia', 'RS'),
(190, 'Russian Federation', 'RU'),
(191, 'Rwanda', 'RW'),
(192, 'Saudi Arabia', 'SA'),
(193, 'Solomon Islands', 'SB'),
(194, 'Seychelles', 'SC'),
(195, 'Sudan', 'SD'),
(196, 'Sweden', 'SE'),
(197, 'Singapore', 'SG'),
(198, 'Saint Helena', 'SH'),
(199, 'Slovenia', 'SI'),
(200, 'Svalbard and Jan Mayen', 'SJ'),
(201, 'Slovakia', 'SK'),
(202, 'Sierra Leone', 'SL'),
(203, 'San Marino', 'SM'),
(204, 'Senegal', 'SN'),
(205, 'Somalia', 'SO'),
(206, 'Suriname', 'SR'),
(207, 'Sao Tome and Principe', 'ST'),
(208, 'El Salvador', 'SV'),
(209, 'Syrian Arab Republic', 'SY'),
(210, 'Swaziland', 'SZ'),
(211, 'Turks and Caicos Islands', 'TC'),
(212, 'Chad', 'TD'),
(213, 'French Southern Territories', 'TF'),
(214, 'Togo', 'TG'),
(215, 'Thailand', 'TH'),
(216, 'Tajikistan', 'TJ'),
(217, 'Tokelau', 'TK'),
(218, 'Timor-Leste', 'TL'),
(219, 'Turkmenistan', 'TM'),
(220, 'Tunisia', 'TN'),
(221, 'Tonga', 'TO'),
(222, 'Turkey', 'TR'),
(223, 'Trinidad and Tobago', 'TT'),
(224, 'Tuvalu', 'TV'),
(225, 'Taiwan', 'TW'),
(226, 'Tanzania,United Republic of', 'TZ'),
(227, 'Ukraine', 'UA'),
(228, 'Uganda', 'UG'),
(229, 'United Kingdom', 'UK'),
(230, 'United States Minor Outlying Islands', 'UM'),
(231, 'United States', 'US'),
(232, 'Uruguay', 'UY'),
(233, 'Uzbekistan', 'UZ'),
(234, 'Holy See (Vatican City State)', 'VA'),
(235, 'Saint Vincent and the Grenadines', 'VC'),
(236, 'Venezuela', 'VE'),
(237, 'Virgin Islands,British', 'VG'),
(238, 'Virgin Islands,U.S.', 'VI'),
(239, 'Vietnam', 'VN'),
(240, 'Vanuatu', 'VU'),
(241, 'Wallis and Futuna', 'WF'),
(242, 'Samoa', 'WS'),
(243, 'Yemen', 'YE'),
(244, 'Mayotte', 'YT'),
(245, 'South Africa', 'ZA'),
(246, 'Zambia', 'ZM'),
(247, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `a_upazilas`
--

CREATE TABLE `a_upazilas` (
  `upazila_id` int(4) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bn_name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `a_upazilas`
--

INSERT INTO `a_upazilas` (`upazila_id`, `district_id`, `name`, `bn_name`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী'),
(2, 34, 'Bamna Upazila', 'বামনা'),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর'),
(4, 34, 'Betagi Upazila', 'বেতাগি'),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা'),
(6, 34, 'Taltali Upazila', 'তালতলী'),
(7, 35, 'Muladi Upazila', 'মুলাদি'),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ'),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা'),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর'),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ'),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা'),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী'),
(14, 35, 'Hizla Upazila', 'হিজলা'),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ '),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর'),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর'),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন'),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন'),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান'),
(21, 36, 'Lalmohan Upazila', 'লালমোহন'),
(22, 36, 'Manpura Upazila', 'মনপুরা'),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন'),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর'),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া'),
(26, 37, 'Nalchity Upazila', 'নালচিতি'),
(27, 37, 'Rajapur Upazila', 'রাজাপুর'),
(28, 38, 'Bauphal Upazila', 'বাউফল'),
(29, 38, 'Dashmina Upazila', 'দশমিনা'),
(30, 38, 'Galachipa Upazila', 'গলাচিপা'),
(31, 38, 'Kalapara Upazila', 'কালাপারা'),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ '),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর'),
(34, 38, 'Dumki Upazila', 'ডুমকি'),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি'),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া'),
(37, 39, 'Kaukhali', 'কাউখালি'),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া'),
(39, 39, 'Nazirpur', 'নাজিরপুর'),
(40, 39, 'Nesarabad', 'নেসারাবাদ'),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর'),
(42, 39, 'Zianagar', 'জিয়ানগর'),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর'),
(44, 40, 'Thanchi', 'থানচি'),
(45, 40, 'Lama', 'লামা'),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি '),
(47, 40, 'Ali kadam', 'আলী কদম'),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি '),
(49, 40, 'Ruma', 'রুমা'),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর'),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ'),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর'),
(53, 41, 'Nabinagar Upazila', 'নবীনগর'),
(54, 41, 'Sarail Upazila', 'সরাইল'),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন'),
(56, 41, 'Kasba Upazila', 'কসবা'),
(57, 41, 'Akhaura Upazila', 'আখাউরা'),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর'),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর'),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর'),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ'),
(62, 42, 'Haimchar', 'হাইমচর'),
(63, 42, 'Haziganj', 'হাজীগঞ্জ'),
(64, 42, 'Kachua', 'কচুয়া'),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর'),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ'),
(67, 42, 'Shahrasti', 'শাহরাস্তি'),
(68, 43, 'Anwara Upazila', 'আনোয়ারা'),
(69, 43, 'Banshkhali Upazila', 'বাশখালি'),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি'),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ'),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি'),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী'),
(74, 43, 'Lohagara Upazila', 'লোহাগারা'),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই'),
(76, 43, 'Patiya Upazila', 'পটিয়া'),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া'),
(78, 43, 'Raozan Upazila', 'রাউজান'),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ'),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া'),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড'),
(82, 44, 'Barura Upazila', 'বড়ুরা'),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া'),
(84, 44, 'Burichong Upazila', 'বুড়িচং'),
(85, 44, 'Chandina Upazila', 'চান্দিনা'),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম'),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি'),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার'),
(89, 44, 'Homna Upazila', 'হোমনা'),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর'),
(91, 44, 'Laksam Upazila', 'লাকসাম'),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ'),
(93, 44, 'Meghna Upazila', 'মেঘনা'),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর'),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট'),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ'),
(97, 44, 'Titas Upazila', 'তিতাস'),
(98, 45, 'Chakaria Upazila', 'চকরিয়া'),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর'),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া'),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী'),
(103, 45, 'Ramu Upazila', 'রামু'),
(104, 45, 'Teknaf Upazila', 'টেকনাফ'),
(105, 45, 'Ukhia Upazila', 'উখিয়া'),
(106, 45, 'Pekua Upazila', 'পেকুয়া'),
(107, 46, 'Feni Sadar', 'ফেনী সদর'),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া'),
(109, 46, 'Daganbhyan', 'দাগানভিয়া'),
(110, 46, 'Parshuram', 'পরশুরাম'),
(111, 46, 'Fhulgazi', 'ফুলগাজি'),
(112, 46, 'Sonagazi', 'সোনাগাজি'),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা '),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি'),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি'),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি'),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি'),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা'),
(119, 47, 'Panchhari Upazila', 'পানছড়ি'),
(120, 47, 'Ramgarh Upazila', 'রামগড়'),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর'),
(122, 48, 'Raipur Upazila', 'রায়পুর'),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ'),
(124, 48, 'Ramgati Upazila', 'রামগতি'),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর'),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর'),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ'),
(128, 49, 'Chatkhil Upazila', 'চাটখিল'),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ'),
(130, 49, 'Shenbag Upazila', 'শেনবাগ'),
(131, 49, 'Hatia Upazila', 'হাতিয়া'),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট '),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি'),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর '),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর'),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি'),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি'),
(138, 50, 'Barkal Upazila', 'বরকল'),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি'),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি'),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই'),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু'),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর '),
(144, 50, 'Kaukhali Upazila', 'কাউখালি'),
(145, 1, 'Dhamrai Upazila', 'ধামরাই'),
(146, 1, 'Dohar Upazila', 'দোহার'),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ'),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ'),
(149, 1, 'Savar Upazila', 'সাভার'),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর'),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী'),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা'),
(153, 2, 'Madhukhali Upazila', 'মধুখালি'),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা'),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড'),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন '),
(157, 2, 'Sadarpur Upazila', 'সদরপুর'),
(158, 2, 'Shaltha Upazila', 'শালথা'),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর'),
(160, 3, 'Kaliakior', 'কালিয়াকৈর'),
(161, 3, 'Kapasia', 'কাপাসিয়া'),
(162, 3, 'Sripur', 'শ্রীপুর'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ'),
(164, 3, 'Tongi', 'টঙ্গি'),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর'),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি'),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া'),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর'),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া'),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ'),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ'),
(172, 5, 'Islampur Upazila', 'ইসলামপুর'),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর'),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ'),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা'),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি '),
(177, 5, 'Narundi Police I.C', 'নারুন্দি'),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম'),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর'),
(180, 6, 'Bhairab Upazila', 'ভৈরব'),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর '),
(182, 6, 'Itna Upazila', 'ইটনা'),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ'),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি'),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর'),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর'),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন'),
(188, 6, 'Nikli Upazila', 'নিকলি'),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা'),
(190, 6, 'Tarail Upazila', 'তাড়াইল'),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর'),
(192, 7, 'Kalkini', 'কালকিনি'),
(193, 7, 'Rajoir', 'রাজইর'),
(194, 7, 'Shibchar', 'শিবচর'),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর'),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর'),
(197, 8, 'Shibalaya Upazila', 'শিবালয়'),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া'),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর'),
(200, 8, 'Ghior Upazila', 'ঘিওর'),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর'),
(202, 9, 'Lohajang Upazila', 'লোহাজং'),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর'),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর'),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান'),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি'),
(207, 9, 'Gazaria Upazila', 'গজারিয়া'),
(208, 10, 'Bhaluka', 'ভালুকা'),
(209, 10, 'Trishal', 'ত্রিশাল'),
(210, 10, 'Haluaghat', 'হালুয়াঘাট'),
(211, 10, 'Muktagachha', 'মুক্তাগাছা'),
(212, 10, 'Dhobaura', 'ধবারুয়া'),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া'),
(214, 10, 'Gaffargaon', 'গফরগাঁও'),
(215, 10, 'Gauripur', 'গৌরিপুর'),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ'),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর'),
(218, 10, 'Nandail', 'নন্দাইল'),
(219, 10, 'Phulpur', 'ফুলপুর'),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার'),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও'),
(222, 11, 'Bandar', 'বান্দার'),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর'),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ'),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ'),
(226, 12, 'Belabo Upazila', 'বেলাবো'),
(227, 12, 'Monohardi Upazila', 'মনোহরদি'),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর'),
(229, 12, 'Palash Upazila', 'পলাশ'),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর'),
(231, 12, 'Shibpur Upazila', 'শিবপুর'),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া'),
(233, 13, 'Atpara Upazilla', 'আটপাড়া'),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা'),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর'),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা'),
(237, 13, 'Madan Upazilla', 'মদন'),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ'),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর'),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা'),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি'),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি'),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট'),
(244, 14, 'Pangsha Upazila', 'পাংশা'),
(245, 14, 'Kalukhali Upazila', 'কালুখালি'),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর'),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর '),
(248, 15, 'Damudya Upazila', 'দামুদিয়া'),
(249, 15, 'Naria Upazila', 'নড়িয়া'),
(250, 15, 'Jajira Upazila', 'জাজিরা'),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ'),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট '),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি'),
(254, 16, 'Nakla Upazila', 'নাকলা'),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি'),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর'),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি'),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর'),
(259, 17, 'Sakhipur Upazila', 'সখিপুর'),
(260, 17, 'Basail Upazila', 'বসাইল'),
(261, 17, 'Madhupur Upazila', 'মধুপুর'),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল'),
(263, 17, 'Kalihati Upazila', 'কালিহাতি'),
(264, 17, 'Nagarpur Upazila', 'নগরপুর'),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর'),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর'),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার'),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর'),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি'),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর'),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি'),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট'),
(273, 55, 'Kachua Upazila', 'কচুয়া'),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট '),
(275, 55, 'Mongla Upazila', 'মংলা'),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ'),
(277, 55, 'Rampal Upazila', 'রামপাল'),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা'),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা'),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর'),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর '),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা'),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর'),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর'),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া '),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর'),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা'),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর '),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা'),
(290, 57, 'Sharsha Upazila', 'সারশা'),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর'),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর'),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর '),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা'),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা'),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা'),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা '),
(299, 59, 'Dacope Upazila', 'ডাকপে'),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া'),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া'),
(302, 59, 'Koyra Upazila', 'কয়ড়া'),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা'),
(304, 59, 'Phultala Upazila', 'ফুলতলা'),
(305, 59, 'Rupsa Upazila', 'রূপসা'),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর'),
(307, 60, 'Kumarkhali', 'কুমারখালি'),
(308, 60, 'Daulatpur', 'দৌলতপুর'),
(309, 60, 'Mirpur', 'মিরপুর'),
(310, 60, 'Bheramara', 'ভেরামারা'),
(311, 60, 'Khoksa', 'খোকসা'),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর'),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর'),
(314, 61, 'Shalikha Upazila', 'শালিখা'),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর'),
(316, 62, 'angni Upazila', 'আংনি'),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর'),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর'),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর'),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া'),
(321, 63, 'Kalia Upazilla', 'কালিয়া'),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর'),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি '),
(324, 64, 'Debhata Upazila', 'দেভাটা'),
(325, 64, 'Tala Upazila', 'তালা'),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া'),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর'),
(329, 18, 'Adamdighi', 'আদমদিঘী'),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর'),
(331, 18, 'Sherpur', 'শেরপুর'),
(332, 18, 'Dhunat', 'ধুনট'),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া'),
(334, 18, 'Gabtali', 'গাবতলি'),
(335, 18, 'Kahaloo', 'কাহালু'),
(336, 18, 'Nandigram', 'নন্দিগ্রাম'),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর'),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি'),
(339, 18, 'Shibganj', 'শিবগঞ্জ'),
(340, 18, 'Sonatala', 'সোনাতলা'),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর'),
(342, 19, 'Akkelpur', 'আক্কেলপুর'),
(343, 19, 'Kalai', 'কালাই'),
(344, 19, 'Khetlal', 'খেতলাল'),
(345, 19, 'Panchbibi', 'পাঁচবিবি'),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর'),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর'),
(348, 20, 'Manda Upazila', 'মান্দা'),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর'),
(350, 20, 'Atrai Upazila', 'আত্রাই'),
(351, 20, 'Raninagar Upazila', 'রাণীনগর'),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা'),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট '),
(354, 20, 'Sapahar Upazila', 'সাপাহার'),
(355, 20, 'Porsha Upazila', 'পোরশা'),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি'),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম'),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া'),
(360, 21, 'Lalpur Upazila', 'লালপুর'),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম'),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট'),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর'),
(365, 22, 'Nachole Upazila', 'নাচোল'),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর'),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ'),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া'),
(369, 23, 'Bera Upazila', 'বেড়া'),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা'),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর'),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর'),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী'),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর'),
(375, 23, 'Santhia Upazila', 'সাথিয়া'),
(376, 23, 'Sujanagar Upazila', 'সুজানগর'),
(377, 24, 'Bagha', 'বাঘা'),
(378, 24, 'Bagmara', 'বাগমারা'),
(379, 24, 'Charghat', 'চারঘাট'),
(380, 24, 'Durgapur', 'দুর্গাপুর'),
(381, 24, 'Godagari', 'গোদাগারি'),
(382, 24, 'Mohanpur', 'মোহনপুর'),
(383, 24, 'Paba', 'পবা'),
(384, 24, 'Puthia', 'পুঠিয়া'),
(385, 24, 'Tanore', 'তানোর'),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর'),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি'),
(388, 25, 'Chauhali Upazila', 'চৌহালি'),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা'),
(390, 25, 'Kazipur Upazila', 'কাজীপুর'),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ'),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর'),
(393, 25, 'Tarash Upazila', 'তারাশ'),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া'),
(395, 26, 'Birampur Upazila', 'বিরামপুর'),
(396, 26, 'Birganj', 'বীরগঞ্জ'),
(397, 26, 'Biral Upazila', 'বিড়াল'),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ'),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর'),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি'),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট'),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর'),
(403, 26, 'Kaharole Upazila', 'কাহারোল'),
(404, 26, 'Khansama Upazila', 'খানসামা'),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর'),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ'),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর'),
(408, 27, 'Fulchhari', 'ফুলছড়ি'),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর'),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ'),
(411, 27, 'Palashbari', 'পলাশবাড়ী'),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর'),
(413, 27, 'Saghata', 'সাঘাটা'),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ'),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর'),
(416, 28, 'Nageshwari', 'নাগেশ্বরী'),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি'),
(418, 28, 'Phulbari', 'ফুলবাড়ি'),
(419, 28, 'Rajarhat', 'রাজারহাট'),
(420, 28, 'Ulipur', 'উলিপুর'),
(421, 28, 'Chilmari', 'চিলমারি'),
(422, 28, 'Rowmari', 'রউমারি'),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর'),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর'),
(425, 29, 'Aditmari', 'আদিতমারি'),
(426, 29, 'Kaliganj', 'কালীগঞ্জ'),
(427, 29, 'Hatibandha', 'হাতিবান্ধা'),
(428, 29, 'Patgram', 'পাটগ্রাম'),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর'),
(430, 30, 'Saidpur', 'সৈয়দপুর'),
(431, 30, 'Jaldhaka', 'জলঢাকা'),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ'),
(433, 30, 'Domar', 'ডোমার'),
(434, 30, 'Dimla', 'ডিমলা'),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর'),
(436, 31, 'Debiganj', 'দেবীগঞ্জ'),
(437, 31, 'Boda', 'বোদা'),
(438, 31, 'Atwari', 'আটোয়ারি'),
(439, 31, 'Tetulia', 'তেতুলিয়া'),
(440, 32, 'Badarganj', 'বদরগঞ্জ'),
(441, 32, 'Mithapukur', 'মিঠাপুকুর'),
(442, 32, 'Gangachara', 'গঙ্গাচরা'),
(443, 32, 'Kaunia', 'কাউনিয়া'),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর'),
(445, 32, 'Pirgachha', 'পীরগাছা'),
(446, 32, 'Pirganj', 'পীরগঞ্জ'),
(447, 32, 'Taraganj', 'তারাগঞ্জ'),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর'),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ'),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি'),
(451, 33, 'Haripur Upazila', 'হরিপুর'),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল'),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ'),
(454, 51, 'Baniachang', 'বানিয়াচং'),
(455, 51, 'Bahubal', 'বাহুবল'),
(456, 51, 'Chunarughat', 'চুনারুঘাট'),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর'),
(458, 51, 'Lakhai', 'লাক্ষাই'),
(459, 51, 'Madhabpur', 'মাধবপুর'),
(460, 51, 'Nabiganj', 'নবীগঞ্জ'),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ'),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার'),
(463, 52, 'Barlekha', 'বড়লেখা'),
(464, 52, 'Juri', 'জুড়ি'),
(465, 52, 'Kamalganj', 'কামালগঞ্জ'),
(466, 52, 'Kulaura', 'কুলাউরা'),
(467, 52, 'Rajnagar', 'রাজনগর'),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল'),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর'),
(470, 53, 'Chhatak', 'ছাতক'),
(471, 53, 'Derai', 'দেড়াই'),
(472, 53, 'Dharampasha', 'ধরমপাশা'),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার'),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর'),
(475, 53, 'Jamalganj', 'জামালগঞ্জ'),
(476, 53, 'Sulla', 'সুল্লা'),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর'),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ'),
(479, 53, 'Tahirpur', 'তাহিরপুর'),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর'),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার'),
(482, 54, 'Bishwanath', 'বিশ্বনাথ'),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা'),
(484, 54, 'Balaganj', 'বালাগঞ্জ'),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ'),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ'),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ'),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট'),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর'),
(490, 54, 'Kanaighat', 'কানাইঘাট'),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ'),
(492, 54, 'Nobigonj', 'নবীগঞ্জ');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `bankID` int(11) NOT NULL,
  `mainBankID` int(11) NOT NULL DEFAULT '0',
  `bankName` varchar(70) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bankBranch` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bankAddress` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `notes` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `accountNumber` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `accountType` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`bankID`, `mainBankID`, `bankName`, `bankBranch`, `bankAddress`, `notes`, `accountNumber`, `accountType`, `status`, `vendorID`, `storeID`) VALUES
(551, 0, 'gfhdfh', 'Paltan Branch', 'dfghhgsdfgsdfg', '', '45236357646', 'saving', 1, 45, 13),
(552, 0, 'ssbl', 'Panthapath', 'dfghhgsdfgsdfg', '', '4523635764678', 'saving', 0, 45, 13),
(553, 0, 'Shonali Bank', 'Gulshan', 'Gulshan 1205', '', '3434656767', 'running', 1, 45, 13),
(554, 0, 'SB', 'Paltan Branch', 'dfghhgsdfgsdfg', 'gfjgfjh', '4523635764678', 'saving', 0, 45, 13),
(555, 1, 'Dutch Bangla Bank', 'Gulshan', 'Dhaka-1200', 'Note this', '200', 'saving', 1, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `bank_amounts`
--

CREATE TABLE `bank_amounts` (
  `bank_amountID` int(11) NOT NULL,
  `bankID` int(11) DEFAULT NULL,
  `paymentID` int(11) DEFAULT NULL,
  `amount` float(11,2) DEFAULT NULL,
  `transactionType` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transactionDate` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transactionDateTime` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referenceID` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `notes` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `storeID` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `transactionMonth` int(5) DEFAULT NULL,
  `transactionYear` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `bannerImageID` int(11) NOT NULL,
  `image` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `alt_text` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`bannerImageID`, `image`, `alt_text`) VALUES
(8, '040a774249-2018-12-01.jpg', 'Banner Image 1'),
(9, '18b44b98a6-2018-12-01.jpg', 'Banner Image 2'),
(10, '28f6dbad49-2018-12-01.jpg', 'Banner Image 3'),
(11, '6544a7dfa5-2018-12-01.jpg', 'Banner Image 4');

-- --------------------------------------------------------

--
-- Table structure for table `blood_gruops`
--

CREATE TABLE `blood_gruops` (
  `blood_group_id` int(11) NOT NULL,
  `group_name` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `blood_gruops`
--

INSERT INTO `blood_gruops` (`blood_group_id`, `group_name`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'AB+'),
(6, 'AB-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brandID` int(11) NOT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `distributor` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brandID`, `brand_name`, `distributor`) VALUES
(25, 'Samsung', ''),
(26, 'Xiaomi', ''),
(27, 'Oppo', ''),
(28, 'Apple', '');

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `business_typeID` int(11) NOT NULL,
  `business_type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`business_typeID`, `business_type_name`) VALUES
(1, 'Small'),
(2, 'Medium'),
(3, 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category_image` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_icon` varchar(90) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_banner` varchar(90) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_description` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_slug` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_parent` int(11) DEFAULT NULL,
  `is_navbar` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=> display on navbar, 0=>not display',
  `priority` int(11) NOT NULL DEFAULT '10' COMMENT 'How it will display in the ecommerce site, lowest has the highest order',
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `category`, `category_image`, `category_icon`, `category_banner`, `category_description`, `category_slug`, `is_parent`, `is_navbar`, `priority`, `vendorID`, `storeID`) VALUES
(79, 'Mobiles', 'cat_img0e5f7bcfa3-2019-03-27.jpg', 'cat_icon0e5f7bcfa3-2019-03-27.jpg', 'cat_band46cf7e17a-2019-03-27.jpg', 'Smart Phone', 'mobiles', 88, 0, 10, 45, 16),
(83, 'New Phones', 'cat_img653efe8ce2-2019-03-27.png', 'cat_icon653efe8ce2-2019-03-27.png', 'cat_ban653efe8ce2-2019-03-27.jpg', '', '', 79, 0, 10, 45, 16),
(84, 'Samsung', 'cat_img3be305d895-2019-03-27.jpg', 'cat_icon0c426b934d-2019-03-27.png', 'cat_ban3be305d895-2019-03-27.jpg', 'Samsung', 'Samsung', 79, 0, 10, 45, 16),
(85, 'Sports', 'cat_imgbb0ac04f34-2019-04-06.png', 'cat_iconbb0ac04f34-2019-04-06.png', NULL, 'Sports', 'sports', NULL, 0, 5, 45, 16),
(86, 'Man Shoes & Cloths', 'cat_img29a2ae91fb-2019-04-06.jpg', 'cat_icon29a2ae91fb-2019-04-06.png', NULL, 'Man Shoes & Cloths', 'man-shoe-cloths', 85, 0, 10, 45, 16),
(87, 'Women Shoes & Cloths', 'cat_img0b61a60dc3-2019-04-06.jpg', 'cat_icon0b61a60dc3-2019-04-06.png', NULL, 'Women Shoes & Cloths', 'women-shoe-cloths', 85, 0, 10, 45, 16),
(88, 'Electronic Devices', 'cat_imgc03b9cd667-2019-04-06.jpg', 'cat_iconc03b9cd667-2019-04-06.png', NULL, 'Electronic Devices', 'electronic-devices', NULL, 0, 3, 45, 16),
(89, 'Laptop', 'cat_imgd219f3edc0-2019-04-06.png', 'cat_icond219f3edc0-2019-04-06.png', NULL, 'Laptop', 'laptop', 88, 0, 10, 45, 16),
(90, 'Health and Beauty', 'cat_img7646eb1b21-2019-04-06.jpg', 'cat_icon7646eb1b21-2019-04-06.png', NULL, 'Health and Beauty', 'health-beauty', NULL, 0, 4, 45, 16),
(91, 'Mens', 'cat_img246b3dd563-2019-04-06.jpg', 'cat_icon246b3dd563-2019-04-06.jfif', NULL, 'Mens', 'mens', NULL, 0, 1, 45, 16),
(92, 'Womens', 'cat_img324b7a0b74-2019-04-06.jpg', 'cat_icon324b7a0b74-2019-04-06.png', NULL, 'Womens', 'wWomens', NULL, 0, 2, 45, 16),
(93, 'Clothing', 'cat_img6d786f645c-2019-04-06.jpg', 'cat_icon6d786f645c-2019-04-06.png', NULL, 'Clothing', 'clothing', 91, 0, 10, 45, 16),
(94, 'Shoes', 'cat_imgf361d2c9ee-2019-04-06.jpg', 'cat_iconf361d2c9ee-2019-04-06.png', NULL, 'Shoes', 'shoes', 91, 0, 10, 45, 16),
(95, 'Clothing', 'cat_img6c051aea89-2019-04-06.jpg', 'cat_icon6c051aea89-2019-04-06.png', NULL, 'Clothing', 'clothing', 92, 0, 10, 45, 16),
(96, 'Tablets', 'cat_imgc9a45034fb-2019-04-06.png', 'cat_iconc9a45034fb-2019-04-06.png', NULL, 'Tablets', 'tablets', 88, 0, 10, 45, 16),
(97, 'ash', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, 45, 0);

-- --------------------------------------------------------

--
-- Table structure for table `challan`
--

CREATE TABLE `challan` (
  `challanID` int(11) NOT NULL,
  `challanDate` varchar(15) DEFAULT NULL,
  `challanYear` varchar(6) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `contactPerson` varchar(25) DEFAULT NULL,
  `contact_person_phone` varchar(18) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL,
  `entry_userID` int(11) DEFAULT NULL,
  `is_bill` int(2) DEFAULT NULL,
  `challan_status` int(2) DEFAULT NULL,
  `challan_time` varchar(18) DEFAULT NULL,
  `note` text,
  `po_no` varchar(50) DEFAULT NULL,
  `indent_no` varchar(50) DEFAULT NULL,
  `is_draft` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challan`
--

INSERT INTO `challan` (`challanID`, `challanDate`, `challanYear`, `customerID`, `contactPerson`, `contact_person_phone`, `vendorID`, `storeID`, `entry_userID`, `is_bill`, `challan_status`, `challan_time`, `note`, `po_no`, `indent_no`, `is_draft`) VALUES
(64, '2019-03-12', '2019', 102, '', '', 45, 22, 46, 0, 0, '01:35:45 PM', '', 'N/A', 'N/A', 0);

-- --------------------------------------------------------

--
-- Table structure for table `challan_details`
--

CREATE TABLE `challan_details` (
  `challan_detailsID` int(11) NOT NULL,
  `challanID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `product_title` varchar(155) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `unit` varchar(25) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `entry_userID` int(11) DEFAULT NULL,
  `is_processed` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challan_details`
--

INSERT INTO `challan_details` (`challan_detailsID`, `challanID`, `productID`, `product_title`, `storeID`, `vendorID`, `unit`, `quantity`, `entry_userID`, `is_processed`) VALUES
(121, 64, 219, 'SS NUT 10mm', 22, 45, 'Ton', 20, 46, 0);

-- --------------------------------------------------------

--
-- Table structure for table `checktransactions`
--

CREATE TABLE `checktransactions` (
  `checkID` int(11) NOT NULL,
  `amount` float(11,0) DEFAULT NULL,
  `paymentID` int(11) DEFAULT NULL,
  `bankID` int(11) DEFAULT NULL,
  `checkNO` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `checkDate` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `checkType` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `checkTO` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `transactionMonth` int(5) DEFAULT NULL,
  `transactionYear` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `checktransactions`
--

INSERT INTO `checktransactions` (`checkID`, `amount`, `paymentID`, `bankID`, `checkNO`, `checkDate`, `checkType`, `checkTO`, `notes`, `vendorID`, `transactionMonth`, `transactionYear`) VALUES
(43, NULL, 950, 0, '', '2019-01-07  03:48:46pm', NULL, NULL, NULL, 45, 1, 2019),
(45, 50000, 952, 551, '212365487965421', '2019-01-07  03:52:28pm', '8', 'Mr Jhon', 'fh fh', 45, 1, 2019),
(46, NULL, 1011, 0, '', '2019-01-08  01:59:53pm', NULL, NULL, NULL, 45, 1, 2019),
(47, NULL, 1019, 0, '', '2019-01-08  03:13:12pm', NULL, NULL, NULL, 45, 1, 2019),
(48, 50000, 1052, 552, '212365487965421', '2019-01-08  05:15:14pm', '7', 'Mr Jhon', 'good', 45, 1, 2019),
(49, 10000, 1052, 552, '212365487965421', '2019-01-08  05:16:39pm', '8', 'Mr Jhon', 'good', 45, 1, 2019),
(50, NULL, 1056, 0, '', '2019-01-08  05:54:14pm', NULL, NULL, NULL, 45, 1, 2019),
(51, NULL, 1095, 0, '', '2019-01-14  09:50:25am', NULL, NULL, NULL, 45, 1, 2019),
(52, NULL, 1112, 0, '', '2019-01-14  12:09:12pm', NULL, NULL, NULL, 45, 1, 2019),
(53, 50000, 1119, 553, '212365487965421', '2019-01-14  12:43:46pm', '8', 'Mr Jhon', '', 45, 1, 2019),
(54, NULL, 1310, 0, '', '2019-03-10  04:04:58pm', NULL, NULL, NULL, 45, 3, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientID` int(11) NOT NULL,
  `clientTypeID` int(11) NOT NULL,
  `clientName` varchar(80) NOT NULL,
  `clientCompanyName` varchar(80) NOT NULL,
  `clientDetails` text,
  `clientImage` varchar(80) DEFAULT NULL,
  `clientOrder` int(11) NOT NULL,
  `clientURL` varchar(255) DEFAULT NULL,
  `clientContactNumber` varchar(30) DEFAULT NULL,
  `clientEmail` varchar(50) DEFAULT NULL,
  `clientAddress` text,
  `clientCountryID` int(11) DEFAULT NULL,
  `entryUserID` int(11) NOT NULL,
  `modifiedUserID` int(11) DEFAULT NULL,
  `entryTime` datetime NOT NULL,
  `modifiedTime` datetime DEFAULT NULL,
  `clientStatus` int(5) NOT NULL,
  `companyID` int(11) DEFAULT NULL,
  `applicationID` int(11) DEFAULT NULL,
  `clientCategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientID`, `clientTypeID`, `clientName`, `clientCompanyName`, `clientDetails`, `clientImage`, `clientOrder`, `clientURL`, `clientContactNumber`, `clientEmail`, `clientAddress`, `clientCountryID`, `entryUserID`, `modifiedUserID`, `entryTime`, `modifiedTime`, `clientStatus`, `companyID`, `applicationID`, `clientCategoryID`) VALUES
(36, 2, 'The Ministry of Industries ', 'The Ministry of Industries ', 'The Ministry of Industries (MoInd) is primarily responsible for developing new policies and strategies for promotion, expansion and sustainable development of Salt Industrial sector of Bangladesh.', 'image_directory/clientimage/2e01b29ff0-2021-11-03.png', 3, '', '', '', '', 0, 62, 62, '2021-11-03 01:32:24', '2021-11-03 01:49:33', 1, 1, 1, 0),
(37, 2, 'ISMOS', 'ISMOS', '	There are 84 traditional salt mills (2021) producing industrial & edible salt in Coxâ€™s Bazaar zone under the Islampur Salt Mill Owner Versatile Cooperative Society Limited (ISMOS) association. ISMOS is currently working with UNICEF Bangladesh to remove Iodine Deficiency Disorder from Bangladesh by producing high-yield raw salt and manufacturing quality iodized salt.								 ', 'image_directory/clientimage/97c3e44f5e-2021-11-03.png', 4, '', '', '', '', NULL, 62, NULL, '2021-11-03 01:39:24', NULL, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `postRefID` int(11) NOT NULL,
  `commentUserID` int(11) NOT NULL,
  `commentType` int(11) NOT NULL,
  `commentTitle` varchar(80) NOT NULL,
  `commentDetails` text NOT NULL,
  `isChildOf` int(11) NOT NULL,
  `commentDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `commentDateTime` datetime NOT NULL,
  `commentScore` int(11) NOT NULL,
  `approvedUserID` int(11) NOT NULL,
  `commentStatus` int(5) NOT NULL,
  `approvedTime` datetime NOT NULL,
  `modifiedTime` datetime NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `postRefID`, `commentUserID`, `commentType`, `commentTitle`, `commentDetails`, `isChildOf`, `commentDate`, `commentDateTime`, `commentScore`, `approvedUserID`, `commentStatus`, `approvedTime`, `modifiedTime`, `companyID`, `applicationID`) VALUES
(338, 1, 62, 1, 'fghfh', 'fghfgh hgfh fghfgh fghgfh gfhgfh fg fghgfhf gfhgfh gkjdf skdjf ksdjfkf dskfjsdf dkasfs sdfsdf sdfsf sdfsdfjk sfsdfk fdsf sdfsf sdfdfk dfssak sadfsdf sdfsf sdfsf hkjsdf.', 0, '2019-08-06 06:56:09', '2019-07-14 12:22:05', 7, 0, 1, '0000-00-00 00:00:00', '2019-07-15 02:08:16', 1, 1),
(339, 1, 62, 1, 'fhgfhgf', 'fghfghfgh', 0, '2019-07-14 11:48:49', '2019-07-14 12:22:08', 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(341, 1, 62, 1, 'dgdfg', 'dfgdfgd', 0, '2019-07-14 09:22:18', '2019-07-14 03:22:18', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(343, 1, 62, 1, 'dfgdfg', 'dfgdfgdfgfd', 0, '2019-07-14 09:22:23', '2019-07-14 03:22:23', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(344, 1, 62, 1, 'dfgfdgdf', 'gdfgdfgd', 0, '2019-07-14 09:22:26', '2019-07-14 03:22:26', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(345, 1, 62, 1, 'dfgdfgdf', 'dfgdfgdfgdfg', 0, '2019-07-14 09:22:29', '2019-07-14 03:22:29', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(346, 1, 62, 1, 'dfgdfg', 'dfgdfgdg', 0, '2019-07-14 09:22:32', '2019-07-14 03:22:32', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(347, 1, 62, 1, 'dfgdg', 'dgdfgdg', 0, '2019-07-14 11:56:21', '2019-07-14 03:22:35', 8, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(348, 1, 62, 1, 'dfgdg', 'dfgdfgd', 0, '2019-07-14 12:25:24', '2019-07-14 03:22:37', 2, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(352, 1, 62, 1, 'dfdfg', 'dfgdfg', 0, '2019-07-15 06:52:53', '2019-07-15 08:52:53', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(353, 1, 62, 1, 'dffd', 'dfgd', 0, '2019-07-15 06:53:17', '2019-07-15 08:53:00', 0, 0, 1, '0000-00-00 00:00:00', '2019-07-15 12:53:17', 1, 1),
(354, 1, 62, 1, 'dfgd', 'dgd', 0, '2019-07-15 06:53:52', '2019-07-15 12:53:40', 0, 0, 1, '0000-00-00 00:00:00', '2019-07-15 12:53:52', 1, 1),
(355, 1, 62, 1, 'fgh', 'fghfg fgh', 0, '2019-07-20 06:23:18', '2019-07-15 12:53:58', 0, 0, 1, '0000-00-00 00:00:00', '2019-07-20 12:23:18', 1, 1),
(356, 1, 62, 1, 'fgh', 'fghfg', 0, '2019-07-15 06:53:58', '2019-07-15 12:53:58', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(358, 1, 54, 1, 'fgh', 'fghfgh', 338, '2019-07-16 06:45:49', '2019-07-16 12:45:49', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(361, 1, 62, 1, 'hidden', 'fdgdfg', 0, '2019-07-20 10:26:08', '2019-07-20 12:47:39', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(362, 1, 62, 1, 'hidden', 'ffghgf', 0, '2019-07-20 06:51:23', '2019-07-20 12:51:23', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(363, 1, 62, 1, 'hidden', 'xxfgf fdgdf xf', 0, '2019-07-20 12:10:44', '2019-07-20 12:54:31', 0, 0, 1, '0000-00-00 00:00:00', '2019-07-20 06:10:44', 1, 1),
(367, 1, 62, 1, 'hidden', 'ash', 0, '2019-07-20 12:10:09', '2019-07-20 06:10:09', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(368, 1, 62, 1, 'hidden', 'fdsdfdsf', 0, '2019-07-20 12:10:50', '2019-07-20 06:10:50', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(369, 1, 62, 1, 'hidden', 'fghfgh', 0, '2019-07-20 12:13:12', '2019-07-20 06:13:12', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(370, 1, 62, 1, 'hidden', 'cbgcvb', 0, '2019-07-20 12:14:35', '2019-07-20 06:14:35', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(371, 1, 62, 1, 'hidden', 'cbcvbvc', 0, '2019-07-20 12:14:37', '2019-07-20 06:14:37', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(372, 1, 62, 1, 'hidden', 'cvbcvbvc', 0, '2019-07-20 12:14:40', '2019-07-20 06:14:40', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(373, 1, 62, 1, 'hidden', 'hjhj', 0, '2019-07-21 03:22:13', '2019-07-21 09:22:13', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(375, 1, 62, 1, 'hidden', 'gjghjh', 0, '2019-07-21 03:22:17', '2019-07-21 09:22:17', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(376, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:18', '2019-07-21 09:22:18', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(377, 1, 62, 1, 'hidden', 'ghjghj', 0, '2019-07-21 03:22:20', '2019-07-21 09:22:20', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(378, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:21', '2019-07-21 09:22:21', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(379, 1, 62, 1, 'hidden', 'ghjghj', 0, '2019-07-21 03:22:24', '2019-07-21 09:22:24', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(380, 1, 62, 1, 'hidden', 'ghjghj', 0, '2019-07-21 03:22:25', '2019-07-21 09:22:25', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(381, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:28', '2019-07-21 09:22:28', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(382, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:30', '2019-07-21 09:22:30', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(384, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:33', '2019-07-21 09:22:33', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(385, 1, 62, 1, 'hidden', 'ghjghjg', 0, '2019-07-21 03:22:37', '2019-07-21 09:22:37', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(386, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:39', '2019-07-21 09:22:39', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(387, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:41', '2019-07-21 09:22:41', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(388, 1, 62, 1, 'hidden', 'ghjghj', 0, '2019-07-21 03:22:43', '2019-07-21 09:22:43', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(389, 1, 62, 1, 'hidden', 'ghjghj', 0, '2019-07-21 03:22:44', '2019-07-21 09:22:44', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(390, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:46', '2019-07-21 09:22:46', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(391, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:48', '2019-07-21 09:22:48', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(392, 1, 62, 1, 'hidden', 'ghjgh', 0, '2019-07-21 03:22:49', '2019-07-21 09:22:49', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(393, 1, 62, 1, 'hidden', 'ghjghj', 0, '2019-07-21 03:22:51', '2019-07-21 09:22:51', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(394, 1, 62, 1, 'hidden', 'ghjghj', 0, '2019-07-21 03:22:53', '2019-07-21 09:22:53', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(396, 1, 62, 1, 'hidden', 'ghjghj', 0, '2019-07-21 03:22:56', '2019-07-21 09:22:56', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(397, 1, 62, 1, 'hidden', 'ghjghj', 0, '2019-07-21 03:22:59', '2019-07-21 09:22:59', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(398, 1, 62, 1, 'hidden', 'fghfgh', 0, '2019-07-21 03:23:02', '2019-07-21 09:23:02', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(400, 1, 62, 1, 'hidden', 'fghfgh', 0, '2019-07-21 03:23:06', '2019-07-21 09:23:06', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(401, 1, 62, 1, 'hidden', 'fghfgh', 0, '2019-07-21 03:23:06', '2019-07-21 09:23:06', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(402, 1, 62, 1, 'hidden', 'fghfgh', 0, '2019-07-21 03:23:07', '2019-07-21 09:23:07', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(403, 1, 62, 1, 'hidden', 'fghfgh', 0, '2019-07-21 05:18:22', '2019-07-21 09:23:09', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(404, 1, 62, 1, 'hidden', 'fghgfhgh', 0, '2019-07-21 03:23:11', '2019-07-21 09:23:11', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(405, 1, 62, 1, 'hidden', 'fghfghfg', 0, '2019-07-21 03:23:13', '2019-07-21 09:23:13', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(406, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:23:46', '2019-07-21 09:23:46', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(407, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:23:48', '2019-07-21 09:23:48', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(408, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:23:50', '2019-07-21 09:23:50', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(409, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:23:52', '2019-07-21 09:23:52', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(410, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:23:54', '2019-07-21 09:23:54', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(411, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:23:57', '2019-07-21 09:23:57', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(412, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:23:59', '2019-07-21 09:23:59', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(413, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:01', '2019-07-21 09:24:01', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(414, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:03', '2019-07-21 09:24:03', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(415, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:05', '2019-07-21 09:24:05', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(416, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:07', '2019-07-21 09:24:07', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(417, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:10', '2019-07-21 09:24:10', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(418, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:12', '2019-07-21 09:24:12', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(419, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:14', '2019-07-21 09:24:14', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(420, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:16', '2019-07-21 09:24:16', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(421, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:18', '2019-07-21 09:24:18', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(422, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:20', '2019-07-21 09:24:20', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(423, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:22', '2019-07-21 09:24:22', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(424, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:24', '2019-07-21 09:24:24', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(425, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:26', '2019-07-21 09:24:26', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(426, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:28', '2019-07-21 09:24:28', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(427, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:30', '2019-07-21 09:24:30', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(428, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:33', '2019-07-21 09:24:33', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(429, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:24:35', '2019-07-21 09:24:35', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(430, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:20', '2019-07-21 09:25:20', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(431, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:23', '2019-07-21 09:25:23', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(432, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:25', '2019-07-21 09:25:25', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(433, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:27', '2019-07-21 09:25:27', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(434, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:29', '2019-07-21 09:25:29', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(435, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:32', '2019-07-21 09:25:32', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(436, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:34', '2019-07-21 09:25:34', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(437, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:36', '2019-07-21 09:25:36', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(438, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:39', '2019-07-21 09:25:39', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(439, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:41', '2019-07-21 09:25:41', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(440, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2021-10-18 14:24:33', '2019-07-21 09:25:42', 0, 0, 1, '0000-00-00 00:00:00', '2021-10-18 04:24:33', 1, 1),
(441, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:44', '2019-07-21 09:25:44', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(442, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:46', '2019-07-21 09:25:46', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(443, 1, 62, 1, 'hidden', 'fgdfgdf', 0, '2019-07-21 03:25:48', '2019-07-21 09:25:48', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(450, 1, 62, 1, 'hidden', 'gjhjh g fghfg', 0, '2019-07-25 03:21:04', '2019-07-21 09:41:45', 0, 0, 1, '0000-00-00 00:00:00', '2019-07-25 09:21:04', 1, 1),
(453, 1, 62, 1, 'hidden', 'hgfhf', 450, '2019-07-25 03:26:22', '2019-07-25 09:26:22', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(454, 1, 62, 1, 'hidden', 'yfgyhgf', 0, '2019-07-25 03:26:28', '2019-07-25 09:26:28', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(455, 1, 62, 1, 'hidden', 'fghfghf', 0, '2019-07-25 03:26:37', '2019-07-25 09:26:37', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(456, 1, 62, 1, 'hidden', 'ghfghf', 0, '2019-07-25 03:47:18', '2019-07-25 09:47:18', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(457, 1, 62, 1, 'hidden', 'dhfgh', 456, '2019-07-25 03:47:21', '2019-07-25 09:47:21', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(458, 1, 62, 1, 'hidden', 'fghfg', 456, '2019-07-25 03:47:25', '2019-07-25 09:47:25', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(459, 1, 62, 1, 'hidden', 'ok', 456, '2021-10-18 04:05:10', '2021-10-18 10:05:10', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(460, 1, 62, 1, 'hidden', 'ok1', 454, '2021-10-18 04:06:12', '2021-10-18 10:05:45', 0, 0, 1, '0000-00-00 00:00:00', '2021-10-18 10:06:12', 1, 1),
(463, 1, 62, 1, 'hidden', 'test comment', 0, '2021-10-18 05:58:43', '2021-10-18 11:58:43', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(464, 1, 62, 1, 'hidden', '55', 463, '2021-10-18 13:23:23', '2021-10-18 07:23:23', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(465, 1, 62, 1, 'hidden', '555', 463, '2021-10-18 13:23:38', '2021-10-18 07:23:38', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_addresses`
--

CREATE TABLE `company_addresses` (
  `addressID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `areaID` int(11) NOT NULL,
  `towerName` varchar(100) NOT NULL,
  `addressDetails` varchar(250) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `DivisionID` int(11) NOT NULL,
  `DistrictID` int(11) NOT NULL,
  `entryUserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_addresses`
--

INSERT INTO `company_addresses` (`addressID`, `companyID`, `areaID`, `towerName`, `addressDetails`, `CountryID`, `DivisionID`, `DistrictID`, `entryUserID`) VALUES
(1, 1, 2, 'sd12', '1212', 21, 3, 1, 20),
(3, 3, 2, 'sd12', '1212', 21, 3, 1, 20),
(4, 4, 2, 'Test', 'Test', 21, 3, 1, 20),
(5, 5, 1, 'Company67', 'Company67', 21, 3, 1, 20),
(6, 6, 1, 'New', 'Banani', 21, 3, 1, 20),
(7, 6, 1, 'New', 'Banani', 21, 3, 1, 20),
(8, 7, 1, 'New', 'New', 21, 3, 1, 20),
(9, 8, 1, 'Ajhar Building', 'Banani', 21, 3, 1, 20),
(10, 8, 1, 'Ajhar Building', 'Banani', 21, 3, 1, 20),
(11, 9, 1, '12', 'Patuakhali, Bangladesh', 21, 3, 1, 20),
(12, 10, 1, 'Test', '11212', 21, 3, 1, 16),
(13, 11, 1, 'Hanoi tower', 'Banani', 21, 3, 1, 16),
(14, 11, 1, 'Hanoi tower', 'Banani', 21, 3, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(65) DEFAULT NULL,
  `message` text,
  `status` tinyint(1) DEFAULT '1',
  `message_date` varchar(16) DEFAULT NULL,
  `message_time` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `message`, `status`, `message_date`, `message_time`) VALUES
(3, 'Nahid', 'nahid940@gmail.com', '01700000000', 'test', 1, NULL, NULL),
(4, 'Nahid', 'nahid940@gmail.com', '01700000000', 'test', 1, NULL, NULL),
(5, 'head', 'ufc210livestream@gmail.com', '456346345611', 'll', 1, NULL, NULL),
(7, 'faisal', 'nahid940@gmail.com', '23452345', '4', 1, NULL, NULL),
(8, 'faisal', 'nahid940@gmail.com', '23452345', '4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `SL` int(11) NOT NULL,
  `couponTypeID` int(11) NOT NULL,
  `couponValue` int(11) NOT NULL DEFAULT '0' COMMENT 'Qty/Amount/Product ID/Category ID   => Based on TypeID',
  `couponValue2` float DEFAULT NULL COMMENT 'Price of double checking',
  `couponCode` varchar(50) NOT NULL,
  `couponEntryDate` datetime NOT NULL,
  `couponExpireDate` date NOT NULL,
  `couponAmount` float NOT NULL,
  `totalAvailable` int(11) NOT NULL DEFAULT '0',
  `couponStatus` tinyint(4) NOT NULL DEFAULT '0',
  `entryUserID` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`SL`, `couponTypeID`, `couponValue`, `couponValue2`, `couponCode`, `couponEntryDate`, `couponExpireDate`, `couponAmount`, `totalAvailable`, `couponStatus`, `entryUserID`, `vendorID`, `storeID`) VALUES
(1, 2, 0, NULL, 'Ord', '2019-03-01 00:00:00', '2019-03-31', 10, 99, 1, 16, 45, 16),
(2, 1, 80000, NULL, 'Car', '2019-03-27 00:00:00', '2019-03-31', 100, 100, 1, 45, 45, 16),
(3, 3, 84, 0, 'cat', '2019-03-30 02:28:21', '2019-03-31', 10, 100, 1, 45, 45, 16),
(4, 5, 5, 1000, 'tot', '2019-03-30 00:00:00', '2019-04-30', 200, 199, 1, 45, 45, 16),
(5, 6, 3, 1000, 'ship', '2019-03-30 00:00:00', '2019-03-31', 50, 100, 1, 45, 45, 16),
(7, 5, 5, 1000, 'pohelaBoishakh', '2019-03-30 02:27:25', '2019-04-29', 300, 100, 1, 62, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_types`
--

CREATE TABLE `coupon_types` (
  `couponTypeID` int(11) NOT NULL,
  `couponTypeName` varchar(50) NOT NULL,
  `couponTypeMaxAmount` float NOT NULL,
  `couponTypeStatus` tinyint(4) NOT NULL DEFAULT '1',
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_types`
--

INSERT INTO `coupon_types` (`couponTypeID`, `couponTypeName`, `couponTypeMaxAmount`, `couponTypeStatus`, `vendorID`, `storeID`) VALUES
(1, 'Fixed Cart Discount', 0, 1, 45, 16),
(2, 'Percentage Discount on Order', 0, 1, 45, 16),
(3, 'Fixed Category Product Discount', 0, 1, 45, 16),
(4, 'Fixed Category Product Discount', 0, 1, 45, 16),
(5, 'Total Item Buy Discount', 0, 1, 45, 16),
(6, 'Shipping Cost Discount', 0, 1, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `customer_fname` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `customer_lname` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `typeID` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `entry_userID` int(11) UNSIGNED DEFAULT NULL,
  `is_deleted` int(2) DEFAULT '1',
  `create_date` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `customer_fname`, `customer_lname`, `gender`, `typeID`, `address`, `email`, `phone`, `age`, `entry_userID`, `is_deleted`, `create_date`, `vendorID`, `storeID`) VALUES
(100, 'New Nahid', '', NULL, 2, NULL, '', '01874680376', NULL, 45, 1, '2019-02-11', 45, NULL),
(101, 'Fahim', '', NULL, 2, NULL, '', '0154515415254', NULL, 45, 1, '2019-02-16', 45, NULL),
(102, 'Maa Screw', '', NULL, 2, NULL, '', '015454548542', NULL, 45, 1, '2019-02-17', 45, NULL),
(103, 'Supplier 1', '', NULL, 2, NULL, '', '4563463456', NULL, 45, 1, '2019-02-17', 45, NULL),
(104, 'Test', '', NULL, 2, NULL, '', '4253452345', NULL, 45, 1, '2019-02-17', 45, NULL),
(105, 'Pannu', 'vhai', NULL, 2, NULL, '', '1212233333', NULL, 45, 1, '2019-02-17', 45, NULL),
(106, 'Mr', 'alam', 'm', 2, NULL, '', '13344666', NULL, 52, 1, '2019-02-24', 45, NULL),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-28', 0, NULL),
(126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-03-06', 0, NULL),
(127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-03-06', 0, NULL),
(128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-03-06', 0, NULL),
(129, 'ARB', 'Corpotation', 'm', 2, NULL, '', '0154515415254', NULL, 1, 1, '2019-03-09', 45, NULL),
(130, 'Supplier 1', '', NULL, 1, NULL, '', '567467456', NULL, 1, 1, '2019-03-12', 45, NULL),
(131, 'Fahim', 'alam', NULL, 1, NULL, 'abdur6381@gmail.com', '0154515415254', NULL, 1, 1, '2019-03-12', 45, NULL),
(132, 'rashed', 'screw', NULL, 2, NULL, 'abdur6381@gmail.com', '0154515415254', NULL, 1, 1, '2019-03-12', 45, NULL),
(133, 'Fahim', 'alam', 'm', 1, NULL, 'rashedscrewcenter', '0154515415254', NULL, 1, 1, '2019-03-12', 45, NULL),
(134, 'New Customer', '', NULL, 2, NULL, '', '87578', NULL, 1, 1, '2019-03-13', 45, 31),
(135, 'Mr x', '', NULL, 1, NULL, '', '45757457', NULL, 1, 1, '2019-03-13', 45, 31),
(136, 'Mr', 'alam', 'm', 1, NULL, 'rashedscrewcenter01@gmail.com', '0154515415254', NULL, 1, 1, '2019-03-13', 45, 31),
(137, 'Omuk dokan', '', NULL, 1, NULL, '', '13513531', NULL, 1, 1, '2019-03-18', 45, 32),
(138, 'Tomuk', '', NULL, 2, NULL, '', '23452345', NULL, 1, 1, '2019-03-18', 45, 32),
(139, 'Customer', '', NULL, 2, NULL, '', '67896789', NULL, 1, 1, '2019-03-19', 45, 16),
(140, 'Supplier', '', NULL, 1, NULL, '', '8796978', NULL, 1, 1, '2019-03-21', 45, 16),
(141, 'Maa', 'Screw', 'f', 1, NULL, 'abdur6381@gmail.com', '100100100100', NULL, 1, 1, '2019-03-24', 45, 31),
(142, 'EP', 'EP', 'm', 2, NULL, 'abdur6381@gmail.com', '100100100100', NULL, 1, 1, '2019-03-24', 45, 31);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `customer_addressID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `permanent_address` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `present_address` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(18) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(28) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zip` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shop_location` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_userID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`customer_addressID`, `customerID`, `permanent_address`, `present_address`, `city`, `country`, `zip`, `shop_location`, `entry_userID`) VALUES
(1, 11, 'Dhaka', 'Dhaka', NULL, NULL, NULL, NULL, 1),
(2, 12, 'Dhaka', '', NULL, NULL, NULL, NULL, 1),
(3, 13, 'Dhaka', 'Dhaka', NULL, NULL, NULL, NULL, 1),
(4, 14, 'Dhaka', 'Dhaka', NULL, NULL, NULL, NULL, 1),
(5, 15, 'Dhaka', 'Dhaka', NULL, NULL, NULL, NULL, 1),
(6, 16, '', 'dfghhgsdfgsdfg', NULL, NULL, NULL, NULL, 1),
(7, 17, '', 'dfghhgsdfgsdfg', NULL, NULL, NULL, NULL, 1),
(8, 18, NULL, 'dfghhgsdfgsdfg', NULL, NULL, NULL, NULL, 1),
(9, 19, NULL, 'dfghhgsdfgsdfg', NULL, NULL, NULL, NULL, 1),
(10, 20, NULL, 'dfghhgsdfgsdfg', NULL, NULL, NULL, NULL, 1),
(11, 21, NULL, '', NULL, NULL, NULL, NULL, 42),
(12, 22, NULL, 'dfghhgsdfgsdfg', NULL, NULL, NULL, NULL, 42),
(13, 23, NULL, 'Dhaka', NULL, NULL, NULL, NULL, 42),
(14, 24, NULL, '', NULL, NULL, NULL, NULL, 42),
(15, 25, NULL, 'dfghhgsdfgsdfg', NULL, NULL, NULL, NULL, 42),
(16, 26, '', '', NULL, NULL, NULL, NULL, 46),
(17, 27, '', '', NULL, NULL, NULL, NULL, 46),
(18, 28, '', '', NULL, NULL, NULL, NULL, 46),
(19, 29, NULL, '', NULL, NULL, NULL, NULL, 45),
(20, 30, NULL, '', NULL, NULL, NULL, NULL, 46),
(21, 31, NULL, '', NULL, NULL, NULL, NULL, 46),
(22, 32, NULL, '', NULL, NULL, NULL, NULL, 46),
(23, 33, NULL, '', NULL, NULL, NULL, NULL, 45),
(24, 34, NULL, '', NULL, NULL, NULL, NULL, 45),
(25, 35, NULL, '', NULL, NULL, NULL, NULL, 45),
(26, 36, NULL, '', NULL, NULL, NULL, NULL, 45),
(27, 37, NULL, '', NULL, NULL, NULL, NULL, 45),
(28, 38, NULL, '', NULL, NULL, NULL, NULL, 45),
(29, 39, NULL, '', NULL, NULL, NULL, NULL, 45),
(30, 40, NULL, '', NULL, NULL, NULL, NULL, 45),
(31, 41, NULL, '', NULL, NULL, NULL, NULL, 45),
(32, 42, NULL, '', NULL, NULL, NULL, NULL, 45),
(33, 43, NULL, '', NULL, NULL, NULL, NULL, 45),
(34, 44, NULL, '', NULL, NULL, NULL, NULL, 45),
(35, 45, NULL, '', NULL, NULL, NULL, NULL, 45),
(36, 46, NULL, '', NULL, NULL, NULL, NULL, 45),
(37, 47, NULL, '', NULL, NULL, NULL, NULL, 45),
(38, 48, NULL, '', NULL, NULL, NULL, NULL, 47),
(39, 49, NULL, '', NULL, NULL, NULL, NULL, 47),
(40, 50, NULL, '', NULL, NULL, NULL, NULL, 45),
(41, 51, NULL, '', NULL, NULL, NULL, NULL, 45),
(42, 52, NULL, '', NULL, NULL, NULL, NULL, 45),
(43, 53, NULL, '', NULL, NULL, NULL, NULL, 45),
(44, 54, NULL, '', NULL, NULL, NULL, NULL, 45),
(45, 55, NULL, '', NULL, NULL, NULL, NULL, 45),
(46, 56, NULL, '', NULL, NULL, NULL, NULL, 45),
(47, 57, NULL, '', NULL, NULL, NULL, NULL, 45),
(48, 58, NULL, '', NULL, NULL, NULL, NULL, 45),
(49, 59, NULL, '', NULL, NULL, NULL, NULL, 45),
(50, 60, NULL, '', NULL, NULL, NULL, NULL, 45),
(51, 61, NULL, '', NULL, NULL, NULL, NULL, 45),
(52, 62, NULL, '', NULL, NULL, NULL, NULL, 45),
(53, 63, NULL, '', NULL, NULL, NULL, NULL, 45),
(54, 64, NULL, '', NULL, NULL, NULL, NULL, 45),
(55, 65, NULL, 'dfghhgsdfgsdfg', NULL, NULL, NULL, NULL, 45),
(56, 66, NULL, '', NULL, NULL, NULL, NULL, 45),
(57, 67, NULL, '', NULL, NULL, NULL, NULL, 45),
(58, 68, NULL, 'hgdfgfh', NULL, NULL, NULL, NULL, 45),
(59, 69, NULL, NULL, NULL, NULL, NULL, NULL, 45),
(60, 70, NULL, 'dfghdfgdfh', NULL, NULL, NULL, NULL, 45),
(61, 71, 'Dhaka', 'Dhaka ', NULL, NULL, NULL, NULL, 45),
(62, 72, NULL, '', NULL, NULL, NULL, NULL, 45),
(63, 73, NULL, '', NULL, NULL, NULL, NULL, 45),
(64, 74, NULL, '', NULL, NULL, NULL, NULL, 45),
(65, 75, NULL, '', NULL, NULL, NULL, NULL, 45),
(66, 76, NULL, '', NULL, NULL, NULL, NULL, 45),
(67, 77, NULL, '', NULL, NULL, NULL, NULL, 45),
(68, 78, NULL, '', NULL, NULL, NULL, NULL, 45),
(69, 79, NULL, '', NULL, NULL, NULL, NULL, 45),
(70, 80, NULL, '', NULL, NULL, NULL, NULL, 45),
(71, 81, NULL, '', NULL, NULL, NULL, NULL, 45),
(72, 82, NULL, '', NULL, NULL, NULL, NULL, 45),
(73, 83, NULL, '', NULL, NULL, NULL, NULL, 45),
(74, 84, NULL, '', NULL, NULL, NULL, NULL, 45),
(75, 85, NULL, '', NULL, NULL, NULL, NULL, 45),
(76, 86, NULL, '', NULL, NULL, NULL, NULL, 45),
(77, 87, NULL, '', NULL, NULL, NULL, NULL, 45),
(78, 88, NULL, '', NULL, NULL, NULL, NULL, 45),
(79, 89, NULL, '', NULL, NULL, NULL, NULL, 45),
(80, 90, NULL, '', NULL, NULL, NULL, NULL, 45),
(81, 91, NULL, '', NULL, NULL, NULL, NULL, 45),
(82, 92, NULL, '', NULL, NULL, NULL, NULL, 46),
(83, 93, NULL, '', NULL, NULL, NULL, NULL, 46),
(84, 94, NULL, '', NULL, NULL, NULL, NULL, 45),
(85, 95, NULL, '', NULL, NULL, NULL, NULL, 45),
(86, 96, NULL, '', NULL, NULL, NULL, NULL, 45),
(87, 97, NULL, '', NULL, NULL, NULL, NULL, 45),
(88, 98, '', '', NULL, NULL, NULL, NULL, 45),
(89, 99, NULL, '', NULL, NULL, NULL, NULL, 45),
(90, 100, NULL, '', NULL, NULL, NULL, NULL, 45),
(91, 101, NULL, '', NULL, NULL, NULL, NULL, 45),
(92, 102, NULL, '', NULL, NULL, NULL, NULL, 45),
(93, 103, NULL, '', NULL, NULL, NULL, NULL, 45),
(94, 104, NULL, '', NULL, NULL, NULL, NULL, 45),
(95, 105, NULL, '', NULL, NULL, NULL, NULL, 45),
(96, 106, NULL, 'xvvvvv', NULL, NULL, NULL, NULL, 52),
(97, 107, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(98, 108, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(99, 109, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(100, 110, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(101, 111, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(102, 112, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(103, 113, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(104, 114, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(105, 115, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(106, 116, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(107, 117, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(108, 118, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(109, 119, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(110, 120, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(111, 121, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(112, 122, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(113, 123, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(114, 124, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(115, 125, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(116, 126, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, 127, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(118, 128, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(119, 129, NULL, 'bsdmsfffmfjff', NULL, NULL, NULL, NULL, 45),
(120, 130, NULL, '', NULL, NULL, NULL, NULL, 45),
(121, 131, NULL, '', NULL, NULL, NULL, NULL, 61),
(122, 132, NULL, '', NULL, NULL, NULL, NULL, 61),
(123, 133, NULL, 'bsdmsfffmfjff', NULL, NULL, NULL, NULL, 61),
(124, 134, NULL, '', NULL, NULL, NULL, NULL, 61),
(125, 135, NULL, '', NULL, NULL, NULL, NULL, 61),
(126, 136, NULL, 'xvvvvv', NULL, NULL, NULL, NULL, 61),
(127, 137, NULL, '', NULL, NULL, NULL, NULL, 59),
(128, 138, NULL, '', NULL, NULL, NULL, NULL, 59),
(129, 139, NULL, '', NULL, NULL, NULL, NULL, 45),
(130, 140, NULL, '', NULL, NULL, NULL, NULL, 45),
(131, 141, NULL, 'bvgfrrhnn', NULL, NULL, NULL, NULL, 61),
(132, 142, NULL, 'bvgfrrhnn', NULL, NULL, NULL, NULL, 61);

-- --------------------------------------------------------

--
-- Table structure for table `customer_docs`
--

CREATE TABLE `customer_docs` (
  `customer_doc_ID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `files` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `customer_typeID` int(11) NOT NULL,
  `customer_type_name` varchar(8) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`customer_typeID`, `customer_type_name`) VALUES
(1, 'supplier'),
(2, 'customer'),
(3, 'expense ');

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendance`
--

CREATE TABLE `daily_attendance` (
  `ID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `checkInTime` varchar(100) DEFAULT NULL,
  `checkOutTime` varchar(100) DEFAULT NULL,
  `launchOutTime` varchar(100) DEFAULT NULL,
  `launchInTime` varchar(100) DEFAULT NULL,
  `date` varchar(100) NOT NULL,
  `companyID` int(11) NOT NULL DEFAULT '1',
  `branchID` int(11) NOT NULL DEFAULT '1',
  `applicationID` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_attendance`
--

INSERT INTO `daily_attendance` (`ID`, `employeeID`, `checkInTime`, `checkOutTime`, `launchOutTime`, `launchInTime`, `date`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 82, '2019-03-09 10:24:35', '2019-03-09 20:00:07', '2019-03-09 16:33:55', '2019-03-09 16:33:55', '2019-03-09', 1, 1, 1),
(2, 88, '2019-03-09 10:45:22', '2019-03-09 18:11:45', NULL, NULL, '2019-03-09', 1, 1, 1),
(3, 85, '2019-03-09 10:30:13', '2019-03-09 20:01:24', '2019-03-09 14:56:56', '2019-03-09 16:33:55', '2019-03-09', 1, 1, 1),
(4, 86, '2019-03-09 10:01:01', '2019-03-09 20:00:28', '2019-03-09 14:52:08', '2019-03-09 16:33:55', '2019-03-09', 1, 1, 1),
(5, 90, '2019-03-09 09:58:38', '2019-03-09 14:00:00', NULL, NULL, '2019-03-09', 1, 1, 1),
(6, 1, '2019-03-09 09:56:38', '2019-03-09 19:55:07', NULL, NULL, '2019-03-09', 1, 1, 1),
(7, 92, '2019-03-09 09:42:14', '2019-03-09 20:00:21', '2019-03-09 14:04:07', '2019-03-09 16:33:55', '2019-03-09', 1, 1, 1),
(8, 84, '2019-03-09 09:39:21', '2019-03-09 20:01:27', '2019-03-09 14:52:13', '2019-03-09 16:33:55', '2019-03-09', 1, 1, 1),
(9, 81, '2019-03-09 09:37:14', '2019-03-09 20:07:41', '2019-03-09 14:04:13', '2019-03-09 16:33:55', '2019-03-09', 1, 1, 1),
(10, 89, '2019-03-09 09:37:11', '2019-03-09 19:00:08', NULL, NULL, '2019-03-09', 1, 1, 1),
(11, 73, '2019-03-07 10:01:20', '2019-03-07 20:01:14', '2019-03-07 14:18:23', '2019-03-09 16:33:55', '2019-03-07', 1, 1, 1),
(12, 86, '2019-03-07 09:58:04', '2019-03-07 20:00:42', '2019-03-07 15:42:47', '2019-03-09 16:33:55', '2019-03-07', 1, 1, 1),
(13, 84, '2019-03-07 09:50:11', '2019-03-07 20:00:27', '2019-03-07 14:48:29', '2019-03-09 16:33:55', '2019-03-07', 1, 1, 1),
(14, 92, '2019-03-07 09:34:50', '2019-03-07 20:00:23', '2019-03-07 14:20:36', '2019-03-09 16:33:55', '2019-03-07', 1, 1, 1),
(15, 88, '2019-03-07 11:07:19', '2019-03-07 20:00:09', '2019-03-07 14:22:33', '2019-03-09 16:33:55', '2019-03-07', 1, 1, 1),
(16, 81, '2019-03-07 09:26:29', '2019-03-07 19:56:49', '2019-03-07 14:16:35', '2019-03-09 16:33:55', '2019-03-07', 1, 1, 1),
(17, 1, '2019-03-07 09:54:42', '2019-03-07 19:54:07', NULL, NULL, '2019-03-07', 1, 1, 1),
(18, 89, '2019-03-07 09:26:48', '2019-03-07 18:57:21', NULL, NULL, '2019-03-07', 1, 1, 1),
(19, 82, '2019-03-07 11:43:09', '2019-03-07 14:00:00', '2019-03-07 14:22:24', '2019-03-09 16:33:55', '2019-03-07', 1, 1, 1),
(20, 90, '2019-03-07 10:02:11', NULL, NULL, NULL, '2019-03-07', 1, 1, 1),
(21, 86, '2019-03-06 10:30:26', '2019-03-06 19:57:32', '2019-03-06 16:06:12', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(22, 88, '2019-03-06 10:51:21', '2019-03-06 19:55:37', '2019-03-06 14:23:32', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(23, 81, '2019-03-06 09:30:37', '2019-03-06 19:53:28', '2019-03-06 15:42:50', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(24, 84, '2019-03-06 09:48:49', '2019-03-06 19:53:06', '2019-03-06 15:57:03', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(25, 73, '2019-03-06 10:01:06', '2019-03-06 19:52:57', '2019-03-06 15:57:25', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(26, 90, '2019-03-06 09:47:02', '2019-03-06 19:52:24', NULL, NULL, '2019-03-06', 1, 1, 1),
(27, 1, '2019-03-06 09:54:43', '2019-03-06 19:52:11', '2019-03-06 14:24:51', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(28, 89, '2019-03-06 09:32:04', '2019-03-06 19:00:04', NULL, NULL, '2019-03-06', 1, 1, 1),
(29, 82, '2019-03-06 10:51:16', NULL, '2019-03-06 16:00:48', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(30, 92, '2019-03-06 09:43:58', NULL, '2019-03-06 14:30:50', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(31, 3, '2019-03-06 10:01:11', '2019-03-06 10:01:11', '2019-03-06 10:01:11', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(32, 88, '2019-03-05 10:32:16', '2019-03-05 20:03:54', NULL, NULL, '2019-03-05', 1, 1, 1),
(33, 81, '2019-03-05 09:45:02', '2019-03-05 20:03:03', NULL, NULL, '2019-03-05', 1, 1, 1),
(34, 86, '2019-03-05 10:00:07', '2019-03-05 20:02:43', '2019-03-05 14:58:39', '2019-03-09 16:33:55', '2019-03-05', 1, 1, 1),
(35, 84, '2019-03-05 10:03:20', '2019-03-05 20:01:36', '2019-03-05 15:50:56', '2019-03-09 16:33:55', '2019-03-05', 1, 1, 1),
(36, 73, '2019-03-05 10:01:32', '2019-03-05 20:00:51', '2019-03-05 16:44:21', '2019-03-09 16:33:55', '2019-03-05', 1, 1, 1),
(37, 92, '2019-03-05 09:49:45', '2019-03-05 20:00:08', '2019-03-05 14:06:32', '2019-03-09 16:33:55', '2019-03-05', 1, 1, 1),
(38, 1, '2019-03-05 09:56:00', '2019-03-05 19:57:26', '2019-03-05 13:56:42', '2019-03-09 16:33:55', '2019-03-05', 1, 1, 1),
(39, 89, '2019-03-05 09:44:57', '2019-03-05 19:20:57', NULL, NULL, '2019-03-05', 1, 1, 1),
(40, 82, '2019-03-05 10:20:35', '2019-03-05 17:23:30', '2019-03-05 14:18:22', '2019-03-09 16:33:55', '2019-03-05', 1, 1, 1),
(41, 85, '2019-03-05 10:09:53', NULL, '2019-03-05 15:51:39', '2019-03-09 16:33:55', '2019-03-05', 1, 1, 1),
(42, 90, '2019-03-05 09:49:37', NULL, NULL, NULL, '2019-03-05', 1, 1, 1),
(43, 73, '2019-03-04 09:58:42', '2019-03-04 19:46:51', '2019-03-04 14:26:06', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(44, 86, '2019-03-04 10:01:05', '2019-03-04 19:46:35', '2019-03-04 15:03:04', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(45, 85, '2019-03-04 10:18:19', '2019-03-04 19:46:13', '2019-03-04 15:45:32', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(46, 92, '2019-03-04 09:49:16', '2019-03-04 19:45:43', '2019-03-04 14:01:00', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(47, 84, '2019-03-04 10:00:23', '2019-03-04 19:45:29', '2019-03-04 14:39:49', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(48, 88, '2019-03-04 10:43:22', '2019-03-04 19:45:21', NULL, NULL, '2019-03-04', 1, 1, 1),
(49, 81, '2019-03-04 08:49:49', '2019-03-04 19:45:09', '2019-03-04 14:48:21', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(50, 1, '2019-03-04 09:56:44', '2019-03-04 19:45:03', '2019-03-04 15:31:34', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(51, 82, '2019-03-04 10:29:10', '2019-03-04 17:05:36', '2019-03-04 14:48:31', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(52, 90, '2019-03-04 10:00:18', NULL, NULL, NULL, '2019-03-04', 1, 1, 1),
(53, 3, '2019-03-04 09:58:48', '2019-03-04 09:58:48', '2019-03-04 09:58:48', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(54, 86, '2019-03-03 09:59:21', '2019-03-03 19:45:54', '2019-03-03 14:46:06', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(55, 84, '2019-03-03 10:06:49', '2019-03-03 19:45:21', '2019-03-03 15:17:23', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(56, 85, '2019-03-03 10:10:51', '2019-03-03 19:45:17', '2019-03-03 14:41:25', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(57, 88, '2019-03-03 12:27:39', '2019-03-03 19:45:04', NULL, NULL, '2019-03-03', 1, 1, 1),
(58, 81, '2019-03-03 09:39:39', '2019-03-03 19:44:11', '2019-03-03 14:47:15', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(59, 92, '2019-03-03 09:43:05', '2019-03-03 19:41:30', '2019-03-03 14:06:45', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(60, 1, '2019-03-03 09:56:26', '2019-03-03 19:41:16', '2019-03-03 15:08:38', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(61, 73, '2019-03-03 10:09:39', '2019-03-03 19:40:58', '2019-03-03 16:02:25', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(62, 89, '2019-03-03 09:39:32', '2019-03-03 19:07:46', NULL, NULL, '2019-03-03', 1, 1, 1),
(63, 82, '2019-03-03 10:14:05', NULL, '2019-03-03 14:06:22', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(64, 91, '2019-03-03 10:55:44', NULL, NULL, NULL, '2019-03-03', 1, 1, 1),
(65, 3, '2019-03-03 10:09:45', '2019-03-03 10:09:45', '2019-03-03 10:09:45', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(66, 92, '2019-03-02 09:44:12', '2019-03-02 20:07:06', '2019-03-02 14:00:52', '2019-03-09 16:33:55', '2019-03-02', 1, 1, 1),
(67, 85, '2019-03-02 10:05:05', '2019-03-02 20:05:32', '2019-03-02 15:04:21', '2019-03-09 16:33:55', '2019-03-02', 1, 1, 1),
(68, 73, '2019-03-02 10:00:35', '2019-03-02 20:05:18', '2019-03-02 14:50:42', '2019-03-09 16:33:55', '2019-03-02', 1, 1, 1),
(69, 81, '2019-03-02 09:43:29', '2019-03-02 20:05:04', '2019-03-02 14:10:38', '2019-03-09 16:33:55', '2019-03-02', 1, 1, 1),
(70, 84, '2019-03-02 09:43:47', '2019-03-02 20:04:36', '2019-03-02 14:37:04', '2019-03-09 16:33:55', '2019-03-02', 1, 1, 1),
(71, 82, '2019-03-02 10:12:51', '2019-03-02 19:18:40', NULL, NULL, '2019-03-02', 1, 1, 1),
(72, 89, '2019-03-02 09:43:25', '2019-03-02 18:41:05', NULL, NULL, '2019-03-02', 1, 1, 1),
(73, 88, '2019-03-02 10:18:19', NULL, '2019-03-02 16:42:27', '2019-03-09 16:33:55', '2019-03-02', 1, 1, 1),
(74, 3, '2019-03-02 10:00:43', '2019-03-02 10:00:43', '2019-03-02 10:00:43', '2019-03-09 16:33:55', '2019-03-02', 1, 1, 1),
(75, 73, '2019-02-28 10:00:46', '2019-02-28 19:44:47', '2019-02-28 16:08:02', '2019-03-09 16:33:55', '2019-02-28', 1, 1, 1),
(76, 84, '2019-02-28 09:59:33', '2019-02-28 19:42:17', '2019-02-28 14:50:07', '2019-03-09 16:33:55', '2019-02-28', 1, 1, 1),
(77, 86, '2019-02-28 09:58:22', '2019-02-28 19:42:06', '2019-02-28 14:51:21', '2019-03-09 16:33:55', '2019-02-28', 1, 1, 1),
(78, 92, '2019-02-28 09:58:35', '2019-02-28 19:41:49', '2019-02-28 14:06:18', '2019-03-09 16:33:55', '2019-02-28', 1, 1, 1),
(79, 85, '2019-02-28 10:12:37', '2019-02-28 19:41:16', '2019-02-28 15:10:12', '2019-03-09 16:33:55', '2019-02-28', 1, 1, 1),
(80, 88, '2019-02-28 10:40:26', '2019-02-28 19:40:54', NULL, NULL, '2019-02-28', 1, 1, 1),
(81, 81, '2019-02-28 09:57:51', '2019-02-28 19:40:51', '2019-02-28 14:26:08', '2019-03-09 16:33:55', '2019-02-28', 1, 1, 1),
(82, 89, '2019-02-28 09:57:47', '2019-02-28 18:57:37', '2019-02-28 14:51:53', '2019-03-09 16:33:55', '2019-02-28', 1, 1, 1),
(83, 82, '2019-02-28 11:19:56', NULL, '2019-02-28 14:26:14', '2019-03-09 16:33:55', '2019-02-28', 1, 1, 1),
(84, 91, '2019-02-28 10:50:50', NULL, NULL, NULL, '2019-02-28', 1, 1, 1),
(85, 73, '2019-02-27 10:04:29', '2019-02-27 19:27:20', NULL, NULL, '2019-02-27', 1, 1, 1),
(86, 85, '2019-02-27 10:15:20', '2019-02-27 19:27:06', '2019-02-27 15:03:15', '2019-03-09 16:33:55', '2019-02-27', 1, 1, 1),
(87, 92, '2019-02-27 09:53:34', '2019-02-27 19:27:01', '2019-02-27 14:02:04', '2019-03-09 16:33:55', '2019-02-27', 1, 1, 1),
(88, 81, '2019-02-27 09:36:09', '2019-02-27 19:26:57', '2019-02-27 14:16:08', '2019-03-09 16:33:55', '2019-02-27', 1, 1, 1),
(89, 84, '2019-02-27 09:55:18', '2019-02-27 19:26:46', '2019-02-27 14:52:35', '2019-03-09 16:33:55', '2019-02-27', 1, 1, 1),
(90, 82, '2019-02-27 11:07:49', '2019-02-27 19:19:06', '2019-02-27 15:01:39', '2019-03-09 16:33:55', '2019-02-27', 1, 1, 1),
(91, 89, '2019-02-27 10:08:40', '2019-02-27 18:53:04', '2019-02-27 15:12:36', '2019-03-09 16:33:55', '2019-02-27', 1, 1, 1),
(92, 88, '2019-02-27 10:39:52', NULL, '2019-02-27 15:12:52', '2019-03-09 16:33:55', '2019-02-27', 1, 1, 1),
(93, 86, '2019-02-27 10:02:30', NULL, '2019-02-27 14:58:15', '2019-03-09 16:33:55', '2019-02-27', 1, 1, 1),
(94, 91, '2019-02-27 10:46:39', NULL, NULL, NULL, '2019-02-27', 1, 1, 1),
(95, 87, '2019-02-27 10:11:26', NULL, NULL, NULL, '2019-02-27', 1, 1, 1),
(96, 3, '2019-02-27 10:04:36', '2019-02-27 10:04:36', '2019-02-27 10:04:36', '2019-03-09 16:33:55', '2019-02-27', 1, 1, 1),
(97, 86, '2019-02-26 10:09:49', '2019-02-26 19:39:19', '2019-02-26 14:54:35', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(98, 81, '2019-02-26 09:40:11', '2019-02-26 19:38:54', '2019-02-26 14:13:10', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(99, 85, '2019-02-26 09:55:17', '2019-02-26 19:38:50', '2019-02-26 15:02:36', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(100, 88, '2019-02-26 10:25:43', '2019-02-26 19:37:51', '2019-02-26 15:08:01', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(101, 87, '2019-02-26 09:59:32', '2019-02-26 19:37:32', '2019-02-26 14:38:42', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(102, 3, '2019-02-26 15:08:28', '2019-02-26 15:08:28', '2019-02-26 15:08:28', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(103, 73, '2019-02-26 10:00:48', '2019-02-26 19:37:18', '2019-02-26 15:08:11', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(104, 92, '2019-02-26 09:36:54', '2019-02-26 19:36:25', NULL, NULL, '2019-02-26', 1, 1, 1),
(105, 84, '2019-02-26 09:37:09', '2019-02-26 19:36:20', '2019-02-26 15:02:19', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(106, 82, '2019-02-26 11:10:23', '2019-02-26 19:34:56', '2019-02-26 14:13:02', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(107, 89, '2019-02-26 09:43:49', '2019-02-26 19:17:42', '2019-02-26 16:52:11', '2019-03-09 16:33:55', '2019-02-26', 1, 1, 1),
(108, 91, '2019-02-26 10:31:49', NULL, NULL, NULL, '2019-02-26', 1, 1, 1),
(109, 92, '2019-02-25 09:47:11', '2019-02-25 20:00:50', NULL, NULL, '2019-02-25', 1, 1, 1),
(110, 84, '2019-02-25 09:59:02', '2019-02-25 20:00:36', '2019-02-25 15:06:04', '2019-03-09 16:33:55', '2019-02-25', 1, 1, 1),
(111, 81, '2019-02-25 09:47:21', '2019-02-25 20:00:29', NULL, NULL, '2019-02-25', 1, 1, 1),
(112, 86, '2019-02-25 10:08:10', '2019-02-25 20:00:20', '2019-02-25 14:53:04', '2019-03-09 16:33:55', '2019-02-25', 1, 1, 1),
(113, 73, '2019-02-25 10:07:52', '2019-02-25 20:00:15', '2019-02-25 15:26:53', '2019-03-09 16:33:55', '2019-02-25', 1, 1, 1),
(114, 85, '2019-02-25 10:19:13', '2019-02-25 20:00:11', '2019-02-25 15:38:48', '2019-03-09 16:33:55', '2019-02-25', 1, 1, 1),
(115, 87, '2019-02-25 09:57:41', '2019-02-25 19:58:25', NULL, NULL, '2019-02-25', 1, 1, 1),
(116, 88, '2019-02-25 10:30:24', '2019-02-25 19:57:39', '2019-02-25 16:21:25', '2019-03-09 16:33:55', '2019-02-25', 1, 1, 1),
(117, 82, '2019-02-25 10:50:56', '2019-02-25 19:48:35', '2019-02-25 15:06:15', '2019-03-09 16:33:55', '2019-02-25', 1, 1, 1),
(118, 89, '2019-02-25 10:03:25', '2019-02-25 19:07:04', '2019-02-25 16:02:40', '2019-03-09 16:33:55', '2019-02-25', 1, 1, 1),
(119, 1, '2019-02-25 10:30:02', NULL, NULL, NULL, '2019-02-25', 1, 1, 1),
(120, 3, '2019-02-25 10:07:57', '2019-02-25 10:07:57', '2019-02-25 10:07:57', '2019-03-09 16:33:55', '2019-02-25', 1, 1, 1),
(121, 84, '2019-02-24 09:39:42', '2019-02-24 20:01:05', '2019-02-24 15:07:25', '2019-03-09 16:33:55', '2019-02-24', 1, 1, 1),
(122, 92, '2019-02-24 09:48:08', '2019-02-24 20:00:21', '2019-02-24 14:12:04', '2019-03-09 16:33:55', '2019-02-24', 1, 1, 1),
(123, 86, '2019-02-24 10:18:04', '2019-02-24 20:00:14', '2019-02-24 14:50:14', '2019-03-09 16:33:55', '2019-02-24', 1, 1, 1),
(124, 85, '2019-02-24 10:09:19', '2019-02-24 20:00:11', NULL, NULL, '2019-02-24', 1, 1, 1),
(125, 81, '2019-02-24 09:40:05', '2019-02-24 19:58:55', NULL, NULL, '2019-02-24', 1, 1, 1),
(126, 73, '2019-02-24 09:56:33', '2019-02-24 19:57:07', '2019-02-24 14:49:17', '2019-03-09 16:33:55', '2019-02-24', 1, 1, 1),
(127, 1, '2019-02-24 09:56:23', '2019-02-24 19:56:44', '2019-02-24 14:12:45', '2019-03-09 16:33:55', '2019-02-24', 1, 1, 1),
(128, 82, '2019-02-24 10:50:32', '2019-02-24 19:39:32', '2019-02-24 14:49:01', '2019-03-09 16:33:55', '2019-02-24', 1, 1, 1),
(129, 89, '2019-02-24 09:39:38', '2019-02-24 19:23:51', NULL, NULL, '2019-02-24', 1, 1, 1),
(130, 87, '2019-02-24 11:28:02', NULL, NULL, NULL, '2019-02-24', 1, 1, 1),
(131, 88, '2019-02-24 10:33:04', NULL, NULL, NULL, '2019-02-24', 1, 1, 1),
(132, 3, '2019-02-24 09:56:38', '2019-02-24 09:56:38', '2019-02-24 09:56:38', '2019-03-09 16:33:55', '2019-02-24', 1, 1, 1),
(133, 92, '2019-02-23 09:49:25', '2019-02-23 19:45:13', '2019-02-23 14:10:06', '2019-03-09 16:33:55', '2019-02-23', 1, 1, 1),
(134, 84, '2019-02-23 10:07:05', '2019-02-23 19:44:49', '2019-02-23 15:08:57', '2019-03-09 16:33:55', '2019-02-23', 1, 1, 1),
(135, 88, NULL, '2019-02-23 19:43:17', NULL, NULL, '2019-02-23', 1, 1, 1),
(136, 82, '2019-02-23 10:26:05', '2019-02-23 19:39:45', '2019-02-23 14:39:47', '2019-03-09 16:33:55', '2019-02-23', 1, 1, 1),
(137, 81, '2019-02-23 09:44:12', '2019-02-23 19:39:36', '2019-02-23 14:35:20', '2019-03-09 16:33:55', '2019-02-23', 1, 1, 1),
(138, 73, '2019-02-23 09:51:18', '2019-02-23 19:03:47', '2019-02-23 15:08:24', '2019-03-09 16:33:55', '2019-02-23', 1, 1, 1),
(139, 1, '2019-02-23 09:59:11', '2019-02-23 19:38:17', '2019-02-23 14:35:07', '2019-03-09 16:33:55', '2019-02-23', 1, 1, 1),
(140, 91, NULL, '2019-02-23 19:03:21', NULL, NULL, '2019-02-23', 1, 1, 1),
(141, 85, '2019-02-23 09:54:15', NULL, NULL, NULL, '2019-02-23', 1, 1, 1),
(142, 3, '2019-02-23 09:51:25', '2019-02-23 09:51:25', '2019-02-23 09:51:25', '2019-03-09 16:33:55', '2019-02-23', 1, 1, 1),
(143, 85, '2019-02-20 10:01:44', '2019-02-20 19:42:28', NULL, NULL, '2019-02-20', 1, 1, 1),
(144, 81, '2019-02-20 09:40:00', '2019-02-20 19:42:15', '2019-02-20 14:00:05', '2019-03-09 16:33:55', '2019-02-20', 1, 1, 1),
(145, 73, '2019-02-20 10:08:29', '2019-02-20 18:34:39', '2019-02-20 14:57:35', '2019-03-09 16:33:55', '2019-02-20', 1, 1, 1),
(146, 92, '2019-02-20 09:44:19', '2019-02-20 19:42:00', '2019-02-20 14:00:31', '2019-03-09 16:33:55', '2019-02-20', 1, 1, 1),
(147, 1, '2019-02-20 09:58:54', '2019-02-20 19:38:51', '2019-02-20 14:00:20', '2019-03-09 16:33:55', '2019-02-20', 1, 1, 1),
(148, 82, '2019-02-20 10:12:54', '2019-02-20 18:34:33', '2019-02-20 14:57:54', '2019-03-09 16:33:55', '2019-02-20', 1, 1, 1),
(149, 84, '2019-02-20 09:43:06', '2019-02-20 19:32:50', NULL, NULL, '2019-02-20', 1, 1, 1),
(150, 3, '2019-02-20 18:59:04', '2019-02-20 10:01:55', '2019-02-20 10:01:55', '2019-03-09 16:33:55', '2019-02-20', 1, 1, 1),
(151, 86, '2019-02-20 09:58:42', NULL, '2019-02-20 15:01:04', '2019-03-09 16:33:55', '2019-02-20', 1, 1, 1),
(152, 89, '2019-02-20 09:42:39', NULL, '2019-02-20 14:55:37', '2019-03-09 16:33:55', '2019-02-20', 1, 1, 1),
(153, 87, '2019-02-20 10:05:39', NULL, NULL, NULL, '2019-02-20', 1, 1, 1),
(154, 85, '2019-02-19 10:13:01', '2019-02-19 20:00:49', NULL, NULL, '2019-02-19', 1, 1, 1),
(155, 81, '2019-02-19 09:34:22', '2019-02-19 20:08:52', '2019-02-19 16:36:37', '2019-03-09 16:33:55', '2019-02-19', 1, 1, 1),
(156, 84, NULL, '2019-02-19 20:00:25', '2019-02-19 15:01:09', '2019-03-09 16:33:55', '2019-02-19', 1, 1, 1),
(157, 92, NULL, '2019-02-19 20:05:32', '2019-02-19 14:41:41', '2019-03-09 16:33:55', '2019-02-19', 1, 1, 1),
(158, 86, '2019-02-19 09:55:40', '2019-02-19 20:00:35', NULL, NULL, '2019-02-19', 1, 1, 1),
(159, 1, '2019-02-19 09:55:47', '2019-02-19 19:50:24', '2019-02-19 14:38:10', '2019-03-09 16:33:55', '2019-02-19', 1, 1, 1),
(160, 89, '2019-02-19 09:33:24', '2019-02-19 19:01:22', NULL, NULL, '2019-02-19', 1, 1, 1),
(161, 87, '2019-02-19 10:14:37', NULL, '2019-02-19 16:05:19', '2019-03-09 16:33:55', '2019-02-19', 1, 1, 1),
(162, 82, '2019-02-19 10:11:34', NULL, '2019-02-19 15:56:59', '2019-03-09 16:33:55', '2019-02-19', 1, 1, 1),
(163, 88, '2019-02-19 11:12:50', NULL, NULL, NULL, '2019-02-19', 1, 1, 1),
(164, 3, '2019-02-19 09:56:57', '2019-02-19 09:56:57', '2019-02-19 09:56:57', '2019-03-09 16:33:55', '2019-02-19', 1, 1, 1),
(165, 86, NULL, NULL, '2019-02-18 15:04:01', '2019-03-09 16:33:55', '2019-02-18', 1, 1, 1),
(166, 1, NULL, NULL, '2019-02-18 14:35:54', '2019-03-09 16:33:55', '2019-02-18', 1, 1, 1),
(167, 81, NULL, NULL, '2019-02-17 15:52:09', '2019-03-09 16:33:55', '2019-02-17', 1, 1, 1),
(168, 3, '2019-02-16 17:15:13', '2019-02-16 17:15:13', '2019-02-16 17:15:13', '2019-03-09 16:33:55', '2019-02-16', 1, 1, 1),
(169, 59, '2019-02-16 12:51:38', NULL, NULL, NULL, '2019-02-16', 1, 1, 1),
(170, 1, '2019-02-16 12:51:29', NULL, NULL, NULL, '2019-02-16', 1, 1, 1),
(171, 2, '2019-02-14 09:59:34', '2019-02-14 09:59:34', '2019-02-14 09:59:34', '2019-03-09 16:33:55', '2019-02-14', 1, 1, 1),
(172, 6, '2019-02-13 14:08:37', '2019-02-13 14:08:37', '2019-02-13 14:08:37', '2019-03-09 16:33:55', '2019-02-13', 1, 1, 1),
(173, 4, '2019-02-12 11:16:37', '2019-02-12 11:16:37', '2019-02-12 11:16:37', '2019-03-09 16:33:55', '2019-02-12', 1, 1, 1),
(174, 2, '2019-02-12 10:30:41', '2019-02-12 10:30:41', '2019-02-12 10:30:41', '2019-03-09 16:33:55', '2019-02-12', 1, 1, 1),
(175, 3, '2019-02-10 10:01:11', '2019-02-10 10:01:11', '2019-02-10 10:01:11', '2019-03-09 16:33:55', '2019-02-10', 1, 1, 1),
(176, 4, '2019-02-10 10:00:34', '2019-02-10 10:00:34', '2019-02-10 10:00:34', '2019-03-09 16:33:55', '2019-02-10', 1, 1, 1),
(177, 2, '2019-02-10 10:00:11', '2019-02-10 10:00:11', '2019-02-10 10:00:11', '2019-03-09 16:33:55', '2019-02-10', 1, 1, 1),
(178, 6, '2019-02-09 10:09:03', '2019-02-09 10:09:03', '2019-02-09 10:09:03', '2019-03-09 16:33:55', '2019-02-09', 1, 1, 1),
(179, 3, '2019-02-09 10:08:31', '2019-02-09 10:08:31', '2019-02-09 10:08:31', '2019-03-09 16:33:55', '2019-02-09', 1, 1, 1),
(180, 4, '2019-02-07 18:29:45', '2019-02-07 10:13:00', '2019-02-07 10:13:00', '2019-03-09 16:33:55', '2019-02-07', 1, 1, 1),
(181, 3, '2019-02-07 10:10:17', '2019-02-07 10:16:20', '2019-02-07 10:10:17', '2019-03-09 16:33:55', '2019-02-07', 1, 1, 1),
(182, 2, '2019-02-07 10:13:26', '2019-02-07 10:13:26', '2019-02-07 10:13:26', '2019-03-09 16:33:55', '2019-02-07', 1, 1, 1),
(183, 6, '2019-02-07 10:11:40', '2019-02-07 10:11:40', '2019-02-07 10:11:40', '2019-03-09 16:33:55', '2019-02-07', 1, 1, 1),
(184, 2, '2019-02-06 16:47:27', '2019-02-06 16:47:27', '2019-02-06 16:47:27', '2019-03-09 16:33:55', '2019-02-06', 1, 1, 1),
(185, 4, '2019-02-06 16:47:19', '2019-02-06 16:47:19', '2019-02-06 16:47:19', '2019-03-09 16:33:55', '2019-02-06', 1, 1, 1),
(186, 3, '2019-02-06 16:18:43', '2019-02-06 16:18:43', '2019-02-06 16:18:43', '2019-03-09 16:33:55', '2019-02-06', 1, 1, 1),
(187, 999999999, '2019-02-06 18:10:04', NULL, NULL, NULL, '2019-02-06', 1, 1, 1),
(188, 5, '2019-02-06 16:49:44', '2019-02-06 16:49:44', '2019-02-06 16:49:44', '2019-03-09 16:33:55', '2019-02-06', 1, 1, 1),
(189, 58, '2019-01-21 09:00:00', '2019-01-21 18:00:00', NULL, NULL, '2019-01-21', 1, 1, 1),
(190, 59, '2019-01-23 09:00:00', '2019-01-23 18:00:00', NULL, NULL, '2019-01-23', 1, 1, 1),
(191, 73, '2019-02-17 10:10:00', NULL, NULL, NULL, '2019-02-17', 1, 1, 1),
(192, 74, '2019-02-17 10:10:00', NULL, NULL, NULL, '2019-02-17', 1, 1, 1),
(193, 77, '2019-02-02 10:00:00', '2019-02-02 20:00:00', NULL, NULL, '2019-02-02', 1, 1, 1),
(194, 82, '2019-12-02 10:10:00', NULL, NULL, NULL, '2019-12-02', 1, 1, 1),
(195, 73, '2019-03-09 10:00:00', '2019-03-09 20:00:46', '2019-03-09 15:17:37', '2019-03-09 16:33:55', '2019-03-09', 1, 1, 1),
(196, 88, '2019-03-10 10:47:10', '2019-03-10 20:07:32', '2019-03-10 14:51:17', '2019-03-10 14:51:17', '2019-03-10', 1, 1, 1),
(197, 73, '2019-03-10 10:04:47', '2019-03-10 20:03:53', '2019-03-10 15:15:21', '2019-03-10 15:15:21', '2019-03-10', 1, 1, 1),
(198, 1, '2019-03-10 09:57:38', '2019-03-10 20:00:31', '2019-03-10 15:15:37', '2019-03-10 15:15:37', '2019-03-10', 1, 1, 1),
(199, 82, '2019-03-10 10:09:48', '2019-03-10 20:02:07', '2019-03-10 15:15:29', '2019-03-10 15:15:29', '2019-03-10', 1, 1, 1),
(200, 85, '2019-03-10 10:18:42', '2019-03-10 20:06:36', '2019-03-10 15:15:06', '2019-03-10 15:15:06', '2019-03-10', 1, 1, 1),
(201, 84, '2019-03-10 10:00:14', '2019-03-10 20:09:16', '2019-03-10 15:07:21', '2019-03-10 15:07:21', '2019-03-10', 1, 1, 1),
(202, 92, '2019-03-10 09:44:14', '2019-03-10 20:03:38', '2019-03-10 14:02:59', '2019-03-10 14:02:59', '2019-03-10', 1, 1, 1),
(203, 81, '2019-03-10 09:35:41', '2019-03-10 20:09:12', '2019-03-10 14:30:38', '2019-03-10 14:30:38', '2019-03-10', 1, 1, 1),
(204, 3, '2019-03-10 10:04:52', '2019-03-10 10:04:52', '2019-03-10 10:04:52', '2019-03-10 10:04:52', '2019-03-10', 1, 1, 1),
(205, 90, '2019-03-10 09:59:09', '2019-03-10 19:46:18', NULL, NULL, '2019-03-10', 1, 1, 1),
(206, 89, '2019-03-10 09:34:04', '2019-03-10 19:51:26', NULL, NULL, '2019-03-10', 1, 1, 1),
(207, 3, NULL, NULL, NULL, NULL, '2019-03-09', 1, 1, 1),
(208, 88, '2019-03-11 10:34:15', '2019-03-11 20:37:25', NULL, NULL, '2019-03-11', 1, 1, 1),
(209, 85, '2019-03-11 10:19:33', '2019-03-11 20:36:05', '2019-03-11 15:04:30', '2019-03-11 15:04:30', '2019-03-11', 1, 1, 1),
(210, 90, '2019-03-11 09:58:13', '2019-03-11 20:35:39', NULL, NULL, '2019-03-11', 1, 1, 1),
(211, 82, '2019-03-11 09:56:54', '2019-03-11 20:00:30', '2019-03-11 14:00:11', '2019-03-11 14:00:11', '2019-03-11', 1, 1, 1),
(212, 73, '2019-03-11 09:56:17', '2019-03-11 20:36:14', '2019-03-11 16:31:42', '2019-03-11 16:31:42', '2019-03-11', 1, 1, 1),
(213, 1, '2019-03-11 09:54:49', '2019-03-11 20:18:47', '2019-03-11 14:43:02', '2019-03-11 14:43:02', '2019-03-11', 1, 1, 1),
(214, 92, '2019-03-11 09:47:40', '2019-03-11 20:35:58', '2019-03-11 14:00:16', '2019-03-11 14:00:16', '2019-03-11', 1, 1, 1),
(215, 84, '2019-03-11 09:38:06', '2019-03-11 20:35:47', '2019-03-11 14:58:58', '2019-03-11 14:58:58', '2019-03-11', 1, 1, 1),
(216, 81, '2019-03-11 09:29:18', '2019-03-11 20:35:53', '2019-03-11 14:44:47', '2019-03-11 14:44:47', '2019-03-11', 1, 1, 1),
(217, 89, '2019-03-11 09:29:11', '2019-03-11 19:00:13', '2019-03-11 16:30:53', '2019-03-11 16:30:53', '2019-03-11', 1, 1, 1),
(218, 85, '2019-03-12 10:22:04', '2019-03-12 20:07:10', '2019-03-12 15:13:44', '2019-03-12 15:13:44', '2019-03-12', 1, 1, 1),
(219, 82, '2019-03-12 10:07:49', '2019-03-12 20:00:30', '2019-03-12 13:27:44', '2019-03-12 13:27:44', '2019-03-12', 1, 1, 1),
(220, 73, '2019-03-12 09:59:59', NULL, NULL, NULL, '2019-03-12', 1, 1, 1),
(221, 1, '2019-03-12 09:58:41', '2019-03-12 20:00:09', '2019-03-12 15:14:19', '2019-03-12 15:14:19', '2019-03-12', 1, 1, 1),
(222, 90, '2019-03-12 09:54:22', '2019-03-12 20:04:27', NULL, NULL, '2019-03-12', 1, 1, 1),
(223, 84, '2019-03-12 09:51:08', '2019-03-12 20:04:32', '2019-03-12 15:11:54', '2019-03-12 15:11:54', '2019-03-12', 1, 1, 1),
(224, 92, '2019-03-12 09:47:15', '2019-03-12 20:05:45', '2019-03-12 14:54:05', '2019-03-12 14:54:05', '2019-03-12', 1, 1, 1),
(225, 91, '2019-03-12 09:44:25', '2019-03-12 20:02:26', NULL, NULL, '2019-03-12', 1, 1, 1),
(226, 89, '2019-03-12 09:41:58', '2019-03-12 19:12:23', '2019-03-12 15:17:14', '2019-03-12 15:17:14', '2019-03-12', 1, 1, 1),
(227, 81, '2019-03-12 09:41:19', '2019-03-12 20:06:45', '2019-03-12 14:50:05', '2019-03-12 14:50:05', '2019-03-12', 1, 1, 1),
(228, 88, '2019-03-12 10:39:59', '2019-03-12 20:04:12', '2019-03-12 14:07:54', '2019-03-12 14:07:54', '2019-03-12', 1, 1, 1),
(229, 98, NULL, NULL, '2019-03-12 13:01:34', '2019-03-12 13:01:34', '2019-03-12', 1, 1, 1),
(230, 3, '2019-03-12 13:00:31', '2019-03-12 13:00:31', '2019-03-12 13:00:31', '2019-03-12 13:00:31', '2019-03-12', 1, 1, 1),
(231, 1, '2019-03-12 09:58:41', '2019-03-12 14:00:00', NULL, NULL, '2019-03-12', 1, 1, 1),
(232, 1, '2019-03-11 09:54:49', '2019-03-11 20:18:47', '2019-03-11 15:40:40', '2019-03-11 14:43:02', '2019-03-11', 1, 1, 1),
(233, 1, '2019-03-10 09:57:38', '2019-03-10 20:00:31', '2019-03-10 15:27:42', '2019-03-10 15:15:37', '2019-03-10', 1, 1, 1),
(234, 1, '2019-03-09 09:56:38', '2019-03-09 19:55:07', NULL, NULL, '2019-03-09', 1, 1, 1),
(235, 1, '2019-03-07 09:54:42', '2019-03-07 19:54:07', NULL, NULL, '2019-03-07', 1, 1, 1),
(236, 1, '2019-03-06 09:54:43', '2019-03-06 19:52:11', '2019-03-06 15:23:38', '2019-03-06 14:24:51', '2019-03-06', 1, 1, 1),
(237, 1, '2019-03-05 09:56:00', '2019-03-05 19:57:26', '2019-03-05 14:56:06', '2019-03-05 13:56:42', '2019-03-05', 1, 1, 1),
(238, 1, '2019-03-04 09:56:44', '2019-03-04 19:45:03', '2019-03-04 16:32:05', '2019-03-04 15:31:34', '2019-03-04', 1, 1, 1),
(239, 1, '2019-03-03 09:56:26', '2019-03-03 19:41:16', '2019-03-03 16:03:33', '2019-03-03 15:08:38', '2019-03-03', 1, 1, 1),
(240, 1, '2019-02-25 10:30:02', NULL, NULL, NULL, '2019-02-25', 1, 1, 1),
(241, 1, '2019-02-24 09:56:23', '2019-02-24 19:56:44', '2019-02-24 15:09:37', '2019-02-24 14:12:45', '2019-02-24', 1, 1, 1),
(242, 1, '2019-02-23 09:59:11', '2019-02-23 19:38:17', '2019-02-23 15:35:30', '2019-02-23 14:35:07', '2019-02-23', 1, 1, 1),
(243, 1, '2019-02-20 09:58:54', '2019-02-20 19:38:51', '2019-02-20 14:58:06', '2019-02-20 14:00:20', '2019-02-20', 1, 1, 1),
(244, 1, '2019-02-19 09:55:47', '2019-02-19 19:50:24', '2019-02-19 15:37:26', '2019-02-19 14:38:10', '2019-02-19', 1, 1, 1),
(245, 1, NULL, NULL, '2019-02-18 15:36:05', '2019-02-18 14:35:54', '2019-02-18', 1, 1, 1),
(246, 1, '2019-02-16 12:51:29', NULL, NULL, NULL, '2019-02-16', 1, 1, 1),
(247, 91, '2019-03-13 09:59:18', '2019-03-13 20:07:50', '2019-03-13 16:08:52', '2019-03-13 16:08:52', '2019-03-13', 1, 1, 1),
(248, 84, '2019-03-13 10:10:08', '2019-03-13 20:07:02', '2019-03-13 14:54:06', '2019-03-13 14:54:06', '2019-03-13', 1, 1, 1),
(249, 1, '2019-03-13 10:09:17', '2019-03-13 20:00:10', '2019-03-13 14:21:03', '2019-03-13 14:21:03', '2019-03-13', 1, 1, 1),
(250, 88, '2019-03-13 10:48:50', '2019-03-13 20:30:00', '2019-03-13 15:11:47', '2019-03-13 15:11:47', '2019-03-13', 1, 1, 1),
(251, 90, '2019-03-13 14:15:00', '2019-03-13 14:15:00', '2019-03-13 14:22:27', '2019-03-13 14:22:27', '2019-03-13', 1, 1, 1),
(252, 92, '2019-03-13 09:43:00', '2019-03-13 20:09:01', '2019-03-13 14:15:23', '2019-03-13 14:15:23', '2019-03-13', 1, 1, 1),
(253, 85, '2019-03-13 10:21:27', '2019-03-13 20:07:18', '2019-03-13 15:00:48', '2019-03-13 15:00:48', '2019-03-13', 1, 1, 1),
(254, 89, '2019-03-13 09:43:14', '2019-03-13 19:11:50', '2019-03-13 14:52:17', '2019-03-13 14:52:17', '2019-03-13', 1, 1, 1),
(255, 81, '2019-03-13 09:43:05', '2019-03-13 20:07:14', '2019-03-13 14:51:58', '2019-03-13 14:51:58', '2019-03-13', 1, 1, 1),
(256, 73, NULL, '2019-03-13 20:08:39', NULL, NULL, '2019-03-13', 1, 1, 1),
(257, 82, '2019-03-13 10:16:38', '2019-03-13 20:00:24', '2019-03-13 14:06:00', '2019-03-13 14:06:00', '2019-03-13', 1, 1, 1),
(258, 89, '2019-03-14 09:36:20', '2019-03-14 19:40:33', '2019-03-14 14:49:54', '2019-03-14 14:49:54', '2019-03-14', 1, 1, 1),
(259, 92, '2019-03-14 09:49:40', '2019-03-14 20:08:45', '2019-03-14 14:45:01', '2019-03-14 14:45:01', '2019-03-14', 1, 1, 1),
(260, 91, '2019-03-14 10:19:10', '2019-03-14 20:05:17', '2019-03-14 14:38:49', '2019-03-14 14:38:49', '2019-03-14', 1, 1, 1),
(261, 81, '2019-03-14 09:37:04', '2019-03-14 20:05:06', '2019-03-14 14:22:37', '2019-03-14 14:22:37', '2019-03-14', 1, 1, 1),
(262, 82, '2019-03-14 09:57:03', '2019-03-14 20:01:16', '2019-03-14 13:14:04', '2019-03-14 13:14:04', '2019-03-14', 1, 1, 1),
(263, 88, '2019-03-14 10:41:57', '2019-03-14 21:30:00', '2019-03-14 15:31:22', '2019-03-14 15:31:22', '2019-03-14', 1, 1, 1),
(264, 85, '2019-03-14 10:13:07', '2019-03-14 20:09:38', '2019-03-14 15:22:06', '2019-03-14 15:22:06', '2019-03-14', 1, 1, 1),
(265, 1, '2019-03-14 10:03:13', '2019-03-14 20:00:14', '2019-03-14 16:01:18', '2019-03-14 16:01:18', '2019-03-14', 1, 1, 1),
(266, 90, '2019-03-14 10:01:12', '2019-03-14 20:00:00', '2019-03-14 16:40:25', '2019-03-14 16:40:25', '2019-03-14', 1, 1, 1),
(267, 73, '2019-03-14 09:58:00', '2019-03-14 20:12:22', '2019-03-14 16:00:00', '2019-03-14 16:15:00', '2019-03-14', 1, 1, 1),
(268, 85, '2019-03-16 10:17:48', '2019-03-16 20:10:30', '2019-03-16 15:37:37', '2019-03-16 15:37:37', '2019-03-16', 1, 1, 1),
(269, 91, '2019-03-16 10:04:32', '2019-03-16 20:02:09', '2019-03-16 15:00:00', '2019-03-16 16:00:00', '2019-03-16', 1, 1, 1),
(270, 90, '2019-03-16 10:03:27', '2019-03-16 20:02:50', '2019-03-16 15:29:13', '2019-03-16 15:29:13', '2019-03-16', 1, 1, 1),
(271, 82, '2019-03-16 10:03:09', '2019-03-16 20:10:21', '2019-03-16 14:33:22', '2019-03-16 14:33:22', '2019-03-16', 1, 1, 1),
(272, 1, '2019-03-16 09:57:41', '2019-03-16 20:00:04', '2019-03-16 14:15:17', '2019-03-16 14:15:17', '2019-03-16', 1, 1, 1),
(273, 73, '2019-03-16 09:57:32', '2019-03-16 20:10:42', '2019-03-16 15:36:00', '2019-03-16 15:52:00', '2019-03-16', 1, 1, 1),
(274, 84, '2019-03-16 09:52:22', '2019-03-16 20:01:51', '2019-03-16 15:28:29', '2019-03-16 15:28:29', '2019-03-16', 1, 1, 1),
(275, 86, '2019-03-16 09:46:21', '2019-03-16 20:02:27', '2019-03-16 15:33:35', '2019-03-16 15:33:35', '2019-03-16', 1, 1, 1),
(276, 92, '2019-03-16 09:43:15', '2019-03-16 20:02:00', '2019-03-16 14:05:41', '2019-03-16 14:05:41', '2019-03-16', 1, 1, 1),
(277, 81, '2019-03-16 09:43:01', '2019-03-16 20:02:32', '2019-03-16 14:32:53', '2019-03-16 14:32:53', '2019-03-16', 1, 1, 1),
(278, 89, '2019-03-16 09:41:51', '2019-03-16 19:22:20', '2019-03-16 15:36:00', '2019-03-16 15:36:00', '2019-03-16', 1, 1, 1),
(279, 84, '2019-03-14 10:00:00', '2019-03-14 20:05:02', '2019-03-14 14:30:00', '2019-03-14 14:00:00', '2019-03-14', 1, 1, 1),
(280, 88, '2019-03-16 10:58:29', '2019-03-16 20:02:16', '2019-03-16 16:46:57', '2019-03-16 16:46:57', '2019-03-16', 1, 1, 1),
(281, 83, '2019-03-12 09:58:41', '2019-03-12 14:00:00', '2019-03-12 14:00:00', '2019-03-12 15:00:00', '2019-03-12', 1, 1, 1),
(282, 83, '2019-03-11 14:43:02', '2019-03-11 14:43:02', '2019-03-11 15:40:40', '2019-03-11 15:40:40', '2019-03-11', 1, 1, 1),
(283, 83, '2019-03-10 15:15:37', '2019-03-10 15:15:37', '2019-03-10 15:27:42', '2019-03-10 15:15:37', '2019-03-10', 1, 1, 1),
(284, 83, '2019-03-09 09:56:38', '2019-03-09 09:56:38', '2019-03-09 09:56:38', '2019-03-09 16:33:55', '2019-03-09', 1, 1, 1),
(285, 83, '2019-03-07 09:54:42', '2019-03-07 09:54:42', '2019-03-07 09:54:42', '2019-03-09 16:33:55', '2019-03-07', 1, 1, 1),
(286, 83, '2019-03-06 14:24:51', '2019-03-06 14:24:51', '2019-03-06 15:23:38', '2019-03-09 16:33:55', '2019-03-06', 1, 1, 1),
(287, 83, '2019-03-05 14:56:06', '2019-03-05 14:56:06', '2019-03-05 13:56:42', '2019-03-09 16:33:55', '2019-03-05', 1, 1, 1),
(288, 83, '2019-03-04 15:31:34', '2019-03-04 15:31:34', '2019-03-04 15:31:34', '2019-03-09 16:33:55', '2019-03-04', 1, 1, 1),
(289, 83, '2019-03-03 15:08:38', '2019-03-03 15:08:38', '2019-03-03 15:08:38', '2019-03-09 16:33:55', '2019-03-03', 1, 1, 1),
(290, 83, '2019-02-25 10:30:02', '2019-02-25 12:38:47', '2019-02-25 12:38:47', '2019-03-09 16:33:55', '2019-02-25', 1, 1, 1),
(291, 83, '2019-02-24 14:12:45', '2019-02-24 14:12:45', '2019-02-24 15:09:37', '2019-03-09 16:33:55', '2019-02-24', 1, 1, 1),
(292, 83, '2019-02-23 14:35:07', '2019-02-23 14:35:07', '2019-02-23 15:35:30', '2019-03-09 16:33:55', '2019-02-23', 1, 1, 1),
(293, 83, '2019-02-20 14:00:20', '2019-02-20 14:00:20', '2019-02-20 14:00:20', '2019-03-09 16:33:55', '2019-02-20', 1, 1, 1),
(294, 83, '2019-02-19 14:38:10', '2019-02-19 14:38:10', '2019-02-19 15:37:26', '2019-03-09 16:33:55', '2019-02-19', 1, 1, 1),
(295, 83, '2019-02-18 14:35:54', '2019-02-18 14:35:54', '2019-02-18 15:34:27', '2019-03-09 16:33:55', '2019-02-18', 1, 1, 1),
(296, 83, '2019-02-16 12:51:29', '2019-02-16 12:51:29', '2019-02-16 12:51:29', '2019-03-09 16:33:55', '2019-02-16', 1, 1, 1),
(297, 90, '2019-03-18 09:59:14', '2019-03-18 20:07:28', '2019-03-18 15:45:37', '2019-03-18 15:45:37', '2019-03-18', 1, 1, 1),
(298, 85, '2019-03-18 10:19:45', '2019-03-18 20:03:26', '2019-03-18 15:15:07', '2019-03-18 15:15:07', '2019-03-18', 1, 1, 1),
(299, 86, '2019-03-18 09:57:38', '2019-03-18 20:03:10', '2019-03-18 14:56:35', '2019-03-18 14:56:35', '2019-03-18', 1, 1, 1),
(300, 1, '2019-03-18 09:57:55', '2019-03-18 20:00:12', '2019-03-18 14:47:03', '2019-03-18 14:47:03', '2019-03-18', 1, 1, 1),
(301, 84, '2019-03-18 09:34:18', '2019-03-18 20:03:39', '2019-03-18 14:48:12', '2019-03-18 14:48:12', '2019-03-18', 1, 1, 1),
(302, 82, '2019-03-18 10:10:10', '2019-03-18 20:00:21', '2019-03-18 14:46:50', '2019-03-18 14:46:50', '2019-03-18', 1, 1, 1),
(303, 81, '2019-03-18 09:36:59', '2019-03-18 20:03:20', '2019-03-18 14:43:45', '2019-03-18 14:43:45', '2019-03-18', 1, 1, 1),
(304, 73, '2019-03-18 09:56:55', '2019-03-18 20:03:37', '2019-03-18 14:44:00', '2019-03-18 14:45:00', '2019-03-18', 1, 1, 1),
(305, 88, '2019-03-18 12:04:49', '2019-03-18 20:30:00', '2019-03-18 14:50:00', '2019-03-18 15:00:00', '2019-03-18', 1, 1, 1),
(306, 92, '2019-03-18 09:42:26', NULL, NULL, NULL, '2019-03-18', 1, 1, 1),
(307, 89, '2019-03-18 09:34:08', '2019-03-18 19:15:20', '2019-03-18 14:56:30', '2019-03-18 14:56:30', '2019-03-18', 1, 1, 1),
(308, 88, '2019-03-19 10:59:36', '2019-03-19 21:00:00', '2019-03-19 14:58:23', '2019-03-19 14:58:23', '2019-03-19', 1, 1, 1),
(309, 82, '2019-03-19 10:33:36', '2019-03-19 20:00:00', '2019-03-19 14:05:43', '2019-03-19 14:05:43', '2019-03-19', 1, 1, 1),
(310, 85, '2019-03-19 10:21:07', '2019-03-19 20:15:22', '2019-03-19 14:00:00', '2019-03-19 15:00:00', '2019-03-19', 1, 1, 1),
(311, 91, '2019-03-19 10:04:10', '2019-03-19 20:01:04', '2019-03-19 16:31:35', '2019-03-19 16:31:35', '2019-03-19', 1, 1, 1),
(312, 90, '2019-03-19 10:01:00', '2019-03-19 20:01:13', '2019-03-19 16:20:02', '2019-03-19 16:20:02', '2019-03-19', 1, 1, 1),
(313, 73, '2019-03-19 10:00:10', '2019-03-19 20:15:33', '2019-03-19 14:28:24', '2019-03-19 14:28:24', '2019-03-19', 1, 1, 1),
(314, 1, '2019-03-19 09:56:04', '2019-03-19 20:00:10', '2019-03-19 14:28:17', '2019-03-19 14:28:17', '2019-03-19', 1, 1, 1),
(315, 86, '2019-03-19 09:55:46', '2019-03-19 20:00:24', '2019-03-19 15:19:49', '2019-03-19 15:19:49', '2019-03-19', 1, 1, 1),
(316, 92, '2019-03-19 09:41:52', '2019-03-19 20:04:44', '2019-03-19 14:05:46', '2019-03-19 14:05:46', '2019-03-19', 1, 1, 1),
(317, 81, '2019-03-19 09:41:16', '2019-03-19 20:15:15', '2019-03-19 14:49:58', '2019-03-19 14:49:58', '2019-03-19', 1, 1, 1),
(318, 84, '2019-03-19 09:37:15', '2019-03-19 20:04:49', '2019-03-19 15:25:48', '2019-03-19 15:25:48', '2019-03-19', 1, 1, 1),
(319, 89, '2019-03-19 09:36:47', '2019-03-19 19:04:49', '2019-03-19 15:09:09', '2019-03-19 15:09:09', '2019-03-19', 1, 1, 1),
(320, 91, NULL, '2019-03-18 20:07:32', '2019-03-18 14:51:52', '2019-03-18 14:51:52', '2019-03-18', 1, 1, 1),
(321, 73, '2019-03-20 09:58:48', '2019-03-20 20:11:32', '2019-03-20 14:16:24', '2019-03-20 14:16:18', '2019-03-20', 1, 1, 1),
(322, 82, '2019-03-20 10:00:00', '2019-03-20 20:00:21', '2019-03-20 14:32:58', '2019-03-20 14:32:41', '2019-03-20', 1, 1, 1),
(323, 81, '2019-03-20 09:39:45', '2019-03-20 20:11:25', '2019-03-20 14:27:53', '2019-03-20 14:09:06', '2019-03-20', 1, 1, 1),
(324, 1, '2019-03-20 09:57:47', '2019-03-20 20:00:15', '2019-03-20 14:27:45', '2019-03-20 14:27:45', '2019-03-20', 1, 1, 1),
(325, 92, '2019-03-20 09:43:43', '2019-03-20 20:07:40', '2019-03-20 14:16:04', '2019-03-20 14:16:04', '2019-03-20', 1, 1, 1),
(326, 88, '2019-03-20 10:58:46', '2019-03-20 20:11:21', '2019-03-20 14:33:00', '2019-03-20 15:35:00', '2019-03-20', 1, 1, 1),
(327, 91, '2019-03-20 10:15:39', '2019-03-20 20:08:10', '2019-03-20 14:15:00', '2019-03-20 15:14:00', '2019-03-20', 1, 1, 1),
(328, 85, '2019-03-20 10:15:08', '2019-03-20 20:11:46', '2019-03-20 14:52:06', '2019-03-20 14:45:43', '2019-03-20', 1, 1, 1),
(329, 84, '2019-03-20 10:01:59', '2019-03-20 20:06:46', '2019-03-20 14:52:42', '2019-03-20 14:52:42', '2019-03-20', 1, 1, 1),
(330, 90, '2019-03-20 09:56:09', '2019-03-20 21:00:00', '2019-03-20 16:00:00', '2019-03-20 16:45:00', '2019-03-20', 1, 1, 1),
(331, 86, '2019-03-20 09:52:29', '2019-03-20 20:07:09', '2019-03-20 15:40:48', '2019-03-20 15:40:48', '2019-03-20', 1, 1, 1),
(332, 89, '2019-03-20 09:39:36', '2019-03-20 19:18:00', '2019-03-20 15:09:14', '2019-03-20 15:08:24', '2019-03-20', 1, 1, 1),
(333, 88, '2019-03-21 10:41:57', '2019-03-21 20:22:45', '2019-03-21 16:40:00', '2019-03-21 15:02:19', '2019-03-21', 1, 1, 1),
(334, 85, '2019-03-21 10:14:50', '2019-03-21 20:23:29', '2019-03-21 16:51:03', '2019-03-21 15:31:25', '2019-03-21', 1, 1, 1),
(335, 91, '2019-03-21 10:12:34', '2019-03-21 20:21:57', '2019-03-21 16:48:14', '2019-03-21 16:47:59', '2019-03-21', 1, 1, 1),
(336, 1, '2019-03-21 10:10:45', '2019-03-21 20:00:13', '2019-03-21 16:48:09', '2019-03-21 16:06:33', '2019-03-21', 1, 1, 1),
(337, 73, '2019-03-21 10:00:53', '2019-03-21 20:23:35', '2019-03-21 15:29:17', '2019-03-21 15:29:04', '2019-03-21', 1, 1, 1),
(338, 90, '2019-03-21 09:59:32', '2019-03-21 20:23:01', '2019-03-21 16:37:25', '2019-03-21 15:53:48', '2019-03-21', 1, 1, 1),
(339, 82, '2019-03-21 09:54:46', '2019-03-21 20:00:03', '2019-03-21 14:57:14', '2019-03-21 14:56:52', '2019-03-21', 1, 1, 1),
(340, 86, '2019-03-21 09:49:37', '2019-03-21 20:15:00', '2019-03-21 16:17:55', '2019-03-21 15:19:31', '2019-03-21', 1, 1, 1),
(341, 84, '2019-03-21 09:44:43', '2019-03-21 20:20:04', '2019-03-21 16:06:26', '2019-03-21 15:03:01', '2019-03-21', 1, 1, 1),
(342, 92, '2019-03-21 09:43:30', '2019-03-21 20:20:43', '2019-03-21 14:42:24', '2019-03-21 14:13:04', '2019-03-21', 1, 1, 1),
(343, 89, '2019-03-21 09:39:43', '2019-03-21 18:47:59', '2019-03-21 15:00:32', '2019-03-21 15:00:19', '2019-03-21', 1, 1, 1),
(344, 81, '2019-03-21 09:35:40', '2019-03-21 20:23:24', '2019-03-21 15:00:00', '2019-03-21 14:56:44', '2019-03-21', 1, 1, 1),
(345, 88, '2019-03-23 10:54:30', '2019-03-23 20:05:16', '2019-03-23 16:34:52', '2019-03-23 15:18:23', '2019-03-23', 1, 1, 1),
(346, 85, '2019-03-23 10:05:25', '2019-03-23 20:07:45', '2019-03-23 16:50:03', '2019-03-23 15:44:57', '2019-03-23', 1, 1, 1),
(347, 84, '2019-03-23 10:02:50', '2019-03-23 20:06:41', '2019-03-23 16:09:56', '2019-03-23 15:00:01', '2019-03-23', 1, 1, 1),
(348, 73, '2019-03-23 10:01:03', '2019-03-23 20:07:50', '2019-03-23 15:05:43', '2019-03-23 15:05:31', '2019-03-23', 1, 1, 1),
(349, 90, '2019-03-23 09:59:40', '2019-03-23 20:06:10', '2019-03-23 16:17:07', '2019-03-23 15:18:11', '2019-03-23', 1, 1, 1),
(350, 1, '2019-03-23 09:58:53', '2019-03-23 20:00:16', '2019-03-23 16:16:10', '2019-03-23 15:14:02', '2019-03-23', 1, 1, 1),
(351, 82, '2019-03-23 09:54:53', '2019-03-23 20:05:30', '2019-03-23 14:41:20', '2019-03-23 14:41:16', '2019-03-23', 1, 1, 1),
(352, 86, '2019-03-23 09:50:19', '2019-03-23 20:17:00', '2019-03-23 16:01:43', '2019-03-23 14:59:38', '2019-03-23', 1, 1, 1),
(353, 91, '2019-03-23 09:45:05', '2019-03-23 20:06:58', '2019-03-23 16:48:28', '2019-03-23 16:47:24', '2019-03-23', 1, 1, 1),
(354, 92, '2019-03-23 09:41:58', '2019-03-23 20:05:59', '2019-03-23 14:50:46', '2019-03-23 14:05:01', '2019-03-23', 1, 1, 1),
(355, 81, '2019-03-23 09:41:06', '2019-03-23 20:06:30', '2019-03-23 15:05:18', '2019-03-23 14:45:40', '2019-03-23', 1, 1, 1),
(356, 89, '2019-03-23 09:40:59', '2019-03-23 20:04:38', '2019-03-23 15:44:45', '2019-03-23 15:44:39', '2019-03-23', 1, 1, 1),
(357, 1, '2019-03-24 09:59:33', '2019-03-24 20:03:41', '2019-03-24 15:31:10', '2019-03-24 14:32:03', '2019-03-24', 1, 1, 1),
(358, 91, '2019-03-24 09:58:26', '2019-03-24 20:17:10', NULL, NULL, '2019-03-24', 1, 1, 1),
(359, 73, '2019-03-24 09:58:16', '2019-03-24 20:20:15', '2019-03-24 15:41:25', '2019-03-24 15:41:06', '2019-03-24', 1, 1, 1),
(360, 90, '2019-03-24 09:50:27', '2019-03-24 20:18:13', '2019-03-24 16:25:35', '2019-03-24 16:22:54', '2019-03-24', 1, 1, 1),
(361, 86, '2019-03-24 09:50:06', '2019-03-24 20:19:04', '2019-03-24 15:49:06', '2019-03-24 14:52:34', '2019-03-24', 1, 1, 1),
(362, 92, '2019-03-24 09:43:04', '2019-03-24 20:11:07', '2019-03-24 14:46:35', '2019-03-24 14:03:03', '2019-03-24', 1, 1, 1),
(363, 84, '2019-03-24 09:42:44', '2019-03-24 20:19:22', '2019-03-24 16:02:34', '2019-03-24 14:58:30', '2019-03-24', 1, 1, 1),
(364, 89, '2019-03-24 09:31:32', '2019-03-24 19:22:44', NULL, NULL, '2019-03-24', 1, 1, 1),
(365, 81, '2019-03-24 09:31:28', '2019-03-24 20:19:27', '2019-03-24 14:48:07', '2019-03-24 14:47:50', '2019-03-24', 1, 1, 1),
(366, 88, '2019-03-24 10:48:38', '2019-03-24 20:18:25', '2019-03-24 15:33:45', '2019-03-24 15:33:40', '2019-03-24', 1, 1, 1),
(367, 85, '2019-03-24 10:22:28', '2019-03-24 20:19:49', '2019-03-24 15:50:24', '2019-03-24 15:50:24', '2019-03-24', 1, 1, 1),
(368, 82, '2019-03-24 10:11:10', '2019-03-24 20:11:12', '2019-03-24 14:46:48', '2019-03-24 14:46:18', '2019-03-24', 1, 1, 1),
(369, 1, '2019-03-25 09:58:07', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(370, 90, '2019-03-25 09:55:07', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(371, 73, '2019-03-25 09:54:13', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(372, 86, '2019-03-25 09:51:41', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(373, 92, '2019-03-25 09:45:21', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(374, 81, '2019-03-25 09:45:17', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(375, 84, '2019-03-25 09:37:00', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(376, 89, '2019-03-25 09:36:48', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(377, 91, '2019-03-25 10:26:20', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(378, 85, '2019-03-25 10:17:12', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(379, 88, '2019-03-25 10:17:08', NULL, NULL, NULL, '2019-03-25', 1, 1, 1),
(380, 82, '2019-03-25 10:08:33', NULL, NULL, NULL, '2019-03-25', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `deductionID` int(11) NOT NULL,
  `deductionTitle` varchar(255) NOT NULL,
  `applicableType` tinyint(4) NOT NULL COMMENT '1=Employee|0=Designation',
  `employeeID` int(11) NOT NULL,
  `designationID` int(11) NOT NULL,
  `deductionTypeID` int(11) NOT NULL,
  `deductionEffectiveDate` date NOT NULL,
  `deductionEndDate` date NOT NULL,
  `deductionAmount` float NOT NULL,
  `isPercentage` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 = Amount in percentage | 0 = amount in taka',
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=Active | 0 = delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`deductionID`, `deductionTitle`, `applicableType`, `employeeID`, `designationID`, `deductionTypeID`, `deductionEffectiveDate`, `deductionEndDate`, `deductionAmount`, `isPercentage`, `companyID`, `branchID`, `applicationID`, `status`) VALUES
(1, '', 1, 1, 0, 3, '2018-12-12', '2018-12-29', 10000, 0, 1, 1, 1, 0),
(2, '', 1, 1, 0, 3, '2018-12-26', '2019-02-13', 2000, 0, 1, 1, 1, 1),
(3, '', 1, 1, 0, 3, '2018-12-13', '2019-02-14', 121212, 0, 1, 1, 1, 1),
(4, '', 1, 53, 0, 1, '2018-12-01', '2018-12-31', 454, 0, 1, 1, 1, 1),
(5, '', 1, 55, 0, 1, '2018-12-13', '2018-12-11', 2000, 0, 1, 1, 1, 0),
(6, '', 1, 0, 3, 1, '2018-12-01', '2018-12-11', 100, 0, 1, 1, 1, 0),
(7, '', 1, 53, 0, 2, '2018-12-01', '2018-12-31', 121, 0, 1, 1, 1, 1),
(8, '', 1, 55, 0, 3, '2018-12-01', '2018-12-31', 2006, 0, 1, 1, 1, 1),
(9, '', 1, 9, 0, 1, '2018-12-01', '2018-12-31', 1212, 0, 1, 1, 1, 1),
(11, '', 1, 47, 0, 1, '2018-12-01', '2018-12-31', 2000, 0, 1, 1, 1, 1),
(18, '', 1, 43, 0, 2, '2019-02-01', '2018-12-31', 105, 0, 1, 1, 1, 1),
(23, '', 1, 43, 0, 2, '2018-12-01', '2018-12-31', 0, 0, 1, 1, 1, 1),
(27, '', 1, 55, 0, 2, '2018-12-01', '2018-12-31', 100, 0, 1, 1, 1, 1),
(28, '', 1, 58, 0, 2, '2019-01-01', '2019-01-05', 200, 0, 1, 1, 1, 1),
(29, '', 1, 58, 0, 1, '2018-12-26', '2018-12-12', 2000, 0, 1, 1, 1, 1),
(30, 'New', 1, 58, 0, 3, '2019-01-01', '2019-01-05', 1200, 0, 1, 1, 1, 1),
(31, 'Fine', 1, 58, 0, 3, '2019-01-01', '2019-01-31', 300, 0, 1, 1, 1, 1),
(32, 'Late in attendance', 1, 58, 0, 2, '2019-01-01', '2019-01-31', 100, 0, 1, 1, 1, 1),
(38, 'Lunch Deduction Rule', 1, 58, 0, 3, '2019-01-01', '2019-01-31', 100, 1, 1, 1, 1, 1),
(39, 'Late in attendance', 1, 59, 0, 2, '2019-01-01', '2019-01-31', 100, 0, 1, 1, 1, 1),
(40, 'Lunch Deduction Rule', 1, 59, 0, 3, '2019-01-01', '2019-01-31', 100, 1, 1, 1, 1, 1),
(41, 'Late Deduction Rule', 1, 70, 0, 2, '2019-01-01', '2019-01-31', 100, 1, 1, 1, 1, 1),
(42, 'Lunch Deduction Rule', 1, 70, 0, 3, '2019-01-01', '2019-01-31', 10, 1, 1, 1, 1, 1),
(43, 'Absent', 1, 72, 0, 1, '2019-01-01', '2019-12-31', 893, 0, 1, 1, 1, 1),
(44, 'Late Present', 1, 72, 0, 2, '2019-02-01', '2019-12-31', 200, 1, 1, 1, 1, 1),
(45, 'Late Deduction Rule', 1, 72, 0, 2, '2019-02-01', '2019-02-28', 100, 0, 1, 1, 1, 1),
(46, 'Late Present', 1, 73, 0, 2, '2019-02-17', '2019-12-31', 300, 1, 1, 1, 1, 1),
(47, 'Late Present', 1, 74, 0, 2, '2019-02-17', '2019-12-31', 300, 1, 1, 1, 1, 1),
(48, 'Late Present Deduction', 1, 77, 0, 3, '2019-02-17', '2020-01-01', 300, 1, 1, 1, 1, 1),
(49, 'Lunch Late Deduction', 1, 77, 0, 3, '2019-02-17', '2020-01-01', 100, 1, 1, 1, 1, 1),
(50, 'Late Present Deduction', 1, 81, 0, 2, '2019-02-17', '2069-02-17', 300, 1, 1, 1, 1, 1),
(51, 'Lunch Late Deduction', 1, 81, 0, 3, '2019-02-17', '2069-02-17', 100, 1, 1, 1, 1, 1),
(52, 'Late Present Deduction', 1, 82, 0, 2, '2019-02-17', '2069-02-17', 300, 1, 1, 1, 1, 1),
(53, 'Lunch Late Deduction', 1, 82, 0, 3, '2019-02-17', '2069-02-17', 100, 1, 1, 1, 1, 1),
(54, 'Late Present Deduction', 1, 83, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(55, 'Lunch Late Deduction', 1, 83, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(56, 'Late Present Deduction', 1, 84, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(57, 'Lunch Late Deduction', 1, 84, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(58, 'Late Present Deduction', 1, 85, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(59, 'Lunch Late Deduction', 1, 85, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(60, 'Late Present Deduction', 1, 86, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(61, 'Lunch Late Deduction', 1, 86, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(62, 'Late Present Deduction', 1, 87, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(63, 'Lunch Late Deduction', 1, 87, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(64, 'Late Present Deduction', 1, 88, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(65, 'Lunch Late Deduction', 1, 88, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(66, 'Late Present Deduction', 1, 89, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(67, 'Lunch Late Deduction', 1, 89, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(68, 'Late Present Deduction', 1, 90, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(69, 'Lunch Late Deduction', 1, 90, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(70, 'Late Present Deduction', 1, 91, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(71, 'Lunch Late Deduction', 1, 91, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(72, 'Late Present Deduction', 1, 92, 0, 2, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(73, 'Lunch Late Deduction', 1, 92, 0, 3, '2019-02-18', '2069-02-18', 100, 1, 1, 1, 1, 1),
(74, 'Late Present Deduction', 1, 93, 0, 2, '2019-02-26', '2069-02-26', 300, 1, 1, 1, 1, 1),
(75, 'Lunch Late Deduction', 1, 93, 0, 3, '2019-02-26', '2069-02-26', 100, 1, 1, 1, 1, 1),
(78, 'Late Present Deduction', 1, 98, 0, 2, '2019-03-12', '2069-03-12', 300, 1, 1, 1, 1, 1),
(79, 'Lunch Late Deduction', 1, 98, 0, 3, '2019-03-12', '2069-03-12', 100, 1, 1, 1, 1, 1),
(80, 'Early Leave', 1, 1, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(81, 'Late Present', 1, 1, 0, 2, '2018-01-01', '2050-01-01', 300, 1, 1, 1, 1, 1),
(82, 'Early Leave', 1, 73, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(83, 'Late Present', 1, 73, 0, 3, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(84, 'Early Leave', 1, 81, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(85, 'Early Leave', 1, 82, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(86, 'Early Leave', 1, 84, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(87, 'Early Leave', 1, 85, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(88, 'Early Leave', 1, 86, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(89, 'Early Leave', 1, 87, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(90, 'Early Leave', 1, 88, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(91, 'Early Leave', 1, 89, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(92, 'Early Leave', 1, 90, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(93, 'Early Leave', 1, 91, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1),
(94, 'Early Leave', 1, 92, 0, 4, '2018-01-01', '2050-01-01', 100, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deduction_transactions`
--

CREATE TABLE `deduction_transactions` (
  `deductionTransactionID` int(11) NOT NULL,
  `deductionID` int(11) DEFAULT NULL,
  `employeeID` int(11) DEFAULT NULL COMMENT 'profile id',
  `deductionAmount` float DEFAULT NULL,
  `deductionDate` date DEFAULT NULL,
  `deductionEndDate` date DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  `applicationID` int(11) DEFAULT NULL,
  `minutes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deduction_transactions`
--

INSERT INTO `deduction_transactions` (`deductionTransactionID`, `deductionID`, `employeeID`, `deductionAmount`, `deductionDate`, `deductionEndDate`, `companyID`, `branchID`, `applicationID`, `minutes`) VALUES
(1, NULL, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(2, 3, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(3, 46, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(4, NULL, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(5, 50, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(6, 51, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(7, 52, 82, 110, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(8, 53, 82, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(9, 56, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(10, 57, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(11, 58, 85, 131, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(12, 59, 85, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(13, 60, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(14, 61, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(15, 62, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(16, 63, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(17, 64, 88, 1133, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(18, 65, 88, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(19, 66, 89, 87, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(20, 67, 89, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(21, 68, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(22, 69, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(23, 70, 91, 40, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(24, 71, 91, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(25, 72, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(26, 73, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(27, NULL, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(28, 3, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(29, 46, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(30, NULL, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(31, 50, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(32, 51, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(33, 52, 82, 110, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(34, 53, 82, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(35, 56, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(36, 57, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(37, 58, 85, 131, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(38, 59, 85, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(39, 60, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(40, 61, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(41, 62, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(42, 63, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(43, 64, 88, 1133, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(44, 65, 88, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(45, 66, 89, 87, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(46, 67, 89, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(47, 68, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(48, 69, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(49, 70, 91, 40, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(50, 71, 91, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(51, 72, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(52, 73, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(53, NULL, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(54, 3, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(55, 46, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(56, NULL, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(57, 50, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(58, 51, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(59, 52, 82, 110, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(60, 53, 82, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(61, 56, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(62, 57, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(63, 58, 85, 131, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(64, 59, 85, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(65, 60, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(66, 61, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(67, 62, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(68, 63, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(69, 64, 88, 1133, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(70, 65, 88, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(71, 66, 89, 87, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(72, 67, 89, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(73, 68, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(74, 69, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(75, 70, 91, 40, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(76, 71, 91, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(77, 72, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(78, 73, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(79, 81, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(80, 80, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(81, 3, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(82, 46, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(83, 82, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(84, 83, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(85, 50, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(86, 84, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(87, 51, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(88, 52, 82, 110, '2019-03-14', '2019-03-20', 1, 1, 1, 34),
(89, 85, 82, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(90, 53, 82, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(91, 56, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(92, 86, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(93, 57, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(94, 58, 85, 131, '2019-03-14', '2019-03-20', 1, 1, 1, 87),
(95, 87, 85, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(96, 59, 85, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(97, 60, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(98, 88, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(99, 61, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(100, 62, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(101, 89, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(102, 63, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(103, 64, 88, 1133, '2019-03-14', '2019-03-20', 1, 1, 1, 344),
(104, 90, 88, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(105, 65, 88, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(106, 66, 89, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(107, 91, 89, 87, '2019-03-14', '2019-03-20', 1, 1, 1, 197),
(108, 67, 89, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(109, 68, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(110, 92, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(111, 69, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(112, 70, 91, 40, '2019-03-14', '2019-03-20', 1, 1, 1, 35),
(113, 93, 91, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(114, 71, 91, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(115, 72, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(116, 94, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(117, 73, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(118, 81, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(119, 80, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(120, 3, 1, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(121, 46, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(122, 82, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(123, 83, 73, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(124, 50, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(125, 84, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(126, 51, 81, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(127, 52, 82, 110, '2019-03-14', '2019-03-20', 1, 1, 1, 34),
(128, 85, 82, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(129, 53, 82, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(130, 56, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(131, 86, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(132, 57, 84, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(133, 58, 85, 131, '2019-03-14', '2019-03-20', 1, 1, 1, 87),
(134, 87, 85, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(135, 59, 85, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(136, 60, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(137, 88, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(138, 61, 86, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(139, 62, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(140, 89, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(141, 63, 87, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(142, 64, 88, 1133, '2019-03-14', '2019-03-20', 1, 1, 1, 344),
(143, 90, 88, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(144, 65, 88, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(145, 66, 89, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(146, 91, 89, 87, '2019-03-14', '2019-03-20', 1, 1, 1, 197),
(147, 67, 89, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(148, 68, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(149, 92, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(150, 69, 90, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(151, 70, 91, 40, '2019-03-14', '2019-03-20', 1, 1, 1, 35),
(152, 93, 91, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(153, 71, 91, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(154, 72, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(155, 94, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0),
(156, 73, 92, 0, '2019-03-14', '2019-03-20', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deduction_types`
--

CREATE TABLE `deduction_types` (
  `deductionTypeID` int(11) NOT NULL,
  `deductionType` varchar(255) NOT NULL,
  `deductionTypeDescription` text NOT NULL,
  `deductionTypeStatus` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deduction_types`
--

INSERT INTO `deduction_types` (`deductionTypeID`, `deductionType`, `deductionTypeDescription`, `deductionTypeStatus`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 'Absent', '&lt;p&gt;Preventive Health Check-ups&lt;/p&gt;', 0, 1, 1, 1),
(2, 'Late Present', '&lt;p&gt;Mutual Funds &amp;amp; ELSS&lt;/p&gt;', 1, 1, 1, 1),
(3, 'Lunch Late', '&lt;p&gt;Lunch Late&lt;/p&gt;', 1, 1, 1, 1),
(4, 'Early Leave', '&lt;p&gt;Early Leave&lt;/p&gt;', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `departmentID` int(11) NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  `departmentRemarks` text,
  `status` tinyint(4) NOT NULL COMMENT '1=Active|0=trash',
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`departmentID`, `departmentName`, `departmentRemarks`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 'New Department', '&lt;p&gt;Write something about department 3&lt;/p&gt;', 0, 1, 1, 1),
(2, 'Account', '&lt;p&gt;Account Department&lt;/p&gt;', 1, 1, 1, 1),
(3, 'Design', '&lt;p&gt;Design&lt;/p&gt;', 1, 1, 1, 1),
(4, 'Rashed Screw Center', '&lt;p&gt;Write something about department&lt;/p&gt;', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE `document_types` (
  `documentTypeID` int(11) NOT NULL,
  `documentTypeName` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`documentTypeID`, `documentTypeName`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 'Experience Certificate', 1, 1, 1, 1),
(2, 'Educational Certificate', 1, 1, 1, 1),
(3, 'NID', 1, 1, 1, 1),
(4, 'Birth Certificate', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL,
  `employee_fname` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `employee_lname` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `designation` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `storeID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_allowance`
--

CREATE TABLE `employee_allowance` (
  `allowanceID` int(11) NOT NULL,
  `allowanceTitle` varchar(255) NOT NULL,
  `applicableType` tinyint(4) NOT NULL COMMENT '1=Employee|0=Designation',
  `employeeID` int(11) NOT NULL,
  `designationID` int(11) NOT NULL,
  `allowanceTypeID` int(11) NOT NULL,
  `allowanceEffectiveDate` date NOT NULL,
  `allowanceEndDate` date NOT NULL,
  `allowanceAmount` float NOT NULL,
  `isPercentage` int(11) NOT NULL DEFAULT '0' COMMENT 'is amount percentage or neat amount per minute',
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=Active | 0 = delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_allowance`
--

INSERT INTO `employee_allowance` (`allowanceID`, `allowanceTitle`, `applicableType`, `employeeID`, `designationID`, `allowanceTypeID`, `allowanceEffectiveDate`, `allowanceEndDate`, `allowanceAmount`, `isPercentage`, `companyID`, `branchID`, `applicationID`, `status`) VALUES
(17, 'Overtime Duty', 1, 58, 0, 7, '2019-01-01', '2019-01-31', 200, 0, 1, 1, 1, 1),
(18, 'Overtime Duty', 1, 68, 0, 7, '2019-01-01', '2019-01-31', 200, 0, 1, 1, 1, 0),
(19, 'Overtime Duty', 1, 69, 0, 7, '2019-01-01', '2019-01-31', 200, 0, 1, 1, 1, 0),
(20, 'Overtime Duty', 1, 59, 0, 7, '2019-01-01', '2019-01-31', 200, 1, 1, 1, 1, 1),
(21, 'Overtime Duty', 1, 70, 0, 7, '2019-01-01', '2019-01-31', 10, 1, 1, 1, 1, 1),
(22, 'OT', 1, 72, 0, 7, '2019-02-01', '2019-12-25', 100, 1, 1, 1, 1, 1),
(23, 'Overtime Duty', 1, 72, 0, 7, '2019-02-01', '2019-02-28', 100, 1, 1, 1, 1, 1),
(24, 'Overtime', 1, 73, 0, 7, '2019-02-17', '2019-12-31', 300, 1, 1, 1, 1, 1),
(25, 'Overtime', 1, 74, 0, 7, '2019-02-17', '2019-12-31', 300, 1, 1, 1, 1, 1),
(26, 'Overtime Duty', 1, 77, 0, 7, '2019-02-17', '2020-01-01', 300, 1, 1, 1, 1, 1),
(27, 'Overtime Duty', 1, 81, 0, 7, '2019-02-17', '2069-02-17', 300, 1, 1, 1, 1, 1),
(28, 'Overtime Duty', 1, 82, 0, 7, '2019-02-17', '2069-02-17', 300, 1, 1, 1, 1, 1),
(29, 'Overtime Duty', 1, 1, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(30, 'Tiffin', 1, 1, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(31, 'Tiffin', 1, 82, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(32, 'Tiffin', 1, 73, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(33, 'Tiffin', 1, 81, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(34, 'Overtime Duty', 1, 84, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(35, 'Tiffin', 1, 84, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(36, 'Overtime Duty', 1, 85, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(37, 'Tiffin', 1, 85, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(38, 'Overtime Duty', 1, 86, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(39, 'Tiffin', 1, 86, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(40, 'Overtime Duty', 1, 87, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(41, 'Tiffin', 1, 87, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(42, 'Overtime Duty', 1, 88, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(43, 'Overtime Duty', 1, 89, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(44, 'Tiffin', 1, 89, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(45, 'Overtime Duty', 1, 90, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(46, 'Tiffin', 1, 90, 0, 8, '2019-03-20', '2021-01-01', 20, 0, 1, 1, 1, 1),
(47, 'Overtime Duty', 1, 91, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(48, 'Tiffin', 1, 91, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(49, 'Overtime Duty', 1, 92, 0, 7, '2019-02-18', '2069-02-18', 300, 1, 1, 1, 1, 1),
(50, 'Tiffin', 1, 92, 0, 8, '2019-02-18', '2021-01-01', 20, 0, 1, 1, 1, 1),
(51, 'Overtime Duty', 1, 93, 0, 7, '2019-02-26', '2069-02-26', 300, 1, 1, 1, 1, 1),
(53, 'Overtime Duty', 1, 98, 0, 7, '2019-03-12', '2069-03-12', 300, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_bank_accounts`
--

CREATE TABLE `employee_bank_accounts` (
  `SL` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL COMMENT 'user profile_id',
  `bankName` varchar(255) NOT NULL,
  `bankAccountName` varchar(255) NOT NULL,
  `bankBranch` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_bank_accounts`
--

INSERT INTO `employee_bank_accounts` (`SL`, `employeeID`, `bankName`, `bankAccountName`, `bankBranch`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(2, 53, 'Shonali Bank', 'Maniruzzaman AKash', 'Gulshan', 1, 1, 1, 1),
(3, 58, 'Rupali Bank', 'Polash', 'Gulshan', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `SL` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `documentTypeID` int(11) NOT NULL,
  `documentName` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `documentCreateDate` datetime NOT NULL,
  `documentIssueDate` date DEFAULT NULL,
  `documentExpireDate` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_documents`
--

INSERT INTO `employee_documents` (`SL`, `employeeID`, `documentTypeID`, `documentName`, `attachment`, `documentCreateDate`, `documentIssueDate`, `documentExpireDate`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(3, 53, 3, 'NID', 'doc-53879265560.png', '2018-12-19 00:00:00', '2018-12-01', '2018-12-31', 1, 1, 1, 1),
(4, 69, 3, 'NID', 'doc-691050919244.jpg', '2019-01-16 02:09:56', '2019-01-01', '2019-01-31', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `SL` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `duration` float NOT NULL COMMENT 'in year',
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `remarks` text,
  `designation` varchar(255) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`SL`, `employeeID`, `companyName`, `duration`, `startDate`, `endDate`, `remarks`, `designation`, `companyID`, `branchID`, `applicationID`) VALUES
(2, 53, 'Modina Group', 1.5, '2017-10-01', '2018-11-01', '', 'Sales Executive', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_messages`
--

CREATE TABLE `employee_messages` (
  `ID` int(11) NOT NULL,
  `message` text NOT NULL,
  `senderEmployeeID` int(11) NOT NULL,
  `receiverEmployeeID` int(11) NOT NULL,
  `sendDateTime` datetime NOT NULL,
  `receivedDateTime` datetime DEFAULT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_messages`
--

INSERT INTO `employee_messages` (`ID`, `message`, `senderEmployeeID`, `receiverEmployeeID`, `sendDateTime`, `receivedDateTime`, `companyID`, `branchID`, `applicationID`) VALUES
(40, '<p>Hello</p>', 23, 53, '2018-12-25 01:59:34', '2018-12-25 01:59:45', 1, 1, 1),
(41, '<p>Ki</p>', 53, 23, '2018-12-25 01:59:51', '2018-12-25 02:00:02', 1, 1, 1),
(42, '<p>Say quick</p>', 53, 23, '2018-12-25 02:00:46', '2018-12-25 02:06:39', 1, 1, 1),
(43, '<p>Download this file</p>', 23, 53, '2018-12-25 02:01:09', NULL, 1, 1, 1),
(44, '<p>Ok</p>', 53, 23, '2018-12-25 02:01:23', '2018-12-25 02:06:39', 1, 1, 1),
(45, '<p>H</p>', 23, 53, '2018-12-25 02:06:16', NULL, 1, 1, 1),
(46, '<p>sdsd</p>', 23, 53, '2018-12-25 02:06:21', NULL, 1, 1, 1),
(47, '<p>Je;;p</p>', 23, 53, '2018-12-25 02:06:46', NULL, 1, 1, 1),
(48, '<p>Hello</p>', 23, 26, '2018-12-25 02:49:28', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `salaryID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `salaryGradeID` int(11) NOT NULL,
  `salaryTypeID` int(11) NOT NULL,
  `basicSalary` float NOT NULL,
  `effectiveDate` varchar(100) DEFAULT NULL,
  `endDate` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`salaryID`, `employeeID`, `salaryGradeID`, `salaryTypeID`, `basicSalary`, `effectiveDate`, `endDate`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 53, 0, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(2, 1, 0, 4, 12121, '2019-01-01', '2020-12-31', 1, 1, 0, 0),
(3, 1, 0, 4, 1212, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(4, 50, 0, 1, 220000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(5, 53, 3, 4, 18000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(6, 53, 0, 4, 25000, '2019-01-01', '2020-12-31', 0, 1, 0, 0),
(7, 53, 3, 4, 18000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(8, 55, 0, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(9, 55, 0, 4, 30000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(10, 55, 2, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(11, 55, 2, 4, 30000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(12, 55, 3, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(13, 55, 3, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(14, 54, 3, 3, 5000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(15, 51, 3, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(16, 56, 3, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(17, 35, 2, 4, 100, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(18, 23, 3, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(24, 58, 2, 1, 100, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(25, 58, 3, 3, 5000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(26, 46, 3, 3, 5000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(27, 68, 3, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(28, 69, 3, 4, 18000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(29, 59, 3, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(30, 70, 3, 4, 20000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(31, 71, 2, 2, 100, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(32, 72, 2, 3, 6250, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(33, 73, 2, 3, 5870, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(34, 74, 2, 3, 4500, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(35, 58, 3, 3, 5000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(36, 77, 2, 3, 6000, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(37, 81, 2, 3, 4870, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(38, 82, 2, 3, 4620, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(39, 1, 2, 3, 4740, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(40, 84, 2, 3, 3620, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(41, 85, 3, 3, 2120, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(42, 86, 3, 3, 1740, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(43, 87, 2, 3, 4620, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(44, 88, 2, 3, 4620, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(45, 89, 2, 3, 1870, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(46, 90, 2, 3, 2620, '2019-01-01', '2020-12-31', 1, 1, 1, 1),
(47, 92, 2, 3, 1620, '2019-01-01', '2021-08-31', 1, 1, 1, 1),
(49, 98, 2, 3, 6250, '2019-02-01', '2019-03-13', 1, 1, 1, 1),
(52, 91, 2, 3, 1620, '2019-03-14', '2021-03-24', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_reports`
--

CREATE TABLE `employee_salary_reports` (
  `SL` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `generatedDate` date NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `basicSalary` float NOT NULL,
  `salary` float NOT NULL,
  `workingDays` int(11) NOT NULL,
  `daysPayable` int(11) NOT NULL,
  `totalDeduction` int(11) NOT NULL,
  `totalAllowance` int(11) NOT NULL,
  `deductionTrxIDs` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `allowanceTrxIDs` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `netPayable` float NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `employee_salary_reports`
--

INSERT INTO `employee_salary_reports` (`SL`, `employeeID`, `generatedDate`, `startDate`, `endDate`, `basicSalary`, `salary`, `workingDays`, `daysPayable`, `totalDeduction`, `totalAllowance`, `deductionTrxIDs`, `allowanceTrxIDs`, `netPayable`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 73, '2019-03-16', '2019-03-09', '2019-03-13', 5870, 4193, 5, 3, 1677, 569, '1', '1', 3085, 1, 1, 1),
(2, 81, '2019-03-16', '2019-03-09', '2019-03-13', 4870, 3479, 5, 5, 0, 783, '3,4', '2', 4262, 1, 1, 1),
(3, 82, '2019-03-16', '2019-03-09', '2019-03-13', 4620, 3300, 5, 5, 144, 529, '5,6', '3', 3685, 1, 1, 1),
(4, 83, '2019-03-16', '2019-03-09', '2019-03-13', 4740, 3386, 5, 2, 2032, 278, '7,8', '4', 1632, 1, 1, 1),
(5, 84, '2019-03-16', '2019-03-09', '2019-03-13', 3620, 2586, 5, 5, 28, 562, '9,10', '5', 3120, 1, 1, 1),
(6, 85, '2019-03-16', '2019-03-09', '2019-03-13', 2120, 1514, 5, 5, 179, 329, '11,12', '6', 1664, 1, 1, 1),
(7, 86, '2019-03-16', '2019-03-09', '2019-03-13', 1740, 1243, 5, 1, 994, 40, '13,14', '7', 289, 1, 1, 1),
(8, 87, '2019-03-16', '2019-03-09', '2019-03-13', 4620, 3300, 5, 0, 3300, 0, '15,16', '', 0, 1, 1, 1),
(9, 88, '2019-03-16', '2019-03-09', '2019-03-13', 4620, 3300, 5, 2, 2729, 247, '17,18', '8', 818, 1, 1, 1),
(10, 89, '2019-03-16', '2019-03-09', '2019-03-13', 1870, 1336, 5, 3, 535, 0, '19,20', '', 801, 1, 1, 1),
(11, 90, '2019-03-16', '2019-03-09', '2019-03-13', 2620, 1871, 5, 0, 1871, 0, '21,22', '', 0, 1, 1, 1),
(12, 92, '2019-03-16', '2019-03-09', '2019-03-13', 1620, 1157, 5, 5, 0, 248, '23,24', '9', 1405, 1, 1, 1),
(13, 1, '2019-03-21', '2019-03-14', '2019-03-21', 4740, 5417, 8, 7, 677, 0, '2', '', 4740, 1, 1, 1),
(14, 73, '2019-03-21', '2019-03-14', '2019-03-21', 5870, 6709, 8, 7, 839, 160, '3', '1', 6030, 1, 1, 1),
(15, 81, '2019-03-21', '2019-03-14', '2019-03-21', 4870, 5566, 8, 7, 696, 90, '5,6', '2', 4960, 1, 1, 1),
(16, 82, '2019-03-21', '2019-03-14', '2019-03-21', 4620, 5280, 8, 7, 770, 0, '7,8', '', 4510, 1, 1, 1),
(17, 84, '2019-03-21', '2019-03-14', '2019-03-21', 3620, 4137, 8, 7, 517, 0, '9,10', '', 3620, 1, 1, 1),
(18, 85, '2019-03-21', '2019-03-14', '2019-03-21', 2120, 2423, 8, 6, 760, 17, '11,12', '3', 1680, 1, 1, 1),
(19, 86, '2019-03-21', '2019-03-14', '2019-03-21', 1740, 1989, 8, 6, 498, 0, '13,14', '', 1491, 1, 1, 1),
(20, 87, '2019-03-21', '2019-03-14', '2019-03-21', 4620, 5280, 8, 2, 3960, 0, '15,16', '', 1320, 1, 1, 1),
(21, 88, '2019-03-21', '2019-03-14', '2019-03-21', 4620, 5280, 8, 7, 1932, 630, '17,18', '4', 3978, 1, 1, 1),
(22, 89, '2019-03-21', '2019-03-14', '2019-03-21', 1870, 2137, 8, 7, 267, 0, '19,20', '', 1870, 1, 1, 1),
(23, 90, '2019-03-21', '2019-03-14', '2019-03-21', 2620, 2994, 8, 6, 748, 0, '21,22', '', 2246, 1, 1, 1),
(24, 92, '2019-03-21', '2019-03-14', '2019-03-21', 1620, 1851, 8, 6, 462, 0, '23,24', '', 1389, 1, 1, 1),
(25, 1, '2019-03-21', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '26', '', 4740, 1, 1, 1),
(26, 73, '2019-03-21', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 160, '27', '5', 6030, 1, 1, 1),
(27, 81, '2019-03-21', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 90, '29,30', '6', 4960, 1, 1, 1),
(28, 82, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 0, '31,32', '', 4510, 1, 1, 1),
(29, 84, '2019-03-21', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 0, '33,34', '', 3620, 1, 1, 1),
(30, 85, '2019-03-21', '2019-03-14', '2019-03-20', 2120, 2120, 7, 6, 434, 17, '35,36', '7', 1703, 1, 1, 1),
(31, 86, '2019-03-21', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 0, '37,38', '', 1491, 1, 1, 1),
(32, 87, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '39,40', '', 1320, 1, 1, 1),
(33, 88, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 630, '41,42', '8', 4117, 1, 1, 1),
(34, 89, '2019-03-21', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 0, 0, '43,44', '', 1870, 1, 1, 1),
(35, 90, '2019-03-21', '2019-03-14', '2019-03-20', 2620, 2620, 7, 6, 374, 0, '45,46', '', 2246, 1, 1, 1),
(36, 92, '2019-03-21', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 0, '47,48', '', 1389, 1, 1, 1),
(37, 1, '2019-03-21', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '50', '', 4740, 1, 1, 1),
(38, 73, '2019-03-21', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 160, '51', '9', 6030, 1, 1, 1),
(39, 81, '2019-03-21', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 90, '53,54', '10', 4960, 1, 1, 1),
(40, 82, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 0, '55,56', '', 4510, 1, 1, 1),
(41, 84, '2019-03-21', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 0, '57,58', '', 3620, 1, 1, 1),
(42, 85, '2019-03-21', '2019-03-14', '2019-03-20', 2120, 2120, 7, 6, 434, 17, '59,60', '11', 1703, 1, 1, 1),
(43, 86, '2019-03-21', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 0, '61,62', '', 1491, 1, 1, 1),
(44, 87, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '63,64', '', 1320, 1, 1, 1),
(45, 88, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 630, '65,66', '12', 4117, 1, 1, 1),
(46, 89, '2019-03-21', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 0, 0, '67,68', '', 1870, 1, 1, 1),
(47, 90, '2019-03-21', '2019-03-14', '2019-03-20', 2620, 2620, 7, 6, 374, 0, '69,70', '', 2246, 1, 1, 1),
(48, 92, '2019-03-21', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 0, '71,72', '', 1389, 1, 1, 1),
(49, 1, '2019-03-21', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '74', '', 4740, 1, 1, 1),
(50, 73, '2019-03-21', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 160, '75', '13', 6030, 1, 1, 1),
(51, 81, '2019-03-21', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 90, '77,78', '14', 4960, 1, 1, 1),
(52, 82, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 0, '79,80', '', 4510, 1, 1, 1),
(53, 84, '2019-03-21', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 0, '81,82', '', 3620, 1, 1, 1),
(54, 85, '2019-03-21', '2019-03-14', '2019-03-20', 2120, 2120, 7, 6, 434, 17, '83,84', '15', 1703, 1, 1, 1),
(55, 86, '2019-03-21', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 0, '85,86', '', 1491, 1, 1, 1),
(56, 87, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '87,88', '', 1320, 1, 1, 1),
(57, 88, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 630, '89,90', '16', 4117, 1, 1, 1),
(58, 89, '2019-03-21', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 0, 0, '91,92', '', 1870, 1, 1, 1),
(59, 90, '2019-03-21', '2019-03-14', '2019-03-20', 2620, 2620, 7, 6, 374, 0, '93,94', '', 2246, 1, 1, 1),
(60, 92, '2019-03-21', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 0, '95,96', '', 1389, 1, 1, 1),
(61, 1, '2019-03-21', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '98', '', 4740, 1, 1, 1),
(62, 73, '2019-03-21', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 160, '99', '17', 6030, 1, 1, 1),
(63, 81, '2019-03-21', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 90, '101,102', '18', 4960, 1, 1, 1),
(64, 82, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 0, '103,104', '', 4510, 1, 1, 1),
(65, 84, '2019-03-21', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 0, '105,106', '', 3620, 1, 1, 1),
(66, 85, '2019-03-21', '2019-03-14', '2019-03-20', 2120, 2120, 7, 6, 434, 17, '107,108', '19', 1703, 1, 1, 1),
(67, 86, '2019-03-21', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 0, '109,110', '', 1491, 1, 1, 1),
(68, 87, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '111,112', '', 1320, 1, 1, 1),
(69, 88, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 630, '113,114', '20', 4117, 1, 1, 1),
(70, 89, '2019-03-21', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 0, 0, '115,116', '', 1870, 1, 1, 1),
(71, 90, '2019-03-21', '2019-03-14', '2019-03-20', 2620, 2620, 7, 6, 374, 0, '117,118', '', 2246, 1, 1, 1),
(72, 91, '2019-03-21', '2019-03-14', '2019-03-20', 1620, 1620, 7, 4, 734, 0, '119,120', '', 886, 1, 1, 1),
(73, 92, '2019-03-21', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 0, '121,122', '', 1389, 1, 1, 1),
(74, 1, '2019-03-21', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '124', '', 4740, 1, 1, 1),
(75, 73, '2019-03-21', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 160, '125', '21', 6030, 1, 1, 1),
(76, 81, '2019-03-21', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 90, '127,128', '22', 4960, 1, 1, 1),
(77, 82, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 0, '129,130', '', 4510, 1, 1, 1),
(78, 84, '2019-03-21', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 0, '131,132', '', 3620, 1, 1, 1),
(79, 85, '2019-03-21', '2019-03-14', '2019-03-20', 2120, 2120, 7, 6, 434, 17, '133,134', '23', 1703, 1, 1, 1),
(80, 86, '2019-03-21', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 0, '135,136', '', 1491, 1, 1, 1),
(81, 87, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '137,138', '', 1320, 1, 1, 1),
(82, 88, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 630, '139,140', '24', 4117, 1, 1, 1),
(83, 89, '2019-03-21', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 0, 0, '141,142', '', 1870, 1, 1, 1),
(84, 90, '2019-03-21', '2019-03-14', '2019-03-20', 2620, 2620, 7, 6, 374, 0, '143,144', '', 2246, 1, 1, 1),
(85, 91, '2019-03-21', '2019-03-14', '2019-03-20', 1620, 1620, 7, 4, 734, 0, '145,146', '', 886, 1, 1, 1),
(86, 92, '2019-03-21', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 0, '147,148', '', 1389, 1, 1, 1),
(87, 1, '2019-03-21', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '151', '', 4740, 1, 1, 1),
(88, 73, '2019-03-21', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 341, 160, '152', '25', 5689, 1, 1, 1),
(89, 81, '2019-03-21', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 300, 90, '154,155', '26', 4660, 1, 1, 1),
(90, 82, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 357, 0, '156,157', '', 4263, 1, 1, 1),
(91, 84, '2019-03-21', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 237, 0, '158,159', '', 3383, 1, 1, 1),
(92, 85, '2019-03-21', '2019-03-14', '2019-03-20', 2120, 2120, 7, 6, 558, 17, '160,161', '27', 1579, 1, 1, 1),
(93, 86, '2019-03-21', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 341, 0, '162,163', '', 1399, 1, 1, 1),
(94, 87, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '164,165', '', 1320, 1, 1, 1),
(95, 88, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1314, 630, '166,167', '28', 3936, 1, 1, 1),
(96, 1, '2019-03-21', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '171', '', 4740, 1, 1, 1),
(97, 73, '2019-03-21', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 341, 160, '172', '29', 5689, 1, 1, 1),
(98, 81, '2019-03-21', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 300, 90, '174,175', '30', 4660, 1, 1, 1),
(99, 82, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 357, 0, '176,177', '', 4263, 1, 1, 1),
(100, 84, '2019-03-21', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 237, 0, '178,179', '', 3383, 1, 1, 1),
(101, 85, '2019-03-21', '2019-03-14', '2019-03-20', 2120, 2120, 7, 6, 558, 17, '180,181', '31', 1579, 1, 1, 1),
(102, 86, '2019-03-21', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 341, 0, '182,183', '', 1399, 1, 1, 1),
(103, 87, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '184,185', '', 1320, 1, 1, 1),
(104, 88, '2019-03-21', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1314, 630, '186,187', '32', 3936, 1, 1, 1),
(105, 1, '2019-03-23', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '2', '', 4740, 1, 1, 1),
(106, 73, '2019-03-23', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 160, '3', '1', 6030, 1, 1, 1),
(107, 81, '2019-03-23', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 90, '5,6', '2', 4960, 1, 1, 1),
(108, 82, '2019-03-23', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 0, '7,8', '', 4510, 1, 1, 1),
(109, 84, '2019-03-23', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 0, '9,10', '', 3620, 1, 1, 1),
(110, 85, '2019-03-23', '2019-03-14', '2019-03-20', 2120, 2120, 7, 6, 434, 17, '11,12', '3', 1703, 1, 1, 1),
(111, 86, '2019-03-23', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 0, '13,14', '', 1491, 1, 1, 1),
(112, 87, '2019-03-23', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '15,16', '', 1320, 1, 1, 1),
(113, 88, '2019-03-23', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 630, '17,18', '4', 4117, 1, 1, 1),
(114, 89, '2019-03-23', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 87, 0, '19,20', '', 1783, 1, 1, 1),
(115, 90, '2019-03-23', '2019-03-14', '2019-03-20', 2620, 2620, 7, 6, 374, 0, '21,22', '', 2246, 1, 1, 1),
(116, 91, '2019-03-23', '2019-03-14', '2019-03-20', 1620, 1620, 7, 4, 734, 0, '23,24', '', 886, 1, 1, 1),
(117, 92, '2019-03-23', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 0, '25,26', '', 1389, 1, 1, 1),
(118, 1, '2019-03-23', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '28', '', 4740, 1, 1, 1),
(119, 73, '2019-03-23', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 160, '29', '5', 6030, 1, 1, 1),
(120, 81, '2019-03-23', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 90, '31,32', '6', 4960, 1, 1, 1),
(121, 82, '2019-03-23', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 0, '33,34', '', 4510, 1, 1, 1),
(122, 84, '2019-03-23', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 0, '35,36', '', 3620, 1, 1, 1),
(123, 85, '2019-03-23', '2019-03-14', '2019-03-20', 2120, 2120, 7, 7, 131, 39, '37,38', '7', 2028, 1, 1, 1),
(124, 86, '2019-03-23', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 0, '39,40', '', 1491, 1, 1, 1),
(125, 87, '2019-03-23', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '41,42', '', 1320, 1, 1, 1),
(126, 88, '2019-03-23', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 630, '43,44', '8', 4117, 1, 1, 1),
(127, 89, '2019-03-23', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 87, 0, '45,46', '', 1783, 1, 1, 1),
(128, 90, '2019-03-23', '2019-03-14', '2019-03-20', 2620, 2620, 7, 7, 0, 0, '47,48', '', 2620, 1, 1, 1),
(129, 91, '2019-03-23', '2019-03-14', '2019-03-20', 1620, 1620, 7, 4, 734, 0, '49,50', '', 886, 1, 1, 1),
(130, 92, '2019-03-23', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 0, '51,52', '', 1389, 1, 1, 1),
(131, 1, '2019-03-23', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '54', '', 4740, 1, 1, 1),
(132, 73, '2019-03-23', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 160, '55', '9', 6030, 1, 1, 1),
(133, 81, '2019-03-23', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 90, '57,58', '10', 4960, 1, 1, 1),
(134, 82, '2019-03-23', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 0, '59,60', '', 4510, 1, 1, 1),
(135, 84, '2019-03-23', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 0, '61,62', '', 3620, 1, 1, 1),
(136, 85, '2019-03-23', '2019-03-14', '2019-03-20', 2120, 2120, 7, 7, 131, 39, '63,64', '11', 2028, 1, 1, 1),
(137, 86, '2019-03-23', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 0, '65,66', '', 1491, 1, 1, 1),
(138, 87, '2019-03-23', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '67,68', '', 1320, 1, 1, 1),
(139, 88, '2019-03-23', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 630, '69,70', '12', 4117, 1, 1, 1),
(140, 89, '2019-03-23', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 87, 0, '71,72', '', 1783, 1, 1, 1),
(141, 90, '2019-03-23', '2019-03-14', '2019-03-20', 2620, 2620, 7, 7, 0, 112, '73,74', '13', 2732, 1, 1, 1),
(142, 91, '2019-03-23', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 271, 0, '75,76', '', 1349, 1, 1, 1),
(143, 92, '2019-03-23', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 0, '77,78', '', 1389, 1, 1, 1),
(144, 1, '2019-03-25', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '79,81,80', '14', 4740, 1, 1, 1),
(145, 73, '2019-03-25', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 160, '82,84,83', '15', 6030, 1, 1, 1),
(146, 81, '2019-03-25', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 90, '85,87,86', '16', 4960, 1, 1, 1),
(147, 82, '2019-03-25', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 0, '88,90,89', '17', 4510, 1, 1, 1),
(148, 84, '2019-03-25', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 0, '91,93,92', '18', 3620, 1, 1, 1),
(149, 85, '2019-03-25', '2019-03-14', '2019-03-20', 2120, 2120, 7, 7, 131, 39, '94,96,95', '19', 2028, 1, 1, 1),
(150, 86, '2019-03-25', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 0, '97,99,98', '20', 1491, 1, 1, 1),
(151, 87, '2019-03-25', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '100,102,101', '21', 1320, 1, 1, 1),
(152, 88, '2019-03-25', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 630, '103,105,104', '22', 4117, 1, 1, 1),
(153, 89, '2019-03-25', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 87, 0, '106,108,107', '23', 1783, 1, 1, 1),
(154, 90, '2019-03-25', '2019-03-14', '2019-03-20', 2620, 2620, 7, 7, 0, 112, '109,111,110', '24', 2732, 1, 1, 1),
(155, 91, '2019-03-25', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 271, 0, '112,114,113', '25', 1349, 1, 1, 1),
(156, 92, '2019-03-25', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 0, '115,117,116', '26', 1389, 1, 1, 1),
(157, 1, '2019-03-25', '2019-03-14', '2019-03-20', 4740, 4740, 7, 7, 0, 0, '118,120,119', '27', 4740, 1, 1, 1),
(158, 73, '2019-03-25', '2019-03-14', '2019-03-20', 5870, 5870, 7, 7, 0, 214, '121,123,122', '28', 6084, 1, 1, 1),
(159, 81, '2019-03-25', '2019-03-14', '2019-03-20', 4870, 4870, 7, 7, 0, 125, '124,126,125', '29', 4995, 1, 1, 1),
(160, 82, '2019-03-25', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 110, 36, '127,129,128', '30', 4546, 1, 1, 1),
(161, 84, '2019-03-25', '2019-03-14', '2019-03-20', 3620, 3620, 7, 7, 0, 49, '130,132,131', '31', 3669, 1, 1, 1),
(162, 85, '2019-03-25', '2019-03-14', '2019-03-20', 2120, 2120, 7, 7, 131, 72, '133,135,134', '32', 2061, 1, 1, 1),
(163, 86, '2019-03-25', '2019-03-14', '2019-03-20', 1740, 1740, 7, 6, 249, 15, '136,138,137', '33', 1506, 1, 1, 1),
(164, 87, '2019-03-25', '2019-03-14', '2019-03-20', 4620, 4620, 7, 2, 3300, 0, '139,141,140', '34', 1320, 1, 1, 1),
(165, 88, '2019-03-25', '2019-03-14', '2019-03-20', 4620, 4620, 7, 7, 1133, 637, '142,144,143', '35', 4124, 1, 1, 1),
(166, 89, '2019-03-25', '2019-03-14', '2019-03-20', 1870, 1870, 7, 7, 87, 0, '145,147,146', '36', 1783, 1, 1, 1),
(167, 90, '2019-03-25', '2019-03-14', '2019-03-20', 2620, 2620, 7, 7, 0, 130, '148,150,149', '37', 2750, 1, 1, 1),
(168, 91, '2019-03-25', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 271, 19, '151,153,152', '38', 1368, 1, 1, 1),
(169, 92, '2019-03-25', '2019-03-14', '2019-03-20', 1620, 1620, 7, 6, 231, 25, '154,156,155', '39', 1414, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_types`
--

CREATE TABLE `employee_salary_types` (
  `salaryTypeID` int(11) NOT NULL,
  `salaryName` varchar(150) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_salary_types`
--

INSERT INTO `employee_salary_types` (`salaryTypeID`, `salaryName`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(3, 'Weekly', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_shifts`
--

CREATE TABLE `employee_shifts` (
  `ID` int(11) NOT NULL,
  `applicableType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Employee|0=Designation',
  `employeeID` int(11) NOT NULL,
  `designationID` int(11) DEFAULT NULL,
  `day1ShiftID` int(11) DEFAULT NULL,
  `day2ShiftID` int(11) DEFAULT NULL,
  `day3ShiftID` int(11) DEFAULT NULL,
  `day4ShiftID` int(11) DEFAULT NULL,
  `day5ShiftID` int(11) DEFAULT NULL,
  `day6ShiftID` int(11) DEFAULT NULL,
  `day7ShiftID` int(11) DEFAULT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_shifts`
--

INSERT INTO `employee_shifts` (`ID`, `applicableType`, `employeeID`, `designationID`, `day1ShiftID`, `day2ShiftID`, `day3ShiftID`, `day4ShiftID`, `day5ShiftID`, `day6ShiftID`, `day7ShiftID`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 0, 23, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 0, 57, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 0, 56, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 0, 41, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(6, 0, 40, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(7, 0, 29, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 1, 58, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(10, 1, 59, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 1, 70, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 1, 77, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(14, 1, 81, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 1, 82, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(17, 1, 84, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(18, 1, 85, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 1, 86, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(20, 1, 87, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 1, 88, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(22, 1, 89, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 1, 90, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(24, 1, 91, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 1, 92, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 1, 93, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 1, 73, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 1, 97, 0, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1),
(29, 1, 98, 0, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expenseID` int(11) NOT NULL,
  `expense_typeID` int(11) DEFAULT NULL,
  `expense_amount` int(8) DEFAULT NULL,
  `entry_date` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_month` int(2) DEFAULT NULL,
  `entry_year` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_date_time` varchar(35) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `issued_date_time` varchar(35) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `remarks` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_userID` int(11) DEFAULT NULL,
  `expense_referenceNO` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `approval_status` int(2) DEFAULT '0',
  `vendorID` int(2) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL,
  `paymentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expenseID`, `expense_typeID`, `expense_amount`, `entry_date`, `entry_month`, `entry_year`, `entry_date_time`, `issued_date_time`, `remarks`, `entry_userID`, `expense_referenceNO`, `approval_status`, `vendorID`, `storeID`, `paymentID`) VALUES
(8, 3, 50000, '2019-01-14', NULL, '2019', '2019-01-14 09:25:50am', '2019-01-01', 'Water bill', 45, NULL, 0, 45, 16, 1095),
(9, 3, 50000, '2019-01-14', NULL, '2019', '2019-01-14 12:12:09pm', '2019-01-10', 'Office Rent', 45, NULL, 0, 45, 16, 1112),
(10, 3, 500, '2019-03-10', NULL, '2019', '2019-03-10 04:58:04pm', '2019-02-10', 'month of January 2019', 45, NULL, 0, 45, 16, 1310);

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `expense_typeID` int(11) NOT NULL,
  `expense_category` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expense_category_status` int(2) DEFAULT '1',
  `vendorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`expense_typeID`, `expense_category`, `expense_category_status`, `vendorID`) VALUES
(3, 'Water bill', 1, 45),
(4, 'Buying Products', 1, 45),
(6, 'Office Rent', 1, 45);

-- --------------------------------------------------------

--
-- Table structure for table `failed_logins`
--

CREATE TABLE `failed_logins` (
  `ID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `userLoginID` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'User name or email',
  `failedLoginDate` datetime NOT NULL,
  `loginAttemptID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `dl` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `playable_file_name` varchar(255) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `file_size` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `gItemID` int(11) NOT NULL,
  `galleryTypeID` int(11) NOT NULL,
  `albumID` int(11) NOT NULL,
  `gItemName` varchar(254) NOT NULL,
  `gItemTitle` varchar(254) NOT NULL COMMENT 'Caption',
  `gItemDetails` text NOT NULL,
  `gItemSerial` int(11) NOT NULL,
  `gItemStatus` int(55) NOT NULL,
  `entryDateTime` datetime NOT NULL,
  `entryUserID` int(11) NOT NULL,
  `modifiedDateTime` datetime NOT NULL,
  `modifiedUserID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`gItemID`, `galleryTypeID`, `albumID`, `gItemName`, `gItemTitle`, `gItemDetails`, `gItemSerial`, `gItemStatus`, `entryDateTime`, `entryUserID`, `modifiedDateTime`, `modifiedUserID`, `companyID`, `applicationID`) VALUES
(1, 1, 1, 'image_directory/2019/07/4359a6ab2f-2019-07-22.jpg', 'dgh fgh', 'tre ghfg dfgdf fdgd', 11, 1, '2019-07-22 07:28:06', 62, '2019-07-23 11:42:26', 16, 1, 1),
(2, 1, 1, 'image_directory/2019/07/1a8e1bb92bb-2019-07-22.jpg', 'dgh', '', 8, 1, '2019-07-22 07:28:06', 62, '2019-07-24 09:51:20', 62, 1, 1),
(3, 1, 1, 'image_directory/2019/07/0541caf91fe-2019-07-22.png', 'dfgdfg', 'fdgddfg g', 5, 1, '2019-07-22 02:48:46', 16, '2019-07-23 08:53:57', 16, 1, 1),
(5, 1, 1, 'image_directory/2019/07/02be0423844-2019-07-22.png', 'dgd', 'dfgdf ghdf', 13, 1, '2019-07-22 02:49:15', 16, '2019-07-23 10:24:15', 16, 1, 1),
(6, 1, 1, 'image_directory/2019/07/12be0423844-2019-07-22.png', 'ghjgj', '', 49, 1, '2019-07-22 02:49:15', 16, '2019-07-25 05:14:42', 16, 1, 1),
(8, 1, 1, 'image_directory/2019/07/14e65d7e9e5-2019-07-22.png', 'xv', 'fgg', 4, 1, '2019-07-22 03:30:49', 16, '2019-07-23 07:53:39', 16, 1, 1),
(9, 1, 1, 'image_directory/2019/07/045098bc7fe-2019-07-22.png', '', '', 7, 1, '2019-07-22 03:31:11', 16, '0000-00-00 00:00:00', 0, 1, 1),
(10, 1, 1, 'image_directory/2019/07/145098bc7fe-2019-07-22.png', 'df', '', 10, 1, '2019-07-22 03:31:11', 16, '2019-07-24 06:35:23', 16, 1, 1),
(11, 1, 1, 'image_directory/2019/07/052084730c8-2019-07-22.png', '', '', 3, 1, '2019-07-22 03:31:19', 16, '0000-00-00 00:00:00', 0, 1, 1),
(12, 1, 1, 'image_directory/2019/07/152084730c8-2019-07-22.png', '', '', 6, 1, '2019-07-22 03:31:19', 16, '0000-00-00 00:00:00', 0, 1, 1),
(13, 1, 1, 'image_directory/2019/07/07308b71166-2019-07-23.png', '', '', 12, 1, '2019-07-23 05:26:25', 16, '0000-00-00 00:00:00', 0, 1, 1),
(14, 1, 1, 'image_directory/2019/07/17308b71166-2019-07-23.png', '', '', 14, 1, '2019-07-23 05:26:25', 16, '0000-00-00 00:00:00', 0, 1, 1),
(15, 1, 1, 'image_directory/2019/07/0d41445948f-2019-07-23.png', '', '', 15, 1, '2019-07-23 05:55:36', 16, '0000-00-00 00:00:00', 0, 1, 1),
(16, 1, 1, 'image_directory/2019/07/1d41445948f-2019-07-23.png', '', '', 16, 1, '2019-07-23 05:55:36', 16, '0000-00-00 00:00:00', 0, 1, 1),
(17, 1, 1, 'image_directory/2019/07/0127490858c-2019-07-23.png', '', '', 17, 1, '2019-07-23 05:55:56', 16, '0000-00-00 00:00:00', 0, 1, 1),
(18, 1, 1, 'image_directory/2019/07/1127490858c-2019-07-23.png', '', '', 18, 1, '2019-07-23 05:55:56', 16, '0000-00-00 00:00:00', 0, 1, 1),
(19, 1, 1, 'image_directory/2019/07/0890dfcadb9-2019-07-23.png', '', '', 19, 1, '2019-07-23 05:59:18', 16, '0000-00-00 00:00:00', 0, 1, 1),
(20, 1, 1, 'image_directory/2019/07/1890dfcadb9-2019-07-23.png', '', '', 20, 1, '2019-07-23 05:59:18', 16, '0000-00-00 00:00:00', 0, 1, 1),
(21, 1, 1, 'image_directory/2019/07/0bd77fd86a7-2019-07-23.png', '', '', 21, 1, '2019-07-23 05:59:34', 16, '0000-00-00 00:00:00', 0, 1, 1),
(22, 1, 1, 'image_directory/2019/07/1bd77fd86a7-2019-07-23.png', '', '', 22, 1, '2019-07-23 05:59:34', 16, '0000-00-00 00:00:00', 0, 1, 1),
(23, 1, 1, 'image_directory/2019/07/0b40deb609c-2019-07-23.png', 'fgdg', 'fdgdfg', 23, 1, '2019-07-23 06:01:28', 16, '2019-07-23 07:54:31', 16, 1, 1),
(24, 1, 1, 'image_directory/2019/07/1b40deb609c-2019-07-23.png', '', '', 24, 1, '2019-07-23 06:01:28', 16, '0000-00-00 00:00:00', 0, 1, 1),
(25, 1, 1, 'image_directory/2019/07/05cb5625d80-2019-07-23.png', '', '', 25, 1, '2019-07-23 06:04:34', 16, '0000-00-00 00:00:00', 0, 1, 1),
(26, 1, 1, 'image_directory/2019/07/15cb5625d80-2019-07-23.png', '', '', 26, 1, '2019-07-23 06:04:34', 16, '0000-00-00 00:00:00', 0, 1, 1),
(27, 1, 1, 'image_directory/2019/07/0afee0a04a3-2019-07-23.png', '', '', 27, 1, '2019-07-23 06:05:31', 16, '0000-00-00 00:00:00', 0, 1, 1),
(28, 1, 1, 'image_directory/2019/07/1afee0a04a3-2019-07-23.png', '', '', 28, 1, '2019-07-23 06:05:31', 16, '0000-00-00 00:00:00', 0, 1, 1),
(29, 1, 1, 'image_directory/2019/07/09296b97798-2019-07-23.jpg', '', '', 29, 1, '2019-07-23 06:08:35', 16, '0000-00-00 00:00:00', 0, 1, 1),
(30, 1, 1, 'image_directory/2019/07/19296b97798-2019-07-23.jpg', 'fghf', 'gfghg', 30, 1, '2019-07-23 06:08:35', 16, '2019-07-24 12:49:10', 16, 1, 1),
(31, 1, 1, 'image_directory/2019/07/072eec8ac0e-2019-07-23.png', '', '', 31, 1, '2019-07-23 06:09:23', 16, '0000-00-00 00:00:00', 0, 1, 1),
(32, 1, 1, 'image_directory/2019/07/172eec8ac0e-2019-07-23.png', '', '', 32, 1, '2019-07-23 06:09:23', 16, '0000-00-00 00:00:00', 0, 1, 1),
(33, 1, 1, 'image_directory/2019/07/0d99904f328-2019-07-23.png', '', '', 33, 1, '2019-07-23 06:12:34', 16, '0000-00-00 00:00:00', 0, 1, 1),
(34, 1, 1, 'image_directory/2019/07/1d99904f328-2019-07-23.png', '', '', 34, 1, '2019-07-23 06:12:34', 16, '0000-00-00 00:00:00', 0, 1, 1),
(35, 1, 1, 'image_directory/2019/07/062fab1a4f4-2019-07-23.png', '', '', 35, 1, '2019-07-23 06:12:56', 16, '0000-00-00 00:00:00', 0, 1, 1),
(36, 1, 1, 'image_directory/2019/07/162fab1a4f4-2019-07-23.png', '', '', 36, 1, '2019-07-23 06:12:56', 16, '0000-00-00 00:00:00', 0, 1, 1),
(37, 1, 1, 'image_directory/2019/07/060ae9c3466-2019-07-23.png', '', '', 37, 1, '2019-07-23 06:14:11', 16, '0000-00-00 00:00:00', 0, 1, 1),
(38, 1, 1, 'image_directory/2019/07/160ae9c3466-2019-07-23.png', '', '', 38, 1, '2019-07-23 06:14:11', 16, '0000-00-00 00:00:00', 0, 1, 1),
(39, 1, 1, 'image_directory/2019/07/05862da2f50-2019-07-23.png', '', '', 39, 1, '2019-07-23 06:14:29', 16, '0000-00-00 00:00:00', 0, 1, 1),
(40, 1, 1, 'image_directory/2019/07/15862da2f50-2019-07-23.png', '', '', 40, 1, '2019-07-23 06:14:29', 16, '0000-00-00 00:00:00', 0, 1, 1),
(41, 1, 1, 'image_directory/2019/07/0dc52bf6a23-2019-07-23.png', '', '', 41, 1, '2019-07-23 06:19:11', 16, '0000-00-00 00:00:00', 0, 1, 1),
(42, 1, 1, 'image_directory/2019/07/1dc52bf6a23-2019-07-23.png', '', '', 42, 1, '2019-07-23 06:19:11', 16, '0000-00-00 00:00:00', 0, 1, 1),
(43, 1, 1, 'image_directory/2019/07/08939a9e164-2019-07-23.png', '', '', 43, 1, '2019-07-23 06:20:50', 16, '0000-00-00 00:00:00', 0, 1, 1),
(44, 1, 1, 'image_directory/2019/07/0a192642b03-2019-07-23.png', '', '', 44, 1, '2019-07-23 06:22:10', 16, '2019-07-23 07:53:42', 16, 1, 1),
(45, 1, 1, 'image_directory/2019/07/00c772a8e5f-2019-07-23.png', '', '', 45, 1, '2019-07-23 06:28:40', 16, '0000-00-00 00:00:00', 0, 1, 1),
(46, 1, 1, 'image_directory/2019/07/0b9bc6a77a7-2019-07-23.png', '', '', 46, 1, '2019-07-23 06:30:22', 16, '0000-00-00 00:00:00', 0, 1, 1),
(47, 1, 1, 'image_directory/2019/07/1b9bc6a77a7-2019-07-23.png', 'dgf', 'dfgd', 47, 1, '2019-07-23 06:30:22', 16, '2019-07-23 07:55:55', 16, 1, 1),
(48, 1, 1, 'image_directory/2019/07/03f2b996538-2019-07-23.png', 'fgf', 'dfgf', 48, 1, '2019-07-23 06:32:41', 16, '2019-07-23 07:53:54', 16, 1, 1),
(52, 1, 1, 'image_directory/2019/07/196b047a468-2019-07-23.jpg', '', '', 2, 1, '2019-07-23 10:24:35', 16, '0000-00-00 00:00:00', 0, 1, 1),
(54, 1, 1, 'image_directory/2019/07/11da4458d5d-2019-07-23.jpg', 'title', 'dgdfg dfgdf', 9, 1, '2019-07-23 11:43:03', 16, '2019-07-23 01:57:48', 16, 1, 1),
(57, 1, 1, 'image_directory/2019/07/0aceb8913a2-2019-07-23.png', '', '', 1, 1, '2019-07-23 11:58:44', 16, '0000-00-00 00:00:00', 0, 1, 1),
(93, 2, 2, 'image_directory/2019/07/01a056e35e6-2019-07-24.png', '', 'fd', 1, 1, '2019-07-24 12:21:14', 16, '2019-07-24 12:30:52', 16, 1, 1),
(99, 2, 2, 'image_directory/2019/07/02ad31b7e42-2019-07-24.png', '', '', 2, 1, '2019-07-24 12:33:40', 16, '0000-00-00 00:00:00', 0, 1, 1),
(100, 1, 1, 'image_directory/2019/07/0199e760ebe-2019-07-25.jpg', 'ghg', '', 50, 1, '2019-07-25 05:14:24', 16, '2019-07-25 05:14:35', 16, 1, 1),
(101, 1, 1, 'image_directory/2020/01/01b221c6499-2020-01-07.jpg', '', '', 51, 1, '2020-01-07 10:10:36', 62, '0000-00-00 00:00:00', 0, 1, 1),
(102, 1, 1, 'image_directory/2020/01/11b221c6499-2020-01-07.png', '', '', 52, 1, '2020-01-07 10:10:36', 62, '0000-00-00 00:00:00', 0, 1, 1),
(103, 1, 6, 'image_directory/2021/11/0e5ee3058f9-2021-11-03.jpg', '', '', 1, 1, '2021-11-03 01:05:29', 62, '0000-00-00 00:00:00', 0, 1, 1),
(104, 1, 6, 'image_directory/2021/11/1e5ee3058f9-2021-11-03.jpg', '', '', 2, 1, '2021-11-03 01:05:29', 62, '0000-00-00 00:00:00', 0, 1, 1),
(105, 2, 7, 'image_directory/2021/11/099c5f4050b-2021-11-04.jpg', '', '', 1, 1, '2021-11-04 06:22:59', 62, '0000-00-00 00:00:00', 0, 1, 1),
(106, 2, 7, 'image_directory/2021/11/199c5f4050b-2021-11-04.jpg', '', '', 2, 1, '2021-11-04 06:22:59', 62, '0000-00-00 00:00:00', 0, 1, 1),
(107, 2, 7, 'image_directory/2021/11/299c5f4050b-2021-11-04.jpg', '', '', 3, 1, '2021-11-04 06:22:59', 62, '0000-00-00 00:00:00', 0, 1, 1),
(108, 2, 7, 'image_directory/2021/11/399c5f4050b-2021-11-04.jpg', '', '', 4, 1, '2021-11-04 06:22:59', 62, '0000-00-00 00:00:00', 0, 1, 1),
(109, 2, 7, 'image_directory/2021/11/499c5f4050b-2021-11-04.jpg', '', '', 5, 1, '2021-11-04 06:22:59', 62, '0000-00-00 00:00:00', 0, 1, 1),
(110, 2, 7, 'image_directory/2021/11/599c5f4050b-2021-11-04.jpg', '', '', 6, 1, '2021-11-04 06:22:59', 62, '0000-00-00 00:00:00', 0, 1, 1),
(111, 2, 7, 'image_directory/2021/11/699c5f4050b-2021-11-04.jpg', '', '', 7, 1, '2021-11-04 06:22:59', 62, '0000-00-00 00:00:00', 0, 1, 1),
(112, 2, 8, 'image_directory/2021/11/061f0a54d77-2021-11-04.jpg', '', '', 1, 1, '2021-11-04 06:23:31', 62, '0000-00-00 00:00:00', 0, 1, 1),
(113, 2, 8, 'image_directory/2021/11/161f0a54d77-2021-11-04.jpg', '', '', 2, 1, '2021-11-04 06:23:31', 62, '0000-00-00 00:00:00', 0, 1, 1),
(114, 2, 8, 'image_directory/2021/11/261f0a54d77-2021-11-04.jpg', '', '', 3, 1, '2021-11-04 06:23:31', 62, '0000-00-00 00:00:00', 0, 1, 1),
(115, 2, 8, 'image_directory/2021/11/361f0a54d77-2021-11-04.jpg', '', '', 4, 1, '2021-11-04 06:23:31', 62, '0000-00-00 00:00:00', 0, 1, 1),
(116, 2, 8, 'image_directory/2021/11/461f0a54d77-2021-11-04.jpg', '', '', 5, 1, '2021-11-04 06:23:31', 62, '0000-00-00 00:00:00', 0, 1, 1),
(117, 2, 8, 'image_directory/2021/11/561f0a54d77-2021-11-04.jpg', '', '', 6, 1, '2021-11-04 06:23:31', 62, '0000-00-00 00:00:00', 0, 1, 1),
(118, 2, 8, 'image_directory/2021/11/661f0a54d77-2021-11-04.jpg', '', '', 7, 1, '2021-11-04 06:23:31', 62, '0000-00-00 00:00:00', 0, 1, 1),
(119, 2, 8, 'image_directory/2021/11/761f0a54d77-2021-11-04.jpg', '', '', 8, 1, '2021-11-04 06:23:31', 62, '0000-00-00 00:00:00', 0, 1, 1),
(120, 2, 8, 'image_directory/2021/11/861f0a54d77-2021-11-04.jpg', '', '', 9, 1, '2021-11-04 06:23:31', 62, '0000-00-00 00:00:00', 0, 1, 1),
(121, 2, 9, 'image_directory/2021/11/0bc0b3b87b2-2021-11-04.jpg', '', '', 1, 1, '2021-11-04 06:23:56', 62, '0000-00-00 00:00:00', 0, 1, 1),
(122, 2, 9, 'image_directory/2021/11/1bc0b3b87b2-2021-11-04.jpg', '', '', 2, 1, '2021-11-04 06:23:56', 62, '0000-00-00 00:00:00', 0, 1, 1),
(123, 2, 9, 'image_directory/2021/11/2bc0b3b87b2-2021-11-04.jpg', '', '', 3, 1, '2021-11-04 06:23:56', 62, '0000-00-00 00:00:00', 0, 1, 1),
(124, 2, 9, 'image_directory/2021/11/3bc0b3b87b2-2021-11-04.jpg', '', '', 4, 1, '2021-11-04 06:23:56', 62, '0000-00-00 00:00:00', 0, 1, 1),
(125, 2, 10, 'image_directory/2021/11/0a5fbd58e71-2021-11-04.jpg', '', '', 1, 1, '2021-11-04 06:24:16', 62, '0000-00-00 00:00:00', 0, 1, 1),
(126, 2, 10, 'image_directory/2021/11/1a5fbd58e71-2021-11-04.jpg', '', '', 2, 1, '2021-11-04 06:24:16', 62, '0000-00-00 00:00:00', 0, 1, 1),
(127, 2, 10, 'image_directory/2021/11/2a5fbd58e71-2021-11-04.jpg', '', '', 3, 1, '2021-11-04 06:24:16', 62, '0000-00-00 00:00:00', 0, 1, 1),
(128, 2, 10, 'image_directory/2021/11/3a5fbd58e71-2021-11-04.jpg', '', '', 4, 1, '2021-11-04 06:24:16', 62, '0000-00-00 00:00:00', 0, 1, 1),
(129, 2, 10, 'image_directory/2021/11/4a5fbd58e71-2021-11-04.jpg', '', '', 5, 1, '2021-11-04 06:24:16', 62, '0000-00-00 00:00:00', 0, 1, 1),
(130, 2, 11, 'image_directory/2021/11/06a303a4b13-2021-11-04.jpg', '', '', 1, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(131, 2, 11, 'image_directory/2021/11/16a303a4b13-2021-11-04.jpg', '', '', 2, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(132, 2, 11, 'image_directory/2021/11/26a303a4b13-2021-11-04.jpg', '', '', 3, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(133, 2, 11, 'image_directory/2021/11/36a303a4b13-2021-11-04.jpg', '', '', 4, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(134, 2, 11, 'image_directory/2021/11/46a303a4b13-2021-11-04.jpg', '', '', 5, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(135, 2, 11, 'image_directory/2021/11/56a303a4b13-2021-11-04.jpg', '', '', 6, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(136, 2, 11, 'image_directory/2021/11/66a303a4b13-2021-11-04.jpg', '', '', 7, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(137, 2, 11, 'image_directory/2021/11/76a303a4b13-2021-11-04.jpg', '', '', 8, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(138, 2, 11, 'image_directory/2021/11/86a303a4b13-2021-11-04.jpg', '', '', 9, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(139, 2, 11, 'image_directory/2021/11/96a303a4b13-2021-11-04.jpg', '', '', 10, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(140, 2, 11, 'image_directory/2021/11/106a303a4b13-2021-11-04.jpg', '', '', 11, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(141, 2, 11, 'image_directory/2021/11/116a303a4b13-2021-11-04.jpg', '', '', 12, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(142, 2, 11, 'image_directory/2021/11/126a303a4b13-2021-11-04.jpg', '', '', 13, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(143, 2, 11, 'image_directory/2021/11/136a303a4b13-2021-11-04.jpg', '', '', 14, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(144, 2, 11, 'image_directory/2021/11/146a303a4b13-2021-11-04.jpg', '', '', 15, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(145, 2, 11, 'image_directory/2021/11/156a303a4b13-2021-11-04.jpg', '', '', 16, 1, '2021-11-04 06:24:47', 62, '0000-00-00 00:00:00', 0, 1, 1),
(146, 2, 12, 'image_directory/2021/11/0448c3949e9-2021-11-04.jpg', '', '', 1, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(147, 2, 12, 'image_directory/2021/11/1448c3949e9-2021-11-04.jpg', '', '', 2, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(148, 2, 12, 'image_directory/2021/11/2448c3949e9-2021-11-04.jpg', '', '', 3, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(149, 2, 12, 'image_directory/2021/11/3448c3949e9-2021-11-04.jpg', '', '', 4, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(150, 2, 12, 'image_directory/2021/11/4448c3949e9-2021-11-04.jpg', '', '', 5, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(151, 2, 12, 'image_directory/2021/11/5448c3949e9-2021-11-04.jpg', '', '', 6, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(152, 2, 12, 'image_directory/2021/11/6448c3949e9-2021-11-04.jpg', '', '', 7, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(153, 2, 12, 'image_directory/2021/11/7448c3949e9-2021-11-04.jpg', '', '', 8, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(154, 2, 12, 'image_directory/2021/11/8448c3949e9-2021-11-04.jpg', '', '', 9, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(155, 2, 12, 'image_directory/2021/11/9448c3949e9-2021-11-04.jpg', '', '', 10, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(156, 2, 12, 'image_directory/2021/11/10448c3949e9-2021-11-04.jpg', '', '', 11, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(157, 2, 12, 'image_directory/2021/11/11448c3949e9-2021-11-04.jpg', '', '', 12, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(158, 2, 12, 'image_directory/2021/11/12448c3949e9-2021-11-04.jpg', '', '', 13, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(159, 2, 12, 'image_directory/2021/11/13448c3949e9-2021-11-04.jpg', '', '', 14, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1),
(160, 2, 12, 'image_directory/2021/11/14448c3949e9-2021-11-04.jpg', '', '', 15, 1, '2021-11-04 06:25:13', 62, '0000-00-00 00:00:00', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallerytypes`
--

CREATE TABLE `gallerytypes` (
  `galleryTypeID` int(11) NOT NULL,
  `galleryTypeName` varchar(255) NOT NULL,
  `galleryTypeAttachment` varchar(255) DEFAULT NULL,
  `entryDate` datetime NOT NULL,
  `entryUserID` int(11) NOT NULL,
  `galleryTypeNote` text,
  `galleryTypeStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallerytypes`
--

INSERT INTO `gallerytypes` (`galleryTypeID`, `galleryTypeName`, `galleryTypeAttachment`, `entryDate`, `entryUserID`, `galleryTypeNote`, `galleryTypeStatus`, `companyID`, `applicationID`) VALUES
(1, 'About', NULL, '2019-07-21 11:50:23', 62, 'thrth  erte erterter ertert.', 1, 1, 1),
(2, 'Quality salt cultivation', NULL, '2019-07-21 11:54:04', 62, 'fgs gfsfs dsfsd sfsdf sfsdf .', 1, 1, 1),
(3, 'USI BD Central MIS', NULL, '2019-07-21 11:54:55', 62, 'fghfgh', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gcategory_setup`
--

CREATE TABLE `gcategory_setup` (
  `gCategoryID` int(10) NOT NULL,
  `gCategoryTitle` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gcategory_setup`
--

INSERT INTO `gcategory_setup` (`gCategoryID`, `gCategoryTitle`) VALUES
(1, 'Office Task'),
(2, 'Home Task');

-- --------------------------------------------------------

--
-- Table structure for table `gcategory_type_setup`
--

CREATE TABLE `gcategory_type_setup` (
  `gCategoryWiseTypeID` int(10) NOT NULL,
  `gCategoryID` int(11) NOT NULL,
  `gCategoryTypeTitle` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gcategory_type_setup`
--

INSERT INTO `gcategory_type_setup` (`gCategoryWiseTypeID`, `gCategoryID`, `gCategoryTypeTitle`) VALUES
(1, 1, 'Client'),
(2, 1, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `groupproducts`
--

CREATE TABLE `groupproducts` (
  `groupProductID` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL COMMENT 'Group Product ID',
  `singleProductID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `groupproducts`
--

INSERT INTO `groupproducts` (`groupProductID`, `productID`, `singleProductID`, `quantity`, `vendorID`, `storeID`) VALUES
(1, 199, 178, 2, 45, 13),
(2, 201, 179, 2, 45, 13),
(3, 201, 183, 2, 45, 13),
(4, 187, 179, 2, 45, 13),
(5, 187, 180, 2, 45, 13),
(6, 186, 179, 2, 45, 13),
(7, 186, 181, 2, 45, 13),
(8, 216, 203, 2, 45, 16),
(9, 216, 205, 2, 45, 16),
(10, 221, 214, 2, 45, 16),
(11, 221, 216, 1, 45, 16),
(12, 221, 217, 2, 45, 16),
(13, 232, 229, 1, 45, 32),
(14, 232, 230, 1, 45, 32),
(15, 232, 231, 2, 45, 32);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `holidayID` int(11) NOT NULL,
  `holidayTypeID` int(11) NOT NULL,
  `holidayTitle` varchar(255) NOT NULL,
  `numberOfDays` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`holidayID`, `holidayTypeID`, `holidayTitle`, `numberOfDays`, `startDate`, `endDate`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(316, 1, '16 December - Victory day', 1, '2018-12-16', '2018-12-16', 1, 1, 1, 1),
(317, 1, '26 March', 1, '2019-03-26', '2019-03-26', 1, 1, 1, 1),
(474, 3, 'Week No - 01', 1, '2018-01-06', '2018-01-06', 1, 1, 1, 1),
(475, 3, 'Week No - 02', 1, '2018-01-13', '2018-01-13', 1, 1, 1, 1),
(476, 3, 'Week No - 03', 1, '2018-01-20', '2018-01-20', 1, 1, 1, 1),
(477, 3, 'Week No - 04', 1, '2018-01-27', '2018-01-27', 1, 1, 1, 1),
(478, 3, 'Week No - 05', 1, '2018-02-03', '2018-02-03', 1, 1, 1, 1),
(479, 3, 'Week No - 06', 1, '2018-02-10', '2018-02-10', 1, 1, 1, 1),
(480, 3, 'Week No - 07', 1, '2018-02-17', '2018-02-17', 1, 1, 1, 1),
(481, 3, 'Week No - 08', 1, '2018-02-24', '2018-02-24', 1, 1, 1, 1),
(482, 3, 'Week No - 09', 1, '2018-03-03', '2018-03-03', 1, 1, 1, 1),
(483, 3, 'Week No - 10', 1, '2018-03-10', '2018-03-10', 1, 1, 1, 1),
(484, 3, 'Week No - 11', 1, '2018-03-17', '2018-03-17', 1, 1, 1, 1),
(485, 3, 'Week No - 12', 1, '2018-03-24', '2018-03-24', 1, 1, 1, 1),
(486, 3, 'Week No - 13', 1, '2018-03-31', '2018-03-31', 1, 1, 1, 1),
(487, 3, 'Week No - 14', 1, '2018-04-07', '2018-04-07', 1, 1, 1, 1),
(488, 3, 'Week No - 15', 1, '2018-04-14', '2018-04-14', 1, 1, 1, 1),
(489, 3, 'Week No - 16', 1, '2018-04-21', '2018-04-21', 1, 1, 1, 1),
(490, 3, 'Week No - 17', 1, '2018-04-28', '2018-04-28', 1, 1, 1, 1),
(491, 3, 'Week No - 18', 1, '2018-05-05', '2018-05-05', 1, 1, 1, 1),
(492, 3, 'Week No - 19', 1, '2018-05-12', '2018-05-12', 1, 1, 1, 1),
(493, 3, 'Week No - 20', 1, '2018-05-19', '2018-05-19', 1, 1, 1, 1),
(494, 3, 'Week No - 21', 1, '2018-05-26', '2018-05-26', 1, 1, 1, 1),
(495, 3, 'Week No - 22', 1, '2018-06-02', '2018-06-02', 1, 1, 1, 1),
(496, 3, 'Week No - 23', 1, '2018-06-09', '2018-06-09', 1, 1, 1, 1),
(497, 3, 'Week No - 24', 1, '2018-06-16', '2018-06-16', 1, 1, 1, 1),
(498, 3, 'Week No - 25', 1, '2018-06-23', '2018-06-23', 1, 1, 1, 1),
(499, 3, 'Week No - 26', 1, '2018-06-30', '2018-06-30', 1, 1, 1, 1),
(500, 3, 'Week No - 27', 1, '2018-07-07', '2018-07-07', 1, 1, 1, 1),
(501, 3, 'Week No - 28', 1, '2018-07-14', '2018-07-14', 1, 1, 1, 1),
(502, 3, 'Week No - 29', 1, '2018-07-21', '2018-07-21', 1, 1, 1, 1),
(503, 3, 'Week No - 30', 1, '2018-07-28', '2018-07-28', 1, 1, 1, 1),
(504, 3, 'Week No - 31', 1, '2018-08-04', '2018-08-04', 1, 1, 1, 1),
(505, 3, 'Week No - 32', 1, '2018-08-11', '2018-08-11', 1, 1, 1, 1),
(506, 3, 'Week No - 33', 1, '2018-08-18', '2018-08-18', 1, 1, 1, 1),
(507, 3, 'Week No - 34', 1, '2018-08-25', '2018-08-25', 1, 1, 1, 1),
(508, 3, 'Week No - 35', 1, '2018-09-01', '2018-09-01', 1, 1, 1, 1),
(509, 3, 'Week No - 36', 1, '2018-09-08', '2018-09-08', 1, 1, 1, 1),
(510, 3, 'Week No - 37', 1, '2018-09-15', '2018-09-15', 1, 1, 1, 1),
(511, 3, 'Week No - 38', 1, '2018-09-22', '2018-09-22', 1, 1, 1, 1),
(512, 3, 'Week No - 39', 1, '2018-09-29', '2018-09-29', 1, 1, 1, 1),
(513, 3, 'Week No - 40', 1, '2018-10-06', '2018-10-06', 1, 1, 1, 1),
(514, 3, 'Week No - 41', 1, '2018-10-13', '2018-10-13', 1, 1, 1, 1),
(515, 3, 'Week No - 42', 1, '2018-10-20', '2018-10-20', 1, 1, 1, 1),
(516, 3, 'Week No - 43', 1, '2018-10-27', '2018-10-27', 1, 1, 1, 1),
(517, 3, 'Week No - 44', 1, '2018-11-03', '2018-11-03', 1, 1, 1, 1),
(518, 3, 'Week No - 45', 1, '2018-11-10', '2018-11-10', 1, 1, 1, 1),
(519, 3, 'Week No - 46', 1, '2018-11-17', '2018-11-17', 1, 1, 1, 1),
(520, 3, 'Week No - 47', 1, '2018-11-24', '2018-11-24', 1, 1, 1, 1),
(521, 3, 'Week No - 48', 1, '2018-12-01', '2018-12-01', 1, 1, 1, 1),
(522, 3, 'Week No - 49', 1, '2018-12-08', '2018-12-08', 1, 1, 1, 1),
(523, 3, 'Week No - 50', 1, '2018-12-15', '2018-12-15', 1, 1, 1, 1),
(524, 3, 'Week No - 51', 1, '2018-12-22', '2018-12-22', 1, 1, 1, 1),
(525, 3, 'Week No - 52', 1, '2018-12-29', '2018-12-29', 0, 1, 1, 1),
(526, 3, 'Week No - 01', 1, '2019-01-04', '2019-01-04', 1, 1, 1, 1),
(527, 3, 'Week No - 02', 1, '2019-01-11', '2019-01-11', 1, 1, 1, 1),
(528, 3, 'Week No - 03', 1, '2019-01-18', '2019-01-18', 1, 1, 1, 1),
(529, 3, 'Week No - 04', 1, '2019-01-25', '2019-01-25', 1, 1, 1, 1),
(530, 3, 'Week No - 05', 1, '2019-02-01', '2019-02-01', 1, 1, 1, 1),
(531, 3, 'Week No - 06', 1, '2019-02-08', '2019-02-08', 1, 1, 1, 1),
(532, 3, 'Week No - 07', 1, '2019-02-15', '2019-02-15', 1, 1, 1, 1),
(533, 3, 'Week No - 08', 1, '2019-02-22', '2019-02-22', 1, 1, 1, 1),
(534, 3, 'Week No - 09', 1, '2019-03-01', '2019-03-01', 1, 1, 1, 1),
(535, 3, 'Week No - 10', 1, '2019-03-08', '2019-03-08', 1, 1, 1, 1),
(536, 3, 'Week No - 11', 1, '2019-03-15', '2019-03-15', 1, 1, 1, 1),
(537, 3, 'Week No - 12', 1, '2019-03-22', '2019-03-22', 1, 1, 1, 1),
(538, 3, 'Week No - 13', 1, '2019-03-29', '2019-03-29', 1, 1, 1, 1),
(539, 3, 'Week No - 14', 1, '2019-04-05', '2019-04-05', 1, 1, 1, 1),
(540, 3, 'Week No - 15', 1, '2019-04-12', '2019-04-12', 1, 1, 1, 1),
(541, 3, 'Week No - 16', 1, '2019-04-19', '2019-04-19', 1, 1, 1, 1),
(542, 3, 'Week No - 17', 1, '2019-04-26', '2019-04-26', 1, 1, 1, 1),
(543, 3, 'Week No - 18', 1, '2019-05-03', '2019-05-03', 1, 1, 1, 1),
(544, 3, 'Week No - 19', 1, '2019-05-10', '2019-05-10', 1, 1, 1, 1),
(545, 3, 'Week No - 20', 1, '2019-05-17', '2019-05-17', 1, 1, 1, 1),
(546, 3, 'Week No - 21', 1, '2019-05-24', '2019-05-24', 1, 1, 1, 1),
(547, 3, 'Week No - 22', 1, '2019-05-31', '2019-05-31', 1, 1, 1, 1),
(548, 3, 'Week No - 23', 1, '2019-06-07', '2019-06-07', 1, 1, 1, 1),
(549, 3, 'Week No - 24', 1, '2019-06-14', '2019-06-14', 1, 1, 1, 1),
(550, 3, 'Week No - 25', 1, '2019-06-21', '2019-06-21', 1, 1, 1, 1),
(551, 3, 'Week No - 26', 1, '2019-06-28', '2019-06-28', 1, 1, 1, 1),
(552, 3, 'Week No - 27', 1, '2019-07-05', '2019-07-05', 1, 1, 1, 1),
(553, 3, 'Week No - 28', 1, '2019-07-12', '2019-07-12', 1, 1, 1, 1),
(554, 3, 'Week No - 29', 1, '2019-07-19', '2019-07-19', 1, 1, 1, 1),
(555, 3, 'Week No - 30', 1, '2019-07-26', '2019-07-26', 1, 1, 1, 1),
(556, 3, 'Week No - 31', 1, '2019-08-02', '2019-08-02', 1, 1, 1, 1),
(557, 3, 'Week No - 32', 1, '2019-08-09', '2019-08-09', 1, 1, 1, 1),
(558, 3, 'Week No - 33', 1, '2019-08-16', '2019-08-16', 1, 1, 1, 1),
(559, 3, 'Week No - 34', 1, '2019-08-23', '2019-08-23', 1, 1, 1, 1),
(560, 3, 'Week No - 35', 1, '2019-08-30', '2019-08-30', 1, 1, 1, 1),
(561, 3, 'Week No - 36', 1, '2019-09-06', '2019-09-06', 1, 1, 1, 1),
(562, 3, 'Week No - 37', 1, '2019-09-13', '2019-09-13', 1, 1, 1, 1),
(563, 3, 'Week No - 38', 1, '2019-09-20', '2019-09-20', 1, 1, 1, 1),
(564, 3, 'Week No - 39', 1, '2019-09-27', '2019-09-27', 1, 1, 1, 1),
(565, 3, 'Week No - 40', 1, '2019-10-04', '2019-10-04', 1, 1, 1, 1),
(566, 3, 'Week No - 41', 1, '2019-10-11', '2019-10-11', 1, 1, 1, 1),
(567, 3, 'Week No - 42', 1, '2019-10-18', '2019-10-18', 1, 1, 1, 1),
(568, 3, 'Week No - 43', 1, '2019-10-25', '2019-10-25', 1, 1, 1, 1),
(569, 3, 'Week No - 44', 1, '2019-11-01', '2019-11-01', 1, 1, 1, 1),
(570, 3, 'Week No - 45', 1, '2019-11-08', '2019-11-08', 1, 1, 1, 1),
(571, 3, 'Week No - 46', 1, '2019-11-15', '2019-11-15', 1, 1, 1, 1),
(572, 3, 'Week No - 47', 1, '2019-11-22', '2019-11-22', 1, 1, 1, 1),
(573, 3, 'Week No - 48', 1, '2019-11-29', '2019-11-29', 1, 1, 1, 1),
(574, 3, 'Week No - 49', 1, '2019-12-06', '2019-12-06', 1, 1, 1, 1),
(575, 3, 'Week No - 50', 1, '2019-12-13', '2019-12-13', 1, 1, 1, 1),
(576, 3, 'Week No - 51', 1, '2019-12-20', '2019-12-20', 1, 1, 1, 1),
(577, 3, 'Week No - 52', 1, '2019-12-27', '2019-12-27', 1, 1, 1, 1),
(578, 1, 'Birth Day Of Bangabandhu Sheikh Mujib', 1, '2019-03-17', '2019-03-17', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday_types`
--

CREATE TABLE `holiday_types` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday_types`
--

INSERT INTO `holiday_types` (`ID`, `name`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 'Govt Holiday', 1, 1, 1, 1),
(2, 'Company Holiday', 1, 1, 1, 1),
(3, 'Week Holiday', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `inventoryID` int(11) NOT NULL,
  `productID` int(11) UNSIGNED DEFAULT NULL,
  `supplierID` int(11) UNSIGNED DEFAULT NULL,
  `shalvesID` int(11) UNSIGNED DEFAULT NULL,
  `storeID` int(11) UNSIGNED DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `buying_price` float(11,0) DEFAULT NULL,
  `transfer_type` tinyint(5) DEFAULT NULL COMMENT '1 menas in, 0 means out',
  `transfer_from` int(11) DEFAULT NULL,
  `transfer_to` int(11) DEFAULT NULL,
  `transfer_shalves_from` int(11) DEFAULT NULL,
  `transfer_shalves_to` int(11) DEFAULT NULL,
  `entry_userID` int(11) UNSIGNED DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `entry_date` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_month` int(2) DEFAULT NULL,
  `entry_year` int(4) DEFAULT NULL,
  `is_received` int(2) DEFAULT '0',
  `is_distributed` int(2) DEFAULT '1',
  `orderID` int(11) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`inventoryID`, `productID`, `supplierID`, `shalvesID`, `storeID`, `quantity`, `buying_price`, `transfer_type`, `transfer_from`, `transfer_to`, `transfer_shalves_from`, `transfer_shalves_to`, `entry_userID`, `vendorID`, `entry_date`, `date_time`, `entry_month`, `entry_year`, `is_received`, `is_distributed`, `orderID`, `categoryID`) VALUES
(403, 178, 71, 0, 16, 100, 1000, 0, 16, 0, 0, 0, 45, 45, '2019-01-11', '2019-01-11 08:25:00pm', 1, 2019, 0, 0, NULL, NULL),
(404, 178, 71, 0, 16, 100, 1000, 0, 16, 0, 0, 0, 45, 45, '2019-01-14', '2019-01-14 12:21:12pm', 1, 2019, 0, 0, NULL, NULL),
(405, 178, 78, 0, 16, 100, 1000, 0, 16, 0, 0, 0, 45, 45, '2019-01-14', '2019-01-14 01:35:51pm', 1, 2019, 0, 0, NULL, NULL),
(406, 178, NULL, NULL, 17, 5, 1000, 0, 16, 17, NULL, NULL, 45, 45, '2019-01-14', '2019-01-14 01:50:50pm', 1, 2019, 0, 0, NULL, NULL),
(407, 178, 78, 0, 16, 100, 1000, 0, 16, 0, 0, 0, 45, 45, '2019-01-14', '2019-01-14 01:59:07pm', 1, 2019, 0, 0, NULL, NULL),
(408, 189, 78, 0, 16, 1, 100, 0, 16, 0, 0, 0, 45, 45, '2019-01-22', '2019-01-22 02:14:18pm', 1, 2019, 0, 0, NULL, NULL),
(409, 202, 98, 0, 16, 1000, 40, 0, 16, 0, 0, 0, 45, 45, '2019-01-23', '2019-01-23 11:59:21am', 1, 2019, 0, 0, NULL, NULL),
(410, 202, 50, 0, 16, 20, 12000, 0, 16, 0, 0, 0, 45, 45, '2019-02-04', '2019-02-04 04:18:09pm', 2, 2019, 0, 0, NULL, NULL),
(411, 205, 78, 0, 16, 10, 1000, 0, 16, 0, 0, 0, 45, 45, '2019-02-11', '2019-02-11 01:36:20pm', 2, 2019, 0, 0, NULL, NULL),
(412, 206, 78, 0, 16, 10, 1000, 0, 16, 0, 0, 0, 45, 45, '2019-02-11', '2019-02-11 01:36:20pm', 2, 2019, 0, 0, NULL, NULL),
(413, 203, 90, 0, 16, 10, 100, 0, 16, 0, 0, 0, 45, 45, '2019-02-11', '2019-02-11 01:39:25pm', 2, 2019, 0, 0, NULL, NULL),
(414, 207, 101, 0, 16, 1, 40, 0, 16, 0, 0, 0, 45, 45, '2019-02-16', '2019-02-16 12:06:42pm', 2, 2019, 0, 0, NULL, NULL),
(415, 203, 104, 0, 16, 2, 0, 0, 16, 0, 0, 0, 45, 45, '2019-02-17', '2019-02-17 03:41:57pm', 2, 2019, 0, 0, NULL, NULL),
(416, 204, 104, 0, 16, 1, 0, 0, 16, 0, 0, 0, 45, 45, '2019-02-17', '2019-02-17 03:41:57pm', 2, 2019, 0, 0, NULL, NULL),
(417, 205, 104, 0, 23, 1, 100, 0, 16, 0, 0, 0, 45, 45, '2019-02-17', '2019-02-17 04:01:51pm', 2, 2019, 0, 0, NULL, NULL),
(418, 205, 104, 0, 25, 1, 100, 0, 16, 0, 0, 0, 45, 45, '2019-02-17', '2019-02-17 04:02:30pm', 2, 2019, 0, 0, NULL, NULL),
(419, 208, 104, 0, 24, 1, 100, 0, 16, 0, 0, 0, 45, 45, '2019-02-17', '2019-02-17 04:02:30pm', 2, 2019, 0, 0, NULL, NULL),
(420, 209, 105, 0, 22, 9, 45, 0, 16, 0, 0, 0, 45, 45, '2019-02-17', '2019-02-17 04:11:42pm', 2, 2019, 0, 0, NULL, NULL),
(421, 214, 102, 0, 22, 15, 8, 0, 22, 0, 0, 0, 52, 45, '2019-02-20', '2019-02-20 07:20:32pm', 2, 2019, 0, 0, NULL, NULL),
(422, 202, NULL, NULL, 26, 10, 100, 0, 16, 26, NULL, NULL, 45, 45, '2019-02-27', '2019-02-27 02:01:55pm', 2, 2019, 0, 0, NULL, NULL),
(423, 202, NULL, NULL, 26, 1, 1212, 0, 16, 26, NULL, NULL, 45, 45, '2019-02-27', '2019-02-27 02:05:08pm', 2, 2019, 0, 0, NULL, NULL),
(424, 202, NULL, NULL, 26, 50, 200, 0, 16, 26, NULL, NULL, 45, 45, '2019-02-27', '2019-02-27 02:17:51pm', 2, 2019, 0, 0, NULL, NULL),
(425, 202, NULL, NULL, 26, 20, 10, 0, 16, 26, NULL, NULL, 45, 45, '2019-02-27', '2019-02-27 02:18:20pm', 2, 2019, 0, 0, NULL, NULL),
(426, 215, 102, 0, 16, 200, 10, 0, 16, 0, 0, 0, 45, 45, '2019-02-27', '2019-02-27 02:34:32pm', 2, 2019, 0, 0, NULL, NULL),
(427, 215, 100, 0, 16, 4000, 7, NULL, 16, 0, 0, 0, 45, 45, '2019-03-07', '2019-03-07 05:17:23pm', 3, 2019, 0, 0, NULL, NULL),
(428, 209, 100, 0, 16, 1, 11, NULL, 16, 0, 0, 0, 45, 45, '2019-03-07', '2019-03-07 05:19:23pm', 3, 2019, 0, 0, NULL, NULL),
(429, 219, 130, 0, 16, 110, 120, 1, 16, 0, 0, 0, 45, 45, '2019-03-12', '2019-03-12 12:29:20pm', 3, 2019, 0, 0, 552, 77),
(430, 219, 130, 0, 16, 110, 120, 1, 16, 0, 0, 0, 45, 45, '2019-03-12', '2019-03-12 12:29:48pm', 3, 2019, 0, 0, 553, 77),
(431, 219, 130, 0, 16, 110, 120, 1, 16, 0, 0, 0, 45, 45, '2019-03-12', '2019-03-12 12:31:04pm', 3, 2019, 0, 0, 554, 77),
(432, 202, 0, 0, 22, 10, 120, 0, 16, 22, 0, 0, 45, 45, '2019-03-12', '2019-03-12 12:45:22pm', 3, 2019, 1, 0, 555, 58),
(433, 219, 131, 0, 31, 4110, 50, 1, 31, 0, 0, 0, 61, 45, '2019-03-12', '2019-03-12 04:02:11pm', 3, 2019, 0, 0, 560, 77),
(434, 221, 131, 0, 31, 200, 20, 1, 31, 0, 0, 0, 61, 45, '2019-03-12', '2019-03-12 04:02:11pm', 3, 2019, 0, 0, 560, 77),
(435, 220, 131, 0, 31, 300, 20, 1, 31, 0, 0, 0, 61, 45, '2019-03-12', '2019-03-12 04:02:11pm', 3, 2019, 0, 0, 560, 77),
(436, 223, 131, 0, 31, 100, 300, 1, 31, 0, 0, 0, 61, 45, '2019-03-12', '2019-03-12 04:02:11pm', 3, 2019, 0, 0, 560, 78),
(437, 222, 131, 0, 31, 100, 400, 1, 31, 0, 0, 0, 61, 45, '2019-03-12', '2019-03-12 04:02:11pm', 3, 2019, 0, 0, 560, 78),
(438, 225, 131, 0, 31, 100, 55, 1, 31, 0, 0, 0, 61, 45, '2019-03-12', '2019-03-12 04:02:11pm', 3, 2019, 0, 0, 560, 78),
(439, 222, 133, 0, 31, 5, 10, 1, 31, 0, 0, 0, 61, 45, '2019-03-12', '2019-03-12 04:52:06pm', 3, 2019, 0, 0, 564, 78),
(440, 223, 133, 0, 31, 1, 20, 1, 31, 0, 0, 0, 61, 45, '2019-03-12', '2019-03-12 04:52:06pm', 3, 2019, 0, 0, 564, 78),
(441, 225, 133, 0, 31, 1, 30, 1, 31, 0, 0, 0, 61, 45, '2019-03-12', '2019-03-12 04:52:06pm', 3, 2019, 0, 0, 564, 78),
(442, 219, 136, 0, 31, 5, 50, 1, 31, 0, 0, 0, 61, 45, '2019-03-13', '2019-03-13 07:41:25pm', 3, 2019, 0, 0, 565, 77),
(443, 220, 136, 0, 31, 1, 100, 1, 31, 0, 0, 0, 61, 45, '2019-03-13', '2019-03-13 07:41:25pm', 3, 2019, 0, 0, 565, 77),
(444, 221, 136, 0, 31, 1, 30, 1, 31, 0, 0, 0, 61, 45, '2019-03-13', '2019-03-13 07:41:25pm', 3, 2019, 0, 0, 565, 77),
(445, 226, 136, 0, 31, 1, 70, 1, 31, 0, 0, 0, 61, 45, '2019-03-13', '2019-03-13 07:41:25pm', 3, 2019, 0, 0, 565, 77),
(446, 229, 137, 0, 34, 1000, 3, 1, 32, 0, 0, 0, 59, 45, '2019-03-18', '2019-03-18 06:35:25pm', 3, 2019, 0, 0, 567, 77),
(447, 230, 137, 0, 34, 1000, 1, 1, 32, 0, 0, 0, 59, 45, '2019-03-18', '2019-03-18 06:35:25pm', 3, 2019, 0, 0, 567, 80),
(448, 231, 137, 0, 34, 1000, 0, 1, 32, 0, 0, 0, 59, 45, '2019-03-18', '2019-03-18 06:35:25pm', 3, 2019, 0, 0, 567, 81),
(449, 232, 137, 0, 34, 500, 8, 1, 32, 0, 0, 0, 59, 45, '2019-03-18', '2019-03-18 06:41:30pm', 3, 2019, 0, 0, 568, 82),
(450, 231, 137, 0, 34, 2500, 0, 1, 32, 0, 0, 0, 59, 45, '2019-03-20', '2019-03-20 05:48:24pm', 3, 2019, 0, 0, 573, 81),
(451, 230, 137, 0, 34, 1000, 2, 1, 32, 0, 0, 0, 59, 45, '2019-03-20', '2019-03-20 05:48:24pm', 3, 2019, 0, 0, 573, 80),
(452, 229, 137, 0, 34, 1000, 4, 1, 32, 0, 0, 0, 59, 45, '2019-03-20', '2019-03-20 05:48:24pm', 3, 2019, 0, 0, 573, 77),
(453, 232, 137, 0, 34, 1500, 8, 1, 32, 0, 0, 0, 59, 45, '2019-03-20', '2019-03-20 05:59:19pm', 3, 2019, 0, 0, 575, 82),
(454, 225, 140, 0, 16, 100, 100, 1, 16, 0, 0, 0, 45, 45, '2019-03-21', '2019-03-21 12:26:57pm', 3, 2019, 0, 0, 576, 78),
(455, 233, 141, 0, 31, 30, 150, 1, 31, 0, 0, 0, 61, 45, '2019-03-24', '2019-03-24 10:24:09am', 3, 2019, 0, 0, 577, 83),
(456, 234, 141, 0, 31, 5000, 3, 1, 31, 0, 0, 0, 61, 45, '2019-03-24', '2019-03-24 10:24:09am', 3, 2019, 0, 0, 577, 83),
(457, 219, 135, 0, 31, 100, 100, 1, 31, 0, 0, 0, 61, 45, '2019-03-25', '2019-03-25 12:10:29pm', 3, 2019, 0, 0, 579, 77),
(458, 219, 136, 0, 31, 100, 100, 1, 31, 0, 0, 0, 61, 45, '2019-03-25', '2019-03-25 12:11:17pm', 3, 2019, 0, 0, 580, 77),
(459, 234, 136, 0, 31, 10, 100, 1, 31, 0, 0, 0, 61, 45, '2019-03-25', '2019-03-25 12:14:55pm', 3, 2019, 0, 0, 581, 83),
(460, 234, 141, 0, 31, 100, 100, 1, 31, 0, 0, 0, 61, 45, '2019-03-25', '2019-03-25 01:02:42pm', 3, 2019, 0, 0, 582, 83),
(461, 234, 141, 0, 31, 100, 10, 1, 31, 0, 0, 0, 61, 45, '2019-03-25', '2019-03-25 01:04:53pm', 3, 2019, 0, 0, 583, 83),
(462, 234, 141, 0, 31, 100, 10, 1, 31, 0, 0, 0, 61, 45, '2019-03-25', '2019-03-25 01:07:10pm', 3, 2019, 0, 0, 584, 83),
(463, 234, 141, 0, 31, 100, 10, 1, 31, 0, 0, 0, 61, 45, '2019-03-25', '2019-03-25 01:08:01pm', 3, 2019, 0, 0, 585, 83),
(464, 233, 136, 0, 31, 100, 100, 1, 31, 0, 0, 0, 61, 45, '2019-03-25', '2019-03-25 01:08:43pm', 3, 2019, 0, 0, 586, 83),
(465, 225, 141, 0, 31, 100, 100, 1, 31, 0, 0, 0, 61, 45, '2019-03-25', '2019-03-25 07:03:00pm', 3, 2019, 0, 0, 587, 78),
(466, 243, 140, 0, 16, 10, 5000, 1, 16, 0, 0, 0, 45, 45, '2019-04-04', '2019-04-04 03:31:52pm', 4, 2019, 0, 0, 637, 83),
(467, 242, 140, 0, 16, 20, 15000, 1, 16, 0, 0, 0, 45, 45, '2019-04-04', '2019-04-04 03:31:52pm', 4, 2019, 0, 0, 637, 83),
(468, 239, 140, 0, 16, 20, 50000, 1, 16, 0, 0, 0, 45, 45, '2019-04-04', '2019-04-04 03:31:52pm', 4, 2019, 0, 0, 637, 83);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languageID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languageID`, `name`) VALUES
(1, 'English'),
(2, 'Bangla');

-- --------------------------------------------------------

--
-- Table structure for table `leave_attachments`
--

CREATE TABLE `leave_attachments` (
  `attachmentID` int(11) NOT NULL,
  `attachmentTitle` varchar(255) NOT NULL,
  `attachmentFile` varchar(255) NOT NULL,
  `leaveRequestID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_attachments`
--

INSERT INTO `leave_attachments` (`attachmentID`, `attachmentTitle`, `attachmentFile`, `leaveRequestID`, `companyID`, `branchID`, `applicationID`) VALUES
(26, 'DMLC', '2088901206.jpg', 18, 1, 1, 1),
(27, 'download (1)', '1291919424.jpg', 18, 1, 1, 1),
(30, 'download (1)', '1834849424.jpg', 20, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_category`
--

CREATE TABLE `leave_category` (
  `leaveCategoryID` int(11) NOT NULL,
  `leaveCategoryName` varchar(255) NOT NULL,
  `leaveCategoryStatus` tinyint(4) NOT NULL,
  `entryUserID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_category`
--

INSERT INTO `leave_category` (`leaveCategoryID`, `leaveCategoryName`, `leaveCategoryStatus`, `entryUserID`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 'Sick', 1, 16, 1, 1, 1),
(2, 'Marriage', 1, 16, 1, 1, 1),
(3, 'Other', 1, 16, 1, 1, 1),
(4, 'Eidul Fitr', 1, 16, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_quota`
--

CREATE TABLE `leave_quota` (
  `ID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `designationID` int(11) NOT NULL,
  `departmentID` int(11) NOT NULL,
  `leaveCategoryID` int(11) NOT NULL,
  `numberOfDays` int(11) NOT NULL,
  `effectiveDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leave_reasons`
--

CREATE TABLE `leave_reasons` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_reasons`
--

INSERT INTO `leave_reasons` (`ID`, `name`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 'Family  Problem', 1, 1, 1, 1),
(2, 'Personal Problem', 1, 1, 1, 1),
(3, 'Other', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `SL` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `leaveReasonID` int(11) NOT NULL,
  `leaveCategoryID` int(11) NOT NULL,
  `leaveRequestTitle` varchar(255) NOT NULL,
  `leaveRequestDescription` text NOT NULL,
  `leaveStartDate` date NOT NULL,
  `leaveEndDate` date NOT NULL,
  `leaveRequestSendDate` date NOT NULL,
  `isApproved` tinyint(11) NOT NULL DEFAULT '0' COMMENT '0=pending|1=approved|2=rejected',
  `approvedDate` date DEFAULT NULL,
  `approvedBy` int(11) DEFAULT NULL,
  `bossFeedback` text,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `liketypes`
--

CREATE TABLE `liketypes` (
  `likeTypeID` int(11) NOT NULL,
  `likeTypeName` varchar(80) NOT NULL,
  `likeTypeStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liketypes`
--

INSERT INTO `liketypes` (`likeTypeID`, `likeTypeName`, `likeTypeStatus`, `companyID`, `applicationID`) VALUES
(1, 'Like', 1, 1, 1),
(2, 'Wow', 1, 1, 1),
(3, 'Sad', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_activity`
--

CREATE TABLE `login_activity` (
  `activityID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `loginDate` datetime NOT NULL,
  `logoutDate` datetime DEFAULT NULL,
  `loginIP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `loginCountry` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `login_activity`
--

INSERT INTO `login_activity` (`activityID`, `userID`, `loginDate`, `logoutDate`, `loginIP`, `loginCountry`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 45, '2020-06-21 02:09:20', NULL, '::1', 'Bangladesh', 1, 1, 1),
(2, 45, '2020-06-21 02:09:40', NULL, '::1', 'Bangladesh', 1, 1, 1),
(3, 62, '2020-06-21 02:25:43', NULL, '::1', 'Bangladesh', 1, 1, 1),
(4, 62, '2020-12-13 03:43:00', NULL, '::1', 'Bangladesh', 1, 1, 1),
(5, 62, '2021-01-10 03:39:42', NULL, '::1', 'Bangladesh', 1, 1, 1),
(6, 62, '2021-10-18 07:23:03', NULL, '::1', 'Bangladesh', 1, 1, 1),
(7, 62, '2021-10-19 09:46:15', NULL, '::1', 'Bangladesh', 1, 1, 1),
(8, 62, '2021-10-19 11:21:54', NULL, '::1', 'Bangladesh', 1, 1, 1),
(9, 62, '2021-10-19 11:26:51', NULL, '::1', 'Bangladesh', 1, 1, 1),
(10, 62, '2021-10-19 12:20:48', NULL, '::1', 'Bangladesh', 1, 1, 1),
(11, 62, '2021-11-03 12:02:02', NULL, '::1', 'Bangladesh', 1, 1, 1),
(12, 62, '2021-11-03 01:58:21', NULL, '::1', 'Bangladesh', 1, 1, 1),
(13, 62, '2021-11-03 03:36:14', NULL, '::1', 'Bangladesh', 1, 1, 1),
(14, 62, '2021-11-03 03:39:22', NULL, '::1', 'Bangladesh', 1, 1, 1),
(15, 62, '2021-11-04 09:31:41', NULL, '::1', 'Bangladesh', 1, 1, 1),
(16, 62, '2021-11-06 12:15:34', NULL, '::1', 'Bangladesh', 1, 1, 1),
(17, 62, '2021-11-06 03:00:34', NULL, '::1', 'Bangladesh', 1, 1, 1),
(18, 62, '2021-11-07 10:10:50', NULL, '::1', 'Bangladesh', 1, 1, 1),
(19, 62, '2021-11-08 11:58:12', NULL, '::1', 'Bangladesh', 1, 1, 1),
(20, 62, '2021-11-09 12:24:47', NULL, '::1', 'Bangladesh', 1, 1, 1),
(21, 45, '2022-03-27 12:00:09', NULL, '::1', 'Bangladesh', 1, 1, 1),
(22, 62, '2022-03-27 12:06:26', NULL, '::1', 'Bangladesh', 1, 1, 1),
(23, 46, '2022-04-19 02:50:18', NULL, '::1', 'Bangladesh', 1, 1, 1),
(24, 46, '2022-04-19 02:50:39', NULL, '::1', 'Bangladesh', 1, 1, 1),
(25, 46, '2022-04-19 02:50:49', NULL, '::1', 'Bangladesh', 1, 1, 1),
(26, 46, '2022-04-19 02:51:02', NULL, '::1', 'Bangladesh', 1, 1, 1),
(27, 45, '2022-04-19 02:52:26', NULL, '::1', 'Bangladesh', 1, 1, 1),
(28, 45, '2022-04-19 02:53:06', NULL, '::1', 'Bangladesh', 1, 1, 1),
(29, 45, '2022-04-19 02:54:15', NULL, '::1', 'Bangladesh', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempt_count`
--

CREATE TABLE `login_attempt_count` (
  `SL` int(11) NOT NULL,
  `userLogin` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attemptTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `attemptIP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_lockdown`
--

CREATE TABLE `login_lockdown` (
  `SL` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `userLogin` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'User name or email',
  `lockedIP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockDownDate` datetime NOT NULL,
  `releaseDate` datetime NOT NULL,
  `lockType` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_banks`
--

CREATE TABLE `main_banks` (
  `mainBankID` int(11) NOT NULL,
  `mainBankName` varchar(200) DEFAULT NULL,
  `mainBankStatus` int(11) NOT NULL DEFAULT '1',
  `vendorID` int(11) DEFAULT '0',
  `storeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_banks`
--

INSERT INTO `main_banks` (`mainBankID`, `mainBankName`, `mainBankStatus`, `vendorID`, `storeID`) VALUES
(1, 'Dutch Bangla Bank', 1, 45, 16),
(2, 'Shonali Bank', 1, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `message_attachments`
--

CREATE TABLE `message_attachments` (
  `ID` int(11) NOT NULL,
  `attachmentTitle` varchar(255) NOT NULL,
  `attachmentFile` varchar(255) NOT NULL,
  `messageID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_attachments`
--

INSERT INTO `message_attachments` (`ID`, `attachmentTitle`, `attachmentFile`, `messageID`, `companyID`, `branchID`, `applicationID`) VALUES
(4, 'user_permission', '950201261.sql', 43, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsID` int(11) NOT NULL,
  `newsTypeID` int(11) NOT NULL,
  `newsCategoryID` int(11) NOT NULL,
  `newsTitle` varchar(80) NOT NULL,
  `newsOverview` text NOT NULL,
  `newsDetails` text,
  `newsfeatureImage` text,
  `newspageImage` text,
  `entryUserID` int(11) NOT NULL,
  `entryTime` datetime NOT NULL,
  `modifiedUserID` int(11) DEFAULT NULL,
  `modifiedTime` datetime DEFAULT NULL,
  `newsRefdate` date DEFAULT NULL,
  `newsStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsID`, `newsTypeID`, `newsCategoryID`, `newsTitle`, `newsOverview`, `newsDetails`, `newsfeatureImage`, `newspageImage`, `entryUserID`, `entryTime`, `modifiedUserID`, `modifiedTime`, `newsRefdate`, `newsStatus`, `companyID`, `applicationID`) VALUES
(33, 1, 6, 'Hello Test1', '', '&lt;p class=&quot;wow fadeInUp text-justify&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; animation-name: fadeInUp; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9; visibility: visible; animation-delay: 0.2s; text-align: justify !important;&quot; data-wow-delay=&quot;0.2s&quot;&gt;Iodized salt is vital for a child&amp;rsquo;s physical and mental development. Modern and quality salt farming can take the process to the next level, making it easily available for everyone.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Hopefully, everyone will come forward to get involved in producing quality salt on 59,560.90 acres of land. But for making it successful, farmers need practical knowledge alongside the establishment of display fields provided by the Government andother private sectors.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Bumper production will greatly benefit farmers on the fringe level and improve their living standards as well. Everyone has to keep trying and the process of development will continue flourishing if certain essential modifications are put in place.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;I am thankful to Islampur Salt Mill Owner Versatile Cooperative Society Limited (ISMOS) and UNICEF Bangladesh for coming up with such an initiative. I am highly optimistic that it will lead to the production and availability of quality iodized salt for the public and be able to export abroad to meet the needs of the country which will play a vital role in our national development.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;I wish the salt producers overall success.&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;Mohammad Shafiul Alam&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Cabinet Secretary&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Government of the People&amp;rsquo;s Republic of Bangladesh&lt;/p&gt;', 'image_directory/newsimage/d585a01a46-2021-11-06.png', NULL, 62, '2021-11-06 11:25:38', 62, '2021-11-07 08:17:10', '2021-11-06', 1, 1, 1),
(34, 1, 6, 'Hello Test', '', '&lt;p class=&quot;wow fadeInUp text-justify&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; animation-name: fadeInUp; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9; visibility: visible; animation-delay: 0.2s; text-align: justify !important;&quot; data-wow-delay=&quot;0.2s&quot;&gt;Bangladesh Small and Cottage Industries Corporation (BSCIC) under the Ministry of Industries with the collaboration of United Nations Children&amp;rsquo;s Fund (UNICEF) has been implementing the project &amp;ldquo;Universal Salt Iodization &amp;rdquo;since 1989. The statistics of 2011-12 shows that it has been possible to deliver iodized salt to the doors of 80% population of the country.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;I believe that this initiative of establishing field level display centers taken by Islampur Salt Mill Owner Versatile Cooperative Society Limited (ISMOS) in collaboration with UNICEF Bangladesh and BSCIC will play a vital role in ensuring the delivery of iodized salt to the doors of the rest 20% of our population. And I do believe that this joint effort will make sure the quality salt production and thus our people will be benefitted. As a result it will improve the living standard of field level farmers who our involved with this project.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;I wish every success of this project.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;Md. Abdul Halim&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Secretary&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Ministry of Industries&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Government of the People&amp;rsquo;s Republic of Bangladesh&lt;/p&gt;', 'image_directory/newsimage/ae35ac3e04-2021-11-08.png', NULL, 62, '2021-11-08 07:11:25', NULL, NULL, '2021-11-08', 1, 1, 1),
(35, 1, 6, 'Hello Test', '', '&lt;p class=&quot;wow fadeInUp text-justify&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; animation-name: fadeInUp; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9; visibility: visible; animation-delay: 0.2s; text-align: justify !important;&quot; data-wow-delay=&quot;0.2s&quot;&gt;Iodine Deficiency Disorders (IDD) arethe leading cause of preventable mental development disorders in young children. It ranges from stunted growth to more subtle degrees of impaired cognitive development.The consequences of IDD affect hundreds of millions of children and adults. They include reducedIQ levels, poorer school performance and lower work capacity. It is also blamed for still-births, miscarriages, physical impairment and thyroid dysfunctions.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;IDD was identified as a major public health issue in Bangladesh in the 1980s. Between 1981 and 1997, a programme to administer injected iodized oil was implemented in districts with high rates of IDD. However, as the wider prevalence of IDD came to be known, fortification of salt with iodine was found to be a far more cost-effective and sustainable solution. In 1989, the Government of Bangladesh passed a law making it mandatory for all edible salt to be iodized in line with the global recommendation of Universal Salt Iodization (USI). Based on it, the production of iodized salt was initiated in Bangladesh in 1990.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;UNICEF has been supporting the Ministry of Industries since 1981 for the implementation of the salt iodization programme in Bangladesh. This includes &amp;ndash; among other measures - support for the development of appropriate salt iodization technology in the country, capacity strengthening of salt millers, establishment of a monitoring systemand effective implementation of legislation.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Currently, UNICEF is working with both the public and private sectors, i.e. Bangladesh Small and Cottage Industries Corporation (BSCIC) under the Ministry of Industries and Islampur Salt Mill Owner Versatile Cooperative Society Limited (ISMOS), to improve the availability of adequately iodized salt for all. Improvements of quality and in the quantity of crude salt are some of the critical issues that greatly effect the production of quality salt. This is an issue of critical importance for the achievement of USI and the national human resource development.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;I would like to sincerely thank BSCIC and ISMOS for their active initiatives in this regard. I also wish success to the Ministry of Industries in taking necessary actions to scale up the concerned initiatives nationwide.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;Tomoo Hozumi&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Representative&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;UNICEF Bangladesh&lt;/p&gt;', 'image_directory/newsimage/38f167e59e-2021-11-08.png', NULL, 62, '2021-11-08 07:12:18', NULL, NULL, '2021-11-08', 1, 1, 1),
(36, 1, 6, 'Hello Test', '', '&lt;p class=&quot;wow fadeInUp text-justify&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; animation-name: fadeInUp; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9; visibility: visible; animation-delay: 0.2s; text-align: justify !important;&quot; data-wow-delay=&quot;0.2s&quot;&gt;BSCIC deserves great credit for starting the salt industry programme. At present in Cox&amp;rsquo;s Bazar and Chattogram districts, 27,528 farmers have used the polythene technique in an area totaling 59,563.90 acres. Every year on average the salt industry sector contributes about 1,200 crore Taka to the national economy. About 10 to 15 lacs of people of Bangladesh are directly or indirectly dependent on the salt industry. BSCIC, along with the development partners have been operating the Universal Salt Iodization (USI) programme since 1989. The government and development partners have been joined by the private organization Islampur Salt Mill Owner Versatile Cooperative Society Limited (ISMOS) which has stepped up its development of the salt industry. The participation of both government and non-government sectorsis a milestone in the development of the salt industry in Bangladesh.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;As a result of this combined effort, BSCIC has established a 10 acre exhibition salt field in Chowfaldandi, Cox&amp;rsquo;s Bazar Sadar, Cox&amp;rsquo;s Bazar and Islampur Salt Mill Owner Versatile Cooperative Society Limited (ISMOS) has established a three year term 24 acre training-cum exhibition salt field in Khan Ghuna, Islampur, Cox&amp;rsquo;s Bazar Sadar, Cox&amp;rsquo;s Bazar with direct technical support from UNICEF Bangladesh by 2018-2019 season. The result will definitely ensure top quality salt production.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;An example is being set up both at the public level and private level with the technical assistance of UNICEF Bangladesh in the development of salt industry. Wishing the success of this joint venture too.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;Md. Mostaque Hassan, NDC&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Chairman (Additional Secretary)&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Bangladesh Small and Cottage Industries Corporation (BSCIC)&lt;/p&gt;', 'image_directory/newsimage/ea309fbf0c-2021-11-08.png', NULL, 62, '2021-11-08 07:12:51', NULL, NULL, '2021-11-08', 1, 1, 1),
(37, 1, 6, 'Hello Test', '', '&lt;p class=&quot;wow fadeInUp text-justify&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; animation-name: fadeInUp; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9; visibility: visible; animation-delay: 0.2s; text-align: justify !important;&quot; data-wow-delay=&quot;0.2s&quot;&gt;Human life from birth to death depends on different nutritive elements. Iodine is such an element which - within proper limitations - is needed every day. Salt is the best means of taking this vital elementto the human body. I strongly believe that the triumph of quality salt farming and quality iodinated salt production are significant milestones.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;This enterprise is a new horizon in terms of collaboration from the government, the salt owners&amp;rsquo; association, farmers and UNICEF Bangladesh. The basic goal of this enterprise is to develop the living standards of fringe-level farmers while simultaneously ensuring that iodinated salt is 100 percent available across Bangladesh.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Thanks to Islampur Salt Mill Owner Versatile Cooperative Society Limited (ISMOS) and UNICEF Bangladesh for their joint venture in establishing 24 acres display field that features a Quality Salt Farm. I hope that people of Bangladesh will get more iodized salt through the development of more of these ventures. I wish success to everybody involved in this enterprise.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;Md. Kamal Hossain&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Deputy Commissioner&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Cox&amp;rsquo;s Bazar&lt;/p&gt;', 'image_directory/newsimage/d4ce78611d-2021-11-08.png', NULL, 62, '2021-11-08 07:13:20', NULL, NULL, '2021-11-08', 1, 1, 1),
(38, 1, 6, 'Hello Test', '', '&lt;p class=&quot;wow fadeInUp text-justify&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; animation-name: fadeInUp; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9; visibility: visible; animation-delay: 0.2s; text-align: justify !important;&quot; data-wow-delay=&quot;0.2s&quot;&gt;The development of the baby\'s brain begins in the mother\'s womb before birth. Iodine is an essential mineral for the development of the brain and the normal functioning of the body. Iodine deficiency in the body impairs the development of intelligence; intelligence can be as low as 10-15 points IQ. We need very little iodine throughout our lives to stay healthy. But it is essential for us to eat a small amount of iodine every day.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Since 1971, UNICEF Bangladesh has teamed up with Bangladesh Small and Cottage Industries Corporation (BSCIC) and salt mill owners to provide technical assistance for the implementation of universal iodized salt activities.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;From the long experience of implementing universal iodized salt program in Bangladesh, we have identified the weak points of the program and set out a program to address it. An important initiative in 2018-2019 is the establishment of 10 acres of land in Cox\'s Bazar by BSCIC and 24 acres of modern salt farming exhibition grounds by Islampur Salt Mill Owners Versatile Cooperative Society Limited. We thank the leadership of BSCIC and the contribution of Islampur Salt Mill Owners Versatile Cooperative Society Limited in this activity. This activity has given us the expected results.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;We are very hopeful that with the technical assistance of BSCIC and Islampur Salt Mill Owners Versatile Cooperative Society Limited, all salt farmers will be able to promote high quality salt cultivation by implementing such timely initiatives of modern salt cultivation. UNICEF Bangladesh always encourages up-to-date innovation and will continue to provide technical assistance to achieve the goal of universal iodized salt activities.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;Piyali Mustafi&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Head, Department of Nutrition&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;UNICEF, Bangladesh&lt;/p&gt;', 'image_directory/newsimage/e3ae4212fb-2021-11-08.png', NULL, 62, '2021-11-08 07:13:56', NULL, NULL, '2021-11-08', 1, 1, 1),
(39, 1, 6, 'Hello Test', '', '&lt;p class=&quot;wow fadeInUp text-justify&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; animation-name: fadeInUp; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9; visibility: visible; animation-delay: 0.2s; text-align: justify !important;&quot; data-wow-delay=&quot;0.2s&quot;&gt;I feel proud to be a part of Islampur Salt Mill Owner Versatile Cooperative Society Limited (ISMOS) and their effort to make salt cultivation become more modern and developed. I have no doubt it will eventually make the sector more successful and effective. The combined effort of the salt cultivators, millers and UNICEF to introduce developed salt cultivation to our country is testimony to the skills and perseverance of all people involved in this sector. The aim of this project is to produce quality iodized salt and take it to marginalized people, thereby eradicating iodine shortages. It is no exaggeration to say that the participation of all the partners in this project reflects their responsibility towards humanity andtheir contribution towards making our country more prosperous.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;I especially mention Dr. Ireen Akhter Chowdhury, Nutrition Officer, UNICEF, Bangladesh whose ceaseless endeavors have enabled us to make this journey possible.The assistance of UNICEF has not only triggered more optimism among the cultivators of Bangladesh, but also a renewed confidence that iodized salt can benefit everyone, no matter where they live.&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Please join us and let us change ourselves and others as well with the slogan &amp;lsquo;Let&amp;rsquo;s Make a Change&amp;rsquo;.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #58547e; font-family: Quicksand, sans-serif; font-size: 16px; background-color: #f5f5f9;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;Shamsul Alam Azad&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;President&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;Islampur Salt Mill Owner Versatile Cooperative Society Limited (ISMOS)&lt;/p&gt;', 'image_directory/newsimage/65aaf8dd69-2021-11-08.png', NULL, 62, '2021-11-08 07:14:21', NULL, NULL, '2021-11-08', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `newscategories`
--

CREATE TABLE `newscategories` (
  `newsCategoryID` int(11) NOT NULL,
  `newsCategoryName` varchar(80) NOT NULL,
  `newsTypeID` int(11) NOT NULL,
  `newsCategoryStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newscategories`
--

INSERT INTO `newscategories` (`newsCategoryID`, `newsCategoryName`, `newsTypeID`, `newsCategoryStatus`, `companyID`, `applicationID`) VALUES
(6, 'Quality Salt Cultivation', 0, 1, 1, 1),
(9, 'About', 0, 1, 1, 1),
(10, 'USI BD Central MIS', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `newstypes`
--

CREATE TABLE `newstypes` (
  `newsTypeID` int(11) NOT NULL,
  `newsTypeName` varchar(55) NOT NULL,
  `newsTypeStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `office_standardtypes`
--

CREATE TABLE `office_standardtypes` (
  `standardTypeID` int(10) NOT NULL,
  `standardTypeName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_standardtypes`
--

INSERT INTO `office_standardtypes` (`standardTypeID`, `standardTypeName`) VALUES
(1, 'Modern'),
(2, 'Average'),
(4, 'Bellow Average ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `storeID` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_userID` int(11) UNSIGNED DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `counterNo` int(11) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `order_month` int(2) DEFAULT NULL,
  `order_date` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_time` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_year` int(11) DEFAULT NULL,
  `vat` double(5,0) DEFAULT NULL,
  `grand_total` double(10,0) DEFAULT NULL,
  `is_approved` int(2) DEFAULT '0',
  `is_confirmed` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT '0=>not confirmed, 1=> confirmed, 2=> canceled',
  `order_type` varchar(8) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT '1 means receive/buy, 2 sales',
  `is_ecommerce` int(1) DEFAULT '0',
  `carry_cost` int(11) DEFAULT '0',
  `po_no` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `indent_no` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_520_ci,
  `contact_person` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `contact_person_phone` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `challan_number` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shipping_address` int(11) NOT NULL DEFAULT '0',
  `billing_address` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `storeID`, `entry_userID`, `vendorID`, `counterNo`, `total`, `order_month`, `order_date`, `order_time`, `order_year`, `vat`, `grand_total`, `is_approved`, `is_confirmed`, `order_type`, `is_ecommerce`, `carry_cost`, `po_no`, `indent_no`, `note`, `contact_person`, `contact_person_phone`, `challan_number`, `shipping_address`, `billing_address`) VALUES
(1, '62', '0', NULL, 0, 1, 296444.00, NULL, '2019-04-04', '04:33:05 PM', NULL, 0, 296494, 0, '2', '2', 1, 50, NULL, NULL, NULL, NULL, NULL, NULL, 70, 69),
(2, '62', '0', NULL, 0, 1, 132444.00, NULL, '2019-04-04', '05:27:29 PM', NULL, 0, 132494, 0, NULL, '2', 1, 50, NULL, NULL, NULL, NULL, NULL, NULL, 70, 69);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detailsID` int(11) NOT NULL,
  `orderID` int(11) UNSIGNED DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `quantity` int(8) DEFAULT NULL,
  `buying_price` float(11,2) DEFAULT '0.00',
  `selling_price` float(11,2) DEFAULT '0.00',
  `product_cycle` varchar(12) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `storeID` varchar(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sales_typeID` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `is_grouped` int(1) DEFAULT '0',
  `groupProductID` int(11) DEFAULT NULL,
  `unit` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_date` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_month` tinyint(3) DEFAULT NULL,
  `entry_year` int(5) DEFAULT NULL,
  `sold_from` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_detailsID`, `orderID`, `product_title`, `productID`, `quantity`, `buying_price`, `selling_price`, `product_cycle`, `discount`, `storeID`, `sales_typeID`, `vendorID`, `is_grouped`, `groupProductID`, `unit`, `entry_date`, `entry_month`, `entry_year`, `sold_from`) VALUES
(1, 1, 'Oppo S2', 243, 1, NULL, 12000.00, '1', NULL, '16', 2, 45, NULL, NULL, NULL, '2019-04-04', 4, 2019, NULL),
(2, 1, 'IPhone 8', 239, 1, NULL, 70000.00, '1', NULL, '16', 2, 45, NULL, NULL, NULL, '2019-04-04', 4, 2019, NULL),
(3, 1, 'Xiaomi Note 3', 240, 1, NULL, 34444.00, '1', NULL, '16', 2, 45, NULL, NULL, NULL, '2019-04-04', 4, 2019, NULL),
(4, 1, 'IPhone 5', 237, 1, NULL, 100000.00, '1', NULL, '16', 2, 45, NULL, NULL, NULL, '2019-04-04', 4, 2019, NULL),
(5, 1, 'Iphone 6', 238, 1, NULL, 80000.00, '1', NULL, '16', 2, 45, NULL, NULL, NULL, '2019-04-04', 4, 2019, NULL),
(6, 2, 'Oppo S2', 243, 2, NULL, 12000.00, '1', NULL, '16', 2, 45, NULL, NULL, NULL, '2019-04-04', 4, 2019, NULL),
(7, 2, 'Xiaomi MI A3', 242, 1, NULL, 4000.00, '1', NULL, '16', 2, 45, NULL, NULL, NULL, '2019-04-04', 4, 2019, NULL),
(8, 2, 'IPhone 8', 239, 1, NULL, 70000.00, '1', NULL, '16', 2, 45, NULL, NULL, NULL, '2019-04-04', 4, 2019, NULL),
(9, 2, 'Xiaomi Note 3', 240, 1, NULL, 34444.00, '1', NULL, '16', 2, 45, NULL, NULL, NULL, '2019-04-04', 4, 2019, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pad_header_height`
--

CREATE TABLE `pad_header_height` (
  `id` int(11) NOT NULL,
  `margin_top` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pad_header_height`
--

INSERT INTO `pad_header_height` (`id`, `margin_top`, `vendorID`, `storeID`) VALUES
(2, 120, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentID` int(11) NOT NULL,
  `orderID` varchar(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `customerID` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_type` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT '1 cash,2 cheque,3 card, 4 other, 5 mobile',
  `total_amount` float(8,2) DEFAULT NULL,
  `paid_amount` float(8,2) DEFAULT NULL,
  `custom_discount` float(8,2) DEFAULT NULL,
  `payment_remarks` varchar(155) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_month` int(2) DEFAULT NULL,
  `payment_date` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_year` int(4) DEFAULT NULL,
  `payment_date_time` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `counter_no` int(5) DEFAULT NULL,
  `entry_userID` int(11) UNSIGNED DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `storeID` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sales_type` int(1) DEFAULT '0',
  `referenceNo` varchar(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `orderID`, `customerID`, `payment_type`, `total_amount`, `paid_amount`, `custom_discount`, `payment_remarks`, `payment_month`, `payment_date`, `payment_year`, `payment_date_time`, `payment_status`, `counter_no`, `entry_userID`, `vendorID`, `storeID`, `sales_type`, `referenceNo`) VALUES
(1, '1', '62', '1', 296494.00, 50.00, NULL, '', 4, '2019-04-04', 2019, '2019-04-04 04:33:05pm', NULL, 1, 0, 0, '0', 20, '0'),
(2, '2', '62', '1', 132494.00, 50.00, NULL, '', 4, '2019-04-04', 2019, '2019-04-04 05:27:29pm', NULL, 1, 0, 0, '0', 20, '0');

-- --------------------------------------------------------

--
-- Table structure for table `permanent_block`
--

CREATE TABLE `permanent_block` (
  `ID` int(11) NOT NULL,
  `blockedIP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `blockReason` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `blockedDate` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permissionID` int(11) NOT NULL,
  `permission_name` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permissionID`, `permission_name`) VALUES
(1, 'manage all'),
(2, 'add product'),
(3, 'edit product'),
(4, 'delete product'),
(5, 'sale product'),
(6, 'buy product'),
(7, 'add expnese'),
(8, 'edit expense'),
(9, 'add category'),
(10, 'edit category'),
(11, 'delete category'),
(12, 'add inventory'),
(13, 'distribute stock'),
(14, 'view expense'),
(15, 'add store'),
(16, 'edit store'),
(17, 'delete store'),
(19, 'add shalve'),
(20, 'edit shalve'),
(21, 'delete shalve'),
(22, 'return order'),
(24, 'read return order'),
(25, 'manage user'),
(26, 'view stock'),
(27, 'add customer & supplier'),
(28, 'edit customer & supplier'),
(29, 'delete customer & supplier'),
(30, 'view accounts'),
(31, 'edit accounts'),
(32, 'manage banner'),
(33, 'store manager'),
(34, 'add level'),
(35, 'edit level'),
(36, 'delete level'),
(37, 'add quotation'),
(38, 'edit quotation'),
(39, 'delete quotation'),
(40, 'view quotation'),
(1000, 'manage knowledge base'),
(1001, 'manage shifts'),
(1002, 'add employee'),
(1003, 'edit employee'),
(1004, 'view employee list'),
(1005, 'delete employee'),
(1009, 'manage salary grade'),
(1010, 'generate salary'),
(1011, 'manage salary reports'),
(1012, 'salary settings'),
(1014, 'manage deduction'),
(1018, 'manage deduction type'),
(1022, 'manage allowance'),
(1026, 'manage allowance type'),
(1027, 'employee salary'),
(1028, 'make admin'),
(1029, 'leave category management'),
(1030, 'leave reason management'),
(1031, 'leave requests management'),
(1032, 'holidays management'),
(1033, 'leave quota management'),
(1034, 'manage attendance'),
(1035, 'add project requisition'),
(1036, 'edit project requisition'),
(1037, 'manage project requisition'),
(1050, 'ecommerce order manage');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `product_title` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pcode` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_isbn` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_details` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `product_dimensions` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_image` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `multiple_image` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `categoryID` int(11) UNSIGNED DEFAULT NULL,
  `brandID` int(11) DEFAULT NULL,
  `is_grouped` int(2) DEFAULT '0',
  `status` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `record_date_time` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_userID` int(11) UNSIGNED DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `is_deleted` int(2) DEFAULT '0',
  `storeID` int(11) DEFAULT NULL,
  `is_ecommerce` int(1) DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=> featured product , 0=> not featured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `product_title`, `pcode`, `product_isbn`, `product_details`, `product_dimensions`, `product_image`, `multiple_image`, `categoryID`, `brandID`, `is_grouped`, `status`, `record_date_time`, `entry_userID`, `vendorID`, `is_deleted`, `storeID`, `is_ecommerce`, `is_featured`) VALUES
(235, 'Samsung 500', '45566', '343434', '<p>Samsung 500<br></p>', ',,', '2d69dc3d1a-2019-03-27.jpg', '02d69dc3d1a-2019-03-27.jpg', 84, 25, 0, '0', '2019-03-27 01:22:01pm', 45, 45, 0, 16, 1, 1),
(236, 'Samsung J2', 'Sam11951', 'sdsdsdwe', '', ',,', 'd60b4e76c9-2019-03-27.png', '0d60b4e76c9-2019-03-27.', 78, 25, 0, '0', '2019-03-27 05:46:27pm', 45, 45, 0, 16, 1, 0),
(237, 'IPhone 5', 'IPh37684', 'wew', '', ',,', '82ff59ce04-2019-03-27.jfif', '082ff59ce04-2019-03-27.', 83, 28, 0, '0', '2019-03-27 05:49:55pm', 45, 45, 0, 16, 1, 0),
(238, 'Iphone 6', 'Iph39778', 'dsdsdwe', '', ',,', 'af768cabca-2019-03-27.png', '0af768cabca-2019-03-27.', 83, 28, 0, '0', '2019-03-27 05:50:18pm', 45, 45, 0, 16, 1, 0),
(239, 'IPhone 8', 'IPh63082', '', '', ',,', 'a9ccb9b76d-2019-03-27.jfif', '0a9ccb9b76d-2019-03-27.', 83, 28, 0, '0', '2019-03-27 05:50:36pm', 45, 45, 0, 16, 1, 0),
(240, 'Xiaomi Note 3', 'Xia55562', '', '', ',,', '42f7571ed3-2019-03-27.jpg', '042f7571ed3-2019-03-27.', 83, 26, 0, '0', '2019-03-27 05:51:04pm', 45, 45, 0, 16, 1, 1),
(241, 'Xiaomi MI 2', 'Xia62818', '232323', '', ',,', 'bd5a80c5da-2019-03-27.jpg', '0bd5a80c5da-2019-03-27.', 83, 26, 0, '0', '2019-03-27 05:51:24pm', 45, 45, 0, 16, 1, 0),
(242, 'Xiaomi MI A3', 'Xia31667', '232323', '', ',,', '3120f33c7b-2019-03-27.jfif', '03120f33c7b-2019-03-27.', 83, 26, 0, '0', '2019-03-27 05:51:42pm', 45, 45, 0, 16, 1, 0),
(243, 'Oppo S2', 'Opp14340', 'ewe', '', ',,', '009eca8698-2019-03-27.jpg', '0009eca8698-2019-03-27.', 83, 27, 0, '1', '2019-03-27 05:52:07pm', 45, 45, 0, 16, 1, 0),
(244, 'Oppo S3', 'Opp42023', '32323', '', ',,', '97e8145813-2019-04-07.png', '038cc19a991-2019-03-27.', 83, 0, 0, '0', '2019-03-27 05:52:23pm', 45, 45, 0, 16, 1, 0),
(245, 'Test', 'Tes41823', '232353', '', ',,', NULL, '07da8ff0045-2019-04-27.', 89, 26, 0, '0', '2019-04-27 05:31:02pm', 45, 45, 0, 16, 1, 0),
(246, 'Test Item', 'Tes23236', '', '', ',,', NULL, '0c86576a0ea-2019-04-27.', 86, 0, 0, '0', '2019-04-27 05:32:13pm', 45, 45, 0, 16, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `SL` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `attrID` int(11) NOT NULL,
  `attrValueID` int(11) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `storeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`SL`, `categoryID`, `productID`, `attrID`, `attrValueID`, `vendorID`, `storeID`) VALUES
(173, 84, 202, 1, 22, 45, 16),
(174, 84, 202, 1, 21, 45, 16),
(175, 84, 202, 1, 2, 45, 16),
(176, 84, 202, 1, 1, 45, 16),
(177, 84, 202, 3, 28, 45, 16),
(178, 84, 202, 3, 27, 45, 16),
(179, 84, 202, 2, 24, 45, 16),
(180, 84, 202, 2, 23, 45, 16),
(216, 77, 263, 2, 25, 45, 16),
(217, 77, 263, 2, 24, 45, 16),
(218, 77, 268, 2, 25, 45, 16),
(219, 77, 268, 2, 24, 45, 16),
(220, 77, 269, 3, 28, 45, 16),
(221, 77, 269, 2, 25, 45, 16),
(222, 77, 269, 2, 24, 45, 16),
(223, 77, 269, 1, 22, 45, 16),
(227, 77, 270, 2, 25, 45, 16),
(228, 77, 270, 2, 24, 45, 16),
(229, 77, 270, 2, 23, 45, 16),
(230, 77, 270, 2, 5, 45, 16),
(231, 77, 270, 1, 22, 45, 16),
(232, 77, 270, 1, 21, 45, 16),
(233, 77, 270, 1, 20, 45, 16),
(234, 83, 243, 3, 28, 45, 16),
(235, 83, 243, 2, 25, 45, 16),
(236, 83, 243, 1, 22, 45, 16),
(237, 83, 240, 3, 28, 45, 16),
(240, 83, 241, 3, 27, 45, 16),
(241, 83, 241, 2, 25, 45, 16),
(244, 83, 237, 1, 20, 45, 16),
(245, 83, 239, 1, 20, 45, 16),
(246, 83, 239, 1, 1, 45, 16),
(247, 83, 238, 3, 28, 45, 16),
(248, 83, 238, 1, 20, 45, 16),
(249, 83, 238, 1, 2, 45, 16),
(250, 83, 242, 3, 26, 45, 16),
(251, 83, 242, 2, 24, 45, 16),
(252, 83, 242, 1, 22, 45, 16),
(253, 84, 235, 3, 27, 45, 16),
(254, 84, 235, 3, 26, 45, 16),
(255, 84, 235, 2, 25, 45, 16),
(256, 84, 235, 2, 23, 45, 16),
(257, 84, 235, 2, 5, 45, 16),
(258, 84, 235, 1, 22, 45, 16),
(259, 84, 235, 1, 21, 45, 16),
(260, 84, 235, 1, 20, 45, 16),
(261, 84, 235, 1, 1, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `product_colorID` int(11) UNSIGNED NOT NULL,
  `productID` int(11) UNSIGNED DEFAULT NULL,
  `inventoryID` int(11) DEFAULT NULL,
  `color` varchar(8) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`product_colorID`, `productID`, `inventoryID`, `color`, `quantity`) VALUES
(18, 66, 32, 'red', 30),
(19, 66, 32, 'black', 20),
(20, 74, 33, 'red', 40),
(21, 74, 33, 'white', 40);

-- --------------------------------------------------------

--
-- Table structure for table `product_price`
--

CREATE TABLE `product_price` (
  `product_priceID` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `selling_price` float(11,2) DEFAULT NULL,
  `entry_date` varchar(12) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vat` float(5,2) DEFAULT NULL,
  `promo_price` float(11,0) DEFAULT NULL,
  `promo_start` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `promo_end` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `promo_status` int(1) DEFAULT '0',
  `entry_userID` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `product_price`
--

INSERT INTO `product_price` (`product_priceID`, `productID`, `selling_price`, `entry_date`, `date_time`, `vat`, `promo_price`, `promo_start`, `promo_end`, `promo_status`, `entry_userID`, `status`) VALUES
(38, 112, 5000.00, '2018-12-05', '2018-12-05 09:39:25a', 0.00, 0, '', '', 0, 30, 1),
(39, 113, 3000.00, '2018-12-05', '2018-12-05 09:40:16a', 0.00, 0, '', '', 0, 30, 1),
(40, 114, 3000.00, '2018-12-05', '2018-12-05 09:40:56a', 0.00, 0, '', '', 0, 30, 1),
(41, 115, 2000.00, '2018-12-05', '2018-12-05 09:42:02a', 0.00, 0, '', '', 0, 30, 1),
(42, 116, 3000.00, '2018-12-05', '2018-12-05 10:29:25a', 0.00, 0, '', '', 0, 30, 1),
(43, 117, 2000.00, '2018-12-05', '2018-12-05 10:29:59a', 0.00, 0, '', '', 0, 30, 1),
(44, 118, 2000.00, '2018-12-05', '2018-12-05 10:30:30a', 0.00, 0, '', '', 0, 30, 1),
(45, 119, 1000.00, '2018-12-05', '2018-12-05 10:31:00a', 0.00, 0, '', '', 0, 30, 1),
(46, 120, 4000.00, '2018-12-06', '2018-12-06 09:57:06a', 0.00, 0, '', '', 0, 44, 1),
(47, 121, 2000.00, '2018-12-06', '2018-12-06 09:57:47a', 0.00, 0, '', '', 0, 44, 1),
(48, 122, 2000.00, '2018-12-06', '2018-12-06 10:23:09a', 0.00, 0, '', '', 0, 44, 1),
(49, 123, 1000.00, '2018-12-08', '2018-12-08 12:04:32p', 0.00, 0, '', '', 0, 42, 1),
(53, 171, 9000.00, '2018-12-12', '2018-12-12 05:56:31p', 0.00, 0, '', '', 0, 42, 1),
(54, 172, 20000.00, '2018-12-12', '2018-12-12 05:58:00p', 0.00, 0, '', '', 0, 42, 1),
(55, 172, 20000.00, '2018-12-12', '2018-12-12 05:59:55p', 0.00, 0, '', '', 0, 42, 1),
(56, 174, 5000.00, '2018-12-12', '2018-12-12 11:14:35p', 0.00, 0, '', '', 0, 42, 1),
(57, 175, 1000.00, '2018-12-12', '2018-12-12 11:15:04p', 0.00, 0, '', '', 0, 42, 1),
(58, 176, 1000.00, '2018-12-12', '2018-12-12 11:16:06p', 0.00, 0, '', '', 0, 42, 1),
(59, 177, 7000.00, '2018-12-12', '2018-12-12 11:20:17p', 0.00, 0, '', '', 0, 42, 1),
(60, 178, 2000.00, '2018-12-13', '2018-12-13 02:05:18p', 0.00, 0, '', '', 0, 46, 1),
(61, 179, 1000.00, '2018-12-13', '2018-12-13 02:06:19p', 0.00, 0, '', '', 0, 46, 1),
(62, 180, 500.00, '2018-12-13', '2018-12-13 02:07:00p', 0.00, 0, '', '', 0, 46, 1),
(63, 181, 1000.00, '2018-12-13', '2018-12-13 02:07:37p', 0.00, 0, '', '', 0, 46, 1),
(64, 182, 1000.00, '2018-12-13', '2018-12-13 02:08:12p', 0.00, 0, '', '', 0, 46, 1),
(65, 183, 5000.00, '2018-12-13', '2018-12-13 02:09:17p', 0.00, 0, '', '', 0, 46, 1),
(66, 184, 1000.00, '2018-12-13', '2018-12-13 02:10:49p', 0.00, 0, '', '', 0, 46, 1),
(67, 185, 1000.00, '2018-12-13', '2018-12-13 02:12:21p', 0.00, 0, '', '', 0, 46, 1),
(68, 186, 4000.00, '2018-12-13', '2018-12-13 02:26:10p', 0.00, 0, '', '', 0, 46, 1),
(69, 187, 5000.00, '2018-12-14', '2018-12-14 03:52:03p', 0.00, 0, '', '', 0, 45, 1),
(70, 188, 1000.00, '2018-12-18', '2018-12-18 11:12:30a', 0.00, 0, '', '', 0, 46, 1),
(71, 189, 1000.00, '2018-12-19', '2018-12-19 08:57:57p', 0.00, 0, '', '', 0, 45, 1),
(75, 196, 1000.00, '2018-12-20', '2018-12-20 09:38:09a', 0.00, 0, '', '', 0, 45, 1),
(76, 197, 2000.00, '2018-12-22', '2018-12-22 05:20:38p', 0.00, 0, '', '', 0, 47, 1),
(77, 198, 1000.00, '2018-12-22', '2018-12-22 05:21:15p', 0.00, 0, '', '', 0, 47, 1),
(78, 199, 2000.00, '2018-12-24', '2018-12-24 04:31:22p', 0.00, 0, '', '', 0, 45, 1),
(79, 200, 12000.00, '2019-01-04', '2019-01-04 09:03:11p', 10.00, 10000, '2019-01-03', '2019-01-10', 0, 45, 0),
(80, 200, 13000.00, '2019-01-04', '2019-01-04 09:22:08p', 200.00, 12500, '12-01-2019', '15-1-2019', 0, 45, 1),
(81, 201, 1500.00, '2019-01-05', '2019-01-05 10:12:05a', 10.00, 1400, '2019-01-04', '2019-01-10', 0, 45, 1),
(82, 202, 40.00, '2019-01-23', '2019-01-23 11:52:36a', 0.00, 0, '', '', 0, 45, 1),
(83, 203, 40.00, '2019-01-24', '2019-01-24 03:58:19p', 0.00, 0, '', '', 0, 45, 1),
(84, 204, 120.00, '2019-01-28', '2019-01-28 11:44:52a', 0.00, 0, '', '', 0, 45, 1),
(85, 205, 10.00, '2019-01-29', '2019-01-29 04:19:09p', 0.00, 0, '', '', 0, 45, 1),
(86, 207, 50.00, '2019-02-16', '2019-02-16 12:05:24p', 0.00, 0, '', '', 0, 45, 1),
(87, 208, 50.00, '2019-02-17', '2019-02-17 11:28:38a', 0.00, 0, '', '', 0, 45, 1),
(88, 209, 50.00, '2019-02-17', '2019-02-17 04:09:09p', 0.00, 0, '', '', 0, 45, 1),
(89, 210, 500.00, '2019-02-17', '2019-02-17 04:17:42p', 0.00, 0, '', '', 0, 45, 1),
(90, 211, 12.00, '2019-02-17', '2019-02-17 07:21:36p', 0.00, 0, '', '', 0, 45, 1),
(91, 213, 120.00, '2019-02-20', '2019-02-20 07:08:26p', 0.00, 0, '', '', 0, 52, 1),
(92, 214, 12.00, '2019-02-20', '2019-02-20 07:16:06p', 0.00, 0, '', '', 0, 52, 1),
(93, 215, 10.00, '2019-02-27', '2019-02-27 02:31:42p', 0.00, 0, '', '', 0, 45, 1),
(94, 216, 565.00, '2019-02-27', '2019-02-27 06:42:08p', 0.00, 0, '', '', 0, 45, 1),
(95, 217, 200.00, '2019-03-05', '2019-03-05 04:54:59p', 200.00, 0, '', '', 0, 45, 1),
(96, 219, 40.00, '2019-03-07', '2019-03-07 12:57:34p', 0.00, 0, '', '', 0, 58, 1),
(97, 220, 12.00, '2019-03-07', '2019-03-07 01:32:40p', 0.00, 0, '', '', 0, 45, 1),
(98, 221, 50.00, '2019-03-07', '2019-03-07 01:36:50p', 0.00, 0, '', '', 0, 45, 1),
(99, 223, 15.00, '2019-03-07', '2019-03-07 01:57:05p', 0.00, 0, '', '', 0, 45, 1),
(100, 224, 50.00, '2019-03-10', '2019-03-10 01:04:45p', 0.00, 0, '', '', 0, 45, 1),
(101, 225, 12.00, '2019-03-11', '2019-03-11 11:20:26a', 0.00, 0, '', '', 0, 45, 1),
(102, 226, 50.00, '2019-03-12', '2019-03-12 03:59:12p', 0.00, 0, '', '', 0, 61, 1),
(103, 227, 50.00, '2019-03-12', '2019-03-12 04:08:38p', 0.00, 0, '', '', 0, 61, 1),
(104, 228, 200.00, '2019-03-12', '2019-03-12 04:09:45p', 0.00, 0, '', '', 0, 61, 1),
(105, 229, 10.00, '2019-03-18', '2019-03-18 06:28:01p', 0.00, 0, '', '', 0, 59, 1),
(106, 230, 1.00, '2019-03-18', '2019-03-18 06:29:32p', 0.00, 0, '', '', 0, 59, 1),
(107, 231, 0.00, '2019-03-18', '2019-03-18 06:30:39p', 0.00, 0, '', '', 0, 59, 1),
(108, 232, 10.00, '2019-03-18', '2019-03-18 06:39:41p', 0.00, 0, '', '', 0, 59, 1),
(109, 232, 10.00, '2019-03-18', '2019-03-18 06:39:59p', 0.00, 0, '', '', 0, 59, 1),
(110, 233, 160.00, '2019-03-24', '2019-03-24 10:19:44a', 0.00, 0, '', '', 0, 61, 1),
(111, 234, 5.00, '2019-03-24', '2019-03-24 10:21:01a', 0.00, 0, '', '', 0, 61, 1),
(112, 235, 5000.00, '2019-03-27', '2019-03-27 01:22:13p', 0.00, 0, '', '', 0, 45, 1),
(113, 236, 10000.00, '2019-03-27', '2019-03-27 05:46:34p', 0.00, 0, '', '', 0, 45, 1),
(114, 237, 100000.00, '2019-03-27', '2019-03-27 05:49:59p', 0.00, 0, '', '', 0, 45, 1),
(115, 238, 80000.00, '2019-03-27', '2019-03-27 05:50:22p', 0.00, 0, '', '', 0, 45, 1),
(116, 239, 70000.00, '2019-03-27', '2019-03-27 05:50:40p', 0.00, 0, '', '', 0, 45, 1),
(117, 240, 34444.00, '2019-03-27', '2019-03-27 05:51:08p', 0.00, 0, '', '', 0, 45, 1),
(118, 241, 20000.00, '2019-03-27', '2019-03-27 05:51:28p', 0.00, 0, '', '', 0, 45, 1),
(119, 242, 4000.00, '2019-03-27', '2019-03-27 05:51:46p', 0.00, 0, '', '', 1, 45, 1),
(120, 243, 15000.00, '2019-03-27', '2019-03-27 05:52:10p', 0.00, 12000, '2019-04-01', '2019-04-20', 0, 45, 1),
(121, 244, 5000.00, '2019-03-27', '2019-03-27 05:52:30p', 0.00, 0, '', '', 0, 45, 1),
(122, 249, 3000.00, '2019-03-31', '2019-03-31 05:41:44p', 0.00, 0, '', '', 0, 45, 1),
(123, 270, 50.00, '2019-03-31', '2019-03-31 06:16:26p', 0.00, 0, '', '', 0, 45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `product_sizeID` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `inventoryID` int(11) DEFAULT NULL,
  `size` varchar(12) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`product_sizeID`, `productID`, `inventoryID`, `size`, `quantity`) VALUES
(1, 74, 33, 's', 50),
(2, 74, 33, 'l', 30);

-- --------------------------------------------------------

--
-- Table structure for table `profile_activity_setup`
--

CREATE TABLE `profile_activity_setup` (
  `activity_sl_number` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `gCategoryID` int(11) NOT NULL,
  `gCategoryWiseTypeID` int(11) NOT NULL,
  `activityTitle` varchar(200) NOT NULL,
  `activityDescription` text NOT NULL,
  `activityStrartDate` varchar(80) NOT NULL,
  `activityEndDate` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_activity_setup`
--

INSERT INTO `profile_activity_setup` (`activity_sl_number`, `profile_id`, `gCategoryID`, `gCategoryWiseTypeID`, `activityTitle`, `activityDescription`, `activityStrartDate`, `activityEndDate`) VALUES
(4, 23, 1, 2, 'Office meeting', '<p>Today is office meeting time. So, its important for you</p>', '2018-05-16', '2018-05-25'),
(5, 23, 1, 1, 'Ask Manager for task', '<p>This is sample description. Just for testing purpose</p>', '2018-05-16', '2018-05-31'),
(6, 23, 1, 1, 'Call your mannager', '<p>qqqqqqqqqqqq</p>', '2018-05-22', '2018-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `profile_known_setup`
--

CREATE TABLE `profile_known_setup` (
  `profile_Known_ID` int(6) NOT NULL,
  `profile_Known` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `profile_known_setup`
--

INSERT INTO `profile_known_setup` (`profile_Known_ID`, `profile_Known`, `status`) VALUES
(1, 'Family', 1),
(2, 'Reletives', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projectcategories`
--

CREATE TABLE `projectcategories` (
  `projectCatID` int(11) NOT NULL,
  `projectCatName` varchar(80) NOT NULL,
  `projectCatStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectcategories`
--

INSERT INTO `projectcategories` (`projectCatID`, `projectCatName`, `projectCatStatus`, `companyID`, `applicationID`) VALUES
(1, 'USI BD Central MIS', 1, 1, 1),
(2, 'About', 1, 1, 1),
(3, 'Quality Salt Cultivation', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `projectID` int(11) NOT NULL,
  `projectCatID` int(11) NOT NULL,
  `projectName` varchar(80) NOT NULL,
  `projectOverview` text NOT NULL,
  `projectDetails` text,
  `projectImage` text,
  `projectGallery` text,
  `entryUserID` int(11) NOT NULL,
  `entryTime` datetime NOT NULL,
  `projectStatus` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL,
  `clientName` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projectID`, `projectCatID`, `projectName`, `projectOverview`, `projectDetails`, `projectImage`, `projectGallery`, `entryUserID`, `entryTime`, `projectStatus`, `companyID`, `applicationID`, `clientName`) VALUES
(15, 3, 'Test 5078', 'tNJWAk0fY0A', NULL, NULL, NULL, 62, '2021-11-07 07:01:29', 1, 1, 1, ''),
(16, 3, 'Test 506', 'tNJWAk0fY0A', NULL, NULL, NULL, 62, '2021-11-07 07:31:50', 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `quotationID` int(11) NOT NULL,
  `quotation_to` int(11) NOT NULL COMMENT 'Customer ID',
  `quotation_create_date` datetime NOT NULL,
  `quotation_send_date` datetime DEFAULT NULL,
  `is_send` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `is_approved` tinyint(4) NOT NULL DEFAULT '0',
  `total_amount` float NOT NULL,
  `entry_userID` int(11) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `storeID` int(11) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`quotationID`, `quotation_to`, `quotation_create_date`, `quotation_send_date`, `is_send`, `status`, `is_approved`, `total_amount`, `entry_userID`, `vendorID`, `storeID`, `notes`) VALUES
(15, 51, '2019-01-06 10:23:44', '2019-01-06 12:00:58', 1, 1, 0, 4500, 45, 45, 13, 'Nahid'),
(16, 51, '2019-01-10 11:20:45', '2019-01-22 11:52:12', 1, 1, 0, 20000, 45, 45, 16, 'Very urgent'),
(17, 51, '2019-01-10 03:57:33', NULL, 0, 1, 0, 13200, 45, 45, 16, 'New'),
(18, 51, '2019-01-10 04:02:34', NULL, 0, 1, 0, 13200, 45, 45, 16, 'please send this quick');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `SL` int(11) NOT NULL,
  `quotationID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `vat` float NOT NULL,
  `vendorID` int(11) NOT NULL,
  `storeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `quotation_details`
--

INSERT INTO `quotation_details` (`SL`, `quotationID`, `productID`, `unit_price`, `quantity`, `vat`, `vendorID`, `storeID`) VALUES
(27, 15, 178, 2000, 2, 0, 45, 13),
(28, 15, 180, 500, 1, 0, 45, 13),
(29, 16, 178, 2000, 10, 0, 45, 16),
(30, 17, 200, 13000, 1, 200, 45, 16),
(31, 18, 200, 13000, 1, 200, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `rtl_levels`
--

CREATE TABLE `rtl_levels` (
  `SL` int(11) NOT NULL,
  `level_nameID` int(11) NOT NULL,
  `level_bn_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_en_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_modified` tinyint(4) NOT NULL,
  `vendorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rtl_levels`
--

INSERT INTO `rtl_levels` (`SL`, `level_nameID`, `level_bn_name`, `level_en_name`, `is_modified`, `vendorID`) VALUES
(1, 1, 'à¦®à§‡à¦‡à¦¨', 'Main', 0, 45),
(2, 2, 'à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡', 'Dashboard', 1, 45),
(3, 3, 'à¦…à¦ªà¦¶à¦¨à¦¸', 'Options', 1, 45),
(4, 4, 'à¦ªà¦£à§à¦¯ à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾à¦ªà¦¨à¦¾', 'Product', 1, 45),
(5, 5, 'à¦¨à¦¤à§à¦¨ à¦ªà¦£à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Product', 1, 45),
(6, 6, 'à¦ªà¦£à§à¦¯ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Product Lists', 0, 45),
(7, 7, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿/à¦§à¦°à¦¨', 'Product Categories', 1, 45),
(8, 8, 'à¦ªà¦£à§à¦¯ à¦®à§‚à¦²à§à¦¯ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Product Price', 1, 45),
(9, 9, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¬à§à¦°à¦¾à¦¨à§à¦¡', 'Product Brand', 0, 45),
(10, 10, 'à¦°à¦¿à¦¸à¦¾à¦‡à¦•à§‡à¦²', 'Product Trash', 1, 45),
(11, 11, 'à¦—à§à¦°à§‚à¦ª à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ', 'Group Products', 1, 45),
(12, 12, 'à¦¨à¦¤à§à¦¨ à¦—à§à¦°à§‚à¦ª à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Group Product', 0, 45),
(13, 13, 'à¦—à§à¦°à§‚à¦ª à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Group Product Lists', 1, 45),
(14, 14, 'à¦¸à§à¦Ÿà¦• à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦°', 'Transfer Stock', 0, 45),
(15, 15, 'à¦¸à§à¦Ÿà¦• à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦° à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Transfer History', 0, 45),
(16, 16, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¹à¦¿à¦¸à¦¾à¦¬', 'Bank Statements', 1, 45),
(17, 17, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'My Banks', 0, 45),
(18, 18, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¬à§à¦¯à¦¾à¦²à§‡à¦¨à§à¦¸ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Bank\'s Amount List', 0, 45),
(19, 19, 'à¦¨à¦¤à§à¦¨ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Bank', 1, 45),
(20, 20, 'à¦Ÿà¦¾à¦•à¦¾ à¦œà¦®à¦¾ à¦•à¦°à§à¦¨', ' Deposit', 0, 45),
(21, 21, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¥à§‡à¦•à§‡ à¦Ÿà¦¾à¦•à¦¾ à¦¤à§à¦²à§à¦¨', 'Withdraw', 1, 45),
(22, 22, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Bank Transaction History', 1, 45),
(23, 23, 'à¦—à§ƒà¦¹à§€à¦¤ à¦šà§‡à¦• à¦à¦¨à§à¦Ÿà§à¦°à¦¿', 'Receive Check', 0, 45),
(24, 24, 'à¦ªà§à¦°à¦¦à¦¾à¦¨à¦•à§ƒà¦¤ à¦šà§‡à¦• à¦à¦¨à§à¦Ÿà§à¦°à¦¿', 'Give Check', 1, 45),
(25, 25, 'à¦—à§ƒà¦¹à§€à¦¤ à¦šà§‡à¦• à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Receive Check History', 1, 45),
(26, 26, 'à¦ªà§à¦°à¦¦à¦¾à¦¨à¦•à§ƒà¦¤ à¦šà§‡à¦• à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Given Check History', 0, 45),
(27, 27, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦¹à¦¿à¦¸à¦¾à¦¬', 'Sales', 0, 45),
(28, 28, 'à¦ªà¦£à§à¦¯ à¦¬à¦¿à¦•à§à¦°à§Ÿ', 'New Sale', 0, 45),
(29, 29, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Sales History', 1, 45),
(30, 30, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦ªà¦£à§à¦¯ à¦¬à¦¿à¦•à§à¦°à¦¿', 'Due Orders', 1, 45),
(31, 31, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦¹à¦¿à¦¸à¦¾à¦¬', 'Payments Summary', 0, 45),
(32, 32, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦«à§‡à¦°à¦¤', 'Return', 1, 45),
(33, 33, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦«à§‡à¦°à¦¤', 'Order Return', 1, 45),
(34, 34, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦«à§‡à¦°à¦¤ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Return Order History', 1, 45),
(35, 35, 'à¦ªà¦£à§à¦¯  à¦—à§à¦°à¦¹à¦¨', 'Receive Product', 1, 45),
(36, 36, 'à¦ªà¦£à§à¦¯ à¦—à§à¦°à¦¹à¦¨ à¦•à¦°à§à¦¨', 'Receive Product', 0, 45),
(37, 37, 'à¦ªà¦£à§à¦¯ à¦—à§à¦°à¦¹à¦¨ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Receive History', 0, 45),
(38, 38, 'à¦•à§à¦¯à¦¾à¦¶à¦¬à§à¦•', 'Cashbook', 0, 45),
(39, 39, 'à¦•à§à¦°à§Ÿ, à¦¬à¦¿à¦•à§à¦°à§Ÿ, à¦–à¦°à¦š à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Cashbook Transaction', 1, 45),
(40, 40, 'à¦†à¦œà¦•à§‡à¦° à¦•à§à¦¯à¦¾à¦¶à¦¬à§à¦•', 'Transaction', 0, 45),
(41, 41, 'à¦–à¦°à¦š', 'Expenses', 1, 45),
(42, 42, 'à¦¨à¦¤à§à¦¨ à¦–à¦°à¦š à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Expenses', 0, 45),
(43, 43, 'à¦¸à¦•à¦² à¦–à¦°à¦š à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Expenses Lists', 1, 45),
(44, 44, 'à¦–à¦°à¦š à¦à¦° à¦§à¦°à¦£', 'Expenses Types', 1, 45),
(45, 45, 'à¦ªà¦£à§à¦¯ à¦®à¦œà§à¦¦ à¦¹à¦¿à¦¸à¦¾à¦¬', 'Stock', 0, 45),
(46, 46, 'à¦ªà¦£à§à¦¯ à¦®à¦œà§à¦¦ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Stock Details', 1, 45),
(47, 47, 'à¦ªà¦£à§à¦¯ à¦¬à¦£à§à¦Ÿà¦¨', 'Stock Distribute', 1, 45),
(48, 48, 'à¦•à§à¦¯à¦¾à¦¶ à¦•à§à¦¯à¦¾à¦ªà¦¿à¦Ÿà¦¾à¦²', 'Cash Capital', 1, 45),
(49, 49, 'à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ', 'Customer', 0, 45),
(50, 50, 'à¦¨à¦¤à§à¦¨ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦¨à§à¦Ÿà§à¦°à¦¿', 'Add New Customer', 1, 45),
(51, 51, 'à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦°à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Customer List', 0, 45),
(52, 52, 'à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦°à§‡à¦° à¦²à§‡à¦œà¦¾à¦°', 'Customer Ledger', 0, 45),
(53, 53, 'à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦°à§‡à¦° à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Customer Transactions', 1, 45),
(54, 54, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€', 'Supplier', 0, 45),
(55, 55, 'à¦¨à¦¤à§à¦¨ à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Supplier', 1, 45),
(56, 56, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Supplier List', 0, 45),
(57, 57, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦²à§‡à¦œà¦¾à¦°', 'Supplier Ledger', 0, 45),
(58, 58, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€ à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦¹à¦¿à¦¸à¦¾à¦¬', 'Supplier Transactions', 0, 45),
(59, 59, 'à¦ªà¦¨à§à¦¯ à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨', 'Variation', 0, 45),
(60, 60, 'à¦¨à¦¤à§à¦¨ à¦§à¦°à¦£ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Type', 1, 45),
(61, 61, 'à¦¨à¦¤à§à¦¨ à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Variation', 0, 45),
(62, 62, 'à¦¶à¦ª/à¦¸à§à¦Ÿà§‹à¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ', 'Store', 1, 45),
(63, 63, 'à¦¸à¦•à¦² à¦¶à¦ª/à¦¸à§à¦Ÿà§‹à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Manage Store', 0, 45),
(64, 64, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ', 'Operator Management', 1, 45),
(65, 65, 'à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦°', 'Manage Operator', 0, 45),
(66, 66, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦° à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Operator', 0, 45),
(67, 67, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¶à§‡à¦²à§à¦­', 'Shalve', 1, 45),
(68, 68, 'à¦¶à§‡à¦²à§à¦­ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ à¦•à¦°à§à¦¨', 'Manage Shalves', 1, 45),
(69, 69, 'à¦²à§‡à¦­à§‡à¦² à¦¸à¦®à§‚à¦¹', 'Levels', 0, 45),
(70, 70, 'à¦²à§‡à¦­à§‡à¦² à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ à¦•à¦°à§à¦¨', 'Manage Levels', 0, 45),
(71, 71, 'à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸', 'Settings', 0, 45),
(72, 72, 'à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ à¦‡à¦‰à¦œà¦¾à¦°', 'Manage User', 0, 45),
(73, 73, 'à¦‡à¦‰à¦œà¦¾à¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ', 'User Manage', 0, 45),
(74, 74, 'à¦¨à¦¤à§à¦¨ à¦‡à¦‰à¦œà¦¾à¦° à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New User', 1, 45),
(75, 75, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Product Sales Summary', 1, 45),
(76, 76, '', 'Banner Image', 0, 45),
(77, 77, 'à¦•à§à¦°à§Ÿ à¦¹à¦¿à¦¸à¦¾à¦¬', 'Buy', 0, 45),
(78, 78, 'à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'Report', 1, 45),
(79, 79, 'à¦¬à¦¿à¦¬à¦¿à¦§', 'Others', 0, 45),
(80, 80, 'à¦¨à¦¤à§à¦¨ à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Account', 1, 45),
(81, 81, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¹à¦¿à¦¸à¦¾à¦¬', 'Bank Cost', 1, 45),
(82, 82, 'à¦—à§ƒà¦¹à§€à¦¤ à¦“ à¦ªà§à¦°à¦¦à¦¾à¦¨à¦•à§ƒà¦¤ à¦šà§‡à¦• à¦à¦¨à§à¦Ÿà§à¦°à¦¿', 'Receive and Give Check Entry', 0, 45),
(83, 83, 'à¦—à§ƒà¦¹à§€à¦¤ à¦“ à¦ªà§à¦°à¦¦à¦¾à¦¨à¦•à§ƒà¦¤ à¦šà§‡à¦• à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Receive and Give Check History', 1, 45),
(84, 84, 'à¦•à§à¦¯à¦¾à¦¶à¦¬à§à¦•', 'Cashbook', 1, 45),
(85, 85, 'à¦†à¦œà¦•à§‡à¦° à¦¹à¦¿à¦¸à¦¾à¦¬', 'Transactions', 0, 45),
(86, 86, 'à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦²à§‡à¦¨à¦¦à§‡à¦¨', 'Customer Transactions', 1, 45),
(87, 87, 'à¦–à¦°à¦šà§‡à¦° à¦¹à¦¿à¦¸à¦¾à¦¬', 'Cost Calculation', 1, 45),
(88, 88, 'à¦¸à¦•à¦² à¦¬à§à¦¯à¦¾à¦‚à¦•', 'All Banks', 0, 45),
(89, 89, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦à¦° à¦¨à¦¾à¦®', 'Bank Name', 0, 45),
(90, 90, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦à¦° à¦¶à¦¾à¦–à¦¾', 'Bank Branch', 1, 45),
(91, 91, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦à¦° à¦ à¦¿à¦•à¦¾à¦¨à¦¾', 'Bank Address', 1, 45),
(92, 92, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦à¦° à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Bank Account', 1, 45),
(93, 93, 'à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦ª', 'Account Type', 0, 45),
(94, 94, 'à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿà§‡à¦° à¦§à¦°à¦¨ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'Select Account Type', 1, 45),
(95, 95, 'à¦¸à¦žà§à¦šà§Ÿ à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿ', 'Saving Account', 1, 45),
(96, 96, 'à¦šà¦²à¦¤à¦¿ à¦¹à¦¿à¦¸à¦¾à¦¬', 'Current Account', 1, 45),
(97, 97, 'à¦¨à§‹à¦Ÿ', 'Notes', 1, 45),
(98, 98, 'à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦•à¦°à§à¦¨', 'Submit', 1, 45),
(99, 99, 'à¦•à§à¦°à¦®à¦¿à¦• à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Sl', 1, 45),
(100, 101, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Bank', 1, 45),
(101, 102, 'à¦¸à¦•à¦² à¦¬à§à¦¯à¦¾à¦‚à¦• à¦à¦° à¦¬à§à¦¯à¦¾à¦²à§‡à¦¨à§à¦¸ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Bank\'s Amount List', 1, 45),
(102, 103, 'à¦…à¦°à§à¦¥à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Amount', 1, 45),
(103, 104, '', 'Deposit', 0, 45),
(104, 105, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¡à¦¿à¦ªà§‹à¦œà¦¿à¦Ÿ à¦à¦° à¦¤à¦¥à§à¦¯ à¦¦à¦¿à¦¨', 'Bank Deposit', 1, 45),
(105, 106, 'à¦¨à¦¤à§à¦¨ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¡à¦¿à¦ªà§‹à¦œà¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'New Bank Deposit', 0, 45),
(106, 107, 'à¦°à§‡à¦«à¦¾à¦°à§‡à¦¨à§à¦¸ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Reference Number', 0, 45),
(107, 108, 'à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦¸à¦¬ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Bank Account List', 1, 45),
(108, 109, 'অর্থের পরিমাণ	', 'sdsd', 0, 0),
(109, 110, 'à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°	', 'Account Number', 1, 45),
(110, 111, 'à¦…à§à¦¯à¦¾à¦•à¦¶à¦¨', 'Action', 0, 45),
(111, 112, 'à¦•à§‹à¦¨ à¦¡à¦¾à¦Ÿà¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿà¦¨à¦¿ !!', 'No data has found !!', 0, 45),
(112, 113, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Delete Bank', 0, 45),
(113, 114, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦¸à¦®à¦¸à§à¦¤ à¦¤à¦¥à§à¦¯ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'You Want To Delete This Bank Info ?', 1, 45),
(114, 115, 'à¦¹à§à¦¯à¦¾à¦', 'Ok', 0, 45),
(115, 116, 'à¦¨à¦¾', 'Cancel', 0, 45),
(116, 117, 'à¦¸à¦•à¦² à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Sell Lists', 0, 45),
(117, 118, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¸à¦žà§à¦šà§Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Bank Cost List', 0, 45),
(118, 119, 'à¦¤à¦¾à¦°à¦¿à¦–', 'Date', 0, 45),
(119, 120, 'à¦…à¦°à§à¦¥à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£ (à¦Ÿà¦¾à¦•à¦¾)', 'Amount (Taka)', 0, 45),
(120, 121, 'à¦¤à¦¥à§à¦¯ à¦…à¦¨à§à¦¸à¦¨à§à¦§à¦¾à¦¨ à¦•à¦°à§à¦¨', 'Search data', 0, 45),
(121, 122, 'à¦Ÿà¦¾à¦•à¦¾', 'Taka', 0, 45),
(122, 123, 'à¦–à¦°à¦š', 'Expense', 0, 45),
(123, 124, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ', 'Sell', 0, 45),
(124, 125, 'à¦•à§à¦°à§Ÿ', 'Buy', 0, 45),
(125, 126, 'à¦•à§à¦¯à¦¾à¦¶à¦¬à§à¦• (à¦•à§à¦¯à¦¾à¦¶ à¦¹à¦¿à¦¸à¦¾à¦¬)', 'Cashbook (transactions)', 0, 45),
(126, 127, 'à¦•à§‹à¦¡', 'Code', 0, 45),
(127, 128, 'à¦¸à¦¾à¦°à¦¸à¦‚à¦•à§à¦·à§‡à¦ª', 'Summary', 0, 45),
(128, 129, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦—à§à¦°à¦¹à¦¨ ', 'Receive Due', 0, 45),
(129, 130, 'à¦–à§à¦à¦œà§à¦¨', 'Search', 0, 45),
(130, 131, 'à¦¤à¦¾à¦°à¦¿à¦– à¦¦à¦¿à§Ÿà§‡ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter By Date', 0, 45),
(131, 132, 'à¦—à¦¤à¦•à¦¾à¦²', 'Yesterday', 0, 45),
(132, 133, 'à¦—à¦¤ à§©à§¦ à¦¦à¦¿à¦¨', 'Last 30 days', 0, 45),
(133, 134, 'à¦à¦‡ à¦®à¦¾à¦¸', 'This Month', 0, 45),
(134, 135, 'à¦à¦‡ à¦¬à¦›à¦°', 'This Year', 0, 45),
(135, 136, 'à¦•à¦¾à¦¸à§à¦Ÿà¦® à¦¤à¦¾à¦°à¦¿à¦–', 'Custom Date', 0, 45),
(136, 137, 'à¦¸à§à¦Ÿà§‹à¦° à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'Select Store', 0, 45),
(137, 138, 'à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ', 'Total', 0, 45),
(138, 139, 'à¦¡à§‡à¦ªà§‹à¦œà¦¿à¦Ÿà§‡à¦° à¦•à§‹à¦¨à§‹ à¦¤à¦¥à§à¦¯ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿà¦¨à¦¿ !!', 'No Data Found Of Deposits!!', 0, 45),
(139, 140, 'à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ à¦¡à§‡à¦ªà§‹à¦œà¦¿à¦Ÿà¦¸à¦®à§‚à¦¹', 'Previous Deposit', 0, 45),
(140, 141, 'à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦¡à§‡à¦ªà§‹à¦œà¦¿à¦Ÿ', 'Total Deposit', 0, 45),
(141, 142, 'à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦–à¦°à¦š', 'Total Expense', 0, 45),
(142, 143, 'à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦¬à¦¿à¦•à§à¦°à§Ÿ', 'Total\'s Sale', 0, 45),
(143, 144, 'à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¡à¦¿à¦ªà¦œà¦¿à¦Ÿ ( à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ + à¦†à¦œà¦•à§‡à¦°)', 'Total Bank Deposit (Previous+Today)', 0, 45),
(144, 145, 'à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ à¦®à§‹à¦Ÿ à¦•à§à¦¯à¦¾à¦¶', 'Previous Total Cash', 0, 45),
(145, 146, 'à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¸à¦žà§à¦šà§Ÿ (à¦¸à¦žà§à¦šà§Ÿ - à¦‰à¦¤à§à¦¤à§‹à¦²à¦¨)', 'Previous Bank Deposits (Deposit - Withdraw)', 0, 45),
(146, 147, 'à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ à¦®à§‹à¦Ÿ à¦–à¦°à¦š', 'Previous Total Expense', 0, 45),
(147, 148, 'à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ à¦®à§‹à¦Ÿ à¦¬à¦¿à¦•à§à¦°à§Ÿ (à¦¬à¦•à§‡à§Ÿà¦¾ + à¦¬à¦¿à¦•à§à¦°à§Ÿ)', 'Previous Total Sale (Due+Sell)', 0, 45),
(148, 149, 'à¦†à¦œà¦•à§‡à¦° à¦®à§‹à¦Ÿ à¦•à§à¦¯à¦¾à¦¶', 'Today Total Cash', 0, 45),
(149, 150, 'à¦†à¦œà¦•à§‡à¦° à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¸à¦žà§à¦šà§Ÿ', 'Today Bank Deposit', 0, 45),
(150, 151, 'à¦†à¦œà¦•à§‡à¦° à¦®à§‹à¦Ÿ à¦–à¦°à¦š', 'Today Total Expense', 0, 45),
(151, 152, 'à¦†à¦œà¦•à§‡à¦° à¦¬à§à¦¯à¦¾à¦‚à¦• à¦‰à¦¤à§à¦¤à¦²à¦¨', 'Today Bank Withdraw', 0, 45),
(152, 153, 'à¦†à¦œà¦•à§‡à¦° à¦®à§‹à¦Ÿ à¦•à¦¾à¦²à§‡à¦•à¦¶à¦¨ (à¦¬à¦•à§‡à§Ÿà¦¾ à¦—à§à¦°à¦¹à¦¨+à¦¨à¦—à¦¦ à¦¬à¦¿à¦•à§à¦°à¦¿)', 'Today Total Collection (Due+Cash)', 1, 45),
(153, 154, 'à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦•à§à¦¯à¦¾à¦¶', 'Total Cash', 0, 45),
(154, 155, '( à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ + à¦†à¦œà¦•à§‡à¦°)', '(Previous + Today)', 0, 45),
(155, 156, 'à¦šà§‡à¦• à¦ªà§à¦°à¦¦à¦¾à¦¨', 'Receive Check ', 0, 45),
(156, 157, 'à¦šà§‡à¦• à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Check Number', 0, 45),
(157, 158, 'à¦…à¦¥à¦°à¦¾à¦‡à¦¯à¦¡ à¦¬à§à¦¯à¦¾à¦•à§à¦¤à¦¿', 'Authorized person', 0, 45),
(158, 159, 'à¦šà§‡à¦• à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦à¦° à¦¤à¦¥à§à¦¯ à¦¦à¦¿à¦¨', 'Give Check Receive Information', 0, 45),
(159, 160, 'à¦ªà§à¦°à¦¦à¦¾à¦¨à¦•à§ƒà¦¤ à¦šà§‡à¦• à¦à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Given Check List', 0, 45),
(160, 161, 'à¦¬à§à¦¯à¦¾à¦•à§à¦¤à¦¿à¦° à¦¨à¦¾à¦®', 'Person Name', 0, 45),
(161, 162, 'à¦§à¦°à¦¨', 'Type', 0, 45),
(162, 163, 'à¦—à§ƒà¦¹à¦¿à¦¤', 'Received', 0, 45),
(163, 164, 'à¦ªà§à¦°à¦¦à¦¾à¦¨à¦•à§ƒà¦¤', 'Given', 0, 45),
(164, 165, 'à¦—à§ƒà¦¹à§€à¦¤ à¦šà§‡à¦• à¦à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Received Check List', 0, 45),
(165, 166, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦šà§‡à¦• à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Bank Check Transaction  List', 1, 45),
(166, 167, 'à¦¸à¦®à¦¸à§à¦¤ à¦²à§‡à¦¨à¦¦à§‡à¦¨', 'All Transactions', 0, 45),
(167, 168, 'à¦¡à¦¾à¦Ÿà¦¾ à¦¸à¦‚à¦°à¦•à§à¦·à¦¿à¦¤ à¦¹à¦² !!', 'Data has been saved !!', 0, 45),
(168, 169, 'à¦­à§à¦² à¦¤à¦¥à§à¦¯ !!', 'Wrong Information !!', 0, 45),
(169, 170, 'à¦šà§‡à¦• à¦—à§à¦°à¦¹à¦¨', 'Receive Check', 0, 45),
(170, 171, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤', 'Payment Details', 0, 45),
(171, 172, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦§à¦°à¦¨', 'Payment Type', 0, 45),
(172, 173, 'à¦²à§‡à¦¨à¦¦à§‡à¦¨', 'Transaction', 0, 45),
(173, 174, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¸à¦žà§à¦šà§Ÿ', 'Bank Deposit', 0, 45),
(174, 175, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦‰à¦¤à§à¦¤à§‹à¦²à¦¨', 'Bank Withdrawal', 0, 45),
(175, 176, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦•à¦¾à¦²à§‡à¦•à¦¶à¦¨', 'Due Collection', 0, 45),
(176, 177, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à¦² !!', 'Bank Info Updated !!', 0, 45),
(177, 178, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Bank Information', 0, 45),
(178, 179, 'à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Data Successfully Updated !!', 0, 45),
(179, 180, 'à¦­à§à¦² à¦¸à¦¾à¦¬à¦®à¦¿à¦¶à¦¨ !!', 'Invalid submission !!', 0, 45),
(180, 181, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter Bank Transaction History', 0, 45),
(181, 182, 'à¦¤à¦¾à¦°à¦¿à¦– à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Date', 0, 45),
(182, 183, 'à¦²à§‡à¦¨à¦¦à§‡à¦¨à§‡à¦° à¦§à¦°à¦¨ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Transaction Type', 0, 45),
(183, 184, 'à¦†à¦œ', 'Today', 0, 45),
(184, 185, 'à¦—à¦¤ à§§à§« à¦¦à¦¿à¦¨', 'Last 15 Days', 0, 45),
(185, 186, 'à¦‰à¦¤à§à¦¤à§‹à¦²à¦¨', 'Withdraw', 0, 45),
(186, 187, 'à¦¨à¦¤à§à¦¨ à¦¸à§à¦Ÿà§‹à¦° à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Store', 0, 45),
(187, 188, 'à¦¬à¦¨à§à¦§ à¦•à¦°à§à¦¨', 'Cancel', 0, 45),
(188, 189, 'à¦Ÿà¦¾à¦•à¦¾ à¦¤à§‹à¦²à¦¾à¦° à¦¹à¦¿à¦¸à¦¾à¦¬', 'Withdraw Transaction', 0, 45),
(189, 190, 'à¦Ÿà¦¾à¦•à¦¾ à¦¤à§‹à¦²à¦¾à¦° à¦¹à¦¿à¦¸à¦¾à¦¬ à¦¸à¦‚à¦°à¦•à§à¦·à¦¨ à¦•à¦°à§à¦¨', 'Save Withdraw Amount', 0, 45),
(190, 191, 'à¦¨à¦¤à§à¦¨ à¦²à§‡à¦­à§‡à¦² à¦¤à§ˆà¦°à¦¿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Level Created successfully !!', 0, 45),
(191, 192, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦•à§‹à¦¡à¦Ÿà¦¿ à¦¡à§à¦ªà§à¦²à¦¿à¦•à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Product Code Already Exist !!', 1, 45),
(192, 193, 'à¦‡à¦‰à¦¨à¦¿à¦•', 'Unique', 0, 45),
(193, 194, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿà§‡à¦° ISBN à¦…à¦²à¦°à§‡à¦¡à¦¿ à¦¬à¦¿à¦¦à§à¦¯à¦®à¦¾à¦¨', 'Product ISBN Already Exist !!', 0, 45),
(194, 195, 'à¦•à§‹à¦¨à§‹ à¦¬à¦•à§‡à§Ÿà¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿà¦¨à¦¿ !!', 'No Due Amount Found !!', 0, 45),
(195, 196, 'à¦ªà§à¦°à¦¸à§‡à¦¸à¦Ÿà¦¿ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Process Successfully Completed !!', 0, 45),
(196, 197, 'à¦…à¦°à§à¦¡à¦¾à¦°à¦Ÿà¦¿ à¦¡à§à¦°à¦¾à¦«à¦Ÿ à¦…à¦°à§à¦¡à¦¾à¦°à§‡ à¦¸à§à¦¥à¦¾à¦¨à¦¾à¦¨à§à¦¤à¦°à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Order Moved To Draft !!', 0, 45),
(197, 198, 'à¦ªà§à¦°à¦¥à¦®à§‡ à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨ !!', 'Select Product First !!', 0, 45),
(198, 199, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¨à¦¾à¦®', 'Product Name', 0, 45),
(199, 200, 'à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Quantity', 1, 45),
(200, 201, 'à¦®à§‚à¦²à§à¦¯', 'Price', 0, 45),
(201, 202, 'à¦ªà¦£à§à¦¯ à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦—à¦°à¦®à¦¿à¦²', 'Quantity Mismatch !!', 0, 45),
(202, 203, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦®à§‚à¦²à§à¦¯', 'Selling Price', 1, 45),
(203, 204, 'à¦­à§à¦¯à¦¾à¦Ÿ', 'Tax', 0, 45),
(204, 205, 'à¦«à§‡à¦°à¦¤à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦¨', 'Return Quantity', 0, 45),
(205, 206, 'à¦›à¦¾à§œ', 'Discount', 0, 45),
(206, 207, 'à¦…à¦°à§à¦¥ à¦«à§‡à¦°à¦¤à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦¨', 'Return Amount', 0, 45),
(207, 208, 'à¦ªà¦¿à¦¸', 'Pieces', 0, 45),
(208, 209, 'à¦•à§à¦°à§Ÿ à¦®à§‚à¦²à§à¦¯', 'Buying Price', 1, 45),
(209, 210, 'à¦¸à§à¦Ÿà§‹à¦°', 'Store', 0, 45),
(210, 211, 'à¦¶à§‡à¦²à§à¦­', 'Shalve', 1, 45),
(211, 212, 'à¦¸à§à¦¥à¦¾à¦¨à¦¾à¦¨à§à¦¤à¦°à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Successfully Transferred !!', 0, 45),
(212, 213, 'à¦­à§à¦² à¦Ÿà¦¾à¦•à¦¾à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Invalid Amount !!', 0, 45),
(213, 214, 'à¦¬à§à¦¯à¦¨à¦¾à¦° à¦›à¦¬à¦¿ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ', 'Manage Banner Slides', 0, 45),
(214, 215, 'à¦¬à§à¦¯à¦¨à¦¾à¦° à¦›à¦¬à¦¿à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Banner Image List', 0, 45),
(215, 216, 'à¦¨à¦¤à§à¦¨ à¦¬à§à¦¯à¦¨à¦¾à¦° à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New banner', 0, 45),
(216, 217, 'à¦›à¦¬à¦¿', 'Image', 1, 45),
(217, 218, 'Alt à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ', 'Alter Text', 0, 45),
(218, 219, 'à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦° à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿', 'Category Banner', 0, 45),
(219, 220, 'à¦°à¦¿à¦®à§à¦­', 'Remove', 0, 45),
(220, 221, 'à¦¡à¦¿à¦²à§‡à¦Ÿ à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦° !!', 'Delete Banner !!', 0, 45),
(221, 222, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦°à¦Ÿà¦¿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'You Want To Delete This Banner ?', 0, 45),
(222, 223, 'à¦¬à§à¦°à¦¾à¦¨à§à¦¡ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Brand List', 0, 45),
(223, 224, 'à¦¬à§à¦°à¦¾à¦¨à§à¦¡', 'Brand', 0, 45),
(224, 225, 'à¦¨à¦¤à§à¦¨ à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Brand', 0, 45),
(225, 226, 'à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¨à¦¾à¦®', 'Brand Name', 0, 45),
(226, 227, 'à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€', 'Brand Supplier', 0, 45),
(227, 228, 'à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Info', 0, 45),
(228, 229, 'à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Brand Info', 0, 45),
(229, 230, 'à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¨à¦¾à¦® à¦¦à¦¿à¦¨', 'Brand Name Required !!', 0, 45),
(230, 231, 'à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨ !!', 'Delete Brand !!', 0, 45),
(231, 232, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'You Want To Delete This Brand ?', 0, 45),
(232, 233, 'à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¯à§à¦•à§à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Brand Added Successfully !!', 0, 45),
(233, 234, 'à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦° à¦›à¦¬à¦¿ à¦¯à§à¦•à§à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Banner Image Added Successfully !!', 0, 45),
(234, 235, 'à¦­à§à¦² à¦«à¦¾à¦‡à¦² à¦«à¦°à§à¦®à§‡à¦Ÿ !!', 'Invalid File Format !!!', 0, 45),
(235, 236, 'à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦° à¦›à¦¬à¦¿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Banner Image Removed !!', 0, 45),
(236, 237, 'à¦¸à¦•à¦² à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿/à¦§à¦°à¦£', 'Categories', 0, 45),
(237, 238, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿/à¦§à¦°à¦£', 'Category', 0, 45),
(238, 239, 'à¦¨à¦¤à§à¦¨ à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿/à¦§à¦°à¦£ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Category/Type', 0, 45),
(239, 240, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿/à¦§à¦°à¦¨à§‡à¦° à¦¨à¦¾à¦®', 'Category/Type Name', 0, 45),
(240, 241, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦§à¦°à¦¨à§‡à¦° à¦¬à¦°à§à¦£à¦¨à¦¾', 'Category Description', 0, 45),
(241, 242, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦§à¦°à¦¨à§‡à¦° à¦¸à§à¦²à¦¾à¦—', 'Category Slug', 0, 45),
(242, 243, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦§à¦°à¦¨ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Product Category/Type', 0, 45),
(243, 244, 'à¦ªà§à¦¯à¦¾à¦°à§‡à¦¨à§à¦Ÿ à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿/à¦§à¦°à¦£ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Parent Category/Type', 0, 45),
(244, 245, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿/à¦§à¦°à¦£ à¦›à¦¬à¦¿', 'Category/Type Image', 0, 45),
(245, 246, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿/à¦§à¦°à¦£ à¦†à¦‡à¦•à¦¨', 'Category/Type Icon', 0, 45),
(246, 247, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿/à¦§à¦°à¦£ à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦°', 'Category/Type Banner', 0, 45),
(247, 248, 'à¦ªà§à¦¯à¦¾à¦°à§‡à¦¨à§à¦Ÿ à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿', 'Parent Category', 0, 45),
(248, 249, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦¨à¦¾à¦® à¦¦à¦¿à¦¨ !!', 'Category Name Required !!', 0, 45),
(249, 250, 'à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ !!', 'Delete Category !!', 0, 45),
(250, 251, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'You Want To Delete This Category ?', 0, 45),
(251, 252, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Category Removed !!', 0, 45),
(252, 253, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦‡à¦¡à¦¿à¦Ÿ', 'Category Edit', 0, 45),
(253, 254, 'à¦‡à¦¡à¦¿à¦Ÿ à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿', 'Edit Category', 0, 45),
(254, 255, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦›à¦¬à¦¿ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Category Image', 0, 45),
(255, 256, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦›à¦¬à¦¿ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Category Icon', 1, 45),
(256, 257, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦° à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Category Banner', 0, 45),
(257, 258, 'à¦¨à¦¤à§à¦¨ à¦•à§à¦°à§‡à¦¤à¦¾ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Customer', 0, 45),
(258, 259, 'à¦¨à¦¤à§à¦¨ à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦¤à¦¥à§à¦¯', 'Customer Information', 0, 45),
(259, 260, 'à¦«à¦¾à¦°à§à¦¸à§à¦Ÿ à¦¨à§‡à¦‡à¦®', 'First Name', 0, 45),
(260, 261, 'à¦²à¦¾à¦¸à§à¦Ÿ à¦¨à§‡à¦‡à¦®', 'Last Name', 0, 45),
(261, 262, 'à¦‡à¦®à§‡à¦‡à¦²', 'Email', 0, 45),
(262, 263, 'à¦«à§‹à¦¨', 'Phone No', 0, 45),
(263, 264, 'à¦¬à§Ÿà¦¸', 'Age', 0, 45),
(264, 265, 'à¦œà§‡à¦¨à§à¦¡à¦¾à¦°', 'Gender', 0, 45),
(265, 266, 'à¦ªà§à¦°à§à¦·', 'Male', 0, 45),
(266, 267, 'à¦®à¦¹à¦¿à¦²à¦¾', 'Female', 0, 45),
(267, 268, 'à¦ à¦¿à¦•à¦¾à¦¨à¦¾', 'Address', 0, 45),
(268, 269, 'à¦«à¦¾à¦°à§à¦¸à§à¦Ÿ à¦¨à§‡à¦‡à¦® à¦¦à¦¿à¦¨ !!', 'First Name Is Required !!', 0, 45),
(269, 270, 'à¦«à§‹à¦¨ à¦¨à¦®à§à¦¬à¦° à¦¦à¦¿à¦¨ !!', 'Phone Is Required !!', 0, 45),
(270, 271, 'à¦Ÿà¦¾à¦‡à¦ª à¦¦à¦¿à¦¨ !!', 'Type Is Required !!', 0, 45),
(271, 272, 'à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦°à§‡à¦° à¦¤à¦¥à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Customer Info Successfully Inserted !!', 0, 45),
(272, 273, 'à¦•à§à¦°à§‡à¦¤à¦¾ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Customer', 0, 45),
(273, 274, 'à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Customer List', 0, 45),
(274, 275, 'à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦²à§‡à¦œà¦¾à¦°', 'Customer Ledger', 0, 45),
(275, 276, 'à¦¨à¦¾à¦®', 'Name', 0, 45),
(276, 277, 'à¦Ÿà¦¾à¦‡à¦ª', 'Type', 0, 45),
(277, 278, 'à¦•à§à¦°à§‡à¦¤à¦¾ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨ !!', 'Delete Customer !!', 0, 45),
(278, 279, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦¤à¦¥à§à¦¯ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'You Want To Delete This Customer ?', 0, 45),
(279, 280, 'à¦ªà¦¿à¦¡à¦¿à¦« à¦ à¦à¦•à§à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨', 'Export to PDF', 0, 45),
(280, 281, 'à¦à¦•à§à¦¸à§‡à¦² à¦ à¦à¦•à§à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨', 'Export to Excel', 0, 45),
(281, 282, 'à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Customer Information', 0, 45),
(282, 283, 'à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Customer Data Updated Successfully !!', 0, 45),
(283, 284, 'à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦¬à¦¿à¦¬à¦°à¦¨', 'Customer Information', 0, 45),
(284, 285, 'à¦¬à¦¾à¦° à¦•à§à¦°à§Ÿ', 'Total Buy', 0, 45),
(285, 286, 'à¦®à§‹à¦Ÿ à¦•à§à¦°à§Ÿ', 'Total Buy', 0, 45),
(286, 287, 'à¦Ÿà¦¿ à¦ªà¦£à§à¦¯ à¦•à§à¦°à§Ÿ', 'Total Product Buy', 0, 45),
(287, 288, 'à¦¬à¦•à§‡à§Ÿà¦¾', 'Due', 0, 45),
(288, 289, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¹à¦¿à¦¸à§à¦Ÿà§‹à¦°à¦¿', 'Payment History', 0, 45),
(289, 290, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦•à§‹à¦¡', 'Order Code', 0, 45),
(290, 291, 'à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯', 'Others', 0, 45),
(291, 292, 'à¦ªà¦°à¦¿à¦¶à§‹à¦§à¦¿à¦¤', 'Paid', 0, 45),
(292, 293, 'à¦¸à§à¦Ÿà§à¦¯à¦¾à¦Ÿà¦¾à¦¸', 'Status', 0, 45),
(293, 294, 'à¦¬à§à¦¯à¦¾à¦•à§à¦¤à¦¿à¦—à¦¤ à¦¤à¦¥à§à¦¯', 'Personal Information', 1, 45),
(294, 295, 'à¦‡à¦¡à¦¿à¦Ÿ', 'Edit', 0, 45),
(295, 296, 'à¦¯à§à¦•à§à¦¤ à¦¹à§Ÿà§‡à¦›à§‡', 'Added On', 0, 45),
(296, 297, 'à¦®à§‹à¦Ÿ à¦Ÿà¦¾à¦•à¦¾', 'Total Taka', 0, 45),
(297, 298, 'à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£', 'Complete', 0, 45),
(298, 299, 'à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Customer Transaction List', 0, 45),
(299, 300, 'à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦¨à¦¾à¦®', 'Customer Name', 1, 45),
(300, 301, 'à¦«à§‡à¦°à¦¤', 'Return', 0, 45),
(301, 302, 'à¦Ÿà§‹à¦Ÿà¦¾à¦² à¦ªà¦°à¦¿à¦¶à§‹à¦§', 'Total Paid', 1, 45),
(302, 303, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦–à¦°à¦š à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Due Expense List', 1, 45),
(303, 304, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦–à¦°à¦š', 'Due Expense', 0, 45),
(304, 305, 'à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¬à¦•à§‡à§Ÿà¦¾ à¦–à¦°à¦š', 'Complete Due Expense', 0, 45),
(305, 306, 'à¦–à¦°à¦šà§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Expense Amount', 0, 45),
(306, 307, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦•à¦°à§à¦¨', 'Make Due Payment', 0, 45),
(307, 308, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Payment Amount', 0, 45),
(308, 309, 'à¦¸à¦¾à¦¬à¦®à¦¿à¦Ÿ', 'Submit', 0, 45),
(309, 310, 'à¦–à¦°à¦šà§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Expense List', 0, 45),
(310, 311, 'à¦–à¦°à¦šà§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter Expense List', 0, 45),
(311, 312, 'à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦£', 'Expense Type', 0, 45),
(312, 313, 'à¦¤à¦¾à¦°à¦¿à¦– à¦–à§à¦œà§‡ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿà¦¨à¦¿', 'Date Not Found', 0, 45),
(313, 314, 'à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦£ à¦¯à§à¦•à§à¦¤ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Expense Type Added Successfully !!', 0, 45),
(314, 315, 'à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦£ à¦¦à¦¿à¦¨', 'Expense Type Is Required', 0, 45),
(315, 316, 'à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦£ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡  !!', 'Expense Type Updated Successfully !!', 0, 45),
(316, 317, 'à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦¨à¦Ÿà¦¿ à¦®à§à¦›à§‡ à¦¦à§‡à§Ÿà¦¾ à¦¹à§Ÿà¦›à§‡  !!', 'Expense Type Removed Successfully !!', 0, 45),
(317, 318, 'à¦¨à¦¤à§à¦¨ à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦¨ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Expense Type', 0, 45),
(318, 319, 'à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦£ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Expense Type List', 0, 45),
(319, 320, 'à¦¡à¦¿à¦²à§‡à¦Ÿ à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦£ !!', 'Delete Expense Type !!', 0, 45),
(320, 321, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦à¦‡ à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦¨à¦Ÿà¦¿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'You Want To Delete This Type ?', 0, 45),
(321, 322, 'à¦¡à¦¿à¦²à§‡à¦Ÿ à¦¸à§à¦Ÿà§‹à¦° !!', 'Delete Store !!', 0, 45),
(322, 323, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦¸à§à¦Ÿà§‹à¦°à¦Ÿà¦¿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'You Want To Delete This Store ?', 0, 45),
(323, 324, 'à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦£ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Expense Type Info', 0, 45),
(324, 325, 'à¦–à¦°à¦šà§‡à¦° à¦§à¦°à¦£ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Expense Type', 0, 45),
(325, 326, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¤à¦¥à§à¦¯ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'Add Bank Info', 0, 45),
(326, 327, 'à¦ªà§à¦°à¦¤à¦¿à¦¦à¦¿à¦¨à§‡à¦° à¦–à¦°à¦š à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Daily Expense', 0, 45),
(327, 328, 'à¦–à¦°à¦š à¦à¦° à¦§à¦°à¦£ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Expense Type', 0, 45),
(328, 329, 'à¦–à¦°à¦šà§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦¨', 'Expense Amount', 0, 45),
(329, 330, 'à¦ªà¦°à¦¿à¦¶à§‹à¦§à§‡à¦° à¦‰à¦ªà¦¾à§Ÿ', 'Paying System', 0, 45),
(330, 331, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦ªà¦¦à§à¦§à¦¤à¦¿ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Payment Method', 0, 45),
(331, 332, 'à¦šà§‡à¦• à¦¦à¦¿à§Ÿà§‡ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦•à¦°à§à¦¨', 'Pay By Check', 0, 45),
(332, 333, 'à¦¨à¦—à¦¦ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦•à¦°à§à¦¨', 'Pay Cash', 0, 45),
(333, 334, 'à¦—à§à¦°à¦¾à¦¹à¦•à§‡à¦° à¦¨à¦¾à¦®', 'Customer Name', 0, 45),
(334, 335, 'à¦—à§à¦°à¦¾à¦¹à¦• à¦•à§‡ à¦«à§‹à¦¨ à¦¬à¦¾ à¦¨à¦¾à¦® à¦¦à¦¿à§Ÿà§‡ à¦–à§à¦à¦œà§à¦¨', 'Search Customer By Phone Or Name', 0, 45),
(335, 336, 'à¦¨à¦¤à§à¦¨ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New', 0, 45),
(336, 337, 'à¦ªà¦°à¦¿à¦¶à§‹à¦§à§‡à¦° à¦§à¦°à¦£', 'Payment Type', 0, 45),
(337, 338, 'à¦†à¦‚à¦¶à¦¿à¦• à¦ªà¦°à¦¿à¦¶à§‹à¦§', 'Partial Payment', 0, 45),
(338, 339, 'à¦ªà§à¦°à¦ªà§à¦°à¦¿ à¦ªà¦°à¦¿à¦¶à§‹à¦§', 'Full Payment', 0, 45),
(339, 340, 'à¦šà§‡à¦• à¦¨à¦®à§à¦¬à¦°', 'Check No', 0, 45),
(340, 341, 'à¦¨à¦¤à§à¦¨ à¦°à§‡à¦«à¦¾à¦°à§‡à¦¨à§à¦¸ à¦¬à§à¦¯à¦•à§à¦¤à¦¿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Reference Person', 0, 45),
(341, 342, 'à¦®à¦¨à§à¦¤à¦¬à§à¦¯', 'Remarks', 0, 45),
(342, 343, 'à¦¨à¦¤à§à¦¨ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Customer', 0, 45),
(343, 344, 'à¦ªà¦°à¦¿à¦¶à§‹à¦§à¦¿à¦¤ à¦Ÿà¦¾à¦•à¦¾', 'Paid Amount', 0, 45),
(344, 345, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Selling Report', 0, 45),
(345, 346, 'à¦®à§‹à¦Ÿ à¦¬à¦¿à¦•à§à¦°à§Ÿ', 'Total Sell', 0, 45),
(346, 347, 'à¦†à¦œà¦•à§‡à¦° à¦œà¦¨à§à¦¯ à¦•à§‹à¦¨à§‹ à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨ à¦–à§à¦œà§‡ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿà¦¨à¦¿ !!', 'No Selling Report Found For This Day !!', 0, 45),
(347, 348, 'à¦•à§à¦°à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Buying Report', 0, 45),
(348, 349, 'à¦–à¦°à¦š à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'Expense Report', 0, 45),
(349, 350, 'à¦–à¦°à¦š à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿', 'Expense Category', 0, 45),
(350, 351, 'à¦†à¦œà¦•à§‡à¦° à¦œà¦¨à§à¦¯ à¦•à§‹à¦¨à§‹ à¦–à¦°à¦šà§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨ à¦–à§à¦œà§‡ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿà¦¨à¦¿ !!', 'No Expense Report Found For This Day !!', 0, 45),
(351, 352, 'à¦†à¦œà¦•à§‡à¦° à¦œà¦¨à§à¦¯ à¦•à§‹à¦¨à§‹ à¦•à§à¦°à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨ à¦–à§à¦œà§‡ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿà¦¨à¦¿ !!', 'No Buying Report Found For This Day !!', 0, 45),
(352, 353, 'à¦®à§‹à¦Ÿ à¦…à¦°à§à¦¥à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦¨', 'Total Amount', 0, 45),
(353, 354, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦…à¦°à§à¦¥à§‡à¦° à¦¬à¦¿à¦¬à¦°à¦¨', 'Selling Amount Detail', 0, 45),
(354, 355, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦¸à¦¿à¦°à¦¿à§Ÿà¦¾à¦²', 'Order No', 0, 45),
(355, 356, 'à¦–à¦¾à¦²à¦¿', 'Empty', 0, 45),
(356, 357, 'à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤ à¦¦à§‡à¦–à§à¦¨', 'View Details', 0, 45),
(357, 358, 'à¦¶à§‡à¦²à§à¦­ à¦¨à¦®à§à¦¬à¦°', 'Shalve No', 1, 45),
(358, 359, 'à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦° à¦à¦®à¦¾à¦‰à¦¨à§à¦Ÿ', 'Transfer Amount', 1, 45),
(359, 360, 'à¦Ÿà¦¿', ' ', 0, 45),
(360, 361, 'à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Transfer Quantity', 0, 45),
(361, 362, 'à¦¨à¦¤à§à¦¨ à¦²à§‡à¦­à§‡à¦² à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Level', 0, 45),
(362, 363, 'à¦²à§‡à¦­à§‡à¦² à¦¬à¦¾à¦‚à¦²à¦¾ à¦¨à¦¾à¦®', 'Level Bangla Name', 0, 45),
(363, 364, 'à¦²à§‡à¦­à§‡à¦² à¦‡à¦‚à¦°à§‡à¦œà§€ à¦¨à¦¾à¦®', 'Level English Name', 0, 45),
(364, 365, 'à¦²à§‡à¦­à§‡à¦² à¦†à¦‡à¦¡à¦¿', 'Level ID', 1, 45),
(365, 366, 'à¦²à§‡à¦­à§‡à¦²à§‡à¦° à¦¬à¦¾à¦‚à¦²à¦¾ à¦¨à¦¾à¦® à¦¦à¦¿à¦¨', 'Level Bangla Name Is Required !!', 0, 45),
(366, 367, 'à¦²à§‡à¦­à§‡à¦²à§‡à¦° à¦‡à¦‚à¦°à§‡à¦œà§€ à¦¨à¦¾à¦® à¦¦à¦¿à¦¨ !!', 'Level English Name Is Required !!', 0, 45),
(367, 368, 'à¦²à§‡à¦­à§‡à¦² à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Level Updated !!', 0, 45),
(368, 369, 'à¦²à§‡à¦­à§‡à¦² à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Level Edit', 0, 45),
(369, 370, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦¡à¦¿à¦²à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Order Successfully Removed !!', 0, 45),
(370, 371, 'à¦¡à§à¦°à¦¾à¦«à¦Ÿ à¦…à¦°à§à¦¡à¦¾à¦°', 'Draft Order', 0, 45),
(371, 372, 'à¦¡à§à¦°à¦¾à¦«à¦Ÿ à¦…à¦°à§à¦¡à¦¾à¦° à¦¬à¦¿à¦¬à¦°à¦¨', 'Draft Order Details', 0, 45),
(372, 373, 'à¦…à¦°à§à¦¡à¦¾à¦°', 'Order', 0, 45),
(373, 374, 'à¦•à§à¦°à§‡à¦¤à¦¾', 'Customer', 0, 45),
(374, 375, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Order Date', 0, 45),
(375, 376, 'à¦ªà¦£à§à¦¯', 'Product', 0, 45),
(376, 377, 'à¦®à§‹à¦Ÿ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡', 'Have to Pay', 1, 45),
(377, 378, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦•à§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦² à¦•à¦°à§à¦¨', 'Cancel Order', 0, 45),
(378, 379, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦•à¦°à§à¦¨', 'Complete Order', 0, 45),
(379, 380, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾ à¦šà§‡à¦• à¦•à¦°à§à¦¨', 'Check Due Selling List', 0, 45),
(380, 381, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦•à¦°à§à¦¨', 'Complete Order Payment', 0, 45),
(381, 382, 'à¦®à§‹à¦Ÿ', 'Total', 0, 45),
(382, 383, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦…à¦°à§à¦¡à¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Due Order List', 0, 45),
(383, 384, 'à¦—à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦Ÿà§‹à¦Ÿà¦¾à¦²(à¦Ÿà¦¾à¦•à¦¾)', 'Grand Total (Taka)', 0, 45),
(384, 385, 'à¦ªà§‡à¦‡à¦¡ à¦Ÿà§‹à¦Ÿà¦¾à¦² (à¦Ÿà¦¾à¦•à¦¾)', 'Paid Total (Taka)', 0, 45),
(385, 386, 'à¦¬à¦•à§‡à§Ÿà¦¾ (à¦Ÿà¦¾à¦•à¦¾)', 'Due (Taka)', 0, 45),
(386, 387, 'à¦¸à§à¦Ÿà§‹à¦° à¦¦à¦¿à§Ÿà§‡ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter By Store', 0, 45),
(387, 388, 'à¦šà¦¾à¦²à¦¾à¦¨ (à¦‡à¦¨à¦­à§Ÿà§‡à¦¸)', 'Invoice', 0, 45),
(388, 389, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦¬à¦¿à¦¬à¦°à¦¨', 'Order Details', 0, 45),
(389, 390, 'à¦¬à¦¿à¦² à¦¹à§Ÿà§‡à¦›à§‡', 'Billed to', 0, 45),
(390, 391, 'à¦¸à¦¾à¦¬ à¦Ÿà§‹à¦Ÿà¦¾à¦²', 'Sub Total', 0, 45),
(391, 392, 'à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦–à¦°à¦š', 'Other Expense', 0, 45),
(392, 393, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦•à¦°à§à¦¨', 'Due payment', 0, 45),
(393, 394, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦…à¦°à§à¦¥à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦¨', 'Due Amount', 0, 45),
(394, 395, 'à¦ªà§à¦°à¦ªà§à¦°à¦¿ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦¹à§Ÿà¦¨à¦¿', 'Full Payment Incomplete', 0, 45),
(395, 396, 'à¦¬à¦¿à¦¶à§‡à¦· à¦›à¦¾à§œà§‡ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦•à¦°à¦¾ à¦¹à¦²', 'Paid In A Special Discount', 0, 45),
(396, 397, 'à¦ªà§à¦°à¦¿à¦¨à§à¦Ÿ', 'Print', 0, 45),
(397, 398, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦•à¦¿à¦›à§ à¦²à¦¿à¦–à§à¦¨', 'Write Payment Remarks', 0, 45),
(398, 399, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Order List', 0, 45),
(399, 400, 'à¦¬à¦¾à¦° à¦¬à¦¿à¦•à§à¦°à§Ÿ', 'Total Sell', 0, 45),
(400, 401, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter Order', 0, 45),
(401, 402, 'à¦Ÿà¦¾à¦‡à¦ª à¦¦à¦¿à§Ÿà§‡ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter By Type', 0, 45),
(402, 403, 'à¦Ÿà¦¾à¦‡à¦ª à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Type', 0, 45),
(403, 404, 'à¦Ÿà¦¾à¦•à¦¾ à¦¦à¦¿à§Ÿà§‡ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter By Taka', 0, 45),
(404, 405, 'à¦Ÿà¦¾à¦•à¦¾à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Amount (Taka)', 0, 45),
(405, 406, 'à¦¹à¦¤à§‡', 'to', 0, 45),
(406, 407, 'à¦¹à¦¤à§‡ à¦…à¦§à¦¿à¦•', 'More than', 0, 45),
(407, 408, 'à¦¸à¦•à¦² à¦…à¦°à§à¦¡à¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'All Order List', 0, 45),
(408, 409, 'à¦ªà¦£à§à¦¯ à¦¬à¦¿à¦•à§à¦°à¦¿', 'Sell Product', 0, 45),
(409, 410, 'à¦¸à§à¦Ÿà§‹à¦° à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Store Number', 0, 45),
(410, 411, 'à¦—à¦¤ à§­ à¦¦à¦¿à¦¨', 'Last 7 Days', 0, 45),
(411, 412, 'à¦ªà¦£à§à¦¯ à¦•à§à¦°à§Ÿ à¦à¦° à¦¬à¦¿à¦¬à¦°à¦¨', 'Buy Product Detail', 0, 45),
(412, 413, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¹à§Ÿà§‡à¦›à§‡', 'Payment Complete', 0, 45),
(413, 414, 'à¦¬à¦•à§‡à§Ÿà¦¾à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦¨', 'Due Amount', 0, 45),
(414, 415, 'à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦¹à§Ÿà¦¨à¦¿', 'Incomplete Payment', 0, 45),
(415, 416, 'à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦•à¦°à§à¦¨', 'Pay', 0, 45),
(416, 417, 'à¦•à§à¦°à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter Buy Report', 0, 45),
(417, 418, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦ª', 'Payment Type', 0, 45),
(418, 419, 'à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦¨à¦¾à¦®', 'Store Name', 1, 45),
(419, 420, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¤à¦¥à§à¦¯', 'Product Information', 0, 45),
(420, 421, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦®à§‚à¦²à§à¦¯  à¦¸à¦®à§à¦ªà¦°à§à¦•à¦¿à¦¤ à¦¤à¦¥à§à¦¯', 'Product Information About Price', 0, 45),
(421, 422, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦•à§‹à¦¡', 'Product Code', 0, 45),
(422, 423, 'à¦ªà¦£à§à¦¯à§‡à¦° ISBN', 'Product ISBN', 0, 45),
(423, 424, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦§à¦°à¦£', 'Product Category', 1, 45),
(424, 425, 'à¦¨à¦¤à§à¦¨ à¦§à¦°à¦£', 'New Type', 1, 45),
(425, 426, 'à¦¨à¦¤à§à¦¨ à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡', 'New Brand', 0, 45),
(426, 427, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦†à¦•à¦¾à¦° (à¦¸à§‡à¦®à¦¿)', 'Product Size (cm)', 1, 45),
(427, 428, 'à¦¦à§ˆà¦°à§à¦˜à§à¦¯', 'Length', 0, 45),
(428, 429, 'à¦ªà§à¦°à¦¸à§à¦¥', 'Width', 0, 45),
(429, 430, 'à¦‰à¦šà§à¦šà¦¤à¦¾', 'Height', 0, 45),
(430, 431, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¬à¦°à§à¦£à¦¨à¦¾', 'Product Description', 0, 45),
(431, 432, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦›à¦¬à¦¿', 'Product Image', 0, 45),
(432, 433, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦›à¦¬à¦¿', 'Product Gallery Image', 0, 45),
(433, 434, 'à¦à¦‡ à¦ªà¦£à§à¦¯à¦Ÿà¦¿ à¦…à¦¨à¦²à¦¾à¦‡à¦¨à§‡ à¦¬à¦¿à¦•à§à¦°à¦¿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦‡?', 'Want to sell this product online ?', 0, 45),
(434, 435, 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦§à¦¾à¦ªà§‡ à¦¯à¦¾à¦¨', 'Next Step', 0, 45),
(435, 436, 'à¦¬à¦¿à¦¶à§‡à¦· à¦®à§‚à¦²à§à¦¯', 'Special Price', 0, 45),
(436, 437, 'à¦¬à¦¿à¦¶à§‡à¦· à¦®à§‚à¦²à§à¦¯ à¦¶à§à¦°à§à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Special Price Starting Date', 0, 45),
(437, 438, 'à¦¬à¦¿à¦¶à§‡à¦· à¦®à§‚à¦²à§à¦¯ à¦¶à§‡à¦·à§‡à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Special Price End Date', 0, 45),
(438, 439, 'à¦¸à§‡à¦‡à¦­ à¦•à¦°à§à¦¨', 'Save', 0, 45),
(439, 440, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦¯à§à¦•à§à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Category Added Successfully !!', 0, 45),
(440, 441, 'à¦‡à¦®à§‡à¦œà§‡à¦° à¦¸à¦¾à¦‡à¦œ à§«à§¦ à¦•à¦¿à¦²à§‹à¦¬à¦¾à¦‡à¦Ÿà§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¹à¦¤à§‡ à¦¹à¦¬à§‡ !', 'Image size should be 50 kb !', 0, 45),
(441, 442, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦Ÿà§‡à¦² à¦¦à¦¿à¦¨ !!', 'Product title is Required !!', 0, 45),
(442, 443, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦•à§‹à¦¡ à¦¦à¦¿à¦¨ !!', 'Product Code is Required !!', 0, 45),
(443, 444, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦§à¦°à¦£/à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦¦à¦¿à¦¨ !!', 'Product Type/Category Is Required !!', 0, 45),
(444, 445, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ ! à¦à¦–à¦¨ à¦®à§‚à¦²à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨ !!', 'Product Successfully Inserted. Now Add Product Price..', 0, 45),
(445, 446, 'à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Information', 0, 45),
(446, 447, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Product Successfully Updated !!', 0, 45),
(447, 448, 'à¦¹à§à¦¯à¦¾à¦', 'Yes', 0, 45),
(448, 449, 'à¦¨à¦¾', 'No', 0, 45),
(449, 450, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Product Brand', 0, 45),
(450, 451, 'à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦®à§‚à¦²à§à¦¯ à¦¦à¦¿à¦¨ !!', 'Selling Price Is Required !!', 0, 45),
(451, 452, 'à¦­à§à¦¯à¦¾à¦²à¦¿à¦¡ à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦¦à¦¿à¦¨ !!', 'Valid Numeric value is required !!', 0, 45),
(452, 453, 'à¦ªà§à¦°à¦¥à¦®à§‡ à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿà§‡à¦° à¦¤à¦¥à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨ !!', 'First Add Product Information !!', 0, 45),
(453, 454, 'à¦¨à¦¤à§à¦¨ à¦¸à¦®à¦¨à§à¦¬à¦¿à¦¤ à¦ªà¦£à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Group Product', 0, 45),
(454, 455, 'à¦¸à¦®à¦¨à§à¦¬à¦¿à¦¤ à¦ªà¦£à§à¦¯', 'Group Product', 0, 45),
(455, 456, 'à¦¸à¦®à¦¨à§à¦¬à¦¿à¦¤ à¦ªà¦£à§à¦¯à§‡à¦° à¦¤à¦¥à§à¦¯', 'Group Product Information', 0, 45),
(456, 457, 'à¦¸à¦®à¦¨à§à¦¬à¦¿à¦¤ à¦ªà¦£à§à¦¯à§‡à¦° à¦®à§‚à¦²à§à¦¯', 'Group Product Price', 0, 45),
(457, 458, 'à¦ªà¦£à§à¦¯à¦Ÿà¦¿ à¦–à§à¦à¦œà§à¦¨', 'Search Product', 0, 45),
(458, 459, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¨à¦¾à¦® à¦…à¦¥à¦¬à¦¾ à¦•à§‹à¦¡ à¦¦à¦¿à§Ÿà§‡ à¦–à§à¦à¦œà§à¦¨', 'Search By Product name Or Code', 0, 45),
(459, 460, 'à¦ªà§à¦°à¦®à§‹ à¦®à§‚à¦²à§à¦¯', 'Promo Price', 0, 45),
(460, 461, 'à¦ªà§à¦°à¦®à§‹ à¦®à§‚à¦²à§à¦¯ à¦¶à§à¦°à§à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Promo Price Starting Date', 0, 45),
(461, 462, 'à¦ªà§à¦°à¦®à§‹ à¦®à§‚à¦²à§à¦¯ à¦¶à§‡à¦·à§‡à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Promo Price End Date', 0, 45),
(462, 463, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿà§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾ à¦¶à§‚à¦¨à§à¦¯ !!', 'Product List Is Empty !!', 0, 45),
(463, 464, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿà§‡à¦° à¦¤à¦¥à§à¦¯ à¦¸à¦‚à¦°à¦•à§à¦·à¦¿à¦¤ à¦¹à¦² !!', 'Product Info Saved Successfully !!', 0, 45),
(464, 465, 'à¦ªà¦£à§à¦¯à¦Ÿà¦¿ à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¾ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Product Deleted Successfully !!', 0, 45),
(465, 466, 'à¦¸à¦®à¦¨à§à¦¬à¦¿à¦¤ à¦ªà¦£à§à¦¯à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Group Product List', 0, 45),
(466, 467, 'à¦Ÿà¦¿ à¦¸à¦®à¦¨à§à¦¬à¦¿à¦¤ à¦ªà¦£à§à¦¯', 'Total Group Products', 0, 45),
(467, 468, 'à¦ªà¦£à§à¦¯ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter Product', 0, 45),
(468, 469, 'à¦à¦‡ à¦ªà¦£à§à¦¯à¦Ÿà¦¿ à¦®à§à¦›à§‡ à¦«à§‡à¦²à§à¦¨', 'Delete This Product', 0, 45),
(469, 470, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦ªà¦£à§à¦¯à¦Ÿà¦¿ à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'You Want To Delete This Product ?', 0, 45),
(470, 471, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦¦à¦¿à§Ÿà§‡ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter By Category', 0, 45),
(471, 472, 'à¦ªà¦£à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Product', 0, 45),
(472, 473, 'à¦à¦° à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Information', 0, 45),
(473, 474, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦®à§‚à¦²à§à¦¯', 'Product Price', 0, 45),
(474, 475, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¸à§à¦Ÿà¦•', 'Product Stock', 0, 45),
(475, 476, 'à¦¨à¦¤à§à¦¨ à¦›à¦¬à¦¿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Image', 0, 45),
(476, 477, 'à¦¨à¦¤à§à¦¨ à¦®à§‚à¦²à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New price', 0, 45),
(477, 478, 'à¦ªà§à¦°à¦®à§‹ à¦¸à§à¦Ÿà§à¦¯à¦¾à¦Ÿà¦¾à¦¸', 'Promo Status', 0, 45),
(478, 479, 'à¦®à§‚à¦²à§à¦¯ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Price', 0, 45),
(479, 480, 'à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦®à§‚à¦²à§à¦¯', 'Current Price', 0, 45),
(480, 481, 'à¦ªà§‚à¦°à§à¦¬ à¦®à§‚à¦²à§à¦¯', 'Old Price', 0, 45),
(481, 482, 'à¦®à§‚à¦²à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Price', 0, 45),
(482, 483, 'à¦‡à¦¨à¦­à§‡à¦¨à§à¦Ÿà¦°à¦¿ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Inventory Details', 0, 45),
(483, 484, 'à¦à¦‡ à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿà§‡à¦° à¦œà¦¨à§à¦¯ à¦•à§‹à¦¨à§‹ à¦®à§‚à¦²à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦¹à§Ÿà¦¨à¦¿ !!', 'No Price Added For This Product !!', 0, 45),
(484, 485, 'à¦ªà§à¦°à¦®à§‹ à¦¬à¦¨à§à¦§', 'Promo Off', 0, 45),
(485, 486, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ ID à¦¦à¦¿à¦¨ !!', 'Product ID Is Required !!', 0, 45),
(486, 487, 'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦‡à¦¨à¦­à§‡à¦¨à§à¦Ÿà¦°à¦¿ à¦¯à§à¦•à§à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Product Inventory Successfully Added !!', 0, 45),
(487, 488, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦®à§‚à¦²à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Product Price Updated !!', 0, 45),
(488, 489, 'à¦ªà¦°à¦¿à¦®à¦¾à¦£ à¦¦à¦¿à¦¨ !!', 'Quantity is required !!', 0, 45),
(489, 490, 'à¦‡à¦¨à¦­à§‡à¦¨à§à¦Ÿà¦°à¦¿ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Inventory Successfully Updated !!', 0, 45),
(490, 491, 'à¦¶à§‡à¦²à§à¦­ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Shalve No', 1, 45),
(491, 492, 'à¦ªà§à¦°à¦®à§‹ à¦šà¦¾à¦²à§', 'Promo On', 0, 45),
(492, 493, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Category', 0, 45),
(493, 494, 'à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Brand', 0, 45),
(494, 495, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦®à§‚à¦²à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Product Price Added !!', 0, 45),
(495, 496, 'à¦•à§à¦°à§Ÿ à¦®à§‚à¦²à§à¦¯ à¦¦à¦¿à¦¨ !!', 'Buying Price is required !!', 0, 45),
(496, 497, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter Product List', 0, 45),
(497, 498, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦§à¦°à¦£ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Filter Product Type', 0, 45),
(498, 499, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦®à§‚à¦²à§à¦¯ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Product Price List', 0, 45),
(499, 500, 'à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter', 0, 45),
(500, 501, 'à¦®à§‚à¦²à§à¦¯ à¦°à§‡à¦žà§à¦œ', 'Price Range', 0, 45),
(501, 502, 'à¦•à¦¾à¦¸à§à¦Ÿà¦® à¦°à§‡à¦žà§à¦œ', 'Custom Range', 0, 45),
(502, 503, 'à¦Ÿà¦¾à¦‡à¦Ÿà§‡à¦²', 'Title', 0, 45),
(503, 504, 'à¦•à§à¦°à§Ÿà¦•à§ƒà¦¤ à¦¸à¦‚à¦–à§à¦¯à¦¾', 'Number Of Purchase', 0, 45),
(504, 505, 'à¦¬à¦¿à¦•à§à¦°à§Ÿà¦•à§ƒà¦¤ à¦¸à¦‚à¦–à§à¦¯à¦¾', 'Number Of Sells', 0, 45),
(505, 506, 'à¦•à§à¦°à§Ÿà§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Purchase Amount', 0, 45),
(506, 507, 'à¦¬à¦¿à¦•à§à¦°à§Ÿà§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Sells Amount', 0, 45),
(507, 508, 'à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦¬à¦¿à¦•à§à¦°à¦¿à¦¤ à¦ªà¦£à§à¦¯à¦¸à¦®à§‚à¦¹', 'Top Selling Products', 1, 45),
(508, 509, 'à¦¸à¦•à¦² à¦®à§à¦›à§‡ à¦¦à§‡à§Ÿà¦¾ à¦ªà¦£à§à¦¯', 'All Trashed Products', 0, 45),
(509, 510, 'à¦Ÿà§à¦°à¦¾à¦¶', 'Trash', 0, 45),
(510, 511, 'à¦¸à¦•à¦² à¦®à§à¦›à§‡ à¦¦à§‡à§Ÿà¦¾ à¦ªà¦£à§à¦¯ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'All Trashed Product List', 0, 45),
(511, 512, 'à¦«à§‡à¦°à¦¤ à¦‡à¦¨à¦­à§Ÿà§‡à¦¸ (à¦šà¦¾à¦²à¦¾à¦¨)', 'Return Invoice', 0, 45),
(512, 513, 'à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦¹à§Ÿà§‡à¦›à§‡', 'Shipped to', 0, 45),
(513, 514, 'à¦†à¦‡à¦Ÿà§‡à¦®', 'Item', 0, 45),
(514, 515, 'à¦®à§‹à¦Ÿ à¦«à§‡à¦°à¦¤à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Total Return Amount', 0, 45),
(515, 516, 'à¦«à§‡à¦°à¦¤ à¦…à¦°à§à¦¡à¦¾à¦°', 'Return Order', 0, 45),
(516, 517, 'à¦•à¦®à¦ªà§à¦²à¦¿à¦Ÿ à¦…à¦°à§à¦¡à¦¾à¦°', 'Complete Order', 0, 45),
(517, 518, 'à¦®à§‹à¦Ÿ à¦«à§‡à¦°à¦¤ à¦ªà¦¨à§à¦¯', 'Total Return Product', 0, 45),
(518, 519, 'à¦¸à¦•à¦² à¦«à§‡à¦°à¦¤ à¦…à¦°à§à¦¡à¦¾à¦°à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Return Order List', 0, 45),
(519, 520, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦§à¦°à¦£', 'Order Type', 0, 45),
(520, 521, 'à¦«à§‡à¦°à¦¤ à¦ªà¦£à§à¦¯à§‡à¦° à¦¤à¦¥à§à¦¯', 'Return Product Information', 0, 45),
(521, 522, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦–à§à¦à¦œà§à¦¨', 'Search order', 0, 45),
(522, 523, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦•à§‹à¦¡ à¦¬à¦¾ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¦à¦¿à¦¨', 'Order Code or Number', 0, 45),
(523, 524, 'à¦…à¦°à§à¦¡à¦¾à¦°/à¦‡à¦¨à¦­à§Ÿà§‡à¦¸ à¦¨à¦®à§à¦¬à¦° ', 'Input Order/Invoice No !!', 0, 45),
(524, 525, 'à¦•à§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦² à¦…à¦°à§à¦¡à¦¾à¦° !!', 'Cancel Order !!', 0, 45),
(525, 526, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦…à¦°à§à¦¡à¦¾à¦° à¦•à§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦² à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'You Want To Cancel This Order ?', 0, 45),
(526, 527, 'à¦…à¦°à§à¦¡à¦¾à¦° à¦«à§‡à¦°à¦¤ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Order Return Complete !!', 0, 45),
(527, 528, 'à¦‡à¦¨à¦­à§Ÿà§‡à¦¸ à¦ªà§à¦°à¦¿à¦¨à§à¦Ÿ à¦•à¦°à§à¦¨', 'Print Invoice', 0, 45),
(528, 529, 'à¦­à§à¦² à¦ªà¦°à¦¿à¦®à¦¾à¦£ !!', 'Invalid Quantity !!', 0, 45),
(529, 530, 'à¦²à¦¾à¦­ à¦à¦¬à¦‚ à¦•à§à¦·à¦¤à¦¿', 'Profit And Loss', 0, 45),
(530, 531, 'à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter Summary', 1, 45),
(531, 532, 'à¦¤à¦¾à¦°à¦¿à¦– à¦°à§‡à¦žà§à¦œà§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Search Total Sell By Date Range', 0, 45),
(532, 533, 'à¦°à§‡à¦žà§à¦œ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Range', 0, 45),
(533, 534, 'à¦¸à¦¾à¦°à§à¦šà¦•à§ƒà¦¤ à¦«à¦²à¦¾à¦«à¦²', 'Search Result', 0, 45),
(534, 535, 'à¦¦à§à¦‡à¦Ÿà¦¿ à¦¤à¦¾à¦°à¦¿à¦– à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨ (à¦¹à¦¤à§‡-à¦¥à§‡à¦•à§‡)', 'Select From and To Date', 0, 45),
(535, 536, 'à¦•à§à¦·à¦¤à¦¿', 'Loss', 0, 45),
(536, 537, 'à¦²à¦¾à¦­', 'Profit', 0, 45),
(537, 538, 'à¦¹à¦¤à§‡', 'From', 0, 45),
(538, 539, 'à¦ªà¦°à§à¦¯à¦¨à§à¦¤', 'To', 0, 45),
(539, 540, ' à¦ªà¦£à§à¦¯à§‡à¦° à¦¨à¦¾à¦® à¦…à¦¥à¦¬à¦¾ à¦•à§‹à¦¡ à¦¦à¦¿à§Ÿà§‡ à¦¸à¦¾à¦°à§à¦š à¦•à¦°à§‡ à¦•à¦¾à¦°à§à¦Ÿà§‡ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Search By Product Name or Code and Add to Cart', 0, 45),
(540, 541, 'à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦“ à¦²à§‡à¦¨à¦¦à§‡à¦¨', 'Customer and Transactions', 0, 45),
(541, 542, 'à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦¨à¦¾à¦® à¦…à¦¥à¦¬à¦¾ à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¦à¦¿à§Ÿà§‡ à¦–à§à¦à¦œà§à¦¨', 'Search By Customer Name or Mobile Number', 0, 45),
(542, 543, 'à¦ªà¦£à§à¦¯ à¦¬à¦¹à¦¨ à¦–à¦°à¦š à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Product Carry Cost', 0, 45),
(543, 544, 'à¦¡à¦¿à¦¸à¦•à¦¾à¦‰à¦¨à§à¦Ÿ (à¦…à¦‚à¦•à§‡)', 'Discount (Number)', 0, 45),
(544, 545, 'à¦¡à¦¿à¦¸à¦•à¦¾à¦‰à¦¨à§à¦Ÿ (à¦¶à¦¤à¦•à¦°à¦¾ %)', 'Discount (Percentages %)', 0, 45),
(545, 546, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦®à§‡à¦¥à¦¡', 'Payment Method', 0, 45),
(546, 547, 'à¦•à§à¦¯à¦¾à¦¶', 'Cash', 0, 45),
(547, 548, 'à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¬à§à¦¯à¦¾à¦‚à¦•à¦¿à¦‚', 'Mobile Banking', 0, 45),
(548, 549, 'à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦ªà¦°à¦¿à¦¶à§‹à¦§', 'Complete Payment', 0, 45),
(549, 550, 'à¦¬à¦¾à¦•à¦¿', 'Due', 0, 45),
(550, 551, 'à¦†à¦‚à¦¶à¦¿à¦•', 'Partial', 0, 45),
(551, 552, 'à¦…à¦°à§à¦¡à¦¾à¦°à¦Ÿà¦¿ à¦¡à§à¦°à¦¾à¦«à¦Ÿ à¦•à¦°à§à¦¨', 'Draft the Order', 0, 45),
(552, 553, 'à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦•à¦°à§à¦¨', 'Complete', 0, 45),
(553, 554, 'à¦…à¦¸à¦®à§à¦ªà¦¨à§à¦¨  à¦…à¦°à§à¦¡à¦¾à¦°à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Incomplete Order List', 0, 45),
(554, 555, 'à¦¸à§à¦Ÿà¦• à¦–à¦¾à¦²à¦¿ !!', 'Empty Stock !!', 0, 45),
(555, 556, 'à¦à¦‡ à¦ªà¦£à§à¦¯à¦Ÿà¦¿ à¦†à¦ªà¦¨à¦¾à¦° à¦¸à§à¦Ÿà¦•à§‡ à¦¨à§‡à¦‡, à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦à¦Ÿà¦¿ à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'This product is not in your stock. Do you want to sell this ?', 0, 45),
(556, 557, 'à¦­à§à¦² à¦®à¦¾à¦¨ !!', 'Invalid Value !!', 0, 45),
(557, 558, 'à¦—à§ƒà¦¹à§€à¦¤ à¦Ÿà¦¾à¦•à¦¾à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£ à¦‰à¦²à§à¦²à§‡à¦– à¦•à¦°à§à¦¨', 'Amount of Money Received', 0, 45),
(558, 559, 'à¦­à§à¦² à¦®à§‚à¦²à§à¦¯à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£ !!', 'Invalid Price Amount !!', 0, 45),
(559, 560, 'à¦ªà¦°à¦¿à¦®à¦¾à¦£ à§§ à¦à¦° à¦šà§‡à§Ÿà§‡ à¦•à¦® à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¦¾ !!', 'Quantity can not be less than 1 !!', 0, 45),
(560, 561, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦ª à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Payment Type', 0, 45),
(561, 562, 'à¦­à§à¦² à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£ !!', 'Invalid payment Amount !!', 0, 45),
(562, 563, 'à¦œà§‡à¦¨à§à¦¡à¦¾à¦° à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Gender', 0, 45),
(563, 564, 'à¦­à¦¾à¦·à¦¾ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'Edit Language Settings', 0, 45),
(564, 565, 'à¦¡à¦¿à¦«à¦²à§à¦Ÿ à¦­à¦¾à¦·à¦¾', 'Default Language', 0, 45),
(565, 566, 'à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à¦² !!', 'Settings Updated !!', 0, 45),
(566, 567, 'à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦¶à§‡à¦²à§à¦­ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Shalve in Store', 1, 45),
(567, 568, 'à¦¨à¦¤à§à¦¨ à¦¶à§‡à¦²à§à¦­ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Shalve', 1, 45),
(568, 569, 'à¦¶à§‡à¦²à§à¦­à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Shalve List', 1, 45),
(569, 570, 'à¦¶à§‡à¦²à§à¦­ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Shalve No', 1, 45),
(570, 571, 'à¦¦à§‹à¦•à¦¾à¦¨ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Store Number', 0, 45),
(571, 572, 'à¦¶à§‡à¦²à§à¦­ à¦•à§‹à¦¡', 'Shalve Code', 1, 45),
(572, 573, 'à¦¶à§‡à¦²à§à¦­ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦¹à§Ÿà§‡à¦›à§‡ !!', 'Shalve Removed !!', 1, 45),
(573, 574, 'à¦ªà¦£à§à¦¯ à¦¸à§à¦Ÿà¦•à§‡ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Product in Stock', 0, 45),
(574, 575, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€ à¦“ à¦²à§‡à¦¨à¦¦à§‡à¦¨', 'Supplier and Transactions', 0, 45),
(575, 576, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'Select Supplier', 0, 45);
INSERT INTO `rtl_levels` (`SL`, `level_nameID`, `level_bn_name`, `level_en_name`, `is_modified`, `vendorID`) VALUES
(576, 577, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦¨à¦¾à¦® à¦…à¦¥à¦¬à¦¾ à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¦à¦¿à§Ÿà§‡ à¦–à§à¦à¦œà§à¦¨', 'Search Supplier By Name or Mobile Number', 0, 45),
(577, 578, 'à¦šà§‡à¦•', 'Check', 0, 45),
(578, 579, 'à¦¨à¦¤à§à¦¨ à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Supplier', 0, 45),
(579, 580, 'à¦†à¦‚à¦¶à¦¿à¦• à¦ªà¦°à¦¿à¦¶à§‹à¦§à¦¿à¦¤ à¦Ÿà¦¾à¦•à¦¾', 'Partial Payment Amount', 0, 45),
(580, 581, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¸à§à¦Ÿà¦• à¦¤à¦¥à§à¦¯', 'Product Stock Information', 0, 45),
(581, 582, 'à¦¶à§‡à¦²à§à¦­ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Shalve No', 1, 45),
(582, 583, 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ', 'Payment', 0, 45),
(583, 584, ' à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¬à¦¾à¦•à¦¿', 'Full Due', 0, 45),
(584, 585, 'à¦†à¦‚à¦¶à¦¿à¦• à¦¬à¦¾à¦•à¦¿', 'Partial Due', 0, 45),
(585, 586, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦¨à¦¾à¦® à¦Ÿà¦¾à¦‡à¦ª à¦•à¦°à§à¦¨', 'Type Supplier Name', 0, 45),
(586, 587, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦®à§‹à¦Ÿ à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Total Quantity Of Product', 0, 45),
(587, 588, 'à¦ªà¦£à§à¦¯ à¦¬à¦¨à§à¦Ÿà¦¨ à¦•à¦°à§à¦¨', 'Distribute Product', 0, 45),
(588, 589, 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿', 'Category ', 0, 45),
(589, 590, 'à¦¨à¦¤à§à¦¨ à¦¸à§à¦Ÿà¦•', 'New Stock', 0, 45),
(590, 591, 'à¦¨à¦¤à§à¦¨ à¦¸à§à¦Ÿà¦•à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'New Stock List', 0, 45),
(591, 592, 'à¦ªà¦£à§à¦¯ à¦—à§à¦°à¦¹à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Receive Product List', 0, 45),
(592, 593, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦¨à¦¾à¦®', 'Supplier Name', 0, 45),
(593, 594, 'à¦¸à§à¦Ÿà¦• à¦¬à¦¿à¦¬à¦°à¦¨', 'Stock Details', 0, 45),
(594, 595, 'à¦ªà¦°à¦¿à¦®à¦¾à¦¨ à¦¦à¦¿à§Ÿà§‡ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦•à¦°à§à¦¨', 'Filter By Quantity', 0, 45),
(595, 596, 'à¦¸à§à¦Ÿà¦• à¦à¦° à¦¤à¦¥à§à¦¯', 'Stock Information', 0, 45),
(596, 597, 'à¦Ÿà§‹à¦Ÿà¦¾à¦² à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Total Quantity', 0, 45),
(597, 598, 'à¦¸à§à¦Ÿà¦•à§‡à¦° à¦¬à¦¿à¦¬à¦°à¦£-', 'Stock Details Of', 0, 45),
(598, 599, 'à¦¸à§à¦Ÿà¦•à§‡à¦° à¦¸à¦¾à¦°à¦¸à¦‚à¦•à§à¦·à§‡à¦ª', 'Stock Summary', 0, 45),
(599, 600, 'à¦ªà¦£à§à¦¯à§‡à¦° à¦¸à§à¦Ÿà¦• à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦°', 'Product Stock Transfer', 0, 45),
(600, 601, 'à¦¸à§à¦Ÿà§‹à¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦¾à¦° à¦“ à¦²à§‡à¦¨à¦¦à§‡à¦¨', 'Store Manager and Transactions', 0, 45),
(601, 602, 'à¦¯à§‡ à¦¸à§à¦Ÿà§‹à¦°à§‡ à¦ªà¦£à§à¦¯à¦—à§à¦²à§‹ à¦ªà¦¾à¦ à¦¾à¦¤à§‡ à¦šà¦¾à¦¨, à¦¸à§‡à¦Ÿà¦¾ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'Select The Store Where You Want To Keep This Product', 0, 45),
(602, 603, 'à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¿à¦¤ à¦¸à§à¦Ÿà§‹à¦° à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Transfer Store', 0, 45),
(603, 604, 'à¦¸à¦•à¦² à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦° à¦•à¦°à¦¾ à¦ªà¦£à§à¦¯ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'All Transferred Product List', 0, 45),
(604, 605, 'à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦° à¦ªà¦£à§à¦¯ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Transferred Product List', 0, 45),
(605, 606, 'à¦¤à¦¾à¦°à¦¿à¦– à¦°à§‡à¦žà§à¦œ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Date Range', 0, 45),
(606, 607, 'à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦° à¦ªà¦£à§à¦¯à§‡à¦° à¦‡à¦¨à¦­à§Ÿà§‡à¦¸', 'Transfer Products Invoice', 0, 45),
(607, 608, ' à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦° à¦…à¦°à§à¦¡à¦¾à¦°à§‡à¦° à¦¬à¦¿à¦¬à¦°à¦¨', 'Transfer Order Details', 0, 45),
(608, 609, 'à¦ªà§à¦°à¦¾à¦ªà¦•', 'Recipient', 0, 45),
(609, 610, 'à¦¬à¦•à§‡à§Ÿà¦¾ à¦Ÿà¦¾à¦•à¦¾à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦¨', 'Due Amount (Taka)', 0, 45),
(610, 611, 'à¦ªà¦°à¦¿à¦¶à§‹à¦§à¦¤ à¦…à¦°à§à¦¥à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦¨', 'Paid Amount', 0, 45),
(611, 612, 'à¦¸à¦¬ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦¨à¦¿', 'Not Pay Full', 0, 45),
(612, 613, 'à¦¬à¦¿à¦¶à§‡à¦· à¦­à¦¾à¦¬à§‡ à¦›à¦¾à§œ à¦¦à§‡à§Ÿà¦¾ à¦¹à¦²', 'Special Discount', 0, 45),
(613, 614, 'à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Store List', 0, 45),
(614, 615, 'à¦²à§‹à¦—à§‹', 'Logo', 0, 45),
(615, 616, 'à¦•à¦®à§à¦ªà¦¾à¦¨à¦¿ à¦²à§‹à¦—à§‹', 'Company Logo', 0, 45),
(616, 617, 'à¦à¦‡ à¦¸à§à¦Ÿà§‹à¦°à¦Ÿà¦¿ à¦“à§Ÿà¦¾à¦°à¦¹à¦¾à¦‰à¦œ à¦¹à¦¿à¦¸à¦¾à¦¬à§‡ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add This Store As Wirehouse', 0, 45),
(617, 618, 'à¦à¦‡ à¦¸à§à¦Ÿà§‹à¦°à¦Ÿà¦¿ à¦†à¦ªà¦¨à¦¾à¦° à¦¨à¦¿à§Ÿà¦¨à§à¦¤à§à¦°à¦¨à§‡ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add This Store In My Control', 0, 45),
(618, 619, 'à¦¸à§à¦Ÿà§‹à¦° à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Store Edit', 0, 45),
(619, 620, 'à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦¤à¦¥à§à¦¯ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Store Info', 0, 45),
(620, 621, 'à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦ à¦¿à¦•à¦¾à¦¨à¦¾', 'Store Address', 0, 45),
(621, 622, 'à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦«à§‹à¦¨ à¦¨à¦®à§à¦¬à¦°', 'Store Contact', 0, 45),
(622, 623, 'à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦‡à¦®à§‡à¦‡à¦²', 'Store Email', 0, 45),
(623, 624, 'à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦²à§‹à¦—à§‹ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Store Logo', 0, 45),
(624, 625, 'à¦•à¦®à§à¦ªà¦¾à¦¨à¦¿ à¦²à§‹à¦—à§‹ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Company Logo', 0, 45),
(625, 626, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦¤à¦¥à§à¦¯ à¦¦à¦¿à¦¨', 'Give Supplier Information', 0, 45),
(626, 627, 'à¦¸à§à¦¥à¦¾à§Ÿà§€ à¦ à¦¿à¦•à¦¾à¦¨à¦¾', 'Permanent Address', 0, 45),
(627, 628, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦¤à¦¥à§à¦¯', 'Supplier Information', 0, 45),
(628, 629, 'à¦¬à¦¾à¦° à¦•à§‡à¦¨à¦¾ à¦¹à§Ÿà§‡à¦›à§‡', 'Times Buy', 0, 45),
(629, 630, 'à¦Ÿà¦¾à¦•à¦¾à¦° à¦•à§à¦°à§Ÿ', 'Taka Buy', 0, 45),
(630, 631, 'à¦²à§‡à¦¨à¦¦à§‡à¦¨à§‡à¦° à¦¹à¦¿à¦¸à¦¾à¦¬', 'Transaction Information', 0, 45),
(631, 632, 'à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¬à¦•à§‡à§Ÿà¦¾ à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ', 'Complete Due Payment', 0, 45),
(632, 633, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦²à§‡à¦œà¦¾à¦° à¦¦à§‡à¦–à¦¤à§‡ à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Supplier To See Supplier Ledger', 0, 45),
(633, 634, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Supplier Transaction List', 0, 45),
(634, 635, 'à¦¬à¦¾à¦° à¦ªà¦£à§à¦¯ à¦•à§à¦°à§Ÿ', 'Times Product Buy', 0, 45),
(635, 636, 'à¦¸à¦°à¦¬à¦°à¦¾à¦¹à¦•à¦¾à¦°à§€à¦° à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Supplier Info', 0, 45),
(636, 637, 'à¦¨à¦¤à§à¦¨ à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦° à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New User', 0, 45),
(637, 638, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦° à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add User', 0, 45),
(638, 639, 'à¦‡à¦‰à¦œà¦¾à¦° à¦¨à§‡à¦‡à¦®', 'User Name', 0, 45),
(639, 640, 'à¦Ÿà¦¾à¦‡à¦Ÿà§‡à¦² à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Title', 0, 45),
(640, 641, 'à¦ªà§‚à¦°à§à¦£ à¦¨à¦¾à¦®', 'Full Name', 0, 45),
(641, 642, 'à¦œà¦¨à§à¦® à¦¤à¦¾à¦°à¦¿à¦–', 'Date of birth', 1, 45),
(642, 643, 'à¦¡à¦¿à¦¸à§à¦ªà§à¦²à§‡ à¦¨à§‡à¦‡à¦®', 'Display Name', 0, 45),
(643, 644, 'à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Mobile No', 0, 45),
(644, 645, ' à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° ', 'Other Contact No', 0, 45),
(645, 646, 'à¦°à¦•à§à¦¤à§‡à¦° à¦—à§à¦°à§‚à¦ª à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Blood Group', 0, 45),
(646, 647, 'à¦°à¦•à§à¦¤à§‡à¦° à¦—à§à¦°à§‚à¦ª', 'Blood Group', 0, 45),
(647, 648, 'à¦ªà¦¾à¦¸à¦“à§Ÿà¦¾à¦°à§à¦¡', 'Password', 0, 45),
(648, 649, 'à¦ªà¦¾à¦¸à¦“à§Ÿà¦¾à¦°à§à¦¡ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§à¦¨', 'Confirm Password', 0, 45),
(649, 650, 'à¦¬à§à¦¯à¦¾à¦•à§à¦¤à¦¿à¦° à¦¬à¦¿à¦¬à¦°à¦¨', 'Person Information', 0, 45),
(650, 651, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦°à§‡à¦° à¦§à¦°à¦£', 'User Type', 0, 45),
(651, 652, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦°à§‡à¦° à¦§à¦°à¦£ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select User Type', 0, 45),
(652, 653, 'à¦•à¦¿à¦›à§ à¦²à¦¿à¦–à§à¦¨', 'Write something', 0, 45),
(653, 654, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦°à§‡à¦° à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update User Information', 0, 45),
(654, 655, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦° à¦à¦° à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦¤à¦¥à§à¦¯', 'User Present Information', 0, 45),
(655, 656, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦° à¦à¦° à¦ªà¦¾à¦°à¦®à¦¿à¦¶à¦¨ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ à¦•à¦°à§à¦¨', 'Manage User Permissions', 0, 45),
(656, 657, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦° à¦à¦° à¦ªà¦¾à¦°à¦®à¦¿à¦¶à¦¨', 'User Permission', 0, 45),
(657, 658, 'à¦¸à¦•à¦² à¦ªà¦¾à¦°à¦®à¦¿à¦¶à¦¨', 'All Permissions', 0, 45),
(658, 659, 'à¦¸à¦•à¦² à¦ªà¦¾à¦°à¦®à¦¿à¦¶à¦¨à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Permission List', 0, 45),
(659, 660, 'à¦ªà¦¾à¦°à¦®à¦¿à¦¶à¦¨ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Permission', 0, 45),
(660, 661, 'à¦ªà¦¾à¦°à¦®à¦¿à¦¶à¦¨ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à§à¦¨', 'Assign Permission', 1, 45),
(661, 662, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦°à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'User List', 0, 45),
(662, 663, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦°', 'Users', 0, 45),
(663, 664, 'à¦¸à¦•à¦² à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦°à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'User List', 0, 45),
(664, 665, 'à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦°à§‡à¦° à¦¨à¦¾à¦®', 'User Name', 0, 45),
(665, 666, 'à¦¨à¦¤à§à¦¨ à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨à§‡à¦° à¦¤à¦¥à§à¦¯', 'New Variation Information', 0, 45),
(666, 667, 'à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨à§‡à¦° à¦¨à¦¾à¦®', 'Variation Name', 0, 45),
(667, 668, 'à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨à¦Ÿà¦¿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Variation', 0, 45),
(668, 669, 'à¦¨à¦¤à§à¦¨ à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨ à¦à¦° à¦Ÿà¦¾à¦‡à¦ª à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Variation Type', 0, 45),
(669, 670, 'à¦¨à¦¤à§à¦¨ à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨ à¦Ÿà¦¾à¦‡à¦ª', 'New Variation Type', 0, 45),
(670, 671, 'à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨à§‡à¦° à¦Ÿà¦¾à¦‡à¦ª à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Variation Type', 0, 45),
(671, 672, 'à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨à§‡à¦° à¦Ÿà¦¾à¦‡à¦ªà§‡à¦° à¦¨à¦¾à¦®', 'Variation Type Name', 0, 45),
(672, 673, 'à¦à¦Ÿà§à¦Ÿà¦¿à¦¬à¦¿à¦‰à¦Ÿ à¦¨à¦¾à¦®', 'Attribute Name', 0, 45),
(673, 674, 'à¦Ÿà¦¾à¦‡à¦ªà¦Ÿà¦¿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Type', 0, 45),
(674, 675, ' à¦ªà¦£à§à¦¯ à¦•à§à¦°à¦¯à¦¼', 'Product Purchase', 0, 45),
(675, 676, 'à¦®à¦¾à¦¸à¦¿à¦• à¦¬à¦¿à¦•à§à¦°à¦¯à¦¼ à¦—à§à¦°à¦¾à¦«', 'Monthly Sales Graph', 1, 45),
(676, 677, 'à¦¸à§€à¦®à¦¿à¦¤ à¦ªà¦£à§à¦¯', 'Limited Products', 1, 45),
(677, 678, 'à¦—à¦¤ à¦›à¦¯à¦¼ à¦¦à¦¿à¦¨à§‡à¦° à¦¬à¦¿à¦•à§à¦°à¦¯à¦¼ à¦¸à¦¾à¦°à¦¾à¦‚à¦¶', 'Last Six Days Sales Summary', 0, 45),
(678, 679, 'à¦¶à§‡à¦· à¦›à¦¯à¦¼ à¦¦à¦¿à¦¨ à¦ªà¦£à§à¦¯ à¦•à§‡à¦¨à¦¾à¦° à¦¸à¦¾à¦°à¦¸à¦‚à¦•à§à¦·à§‡à¦ª', 'Last Six Days Product Buying Summary', 0, 45),
(679, 680, 'à¦¸à§à¦Ÿà¦•à§‡ à¦®à§‹à¦Ÿ à¦†à¦›à§‡', 'Total Stock No', 0, 45),
(680, 681, 'à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Remove Variation', 0, 0),
(681, 682, 'à¦­à§à¦¯à¦¾à¦°à¦¿à§Ÿà§‡à¦¶à¦¨ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Remove Variation', 0, 45),
(682, 683, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨ à¦¸à¦®à§‚à¦¹', 'Quotations', 0, 45),
(683, 684, 'à¦¸à¦®à¦¸à§à¦¤ à¦•à§‹à¦Ÿà§‡à¦¶à¦¨', 'All Quotations', 0, 45),
(684, 685, 'à¦¨à¦¤à§à¦¨ à¦•à§‹à¦Ÿà§‡à¦¶à¦¨ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Quotation', 0, 45),
(685, 686, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨ à¦Ÿà§', 'Quotation To', 0, 45),
(686, 687, 'à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦¹à§Ÿà§‡à¦›à§‡', 'Sent', 0, 45),
(687, 688, 'à¦à¦–à¦¨à§‹ à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦¹à§Ÿà¦¨à¦¿', 'Not sent yet', 0, 45),
(688, 689, 'à¦à¦•à§à¦Ÿà¦¿à¦­', 'Active', 1, 45),
(689, 690, 'à¦‡à¦¨à§‡à¦•à§à¦Ÿà¦¿à¦­', 'Inactive', 1, 45),
(690, 691, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Quotation', 0, 45),
(691, 692, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Update Quotation', 0, 45),
(692, 693, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨ à¦ªà§à¦°à¦¿à¦¨à§à¦Ÿ à¦•à¦°à§à¦¨', 'Print Quotation', 0, 45),
(693, 694, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨ à¦ªà¦¾à¦ à¦¾à¦¨', 'Send Quotation', 0, 45),
(694, 695, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨ à¦¦à§‡à¦–à§à¦¨', 'View Quotation', 0, 45),
(695, 696, 'à¦®à§‹à¦Ÿ à¦ªà¦£à§à¦¯', 'Total Products', 0, 45),
(696, 697, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨à§‡à¦° à¦¸à¦¾à¦¬à¦œà§‡à¦•à§à¦Ÿ', 'Quotation Subject', 0, 45),
(697, 698, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨à§‡à¦° à¦¸à¦‚à¦¯à§à¦•à§à¦¤à¦¿', 'Quotation Attachment', 0, 45),
(698, 699, 'à¦¸à¦‚à¦¯à§à¦•à§à¦¤à¦¿', 'Attachment', 0, 45),
(699, 700, 'à¦•à§‹à¦Ÿà§‡à¦¶à¦¨à§‡à¦° à¦®à§‡à¦¸à§‡à¦œ', 'Quotation Message', 0, 45),
(700, 701, 'à¦®à§‡à¦‡à¦² à¦ªà¦¾à¦ à¦¾à¦¨', 'Send Mail', 0, 45),
(701, 702, 'PO à¦à¦¬à¦‚ Indent à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add PO & Indent Number', 0, 45),
(702, 703, 'PO à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¦à¦¿à¦¨', 'PO Number', 0, 45),
(703, 704, 'Indent à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¦à¦¿à¦¨', 'Indent Number', 0, 45),
(704, 705, 'à¦à¦‡ à¦ªà¦¨à§à¦¯à¦Ÿà¦¿ à¦¸à§à¦Ÿà¦•à§‡ à¦¨à§‡à¦‡à¥¤ à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦¬à¦¿à¦•à§à¦°à¦¿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'This product is not in your stock. Do you want to sell this?', 0, 45),
(705, 706, 'à¦ªà¦¾à¦¸à¦“à§Ÿà¦¾à¦°à§à¦¡ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦•à¦°à§à¦¨', 'Change Password', 0, 45),
(706, 707, 'à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦ªà¦¾à¦¸à¦“à§Ÿà¦¾à¦°à§à¦¡', 'Current Password', 0, 45),
(707, 708, 'à¦¨à¦¤à§à¦¨ à¦ªà¦¾à¦¸à¦“à§Ÿà¦¾à¦°à§à¦¡', 'New Password', 0, 45),
(708, 709, 'à¦¨à¦¤à§à¦¨ à¦ªà¦¾à¦¸à¦“à§Ÿà¦¾à¦°à§à¦¡ à¦†à¦¬à¦¾à¦° à¦¦à¦¿à¦¨', 'Confirm New Password', 0, 45),
(709, 710, 'à¦¨à§‹à¦Ÿ à¦²à¦¿à¦–à§à¦¨', 'Write Note', 1, 45),
(710, 711, 'à¦¨à§‹à¦Ÿ', 'Note', 0, 45),
(711, 712, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€', 'Employee', 0, 45),
(712, 713, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦¦à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Employee List', 0, 45),
(713, 714, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿', 'Salary', 0, 45),
(714, 715, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡ à¦²à¦¿à¦¸à§à¦Ÿ', 'Salary Grade Lists', 0, 45),
(715, 716, 'à¦°à¦¿à¦¸à¦¾à¦‡à¦•à§‡à¦² à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡ à¦²à¦¿à¦¸à§à¦Ÿ', 'Trash Salary Grade Lists', 0, 45),
(716, 717, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨', 'Generate Salary', 0, 45),
(717, 718, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦•à¦°à§à¦¤à¦¨', 'Deduction', 0, 45),
(718, 719, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦•à¦°à§à¦¤à¦¨ à¦§à¦°à¦£', 'Deduction Type', 1, 45),
(719, 720, 'à¦°à¦¿à¦¸à¦¾à¦‡à¦•à§‡à¦²', 'Trash Lists', 0, 45),
(720, 721, 'à¦­à¦¾à¦¤à¦¾', 'Allowance', 1, 45),
(721, 722, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à¦¿à¦¦à§‡à¦° à¦­à¦¾à¦¤à¦¾ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ à¦•à¦°à§à¦¨', 'Manage Allowances', 0, 45),
(722, 723, 'à¦­à¦¾à¦¤à¦¾à¦° à¦§à¦°à¦£', 'Allowance Type', 1, 45),
(723, 724, 'à¦›à§à¦Ÿà¦¿', 'Leave', 0, 45),
(724, 725, 'à¦•à§‹à¦Ÿà¦¾ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ', 'Leave Quota Management', 0, 45),
(725, 726, 'à¦•à§‹à¦Ÿà¦¾à¦° à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿', 'Leave Categories', 0, 45),
(726, 727, 'à¦›à§à¦Ÿà¦¿à¦° à¦•à¦¾à¦°à¦¨', 'Leave Reasons', 0, 45),
(727, 728, 'à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨', 'Holidays', 0, 45),
(728, 729, 'à¦¶à¦¿à¦«à¦Ÿ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ', 'Manage Shifts', 0, 45),
(729, 730, 'à¦¶à¦¿à¦«à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Assign Shifts', 1, 45),
(730, 731, 'à¦†à¦®à¦¾à¦° à¦›à§à¦Ÿà¦¿à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'My Leave', 0, 45),
(731, 732, 'à¦…à¦«à¦¿à¦¶à¦¿à§Ÿà¦¾à¦² à¦›à§à¦Ÿà¦¿à¦¸à¦®à§‚à¦¹', 'Public holidays', 0, 45),
(732, 733, 'à¦­à¦¾à¦¤à¦¾à¦¸à¦®à§‚à¦¹ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ à¦•à¦°à§à¦¨', 'Manage Allowance', 0, 45),
(733, 734, 'à¦›à§à¦Ÿà¦¿à¦° à¦°à¦¿à¦•à§‹à§Ÿà§‡à¦¸à§à¦Ÿ', 'Manage Leave Requests ', 0, 45),
(734, 735, 'à¦¹à¦²à¦¿à¦¡à§‡/à¦¶à¦¿à¦«à¦Ÿ', 'Holiday/Shift', 0, 45),
(735, 736, 'à¦…à¦¨à§à¦¸à¦¨à§à¦§à¦¾à¦¨à¦•à§ƒà¦¤ à¦«à¦²à¦¾à¦«à¦²', 'Search by', 0, 45),
(736, 737, 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ', 'Department', 0, 45),
(737, 738, 'à¦‰à¦ªà¦¾à¦§à¦¿', 'Designation', 0, 45),
(738, 739, 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦¨à¦¾à¦®', 'Department Name', 0, 45),
(739, 740, 'à¦…à¦¨à§à¦®à§‹à¦¦à¦¨à¦•à§ƒà¦¤ à¦¨à§Ÿ !! à¦à¦‡ à¦…à¦ªà¦¾à¦°à§‡à¦¶à¦¨à¦Ÿà¦¿ à¦†à¦ªà¦¨à¦¿ à¦šà¦¾à¦²à¦¾à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‡à¦¨ à¦¨à¦¾ !!', 'Access denied! Sorry, you don\'t have permission to run that operation', 0, 45),
(740, 741, 'à¦¨à¦¤à§à¦¨ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Employee', 0, 45),
(741, 742, 'à¦²à¦—à¦¿à¦¨ à¦…à¦¨à§à¦®à§‹à¦¦à¦¨ à¦¦à¦¿à¦¨', 'Give login access', 0, 45),
(742, 743, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦à¦•à¦Ÿà¦¿ à¦à¦¡à¦®à¦¿à¦¨ à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¬à¦¾à¦¨à¦¾à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'Are you sure to make an admin profile for this employee ?', 0, 45),
(743, 744, 'à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨', 'Make Profile', 0, 45),
(744, 745, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦²à¦¿à¦¸à§à¦Ÿ à¦ªà§à¦°à¦¿à¦¨à§à¦Ÿ à¦•à¦°à§à¦¨', 'Print Employee Lists', 0, 45),
(745, 746, 'à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ', '--select--', 1, 45),
(746, 747, 'à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦²à§‡à¦° à¦¤à¦¥à§à¦¯', 'Profile information', 0, 45),
(747, 748, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦¤à¦¥à§à¦¯', 'Employee Information', 0, 45),
(748, 749, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿à¦° à¦¤à¦¥à§à¦¯', 'Salary Information', 0, 45),
(749, 750, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦•à¦°à§à¦¤à¦¨à§‡à¦° à¦¨à¦¿à§Ÿà¦®', 'Deduction Information', 0, 45),
(750, 751, 'à¦­à¦¾à¦¤à¦¾à¦¦à¦¿à¦° à¦¨à¦¿à§Ÿà¦®', 'Allowance Information', 0, 45),
(751, 752, 'à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦¤à¦¥à§à¦¯à¦¾à¦¬à¦²à¦¿', 'Others Information', 0, 45),
(752, 753, 'à¦œà¦¨à¦¾à¦¬', 'Mr', 0, 45),
(753, 754, 'à¦œà¦¨à¦¾à¦¬à¦¾', 'Mrs', 0, 45),
(754, 755, 'à¦•à¦°à§à¦®à¦¸à§à¦¥à¦²à§‡ à¦¯à§‹à¦—à¦¦à¦¾à¦¨à§‡à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Joining Date', 0, 45),
(755, 756, 'à¦ªà§à¦°à¦¾à¦¥à¦®à¦¿à¦• à¦‡à¦®à§‡à¦‡à¦²', 'Primary Email', 0, 45),
(756, 757, 'à¦ªà§à¦°à¦¾à¦¥à¦®à¦¿à¦• à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Primary Mobile Number', 0, 45),
(757, 758, 'à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡', 'About', 0, 45),
(758, 759, 'à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦²à§‡à¦° à¦œà¦¨à§à¦¯ à¦›à¦¬à¦¿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add picture for profile', 0, 45),
(759, 760, 'à¦œà¦¾à¦¤à§€à§Ÿà¦¤à¦¾', 'Nationality', 0, 45),
(760, 761, 'à¦¬à¦¿à¦•à¦²à§à¦ª à¦‡à¦®à§‡à¦‡à¦²', 'Alternative Email', 0, 45),
(761, 762, 'à¦¬à¦¿à¦•à¦²à§à¦ª à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°', 'Alternative Mobile Number', 0, 45),
(762, 763, 'à¦“à§Ÿà§‡à¦¬à¦¸à¦¾à¦‡à¦Ÿ', 'Website', 0, 45),
(763, 764, 'à¦ªà§à¦°à¦¥à¦®à§‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦¤à¦¥à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Please add employee information first', 0, 45),
(764, 765, 'à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ à¦›à¦¬à¦¿', 'Previous Image', 0, 45),
(765, 766, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿à¦° à¦¤à¦¥à§à¦¯ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Salary Information for this employee', 0, 45),
(766, 767, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡', 'Salary Grade', 1, 45),
(767, 768, 'à¦¬à§‡à¦¸à¦¿à¦• à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿', 'Basic Salary', 0, 45),
(768, 769, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦Ÿà¦¾à¦‡à¦ª', 'Salary Type', 0, 45),
(769, 770, 'à¦•à¦¾à¦°à§à¦¯à¦•à¦° à¦¦à¦¿à¦¨', 'Effective Date', 0, 45),
(770, 771, 'à¦¶à§‡à¦· à¦¦à¦¿à¦¨', 'End Date', 1, 45),
(771, 772, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à§€à¦° à¦¤à¦¥à§à¦¯ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Salary Information for this employee', 0, 45),
(772, 773, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦¸à¦®à¦¸à§à¦¤ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à§€à¦° à¦¤à¦¥à§à¦¯à¦¾à¦¬à¦²à¦¿', 'All Salary information of this employee', 0, 45),
(773, 774, 'à¦¨à¦¤à§à¦¨ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add new salary', 0, 45),
(774, 775, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¤à¦¥à§à¦¯à¦¾à¦¬à¦²à¦¿', 'Employee Bank Information', 0, 45),
(775, 776, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿà§‡à¦¨à§à¦Ÿ à¦¨à¦¾à¦®', 'Bank account name', 0, 45),
(776, 777, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¤à¦¥à§à¦¯à¦¾à¦¬à¦²à¦¿ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Edit bank information for this employee', 0, 45),
(777, 778, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¤à¦¥à§à¦¯à¦¾à¦¬à¦²à¦¿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add bank information for this employee', 0, 45),
(778, 779, 'à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¤à¦¥à§à¦¯ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'Are you sure to delete the bank information?', 0, 45),
(779, 780, 'à¦¤à¦¥à§à¦¯ à¦®à§à¦›à§à¦¨', 'Delete Info', 0, 45),
(780, 781, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à§€ à¦•à¦°à§à¦¤à¦¨à§‡à¦° à¦¨à¦¿à§Ÿà¦® à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add deduction information for this employee', 0, 45),
(781, 782, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦•à¦°à§à¦¤à¦¨à§‡à¦° à¦¨à¦¾à¦®', 'Deduction Title', 0, 45),
(782, 783, 'à¦•à¦°à§à¦¤à¦¨à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Deduction Amount', 0, 45),
(783, 784, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à§€ à¦•à¦°à§à¦¤à¦¨à§‡à¦° à¦¨à¦¿à§Ÿà¦® à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Edit deduction information for this employee', 0, 45),
(784, 785, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à§€ à¦•à¦°à§à¦¤à¦¨à§‡à¦° à¦¨à¦¿à§Ÿà¦®à¦¸à¦®à§‚à¦¹', 'All deduction information of this employee', 0, 45),
(785, 786, 'à¦¨à¦¤à§à¦¨ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à§€ à¦•à¦°à§à¦¤à¦¨à§‡à¦° à¦¨à¦¿à§Ÿà¦® à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Deduction', 0, 45),
(786, 787, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦­à¦¾à¦¤à¦¾à¦° à¦¨à¦¿à§Ÿà¦® à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add allowance information for this employee', 1, 45),
(787, 788, 'à¦­à¦¾à¦¤à¦¾à¦° à¦¨à¦¾à¦®', 'Allowance Title', 0, 45),
(788, 789, 'à¦­à¦¾à¦¤à¦¾à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Allowance Amount', 0, 45),
(789, 790, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦­à¦¾à¦¤à¦¾à¦° à¦¨à¦¿à§Ÿà¦® à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Edit allowance information for this employee', 0, 45),
(790, 791, 'à¦¨à¦¤à§à¦¨ à¦­à¦¾à¦¤à¦¾à¦° à¦¨à¦¿à§Ÿà¦® à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Allowance', 0, 45),
(791, 792, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦­à¦¾à¦¤à¦¾à¦° à¦¨à¦¿à§Ÿà¦®à¦¸à¦®à§‚à¦¹', 'All allowance information for this employee', 0, 45),
(792, 793, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add document for this employee', 0, 45),
(793, 794, 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦¨à¦¾à¦®', 'Document name', 0, 45),
(794, 795, 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦§à¦°à¦£', 'Document type', 0, 45),
(795, 796, 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦¸à¦‚à¦¯à§à¦•à§à¦¤à¦¿', 'Document attachment', 0, 45),
(796, 797, 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦‡à¦¸à§à¦¯à§à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Document Issue Date ', 0, 45),
(797, 798, 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦®à§‡à§Ÿà¦¾à¦¦à§‹à¦¤à§à¦¤à§€à¦°à§à¦£à§‡à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Document Expiry Date', 0, 45),
(798, 799, 'à¦à¦‡ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿà¦¸à¦®à§‚à¦¹', 'All documents of this employee', 0, 45),
(799, 800, 'à¦¨à¦¤à§à¦¨ à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add new document', 0, 45),
(800, 801, 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦¦à§‡à¦–à§à¦¨', 'View Document', 0, 45),
(801, 802, 'à¦¦à§‡à¦–à§à¦¨', 'View', 0, 45),
(802, 803, 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit this document', 0, 45),
(803, 804, 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨?', 'Are you sure to delete the document?', 0, 45),
(804, 805, 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Delete Document', 0, 45),
(805, 806, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦•à¦¾à¦œà§‡à¦° à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸', 'Employee Job History', 0, 45),
(806, 807, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦¨à¦¤à§à¦¨ à¦•à¦¾à¦œà§‡à¦° à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add employee job history', 0, 45),
(807, 808, 'à¦•à§‹à¦®à§à¦ªà¦¾à¦¨à¦¿à¦° à¦¨à¦¾à¦®', 'Company Name', 0, 45),
(808, 809, 'à¦•à¦¾à¦œà§‡à¦° à¦ªà¦¦à¦®à¦°à§à¦¯à¦¾à¦¦à¦¾', 'Position of the job', 0, 45),
(809, 810, 'à¦•à¦¾à¦œà§‡à¦° à¦¸à§à¦¥à¦¾à§Ÿà¦¿à¦¤à§à¦¬à¦•à¦¾à¦²', 'Job duration', 0, 45),
(810, 811, 'à¦•à¦¾à¦œ à¦¶à§à¦°à§à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Job start date', 0, 45),
(811, 812, 'à¦•à¦¾à¦œ à¦¶à§‡à¦·à§‡à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Job end date', 0, 45),
(812, 813, 'à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦•à¦¾à¦œà§‡à¦° à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨?', 'Are you sure to delete the job history?', 0, 45),
(813, 814, 'à¦ªà§‚à¦°à§à¦¬à§‡à¦° à¦«à¦¾à¦‡à¦²à¦¸à¦®à§‚à¦¹', 'Previous files', 0, 45),
(814, 815, 'à¦¬à¦›à¦°', 'years', 0, 45),
(815, 816, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦•à¦¾à¦œà§‡à¦° à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit employee history', 0, 45),
(816, 817, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'Salary Report', 0, 45),
(817, 818, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'Employee Wise Salary Report', 0, 45),
(818, 819, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸', 'Salary Settings', 0, 45),
(819, 820, 'à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Attendance', 0, 45),
(820, 821, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦Ÿà¦¾à¦‡à¦ª à¦•à¦°à§à¦¨', 'Type an employee', 0, 45),
(821, 822, 'à¦¶à§à¦°à§à¦° à¦¸à¦®à§Ÿ', 'Check In Time', 1, 45),
(822, 823, 'à¦¶à§‡à¦·à§‡à¦° à¦¸à¦®à§Ÿ', 'Check Out Time', 0, 45),
(823, 824, 'à¦¸à¦®à§Ÿ', 'Time', 0, 45),
(824, 825, 'à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿à¦° à¦§à¦°à¦£', 'Attendance Type', 0, 45),
(825, 826, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦›à§à¦Ÿà¦¿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Leave For Employee', 0, 45),
(826, 827, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'Employee Attendance Report', 0, 45),
(827, 828, 'à¦¶à§à¦°à§à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Start Date', 0, 45),
(828, 829, 'à¦¶à§‡à¦· à¦¤à¦¾à¦°à¦¿à¦–', 'End Date', 0, 45),
(829, 830, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'Employee Wise Report ', 0, 45),
(830, 831, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select Employee', 0, 45),
(831, 832, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦¨à¦¾à¦® à¦²à¦¿à¦–à§à¦¨', 'Type an employee name to search', 0, 45),
(832, 833, 'à¦¨à¦‚', 'No', 0, 45),
(833, 834, 'à¦›à§à¦Ÿà¦¿à¦° à¦•à§‹à¦Ÿà¦¾ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', ' Leave Quota Lists', 0, 45),
(834, 835, 'à¦¨à¦¤à§à¦¨ à¦•à§‹à¦Ÿà¦¾ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add new leave quota', 0, 45),
(835, 836, 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦…à¦¨à§à¦¯à¦¾à§Ÿà§€ à¦›à§à¦Ÿà¦¿à¦° à¦•à§‹à¦Ÿà¦¾', ' Department wise leave quota', 0, 45),
(836, 837, 'à¦ªà¦¦à¦¬à§€ à¦…à¦¨à§à¦¯à¦¾à§Ÿà§€ à¦›à§à¦Ÿà¦¿à¦° à¦•à§‹à¦Ÿà¦¾', 'Designation wise leave quota', 0, 45),
(837, 838, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦›à§à¦Ÿà¦¿à¦° à¦•à§‹à¦Ÿà¦¾', 'Employee wise leave quota', 0, 45),
(838, 839, 'à¦›à§à¦Ÿà¦¿à¦° à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿', 'Leave Category', 1, 45),
(839, 840, 'à¦›à§à¦Ÿà¦¿à¦° à¦¸à§à¦¥à¦¾à§Ÿà¦¿à¦¤à§à¦¬à¦•à¦¾à¦²', 'Leave Duration', 0, 45),
(840, 841, 'à¦¦à¦¿à¦¨ à¦¸à¦‚à¦–à§à¦¯à¦¾', 'No of days', 0, 45),
(841, 842, 'à¦›à§à¦Ÿà¦¿à¦° à¦•à§‹à¦Ÿà¦¾ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit leave quota', 0, 45),
(842, 843, 'à¦›à§à¦Ÿà¦¿à¦° à¦•à§‹à¦Ÿà¦¾ à¦¶à§à¦°à§à¦° à¦¤à¦¾à¦°à¦¿à¦–', 'Leave quota effective date', 0, 45),
(843, 844, 'à¦›à§à¦Ÿà¦¿à¦° à¦•à§‹à¦Ÿà¦¾à¦° à¦¶à§‡à¦· à¦¤à¦¾à¦°à¦¿à¦–', 'Leave quota end date', 0, 45),
(844, 845, 'à¦›à§à¦Ÿà¦¿à¦° à¦•à§‹à¦Ÿà¦¾à¦° à¦¡à¦¾à¦Ÿà¦¾ à¦®à§à¦›à§‡ à¦«à§‡à¦²à§à¦¨', 'Leave quota information will be deleted', 0, 45),
(845, 846, 'à¦›à§à¦Ÿà¦¿à¦° à¦•à§‹à¦Ÿà¦¾ à¦•à¦¾à¦° à¦œà¦¨à§à¦¯?', 'For whom this leave quota?', 0, 45),
(846, 847, 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Department', 0, 45),
(847, 848, 'à¦¨à¦¤à§à¦¨ à¦ªà¦¦à¦¬à§€ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Designation', 0, 45),
(848, 849, 'Todo à¦²à¦¿à¦¸à§à¦Ÿ à¦¸à¦®à§‚à¦¹', 'Manage My Todo List', 1, 45),
(849, 850, 'à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¾ à¦²à¦¿à¦¸à§à¦Ÿ', 'Trash Todo List', 0, 45),
(850, 851, 'à¦ªà§à¦°à¦¾à§Ÿà§‹à¦°à¦¿à¦Ÿà¦¿ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ', 'Manage Priorities', 0, 45),
(851, 852, 'à¦§à¦°à¦¨ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œ', 'Manage Types', 0, 45),
(852, 853, 'à¦­à¦¿à¦œà¦¿à¦Ÿ à¦¸à¦®à§‚à¦¹', 'Visit Lists', 0, 45),
(853, 854, 'à¦¨à¦¤à§à¦¨ à¦­à¦¿à¦œà¦¿à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add New Visit', 0, 45),
(854, 855, 'à¦†à¦ªà¦¡à§‡à¦Ÿ à¦­à¦¿à¦œà¦¿à¦Ÿ à¦¸à¦®à§‚à¦¹', 'Visit Update Lists', 0, 45),
(855, 856, 'à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¾ à¦­à¦¿à¦œà¦¿à¦Ÿ à¦²à¦¿à¦¸à§à¦Ÿ', 'Trash Visits Lists', 1, 45),
(857, 857, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨', 'Project Requisition', 1, 45),
(858, 858, 'à¦¨à¦¤à§à¦¨ à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨', 'Add New Project Requisition', 0, 45),
(859, 859, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Project Requisition Lists', 0, 45),
(860, 860, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨ à¦Ÿà¦¾à¦‡à¦Ÿà§‡à¦²', 'Project Requisition Title', 0, 45),
(861, 861, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select A Project', 0, 45),
(862, 862, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿà§‡à¦° à¦§à¦¾à¦ª à¦¸à¦®à§‚à¦¹', 'Select Project Stages', 0, 45),
(863, 863, 'à¦†à¦‡à¦Ÿà§‡à¦® à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add Item', 1, 45),
(864, 864, 'à¦†à¦‡à¦Ÿà§‡à¦® à¦¨à¦¾à¦®', 'Item Name', 0, 45),
(865, 865, 'à¦ªà¦°à¦¿à¦®à¦¾à¦£à§‡à¦° à¦§à¦°à¦£', 'Quantity Type', 0, 45),
(866, 866, 'à¦à¦•à¦• à¦¦à¦¾à¦®', 'Unit Price', 0, 45),
(867, 867, 'à¦­à§à¦¯à¦¾à¦Ÿ', 'Vat', 0, 45),
(868, 868, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨ à¦‡à¦¡à¦¿à¦Ÿ', 'Edit Project Requisition', 0, 45),
(869, 869, 'à¦†à¦‡à¦Ÿà§‡à¦® à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Items', 0, 45),
(870, 870, 'à¦¡à§à¦°à¦¾à¦«à¦Ÿ à¦•à¦°à§à¦¨', 'Draft', 0, 45),
(871, 871, 'à¦ªà¦¾à¦¬à¦²à¦¿à¦¶ à¦•à¦°à§à¦¨', 'Publish', 0, 45),
(872, 872, 'à¦†à¦‡à¦Ÿà§‡à¦® à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Delete Item', 0, 45),
(873, 873, 'à¦†à¦‡à¦Ÿà§‡à¦®à¦Ÿà¦¿ à¦²à¦¿à¦¸à§à¦Ÿ à¦¥à§‡à¦•à§‡ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨', ' Are you sure to delete the item from the list ?', 0, 45),
(874, 874, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨ à¦¦à§‡à¦–à§à¦¨', 'View Project Requisition', 0, 45),
(875, 875, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ', 'Project', 0, 45),
(876, 876, 'à¦¸à¦®à¦¸à§à¦¤ à¦†à¦‡à¦Ÿà§‡à¦®à¦¸à¦®à§‚à¦¹', 'All Items', 0, 45),
(877, 877, 'à¦à¦ªà§à¦°à§à¦­ à¦•à¦°à§à¦¨', 'Approve Now', 0, 45),
(878, 878, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨ à¦ªà¦¾à¦ à¦¾à¦¨', 'Send Project Requisition', 0, 45),
(879, 879, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨ à¦Ÿà§', 'Project Requisition To', 0, 45),
(880, 880, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨ à¦¬à¦¿à¦·à§Ÿ', 'Project Requisition Subject', 0, 45),
(881, 881, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨ à¦¸à¦‚à¦¯à§à¦•à§à¦¤à¦¿à¦¸à¦®à§‚à¦¹', 'Project Requisition Attachments', 0, 45),
(882, 882, 'à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦°à¦¿à¦•à§‹à¦‡à¦œà¦¿à¦¶à¦¨ à¦®à§‡à¦¸à§‡à¦œ', 'Project Requisition Message', 0, 45),
(883, 883, 'à¦®à§‹à¦Ÿ à¦†à¦‡à¦Ÿà§‡à¦®', 'Total Items', 0, 45),
(884, 884, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦¤à§ˆà¦°à¦¿ à¦¹à§Ÿà§‡à¦›à§‡', 'Salary generated from', 0, 45),
(885, 885, 'à¦®à§‹à¦Ÿ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿', 'Total Salary', 0, 45),
(886, 886, 'à¦¸à¦°à§à¦¬à¦¶à§‡à¦· à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨?', ' Are you sure to generate final salary?', 0, 45),
(887, 887, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦¤à§ˆà¦°à¦¿ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§à¦¨', 'Confirm & Generate Salary', 0, 45),
(888, 888, 'à¦¨à¦¤à§à¦¨ à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add new salary grade', 0, 45),
(889, 889, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡ à¦¨à¦¾à¦®', 'Salary Grade Name', 0, 45),
(890, 890, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡ à¦¸à¦°à§à¦¬à¦¨à¦¿à¦®à§à¦¨ à¦°à§‡à¦žà§à¦œ', 'Salary Grade Minimum Range', 0, 45),
(891, 891, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡ à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦°à§‡à¦žà§à¦œ', 'Salary Grade Maximum Range', 0, 45),
(892, 892, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡à¦Ÿà¦¿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Are you sure to delete this Salary Grade', 0, 45),
(893, 893, 'à¦¹à§à¦¯à¦¾, à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§à¦¨', 'Yes! Confirm', 0, 45),
(894, 894, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡ à¦²à¦¿à¦¸à§à¦Ÿà¦Ÿà¦¿ à¦Ÿà§à¦°à§à¦¯à¦¾à¦¶ à¦²à¦¿à¦¸à§à¦Ÿ à¦¥à§‡à¦•à§‡ à¦à¦•à§à¦Ÿà¦¿à¦­ à¦•à¦°à§à¦¨', 'Are you sure to move this from trash salary grade list to active?', 0, 45),
(895, 895, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦—à§à¦°à§‡à¦¡ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Salary Grade', 0, 45),
(896, 896, 'à¦²à¦¾à¦žà§à¦šà§‡à¦° à¦¯à§‹à¦—à§à¦¯ à¦¸à¦®à¦¯à¦¼ (à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡)', 'Lunch Bearable Time (In Minute)', 0, 45),
(897, 897, 'à¦¦à§‡à¦°à§€ à¦¹à¦¬à¦¾à¦° à¦¯à§‹à¦—à§à¦¯ à¦¸à¦®à§Ÿ (à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡)', 'Late Bearable Time  (In Minutes)', 0, 45),
(898, 898, 'à¦­à¦¾à¦¤à¦¾ à¦ªà§à¦°à¦¾à¦ªà§à¦¯à¦¤à¦¾à¦° à¦…à¦¤à¦¿à¦°à¦¿à¦•à§à¦¤ à¦¸à¦®à§Ÿ (à¦®à¦¿à¦¨à¦¿à¦Ÿ à¦ªà¦°)', 'Allowance Applicable After Time (In Minutes)', 0, 45),
(899, 899, 'à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿà§‡à¦° à¦¨à¦¾à¦®', 'Report Name', 1, 45),
(900, 900, 'à¦¤à§ˆà¦°à¦¿à¦° à¦¸à¦®à§Ÿ', 'Generated Date Range', 0, 45),
(901, 901, 'à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ à¦¦à§‡à¦–à§à¦¨', 'View Report', 0, 45),
(902, 902, 'à¦¤à§ˆà¦°à¦¿ à¦¹à§Ÿà§‡à¦›à§‡', 'Generated at', 0, 45),
(903, 903, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦¦à§‡à¦–à§à¦¨', 'View Salary', 0, 45),
(904, 904, 'à¦¬à¦°à§à¦£à¦¨à¦¾', 'Description', 0, 45),
(905, 905, 'à¦†à§Ÿ', 'Earning', 0, 45),
(906, 906, 'à¦®à§‹à¦Ÿ à¦ªà¦°à¦¿à¦¶à§‹à¦§', 'Net Pay', 0, 45),
(907, 907, 'à¦®à§‹à¦Ÿ à¦•à¦°à§à¦¤à¦¨', 'Total Deduction', 0, 45),
(908, 908, 'à¦¨à¦¤à§à¦¨ à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨', 'Add new holiday', 0, 45),
(909, 909, 'à¦à¦• à¦¬à¦›à¦°à§‡à¦° à¦œà¦¨à§à¦¯ à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨', 'Auto generate holiday for year', 0, 45),
(910, 910, 'à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨à§‡à¦° à¦¨à¦¾à¦®', 'Holiday Name', 0, 45),
(911, 911, 'à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨à§‡à¦° à¦§à¦°à¦£', 'Holiday Type', 0, 45),
(912, 912, 'à¦¦à¦¿à¦¨ à¦¸à¦‚à¦–à§à¦¯à¦¾', 'Number of days', 0, 45),
(913, 913, 'à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ ?', 'Are you sure to delete this holiday ?', 0, 45),
(914, 914, 'à¦¹à§à¦¯à¦¾, à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à§à¦¨', ' Ok, Delete', 0, 45),
(915, 915, 'à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit holiday', 0, 45),
(916, 916, 'à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨à§‡à¦° à¦¨à¦¾à¦®', 'Holiday Title', 0, 45),
(917, 917, 'à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨à§‡à¦° à¦¸à§à¦Ÿà§à¦¯à¦¾à¦Ÿà¦¾à¦¸', 'Holiday Status', 0, 45),
(918, 918, 'à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨', 'Holiday', 0, 45),
(919, 919, 'à¦•à§‹à¦¨ à¦¬à¦¾à¦°à¦—à§à¦²à§‹ à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Please select which days are holiday?', 0, 45),
(920, 920, 'à¦¬à¦›à¦° à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨', 'Select a year', 0, 45),
(921, 921, 'à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨', 'Generate holidays', 0, 45),
(922, 922, 'à¦¶à¦¿à¦«à¦Ÿ à¦²à¦¿à¦¸à§à¦Ÿ à¦¸à¦®à§‚à¦¹', 'Assigned Shift List', 0, 45),
(923, 923, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦¶à¦¿à¦«à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'See employee wise shift list', 0, 45),
(924, 924, 'à¦ªà¦¦à¦¬à§€ à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦¶à¦¿à¦«à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'See designation wise shift list', 0, 45),
(925, 925, 'à¦¶à¦¿à¦«à¦Ÿ', 'Shift For', 0, 45),
(926, 926, 'à¦¶à¦¿à¦«à¦Ÿà¦¸à¦®à§‚à¦¹', 'Shifts', 0, 45),
(927, 927, 'à¦¶à¦¿à¦«à¦Ÿà§‡à¦° à¦¤à¦¥à§à¦¯à¦¸à¦®à§‚à¦¹ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit shift information for', 0, 45),
(928, 928, 'à¦¶à¦¿à¦«à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Assign Shift', 0, 45),
(929, 929, 'à¦¨à¦¤à§à¦¨ à¦¶à¦¿à¦«à¦Ÿ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'Add new shift', 0, 45),
(930, 930, 'à¦¶à¦¿à¦«à¦Ÿà§‡à¦° à¦¨à¦¾à¦®', 'Shift Name', 0, 45),
(931, 932, 'à¦²à¦¾à¦žà§à¦šà§‡à¦° à¦œà¦¨à§à¦¯ à¦¬à§‡à¦° à¦¹à¦¬à¦¾à¦° à¦¸à¦®à§Ÿ', 'Lunch Out Time', 0, 45),
(932, 933, 'à¦²à¦¾à¦žà§à¦š à¦¶à§‡à¦· à¦¹à¦¬à¦¾à¦° à¦¸à¦®à§Ÿ', 'Lunch In Time', 0, 45),
(933, 934, 'à¦¶à¦¿à¦«à¦Ÿ à¦¸à§à¦Ÿà§à¦¯à¦¾à¦Ÿà¦¾à¦¸', 'Shift Status', 0, 45),
(934, 935, 'à¦¶à¦¿à¦«à¦Ÿ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Shift', 0, 45),
(935, 936, 'à¦›à§à¦Ÿà¦¿à¦° à¦°à¦¿à¦•à§‹à§Ÿà§‡à¦¸à§à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Leave Request List', 0, 45),
(936, 937, 'à¦›à§à¦Ÿà¦¿à¦° à¦°à¦¿à¦•à§‹à§Ÿà§‡à¦¸à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦Ÿà§‡à¦²', 'Leave Request Title', 0, 45),
(937, 938, 'à¦•à¦¾à¦°à¦¨à§‡à¦° à¦§à¦°à¦£', 'Reason Type', 0, 45),
(938, 939, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦° à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤', 'Employee Details', 0, 45),
(939, 940, 'à¦à¦ªà§à¦°à§à¦­ à¦•à¦°à§à¦¨ à¦à¦¬à¦‚ à¦«à¦¿à¦¡à¦¬à§à¦¯à¦¾à¦• à¦¦à¦¿à¦¨', 'Approve / Give feedback', 0, 45),
(940, 941, 'à¦à¦ªà§à¦°à§à¦­ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨?', 'Do you want to approve?', 0, 45),
(941, 942, 'à¦†à¦ªà¦¨à¦¾à¦° à¦«à¦¿à¦¡à¦¬à§à¦¯à¦¾à¦• à¦¦à¦¿à¦¨', 'Give your feedback', 0, 45),
(942, 943, 'à¦ªà¦¦à¦¬à§€à¦¸à¦®à§‚à¦¹', 'Designation List', 0, 45),
(943, 944, 'à¦à¦•à§à¦Ÿà¦¿à¦­ à¦²à¦¿à¦¸à§à¦Ÿ', 'Active List', 1, 45),
(944, 945, 'à¦ªà¦¦à¦¬à§€à¦° à¦¨à¦¾à¦®', 'Designation Name', 0, 45),
(945, 946, 'à¦ªà¦¦à¦¬à§€ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨?', 'Are you sure to delete designation?', 0, 45),
(946, 947, 'à¦°à¦¿à¦¸à¦¾à¦‡à¦•à§‡à¦² à¦•à¦°à§à¦¨', 'Recycle', 0, 45),
(947, 948, 'à¦ªà¦¦à¦¬à§€ à¦¸à¦•à§à¦°à¦¿à§Ÿ à¦•à¦°à§à¦¨ ', 'Designation will be activated !!', 0, 45),
(948, 949, 'à¦ªà¦¦à¦¬à§€ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Designation', 0, 45),
(949, 950, 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Department List', 0, 45),
(950, 951, 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨?', 'Are you sure to delete department?', 0, 45),
(951, 952, 'à¦¤à¦¥à§à¦¯ à¦ªà§à¦£à¦°à¦¾à§Ÿ à¦¸à¦•à§à¦°à¦¿à§Ÿ à¦¹à¦¬à§‡ !!', 'information will be activated again !!', 0, 45),
(952, 953, 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦‡à¦¡à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Edit Department', 0, 45),
(953, 954, 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦°à¦¿à¦®à¦¾à¦°à§à¦•à¦¸', 'Department Remarks', 0, 45),
(954, 955, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'Choose An Employee', 0, 45),
(955, 956, 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'Choose a department', 0, 45),
(956, 957, 'à¦ªà¦¦à¦¬à§€ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'Choose a designation', 0, 45),
(957, 958, 'à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿', 'Attendance', 0, 45),
(958, 959, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦•à¦°à§à¦¤à¦¨à§‡à¦° à¦²à¦¿à¦¸à§à¦Ÿ', 'All Deduction List ', 0, 45),
(959, 960, 'à¦­à¦¾à¦¤à¦¾à¦° à¦§à¦°à¦£à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Allowance Type List ', 0, 45),
(960, 961, 'à¦­à¦¾à¦¤à¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'All Allowance List ', 0, 45),
(961, 962, 'à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦•à¦°à§à¦¤à¦¨ à¦§à¦°à¦£à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Deduction Type List ', 0, 45),
(962, 963, 'à¦šà¦¾à¦²à¦¾à¦¨', 'Challan', 0, 45),
(963, 964, 'à¦¨à¦¤à§à¦¨ à¦šà¦¾à¦²à¦¾à¦¨', 'New Challan', 0, 45),
(964, 965, 'à¦šà¦¾à¦²à¦¾à¦¨ à¦²à¦¿à¦¸à§à¦Ÿ', 'Challan List', 0, 45),
(965, 966, 'à¦‡à¦‰à¦œà¦¾à¦°à§‡à¦° à¦¸à¦®à¦¸à§à¦¤ à¦ªà¦¾à¦°à¦®à¦¿à¦¶à¦¨ à¦¡à¦¿à¦²à§‡à¦Ÿ à¦¹à§Ÿà§‡ à¦¯à¦¾à¦¬à§‡ !!', 'User all permissions will be deleted !!', 0, 45),
(966, 967, 'à¦‡à¦‰à¦œà¦¾à¦° à¦¡à¦¿à¦²à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨?', 'Are you sure to delete user ?', 0, 45),
(967, 968, 'à¦‡à¦‰à¦œà¦¾à¦° à¦à¦•à§à¦Ÿà¦¿à¦­ à¦•à¦°à§à¦¨', 'Back User data ?', 0, 45),
(968, 1000, 'à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¨à¦‚', 'Employee No.', 0, 45),
(969, 2003, 'à¦à¦‡ à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦œà¦¨à§à¦¯ à¦¬à¦•à§‡à§Ÿà¦¾ à¦Ÿà¦¾à¦•à¦¾ à¦—à§à¦°à¦¹à¦£ à¦•à¦°à§à¦¨', 'Receive Due Payments For This Store', 0, 45),
(970, 2002, 'à¦¬à¦¾à¦° à¦²à§‡à¦¨à¦¦à§‡à¦¨', 'Total Transaction', 0, 45),
(971, 2001, 'à¦¸à§à¦Ÿà§‹à¦°à§‡à¦° à¦¤à¦¥à§à¦¯', 'Store Information', 0, 45),
(972, 2000, 'à¦¸à§à¦Ÿà§‹à¦° à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦¾à¦° à¦²à§‡à¦¨à¦¦à§‡à¦¨', 'Store Transfer Transactions', 1, 45),
(973, 2100, 'à¦¸à¦¾à¦ªà§à¦¤à¦¾à¦¹à¦¿à¦• à¦¸à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿', 'Weekly Salary', 0, 45);

-- --------------------------------------------------------

--
-- Table structure for table `salary_grades`
--

CREATE TABLE `salary_grades` (
  `salaryGradeID` int(11) NOT NULL,
  `salaryGradeName` varchar(255) NOT NULL,
  `gradeMinRange` int(11) NOT NULL,
  `gradeMaxRange` int(11) NOT NULL,
  `gradeStatus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Active|0=trash',
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary_grades`
--

INSERT INTO `salary_grades` (`salaryGradeID`, `salaryGradeName`, `gradeMinRange`, `gradeMaxRange`, `gradeStatus`, `companyID`, `branchID`, `applicationID`) VALUES
(2, 'Grade 1', 100, 10000, 1, 1, 1, 1),
(3, 'Grade 2', 20000, 200000, 1, 1, 1, 1),
(4, 'Grade 3', 30000, 300000, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_reports`
--

CREATE TABLE `salary_reports` (
  `SL` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `file` varchar(210) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `salary_reports`
--

INSERT INTO `salary_reports` (`SL`, `name`, `file`, `start_date`, `end_date`, `companyID`, `branchID`, `applicationID`) VALUES
(1, '2019-03-09_to_2019-03-13_salary_report', '2019-03-09_to_2019-03-13_salary_report_1.pdf', '2019-03-09', '2019-03-13', 1, 1, 1),
(2, '2019-03-14_to_2019-03-21_salary_report', '2019-03-14_to_2019-03-21_salary_report_2.pdf', '2019-03-14', '2019-03-21', 1, 1, 1),
(3, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_3.pdf', '2019-03-14', '2019-03-20', 1, 1, 1),
(4, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_4.pdf', '2019-03-14', '2019-03-20', 1, 1, 1),
(5, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_5.pdf', '2019-03-14', '2019-03-20', 1, 1, 1),
(6, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_6.pdf', '2019-03-14', '2019-03-20', 1, 1, 1),
(7, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_7.pdf', '2019-03-14', '2019-03-20', 1, 1, 1),
(8, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_8.pdf', '2019-03-14', '2019-03-20', 1, 1, 1),
(9, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_9.pdf', '2019-03-14', '2019-03-20', 1, 1, 1),
(10, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_10.pdf', '2019-03-14', '2019-03-20', 1, 1, 1),
(11, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_11.pdf', '2019-03-14', '2019-03-20', 1, 1, 1),
(12, '2019-03-14_to_2019-03-20_salary_report', '2019-03-14_to_2019-03-20_salary_report_12.pdf', '2019-03-14', '2019-03-20', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_settings`
--

CREATE TABLE `salary_settings` (
  `ID` int(11) NOT NULL,
  `lunchBearableTime` int(11) NOT NULL COMMENT 'in minutes',
  `lateBearableTime` int(11) NOT NULL COMMENT 'in minutes',
  `allowanceApplicableAfter` int(11) NOT NULL DEFAULT '30' COMMENT 'in minutes',
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `salary_settings`
--

INSERT INTO `salary_settings` (`ID`, `lunchBearableTime`, `lateBearableTime`, `allowanceApplicableAfter`, `companyID`, `branchID`, `applicationID`) VALUES
(0, 0, 11, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_types`
--

CREATE TABLE `sales_types` (
  `sales_typeID` int(11) NOT NULL,
  `type_name` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `sales_types`
--

INSERT INTO `sales_types` (`sales_typeID`, `type_name`) VALUES
(1, 'buy'),
(2, 'sell'),
(3, 'return'),
(4, 'deposite'),
(5, 'withdrawal'),
(6, 'expense'),
(7, 'check receive'),
(8, 'Check Given'),
(9, 'Due Receive'),
(10, 'Due Paid'),
(12, 'whole order calcel'),
(20, 'Ecommerce Sell');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceID` int(11) NOT NULL,
  `serviceTypeID` int(11) NOT NULL,
  `serviceName` varchar(80) NOT NULL,
  `servicefeatureImage` text,
  `servicepageImage` text,
  `serviceAttachment` text,
  `serviceOverview` text,
  `serviceDetails` text,
  `entryUserID` int(11) NOT NULL,
  `entryTime` datetime NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL,
  `serviceStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceID`, `serviceTypeID`, `serviceName`, `servicefeatureImage`, `servicepageImage`, `serviceAttachment`, `serviceOverview`, `serviceDetails`, `entryUserID`, `entryTime`, `companyID`, `applicationID`, `serviceStatus`) VALUES
(1, 1, 'Printing', 'image_directory/serviceimage/53c166c5d1-2019-10-12.jpg', 'image_directory/serviceimage/7d07a1056e-2019-10-13.jpg', NULL, 'All kind of Printing Machines', '', 16, '2019-07-02 08:44:29', 1, 1, 1),
(2, 1, 'sdfsdfs', 'image_directory/serviceimage/f0380499b8-2019-07-02.jpg', NULL, NULL, 'dfd', '', 16, '2019-07-02 10:02:23', 1, 1, 0),
(3, 1, 'asasd', 'image_directory/serviceimage/11db909901-2019-07-02.jpg', 'image_directory/serviceimage/11db909901-2019-07-02.jpg', 'image_directory/serviceattachment/8493f1e0aa-2019-07-02.pdf', 'sfsf', '<p>seretretrtrt erttre tretre.la;k sd as salsdf sdfalsd sadf aslf sfsd&nbsp;seretretrtrt erttre tretre.la;k sd as salsdf sdfalsd sadf aslf sfsd</p>\r\n<p>seretretrtrt erttre tretre.la;k sd as salsdf sdfalsd sadf aslf sfsd&nbsp;seretretrtrt erttre tretre.la;k sd as salsdf sdfalsd sadf aslf sfsd</p>\r\n<p>seretretrtrt erttre tretre.la;k sd as salsdf sdfalsd sadf aslf sfsd&nbsp;seretretrtrt erttre tretre.la;k sd as salsdf sdfalsd sadf aslf sfsd</p>', 16, '2019-07-02 10:02:54', 1, 1, 1),
(4, 1, 'fddsfsdf', 'image_directory/serviceimage/11db909901-2019-07-02.jpg', 'image_directory/serviceimage/11db909901-2019-07-02.jpg', NULL, 'dsfdsfds', '', 16, '2019-07-02 10:05:16', 1, 1, 1),
(5, 1, 'adfdfg', 'image_directory/serviceimage/11db909901-2019-07-02.jpg', 'image_directory/serviceimage/11db909901-2019-07-02.jpg', NULL, '', '', 16, '2019-07-02 10:06:26', 1, 1, 1),
(6, 1, 'asdas', 'image_directory/serviceimage/11db909901-2019-07-02.jpg', 'image_directory/serviceimage/11db909901-2019-07-02.jpg', NULL, '', '', 16, '2019-07-02 10:09:37', 1, 1, 1),
(7, 1, 'dfdsfdsfs', 'image_directory/serviceimage/bf0c449ed4-2019-07-02.png', 'image_directory/serviceimage/ef9c8037f9-2019-07-02.jpg', 'image_directory/serviceattachment/f7ea58236d-2019-07-02.pdf', 'sdfsfsf', '&lt;p&gt;sfsfsd&lt;/p&gt;', 62, '2019-07-02 12:05:32', 1, 1, 0),
(8, 1, 'asdfgdg', NULL, NULL, NULL, 'dfdghgfhgh', '&lt;p&gt;jkhjkhjkyuiuy&lt;/p&gt;', 62, '2019-07-02 12:34:21', 1, 1, 1),
(9, 1, 'asd', NULL, NULL, NULL, 'fgdg', '<p>this is a test.&nbsp;this is a test.&nbsp;this is a test.this is a test.this is a test.this is a test.</p>\r\n<p>this is a test.&nbsp;</p>\r\n<p>this is a test.&nbsp;this is a test.&nbsp;this is a test.this is a test.this is a test.this is a test.</p>\r\n<p>this is a test.</p>\r\n<p>this is a test.</p>\r\n<p>this is a test.</p>\r\n<p>this is a test.</p>\r\n<p>this is a test.</p>\r\n<p>this is a test.</p>', 16, '2019-07-03 07:55:15', 1, 1, 1),
(10, 1, 'New Service Check', NULL, 'image_directory/serviceimage/f9d1ced421-2019-10-13.png', NULL, 'This is New Service', '<p>Just Examining&nbsp;Just ExaminingJust Examining&nbsp;Just Examining&nbsp;Just ExaminingJust Examining&nbsp;Just Examining&nbsp;Just ExaminingJust ExaminingJust Examining</p>\r\n<p>ExaminingJust Examining&nbsp;Just ExaminingJust ExaminingJust Examining&nbsp;Just ExaminingJust Examining</p>\r\n<p>Examining&nbsp;Just ExaminingJust Examining</p>', 62, '2019-10-13 06:59:35', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `servicestypes`
--

CREATE TABLE `servicestypes` (
  `serviceTypeID` int(11) NOT NULL,
  `serviceTypeName` varchar(80) NOT NULL,
  `serviceTypeStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicestypes`
--

INSERT INTO `servicestypes` (`serviceTypeID`, `serviceTypeName`, `serviceTypeStatus`, `companyID`, `applicationID`) VALUES
(1, 'Service1', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settingsID` int(11) NOT NULL,
  `default_languageID` int(11) NOT NULL DEFAULT '1',
  `vendorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settingsID`, `default_languageID`, `vendorID`) VALUES
(1, 1, 45);

-- --------------------------------------------------------

--
-- Table structure for table `shalves`
--

CREATE TABLE `shalves` (
  `shalvesID` int(11) NOT NULL,
  `storeID` int(11) UNSIGNED DEFAULT NULL,
  `shalves_code` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `shalves`
--

INSERT INTO `shalves` (`shalvesID`, `storeID`, `shalves_code`, `vendorID`) VALUES
(1, 12, 'Yellow Shalve', 45);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `shiftID` int(11) NOT NULL,
  `shiftName` varchar(200) NOT NULL,
  `startTime` varchar(100) NOT NULL,
  `endTime` varchar(100) NOT NULL,
  `launchStart` varchar(100) DEFAULT NULL,
  `launchEnd` varchar(100) DEFAULT NULL,
  `shiftStatus` tinyint(4) NOT NULL DEFAULT '1',
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`shiftID`, `shiftName`, `startTime`, `endTime`, `launchStart`, `launchEnd`, `shiftStatus`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 'General Shift', '10:00', '20:00', '14:00', '15:00', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `SL` int(11) NOT NULL,
  `countryID` int(3) UNSIGNED NOT NULL,
  `divisionID` int(2) UNSIGNED DEFAULT NULL,
  `districtID` int(2) UNSIGNED DEFAULT NULL,
  `charge` float NOT NULL,
  `shippingType` int(11) NOT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`SL`, `countryID`, `divisionID`, `districtID`, `charge`, `shippingType`, `vendorID`, `storeID`) VALUES
(1, 21, 3, 1, 50, 2, 45, 16),
(2, 21, 3, 9, 60, 2, 45, 16),
(3, 21, 3, 11, 60, 2, 45, 16),
(4, 21, 3, 11, 0, 1, 45, 16),
(5, 21, 3, 9, 0, 1, 45, 16),
(6, 21, 3, 1, 0, 1, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_types`
--

CREATE TABLE `shipping_types` (
  `shippingTypeID` int(11) NOT NULL,
  `shippingTypeName` varchar(200) NOT NULL,
  `shippingTypeStatus` int(11) NOT NULL DEFAULT '1',
  `vendorID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_types`
--

INSERT INTO `shipping_types` (`shippingTypeID`, `shippingTypeName`, `shippingTypeStatus`, `vendorID`, `storeID`) VALUES
(1, 'Free Shipping', 1, 45, 16),
(2, '1 Day Delivery', 1, 45, 16);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `slideID` int(11) NOT NULL,
  `slideTypeID` int(11) NOT NULL,
  `slideTitle` varchar(80) NOT NULL,
  `slideCaption` text NOT NULL,
  `slideshortOverview` text NOT NULL,
  `slideImage` text NOT NULL,
  `slideURL` varchar(255) NOT NULL,
  `slideURLtitle` text NOT NULL,
  `slideStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slideID`, `slideTypeID`, `slideTitle`, `slideCaption`, `slideshortOverview`, `slideImage`, `slideURL`, `slideURLtitle`, `slideStatus`, `companyID`, `applicationID`) VALUES
(1, 1, 'USI BD MIS', 'A Complete System to track all activities On a single platform', 'Using MIS all types of authorities like Govt. Agencies,UNGO,  Association and Miller will be benefitted \r\nEveryone can manage their respective datas.', 'image_directory/slideimage/b6e89fb485-2021-11-09.png', 'https:www.jhffgg.com', 'Learn More About MIS', 1, 1, 1),
(2, 1, 'USI BD MIS 2', 'A Complete System to track all activities On a single platform', 'USI BD MIS 2', 'image_directory/slideimage/f31d2fce9c-2021-11-09.png', 'https:www.jhffggfgdg.com/trrtt', 'Learn More', 1, 1, 1),
(3, 1, 'This is a Title', 'asf sdfkj', 'sdfsd f s', 'image_directory/slideimage/6123800a46-2019-10-12.jpg', 'https:www.jhffgggg.com', 'dfgfdfg tert', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slidetypes`
--

CREATE TABLE `slidetypes` (
  `slideTypeID` int(11) NOT NULL,
  `slideTypeName` varchar(80) NOT NULL,
  `slideTypeStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_quantity`
--

CREATE TABLE `stock_quantity` (
  `quantityID` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `stock_quantity`
--

INSERT INTO `stock_quantity` (`quantityID`, `productID`, `storeID`, `vendorID`, `quantity`) VALUES
(109, 178, 16, 45, 55),
(110, 178, 17, 45, 5),
(111, 189, 16, 45, 1),
(112, 202, 16, 45, 928),
(113, 205, 16, 45, -143),
(114, 206, 16, 45, 6),
(115, 203, 16, 45, 8),
(116, 207, 16, 45, -2289),
(117, 204, 16, 45, 0),
(118, 205, 23, 45, 1),
(119, 205, 25, 45, 1),
(120, 208, 24, 45, 1),
(121, 209, 22, 45, 9),
(122, 214, 22, 45, 3),
(123, 202, 26, 45, 81),
(124, 215, 16, 45, 563),
(125, 209, 16, 45, 1),
(126, 219, 16, 45, 175),
(127, 202, 22, 45, 10),
(128, 219, 22, 45, -5485),
(129, 220, 22, 45, -15),
(130, 219, 31, 45, -692),
(131, 221, 31, 45, 201),
(132, 220, 31, 45, 299),
(133, 223, 31, 45, 95),
(134, 222, 31, 45, 100),
(135, 225, 31, 45, 96),
(136, 226, 31, 45, -8),
(137, 227, 31, 45, -5),
(138, 228, 31, 45, -8),
(139, 229, 34, 45, 1000),
(140, 230, 34, 45, 1000),
(141, 231, 34, 45, 1000),
(142, 232, 34, 45, 500),
(143, 225, 16, 45, 75),
(144, 233, 31, 45, 0),
(145, 234, 31, 45, 5410),
(146, 243, 16, 45, 3),
(147, 242, 16, 45, 16),
(148, 239, 16, 45, 18);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `storeID` int(11) UNSIGNED NOT NULL,
  `store_name` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `store_address` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `is_warehouse` int(2) DEFAULT NULL,
  `is_vendor_manage` int(2) DEFAULT NULL COMMENT 'to track if the store is managed by vendor',
  `contact` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `landline` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `store_logo` varchar(70) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `company_logo` varchar(70) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `owned_by` int(11) DEFAULT NULL,
  `store_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`storeID`, `store_name`, `store_address`, `vendorID`, `is_warehouse`, `is_vendor_manage`, `contact`, `landline`, `email`, `store_logo`, `company_logo`, `status`, `owned_by`, `store_no`) VALUES
(16, 'Agami Soft', 'Dhaka', 45, 0, 0, '', NULL, '', 'str_logo56117d09c4-2019-03-30.jpg', NULL, 1, NULL, NULL),
(22, 'Thinktrek Trading', '', 45, 0, 0, '', NULL, '', 'str_logoa59dc38cf6-2019-02-17.png', 'cmpny_logo944c5747cc-2019-02-17.png', 0, 45, 16),
(23, 'SSS', '', 45, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(24, 'ppppppppppp', '', 45, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(25, 'hghhgh', '', 45, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(26, 'arb', ' corporation', 45, 0, 0, '', NULL, '', NULL, NULL, 0, NULL, NULL),
(27, 'ARB Corporation', '243/244 Nawabpur Road Dhaka.', 45, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(28, 'Wirehouse 01 2nd floor', '', 45, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(29, 'Warehouse 01 2nd floor', '', 45, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(30, 'My Store', 'Dhaka', 45, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 46, 22),
(31, 'Thintrek Trading', '', 45, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 45, 16),
(32, 'ARB Corporation', '', 45, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 45, 16),
(33, 'Rashed Screw Center', '', 45, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 45, 16),
(34, 'Mogoltul', '', 45, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 59, 32);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierID` int(11) NOT NULL,
  `fname` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lname` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nid` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` int(2) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbllikes`
--

CREATE TABLE `tbllikes` (
  `likeID` int(11) NOT NULL,
  `likeTypeID` int(11) NOT NULL,
  `likeRefID` int(11) NOT NULL,
  `userprofileID` int(11) NOT NULL,
  `entryTime` datetime NOT NULL,
  `modifiedTime` datetime NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL,
  `likeStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllikes`
--

INSERT INTO `tbllikes` (`likeID`, `likeTypeID`, `likeRefID`, `userprofileID`, `entryTime`, `modifiedTime`, `companyID`, `applicationID`, `likeStatus`) VALUES
(132, 3, 355, 54, '2019-07-16 11:53:59', '2019-07-16 11:54:02', 1, 1, 0),
(133, 1, 355, 54, '2019-07-16 11:54:02', '2019-07-16 11:54:04', 1, 1, 0),
(134, 2, 355, 54, '2019-07-16 11:54:04', '2019-07-16 11:54:05', 1, 1, 0),
(135, 3, 355, 54, '2019-07-16 11:54:07', '2019-07-16 11:54:08', 1, 1, 0),
(136, 1, 355, 54, '2019-07-16 11:54:09', '2019-07-16 11:54:10', 1, 1, 0),
(137, 2, 355, 54, '2019-07-16 11:54:11', '2019-07-16 11:54:12', 1, 1, 0),
(138, 1, 355, 54, '2019-07-16 11:54:13', '2019-07-16 11:54:14', 1, 1, 0),
(139, 3, 355, 54, '2019-07-16 11:54:14', '2019-07-16 11:54:50', 1, 1, 0),
(140, 3, 355, 54, '2019-07-16 11:57:22', '2019-07-16 11:57:22', 1, 1, 0),
(141, 3, 355, 54, '2019-07-16 11:57:22', '0000-00-00 00:00:00', 1, 1, 1),
(142, 2, 356, 54, '2019-07-16 11:57:25', '0000-00-00 00:00:00', 1, 1, 1),
(143, 1, 353, 54, '2019-07-16 11:57:27', '0000-00-00 00:00:00', 1, 1, 1),
(144, 3, 355, 62, '2019-07-16 11:57:58', '2019-07-16 11:57:58', 1, 1, 0),
(145, 2, 355, 62, '2019-07-16 11:57:58', '2019-07-16 11:58:03', 1, 1, 0),
(146, 3, 355, 62, '2019-07-16 11:58:03', '2019-07-16 11:58:05', 1, 1, 0),
(147, 2, 355, 62, '2019-07-16 11:58:05', '2019-07-16 11:58:06', 1, 1, 0),
(148, 1, 355, 62, '2019-07-16 11:58:10', '2019-07-16 11:58:12', 1, 1, 0),
(149, 3, 353, 62, '2019-07-16 11:59:35', '2019-07-16 11:59:35', 1, 1, 0),
(150, 3, 353, 62, '2019-07-16 11:59:35', '2019-07-16 11:59:59', 1, 1, 0),
(151, 1, 356, 62, '2019-07-16 11:59:53', '2019-07-16 11:59:55', 1, 1, 0),
(152, 2, 356, 62, '2019-07-16 11:59:55', '2019-07-16 11:59:56', 1, 1, 0),
(153, 1, 354, 62, '2019-07-16 12:00:01', '2019-07-16 12:00:08', 1, 1, 0),
(154, 1, 356, 62, '2019-07-16 12:00:04', '2019-07-16 12:22:15', 1, 1, 0),
(155, 3, 354, 62, '2019-07-16 12:00:08', '2019-07-17 02:33:06', 1, 1, 0),
(156, 1, 338, 62, '2019-07-16 12:06:25', '2019-07-16 12:23:16', 1, 1, 0),
(157, 3, 350, 62, '2019-07-16 12:09:03', '2019-07-16 12:09:05', 1, 1, 0),
(158, 1, 350, 62, '2019-07-16 12:09:05', '2019-07-16 12:29:37', 1, 1, 0),
(159, 2, 355, 62, '2019-07-16 12:12:54', '2019-07-16 12:12:54', 1, 1, 0),
(160, 2, 355, 62, '2019-07-16 12:12:54', '2019-07-16 12:13:09', 1, 1, 0),
(161, 2, 355, 62, '2019-07-16 12:14:01', '2019-07-16 12:14:15', 1, 1, 0),
(162, 2, 355, 62, '2019-07-16 12:16:51', '2019-07-16 12:17:03', 1, 1, 0),
(163, 3, 355, 62, '2019-07-16 12:17:03', '2019-07-16 12:17:07', 1, 1, 0),
(164, 1, 355, 62, '2019-07-16 12:17:07', '2019-07-16 12:18:33', 1, 1, 0),
(165, 2, 355, 62, '2019-07-16 12:22:19', '2019-07-16 12:25:12', 1, 1, 0),
(166, 2, 338, 62, '2019-07-16 12:23:16', '2019-07-17 12:58:47', 1, 1, 0),
(167, 1, 355, 62, '2019-07-16 12:25:12', '2019-07-17 10:34:09', 1, 1, 0),
(168, 2, 350, 62, '2019-07-16 12:29:37', '2019-07-16 12:33:20', 1, 1, 0),
(169, 2, 352, 62, '2019-07-16 12:33:12', '2019-07-16 12:33:14', 1, 1, 0),
(170, 1, 352, 62, '2019-07-16 12:33:14', '2019-07-16 12:33:15', 1, 1, 0),
(171, 3, 352, 62, '2019-07-16 12:33:15', '2019-07-17 02:19:18', 1, 1, 0),
(172, 1, 350, 62, '2019-07-16 12:33:20', '2019-07-16 12:33:21', 1, 1, 0),
(173, 3, 350, 62, '2019-07-16 12:33:21', '2019-07-16 12:33:21', 1, 1, 0),
(174, 2, 350, 62, '2019-07-16 12:33:21', '2019-07-17 05:29:56', 1, 1, 0),
(175, 3, 351, 62, '2019-07-16 12:33:23', '2019-07-16 12:33:23', 1, 1, 0),
(176, 3, 351, 62, '2019-07-16 12:33:23', '2019-07-16 12:33:24', 1, 1, 0),
(177, 2, 351, 62, '2019-07-16 12:33:24', '2019-07-16 12:33:25', 1, 1, 0),
(178, 1, 351, 62, '2019-07-16 12:33:25', '0000-00-00 00:00:00', 1, 1, 1),
(179, 2, 349, 62, '2019-07-16 12:44:20', '2019-07-16 12:44:22', 1, 1, 0),
(180, 3, 349, 62, '2019-07-16 12:44:22', '2019-07-16 12:44:23', 1, 1, 0),
(181, 1, 349, 62, '2019-07-16 12:44:23', '2019-07-16 12:44:29', 1, 1, 0),
(182, 2, 349, 62, '2019-07-16 12:44:29', '0000-00-00 00:00:00', 1, 1, 1),
(183, 3, 357, 62, '2019-07-16 12:44:41', '2019-07-20 11:18:59', 1, 1, 0),
(184, 2, 354, 54, '2019-07-16 12:45:39', '0000-00-00 00:00:00', 1, 1, 1),
(185, 3, 358, 54, '2019-07-16 12:45:52', '0000-00-00 00:00:00', 1, 1, 1),
(186, 2, 355, 62, '2019-07-17 10:34:09', '2019-07-17 10:34:10', 1, 1, 0),
(187, 3, 355, 62, '2019-07-17 10:34:10', '2019-07-17 10:34:11', 1, 1, 0),
(188, 1, 355, 62, '2019-07-17 10:34:11', '2019-07-17 11:22:02', 1, 1, 0),
(189, 2, 355, 62, '2019-07-17 11:22:02', '2019-07-17 11:22:04', 1, 1, 0),
(190, 1, 355, 62, '2019-07-17 11:22:22', '2019-07-17 12:51:27', 1, 1, 0),
(191, 1, 347, 62, '2019-07-17 11:40:23', '2019-07-17 11:40:29', 1, 1, 0),
(192, 2, 347, 62, '2019-07-17 11:40:29', '2019-07-17 11:40:31', 1, 1, 0),
(193, 3, 347, 62, '2019-07-17 11:40:31', '2019-07-17 11:40:31', 1, 1, 0),
(194, 1, 347, 62, '2019-07-17 11:40:32', '2019-07-17 11:40:32', 1, 1, 0),
(195, 1, 347, 62, '2019-07-17 11:40:32', '2019-07-17 11:41:02', 1, 1, 0),
(196, 1, 347, 62, '2019-07-17 11:41:03', '2019-07-17 11:41:03', 1, 1, 0),
(197, 1, 347, 62, '2019-07-17 11:41:04', '0000-00-00 00:00:00', 1, 1, 1),
(198, 1, 356, 62, '2019-07-17 12:46:47', '2019-07-17 02:15:12', 1, 1, 0),
(199, 1, 355, 62, '2019-07-17 12:51:32', '2019-07-17 02:04:49', 1, 1, 0),
(200, 2, 338, 62, '2019-07-17 12:58:48', '0000-00-00 00:00:00', 1, 1, 1),
(201, 1, 337, 62, '2019-07-17 01:12:40', '2019-07-17 01:12:43', 1, 1, 0),
(202, 2, 355, 62, '2019-07-17 02:04:49', '2019-07-17 02:04:49', 1, 1, 0),
(203, 2, 355, 62, '2019-07-17 02:04:49', '2019-07-17 02:04:56', 1, 1, 0),
(204, 1, 355, 62, '2019-07-17 02:04:56', '2019-07-17 02:04:56', 1, 1, 0),
(205, 1, 355, 62, '2019-07-17 02:04:56', '2019-07-17 02:05:00', 1, 1, 0),
(206, 3, 355, 62, '2019-07-17 02:05:00', '2019-07-17 02:14:13', 1, 1, 0),
(207, 1, 355, 62, '2019-07-17 02:14:13', '2019-07-17 02:14:55', 1, 1, 0),
(208, 2, 355, 62, '2019-07-17 02:14:55', '2019-07-17 02:15:51', 1, 1, 0),
(209, 1, 356, 62, '2019-07-17 02:15:12', '2019-07-17 02:15:18', 1, 1, 0),
(210, 1, 356, 62, '2019-07-17 02:15:25', '2019-07-17 02:15:31', 1, 1, 0),
(211, 2, 356, 62, '2019-07-17 02:15:31', '2019-07-17 02:15:37', 1, 1, 0),
(212, 1, 356, 62, '2019-07-17 02:15:37', '2019-07-17 02:15:42', 1, 1, 0),
(213, 1, 356, 62, '2019-07-17 02:15:42', '2019-07-17 03:43:23', 1, 1, 0),
(214, 1, 355, 62, '2019-07-17 02:15:52', '2019-07-17 02:15:56', 1, 1, 0),
(215, 2, 352, 62, '2019-07-17 02:19:18', '2019-07-17 02:19:23', 1, 1, 0),
(216, 1, 352, 62, '2019-07-17 02:19:23', '2019-07-17 02:19:27', 1, 1, 0),
(217, 1, 352, 62, '2019-07-17 02:19:27', '0000-00-00 00:00:00', 1, 1, 1),
(218, 2, 354, 62, '2019-07-17 02:33:06', '2019-07-17 04:00:02', 1, 1, 0),
(219, 2, 355, 62, '2019-07-17 02:37:12', '2019-07-17 02:37:21', 1, 1, 0),
(220, 3, 355, 62, '2019-07-17 02:37:21', '2019-07-17 03:18:11', 1, 1, 0),
(221, 1, 355, 62, '2019-07-17 03:18:11', '2019-07-17 03:18:11', 1, 1, 0),
(222, 1, 355, 62, '2019-07-17 03:18:11', '2019-07-17 03:18:19', 1, 1, 0),
(223, 1, 355, 62, '2019-07-17 03:18:19', '2019-07-17 03:19:13', 1, 1, 0),
(224, 1, 355, 62, '2019-07-17 03:19:13', '2019-07-17 03:19:16', 1, 1, 0),
(225, 3, 356, 62, '2019-07-17 03:43:23', '2019-07-17 03:43:28', 1, 1, 0),
(226, 1, 356, 62, '2019-07-17 03:43:28', '2019-07-17 03:43:29', 1, 1, 0),
(227, 1, 356, 62, '2019-07-17 03:43:30', '2019-07-17 03:43:34', 1, 1, 0),
(228, 2, 356, 62, '2019-07-17 03:43:34', '2019-07-17 03:44:20', 1, 1, 0),
(229, 2, 356, 62, '2019-07-17 03:44:20', '2019-07-17 04:29:27', 1, 1, 0),
(230, 3, 355, 62, '2019-07-17 03:49:06', '2019-07-17 04:05:51', 1, 1, 0),
(231, 2, 354, 62, '2019-07-17 04:00:02', '2019-07-17 04:00:02', 1, 1, 0),
(232, 2, 354, 62, '2019-07-17 04:00:02', '0000-00-00 00:00:00', 1, 1, 1),
(233, 1, 355, 62, '2019-07-17 04:05:51', '2019-07-17 04:09:08', 1, 1, 0),
(234, 2, 355, 62, '2019-07-17 04:09:08', '2019-07-17 04:29:03', 1, 1, 0),
(235, 2, 355, 62, '2019-07-17 04:29:03', '2019-07-17 04:29:03', 1, 1, 0),
(236, 2, 355, 62, '2019-07-17 04:29:04', '2019-07-17 04:29:13', 1, 1, 0),
(237, 1, 355, 62, '2019-07-17 04:29:13', '2019-07-17 05:18:12', 1, 1, 0),
(238, 1, 356, 62, '2019-07-17 04:29:27', '2019-07-17 04:29:27', 1, 1, 0),
(239, 1, 356, 62, '2019-07-17 04:29:27', '2019-07-17 04:55:10', 1, 1, 0),
(240, 1, 356, 62, '2019-07-17 04:55:10', '2019-07-17 05:02:50', 1, 1, 0),
(241, 3, 356, 62, '2019-07-17 05:02:50', '2019-07-17 06:09:25', 1, 1, 0),
(242, 1, 350, 62, '2019-07-17 05:29:56', '2019-07-17 05:30:02', 1, 1, 0),
(243, 2, 350, 62, '2019-07-17 05:30:02', '0000-00-00 00:00:00', 1, 1, 1),
(244, 1, 355, 62, '2019-07-17 05:50:09', '2019-07-17 06:08:52', 1, 1, 0),
(245, 1, 358, 62, '2019-07-17 05:51:17', '2019-07-25 09:19:07', 1, 1, 0),
(246, 1, 355, 62, '2019-07-17 06:08:56', '2019-07-17 06:08:59', 1, 1, 0),
(247, 1, 0, 62, '2019-07-17 06:09:02', '2019-07-17 06:09:03', 1, 1, 0),
(248, 1, 0, 62, '2019-07-17 06:09:03', '2019-07-17 06:09:05', 1, 1, 0),
(249, 1, 0, 62, '2019-07-17 06:09:05', '2019-07-17 06:09:07', 1, 1, 0),
(250, 2, 0, 62, '2019-07-17 06:09:07', '2019-07-17 06:09:08', 1, 1, 0),
(251, 3, 0, 62, '2019-07-17 06:09:08', '2019-07-17 06:09:28', 1, 1, 0),
(252, 1, 356, 62, '2019-07-17 06:09:25', '2019-07-17 06:12:07', 1, 1, 0),
(253, 2, 0, 62, '2019-07-17 06:09:29', '2019-07-17 06:09:29', 1, 1, 0),
(254, 2, 0, 62, '2019-07-17 06:09:29', '2019-07-17 06:09:29', 1, 1, 0),
(255, 2, 0, 62, '2019-07-17 06:09:30', '2019-07-17 06:10:21', 1, 1, 0),
(256, 1, 355, 62, '2019-07-17 06:10:20', '2019-07-17 06:11:12', 1, 1, 0),
(257, 1, 0, 62, '2019-07-17 06:10:22', '0000-00-00 00:00:00', 1, 1, 1),
(258, 1, 355, 62, '2019-07-17 06:11:12', '2019-07-17 06:11:16', 1, 1, 0),
(259, 2, 355, 62, '2019-07-17 06:11:16', '2019-07-17 06:11:26', 1, 1, 0),
(260, 3, 355, 62, '2019-07-17 06:11:26', '2019-07-17 06:12:00', 1, 1, 0),
(261, 2, 355, 62, '2019-07-17 06:12:00', '2019-07-17 06:12:01', 1, 1, 0),
(262, 1, 355, 62, '2019-07-17 06:12:01', '2019-07-17 06:12:03', 1, 1, 0),
(263, 3, 355, 62, '2019-07-17 06:12:03', '2019-07-17 06:12:04', 1, 1, 0),
(264, 1, 355, 62, '2019-07-17 06:12:05', '2019-07-17 06:12:47', 1, 1, 0),
(265, 2, 356, 62, '2019-07-17 06:12:07', '2019-07-20 10:31:06', 1, 1, 0),
(266, 1, 355, 62, '2019-07-17 06:12:47', '2019-07-17 06:14:28', 1, 1, 0),
(267, 3, 355, 62, '2019-07-17 06:14:28', '2019-07-20 09:07:50', 1, 1, 0),
(268, 2, 355, 62, '2019-07-20 09:07:50', '2019-07-20 09:09:26', 1, 1, 0),
(269, 1, 355, 62, '2019-07-20 09:10:13', '2019-07-20 09:10:33', 1, 1, 0),
(270, 1, 355, 62, '2019-07-20 09:10:33', '2019-07-20 09:10:34', 1, 1, 0),
(271, 1, 355, 62, '2019-07-20 09:10:36', '2019-07-20 09:10:39', 1, 1, 0),
(272, 2, 355, 62, '2019-07-20 09:10:39', '2019-07-20 09:10:44', 1, 1, 0),
(273, 2, 355, 62, '2019-07-20 09:10:44', '2019-07-20 09:10:47', 1, 1, 0),
(274, 2, 355, 62, '2019-07-20 09:10:47', '2019-07-20 09:47:56', 1, 1, 0),
(275, 1, 355, 62, '2019-07-20 10:20:24', '2019-07-20 10:20:28', 1, 1, 0),
(276, 2, 355, 62, '2019-07-20 10:20:28', '2019-07-20 10:20:32', 1, 1, 0),
(277, 1, 355, 62, '2019-07-20 10:20:32', '2019-07-20 10:20:35', 1, 1, 0),
(278, 3, 355, 62, '2019-07-20 10:20:35', '2019-07-20 10:20:37', 1, 1, 0),
(279, 1, 355, 62, '2019-07-20 10:20:37', '2019-07-20 10:20:40', 1, 1, 0),
(280, 2, 355, 62, '2019-07-20 10:20:40', '2019-07-20 10:31:35', 1, 1, 0),
(281, 1, 356, 62, '2019-07-20 10:31:08', '2019-07-20 10:31:10', 1, 1, 0),
(282, 2, 356, 62, '2019-07-20 10:31:10', '2019-07-20 10:31:18', 1, 1, 0),
(283, 2, 355, 62, '2019-07-20 10:31:35', '2019-07-20 10:31:42', 1, 1, 0),
(284, 3, 355, 62, '2019-07-20 10:31:42', '2019-07-20 10:31:44', 1, 1, 0),
(285, 1, 355, 62, '2019-07-20 10:31:44', '2019-07-20 10:31:47', 1, 1, 0),
(286, 2, 355, 62, '2019-07-20 10:31:50', '2019-07-20 10:31:56', 1, 1, 0),
(287, 3, 355, 62, '2019-07-20 10:31:56', '2019-07-20 10:31:59', 1, 1, 0),
(288, 2, 355, 62, '2019-07-20 10:31:59', '2019-07-20 12:06:49', 1, 1, 0),
(289, 1, 357, 62, '2019-07-20 11:18:59', '0000-00-00 00:00:00', 1, 1, 1),
(290, 2, 355, 62, '2019-07-20 12:06:49', '2019-07-20 12:06:49', 1, 1, 0),
(291, 2, 355, 62, '2019-07-20 12:06:49', '2019-07-20 12:07:16', 1, 1, 0),
(292, 2, 355, 62, '2019-07-20 12:07:16', '2019-07-20 12:07:44', 1, 1, 0),
(293, 1, 355, 62, '2019-07-20 12:07:44', '2019-07-20 12:09:39', 1, 1, 0),
(294, 3, 355, 62, '2019-07-20 12:09:39', '0000-00-00 00:00:00', 1, 1, 1),
(295, 1, 356, 62, '2019-07-20 12:10:27', '0000-00-00 00:00:00', 1, 1, 1),
(296, 1, 363, 62, '2019-07-20 01:08:01', '2019-07-20 01:08:11', 1, 1, 0),
(297, 2, 363, 62, '2019-07-20 01:08:11', '2019-07-20 01:08:14', 1, 1, 0),
(298, 1, 363, 62, '2019-07-20 01:08:15', '2019-07-20 01:08:26', 1, 1, 0),
(299, 1, 363, 62, '2019-07-20 01:08:26', '2019-07-20 01:08:29', 1, 1, 0),
(300, 3, 363, 62, '2019-07-20 01:08:29', '2019-07-20 01:08:41', 1, 1, 0),
(301, 3, 363, 62, '2019-07-20 01:08:41', '2019-07-20 01:11:56', 1, 1, 0),
(302, 1, 362, 62, '2019-07-20 01:09:32', '0000-00-00 00:00:00', 1, 1, 1),
(303, 3, 363, 62, '2019-07-20 01:11:56', '2019-07-20 01:11:59', 1, 1, 0),
(304, 3, 363, 62, '2019-07-20 01:11:59', '2019-07-20 01:12:01', 1, 1, 0),
(305, 1, 363, 62, '2019-07-20 01:12:01', '2019-07-20 01:12:05', 1, 1, 0),
(306, 3, 363, 62, '2019-07-20 01:12:05', '2019-07-20 01:12:09', 1, 1, 0),
(307, 1, 363, 62, '2019-07-20 01:12:12', '2019-07-20 01:12:16', 1, 1, 0),
(308, 3, 363, 62, '2019-07-20 01:12:16', '2019-07-20 01:21:38', 1, 1, 0),
(309, 1, 363, 62, '2019-07-20 01:21:38', '0000-00-00 00:00:00', 1, 1, 1),
(310, 2, 438, 16, '2019-07-25 09:16:34', '0000-00-00 00:00:00', 1, 1, 1),
(311, 3, 358, 62, '2019-07-25 09:19:07', '2019-07-25 09:19:58', 1, 1, 0),
(312, 1, 358, 62, '2019-07-25 09:19:58', '0000-00-00 00:00:00', 1, 1, 1),
(313, 2, 456, 62, '2019-07-25 09:59:01', '2021-10-18 08:25:22', 1, 1, 0),
(314, 1, 457, 62, '2019-07-25 09:59:24', '0000-00-00 00:00:00', 1, 1, 1),
(315, 1, 455, 62, '2021-10-18 10:05:34', '2021-10-18 08:25:32', 1, 1, 0),
(316, 1, 450, 62, '2021-10-18 08:03:35', '0000-00-00 00:00:00', 1, 1, 1),
(317, 1, 456, 62, '2021-10-18 08:25:23', '2021-10-18 08:26:53', 1, 1, 0),
(318, 2, 455, 62, '2021-10-18 08:25:32', '0000-00-00 00:00:00', 1, 1, 1),
(319, 3, 456, 62, '2021-10-18 08:27:00', '2021-10-18 08:38:36', 1, 1, 0),
(320, 3, 456, 62, '2021-10-18 08:38:36', '2021-10-19 12:21:41', 1, 1, 0),
(321, 2, 456, 62, '2021-10-19 12:21:41', '0000-00-00 00:00:00', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_transfer_table`
--

CREATE TABLE `temporary_transfer_table` (
  `temporary_productID` int(11) NOT NULL,
  `product_title` varchar(155) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `transfer_from` int(11) DEFAULT NULL,
  `transfer_to` int(11) DEFAULT NULL,
  `user_sessionID` int(11) DEFAULT NULL,
  `buying_price` float(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_allowance_transactions`
--

CREATE TABLE `temp_allowance_transactions` (
  `allowanceTransactionID` int(11) NOT NULL,
  `employeeID` int(11) DEFAULT NULL COMMENT 'profile id',
  `allowanceID` int(11) DEFAULT NULL,
  `allowanceAmount` float DEFAULT '0',
  `allowanceDate` date DEFAULT NULL,
  `allowanceEndDate` date DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  `applicationID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_attendance`
--

CREATE TABLE `temp_attendance` (
  `SL` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `CHECKTIME` varchar(100) NOT NULL,
  `sn` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_attendance`
--

INSERT INTO `temp_attendance` (`SL`, `USERID`, `CHECKTIME`, `sn`) VALUES
(1, 91, '2019-03-25 10:26:20.000000', 'A8N5183261146'),
(2, 85, '2019-03-25 10:17:12.000000', 'A8N5183261146'),
(3, 88, '2019-03-25 10:17:08.000000', 'A8N5183261146'),
(4, 82, '2019-03-25 10:08:33.000000', 'A8N5183261146'),
(5, 1, '2019-03-25 09:58:07.000000', 'A8N5183261146'),
(6, 90, '2019-03-25 09:55:07.000000', 'A8N5183261146'),
(7, 73, '2019-03-25 09:54:13.000000', 'A8N5183261146'),
(8, 86, '2019-03-25 09:51:41.000000', 'A8N5183261146'),
(9, 92, '2019-03-25 09:45:21.000000', 'A8N5183261146'),
(10, 81, '2019-03-25 09:45:17.000000', 'A8N5183261146'),
(11, 84, '2019-03-25 09:37:00.000000', 'A8N5183261146'),
(12, 89, '2019-03-25 09:36:48.000000', 'A8N5183261146'),
(13, 73, '2019-03-24 20:20:15.000000', 'A8N5183261146'),
(14, 85, '2019-03-24 20:19:49.000000', 'A8N5183261146'),
(15, 81, '2019-03-24 20:19:27.000000', 'A8N5183261146'),
(16, 84, '2019-03-24 20:19:22.000000', 'A8N5183261146'),
(17, 86, '2019-03-24 20:19:04.000000', 'A8N5183261146'),
(18, 88, '2019-03-24 20:18:25.000000', 'A8N5183261146'),
(19, 90, '2019-03-24 20:18:13.000000', 'A8N5183261146'),
(20, 91, '2019-03-24 20:17:10.000000', 'A8N5183261146'),
(21, 82, '2019-03-24 20:11:12.000000', 'A8N5183261146'),
(22, 92, '2019-03-24 20:11:07.000000', 'A8N5183261146'),
(23, 1, '2019-03-24 20:04:02.000000', 'A8N5183261146'),
(24, 1, '2019-03-24 20:03:41.000000', 'A8N5183261146'),
(25, 89, '2019-03-24 19:22:44.000000', 'A8N5183261146'),
(26, 91, '2019-03-24 17:55:39.000000', 'A8N5183261146'),
(27, 91, '2019-03-24 17:55:35.000000', 'A8N5183261146'),
(28, 85, '2019-03-24 17:03:39.000000', 'A8N5183261146'),
(29, 90, '2019-03-24 16:25:35.000000', 'A8N5183261146'),
(30, 90, '2019-03-24 16:22:54.000000', 'A8N5183261146'),
(31, 84, '2019-03-24 16:02:34.000000', 'A8N5183261146'),
(32, 85, '2019-03-24 15:50:24.000000', 'A8N5183261146'),
(33, 86, '2019-03-24 15:49:06.000000', 'A8N5183261146'),
(34, 73, '2019-03-24 15:41:25.000000', 'A8N5183261146'),
(35, 73, '2019-03-24 15:41:06.000000', 'A8N5183261146'),
(36, 88, '2019-03-24 15:33:45.000000', 'A8N5183261146'),
(37, 88, '2019-03-24 15:33:40.000000', 'A8N5183261146'),
(38, 1, '2019-03-24 15:31:10.000000', 'A8N5183261146'),
(39, 84, '2019-03-24 14:58:30.000000', 'A8N5183261146'),
(40, 86, '2019-03-24 14:52:34.000000', 'A8N5183261146'),
(41, 81, '2019-03-24 14:48:07.000000', 'A8N5183261146'),
(42, 81, '2019-03-24 14:47:50.000000', 'A8N5183261146'),
(43, 82, '2019-03-24 14:46:48.000000', 'A8N5183261146'),
(44, 92, '2019-03-24 14:46:35.000000', 'A8N5183261146'),
(45, 82, '2019-03-24 14:46:18.000000', 'A8N5183261146'),
(46, 1, '2019-03-24 14:32:03.000000', 'A8N5183261146'),
(47, 92, '2019-03-24 14:03:03.000000', 'A8N5183261146'),
(48, 88, '2019-03-24 10:48:38.000000', 'A8N5183261146'),
(49, 85, '2019-03-24 10:22:28.000000', 'A8N5183261146'),
(50, 82, '2019-03-24 10:11:10.000000', 'A8N5183261146'),
(51, 1, '2019-03-24 09:59:33.000000', 'A8N5183261146'),
(52, 91, '2019-03-24 09:58:26.000000', 'A8N5183261146'),
(53, 73, '2019-03-24 09:58:16.000000', 'A8N5183261146'),
(54, 90, '2019-03-24 09:50:27.000000', 'A8N5183261146'),
(55, 86, '2019-03-24 09:50:06.000000', 'A8N5183261146'),
(56, 92, '2019-03-24 09:43:04.000000', 'A8N5183261146'),
(57, 84, '2019-03-24 09:42:44.000000', 'A8N5183261146'),
(58, 89, '2019-03-24 09:31:32.000000', 'A8N5183261146'),
(59, 81, '2019-03-24 09:31:28.000000', 'A8N5183261146'),
(60, 73, '2019-03-23 20:07:50.000000', 'A8N5183261146'),
(61, 85, '2019-03-23 20:07:45.000000', 'A8N5183261146'),
(62, 91, '2019-03-23 20:06:58.000000', 'A8N5183261146'),
(63, 84, '2019-03-23 20:06:41.000000', 'A8N5183261146'),
(64, 81, '2019-03-23 20:06:30.000000', 'A8N5183261146'),
(65, 90, '2019-03-23 20:06:10.000000', 'A8N5183261146'),
(66, 92, '2019-03-23 20:05:59.000000', 'A8N5183261146'),
(67, 82, '2019-03-23 20:05:30.000000', 'A8N5183261146'),
(68, 88, '2019-03-23 20:05:16.000000', 'A8N5183261146'),
(69, 89, '2019-03-23 20:04:38.000000', 'A8N5183261146'),
(70, 1, '2019-03-23 20:00:16.000000', 'A8N5183261146'),
(71, 85, '2019-03-23 16:50:03.000000', 'A8N5183261146'),
(72, 91, '2019-03-23 16:48:28.000000', 'A8N5183261146'),
(73, 91, '2019-03-23 16:47:24.000000', 'A8N5183261146'),
(74, 88, '2019-03-23 16:34:52.000000', 'A8N5183261146'),
(75, 90, '2019-03-23 16:17:07.000000', 'A8N5183261146'),
(76, 1, '2019-03-23 16:16:10.000000', 'A8N5183261146'),
(77, 84, '2019-03-23 16:09:56.000000', 'A8N5183261146'),
(78, 86, '2019-03-23 16:01:43.000000', 'A8N5183261146'),
(79, 85, '2019-03-23 15:44:57.000000', 'A8N5183261146'),
(80, 89, '2019-03-23 15:44:45.000000', 'A8N5183261146'),
(81, 89, '2019-03-23 15:44:39.000000', 'A8N5183261146'),
(82, 88, '2019-03-23 15:18:23.000000', 'A8N5183261146'),
(83, 90, '2019-03-23 15:18:11.000000', 'A8N5183261146'),
(84, 1, '2019-03-23 15:14:02.000000', 'A8N5183261146'),
(85, 73, '2019-03-23 15:05:43.000000', 'A8N5183261146'),
(86, 73, '2019-03-23 15:05:31.000000', 'A8N5183261146'),
(87, 81, '2019-03-23 15:05:18.000000', 'A8N5183261146'),
(88, 84, '2019-03-23 15:00:01.000000', 'A8N5183261146'),
(89, 86, '2019-03-23 14:59:38.000000', 'A8N5183261146'),
(90, 92, '2019-03-23 14:50:46.000000', 'A8N5183261146'),
(91, 81, '2019-03-23 14:47:46.000000', 'A8N5183261146'),
(92, 81, '2019-03-23 14:45:40.000000', 'A8N5183261146'),
(93, 82, '2019-03-23 14:41:20.000000', 'A8N5183261146'),
(94, 82, '2019-03-23 14:41:16.000000', 'A8N5183261146'),
(95, 92, '2019-03-23 14:05:01.000000', 'A8N5183261146'),
(96, 88, '2019-03-23 10:54:30.000000', 'A8N5183261146'),
(97, 85, '2019-03-23 10:05:25.000000', 'A8N5183261146'),
(98, 84, '2019-03-23 10:02:50.000000', 'A8N5183261146'),
(99, 73, '2019-03-23 10:01:03.000000', 'A8N5183261146'),
(100, 90, '2019-03-23 09:59:40.000000', 'A8N5183261146'),
(101, 1, '2019-03-23 09:58:53.000000', 'A8N5183261146'),
(102, 82, '2019-03-23 09:54:53.000000', 'A8N5183261146'),
(103, 86, '2019-03-23 09:50:19.000000', 'A8N5183261146'),
(104, 91, '2019-03-23 09:45:05.000000', 'A8N5183261146'),
(105, 92, '2019-03-23 09:41:58.000000', 'A8N5183261146'),
(106, 81, '2019-03-23 09:41:06.000000', 'A8N5183261146'),
(107, 89, '2019-03-23 09:40:59.000000', 'A8N5183261146'),
(108, 73, '2019-03-21 20:23:35.000000', 'A8N5183261146'),
(109, 85, '2019-03-21 20:23:29.000000', 'A8N5183261146'),
(110, 81, '2019-03-21 20:23:24.000000', 'A8N5183261146'),
(111, 90, '2019-03-21 20:23:01.000000', 'A8N5183261146'),
(112, 88, '2019-03-21 20:22:45.000000', 'A8N5183261146'),
(113, 91, '2019-03-21 20:21:57.000000', 'A8N5183261146'),
(114, 92, '2019-03-21 20:20:43.000000', 'A8N5183261146'),
(115, 84, '2019-03-21 20:20:04.000000', 'A8N5183261146'),
(116, 1, '2019-03-21 20:00:13.000000', 'A8N5183261146'),
(117, 82, '2019-03-21 20:00:03.000000', 'A8N5183261146'),
(118, 89, '2019-03-21 18:47:59.000000', 'A8N5183261146'),
(119, 85, '2019-03-21 16:51:03.000000', 'A8N5183261146'),
(120, 91, '2019-03-21 16:48:14.000000', 'A8N5183261146'),
(121, 1, '2019-03-21 16:48:09.000000', 'A8N5183261146'),
(122, 91, '2019-03-21 16:47:59.000000', 'A8N5183261146'),
(123, 88, '2019-03-21 16:40:00.000000', 'A8N5183261146'),
(124, 90, '2019-03-21 16:37:25.000000', 'A8N5183261146'),
(125, 86, '2019-03-21 16:17:55.000000', 'A8N5183261146'),
(126, 1, '2019-03-21 16:06:33.000000', 'A8N5183261146'),
(127, 84, '2019-03-21 16:06:26.000000', 'A8N5183261146'),
(128, 90, '2019-03-21 15:53:48.000000', 'A8N5183261146'),
(129, 85, '2019-03-21 15:31:25.000000', 'A8N5183261146'),
(130, 73, '2019-03-21 15:29:17.000000', 'A8N5183261146'),
(131, 73, '2019-03-21 15:29:04.000000', 'A8N5183261146'),
(132, 86, '2019-03-21 15:19:31.000000', 'A8N5183261146'),
(133, 84, '2019-03-21 15:03:01.000000', 'A8N5183261146'),
(134, 88, '2019-03-21 15:02:19.000000', 'A8N5183261146'),
(135, 89, '2019-03-21 15:00:32.000000', 'A8N5183261146'),
(136, 89, '2019-03-21 15:00:19.000000', 'A8N5183261146'),
(137, 81, '2019-03-21 15:00:00.000000', 'A8N5183261146'),
(138, 81, '2019-03-21 14:58:55.000000', 'A8N5183261146'),
(139, 82, '2019-03-21 14:57:14.000000', 'A8N5183261146'),
(140, 82, '2019-03-21 14:56:52.000000', 'A8N5183261146'),
(141, 81, '2019-03-21 14:56:44.000000', 'A8N5183261146'),
(142, 92, '2019-03-21 14:42:24.000000', 'A8N5183261146'),
(143, 92, '2019-03-21 14:13:04.000000', 'A8N5183261146'),
(144, 88, '2019-03-21 10:41:57.000000', 'A8N5183261146'),
(145, 85, '2019-03-21 10:14:50.000000', 'A8N5183261146'),
(146, 91, '2019-03-21 10:12:34.000000', 'A8N5183261146'),
(147, 1, '2019-03-21 10:11:15.000000', 'A8N5183261146'),
(148, 1, '2019-03-21 10:10:45.000000', 'A8N5183261146'),
(149, 73, '2019-03-21 10:00:53.000000', 'A8N5183261146'),
(150, 90, '2019-03-21 09:59:32.000000', 'A8N5183261146'),
(151, 82, '2019-03-21 09:54:46.000000', 'A8N5183261146'),
(152, 86, '2019-03-21 09:49:37.000000', 'A8N5183261146'),
(153, 84, '2019-03-21 09:44:43.000000', 'A8N5183261146'),
(154, 92, '2019-03-21 09:43:30.000000', 'A8N5183261146'),
(155, 89, '2019-03-21 09:39:43.000000', 'A8N5183261146'),
(156, 81, '2019-03-21 09:35:40.000000', 'A8N5183261146'),
(157, 85, '2019-03-20 20:11:46.000000', 'A8N5183261146'),
(158, 73, '2019-03-20 20:11:32.000000', 'A8N5183261146'),
(159, 81, '2019-03-20 20:11:25.000000', 'A8N5183261146'),
(160, 88, '2019-03-20 20:11:21.000000', 'A8N5183261146'),
(161, 91, '2019-03-20 20:08:17.000000', 'A8N5183261146'),
(162, 91, '2019-03-20 20:08:13.000000', 'A8N5183261146'),
(163, 91, '2019-03-20 20:08:10.000000', 'A8N5183261146'),
(164, 92, '2019-03-20 20:07:40.000000', 'A8N5183261146'),
(165, 86, '2019-03-20 20:07:09.000000', 'A8N5183261146'),
(166, 84, '2019-03-20 20:06:46.000000', 'A8N5183261146'),
(167, 90, '2019-03-20 20:04:38.000000', 'A8N5183261146'),
(168, 82, '2019-03-20 20:00:21.000000', 'A8N5183261146'),
(169, 1, '2019-03-20 20:00:15.000000', 'A8N5183261146'),
(170, 89, '2019-03-20 19:18:00.000000', 'A8N5183261146'),
(171, 86, '2019-03-20 16:41:44.000000', 'A8N5183261146'),
(172, 84, '2019-03-20 16:04:25.000000', 'A8N5183261146'),
(173, 82, '2019-03-20 15:47:29.000000', 'A8N5183261146'),
(174, 82, '2019-03-20 15:47:09.000000', 'A8N5183261146'),
(175, 86, '2019-03-20 15:40:48.000000', 'A8N5183261146'),
(176, 1, '2019-03-20 15:26:42.000000', 'A8N5183261146'),
(177, 89, '2019-03-20 15:09:14.000000', 'A8N5183261146'),
(178, 89, '2019-03-20 15:08:24.000000', 'A8N5183261146'),
(179, 92, '2019-03-20 15:03:09.000000', 'A8N5183261146'),
(180, 84, '2019-03-20 14:52:42.000000', 'A8N5183261146'),
(181, 85, '2019-03-20 14:52:06.000000', 'A8N5183261146'),
(182, 85, '2019-03-20 14:45:43.000000', 'A8N5183261146'),
(183, 82, '2019-03-20 14:32:58.000000', 'A8N5183261146'),
(184, 82, '2019-03-20 14:32:41.000000', 'A8N5183261146'),
(185, 81, '2019-03-20 14:27:53.000000', 'A8N5183261146'),
(186, 1, '2019-03-20 14:27:45.000000', 'A8N5183261146'),
(187, 73, '2019-03-20 14:16:24.000000', 'A8N5183261146'),
(188, 73, '2019-03-20 14:16:18.000000', 'A8N5183261146'),
(189, 92, '2019-03-20 14:16:04.000000', 'A8N5183261146'),
(190, 81, '2019-03-20 14:09:06.000000', 'A8N5183261146'),
(191, 88, '2019-03-20 10:58:46.000000', 'A8N5183261146'),
(192, 91, '2019-03-20 10:15:39.000000', 'A8N5183261146'),
(193, 85, '2019-03-20 10:15:08.000000', 'A8N5183261146'),
(194, 84, '2019-03-20 10:01:59.000000', 'A8N5183261146'),
(195, 73, '2019-03-20 09:58:48.000000', 'A8N5183261146'),
(196, 1, '2019-03-20 09:57:47.000000', 'A8N5183261146'),
(197, 90, '2019-03-20 09:56:09.000000', 'A8N5183261146'),
(198, 86, '2019-03-20 09:52:29.000000', 'A8N5183261146'),
(199, 92, '2019-03-20 09:43:43.000000', 'A8N5183261146'),
(200, 81, '2019-03-20 09:39:45.000000', 'A8N5183261146'),
(201, 89, '2019-03-20 09:39:36.000000', 'A8N5183261146'),
(202, 73, '2019-03-19 20:15:33.000000', 'A8N5183261146'),
(203, 85, '2019-03-19 20:15:22.000000', 'A8N5183261146'),
(204, 81, '2019-03-19 20:15:15.000000', 'A8N5183261146'),
(205, 88, '2019-03-19 20:14:30.000000', 'A8N5183261146'),
(206, 84, '2019-03-19 20:04:49.000000', 'A8N5183261146'),
(207, 92, '2019-03-19 20:04:44.000000', 'A8N5183261146'),
(208, 90, '2019-03-19 20:01:13.000000', 'A8N5183261146'),
(209, 91, '2019-03-19 20:01:04.000000', 'A8N5183261146'),
(210, 86, '2019-03-19 20:00:24.000000', 'A8N5183261146'),
(211, 1, '2019-03-19 20:00:10.000000', 'A8N5183261146'),
(212, 89, '2019-03-19 19:04:49.000000', 'A8N5183261146'),
(213, 85, '2019-03-19 17:15:12.000000', 'A8N5183261146'),
(214, 85, '2019-03-19 17:12:26.000000', 'A8N5183261146'),
(215, 91, '2019-03-19 16:33:32.000000', 'A8N5183261146'),
(216, 91, '2019-03-19 16:31:35.000000', 'A8N5183261146'),
(217, 88, '2019-03-19 16:29:09.000000', 'A8N5183261146'),
(218, 84, '2019-03-19 16:28:22.000000', 'A8N5183261146'),
(219, 90, '2019-03-19 16:23:34.000000', 'A8N5183261146'),
(220, 90, '2019-03-19 16:20:02.000000', 'A8N5183261146'),
(221, 86, '2019-03-19 16:06:03.000000', 'A8N5183261146'),
(222, 1, '2019-03-19 15:26:27.000000', 'A8N5183261146'),
(223, 84, '2019-03-19 15:25:48.000000', 'A8N5183261146'),
(224, 86, '2019-03-19 15:19:49.000000', 'A8N5183261146'),
(225, 89, '2019-03-19 15:19:43.000000', 'A8N5183261146'),
(226, 89, '2019-03-19 15:09:09.000000', 'A8N5183261146'),
(227, 81, '2019-03-19 14:58:32.000000', 'A8N5183261146'),
(228, 88, '2019-03-19 14:58:23.000000', 'A8N5183261146'),
(229, 92, '2019-03-19 14:50:44.000000', 'A8N5183261146'),
(230, 81, '2019-03-19 14:49:58.000000', 'A8N5183261146'),
(231, 73, '2019-03-19 14:28:28.000000', 'A8N5183261146'),
(232, 73, '2019-03-19 14:28:24.000000', 'A8N5183261146'),
(233, 1, '2019-03-19 14:28:17.000000', 'A8N5183261146'),
(234, 82, '2019-03-19 14:06:08.000000', 'A8N5183261146'),
(235, 92, '2019-03-19 14:05:46.000000', 'A8N5183261146'),
(236, 82, '2019-03-19 14:05:43.000000', 'A8N5183261146'),
(237, 88, '2019-03-19 10:59:36.000000', 'A8N5183261146'),
(238, 82, '2019-03-19 10:33:36.000000', 'A8N5183261146'),
(239, 85, '2019-03-19 10:21:07.000000', 'A8N5183261146'),
(240, 91, '2019-03-19 10:04:10.000000', 'A8N5183261146'),
(241, 90, '2019-03-19 10:01:00.000000', 'A8N5183261146'),
(242, 73, '2019-03-19 10:00:10.000000', 'A8N5183261146'),
(243, 1, '2019-03-19 09:56:04.000000', 'A8N5183261146'),
(244, 86, '2019-03-19 09:55:46.000000', 'A8N5183261146'),
(245, 92, '2019-03-19 09:41:52.000000', 'A8N5183261146'),
(246, 81, '2019-03-19 09:41:16.000000', 'A8N5183261146'),
(247, 84, '2019-03-19 09:37:15.000000', 'A8N5183261146'),
(248, 89, '2019-03-19 09:36:47.000000', 'A8N5183261146'),
(249, 91, '2019-03-18 20:07:32.000000', 'A8N5183261146'),
(250, 90, '2019-03-18 20:07:28.000000', 'A8N5183261146'),
(251, 84, '2019-03-18 20:03:39.000000', 'A8N5183261146'),
(252, 73, '2019-03-18 20:03:37.000000', 'A8N5183261146'),
(253, 85, '2019-03-18 20:03:26.000000', 'A8N5183261146'),
(254, 81, '2019-03-18 20:03:20.000000', 'A8N5183261146'),
(255, 86, '2019-03-18 20:03:10.000000', 'A8N5183261146'),
(256, 88, '2019-03-18 20:02:23.000000', 'A8N5183261146'),
(257, 88, '2019-03-18 20:02:17.000000', 'A8N5183261146'),
(258, 88, '2019-03-18 20:02:13.000000', 'A8N5183261146'),
(259, 88, '2019-03-18 20:02:10.000000', 'A8N5183261146'),
(260, 82, '2019-03-18 20:00:21.000000', 'A8N5183261146'),
(261, 1, '2019-03-18 20:00:12.000000', 'A8N5183261146'),
(262, 89, '2019-03-18 19:15:20.000000', 'A8N5183261146'),
(263, 90, '2019-03-18 16:36:38.000000', 'A8N5183261146'),
(264, 85, '2019-03-18 16:25:26.000000', 'A8N5183261146'),
(265, 86, '2019-03-18 15:58:37.000000', 'A8N5183261146'),
(266, 1, '2019-03-18 15:51:56.000000', 'A8N5183261146'),
(267, 84, '2019-03-18 15:51:37.000000', 'A8N5183261146'),
(268, 90, '2019-03-18 15:45:37.000000', 'A8N5183261146'),
(269, 85, '2019-03-18 15:15:07.000000', 'A8N5183261146'),
(270, 89, '2019-03-18 14:56:59.000000', 'A8N5183261146'),
(271, 86, '2019-03-18 14:56:35.000000', 'A8N5183261146'),
(272, 89, '2019-03-18 14:56:30.000000', 'A8N5183261146'),
(273, 91, '2019-03-18 14:52:52.000000', 'A8N5183261146'),
(274, 91, '2019-03-18 14:51:52.000000', 'A8N5183261146'),
(275, 84, '2019-03-18 14:48:12.000000', 'A8N5183261146'),
(276, 82, '2019-03-18 14:47:21.000000', 'A8N5183261146'),
(277, 1, '2019-03-18 14:47:03.000000', 'A8N5183261146'),
(278, 81, '2019-03-18 14:46:56.000000', 'A8N5183261146'),
(279, 82, '2019-03-18 14:46:50.000000', 'A8N5183261146'),
(280, 73, '2019-03-18 14:44:10.000000', 'A8N5183261146'),
(281, 73, '2019-03-18 14:43:55.000000', 'A8N5183261146'),
(282, 81, '2019-03-18 14:43:45.000000', 'A8N5183261146'),
(283, 88, '2019-03-18 12:04:49.000000', 'A8N5183261146'),
(284, 85, '2019-03-18 10:19:45.000000', 'A8N5183261146'),
(285, 82, '2019-03-18 10:10:10.000000', 'A8N5183261146'),
(286, 90, '2019-03-18 09:59:14.000000', 'A8N5183261146'),
(287, 1, '2019-03-18 09:57:55.000000', 'A8N5183261146'),
(288, 86, '2019-03-18 09:57:38.000000', 'A8N5183261146'),
(289, 73, '2019-03-18 09:56:55.000000', 'A8N5183261146'),
(290, 92, '2019-03-18 09:42:26.000000', 'A8N5183261146'),
(291, 81, '2019-03-18 09:36:59.000000', 'A8N5183261146'),
(292, 84, '2019-03-18 09:34:18.000000', 'A8N5183261146'),
(293, 89, '2019-03-18 09:34:08.000000', 'A8N5183261146'),
(294, 73, '2019-03-16 20:10:42.000000', 'A8N5183261146'),
(295, 85, '2019-03-16 20:10:30.000000', 'A8N5183261146'),
(296, 82, '2019-03-16 20:10:21.000000', 'A8N5183261146'),
(297, 90, '2019-03-16 20:02:50.000000', 'A8N5183261146'),
(298, 81, '2019-03-16 20:02:32.000000', 'A8N5183261146'),
(299, 86, '2019-03-16 20:02:27.000000', 'A8N5183261146'),
(300, 88, '2019-03-16 20:02:16.000000', 'A8N5183261146'),
(301, 91, '2019-03-16 20:02:09.000000', 'A8N5183261146'),
(302, 92, '2019-03-16 20:02:00.000000', 'A8N5183261146'),
(303, 84, '2019-03-16 20:01:51.000000', 'A8N5183261146'),
(304, 1, '2019-03-16 20:00:04.000000', 'A8N5183261146'),
(305, 89, '2019-03-16 19:22:20.000000', 'A8N5183261146'),
(306, 91, '2019-03-16 17:08:26.000000', 'A8N5183261146'),
(307, 91, '2019-03-16 17:07:27.000000', 'A8N5183261146'),
(308, 88, '2019-03-16 16:47:02.000000', 'A8N5183261146'),
(309, 88, '2019-03-16 16:46:57.000000', 'A8N5183261146'),
(310, 85, '2019-03-16 15:46:10.000000', 'A8N5183261146'),
(311, 89, '2019-03-16 15:38:10.000000', 'A8N5183261146'),
(312, 86, '2019-03-16 15:38:01.000000', 'A8N5183261146'),
(313, 85, '2019-03-16 15:37:37.000000', 'A8N5183261146'),
(314, 89, '2019-03-16 15:36:00.000000', 'A8N5183261146'),
(315, 73, '2019-03-16 15:35:44.000000', 'A8N5183261146'),
(316, 86, '2019-03-16 15:33:35.000000', 'A8N5183261146'),
(317, 90, '2019-03-16 15:31:38.000000', 'A8N5183261146'),
(318, 84, '2019-03-16 15:29:34.000000', 'A8N5183261146'),
(319, 90, '2019-03-16 15:29:13.000000', 'A8N5183261146'),
(320, 84, '2019-03-16 15:28:29.000000', 'A8N5183261146'),
(321, 1, '2019-03-16 15:12:13.000000', 'A8N5183261146'),
(322, 92, '2019-03-16 14:52:21.000000', 'A8N5183261146'),
(323, 82, '2019-03-16 14:33:49.000000', 'A8N5183261146'),
(324, 82, '2019-03-16 14:33:22.000000', 'A8N5183261146'),
(325, 81, '2019-03-16 14:33:12.000000', 'A8N5183261146'),
(326, 81, '2019-03-16 14:32:53.000000', 'A8N5183261146'),
(327, 1, '2019-03-16 14:15:17.000000', 'A8N5183261146'),
(328, 92, '2019-03-16 14:05:41.000000', 'A8N5183261146'),
(329, 88, '2019-03-16 10:58:29.000000', 'A8N5183261146'),
(330, 85, '2019-03-16 10:17:48.000000', 'A8N5183261146'),
(331, 91, '2019-03-16 10:04:32.000000', 'A8N5183261146'),
(332, 90, '2019-03-16 10:03:27.000000', 'A8N5183261146'),
(333, 82, '2019-03-16 10:03:09.000000', 'A8N5183261146'),
(334, 1, '2019-03-16 09:57:41.000000', 'A8N5183261146'),
(335, 73, '2019-03-16 09:57:32.000000', 'A8N5183261146'),
(336, 84, '2019-03-16 09:52:22.000000', 'A8N5183261146'),
(337, 86, '2019-03-16 09:46:21.000000', 'A8N5183261146'),
(338, 92, '2019-03-16 09:43:16.000000', 'A8N5183261146'),
(339, 92, '2019-03-16 09:43:15.000000', 'A8N5183261146'),
(340, 81, '2019-03-16 09:43:01.000000', 'A8N5183261146'),
(341, 89, '2019-03-16 09:41:51.000000', 'A8N5183261146'),
(342, 73, '2019-03-14 20:12:22.000000', 'A8N5183261146'),
(343, 85, '2019-03-14 20:09:38.000000', 'A8N5183261146'),
(344, 92, '2019-03-14 20:08:45.000000', 'A8N5183261146'),
(345, 91, '2019-03-14 20:05:17.000000', 'A8N5183261146'),
(346, 81, '2019-03-14 20:05:06.000000', 'A8N5183261146'),
(347, 84, '2019-03-14 20:05:02.000000', 'A8N5183261146'),
(348, 82, '2019-03-14 20:01:16.000000', 'A8N5183261146'),
(349, 1, '2019-03-14 20:00:14.000000', 'A8N5183261146'),
(350, 89, '2019-03-14 19:40:33.000000', 'A8N5183261146'),
(351, 88, '2019-03-14 16:48:07.000000', 'A8N5183261146'),
(352, 85, '2019-03-14 16:41:22.000000', 'A8N5183261146'),
(353, 90, '2019-03-14 16:40:25.000000', 'A8N5183261146'),
(354, 1, '2019-03-14 16:09:23.000000', 'A8N5183261146'),
(355, 1, '2019-03-14 16:01:18.000000', 'A8N5183261146'),
(356, 73, '2019-03-14 15:38:42.000000', 'A8N5183261146'),
(357, 92, '2019-03-14 15:36:24.000000', 'A8N5183261146'),
(358, 88, '2019-03-14 15:31:22.000000', 'A8N5183261146'),
(359, 85, '2019-03-14 15:22:06.000000', 'A8N5183261146'),
(360, 73, '2019-03-14 15:20:46.000000', 'A8N5183261146'),
(361, 89, '2019-03-14 14:51:24.000000', 'A8N5183261146'),
(362, 89, '2019-03-14 14:49:54.000000', 'A8N5183261146'),
(363, 92, '2019-03-14 14:45:01.000000', 'A8N5183261146'),
(364, 91, '2019-03-14 14:40:04.000000', 'A8N5183261146'),
(365, 91, '2019-03-14 14:38:49.000000', 'A8N5183261146'),
(366, 81, '2019-03-14 14:24:08.000000', 'A8N5183261146'),
(367, 81, '2019-03-14 14:22:37.000000', 'A8N5183261146'),
(368, 82, '2019-03-14 13:14:09.000000', 'A8N5183261146'),
(369, 82, '2019-03-14 13:14:04.000000', 'A8N5183261146'),
(370, 88, '2019-03-14 10:41:57.000000', 'A8N5183261146'),
(371, 91, '2019-03-14 10:19:10.000000', 'A8N5183261146'),
(372, 85, '2019-03-14 10:13:07.000000', 'A8N5183261146'),
(373, 1, '2019-03-14 10:03:13.000000', 'A8N5183261146'),
(374, 90, '2019-03-14 10:01:12.000000', 'A8N5183261146'),
(375, 82, '2019-03-14 09:57:03.000000', 'A8N5183261146'),
(376, 92, '2019-03-14 09:49:40.000000', 'A8N5183261146'),
(377, 81, '2019-03-14 09:37:04.000000', 'A8N5183261146'),
(378, 89, '2019-03-14 09:36:20.000000', 'A8N5183261146'),
(379, 92, '2019-03-13 20:09:01.000000', 'A8N5183261146'),
(380, 73, '2019-03-13 20:08:39.000000', 'A8N5183261146'),
(381, 91, '2019-03-13 20:07:50.000000', 'A8N5183261146'),
(382, 85, '2019-03-13 20:07:18.000000', 'A8N5183261146'),
(383, 81, '2019-03-13 20:07:14.000000', 'A8N5183261146'),
(384, 84, '2019-03-13 20:07:02.000000', 'A8N5183261146'),
(385, 82, '2019-03-13 20:00:24.000000', 'A8N5183261146'),
(386, 1, '2019-03-13 20:00:10.000000', 'A8N5183261146'),
(387, 89, '2019-03-13 19:11:50.000000', 'A8N5183261146'),
(388, 88, '2019-03-13 16:17:53.000000', 'A8N5183261146'),
(389, 85, '2019-03-13 16:16:34.000000', 'A8N5183261146'),
(390, 91, '2019-03-13 16:09:12.000000', 'A8N5183261146'),
(391, 91, '2019-03-13 16:08:52.000000', 'A8N5183261146'),
(392, 84, '2019-03-13 15:45:57.000000', 'A8N5183261146'),
(393, 1, '2019-03-13 15:19:26.000000', 'A8N5183261146'),
(394, 88, '2019-03-13 15:11:47.000000', 'A8N5183261146'),
(395, 90, '2019-03-13 15:08:44.000000', 'A8N5183261146'),
(396, 92, '2019-03-13 15:05:55.000000', 'A8N5183261146'),
(397, 85, '2019-03-13 15:00:48.000000', 'A8N5183261146'),
(398, 89, '2019-03-13 14:54:10.000000', 'A8N5183261146'),
(399, 84, '2019-03-13 14:54:06.000000', 'A8N5183261146'),
(400, 89, '2019-03-13 14:52:17.000000', 'A8N5183261146'),
(401, 81, '2019-03-13 14:52:05.000000', 'A8N5183261146'),
(402, 81, '2019-03-13 14:51:58.000000', 'A8N5183261146'),
(403, 90, '2019-03-13 14:22:27.000000', 'A8N5183261146'),
(404, 1, '2019-03-13 14:21:03.000000', 'A8N5183261146'),
(405, 92, '2019-03-13 14:15:23.000000', 'A8N5183261146'),
(406, 82, '2019-03-13 14:06:11.000000', 'A8N5183261146'),
(407, 82, '2019-03-13 14:06:00.000000', 'A8N5183261146'),
(408, 88, '2019-03-13 10:48:50.000000', 'A8N5183261146'),
(409, 85, '2019-03-13 10:21:27.000000', 'A8N5183261146'),
(410, 82, '2019-03-13 10:16:38.000000', 'A8N5183261146'),
(411, 84, '2019-03-13 10:10:08.000000', 'A8N5183261146'),
(412, 1, '2019-03-13 10:09:17.000000', 'A8N5183261146'),
(413, 90, '2019-03-13 10:01:18.000000', 'A8N5183261146'),
(414, 91, '2019-03-13 09:59:18.000000', 'A8N5183261146'),
(415, 89, '2019-03-13 09:43:14.000000', 'A8N5183261146'),
(416, 81, '2019-03-13 09:43:05.000000', 'A8N5183261146'),
(417, 92, '2019-03-13 09:43:00.000000', 'A8N5183261146'),
(418, 85, '2019-03-12 20:07:10.000000', 'A8N5183261146'),
(419, 81, '2019-03-12 20:06:45.000000', 'A8N5183261146'),
(420, 92, '2019-03-12 20:05:45.000000', 'A8N5183261146'),
(421, 84, '2019-03-12 20:04:32.000000', 'A8N5183261146'),
(422, 90, '2019-03-12 20:04:27.000000', 'A8N5183261146'),
(423, 88, '2019-03-12 20:04:12.000000', 'A8N5183261146'),
(424, 91, '2019-03-12 20:02:26.000000', 'A8N5183261146'),
(425, 82, '2019-03-12 20:00:30.000000', 'A8N5183261146'),
(426, 1, '2019-03-12 20:00:09.000000', 'A8N5183261146'),
(427, 89, '2019-03-12 19:12:23.000000', 'A8N5183261146'),
(428, 92, '2019-03-12 15:45:08.000000', 'A8N5183261146'),
(429, 89, '2019-03-12 15:18:05.000000', 'A8N5183261146'),
(430, 89, '2019-03-12 15:17:14.000000', 'A8N5183261146'),
(431, 1, '2019-03-12 15:15:35.000000', 'A8N5183261146'),
(432, 1, '2019-03-12 15:14:19.000000', 'A8N5183261146'),
(433, 85, '2019-03-12 15:14:11.000000', 'A8N5183261146'),
(434, 85, '2019-03-12 15:13:58.000000', 'A8N5183261146'),
(435, 85, '2019-03-12 15:13:44.000000', 'A8N5183261146'),
(436, 84, '2019-03-12 15:12:39.000000', 'A8N5183261146'),
(437, 84, '2019-03-12 15:11:54.000000', 'A8N5183261146'),
(438, 92, '2019-03-12 14:54:05.000000', 'A8N5183261146'),
(439, 81, '2019-03-12 14:50:09.000000', 'A8N5183261146'),
(440, 81, '2019-03-12 14:50:05.000000', 'A8N5183261146'),
(441, 88, '2019-03-12 14:08:19.000000', 'A8N5183261146'),
(442, 82, '2019-03-12 14:08:14.000000', 'A8N5183261146'),
(443, 88, '2019-03-12 14:07:54.000000', 'A8N5183261146'),
(444, 82, '2019-03-12 13:27:44.000000', 'A8N5183261146'),
(445, 98, '2019-03-12 13:01:34.000000', 'A8N5183261146'),
(446, 3, '2019-03-12 13:00:31.000000', 'A8N5183261146'),
(447, 88, '2019-03-12 10:39:59.000000', 'A8N5183261146'),
(448, 85, '2019-03-12 10:22:04.000000', 'A8N5183261146'),
(449, 82, '2019-03-12 10:07:49.000000', 'A8N5183261146'),
(450, 73, '2019-03-12 09:59:59.000000', 'A8N5183261146'),
(451, 83, '2019-03-12 09:58:41.000000', 'A8N5183261146'),
(452, 1, '2019-03-12 09:58:41.000000', 'A8N5183261146'),
(453, 90, '2019-03-12 09:54:22.000000', 'A8N5183261146'),
(454, 84, '2019-03-12 09:51:08.000000', 'A8N5183261146'),
(455, 92, '2019-03-12 09:47:15.000000', 'A8N5183261146'),
(456, 91, '2019-03-12 09:44:25.000000', 'A8N5183261146'),
(457, 89, '2019-03-12 09:41:58.000000', 'A8N5183261146'),
(458, 81, '2019-03-12 09:41:19.000000', 'A8N5183261146'),
(459, 88, '2019-03-11 20:37:25.000000', 'A8N5183261146'),
(460, 73, '2019-03-11 20:36:14.000000', 'A8N5183261146'),
(461, 85, '2019-03-11 20:36:05.000000', 'A8N5183261146'),
(462, 92, '2019-03-11 20:35:58.000000', 'A8N5183261146'),
(463, 81, '2019-03-11 20:35:53.000000', 'A8N5183261146'),
(464, 84, '2019-03-11 20:35:47.000000', 'A8N5183261146'),
(465, 90, '2019-03-11 20:35:39.000000', 'A8N5183261146'),
(466, 1, '2019-03-11 20:18:47.000000', 'A8N5183261146'),
(467, 83, '2019-03-11 20:18:47.000000', 'A8N5183261146'),
(468, 82, '2019-03-11 20:00:30.000000', 'A8N5183261146'),
(469, 89, '2019-03-11 19:00:13.000000', 'A8N5183261146'),
(470, 73, '2019-03-11 16:34:24.000000', 'A8N5183261146'),
(471, 89, '2019-03-11 16:34:11.000000', 'A8N5183261146'),
(472, 73, '2019-03-11 16:31:42.000000', 'A8N5183261146'),
(473, 89, '2019-03-11 16:30:53.000000', 'A8N5183261146'),
(474, 85, '2019-03-11 16:12:36.000000', 'A8N5183261146'),
(475, 84, '2019-03-11 16:00:33.000000', 'A8N5183261146'),
(476, 83, '2019-03-11 15:40:40.000000', 'A8N5183261146'),
(477, 1, '2019-03-11 15:40:40.000000', 'A8N5183261146'),
(478, 85, '2019-03-11 15:04:30.000000', 'A8N5183261146'),
(479, 84, '2019-03-11 14:58:58.000000', 'A8N5183261146'),
(480, 92, '2019-03-11 14:52:34.000000', 'A8N5183261146'),
(481, 81, '2019-03-11 14:44:51.000000', 'A8N5183261146'),
(482, 81, '2019-03-11 14:44:47.000000', 'A8N5183261146'),
(483, 1, '2019-03-11 14:43:02.000000', 'A8N5183261146'),
(484, 83, '2019-03-11 14:43:02.000000', 'A8N5183261146'),
(485, 82, '2019-03-11 14:00:24.000000', 'A8N5183261146'),
(486, 92, '2019-03-11 14:00:16.000000', 'A8N5183261146'),
(487, 82, '2019-03-11 14:00:11.000000', 'A8N5183261146'),
(488, 88, '2019-03-11 10:34:15.000000', 'A8N5183261146'),
(489, 85, '2019-03-11 10:19:33.000000', 'A8N5183261146'),
(490, 90, '2019-03-11 09:58:13.000000', 'A8N5183261146'),
(491, 82, '2019-03-11 09:56:54.000000', 'A8N5183261146'),
(492, 73, '2019-03-11 09:56:17.000000', 'A8N5183261146'),
(493, 1, '2019-03-11 09:54:49.000000', 'A8N5183261146'),
(494, 83, '2019-03-11 09:54:49.000000', 'A8N5183261146'),
(495, 92, '2019-03-11 09:47:40.000000', 'A8N5183261146'),
(496, 84, '2019-03-11 09:38:06.000000', 'A8N5183261146'),
(497, 81, '2019-03-11 09:29:18.000000', 'A8N5183261146'),
(498, 89, '2019-03-11 09:29:11.000000', 'A8N5183261146'),
(499, 84, '2019-03-10 20:09:16.000000', 'A8N5183261146'),
(500, 81, '2019-03-10 20:09:12.000000', 'A8N5183261146'),
(501, 88, '2019-03-10 20:07:32.000000', 'A8N5183261146'),
(502, 85, '2019-03-10 20:06:36.000000', 'A8N5183261146'),
(503, 3, '2019-03-10 20:04:03.000000', 'A8N5183261146'),
(504, 73, '2019-03-10 20:03:53.000000', 'A8N5183261146'),
(505, 92, '2019-03-10 20:03:38.000000', 'A8N5183261146'),
(506, 82, '2019-03-10 20:02:07.000000', 'A8N5183261146'),
(507, 1, '2019-03-10 20:00:31.000000', 'A8N5183261146'),
(508, 83, '2019-03-10 20:00:31.000000', 'A8N5183261146'),
(509, 89, '2019-03-10 19:51:26.000000', 'A8N5183261146'),
(510, 90, '2019-03-10 19:46:18.000000', 'A8N5183261146'),
(511, 89, '2019-03-10 17:35:06.000000', 'A8N5183261146'),
(512, 89, '2019-03-10 17:34:58.000000', 'A8N5183261146'),
(513, 88, '2019-03-10 16:15:21.000000', 'A8N5183261146'),
(514, 84, '2019-03-10 15:54:20.000000', 'A8N5183261146'),
(515, 73, '2019-03-10 15:28:08.000000', 'A8N5183261146'),
(516, 1, '2019-03-10 15:27:42.000000', 'A8N5183261146'),
(517, 83, '2019-03-10 15:27:42.000000', 'A8N5183261146'),
(518, 82, '2019-03-10 15:15:44.000000', 'A8N5183261146'),
(519, 83, '2019-03-10 15:15:37.000000', 'A8N5183261146'),
(520, 1, '2019-03-10 15:15:37.000000', 'A8N5183261146'),
(521, 82, '2019-03-10 15:15:29.000000', 'A8N5183261146'),
(522, 73, '2019-03-10 15:15:21.000000', 'A8N5183261146'),
(523, 85, '2019-03-10 15:15:10.000000', 'A8N5183261146'),
(524, 85, '2019-03-10 15:15:06.000000', 'A8N5183261146'),
(525, 84, '2019-03-10 15:07:21.000000', 'A8N5183261146'),
(526, 92, '2019-03-10 14:57:17.000000', 'A8N5183261146'),
(527, 88, '2019-03-10 14:51:17.000000', 'A8N5183261146'),
(528, 81, '2019-03-10 14:30:42.000000', 'A8N5183261146'),
(529, 81, '2019-03-10 14:30:38.000000', 'A8N5183261146'),
(530, 92, '2019-03-10 14:02:59.000000', 'A8N5183261146'),
(531, 88, '2019-03-10 10:47:10.000000', 'A8N5183261146'),
(532, 85, '2019-03-10 10:18:42.000000', 'A8N5183261146'),
(533, 82, '2019-03-10 10:09:48.000000', 'A8N5183261146'),
(534, 3, '2019-03-10 10:04:52.000000', 'A8N5183261146'),
(535, 73, '2019-03-10 10:04:47.000000', 'A8N5183261146'),
(536, 84, '2019-03-10 10:00:14.000000', 'A8N5183261146'),
(537, 90, '2019-03-10 09:59:09.000000', 'A8N5183261146'),
(538, 83, '2019-03-10 09:57:38.000000', 'A8N5183261146'),
(539, 1, '2019-03-10 09:57:38.000000', 'A8N5183261146'),
(540, 92, '2019-03-10 09:44:14.000000', 'A8N5183261146'),
(541, 81, '2019-03-10 09:35:41.000000', 'A8N5183261146'),
(542, 89, '2019-03-10 09:34:04.000000', 'A8N5183261146'),
(543, 81, '2019-03-09 20:07:41.000000', 'A8N5183261146'),
(544, 88, '2019-03-09 20:02:53.000000', 'A8N5183261146'),
(545, 84, '2019-03-09 20:01:27.000000', 'A8N5183261146'),
(546, 85, '2019-03-09 20:01:24.000000', 'A8N5183261146'),
(547, 3, '2019-03-09 20:00:50.000000', 'A8N5183261146'),
(548, 73, '2019-03-09 20:00:46.000000', 'A8N5183261146'),
(549, 86, '2019-03-09 20:00:28.000000', 'A8N5183261146'),
(550, 92, '2019-03-09 20:00:21.000000', 'A8N5183261146'),
(551, 82, '2019-03-09 20:00:07.000000', 'A8N5183261146'),
(552, 1, '2019-03-09 19:55:07.000000', 'A8N5183261146'),
(553, 83, '2019-03-09 19:55:07.000000', 'A8N5183261146'),
(554, 89, '2019-03-09 19:00:08.000000', 'A8N5183261146'),
(555, 88, '2019-03-09 18:11:47.000000', 'A8N5183261146'),
(556, 88, '2019-03-09 18:11:45.000000', 'A8N5183261146'),
(557, 82, '2019-03-09 16:33:59.000000', 'A8N5183261146'),
(558, 82, '2019-03-09 16:33:55.000000', 'A8N5183261146'),
(559, 84, '2019-03-09 16:03:42.000000', 'A8N5183261146'),
(560, 85, '2019-03-09 16:02:52.000000', 'A8N5183261146'),
(561, 86, '2019-03-09 15:51:59.000000', 'A8N5183261146'),
(562, 73, '2019-03-09 15:25:30.000000', 'A8N5183261146'),
(563, 73, '2019-03-09 15:17:37.000000', 'A8N5183261146'),
(564, 92, '2019-03-09 14:57:14.000000', 'A8N5183261146'),
(565, 85, '2019-03-09 14:56:56.000000', 'A8N5183261146'),
(566, 84, '2019-03-09 14:52:13.000000', 'A8N5183261146'),
(567, 86, '2019-03-09 14:52:08.000000', 'A8N5183261146'),
(568, 81, '2019-03-09 14:16:07.000000', 'A8N5183261146'),
(569, 81, '2019-03-09 14:04:13.000000', 'A8N5183261146'),
(570, 92, '2019-03-09 14:04:07.000000', 'A8N5183261146'),
(571, 82, '2019-03-09 11:37:45.000000', 'A8N5183261146'),
(572, 88, '2019-03-09 10:45:22.000000', 'A8N5183261146'),
(573, 85, '2019-03-09 10:30:13.000000', 'A8N5183261146'),
(574, 82, '2019-03-09 10:24:35.000000', 'A8N5183261146'),
(575, 86, '2019-03-09 10:01:01.000000', 'A8N5183261146'),
(576, 90, '2019-03-09 09:58:38.000000', 'A8N5183261146'),
(577, 83, '2019-03-09 09:56:38.000000', 'A8N5183261146'),
(578, 1, '2019-03-09 09:56:38.000000', 'A8N5183261146'),
(579, 92, '2019-03-09 09:42:14.000000', 'A8N5183261146'),
(580, 84, '2019-03-09 09:39:21.000000', 'A8N5183261146'),
(581, 81, '2019-03-09 09:37:14.000000', 'A8N5183261146'),
(582, 89, '2019-03-09 09:37:11.000000', 'A8N5183261146'),
(583, 73, '2019-03-07 20:01:14.000000', 'A8N5183261146'),
(584, 86, '2019-03-07 20:00:42.000000', 'A8N5183261146'),
(585, 84, '2019-03-07 20:00:27.000000', 'A8N5183261146'),
(586, 92, '2019-03-07 20:00:23.000000', 'A8N5183261146'),
(587, 88, '2019-03-07 20:00:09.000000', 'A8N5183261146'),
(588, 81, '2019-03-07 19:56:49.000000', 'A8N5183261146'),
(589, 1, '2019-03-07 19:54:13.000000', 'A8N5183261146'),
(590, 83, '2019-03-07 19:54:13.000000', 'A8N5183261146'),
(591, 83, '2019-03-07 19:54:07.000000', 'A8N5183261146'),
(592, 1, '2019-03-07 19:54:07.000000', 'A8N5183261146'),
(593, 89, '2019-03-07 18:57:21.000000', 'A8N5183261146'),
(594, 86, '2019-03-07 16:38:25.000000', 'A8N5183261146'),
(595, 88, '2019-03-07 15:44:21.000000', 'A8N5183261146'),
(596, 86, '2019-03-07 15:42:47.000000', 'A8N5183261146'),
(597, 92, '2019-03-07 15:14:35.000000', 'A8N5183261146'),
(598, 84, '2019-03-07 14:57:26.000000', 'A8N5183261146'),
(599, 84, '2019-03-07 14:48:29.000000', 'A8N5183261146'),
(600, 88, '2019-03-07 14:22:33.000000', 'A8N5183261146'),
(601, 82, '2019-03-07 14:22:30.000000', 'A8N5183261146'),
(602, 82, '2019-03-07 14:22:24.000000', 'A8N5183261146'),
(603, 73, '2019-03-07 14:22:00.000000', 'A8N5183261146'),
(604, 81, '2019-03-07 14:21:40.000000', 'A8N5183261146'),
(605, 92, '2019-03-07 14:20:36.000000', 'A8N5183261146'),
(606, 73, '2019-03-07 14:18:23.000000', 'A8N5183261146'),
(607, 81, '2019-03-07 14:16:47.000000', 'A8N5183261146'),
(608, 81, '2019-03-07 14:16:35.000000', 'A8N5183261146'),
(609, 82, '2019-03-07 11:43:09.000000', 'A8N5183261146'),
(610, 88, '2019-03-07 11:07:19.000000', 'A8N5183261146'),
(611, 90, '2019-03-07 10:02:11.000000', 'A8N5183261146'),
(612, 73, '2019-03-07 10:01:20.000000', 'A8N5183261146'),
(613, 86, '2019-03-07 09:58:04.000000', 'A8N5183261146'),
(614, 83, '2019-03-07 09:56:26.000000', 'A8N5183261146'),
(615, 1, '2019-03-07 09:56:26.000000', 'A8N5183261146'),
(616, 83, '2019-03-07 09:54:42.000000', 'A8N5183261146'),
(617, 1, '2019-03-07 09:54:42.000000', 'A8N5183261146'),
(618, 84, '2019-03-07 09:50:11.000000', 'A8N5183261146'),
(619, 92, '2019-03-07 09:34:50.000000', 'A8N5183261146'),
(620, 89, '2019-03-07 09:26:48.000000', 'A8N5183261146'),
(621, 81, '2019-03-07 09:26:29.000000', 'A8N5183261146'),
(622, 86, '2019-03-06 19:57:32.000000', 'A8N5183261146'),
(623, 88, '2019-03-06 19:55:37.000000', 'A8N5183261146'),
(624, 81, '2019-03-06 19:53:28.000000', 'A8N5183261146'),
(625, 84, '2019-03-06 19:53:06.000000', 'A8N5183261146'),
(626, 73, '2019-03-06 19:52:57.000000', 'A8N5183261146'),
(627, 90, '2019-03-06 19:52:24.000000', 'A8N5183261146'),
(628, 1, '2019-03-06 19:52:11.000000', 'A8N5183261146'),
(629, 83, '2019-03-06 19:52:11.000000', 'A8N5183261146'),
(630, 89, '2019-03-06 19:00:04.000000', 'A8N5183261146'),
(631, 86, '2019-03-06 17:07:54.000000', 'A8N5183261146'),
(632, 84, '2019-03-06 16:56:40.000000', 'A8N5183261146'),
(633, 82, '2019-03-06 16:55:08.000000', 'A8N5183261146'),
(634, 86, '2019-03-06 16:06:12.000000', 'A8N5183261146'),
(635, 82, '2019-03-06 16:00:54.000000', 'A8N5183261146'),
(636, 82, '2019-03-06 16:00:48.000000', 'A8N5183261146'),
(637, 73, '2019-03-06 15:58:03.000000', 'A8N5183261146'),
(638, 73, '2019-03-06 15:57:25.000000', 'A8N5183261146'),
(639, 84, '2019-03-06 15:57:03.000000', 'A8N5183261146'),
(640, 81, '2019-03-06 15:43:07.000000', 'A8N5183261146'),
(641, 81, '2019-03-06 15:42:50.000000', 'A8N5183261146'),
(642, 88, '2019-03-06 15:33:11.000000', 'A8N5183261146'),
(643, 1, '2019-03-06 15:23:38.000000', 'A8N5183261146'),
(644, 83, '2019-03-06 15:23:38.000000', 'A8N5183261146'),
(645, 92, '2019-03-06 14:30:50.000000', 'A8N5183261146'),
(646, 1, '2019-03-06 14:24:51.000000', 'A8N5183261146'),
(647, 83, '2019-03-06 14:24:51.000000', 'A8N5183261146'),
(648, 88, '2019-03-06 14:23:32.000000', 'A8N5183261146'),
(649, 88, '2019-03-06 10:51:21.000000', 'A8N5183261146'),
(650, 82, '2019-03-06 10:51:16.000000', 'A8N5183261146'),
(651, 86, '2019-03-06 10:30:26.000000', 'A8N5183261146'),
(652, 3, '2019-03-06 10:01:11.000000', 'A8N5183261146'),
(653, 73, '2019-03-06 10:01:06.000000', 'A8N5183261146'),
(654, 83, '2019-03-06 09:54:43.000000', 'A8N5183261146'),
(655, 1, '2019-03-06 09:54:43.000000', 'A8N5183261146'),
(656, 84, '2019-03-06 09:48:49.000000', 'A8N5183261146'),
(657, 90, '2019-03-06 09:47:02.000000', 'A8N5183261146'),
(658, 92, '2019-03-06 09:43:58.000000', 'A8N5183261146'),
(659, 89, '2019-03-06 09:32:04.000000', 'A8N5183261146'),
(660, 81, '2019-03-06 09:30:37.000000', 'A8N5183261146'),
(661, 88, '2019-03-05 20:03:54.000000', 'A8N5183261146'),
(662, 81, '2019-03-05 20:03:03.000000', 'A8N5183261146'),
(663, 86, '2019-03-05 20:02:43.000000', 'A8N5183261146'),
(664, 84, '2019-03-05 20:01:36.000000', 'A8N5183261146'),
(665, 73, '2019-03-05 20:00:51.000000', 'A8N5183261146'),
(666, 92, '2019-03-05 20:00:08.000000', 'A8N5183261146'),
(667, 83, '2019-03-05 19:57:26.000000', 'A8N5183261146'),
(668, 1, '2019-03-05 19:57:26.000000', 'A8N5183261146'),
(669, 89, '2019-03-05 19:20:57.000000', 'A8N5183261146'),
(670, 82, '2019-03-05 17:23:30.000000', 'A8N5183261146'),
(671, 73, '2019-03-05 16:45:27.000000', 'A8N5183261146'),
(672, 73, '2019-03-05 16:44:21.000000', 'A8N5183261146'),
(673, 86, '2019-03-05 15:56:57.000000', 'A8N5183261146'),
(674, 84, '2019-03-05 15:53:53.000000', 'A8N5183261146'),
(675, 85, '2019-03-05 15:53:46.000000', 'A8N5183261146'),
(676, 85, '2019-03-05 15:51:39.000000', 'A8N5183261146'),
(677, 84, '2019-03-05 15:51:06.000000', 'A8N5183261146'),
(678, 84, '2019-03-05 15:50:56.000000', 'A8N5183261146'),
(679, 86, '2019-03-05 14:58:39.000000', 'A8N5183261146'),
(680, 92, '2019-03-05 14:56:14.000000', 'A8N5183261146'),
(681, 83, '2019-03-05 14:56:06.000000', 'A8N5183261146'),
(682, 1, '2019-03-05 14:56:06.000000', 'A8N5183261146'),
(683, 82, '2019-03-05 14:18:35.000000', 'A8N5183261146'),
(684, 82, '2019-03-05 14:18:30.000000', 'A8N5183261146'),
(685, 82, '2019-03-05 14:18:22.000000', 'A8N5183261146'),
(686, 92, '2019-03-05 14:06:32.000000', 'A8N5183261146'),
(687, 1, '2019-03-05 13:56:42.000000', 'A8N5183261146'),
(688, 83, '2019-03-05 13:56:42.000000', 'A8N5183261146'),
(689, 88, '2019-03-05 10:32:16.000000', 'A8N5183261146'),
(690, 82, '2019-03-05 10:20:35.000000', 'A8N5183261146'),
(691, 85, '2019-03-05 10:09:53.000000', 'A8N5183261146'),
(692, 84, '2019-03-05 10:03:20.000000', 'A8N5183261146'),
(693, 73, '2019-03-05 10:01:32.000000', 'A8N5183261146'),
(694, 86, '2019-03-05 10:00:07.000000', 'A8N5183261146'),
(695, 1, '2019-03-05 09:56:00.000000', 'A8N5183261146'),
(696, 83, '2019-03-05 09:56:00.000000', 'A8N5183261146'),
(697, 92, '2019-03-05 09:49:45.000000', 'A8N5183261146'),
(698, 90, '2019-03-05 09:49:37.000000', 'A8N5183261146'),
(699, 81, '2019-03-05 09:45:02.000000', 'A8N5183261146'),
(700, 89, '2019-03-05 09:44:57.000000', 'A8N5183261146'),
(701, 73, '2019-03-04 19:46:52.000000', 'A8N5183261146'),
(702, 73, '2019-03-04 19:46:51.000000', 'A8N5183261146'),
(703, 86, '2019-03-04 19:46:35.000000', 'A8N5183261146'),
(704, 85, '2019-03-04 19:46:13.000000', 'A8N5183261146'),
(705, 92, '2019-03-04 19:45:43.000000', 'A8N5183261146'),
(706, 84, '2019-03-04 19:45:29.000000', 'A8N5183261146'),
(707, 88, '2019-03-04 19:45:21.000000', 'A8N5183261146'),
(708, 81, '2019-03-04 19:45:09.000000', 'A8N5183261146'),
(709, 83, '2019-03-04 19:45:03.000000', 'A8N5183261146'),
(710, 1, '2019-03-04 19:45:03.000000', 'A8N5183261146'),
(711, 82, '2019-03-04 17:05:36.000000', 'A8N5183261146'),
(712, 1, '2019-03-04 16:32:05.000000', 'A8N5183261146'),
(713, 83, '2019-03-04 16:32:05.000000', 'A8N5183261146'),
(714, 85, '2019-03-04 16:19:07.000000', 'A8N5183261146'),
(715, 86, '2019-03-04 16:06:18.000000', 'A8N5183261146'),
(716, 85, '2019-03-04 15:45:32.000000', 'A8N5183261146'),
(717, 84, '2019-03-04 15:38:29.000000', 'A8N5183261146'),
(718, 83, '2019-03-04 15:31:34.000000', 'A8N5183261146'),
(719, 1, '2019-03-04 15:31:34.000000', 'A8N5183261146'),
(720, 86, '2019-03-04 15:03:04.000000', 'A8N5183261146'),
(721, 92, '2019-03-04 14:57:49.000000', 'A8N5183261146'),
(722, 81, '2019-03-04 14:48:42.000000', 'A8N5183261146'),
(723, 82, '2019-03-04 14:48:38.000000', 'A8N5183261146'),
(724, 82, '2019-03-04 14:48:31.000000', 'A8N5183261146'),
(725, 81, '2019-03-04 14:48:21.000000', 'A8N5183261146'),
(726, 84, '2019-03-04 14:39:49.000000', 'A8N5183261146'),
(727, 73, '2019-03-04 14:26:06.000000', 'A8N5183261146'),
(728, 92, '2019-03-04 14:01:00.000000', 'A8N5183261146'),
(729, 88, '2019-03-04 10:43:22.000000', 'A8N5183261146'),
(730, 82, '2019-03-04 10:29:10.000000', 'A8N5183261146'),
(731, 85, '2019-03-04 10:18:19.000000', 'A8N5183261146'),
(732, 86, '2019-03-04 10:01:05.000000', 'A8N5183261146'),
(733, 84, '2019-03-04 10:00:23.000000', 'A8N5183261146'),
(734, 90, '2019-03-04 10:00:18.000000', 'A8N5183261146'),
(735, 3, '2019-03-04 09:58:48.000000', 'A8N5183261146'),
(736, 73, '2019-03-04 09:58:42.000000', 'A8N5183261146'),
(737, 83, '2019-03-04 09:56:44.000000', 'A8N5183261146'),
(738, 1, '2019-03-04 09:56:44.000000', 'A8N5183261146'),
(739, 92, '2019-03-04 09:49:16.000000', 'A8N5183261146'),
(740, 81, '2019-03-04 08:49:49.000000', 'A8N5183261146'),
(741, 86, '2019-03-03 19:45:54.000000', 'A8N5183261146'),
(742, 84, '2019-03-03 19:45:21.000000', 'A8N5183261146'),
(743, 85, '2019-03-03 19:45:17.000000', 'A8N5183261146'),
(744, 88, '2019-03-03 19:45:04.000000', 'A8N5183261146'),
(745, 81, '2019-03-03 19:44:11.000000', 'A8N5183261146'),
(746, 92, '2019-03-03 19:41:30.000000', 'A8N5183261146'),
(747, 1, '2019-03-03 19:41:16.000000', 'A8N5183261146'),
(748, 83, '2019-03-03 19:41:16.000000', 'A8N5183261146'),
(749, 73, '2019-03-03 19:40:58.000000', 'A8N5183261146'),
(750, 89, '2019-03-03 19:07:46.000000', 'A8N5183261146'),
(751, 73, '2019-03-03 16:03:45.000000', 'A8N5183261146'),
(752, 1, '2019-03-03 16:03:33.000000', 'A8N5183261146'),
(753, 83, '2019-03-03 16:03:33.000000', 'A8N5183261146'),
(754, 73, '2019-03-03 16:02:25.000000', 'A8N5183261146'),
(755, 86, '2019-03-03 16:01:14.000000', 'A8N5183261146'),
(756, 84, '2019-03-03 15:54:38.000000', 'A8N5183261146'),
(757, 84, '2019-03-03 15:17:23.000000', 'A8N5183261146'),
(758, 1, '2019-03-03 15:08:38.000000', 'A8N5183261146'),
(759, 83, '2019-03-03 15:08:38.000000', 'A8N5183261146'),
(760, 85, '2019-03-03 15:07:53.000000', 'A8N5183261146'),
(761, 92, '2019-03-03 14:56:09.000000', 'A8N5183261146'),
(762, 81, '2019-03-03 14:47:35.000000', 'A8N5183261146'),
(763, 81, '2019-03-03 14:47:15.000000', 'A8N5183261146'),
(764, 86, '2019-03-03 14:46:06.000000', 'A8N5183261146'),
(765, 85, '2019-03-03 14:41:25.000000', 'A8N5183261146'),
(766, 92, '2019-03-03 14:06:45.000000', 'A8N5183261146'),
(767, 82, '2019-03-03 14:06:28.000000', 'A8N5183261146'),
(768, 82, '2019-03-03 14:06:22.000000', 'A8N5183261146'),
(769, 88, '2019-03-03 12:27:39.000000', 'A8N5183261146'),
(770, 91, '2019-03-03 10:55:44.000000', 'A8N5183261146'),
(771, 82, '2019-03-03 10:14:05.000000', 'A8N5183261146'),
(772, 85, '2019-03-03 10:10:51.000000', 'A8N5183261146'),
(773, 3, '2019-03-03 10:09:45.000000', 'A8N5183261146'),
(774, 73, '2019-03-03 10:09:39.000000', 'A8N5183261146'),
(775, 84, '2019-03-03 10:06:49.000000', 'A8N5183261146'),
(776, 86, '2019-03-03 09:59:21.000000', 'A8N5183261146'),
(777, 1, '2019-03-03 09:56:26.000000', 'A8N5183261146'),
(778, 83, '2019-03-03 09:56:26.000000', 'A8N5183261146'),
(779, 92, '2019-03-03 09:43:05.000000', 'A8N5183261146'),
(780, 81, '2019-03-03 09:39:39.000000', 'A8N5183261146'),
(781, 89, '2019-03-03 09:39:32.000000', 'A8N5183261146'),
(782, 92, '2019-03-02 20:07:06.000000', 'A8N5183261146'),
(783, 85, '2019-03-02 20:05:32.000000', 'A8N5183261146'),
(784, 73, '2019-03-02 20:05:18.000000', 'A8N5183261146'),
(785, 81, '2019-03-02 20:05:04.000000', 'A8N5183261146'),
(786, 84, '2019-03-02 20:04:36.000000', 'A8N5183261146'),
(787, 82, '2019-03-02 19:18:40.000000', 'A8N5183261146'),
(788, 89, '2019-03-02 18:41:05.000000', 'A8N5183261146'),
(789, 88, '2019-03-02 16:42:31.000000', 'A8N5183261146'),
(790, 88, '2019-03-02 16:42:27.000000', 'A8N5183261146'),
(791, 85, '2019-03-02 16:06:37.000000', 'A8N5183261146'),
(792, 84, '2019-03-02 15:39:49.000000', 'A8N5183261146'),
(793, 85, '2019-03-02 15:04:21.000000', 'A8N5183261146'),
(794, 92, '2019-03-02 14:56:14.000000', 'A8N5183261146'),
(795, 73, '2019-03-02 14:50:42.000000', 'A8N5183261146'),
(796, 81, '2019-03-02 14:39:20.000000', 'A8N5183261146'),
(797, 81, '2019-03-02 14:39:19.000000', 'A8N5183261146'),
(798, 84, '2019-03-02 14:37:04.000000', 'A8N5183261146'),
(799, 81, '2019-03-02 14:10:38.000000', 'A8N5183261146'),
(800, 92, '2019-03-02 14:00:52.000000', 'A8N5183261146'),
(801, 88, '2019-03-02 10:18:19.000000', 'A8N5183261146'),
(802, 82, '2019-03-02 10:12:51.000000', 'A8N5183261146'),
(803, 85, '2019-03-02 10:05:05.000000', 'A8N5183261146'),
(804, 3, '2019-03-02 10:00:43.000000', 'A8N5183261146'),
(805, 73, '2019-03-02 10:00:35.000000', 'A8N5183261146'),
(806, 92, '2019-03-02 09:44:12.000000', 'A8N5183261146'),
(807, 84, '2019-03-02 09:43:47.000000', 'A8N5183261146'),
(808, 81, '2019-03-02 09:43:29.000000', 'A8N5183261146'),
(809, 89, '2019-03-02 09:43:25.000000', 'A8N5183261146'),
(810, 73, '2019-02-28 19:44:47.000000', 'A8N5183261146'),
(811, 84, '2019-02-28 19:42:17.000000', 'A8N5183261146'),
(812, 86, '2019-02-28 19:42:06.000000', 'A8N5183261146'),
(813, 92, '2019-02-28 19:41:49.000000', 'A8N5183261146'),
(814, 85, '2019-02-28 19:41:16.000000', 'A8N5183261146'),
(815, 88, '2019-02-28 19:40:54.000000', 'A8N5183261146'),
(816, 81, '2019-02-28 19:40:51.000000', 'A8N5183261146'),
(817, 89, '2019-02-28 18:57:37.000000', 'A8N5183261146'),
(818, 85, '2019-02-28 16:21:39.000000', 'A8N5183261146'),
(819, 73, '2019-02-28 16:08:02.000000', 'A8N5183261146'),
(820, 86, '2019-02-28 15:56:29.000000', 'A8N5183261146'),
(821, 84, '2019-02-28 15:50:29.000000', 'A8N5183261146'),
(822, 81, '2019-02-28 15:16:35.000000', 'A8N5183261146'),
(823, 85, '2019-02-28 15:10:12.000000', 'A8N5183261146'),
(824, 92, '2019-02-28 14:59:42.000000', 'A8N5183261146'),
(825, 89, '2019-02-28 14:56:28.000000', 'A8N5183261146'),
(826, 89, '2019-02-28 14:51:53.000000', 'A8N5183261146'),
(827, 86, '2019-02-28 14:51:22.000000', 'A8N5183261146'),
(828, 86, '2019-02-28 14:51:21.000000', 'A8N5183261146'),
(829, 84, '2019-02-28 14:50:07.000000', 'A8N5183261146'),
(830, 82, '2019-02-28 14:26:28.000000', 'A8N5183261146'),
(831, 82, '2019-02-28 14:26:14.000000', 'A8N5183261146'),
(832, 81, '2019-02-28 14:26:08.000000', 'A8N5183261146'),
(833, 92, '2019-02-28 14:06:18.000000', 'A8N5183261146'),
(834, 82, '2019-02-28 11:19:57.000000', 'A8N5183261146'),
(835, 82, '2019-02-28 11:19:56.000000', 'A8N5183261146'),
(836, 91, '2019-02-28 10:50:50.000000', 'A8N5183261146'),
(837, 88, '2019-02-28 10:40:26.000000', 'A8N5183261146'),
(838, 85, '2019-02-28 10:12:37.000000', 'A8N5183261146'),
(839, 73, '2019-02-28 10:00:46.000000', 'A8N5183261146'),
(840, 84, '2019-02-28 09:59:33.000000', 'A8N5183261146'),
(841, 92, '2019-02-28 09:58:35.000000', 'A8N5183261146'),
(842, 86, '2019-02-28 09:58:22.000000', 'A8N5183261146'),
(843, 81, '2019-02-28 09:57:52.000000', 'A8N5183261146'),
(844, 81, '2019-02-28 09:57:51.000000', 'A8N5183261146'),
(845, 89, '2019-02-28 09:57:47.000000', 'A8N5183261146'),
(846, 73, '2019-02-27 19:27:20.000000', 'A8N5183261146'),
(847, 85, '2019-02-27 19:27:06.000000', 'A8N5183261146'),
(848, 92, '2019-02-27 19:27:01.000000', 'A8N5183261146'),
(849, 81, '2019-02-27 19:26:57.000000', 'A8N5183261146'),
(850, 84, '2019-02-27 19:26:46.000000', 'A8N5183261146'),
(851, 82, '2019-02-27 19:19:06.000000', 'A8N5183261146'),
(852, 89, '2019-02-27 18:53:04.000000', 'A8N5183261146'),
(853, 88, '2019-02-27 16:24:03.000000', 'A8N5183261146'),
(854, 89, '2019-02-27 16:22:59.000000', 'A8N5183261146'),
(855, 85, '2019-02-27 16:12:25.000000', 'A8N5183261146'),
(856, 86, '2019-02-27 16:11:43.000000', 'A8N5183261146'),
(857, 88, '2019-02-27 15:12:52.000000', 'A8N5183261146'),
(858, 89, '2019-02-27 15:12:36.000000', 'A8N5183261146'),
(859, 84, '2019-02-27 15:09:26.000000', 'A8N5183261146'),
(860, 85, '2019-02-27 15:03:15.000000', 'A8N5183261146'),
(861, 82, '2019-02-27 15:01:43.000000', 'A8N5183261146'),
(862, 82, '2019-02-27 15:01:39.000000', 'A8N5183261146'),
(863, 92, '2019-02-27 14:59:22.000000', 'A8N5183261146'),
(864, 86, '2019-02-27 14:58:15.000000', 'A8N5183261146'),
(865, 84, '2019-02-27 14:52:35.000000', 'A8N5183261146'),
(866, 81, '2019-02-27 14:48:35.000000', 'A8N5183261146'),
(867, 81, '2019-02-27 14:16:08.000000', 'A8N5183261146'),
(868, 92, '2019-02-27 14:02:04.000000', 'A8N5183261146'),
(869, 82, '2019-02-27 11:07:49.000000', 'A8N5183261146'),
(870, 91, '2019-02-27 10:46:39.000000', 'A8N5183261146'),
(871, 88, '2019-02-27 10:39:52.000000', 'A8N5183261146'),
(872, 85, '2019-02-27 10:15:20.000000', 'A8N5183261146'),
(873, 87, '2019-02-27 10:11:26.000000', 'A8N5183261146'),
(874, 89, '2019-02-27 10:08:40.000000', 'A8N5183261146'),
(875, 3, '2019-02-27 10:04:36.000000', 'A8N5183261146'),
(876, 73, '2019-02-27 10:04:29.000000', 'A8N5183261146'),
(877, 86, '2019-02-27 10:02:30.000000', 'A8N5183261146'),
(878, 84, '2019-02-27 09:55:18.000000', 'A8N5183261146'),
(879, 92, '2019-02-27 09:53:34.000000', 'A8N5183261146'),
(880, 81, '2019-02-27 09:36:09.000000', 'A8N5183261146'),
(881, 86, '2019-02-26 19:39:19.000000', 'A8N5183261146'),
(882, 81, '2019-02-26 19:38:54.000000', 'A8N5183261146'),
(883, 85, '2019-02-26 19:38:50.000000', 'A8N5183261146'),
(884, 88, '2019-02-26 19:37:51.000000', 'A8N5183261146'),
(885, 87, '2019-02-26 19:37:32.000000', 'A8N5183261146'),
(886, 3, '2019-02-26 19:37:23.000000', 'A8N5183261146'),
(887, 73, '2019-02-26 19:37:18.000000', 'A8N5183261146'),
(888, 92, '2019-02-26 19:36:25.000000', 'A8N5183261146'),
(889, 84, '2019-02-26 19:36:20.000000', 'A8N5183261146'),
(890, 82, '2019-02-26 19:34:56.000000', 'A8N5183261146'),
(891, 89, '2019-02-26 19:17:42.000000', 'A8N5183261146'),
(892, 73, '2019-02-26 17:01:26.000000', 'A8N5183261146'),
(893, 89, '2019-02-26 16:52:31.000000', 'A8N5183261146'),
(894, 89, '2019-02-26 16:52:11.000000', 'A8N5183261146');
INSERT INTO `temp_attendance` (`SL`, `USERID`, `CHECKTIME`, `sn`) VALUES
(895, 3, '2019-02-26 16:37:57.000000', 'A8N5183261146'),
(896, 88, '2019-02-26 16:18:08.000000', 'A8N5183261146'),
(897, 85, '2019-02-26 16:12:54.000000', 'A8N5183261146'),
(898, 82, '2019-02-26 16:04:50.000000', 'A8N5183261146'),
(899, 84, '2019-02-26 16:01:25.000000', 'A8N5183261146'),
(900, 86, '2019-02-26 15:51:03.000000', 'A8N5183261146'),
(901, 73, '2019-02-26 15:31:44.000000', 'A8N5183261146'),
(902, 3, '2019-02-26 15:08:28.000000', 'A8N5183261146'),
(903, 73, '2019-02-26 15:08:11.000000', 'A8N5183261146'),
(904, 88, '2019-02-26 15:08:01.000000', 'A8N5183261146'),
(905, 85, '2019-02-26 15:02:36.000000', 'A8N5183261146'),
(906, 84, '2019-02-26 15:02:19.000000', 'A8N5183261146'),
(907, 86, '2019-02-26 14:54:35.000000', 'A8N5183261146'),
(908, 87, '2019-02-26 14:39:10.000000', 'A8N5183261146'),
(909, 82, '2019-02-26 14:38:45.000000', 'A8N5183261146'),
(910, 87, '2019-02-26 14:38:42.000000', 'A8N5183261146'),
(911, 81, '2019-02-26 14:24:24.000000', 'A8N5183261146'),
(912, 81, '2019-02-26 14:13:10.000000', 'A8N5183261146'),
(913, 82, '2019-02-26 14:13:02.000000', 'A8N5183261146'),
(914, 82, '2019-02-26 11:10:23.000000', 'A8N5183261146'),
(915, 91, '2019-02-26 10:31:49.000000', 'A8N5183261146'),
(916, 88, '2019-02-26 10:25:43.000000', 'A8N5183261146'),
(917, 86, '2019-02-26 10:09:50.000000', 'A8N5183261146'),
(918, 86, '2019-02-26 10:09:49.000000', 'A8N5183261146'),
(919, 3, '2019-02-26 10:00:53.000000', 'A8N5183261146'),
(920, 73, '2019-02-26 10:00:48.000000', 'A8N5183261146'),
(921, 87, '2019-02-26 09:59:32.000000', 'A8N5183261146'),
(922, 85, '2019-02-26 09:55:17.000000', 'A8N5183261146'),
(923, 89, '2019-02-26 09:43:49.000000', 'A8N5183261146'),
(924, 81, '2019-02-26 09:40:11.000000', 'A8N5183261146'),
(925, 84, '2019-02-26 09:37:09.000000', 'A8N5183261146'),
(926, 92, '2019-02-26 09:36:54.000000', 'A8N5183261146'),
(927, 92, '2019-02-25 20:00:50.000000', 'A8N5183261146'),
(928, 84, '2019-02-25 20:00:36.000000', 'A8N5183261146'),
(929, 81, '2019-02-25 20:00:29.000000', 'A8N5183261146'),
(930, 86, '2019-02-25 20:00:20.000000', 'A8N5183261146'),
(931, 73, '2019-02-25 20:00:15.000000', 'A8N5183261146'),
(932, 85, '2019-02-25 20:00:11.000000', 'A8N5183261146'),
(933, 87, '2019-02-25 19:58:25.000000', 'A8N5183261146'),
(934, 88, '2019-02-25 19:57:39.000000', 'A8N5183261146'),
(935, 82, '2019-02-25 19:48:35.000000', 'A8N5183261146'),
(936, 89, '2019-02-25 19:07:04.000000', 'A8N5183261146'),
(937, 88, '2019-02-25 16:21:29.000000', 'A8N5183261146'),
(938, 88, '2019-02-25 16:21:25.000000', 'A8N5183261146'),
(939, 86, '2019-02-25 16:08:19.000000', 'A8N5183261146'),
(940, 89, '2019-02-25 16:03:01.000000', 'A8N5183261146'),
(941, 89, '2019-02-25 16:02:40.000000', 'A8N5183261146'),
(942, 84, '2019-02-25 16:00:07.000000', 'A8N5183261146'),
(943, 85, '2019-02-25 15:43:55.000000', 'A8N5183261146'),
(944, 85, '2019-02-25 15:38:48.000000', 'A8N5183261146'),
(945, 73, '2019-02-25 15:28:05.000000', 'A8N5183261146'),
(946, 73, '2019-02-25 15:26:53.000000', 'A8N5183261146'),
(947, 82, '2019-02-25 15:06:19.000000', 'A8N5183261146'),
(948, 82, '2019-02-25 15:06:15.000000', 'A8N5183261146'),
(949, 84, '2019-02-25 15:06:04.000000', 'A8N5183261146'),
(950, 86, '2019-02-25 14:53:04.000000', 'A8N5183261146'),
(951, 83, '2019-02-25 12:38:47.000000', 'A8N5183261146'),
(952, 1, '2019-02-25 12:38:47.000000', 'A8N5183261146'),
(953, 82, '2019-02-25 10:50:56.000000', 'A8N5183261146'),
(954, 88, '2019-02-25 10:30:24.000000', 'A8N5183261146'),
(955, 83, '2019-02-25 10:30:02.000000', 'A8N5183261146'),
(956, 1, '2019-02-25 10:30:02.000000', 'A8N5183261146'),
(957, 85, '2019-02-25 10:19:13.000000', 'A8N5183261146'),
(958, 86, '2019-02-25 10:08:12.000000', 'A8N5183261146'),
(959, 86, '2019-02-25 10:08:10.000000', 'A8N5183261146'),
(960, 3, '2019-02-25 10:07:57.000000', 'A8N5183261146'),
(961, 73, '2019-02-25 10:07:52.000000', 'A8N5183261146'),
(962, 89, '2019-02-25 10:03:25.000000', 'A8N5183261146'),
(963, 84, '2019-02-25 09:59:02.000000', 'A8N5183261146'),
(964, 87, '2019-02-25 09:57:41.000000', 'A8N5183261146'),
(965, 81, '2019-02-25 09:47:21.000000', 'A8N5183261146'),
(966, 92, '2019-02-25 09:47:11.000000', 'A8N5183261146'),
(967, 84, '2019-02-24 20:01:05.000000', 'A8N5183261146'),
(968, 92, '2019-02-24 20:00:21.000000', 'A8N5183261146'),
(969, 86, '2019-02-24 20:00:14.000000', 'A8N5183261146'),
(970, 85, '2019-02-24 20:00:11.000000', 'A8N5183261146'),
(971, 81, '2019-02-24 19:58:55.000000', 'A8N5183261146'),
(972, 73, '2019-02-24 19:57:07.000000', 'A8N5183261146'),
(973, 83, '2019-02-24 19:56:44.000000', 'A8N5183261146'),
(974, 1, '2019-02-24 19:56:44.000000', 'A8N5183261146'),
(975, 82, '2019-02-24 19:39:32.000000', 'A8N5183261146'),
(976, 89, '2019-02-24 19:23:51.000000', 'A8N5183261146'),
(977, 89, '2019-02-24 17:47:18.000000', 'A8N5183261146'),
(978, 89, '2019-02-24 17:36:41.000000', 'A8N5183261146'),
(979, 84, '2019-02-24 16:03:30.000000', 'A8N5183261146'),
(980, 86, '2019-02-24 15:46:34.000000', 'A8N5183261146'),
(981, 1, '2019-02-24 15:09:37.000000', 'A8N5183261146'),
(982, 83, '2019-02-24 15:09:37.000000', 'A8N5183261146'),
(983, 92, '2019-02-24 15:08:21.000000', 'A8N5183261146'),
(984, 84, '2019-02-24 15:07:25.000000', 'A8N5183261146'),
(985, 73, '2019-02-24 14:54:43.000000', 'A8N5183261146'),
(986, 86, '2019-02-24 14:50:14.000000', 'A8N5183261146'),
(987, 73, '2019-02-24 14:49:17.000000', 'A8N5183261146'),
(988, 82, '2019-02-24 14:49:05.000000', 'A8N5183261146'),
(989, 82, '2019-02-24 14:49:01.000000', 'A8N5183261146'),
(990, 83, '2019-02-24 14:12:45.000000', 'A8N5183261146'),
(991, 1, '2019-02-24 14:12:45.000000', 'A8N5183261146'),
(992, 92, '2019-02-24 14:12:04.000000', 'A8N5183261146'),
(993, 87, '2019-02-24 11:28:02.000000', 'A8N5183261146'),
(994, 82, '2019-02-24 10:50:32.000000', 'A8N5183261146'),
(995, 88, '2019-02-24 10:33:04.000000', 'A8N5183261146'),
(996, 86, '2019-02-24 10:18:04.000000', 'A8N5183261146'),
(997, 85, '2019-02-24 10:09:19.000000', 'A8N5183261146'),
(998, 3, '2019-02-24 10:04:10.000000', 'A8N5183261146'),
(999, 3, '2019-02-24 09:56:38.000000', 'A8N5183261146'),
(1000, 73, '2019-02-24 09:56:33.000000', 'A8N5183261146'),
(1001, 83, '2019-02-24 09:56:23.000000', 'A8N5183261146'),
(1002, 1, '2019-02-24 09:56:23.000000', 'A8N5183261146'),
(1003, 92, '2019-02-24 09:48:08.000000', 'A8N5183261146'),
(1004, 81, '2019-02-24 09:40:05.000000', 'A8N5183261146'),
(1005, 84, '2019-02-24 09:39:42.000000', 'A8N5183261146'),
(1006, 89, '2019-02-24 09:39:38.000000', 'A8N5183261146'),
(1007, 92, '2019-02-23 19:45:13.000000', 'A8N5183261146'),
(1008, 84, '2019-02-23 19:44:49.000000', 'A8N5183261146'),
(1009, 88, '2019-02-23 19:43:50.000000', 'A8N5183261146'),
(1010, 88, '2019-02-23 19:43:39.000000', 'A8N5183261146'),
(1011, 88, '2019-02-23 19:43:36.000000', 'A8N5183261146'),
(1012, 88, '2019-02-23 19:43:33.000000', 'A8N5183261146'),
(1013, 88, '2019-02-23 19:43:17.000000', 'A8N5183261146'),
(1014, 82, '2019-02-23 19:39:45.000000', 'A8N5183261146'),
(1015, 81, '2019-02-23 19:39:36.000000', 'A8N5183261146'),
(1016, 73, '2019-02-23 19:39:30.000000', 'A8N5183261146'),
(1017, 83, '2019-02-23 19:38:17.000000', 'A8N5183261146'),
(1018, 1, '2019-02-23 19:38:17.000000', 'A8N5183261146'),
(1019, 73, '2019-02-23 19:03:47.000000', 'A8N5183261146'),
(1020, 91, '2019-02-23 19:03:26.000000', 'A8N5183261146'),
(1021, 91, '2019-02-23 19:03:21.000000', 'A8N5183261146'),
(1022, 84, '2019-02-23 16:12:39.000000', 'A8N5183261146'),
(1023, 83, '2019-02-23 15:35:30.000000', 'A8N5183261146'),
(1024, 1, '2019-02-23 15:35:30.000000', 'A8N5183261146'),
(1025, 82, '2019-02-23 15:14:45.000000', 'A8N5183261146'),
(1026, 82, '2019-02-23 15:14:38.000000', 'A8N5183261146'),
(1027, 73, '2019-02-23 15:09:08.000000', 'A8N5183261146'),
(1028, 84, '2019-02-23 15:08:57.000000', 'A8N5183261146'),
(1029, 73, '2019-02-23 15:08:24.000000', 'A8N5183261146'),
(1030, 81, '2019-02-23 15:01:20.000000', 'A8N5183261146'),
(1031, 92, '2019-02-23 14:56:25.000000', 'A8N5183261146'),
(1032, 82, '2019-02-23 14:39:51.000000', 'A8N5183261146'),
(1033, 82, '2019-02-23 14:39:47.000000', 'A8N5183261146'),
(1034, 81, '2019-02-23 14:35:20.000000', 'A8N5183261146'),
(1035, 83, '2019-02-23 14:35:07.000000', 'A8N5183261146'),
(1036, 1, '2019-02-23 14:35:07.000000', 'A8N5183261146'),
(1037, 92, '2019-02-23 14:10:06.000000', 'A8N5183261146'),
(1038, 82, '2019-02-23 10:26:05.000000', 'A8N5183261146'),
(1039, 84, '2019-02-23 10:07:05.000000', 'A8N5183261146'),
(1040, 92, '2019-02-23 09:59:28.000000', 'A8N5183261146'),
(1041, 83, '2019-02-23 09:59:11.000000', 'A8N5183261146'),
(1042, 1, '2019-02-23 09:59:11.000000', 'A8N5183261146'),
(1043, 85, '2019-02-23 09:58:38.000000', 'A8N5183261146'),
(1044, 81, '2019-02-23 09:58:24.000000', 'A8N5183261146'),
(1045, 3, '2019-02-23 09:58:19.000000', 'A8N5183261146'),
(1046, 73, '2019-02-23 09:58:13.000000', 'A8N5183261146'),
(1047, 85, '2019-02-23 09:54:15.000000', 'A8N5183261146'),
(1048, 3, '2019-02-23 09:51:25.000000', 'A8N5183261146'),
(1049, 73, '2019-02-23 09:51:18.000000', 'A8N5183261146'),
(1050, 92, '2019-02-23 09:49:25.000000', 'A8N5183261146'),
(1051, 81, '2019-02-23 09:44:12.000000', 'A8N5183261146'),
(1052, 85, '2019-02-20 19:42:31.000000', 'A8N5183261146'),
(1053, 85, '2019-02-20 19:42:28.000000', 'A8N5183261146'),
(1054, 81, '2019-02-20 19:42:15.000000', 'A8N5183261146'),
(1055, 73, '2019-02-20 19:42:05.000000', 'A8N5183261146'),
(1056, 92, '2019-02-20 19:42:00.000000', 'A8N5183261146'),
(1057, 83, '2019-02-20 19:39:00.000000', 'A8N5183261146'),
(1058, 1, '2019-02-20 19:39:00.000000', 'A8N5183261146'),
(1059, 1, '2019-02-20 19:38:51.000000', 'A8N5183261146'),
(1060, 83, '2019-02-20 19:38:51.000000', 'A8N5183261146'),
(1061, 82, '2019-02-20 19:38:29.000000', 'A8N5183261146'),
(1062, 84, '2019-02-20 19:32:50.000000', 'A8N5183261146'),
(1063, 3, '2019-02-20 18:59:04.000000', 'A8N5183261146'),
(1064, 73, '2019-02-20 18:58:58.000000', 'A8N5183261146'),
(1065, 73, '2019-02-20 18:34:39.000000', 'A8N5183261146'),
(1066, 82, '2019-02-20 18:34:33.000000', 'A8N5183261146'),
(1067, 86, '2019-02-20 15:51:48.000000', 'A8N5183261146'),
(1068, 73, '2019-02-20 15:28:08.000000', 'A8N5183261146'),
(1069, 86, '2019-02-20 15:01:04.000000', 'A8N5183261146'),
(1070, 82, '2019-02-20 14:58:32.000000', 'A8N5183261146'),
(1071, 89, '2019-02-20 14:58:17.000000', 'A8N5183261146'),
(1072, 83, '2019-02-20 14:58:06.000000', 'A8N5183261146'),
(1073, 1, '2019-02-20 14:58:06.000000', 'A8N5183261146'),
(1074, 82, '2019-02-20 14:57:54.000000', 'A8N5183261146'),
(1075, 73, '2019-02-20 14:57:35.000000', 'A8N5183261146'),
(1076, 89, '2019-02-20 14:55:37.000000', 'A8N5183261146'),
(1077, 92, '2019-02-20 14:55:19.000000', 'A8N5183261146'),
(1078, 92, '2019-02-20 14:00:31.000000', 'A8N5183261146'),
(1079, 81, '2019-02-20 14:00:25.000000', 'A8N5183261146'),
(1080, 1, '2019-02-20 14:00:20.000000', 'A8N5183261146'),
(1081, 83, '2019-02-20 14:00:20.000000', 'A8N5183261146'),
(1082, 81, '2019-02-20 14:00:05.000000', 'A8N5183261146'),
(1083, 82, '2019-02-20 10:12:54.000000', 'A8N5183261146'),
(1084, 73, '2019-02-20 10:08:29.000000', 'A8N5183261146'),
(1085, 87, '2019-02-20 10:05:39.000000', 'A8N5183261146'),
(1086, 3, '2019-02-20 10:01:55.000000', 'A8N5183261146'),
(1087, 85, '2019-02-20 10:01:44.000000', 'A8N5183261146'),
(1088, 83, '2019-02-20 09:58:54.000000', 'A8N5183261146'),
(1089, 1, '2019-02-20 09:58:54.000000', 'A8N5183261146'),
(1090, 86, '2019-02-20 09:58:42.000000', 'A8N5183261146'),
(1091, 92, '2019-02-20 09:44:19.000000', 'A8N5183261146'),
(1092, 84, '2019-02-20 09:43:06.000000', 'A8N5183261146'),
(1093, 89, '2019-02-20 09:42:39.000000', 'A8N5183261146'),
(1094, 81, '2019-02-20 09:40:00.000000', 'A8N5183261146'),
(1095, 85, '2019-02-19 20:10:30.000000', 'A8N5183261146'),
(1096, 85, '2019-02-19 20:10:27.000000', 'A8N5183261146'),
(1097, 85, '2019-02-19 20:10:25.000000', 'A8N5183261146'),
(1098, 85, '2019-02-19 20:10:22.000000', 'A8N5183261146'),
(1099, 81, '2019-02-19 20:08:52.000000', 'A8N5183261146'),
(1100, 84, '2019-02-19 20:06:00.000000', 'A8N5183261146'),
(1101, 84, '2019-02-19 20:05:57.000000', 'A8N5183261146'),
(1102, 84, '2019-02-19 20:05:54.000000', 'A8N5183261146'),
(1103, 84, '2019-02-19 20:05:46.000000', 'A8N5183261146'),
(1104, 92, '2019-02-19 20:05:32.000000', 'A8N5183261146'),
(1105, 85, '2019-02-19 20:00:50.000000', 'A8N5183261146'),
(1106, 85, '2019-02-19 20:00:49.000000', 'A8N5183261146'),
(1107, 86, '2019-02-19 20:00:35.000000', 'A8N5183261146'),
(1108, 84, '2019-02-19 20:00:25.000000', 'A8N5183261146'),
(1109, 1, '2019-02-19 19:50:24.000000', 'A8N5183261146'),
(1110, 83, '2019-02-19 19:50:24.000000', 'A8N5183261146'),
(1111, 89, '2019-02-19 19:01:22.000000', 'A8N5183261146'),
(1112, 85, '2019-02-19 17:38:05.000000', 'A8N5183261146'),
(1113, 81, '2019-02-19 16:36:40.000000', 'A8N5183261146'),
(1114, 81, '2019-02-19 16:36:37.000000', 'A8N5183261146'),
(1115, 87, '2019-02-19 16:36:20.000000', 'A8N5183261146'),
(1116, 87, '2019-02-19 16:05:19.000000', 'A8N5183261146'),
(1117, 82, '2019-02-19 15:57:07.000000', 'A8N5183261146'),
(1118, 82, '2019-02-19 15:56:59.000000', 'A8N5183261146'),
(1119, 84, '2019-02-19 15:56:46.000000', 'A8N5183261146'),
(1120, 83, '2019-02-19 15:37:26.000000', 'A8N5183261146'),
(1121, 1, '2019-02-19 15:37:26.000000', 'A8N5183261146'),
(1122, 92, '2019-02-19 15:35:26.000000', 'A8N5183261146'),
(1123, 84, '2019-02-19 15:01:09.000000', 'A8N5183261146'),
(1124, 92, '2019-02-19 14:41:41.000000', 'A8N5183261146'),
(1125, 83, '2019-02-19 14:38:10.000000', 'A8N5183261146'),
(1126, 1, '2019-02-19 14:38:10.000000', 'A8N5183261146'),
(1127, 88, '2019-02-19 11:12:50.000000', 'A8N5183261146'),
(1128, 87, '2019-02-19 10:14:37.000000', 'A8N5183261146'),
(1129, 85, '2019-02-19 10:13:08.000000', 'A8N5183261146'),
(1130, 85, '2019-02-19 10:13:01.000000', 'A8N5183261146'),
(1131, 82, '2019-02-19 10:11:34.000000', 'A8N5183261146'),
(1132, 3, '2019-02-19 09:56:57.000000', 'A8N5183261146'),
(1133, 1, '2019-02-19 09:55:47.000000', 'A8N5183261146'),
(1134, 83, '2019-02-19 09:55:47.000000', 'A8N5183261146'),
(1135, 86, '2019-02-19 09:55:40.000000', 'A8N5183261146'),
(1136, 81, '2019-02-19 09:34:22.000000', 'A8N5183261146'),
(1137, 89, '2019-02-19 09:33:27.000000', 'A8N5183261146'),
(1138, 89, '2019-02-19 09:33:24.000000', 'A8N5183261146'),
(1139, 86, '2019-02-18 16:02:40.000000', 'A8N5183261146'),
(1140, 1, '2019-02-18 15:36:05.000000', 'A8N5183261146'),
(1141, 83, '2019-02-18 15:36:05.000000', 'A8N5183261146'),
(1142, 83, '2019-02-18 15:34:27.000000', 'A8N5183261146'),
(1143, 1, '2019-02-18 15:34:27.000000', 'A8N5183261146'),
(1144, 86, '2019-02-18 15:04:01.000000', 'A8N5183261146'),
(1145, 1, '2019-02-18 14:35:54.000000', 'A8N5183261146'),
(1146, 83, '2019-02-18 14:35:54.000000', 'A8N5183261146'),
(1147, 81, '2019-02-17 15:52:09.000000', 'A8N5183261146'),
(1148, 3, '2019-02-16 18:46:20.000000', 'A8N5183261146'),
(1149, 3, '2019-02-16 18:45:09.000000', 'A8N5183261146'),
(1150, 3, '2019-02-16 17:15:13.000000', 'A8N5183261146'),
(1151, 59, '2019-02-16 12:51:38.000000', 'A8N5183261146'),
(1152, 83, '2019-02-16 12:51:29.000000', 'A8N5183261146'),
(1153, 1, '2019-02-16 12:51:29.000000', 'A8N5183261146'),
(1154, 3, '2019-02-16 12:48:38.000000', 'A8N5183261146'),
(1155, 3, '2019-02-16 12:44:13.000000', 'A8N5183261146'),
(1156, 2, '2019-02-14 09:59:34.000000', 'A8N5183261146'),
(1157, 6, '2019-02-13 14:09:12.000000', 'A8N5183261146'),
(1158, 6, '2019-02-13 14:08:47.000000', 'A8N5183261146'),
(1159, 6, '2019-02-13 14:08:37.000000', 'A8N5183261146'),
(1160, 4, '2019-02-12 11:17:22.000000', 'A8N5183261146'),
(1161, 4, '2019-02-12 11:16:58.000000', 'A8N5183261146'),
(1162, 4, '2019-02-12 11:16:37.000000', 'A8N5183261146'),
(1163, 2, '2019-02-12 10:30:41.000000', 'A8N5183261146'),
(1164, 3, '2019-02-10 19:57:59.000000', 'A8N5183261146'),
(1165, 4, '2019-02-10 19:23:16.000000', 'A8N5183261146'),
(1166, 2, '2019-02-10 10:01:51.000000', 'A8N5183261146'),
(1167, 3, '2019-02-10 10:01:11.000000', 'A8N5183261146'),
(1168, 2, '2019-02-10 10:00:57.000000', 'A8N5183261146'),
(1169, 4, '2019-02-10 10:00:34.000000', 'A8N5183261146'),
(1170, 2, '2019-02-10 10:00:11.000000', 'A8N5183261146'),
(1171, 6, '2019-02-09 10:09:03.000000', 'A8N5183261146'),
(1172, 3, '2019-02-09 10:08:51.000000', 'A8N5183261146'),
(1173, 3, '2019-02-09 10:08:31.000000', 'A8N5183261146'),
(1174, 4, '2019-02-07 18:29:45.000000', 'A8N5183261146'),
(1175, 3, '2019-02-07 10:22:48.000000', 'A8N5183261146'),
(1176, 3, '2019-02-07 10:16:58.000000', 'A8N5183261146'),
(1177, 3, '2019-02-07 10:16:20.000000', 'A8N5183261146'),
(1178, 2, '2019-02-07 10:14:04.000000', 'A8N5183261146'),
(1179, 2, '2019-02-07 10:13:48.000000', 'A8N5183261146'),
(1180, 2, '2019-02-07 10:13:36.000000', 'A8N5183261146'),
(1181, 2, '2019-02-07 10:13:26.000000', 'A8N5183261146'),
(1182, 4, '2019-02-07 10:13:00.000000', 'A8N5183261146'),
(1183, 6, '2019-02-07 10:11:40.000000', 'A8N5183261146'),
(1184, 3, '2019-02-07 10:10:17.000000', 'A8N5183261146'),
(1185, 2, '2019-02-06 19:40:57.000000', 'A8N5183261146'),
(1186, 2, '2019-02-06 19:28:31.000000', 'A8N5183261146'),
(1187, 2, '2019-02-06 19:09:17.000000', 'A8N5183261146'),
(1188, 2, '2019-02-06 19:08:38.000000', 'A8N5183261146'),
(1189, 4, '2019-02-06 18:13:41.000000', 'A8N5183261146'),
(1190, 4, '2019-02-06 18:13:33.000000', 'A8N5183261146'),
(1191, 4, '2019-02-06 18:13:25.000000', 'A8N5183261146'),
(1192, 3, '2019-02-06 18:11:48.000000', 'A8N5183261146'),
(1193, 3, '2019-02-06 18:11:28.000000', 'A8N5183261146'),
(1194, 999999999, '2019-02-06 18:10:04.000000', 'A8N5183261146'),
(1195, 5, '2019-02-06 16:49:44.000000', 'A8N5183261146'),
(1196, 3, '2019-02-06 16:48:33.000000', 'A8N5183261146'),
(1197, 2, '2019-02-06 16:47:27.000000', 'A8N5183261146'),
(1198, 4, '2019-02-06 16:47:19.000000', 'A8N5183261146'),
(1199, 3, '2019-02-06 16:44:58.000000', 'A8N5183261146'),
(1200, 3, '2019-02-06 16:44:50.000000', 'A8N5183261146'),
(1201, 3, '2019-02-06 16:18:43.000000', 'A8N5183261146');

-- --------------------------------------------------------

--
-- Table structure for table `temp_cart_data`
--

CREATE TABLE `temp_cart_data` (
  `temp_tableID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `vat` float(11,0) DEFAULT NULL,
  `total` float(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `temp_cart_data`
--

INSERT INTO `temp_cart_data` (`temp_tableID`, `customerID`, `productID`, `quantity`, `vat`, `total`) VALUES
(4, 45, 239, 1, 0, 70000),
(5, 45, 240, 3, 0, 103332),
(6, 45, 241, 1, 0, 20000),
(26, 45, 242, 1, 0, 34567),
(27, 62, 243, 6, 0, 72000),
(28, 62, 242, 6, 0, 24000),
(29, 62, 234, 2, 0, 10),
(30, 62, 237, 2, 0, 200000),
(31, 62, 238, 1, 0, 80000),
(32, 62, 241, 5, 0, 100000),
(33, 62, 244, 3, 0, 15000),
(34, 45, 243, 6, 0, 72000),
(35, 45, 234, 2, 0, 10),
(36, 45, 237, 2, 0, 200000),
(37, 45, 238, 1, 0, 80000),
(38, 45, 244, 3, 0, 15000),
(39, 63, 243, 2, 0, 24000),
(40, 63, 242, 2, 0, 8000),
(41, 63, 240, 1, 0, 34444),
(42, 62, 240, 1, 0, 34444);

-- --------------------------------------------------------

--
-- Table structure for table `temp_deduction_transactions`
--

CREATE TABLE `temp_deduction_transactions` (
  `deductionTransactionID` int(11) NOT NULL,
  `deductionID` int(11) DEFAULT NULL,
  `employeeID` int(11) DEFAULT NULL COMMENT 'profile id',
  `deductionAmount` float DEFAULT NULL,
  `deductionDate` varchar(20) DEFAULT NULL,
  `deductionEndDate` varchar(20) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  `applicationID` int(11) DEFAULT NULL,
  `minutes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_transfer_product_lists`
--

CREATE TABLE `temp_transfer_product_lists` (
  `listID` int(11) NOT NULL,
  `transfer_from` int(11) DEFAULT NULL,
  `user_sessionID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `testimonialID` int(11) NOT NULL,
  `testimonyTypeID` int(11) NOT NULL,
  `testimonyPerson` varchar(80) NOT NULL,
  `testimonypersonInfo` text NOT NULL,
  `testimonypersonImage` text NOT NULL,
  `testimonyOverview` text NOT NULL,
  `testimonyRating` int(5) NOT NULL,
  `entryUserID` int(11) NOT NULL,
  `entryTime` datetime NOT NULL,
  `testimonyStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonialID`, `testimonyTypeID`, `testimonyPerson`, `testimonypersonInfo`, `testimonypersonImage`, `testimonyOverview`, `testimonyRating`, `entryUserID`, `entryTime`, `testimonyStatus`, `companyID`, `applicationID`) VALUES
(2, 2, 'Poster Presentation to micronutrient Forum 5th Global Conference 2020', '', 'image_directory/testimonypersonimage/263f9a9254-2021-11-06.pdf', '', 0, 62, '2021-11-06 10:15:06', 1, 1, 1),
(3, 4, 'GUIDE BOOK OF SALT HARVESTING', '', 'image_directory/testimonypersonimage/2bcbad786f-2021-11-06.pdf', '', 0, 62, '2021-11-06 10:26:55', 1, 1, 1),
(4, 4, 'An INITIATIVE TO CULTIVATE QUALITY SALT THROUGH MODERN METHOD', '', 'image_directory/testimonypersonimage/62d5dff72f-2021-11-06.pdf', '', 0, 62, '2021-11-06 10:27:29', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonytypes`
--

CREATE TABLE `testimonytypes` (
  `testimonyTypeID` int(11) NOT NULL,
  `testimonyTypeName` varchar(80) NOT NULL,
  `testimonyTypeStatus` int(5) NOT NULL,
  `companyID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonytypes`
--

INSERT INTO `testimonytypes` (`testimonyTypeID`, `testimonyTypeName`, `testimonyTypeStatus`, `companyID`, `applicationID`) VALUES
(2, 'About', 1, 1, 1),
(3, 'USI BD Central MIS', 1, 1, 1),
(4, 'Quality Salt Cultivation', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_customer_product_sale`
--

CREATE TABLE `tmp_customer_product_sale` (
  `id` int(11) NOT NULL,
  `product_title` varchar(155) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `price` float(11,2) DEFAULT NULL,
  `vat` float(11,2) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL,
  `user_sessionID` int(11) DEFAULT NULL,
  `discount` int(5) DEFAULT '0',
  `unit` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tmp_customer_product_sale`
--

INSERT INTO `tmp_customer_product_sale` (`id`, `product_title`, `productID`, `price`, `vat`, `quantity`, `storeID`, `user_sessionID`, `discount`, `unit`) VALUES
(170, 'SS BOLT 10 x 100', 208, 50.00, 0.00, 1, 22, 52, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_product`
--

CREATE TABLE `tmp_product` (
  `id` int(11) NOT NULL,
  `product_title` varchar(155) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(5) DEFAULT NULL,
  `storeID` int(5) DEFAULT NULL,
  `buying_price` float(10,2) DEFAULT NULL,
  `store_no` int(5) DEFAULT NULL,
  `shalvesID` int(11) DEFAULT NULL,
  `user_sessionID` int(5) DEFAULT NULL,
  `discount` float(5,2) DEFAULT '0.00',
  `unit` int(11) DEFAULT NULL,
  `is_grouped` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tmp_product`
--

INSERT INTO `tmp_product` (`id`, `product_title`, `productID`, `quantity`, `storeID`, `buying_price`, `store_no`, `shalvesID`, `user_sessionID`, `discount`, `unit`, `is_grouped`) VALUES
(7, 'SS NUT 10mm', 219, 1, 27, 0.00, 1, NULL, 58, 0.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`ID`, `name`, `status`) VALUES
(2, 'Kg', 1),
(3, 'Pcs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `updatetime`
--

CREATE TABLE `updatetime` (
  `id` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updatetime`
--

INSERT INTO `updatetime` (`id`, `time`, `companyID`, `branchID`, `applicationID`) VALUES
(1, '09:01:00', 1, 1, 1),
(2, '12:00:00', 1, 1, 1),
(3, '15:00:00', 1, 1, 1),
(4, '18:00:00', 1, 1, 1),
(5, '21:00:00', 1, 1, 1),
(6, '24:00:00', 1, 1, 1),
(7, '13:53:00', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `user_permissionID` int(11) NOT NULL,
  `permissionID` int(11) DEFAULT NULL,
  `user_id` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`user_permissionID`, `permissionID`, `user_id`) VALUES
(54, 1, 45),
(56, 1, 47),
(77, 1, 59),
(78, 1, 61),
(79, 1, 61),
(80, 1, 60),
(81, 1050, 45);

-- --------------------------------------------------------

--
-- Table structure for table `u_address_type_setup`
--

CREATE TABLE `u_address_type_setup` (
  `address_type_id` int(5) NOT NULL,
  `address_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_address_type_setup`
--

INSERT INTO `u_address_type_setup` (`address_type_id`, `address_type`) VALUES
(1, 'Parmanent Address'),
(2, 'Present Address'),
(3, 'Mailing Address'),
(4, 'Shipping Address'),
(5, 'Billing Address');

-- --------------------------------------------------------

--
-- Table structure for table `u_contact_category_types`
--

CREATE TABLE `u_contact_category_types` (
  `contact_category_type_id` int(11) NOT NULL,
  `contact_category_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_contact_category_types`
--

INSERT INTO `u_contact_category_types` (`contact_category_type_id`, `contact_category_type`, `status`) VALUES
(1, 'Affiliate Member', 1),
(2, ' Associate Member', 1),
(3, 'Full Member', 1),
(4, 'Corporate Member', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_designation_types`
--

CREATE TABLE `u_designation_types` (
  `user_designation_id` int(5) NOT NULL,
  `designation_name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `companyID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_designation_types`
--

INSERT INTO `u_designation_types` (`user_designation_id`, `designation_name`, `status`, `companyID`, `branchID`, `applicationID`) VALUES
(1, 'Teacher', 1, 1, 1, 1),
(2, 'Engineer', 1, 1, 1, 1),
(3, 'Doctor', 1, 1, 1, 1),
(5, 'New', 0, 1, 1, 1),
(6, 'Account', 1, 1, 1, 1),
(7, 'new', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_profession_types`
--

CREATE TABLE `u_profession_types` (
  `user_profession_id` int(5) NOT NULL,
  `user_profession_name` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_profession_types`
--

INSERT INTO `u_profession_types` (`user_profession_id`, `user_profession_name`, `status`) VALUES
(1, 'Teaching', 1),
(2, 'Doctor', 1),
(3, 'Researcher', 1),
(4, 'Scientist', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_profile_types`
--

CREATE TABLE `u_profile_types` (
  `profile_type_id` int(6) NOT NULL,
  `profile_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_profile_types`
--

INSERT INTO `u_profile_types` (`profile_type_id`, `profile_type`, `status`) VALUES
(1, 'Serviceholder', 1),
(3, 'Ecommerce Customer', 1),
(4, 'Vendor', 1),
(5, 'Store Manager', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_users`
--

CREATE TABLE `u_users` (
  `user_id` bigint(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `user_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `user_status_id` int(6) DEFAULT NULL,
  `SecurityCode` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PasswordQuestion` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PasswordAnswer` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `IsApproved` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_users`
--

INSERT INTO `u_users` (`user_id`, `profile_id`, `user_name`, `password`, `user_type_id`, `user_status_id`, `SecurityCode`, `PasswordQuestion`, `PasswordAnswer`, `IsApproved`) VALUES
(45, 65, 'agamisoft', 'e10adc3949ba59abbe56e057f20f883e', 4, 1, NULL, NULL, NULL, 0),
(46, 66, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 4, 1, NULL, NULL, NULL, 0),
(60, 100, 'mdshahin', 'c33c85c533db6dd6dbe59ee01484e4ea', NULL, 1, NULL, NULL, NULL, 0),
(49, 78, 'Aminul', '4384f09cbc69c98f74dcdadc642701c9', NULL, 0, NULL, NULL, NULL, 0),
(58, 96, 'mumid', 'b178a77830e2b9bf83617ad581a39b4d', 3, 0, NULL, NULL, NULL, 0),
(63, 103, 'polash1', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, 0),
(53, 93, 'sazzad', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, 0),
(59, 99, 'mdsazzad', '8045259c53b5bb887e6696ecd23934f6', NULL, 1, NULL, NULL, NULL, 0),
(54, 93, 'sazzadd', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, NULL, NULL, NULL, 0),
(57, 95, 'Akash', 'e10adc3949ba59abbe56e057f20f883e', 2, 1, NULL, NULL, NULL, 0),
(61, 101, 'mdroshid', '1b08cabcd831a51e6820e989faa8f891', NULL, 1, NULL, NULL, NULL, 0),
(62, 102, 'ashraful', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `u_user_activities`
--

CREATE TABLE `u_user_activities` (
  `user_activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ActivityDate` datetime NOT NULL,
  `ActivityDescription` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ReferenceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `u_user_address`
--

CREATE TABLE `u_user_address` (
  `address_sl_number` int(8) NOT NULL,
  `address_type_id` int(11) NOT NULL,
  `profile_id` int(6) NOT NULL,
  `address_id` int(11) NOT NULL,
  `CountryID` int(5) NOT NULL,
  `DivisionID` int(6) NOT NULL,
  `DistrictID` int(6) NOT NULL,
  `AreaID` int(10) NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `active_on_ecom` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_user_address`
--

INSERT INTO `u_user_address` (`address_sl_number`, `address_type_id`, `profile_id`, `address_id`, `CountryID`, `DivisionID`, `DistrictID`, `AreaID`, `Address`, `phone`, `active_on_ecom`) VALUES
(27, 3, 26, 26, 21, 3, 1, 2, 'MogBazar, House - Malika Vabon', NULL, 0),
(26, 1, 26, 26, 21, 3, 1, 3, 'Banani, block -2', NULL, 0),
(25, 1, 26, 26, 21, 3, 1, 1, 'Banani, block -2', NULL, 0),
(28, 2, 28, 28, 21, 3, 1, 4, 'Mirput, House - Malik Tower', NULL, 0),
(29, 2, 30, 30, 21, 3, 1, 2, 'Block -2, Hakim monzil', NULL, 0),
(36, 2, 23, 23, 21, 3, 1, 5, 'Aragbag- Nillei House, Pettrol pamp', NULL, 0),
(37, 1, 41, 41, 21, 3, 1, 1, 'Banani, block -2', NULL, 0),
(57, 5, 52, 0, 21, 1, 35, 0, 'Barishal R/A', '4563463456', 1),
(60, 4, 52, 0, 21, 3, 1, 0, 'Bangshal 17/1', '32454352435', 1),
(59, 5, 52, 0, 21, 3, 1, 0, 'Kollanpur 12/1', '23421353245', 0),
(61, 5, 52, 0, 21, 3, 1, 0, 'Mohammdpur R/A', '12354325435', 0),
(54, 4, 52, 0, 21, 3, 1, 0, 'Mptijheel, C/A', '12344523545', 0),
(58, 4, 52, 0, 21, 3, 1, 0, 'Naraynganj 3/2', '4563463456457', 0),
(55, 5, 52, 0, 21, 3, 1, 0, 'Komlapur R/A', '412341235345', 0),
(62, 4, 52, 0, 21, 3, 1, 0, 'Rampura', '21343454', 0),
(63, 4, 52, 0, 21, 3, 1, 0, '18/1 Bangshal, Road 31/1', '123412543254325', 0),
(64, 4, 102, 0, 21, 1, 34, 0, 'Test', 'Test', 0),
(65, 4, 102, 0, 21, 1, 34, 0, 'Test', 'Test', 0),
(66, 4, 102, 0, 21, 1, 35, 0, 'Test', '23232323', 0),
(67, 5, 102, 0, 21, 1, 35, 0, 'Test', '121212', 0),
(68, 4, 102, 0, 21, 4, 57, 0, 'Test', '121212', 0),
(70, 4, 102, 0, 21, 3, 1, 0, 'Dhaka-1200', '01961120912', 1),
(69, 5, 102, 0, 21, 3, 1, 0, 'Dhaka', '01951233084', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_user_applications`
--

CREATE TABLE `u_user_applications` (
  `sl_no` int(6) NOT NULL,
  `profile_id` int(8) NOT NULL,
  `ApplicationID` int(4) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_user_applications`
--

INSERT INTO `u_user_applications` (`sl_no`, `profile_id`, `ApplicationID`, `status`) VALUES
(1, 33, 2, 1),
(2, 36, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_user_profile`
--

CREATE TABLE `u_user_profile` (
  `EntryUserID` int(11) NOT NULL COMMENT 'user who entered the data',
  `profile_id` int(11) NOT NULL,
  `contact_category_type_id` int(11) DEFAULT NULL COMMENT '2=employee',
  `profile_type_id` int(11) DEFAULT NULL COMMENT 'track the user profile type',
  `profile_Known_ID` int(6) DEFAULT NULL,
  `address_id` int(6) DEFAULT NULL,
  `user_designation_id` int(6) DEFAULT NULL,
  `user_profession_id` int(6) DEFAULT NULL,
  `CompanyID` int(6) DEFAULT NULL,
  `BranchID` int(6) DEFAULT NULL,
  `ApplicationID` int(6) DEFAULT NULL,
  `Title` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `FullName` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `DisplayName` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `About` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `Gender` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `BloodGroup` varchar(70) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Nationality` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Email` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `AlternativeEmail` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PrimaryMobile` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `OtherContactNumbers` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Website` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Facebook` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `profile_photo` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `CreatedDate` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `EntryDate` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `LastUpdateUserID` int(11) DEFAULT NULL,
  `LastUpdate` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL COMMENT 'This column is used to track employees of each store',
  `departmentID` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_user_profile`
--

INSERT INTO `u_user_profile` (`EntryUserID`, `profile_id`, `contact_category_type_id`, `profile_type_id`, `profile_Known_ID`, `address_id`, `user_designation_id`, `user_profession_id`, `CompanyID`, `BranchID`, `ApplicationID`, `Title`, `FullName`, `DisplayName`, `About`, `Gender`, `DateOfBirth`, `BloodGroup`, `Nationality`, `Email`, `AlternativeEmail`, `PrimaryMobile`, `OtherContactNumbers`, `Website`, `Facebook`, `profile_photo`, `CreatedDate`, `EntryDate`, `LastUpdateUserID`, `LastUpdate`, `storeID`, `departmentID`, `status`) VALUES
(45, 65, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mr.', 'Nahid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-13', '2018-12-13', NULL, NULL, 16, NULL, 1),
(45, 66, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mr', 'Admin', '', ' ', 'm', '2018-12-13', '', NULL, 'admin@gmail.com', NULL, '65745674756', '', NULL, NULL, NULL, '2018-12-13', '2018-12-13', NULL, NULL, 22, NULL, 1),
(47, 67, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-13', '2018-12-13', NULL, NULL, 16, NULL, 1),
(45, 99, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mr', 'Sazzad ', NULL, '', NULL, '0000-00-00', 'O+', NULL, 'sh.mumid007@gmail.com', NULL, '', NULL, NULL, NULL, NULL, '2019-03-12', '2019-03-12', NULL, NULL, 32, NULL, 1),
(45, 100, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mr', 'mdshahin', NULL, '', NULL, '0000-00-00', '', NULL, 'rashedscrewcenter01@gmail.com', NULL, '', NULL, NULL, NULL, NULL, '2019-03-12', '2019-03-12', NULL, NULL, 33, NULL, 1),
(45, 73, 2, NULL, 1, NULL, 6, 1, 1, 1, 1, 'Mr', 'Md Shahin', 'Shahin', '&lt;p&gt;hghgf&lt;/p&gt;', 'female', '1993-08-01', '3', 'Bangladeshi', 'md.shahin4078@gmail.com', NULL, '01705478052', '01674182616', '', '', 'image_directory/profileimage/97cb2d7b8b-2019-07-04.jpg', '2019-02-17', 'Feb 16, 2019 07:29 PM', NULL, NULL, NULL, 4, 1),
(45, 81, 2, NULL, 1, NULL, 6, 1, 1, 1, 1, 'Mr', 'Rasel', 'Rasel', '&lt;p&gt;dfgdfgdf dfgdgd&lt;/p&gt;', 'male', '0000-00-00', '', 'Bangladeshi', 'Rasel@gmail.com', NULL, '01705478054', NULL, '', '', NULL, '2019-02-12', 'Feb 17, 2019 07:32 PM', NULL, NULL, NULL, 4, 1),
(45, 82, 2, 1, 1, NULL, 6, 1, 1, 1, 1, 'Mr', 'Roshid', 'Roshid', NULL, NULL, '1970-10-08', '', 'Bangladeshi', 'roshid@gmail.com', NULL, '01705478061', NULL, '', '', NULL, '2019-02-18', 'Feb 17, 2019 07:34 PM', NULL, NULL, NULL, 4, 0),
(45, 1, 2, 1, 1, NULL, 6, 1, 1, 1, 1, 'Mr', 'Abul Hasnat', 'Hasnat', NULL, 'Male', '1968-01-01', 'O+', 'Bangladeshi', 'mdabulhasnat01@gmail.com', NULL, '01705478051', NULL, NULL, NULL, NULL, '2019-02-18', 'Feb 18, 2019 10:24 AM', NULL, NULL, NULL, 4, 0),
(45, 78, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ridwan Ahmed', NULL, '', NULL, '0000-00-00', '', NULL, 'ridwan.nstu@gmail.com', NULL, '01671613409', NULL, NULL, NULL, NULL, '2019-02-17', '2019-02-17', NULL, NULL, 16, NULL, 1),
(45, 79, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', NULL, '', NULL, '2019-02-14', 'A+', NULL, '', NULL, '', NULL, NULL, NULL, NULL, '2019-02-17', '2019-02-17', NULL, NULL, 16, NULL, 1),
(45, 80, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abdur Rashid', NULL, '', 'm', '0000-00-00', 'B+', NULL, 'abdur6381@gmai.com', NULL, '01705478061', NULL, NULL, NULL, NULL, '2019-02-17', '2019-02-17', NULL, NULL, 22, NULL, 1),
(45, 84, 2, NULL, 1, NULL, 1, 1, 1, 1, 1, 'Mr', 'Sakib', 'Sakib', '&lt;p&gt;ewer wrewrew&lt;/p&gt;', 'male', '0000-00-00', '', 'Bangladeshi', 'sakib@gmail.com', NULL, '01675834226', NULL, '', '', NULL, '2019-02-18', 'Feb 18, 2019 10:32 AM', NULL, NULL, NULL, 4, 1),
(45, 85, 2, 1, 1, NULL, 6, 1, 1, 1, 1, 'Mr', 'Jugol Khan', 'Jugol', NULL, 'Male', NULL, NULL, 'Bangladeshi', 'jugol@gmail.com', NULL, '01705478063', '', NULL, NULL, NULL, '2019-02-18', 'Feb 18, 2019 10:36 AM', NULL, NULL, NULL, 4, 0),
(45, 86, 2, 1, 1, NULL, 2, 1, 1, 1, 1, 'Mr', 'Md Shuvo', 'Shuvo', NULL, 'Male', NULL, NULL, 'Bangladeshi', 'shuvo@gmail.com', NULL, '01616524999', NULL, NULL, NULL, NULL, '2019-02-18', 'Feb 18, 2019 10:40 AM', NULL, NULL, NULL, 4, 0),
(45, 87, 2, NULL, 1, NULL, 2, 1, 1, 1, 1, 'Mr', 'Saddam Hossain', 'Saddam', '&lt;p&gt;rtete tyyty&lt;/p&gt;', 'male', '0000-00-00', '', 'Bangladeshi', 'saddam@gmail.com', NULL, '01705478057', NULL, '', '', NULL, '2019-02-18', 'Feb 18, 2019 10:43 AM', NULL, NULL, NULL, 3, 1),
(45, 88, 2, NULL, 1, NULL, 1, 1, 1, 1, 1, 'Mr', 'Md Sazzad', 'Sazzad', '&lt;p&gt;ddf&lt;/p&gt;', 'male', '0000-00-00', '', 'Bangladeshi', 'sazzad@gmail.com', NULL, '01705478056', NULL, '', '', NULL, '2019-02-18', 'Feb 18, 2019 10:46 AM', NULL, NULL, NULL, 2, 1),
(45, 89, 2, 1, 1, NULL, 6, 1, 1, 1, 1, 'Mr', 'Anika', 'Anika', '&lt;p&gt;fsds&lt;/p&gt;', 'female', '0000-00-00', '', 'Bangladeshi', 'anika@gmail.com', NULL, '01705478059', NULL, '', '', NULL, '2019-02-18', 'Feb 18, 2019 10:48 AM', NULL, NULL, NULL, 4, 1),
(45, 90, 2, 1, 1, NULL, 6, 1, 1, 1, 1, 'Mr', 'Foisal', 'Foisal', NULL, 'Male', NULL, NULL, 'Bangladeshi', 'foisal@gmail.com', NULL, '01705478055', NULL, NULL, NULL, NULL, '2019-02-18', 'Feb 18, 2019 10:50 AM', NULL, NULL, NULL, 4, 1),
(45, 91, 2, 1, 1, NULL, 2, 1, 1, 1, 1, 'Mr', 'Nadim', 'Nadim', NULL, 'Male', NULL, NULL, 'Bangladeshi', 'nadim@gmail.com', NULL, '01705478060', NULL, NULL, NULL, NULL, '2019-02-18', 'Feb 18, 2019 10:53 AM', NULL, NULL, NULL, 3, 1),
(45, 92, 2, 1, 1, NULL, 6, 1, 1, 1, 1, 'Mr', 'Fahim', 'Fahim', NULL, 'Male', '1998-08-17', NULL, 'Bangladeshi', 'fahimislam5478@gmail.com', NULL, '01318790223', NULL, NULL, NULL, NULL, '2019-02-18', 'Mar 15, 2019 02:57 AM', NULL, NULL, NULL, 2, 1),
(45, 95, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mr', 'Akash', '', '  ', 'm', '0000-00-00', '', NULL, 'manirujjamanakash@gmail.com', NULL, '01812712232', '', NULL, NULL, NULL, '2019-02-26', '2019-02-26', NULL, NULL, 26, NULL, 1),
(45, 93, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mr', 'Sazzad Hossain', NULL, '', 'm', '0000-00-00', 'O+', NULL, 'arbcorporation01@gmail.com', NULL, '', NULL, NULL, NULL, NULL, '2019-03-07', '2019-03-07', NULL, NULL, 27, NULL, 1),
(45, 101, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mr', 'mdroshid', NULL, '', NULL, '0000-00-00', '', NULL, 'mdroshid@gmail.com', NULL, '', NULL, NULL, NULL, NULL, '2019-03-12', '2019-03-12', NULL, NULL, 31, NULL, 1),
(45, 102, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ashrafuzzaman ', 'Ashraful', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '232323', NULL, NULL, NULL, 'image_directory/profileimage/bffbcc771c-2019-07-03.png', '2019-03-27', '2019-03-27', NULL, NULL, NULL, NULL, 1),
(0, 103, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-07', '2019-04-07', NULL, NULL, NULL, NULL, 1),
(0, 104, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 'Ashraful', 'Ash', NULL, 'm', '0000-00-00', '', NULL, 'dfgdfg@dfg.com', NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(0, 105, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'Ashraful', 'Ash', NULL, NULL, '0000-00-00', '1', NULL, 'djh@gf.com', NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(0, 109, NULL, 1, NULL, NULL, 2, 3, 1, NULL, 1, NULL, 'dgdfgdf', 'dgdgg', '&lt;p&gt;gfhfghfg ffsd&lt;/p&gt;', 'male', '2019-07-18', '1', NULL, 'dfgdgdgf@jhfjhf.vom', NULL, '66846545', NULL, 'https:dbfsdkffsdj.com', 'https:facebook.com/jhfgjhff', 'image_directory/profileimage/b0600e6948-2019-07-03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(0, 106, NULL, 1, NULL, NULL, 0, 0, 1, NULL, 1, NULL, 'dfgdfgdf', 'dfgdfgfd', NULL, 'm', '0000-00-00', '', NULL, 'fgdgd@fjgf.com', NULL, '', NULL, '', '', 'image_directory/profileimage/56fea243c9-2019-07-03.png', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(0, 107, NULL, 1, NULL, NULL, 0, 0, 1, NULL, 1, NULL, 'rgergerg', 'fgggfdg', NULL, NULL, '0000-00-00', '', NULL, 'fgdgd@fjgff.com', NULL, '', NULL, '', '', 'image_directory/profileimage/18441c779f-2019-07-03.png', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(0, 108, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'gdfgldflgkd', 'dfgdfgdfjg', '&lt;p&gt;dgdfgfgdfgd&lt;/p&gt;', NULL, '2019-07-18', '1', NULL, 'hdfli@kjghf.com', NULL, '', NULL, '', '', 'image_directory/profileimage/c6b2a68a40-2019-07-03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(0, 110, NULL, NULL, NULL, NULL, 3, 2, 1, NULL, 1, NULL, 'sdfsdfsfs', 'sdfsdfsdfsd', '&lt;p&gt;dfgdfgf rwerwerwer&lt;/p&gt;', 'male', '2019-07-11', '5', NULL, 'sdfsdfsdf@fgdj.com', NULL, '01812712232', NULL, 'https:dbfsdkffgfgfgfsdj.com', 'https:facebook.com/jhfgjhffgdfg', 'image_directory/profileimage/52e03e7cf7-2019-07-03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(0, 111, NULL, 1, NULL, NULL, 0, 0, 1, NULL, 1, NULL, 'fgdg fgfdg', 'Ash', '&lt;p&gt;dgfdgdf&lt;/p&gt;', 'male', '2019-07-18', '', NULL, 'ma1nier2323erh@gmail.com', NULL, '', NULL, '', '', 'image_directory/profileimage/af9e72c0ea-2019-07-03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(0, 112, NULL, NULL, NULL, NULL, 2, 3, 1, NULL, 1, NULL, 'asdada', 'dfsdfdsfs', '&lt;p&gt;fgfggfgfgdfgf&lt;/p&gt;', 'male', '1997-04-05', '4', NULL, 'sdfsdf@shgfdh.ovo', NULL, '01812712', NULL, 'https:dbfsfgfgfdkj.com', 'https:facebook.com/jhfgjhffg', 'image_directory/profileimage/f1292a18ef-2019-07-04.png', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(0, 113, NULL, 1, NULL, NULL, 0, 0, 1, NULL, 1, NULL, 'fgdg', 'fgdg', '', 'male', '0000-00-00', '', NULL, 'dfgdffgfg@dfg.com', NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_user_status`
--

CREATE TABLE `u_user_status` (
  `user_status_id` int(11) NOT NULL,
  `user_status` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_user_status`
--

INSERT INTO `u_user_status` (`user_status_id`, `user_status`, `status`) VALUES
(1, 'Active', 1),
(2, 'Inactive', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_user_types`
--

CREATE TABLE `u_user_types` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `u_user_types`
--

INSERT INTO `u_user_types` (`user_type_id`, `user_type_name`, `status`) VALUES
(1, '', 1),
(2, '', 1),
(3, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `variationID` int(11) NOT NULL,
  `variation_name` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `variation_attribute` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`variationID`, `variation_name`, `variation_attribute`) VALUES
(1, 'ColorAndSize', '1,2,23'),
(2, 'CS', '1,23'),
(3, 'ppp', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variation_attribute`
--

CREATE TABLE `variation_attribute` (
  `variation_attributeID` int(11) NOT NULL,
  `variationTypeID` int(11) DEFAULT NULL,
  `attribute` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `variation_attribute`
--

INSERT INTO `variation_attribute` (`variation_attributeID`, `variationTypeID`, `attribute`) VALUES
(1, 1, 'red'),
(2, 1, 'blue'),
(3, 1, 'green'),
(4, 1, 'yellow'),
(5, 1, 'white'),
(23, 23, 'x'),
(24, 23, 's'),
(25, 23, 'm'),
(106, 38, 'ew'),
(107, 38, 'w'),
(108, 38, 'qwe'),
(109, 39, 'red'),
(110, 40, 'dfg'),
(111, 40, 'fd'),
(112, 40, 'fdgsdf');

-- --------------------------------------------------------

--
-- Table structure for table `variation_distribute`
--

CREATE TABLE `variation_distribute` (
  `id` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL,
  `variationID` int(11) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `inventoryID` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `variation_distribute`
--

INSERT INTO `variation_distribute` (`id`, `productID`, `storeID`, `variationID`, `quantity`, `inventoryID`, `vendorID`) VALUES
(45, 1, 1, 1, 40, NULL, NULL),
(46, 1, 1, 1, 40, NULL, NULL),
(47, 79, 1, 1, 3, 120, 30),
(48, 79, 1, 2, 2, 120, 30),
(49, 79, 1, 1, 3, 120, 30),
(50, 79, 1, 2, 2, 120, 30),
(51, 94, 7, 1, 1, 121, 30),
(52, 94, 7, 2, 2, 121, 30),
(53, 94, 7, 1, 1, 122, 30),
(54, 94, 7, 2, 2, 122, 30),
(55, 94, 7, 1, 2, 123, 30),
(56, 94, 7, 2, 1, 123, 30),
(57, 112, 7, 1, 10, 125, 30),
(58, 113, 7, 2, 5, 126, 30),
(59, 114, 7, 1, 5, 127, 30),
(60, 115, 7, 1, 5, 128, 30),
(61, 112, 9, 1, 5, 151, 30),
(62, 112, 9, 2, 5, 151, 30),
(63, 112, 9, 1, 5, 151, 30),
(64, 112, 9, 2, 5, 151, 30),
(67, 112, 9, 1, 5, 151, 30),
(68, 112, 9, 2, 5, 151, 30),
(69, 112, 8, 1, 5, 150, 30),
(70, 112, 8, 2, 5, 150, 30),
(71, 112, 11, 1, 5, 152, 30),
(72, 112, 11, 1, 5, 153, 30),
(73, 115, 11, 1, 5, 157, 30),
(74, 112, 8, 1, 5, 160, 30);

-- --------------------------------------------------------

--
-- Table structure for table `variation_types`
--

CREATE TABLE `variation_types` (
  `variationTypeID` int(11) NOT NULL,
  `variation_name` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `variation_types`
--

INSERT INTO `variation_types` (`variationTypeID`, `variation_name`) VALUES
(1, 'Color'),
(23, 'Size'),
(38, 'new var'),
(39, 'Test'),
(40, 'derf');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `settingID` int(9) NOT NULL,
  `siteTitle` varchar(60) NOT NULL,
  `siteLogo` varchar(60) NOT NULL,
  `siteFav` varchar(255) NOT NULL,
  `metaTag` varchar(80) NOT NULL,
  `metaDescription` text NOT NULL,
  `primaryPhone` varchar(20) NOT NULL,
  `alterPhone` varchar(20) NOT NULL,
  `primaryMobile` varchar(20) NOT NULL,
  `alterMobile` varchar(20) NOT NULL,
  `faxNo` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `address` text NOT NULL,
  `office_address` text NOT NULL,
  `footerText` varchar(80) NOT NULL,
  `facebook` varchar(60) NOT NULL,
  `twitter` varchar(60) NOT NULL,
  `linkedin` varchar(60) NOT NULL,
  `googlePlus` varchar(60) NOT NULL,
  `youtube` varchar(60) NOT NULL,
  `pinterest` varchar(60) NOT NULL,
  `branchID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`settingID`, `siteTitle`, `siteLogo`, `siteFav`, `metaTag`, `metaDescription`, `primaryPhone`, `alterPhone`, `primaryMobile`, `alterMobile`, `faxNo`, `email`, `address`, `office_address`, `footerText`, `facebook`, `twitter`, `linkedin`, `googlePlus`, `youtube`, `pinterest`, `branchID`, `applicationID`) VALUES
(1, 'Universal Salt Iodization (USI) Bangladesh | Supported by UN', '61825a95a773e7.93903464.png', '6188bef9543157.18342644.png', 'Universal Salt Iodization (USI) Bangladesh | Supported by UNICEF', '<p>Universal Salt Iodization (USI) Bangladesh | Supported by UNICEF</p>', '88995566', '2', '+8801819315938', '4', '999000', 'support@usi.net.bd', '<p>Syed Mahbub Morshed Avenue<br />Sher-E-Bangla Nagar, Dhaka 1207<br />Bangladesh</p>', '<p>UNICEF Bangladesh<br />UNICEF House, Plot E-30</p>', 'Copyright Â© 2019 Agami Soft Ltd. All Rights Reserved.', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://www.google-plus.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albumlists`
--
ALTER TABLE `albumlists`
  ADD PRIMARY KEY (`albumID`);

--
-- Indexes for table `allowance_transactions`
--
ALTER TABLE `allowance_transactions`
  ADD PRIMARY KEY (`allowanceTransactionID`);

--
-- Indexes for table `allowance_types`
--
ALTER TABLE `allowance_types`
  ADD PRIMARY KEY (`allowanceTypeID`);

--
-- Indexes for table `application_list`
--
ALTER TABLE `application_list`
  ADD PRIMARY KEY (`ApplicationID`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `attendance_given`
--
ALTER TABLE `attendance_given`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attrID`);

--
-- Indexes for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`attrValueID`);

--
-- Indexes for table `a_area`
--
ALTER TABLE `a_area`
  ADD PRIMARY KEY (`AreaID`);

--
-- Indexes for table `a_branch`
--
ALTER TABLE `a_branch`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `a_company`
--
ALTER TABLE `a_company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `a_districts`
--
ALTER TABLE `a_districts`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `a_divisions`
--
ALTER TABLE `a_divisions`
  ADD PRIMARY KEY (`division_id`);

--
-- Indexes for table `a_listofcounties`
--
ALTER TABLE `a_listofcounties`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `a_upazilas`
--
ALTER TABLE `a_upazilas`
  ADD PRIMARY KEY (`upazila_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bankID`);

--
-- Indexes for table `bank_amounts`
--
ALTER TABLE `bank_amounts`
  ADD PRIMARY KEY (`bank_amountID`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`bannerImageID`);

--
-- Indexes for table `blood_gruops`
--
ALTER TABLE `blood_gruops`
  ADD PRIMARY KEY (`blood_group_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brandID`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`business_typeID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `challan`
--
ALTER TABLE `challan`
  ADD PRIMARY KEY (`challanID`);

--
-- Indexes for table `challan_details`
--
ALTER TABLE `challan_details`
  ADD PRIMARY KEY (`challan_detailsID`);

--
-- Indexes for table `checktransactions`
--
ALTER TABLE `checktransactions`
  ADD PRIMARY KEY (`checkID`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `company_addresses`
--
ALTER TABLE `company_addresses`
  ADD PRIMARY KEY (`addressID`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`SL`),
  ADD UNIQUE KEY `couponCode` (`couponCode`),
  ADD KEY `couponTypeID` (`couponTypeID`);

--
-- Indexes for table `coupon_types`
--
ALTER TABLE `coupon_types`
  ADD PRIMARY KEY (`couponTypeID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `fk3` (`typeID`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`customer_addressID`);

--
-- Indexes for table `customer_docs`
--
ALTER TABLE `customer_docs`
  ADD PRIMARY KEY (`customer_doc_ID`),
  ADD KEY `fk5` (`customerID`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`customer_typeID`);

--
-- Indexes for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`deductionID`);

--
-- Indexes for table `deduction_transactions`
--
ALTER TABLE `deduction_transactions`
  ADD PRIMARY KEY (`deductionTransactionID`);

--
-- Indexes for table `deduction_types`
--
ALTER TABLE `deduction_types`
  ADD PRIMARY KEY (`deductionTypeID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`departmentID`);

--
-- Indexes for table `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`documentTypeID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `fk2` (`storeID`);

--
-- Indexes for table `employee_allowance`
--
ALTER TABLE `employee_allowance`
  ADD PRIMARY KEY (`allowanceID`);

--
-- Indexes for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `employee_messages`
--
ALTER TABLE `employee_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`salaryID`);

--
-- Indexes for table `employee_salary_reports`
--
ALTER TABLE `employee_salary_reports`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `employee_salary_types`
--
ALTER TABLE `employee_salary_types`
  ADD PRIMARY KEY (`salaryTypeID`);

--
-- Indexes for table `employee_shifts`
--
ALTER TABLE `employee_shifts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenseID`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`expense_typeID`);

--
-- Indexes for table `failed_logins`
--
ALTER TABLE `failed_logins`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`gItemID`);

--
-- Indexes for table `gallerytypes`
--
ALTER TABLE `gallerytypes`
  ADD PRIMARY KEY (`galleryTypeID`);

--
-- Indexes for table `gcategory_setup`
--
ALTER TABLE `gcategory_setup`
  ADD PRIMARY KEY (`gCategoryID`);

--
-- Indexes for table `gcategory_type_setup`
--
ALTER TABLE `gcategory_type_setup`
  ADD PRIMARY KEY (`gCategoryWiseTypeID`);

--
-- Indexes for table `groupproducts`
--
ALTER TABLE `groupproducts`
  ADD PRIMARY KEY (`groupProductID`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`holidayID`);

--
-- Indexes for table `holiday_types`
--
ALTER TABLE `holiday_types`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`inventoryID`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languageID`);

--
-- Indexes for table `leave_attachments`
--
ALTER TABLE `leave_attachments`
  ADD PRIMARY KEY (`attachmentID`);

--
-- Indexes for table `leave_category`
--
ALTER TABLE `leave_category`
  ADD PRIMARY KEY (`leaveCategoryID`);

--
-- Indexes for table `leave_quota`
--
ALTER TABLE `leave_quota`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `leave_reasons`
--
ALTER TABLE `leave_reasons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `liketypes`
--
ALTER TABLE `liketypes`
  ADD PRIMARY KEY (`likeTypeID`);

--
-- Indexes for table `login_activity`
--
ALTER TABLE `login_activity`
  ADD PRIMARY KEY (`activityID`);

--
-- Indexes for table `login_attempt_count`
--
ALTER TABLE `login_attempt_count`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `login_lockdown`
--
ALTER TABLE `login_lockdown`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `main_banks`
--
ALTER TABLE `main_banks`
  ADD PRIMARY KEY (`mainBankID`);

--
-- Indexes for table `message_attachments`
--
ALTER TABLE `message_attachments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsID`);

--
-- Indexes for table `newscategories`
--
ALTER TABLE `newscategories`
  ADD PRIMARY KEY (`newsCategoryID`);

--
-- Indexes for table `newstypes`
--
ALTER TABLE `newstypes`
  ADD PRIMARY KEY (`newsTypeID`);

--
-- Indexes for table `office_standardtypes`
--
ALTER TABLE `office_standardtypes`
  ADD PRIMARY KEY (`standardTypeID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detailsID`);

--
-- Indexes for table `pad_header_height`
--
ALTER TABLE `pad_header_height`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `permanent_block`
--
ALTER TABLE `permanent_block`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD UNIQUE KEY `pcode` (`pcode`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `brandID` (`brandID`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`product_colorID`);

--
-- Indexes for table `product_price`
--
ALTER TABLE `product_price`
  ADD PRIMARY KEY (`product_priceID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`product_sizeID`);

--
-- Indexes for table `profile_activity_setup`
--
ALTER TABLE `profile_activity_setup`
  ADD PRIMARY KEY (`activity_sl_number`);

--
-- Indexes for table `profile_known_setup`
--
ALTER TABLE `profile_known_setup`
  ADD PRIMARY KEY (`profile_Known_ID`);

--
-- Indexes for table `projectcategories`
--
ALTER TABLE `projectcategories`
  ADD PRIMARY KEY (`projectCatID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectID`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`quotationID`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `rtl_levels`
--
ALTER TABLE `rtl_levels`
  ADD PRIMARY KEY (`SL`),
  ADD UNIQUE KEY `level_nameID` (`level_nameID`);

--
-- Indexes for table `salary_grades`
--
ALTER TABLE `salary_grades`
  ADD PRIMARY KEY (`salaryGradeID`);

--
-- Indexes for table `salary_reports`
--
ALTER TABLE `salary_reports`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `sales_types`
--
ALTER TABLE `sales_types`
  ADD PRIMARY KEY (`sales_typeID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceID`);

--
-- Indexes for table `servicestypes`
--
ALTER TABLE `servicestypes`
  ADD PRIMARY KEY (`serviceTypeID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settingsID`);

--
-- Indexes for table `shalves`
--
ALTER TABLE `shalves`
  ADD PRIMARY KEY (`shalvesID`),
  ADD KEY `storeID` (`storeID`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`shiftID`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`SL`),
  ADD KEY `shippingType` (`shippingType`),
  ADD KEY `districtID` (`districtID`),
  ADD KEY `divisionID` (`divisionID`);

--
-- Indexes for table `shipping_types`
--
ALTER TABLE `shipping_types`
  ADD PRIMARY KEY (`shippingTypeID`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slideID`);

--
-- Indexes for table `slidetypes`
--
ALTER TABLE `slidetypes`
  ADD PRIMARY KEY (`slideTypeID`);

--
-- Indexes for table `stock_quantity`
--
ALTER TABLE `stock_quantity`
  ADD PRIMARY KEY (`quantityID`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`storeID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `tbllikes`
--
ALTER TABLE `tbllikes`
  ADD PRIMARY KEY (`likeID`);

--
-- Indexes for table `temporary_transfer_table`
--
ALTER TABLE `temporary_transfer_table`
  ADD PRIMARY KEY (`temporary_productID`);

--
-- Indexes for table `temp_allowance_transactions`
--
ALTER TABLE `temp_allowance_transactions`
  ADD PRIMARY KEY (`allowanceTransactionID`);

--
-- Indexes for table `temp_attendance`
--
ALTER TABLE `temp_attendance`
  ADD PRIMARY KEY (`SL`);

--
-- Indexes for table `temp_cart_data`
--
ALTER TABLE `temp_cart_data`
  ADD PRIMARY KEY (`temp_tableID`);

--
-- Indexes for table `temp_deduction_transactions`
--
ALTER TABLE `temp_deduction_transactions`
  ADD PRIMARY KEY (`deductionTransactionID`);

--
-- Indexes for table `temp_transfer_product_lists`
--
ALTER TABLE `temp_transfer_product_lists`
  ADD PRIMARY KEY (`listID`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`testimonialID`);

--
-- Indexes for table `testimonytypes`
--
ALTER TABLE `testimonytypes`
  ADD PRIMARY KEY (`testimonyTypeID`);

--
-- Indexes for table `tmp_customer_product_sale`
--
ALTER TABLE `tmp_customer_product_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_product`
--
ALTER TABLE `tmp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `updatetime`
--
ALTER TABLE `updatetime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`user_permissionID`);

--
-- Indexes for table `u_address_type_setup`
--
ALTER TABLE `u_address_type_setup`
  ADD PRIMARY KEY (`address_type_id`);

--
-- Indexes for table `u_contact_category_types`
--
ALTER TABLE `u_contact_category_types`
  ADD PRIMARY KEY (`contact_category_type_id`),
  ADD UNIQUE KEY `contact_category_type_id` (`contact_category_type`);

--
-- Indexes for table `u_designation_types`
--
ALTER TABLE `u_designation_types`
  ADD PRIMARY KEY (`user_designation_id`);

--
-- Indexes for table `u_profession_types`
--
ALTER TABLE `u_profession_types`
  ADD PRIMARY KEY (`user_profession_id`);

--
-- Indexes for table `u_profile_types`
--
ALTER TABLE `u_profile_types`
  ADD PRIMARY KEY (`profile_type_id`),
  ADD UNIQUE KEY `profile_type_id` (`profile_type`);

--
-- Indexes for table `u_users`
--
ALTER TABLE `u_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `u_user_activities`
--
ALTER TABLE `u_user_activities`
  ADD PRIMARY KEY (`user_activity_id`);

--
-- Indexes for table `u_user_address`
--
ALTER TABLE `u_user_address`
  ADD PRIMARY KEY (`address_sl_number`);

--
-- Indexes for table `u_user_applications`
--
ALTER TABLE `u_user_applications`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `u_user_profile`
--
ALTER TABLE `u_user_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `u_user_status`
--
ALTER TABLE `u_user_status`
  ADD PRIMARY KEY (`user_status_id`),
  ADD UNIQUE KEY `user_status_id` (`user_status`);

--
-- Indexes for table `u_user_types`
--
ALTER TABLE `u_user_types`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`variationID`);

--
-- Indexes for table `variation_attribute`
--
ALTER TABLE `variation_attribute`
  ADD PRIMARY KEY (`variation_attributeID`);

--
-- Indexes for table `variation_distribute`
--
ALTER TABLE `variation_distribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variation_types`
--
ALTER TABLE `variation_types`
  ADD PRIMARY KEY (`variationTypeID`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`settingID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albumlists`
--
ALTER TABLE `albumlists`
  MODIFY `albumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `allowance_transactions`
--
ALTER TABLE `allowance_transactions`
  MODIFY `allowanceTransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `allowance_types`
--
ALTER TABLE `allowance_types`
  MODIFY `allowanceTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `application_list`
--
ALTER TABLE `application_list`
  MODIFY `ApplicationID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `attendance_given`
--
ALTER TABLE `attendance_given`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attrID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `attrValueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `a_area`
--
ALTER TABLE `a_area`
  MODIFY `AreaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `a_branch`
--
ALTER TABLE `a_branch`
  MODIFY `BranchID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `a_company`
--
ALTER TABLE `a_company`
  MODIFY `CompanyID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `a_districts`
--
ALTER TABLE `a_districts`
  MODIFY `district_id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `a_divisions`
--
ALTER TABLE `a_divisions`
  MODIFY `division_id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `a_listofcounties`
--
ALTER TABLE `a_listofcounties`
  MODIFY `CountryID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `a_upazilas`
--
ALTER TABLE `a_upazilas`
  MODIFY `upazila_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `bankID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT for table `bank_amounts`
--
ALTER TABLE `bank_amounts`
  MODIFY `bank_amountID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `bannerImageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blood_gruops`
--
ALTER TABLE `blood_gruops`
  MODIFY `blood_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `business_typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `challan`
--
ALTER TABLE `challan`
  MODIFY `challanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `challan_details`
--
ALTER TABLE `challan_details`
  MODIFY `challan_detailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `checktransactions`
--
ALTER TABLE `checktransactions`
  MODIFY `checkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT for table `company_addresses`
--
ALTER TABLE `company_addresses`
  MODIFY `addressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupon_types`
--
ALTER TABLE `coupon_types`
  MODIFY `couponTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `customer_addressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `customer_docs`
--
ALTER TABLE `customer_docs`
  MODIFY `customer_doc_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `customer_typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `deductionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `deduction_transactions`
--
ALTER TABLE `deduction_transactions`
  MODIFY `deductionTransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `deduction_types`
--
ALTER TABLE `deduction_types`
  MODIFY `deductionTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `departmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `document_types`
--
ALTER TABLE `document_types`
  MODIFY `documentTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_allowance`
--
ALTER TABLE `employee_allowance`
  MODIFY `allowanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_messages`
--
ALTER TABLE `employee_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `salaryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `employee_salary_reports`
--
ALTER TABLE `employee_salary_reports`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `employee_salary_types`
--
ALTER TABLE `employee_salary_types`
  MODIFY `salaryTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_shifts`
--
ALTER TABLE `employee_shifts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `expense_typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_logins`
--
ALTER TABLE `failed_logins`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `gItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `gallerytypes`
--
ALTER TABLE `gallerytypes`
  MODIFY `galleryTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gcategory_setup`
--
ALTER TABLE `gcategory_setup`
  MODIFY `gCategoryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcategory_type_setup`
--
ALTER TABLE `gcategory_type_setup`
  MODIFY `gCategoryWiseTypeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groupproducts`
--
ALTER TABLE `groupproducts`
  MODIFY `groupProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `holidayID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=579;

--
-- AUTO_INCREMENT for table `holiday_types`
--
ALTER TABLE `holiday_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `inventoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_attachments`
--
ALTER TABLE `leave_attachments`
  MODIFY `attachmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `leave_category`
--
ALTER TABLE `leave_category`
  MODIFY `leaveCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave_quota`
--
ALTER TABLE `leave_quota`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_reasons`
--
ALTER TABLE `leave_reasons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `liketypes`
--
ALTER TABLE `liketypes`
  MODIFY `likeTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_activity`
--
ALTER TABLE `login_activity`
  MODIFY `activityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `login_attempt_count`
--
ALTER TABLE `login_attempt_count`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_lockdown`
--
ALTER TABLE `login_lockdown`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_banks`
--
ALTER TABLE `main_banks`
  MODIFY `mainBankID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message_attachments`
--
ALTER TABLE `message_attachments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `newscategories`
--
ALTER TABLE `newscategories`
  MODIFY `newsCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `newstypes`
--
ALTER TABLE `newstypes`
  MODIFY `newsTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `office_standardtypes`
--
ALTER TABLE `office_standardtypes`
  MODIFY `standardTypeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pad_header_height`
--
ALTER TABLE `pad_header_height`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permanent_block`
--
ALTER TABLE `permanent_block`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permissionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1051;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `product_colorID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_price`
--
ALTER TABLE `product_price`
  MODIFY `product_priceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `product_sizeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profile_activity_setup`
--
ALTER TABLE `profile_activity_setup`
  MODIFY `activity_sl_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profile_known_setup`
--
ALTER TABLE `profile_known_setup`
  MODIFY `profile_Known_ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projectcategories`
--
ALTER TABLE `projectcategories`
  MODIFY `projectCatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `projectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `quotationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rtl_levels`
--
ALTER TABLE `rtl_levels`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT for table `salary_grades`
--
ALTER TABLE `salary_grades`
  MODIFY `salaryGradeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salary_reports`
--
ALTER TABLE `salary_reports`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales_types`
--
ALTER TABLE `sales_types`
  MODIFY `sales_typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `servicestypes`
--
ALTER TABLE `servicestypes`
  MODIFY `serviceTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settingsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shalves`
--
ALTER TABLE `shalves`
  MODIFY `shalvesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `shiftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipping_types`
--
ALTER TABLE `shipping_types`
  MODIFY `shippingTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slidetypes`
--
ALTER TABLE `slidetypes`
  MODIFY `slideTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_quantity`
--
ALTER TABLE `stock_quantity`
  MODIFY `quantityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `storeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplierID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbllikes`
--
ALTER TABLE `tbllikes`
  MODIFY `likeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `temporary_transfer_table`
--
ALTER TABLE `temporary_transfer_table`
  MODIFY `temporary_productID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_allowance_transactions`
--
ALTER TABLE `temp_allowance_transactions`
  MODIFY `allowanceTransactionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_attendance`
--
ALTER TABLE `temp_attendance`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1202;

--
-- AUTO_INCREMENT for table `temp_cart_data`
--
ALTER TABLE `temp_cart_data`
  MODIFY `temp_tableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `temp_deduction_transactions`
--
ALTER TABLE `temp_deduction_transactions`
  MODIFY `deductionTransactionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_transfer_product_lists`
--
ALTER TABLE `temp_transfer_product_lists`
  MODIFY `listID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `testimonialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonytypes`
--
ALTER TABLE `testimonytypes`
  MODIFY `testimonyTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tmp_customer_product_sale`
--
ALTER TABLE `tmp_customer_product_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `tmp_product`
--
ALTER TABLE `tmp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `updatetime`
--
ALTER TABLE `updatetime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `user_permissionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `u_address_type_setup`
--
ALTER TABLE `u_address_type_setup`
  MODIFY `address_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `u_contact_category_types`
--
ALTER TABLE `u_contact_category_types`
  MODIFY `contact_category_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `u_designation_types`
--
ALTER TABLE `u_designation_types`
  MODIFY `user_designation_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `u_profession_types`
--
ALTER TABLE `u_profession_types`
  MODIFY `user_profession_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `u_profile_types`
--
ALTER TABLE `u_profile_types`
  MODIFY `profile_type_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `u_users`
--
ALTER TABLE `u_users`
  MODIFY `user_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `u_user_activities`
--
ALTER TABLE `u_user_activities`
  MODIFY `user_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `u_user_address`
--
ALTER TABLE `u_user_address`
  MODIFY `address_sl_number` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `u_user_applications`
--
ALTER TABLE `u_user_applications`
  MODIFY `sl_no` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `u_user_profile`
--
ALTER TABLE `u_user_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `u_user_types`
--
ALTER TABLE `u_user_types`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `variationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variation_attribute`
--
ALTER TABLE `variation_attribute`
  MODIFY `variation_attributeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `variation_distribute`
--
ALTER TABLE `variation_distribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `variation_types`
--
ALTER TABLE `variation_types`
  MODIFY `variationTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `settingID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `a_upazilas`
--
ALTER TABLE `a_upazilas`
  ADD CONSTRAINT `a_upazilas_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `a_districts` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_ibfk_1` FOREIGN KEY (`couponTypeID`) REFERENCES `coupon_types` (`couponTypeID`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`typeID`) REFERENCES `customer_type` (`customer_typeID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD CONSTRAINT `shipping_charges_ibfk_1` FOREIGN KEY (`shippingType`) REFERENCES `shipping_types` (`shippingTypeID`),
  ADD CONSTRAINT `shipping_charges_ibfk_2` FOREIGN KEY (`districtID`) REFERENCES `a_districts` (`district_id`),
  ADD CONSTRAINT `shipping_charges_ibfk_3` FOREIGN KEY (`divisionID`) REFERENCES `a_divisions` (`division_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
