-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 02:32 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `activity` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `activity`, `user_id`, `timestamp`) VALUES
(1, 'Created Meeting 6 announment!', 20, '2021-09-29 12:08:31'),
(2, 'Business permit delete: 5', 20, '2021-09-29 12:23:50'),
(3, 'Resident updated: 64', 20, '2021-09-29 13:08:38'),
(4, 'User loggedin', 20, '2021-09-30 10:31:29'),
(5, 'User loggedin', 21, '2021-09-30 13:10:40'),
(6, 'User loggedin', 21, '2021-09-30 13:11:37'),
(7, 'User loggedin', 21, '2021-10-02 02:15:17'),
(8, 'User loggedin', 21, '2021-10-02 02:15:22'),
(9, 'User logged out', 21, '2021-10-02 02:16:27'),
(10, 'User loggedin', 20, '2021-10-02 07:21:14'),
(11, 'User logged out', 20, '2021-10-02 07:27:18'),
(12, 'User loggedin', 20, '2021-10-10 11:09:00'),
(13, 'User logged out', 20, '2021-10-10 11:09:32'),
(14, 'User loggedin', 20, '2021-10-10 11:09:41'),
(15, 'User logged out', 20, '2021-10-10 11:09:51'),
(16, 'User loggedin', 20, '2021-10-10 11:09:57'),
(17, 'User logged out', 20, '2021-10-10 11:18:15'),
(18, 'User Created: lanie', NULL, '2021-10-10 11:23:37'),
(19, 'User loggedin', 22, '2021-10-10 11:24:28'),
(20, 'User logged out', 22, '2021-10-10 11:30:20'),
(21, 'User logged out', NULL, '2021-10-16 16:26:48'),
(22, 'User loggedin', 20, '2021-10-16 16:26:55'),
(23, 'User logged out', 20, '2021-10-16 16:27:22'),
(24, 'User loggedin', 20, '2021-10-16 16:27:39'),
(25, 'User Updated', 20, '2021-10-16 16:27:48'),
(26, 'User Updated', 20, '2021-10-16 16:28:12'),
(27, 'User logged out', 1, '2021-10-18 12:10:24'),
(28, 'User loggedin', 20, '2021-10-18 12:11:46'),
(29, 'Barangay info updated', 20, '2021-10-18 12:22:32'),
(30, 'Services created: dsadsad', 20, '2021-10-18 12:25:34'),
(31, 'Services deleted: 7', 20, '2021-10-18 12:26:28'),
(32, 'Services deleted: 1', 20, '2021-10-18 12:26:31'),
(33, 'Services deleted: 7', 20, '2021-10-18 12:27:59'),
(34, 'Services created: 4324', 20, '2021-10-18 12:28:22'),
(35, 'Services deleted: 8', 20, '2021-10-18 12:28:28'),
(36, 'Services created: ewqewq', 20, '2021-10-18 12:31:30'),
(37, 'Services deleted: 9', 20, '2021-10-18 12:31:38'),
(38, 'Services updated: fdsffsdfrwerewrewr', 20, '2021-10-18 12:32:54'),
(39, 'User logged out', 20, '2021-10-18 12:35:07'),
(40, 'User Created: lanie11', NULL, '2021-10-18 13:08:17'),
(41, 'User loggedin', 22, '2021-10-19 11:12:03'),
(42, 'User logged out', 22, '2021-10-19 14:09:42'),
(43, 'User logged out', 1, '2021-10-20 11:34:43'),
(44, 'User loggedin', 20, '2021-10-20 11:38:35'),
(45, 'User logged out', 20, '2021-10-20 11:48:17'),
(46, 'User loggedin', 22, '2021-10-20 12:18:26'),
(47, 'User logged out', 22, '2021-10-20 12:20:13'),
(48, 'User loggedin', 20, '2021-10-20 12:20:26'),
(49, 'Resident created: 1', 20, '2021-10-20 12:20:39'),
(50, 'User logged out', 20, '2021-10-20 12:27:55'),
(51, 'User Created: roncajan', NULL, '2021-10-20 12:53:12'),
(52, 'User loggedin', 24, '2021-10-20 12:53:26'),
(53, 'User logged out', 24, '2021-10-20 12:53:37'),
(54, 'User loggedin', 24, '2021-10-20 12:55:08'),
(55, 'User logged out', 24, '2021-10-20 12:59:18'),
(56, 'User loggedin', 24, '2021-10-20 13:24:02'),
(57, 'User logged out', 24, '2021-10-20 13:28:22'),
(58, 'User logged out', NULL, '2021-10-22 00:53:05'),
(59, 'User loggedin', 20, '2021-10-22 00:53:18'),
(60, 'User logged out', 20, '2021-10-22 00:53:49'),
(61, 'User loggedin', 20, '2021-10-22 00:54:09'),
(62, 'User logged out', 20, '2021-10-22 00:54:35'),
(63, 'User loggedin', 24, '2021-10-22 01:45:28'),
(64, 'User logged out', 24, '2021-10-22 01:49:44'),
(65, 'User loggedin', 24, '2021-10-22 01:56:41'),
(66, 'Request created', 24, '2021-10-22 01:57:29'),
(67, 'User logged out', 24, '2021-10-22 01:59:39'),
(68, 'User loggedin', 20, '2021-10-22 01:59:50'),
(69, 'Request change status', 20, '2021-10-22 02:00:34'),
(70, 'User loggedin', 24, '2021-10-22 02:02:12'),
(71, 'Request created', 24, '2021-10-22 02:06:36'),
(72, 'Services deleted: 4', 20, '2021-10-22 02:10:25'),
(73, 'Services deleted: 5', 20, '2021-10-22 02:10:27'),
(74, 'Services deleted: 6', 20, '2021-10-22 02:10:30'),
(75, 'User logged out', 20, '2021-10-22 02:28:33'),
(76, 'User loggedin', 20, '2021-10-22 02:46:59'),
(77, 'User logged out', 20, '2021-10-22 06:21:16'),
(78, 'User loggedin', 20, '2021-10-22 06:21:26'),
(79, 'User logged out', 20, '2021-10-22 06:21:31'),
(80, 'User loggedin', 20, '2021-10-22 06:21:39'),
(81, 'User logged out', 20, '2021-10-22 06:22:39'),
(82, 'User loggedin', 20, '2021-10-22 06:22:47'),
(83, 'User logged out', 20, '2021-10-22 06:23:33'),
(84, 'User loggedin', 20, '2021-10-22 06:23:46'),
(85, 'User logged out', 20, '2021-10-22 06:23:50'),
(86, 'User loggedin', 20, '2021-10-22 06:23:58'),
(87, 'User logged out', 20, '2021-10-22 06:24:15'),
(88, 'User loggedin', 20, '2021-10-22 06:24:23'),
(89, 'User logged out', 20, '2021-10-22 06:24:34'),
(90, 'User loggedin', 20, '2021-10-22 06:24:45'),
(91, 'User logged out', 20, '2021-10-22 06:25:10'),
(92, 'User loggedin', 20, '2021-10-22 06:25:27'),
(93, 'User Updated', 20, '2021-10-22 06:35:29'),
(94, 'User Updated', 20, '2021-10-22 06:36:23'),
(95, 'User Updated', 20, '2021-10-22 06:36:45'),
(96, 'User Updated', 20, '2021-10-22 06:38:13'),
(97, 'User logged out', 20, '2021-10-22 06:51:29'),
(98, 'User loggedin', 20, '2021-10-22 06:52:08'),
(99, 'User logged out', NULL, '2021-10-22 07:29:27'),
(100, 'User loggedin', 25, '2021-10-22 07:36:37'),
(101, 'User logged out', 25, '2021-10-22 07:39:48'),
(102, 'User loggedin', 25, '2021-10-22 08:34:19'),
(103, 'User Updated', 25, '2021-10-22 08:34:38'),
(104, 'User logged out', 20, '2021-10-22 08:37:43'),
(105, 'User loggedin', 20, '2021-10-22 08:37:55'),
(106, 'User Created: admin2', 20, '2021-10-22 08:38:21'),
(107, 'User Created: admin2', 20, '2021-10-22 08:40:35'),
(108, 'User logged out', 20, '2021-10-22 08:40:48'),
(109, 'User loggedin', 27, '2021-10-22 08:42:13'),
(110, 'User Updated', 27, '2021-10-22 08:54:15'),
(111, 'Backup generated', 27, '2021-10-22 08:57:11'),
(112, 'User Updated', 27, '2021-10-22 08:58:36'),
(113, 'User logged out', 27, '2021-10-22 09:00:17'),
(114, 'User loggedin', 20, '2021-10-22 11:27:33'),
(115, 'User loggedin', 20, '2021-10-24 02:17:25'),
(116, 'User logged out', 20, '2021-10-24 02:17:52'),
(117, 'User loggedin', 20, '2021-10-24 02:18:09'),
(118, 'Resident deleted: 1', 20, '2021-10-24 02:19:49'),
(119, 'Blotter deleted: 00123', 20, '2021-10-24 02:20:08'),
(120, 'User loggedin', 20, '2021-10-24 05:19:07'),
(121, 'Resident created: 2', 20, '2021-10-24 05:19:39'),
(122, 'Payment created: Barangay ID', 20, '2021-10-24 05:20:03'),
(123, 'User logged out', 20, '2021-10-24 05:28:21'),
(124, 'User loggedin', 20, '2021-10-24 05:28:41'),
(125, 'Payment created: Barangay ID', 20, '2021-10-24 05:29:19'),
(126, 'Payment created: Barangay ID', 20, '2021-10-24 05:30:29'),
(127, 'User Created: roncajan', NULL, '2021-10-24 05:35:09'),
(128, 'User loggedin', 28, '2021-10-24 05:35:20'),
(129, 'Request created', 28, '2021-10-24 05:35:40'),
(130, 'Request change status', 20, '2021-10-24 05:41:41'),
(131, 'Request created', 20, '2021-10-24 06:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `what` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `who` varchar(50) DEFAULT NULL,
  `docs` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `what`, `description`, `date`, `venue`, `who`, `docs`, `status`) VALUES
(8, 'Meeting 1', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2021-09-23 13:00:00', 'Meeting Hall', 'Captain', NULL, 'Active'),
(11, 'Meeting 2', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2021-09-16 12:35:00', 'Meeting Hall', 'Kagawad', NULL, 'Inactive'),
(12, 'Meeting 3', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2021-09-16 13:04:00', 'Meeting Hall', 'Meeting Hall', NULL, 'Active'),
(13, 'Meeting 4', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2021-09-16 13:05:00', 'Meeting Hall', 'Captain', NULL, 'Active'),
(14, 'Meeting 5', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2021-09-16 13:06:00', 'Meeting Hall', 'Meeting Hall', 'cfdf58c053ed557293561be27c1a612c.png', 'Active'),
(15, 'Meeting 6', 'Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', '2021-09-16 13:16:00', 'Meeting Hall', 'Meeting Hall', NULL, 'Active'),
(16, 'Meeting 6', 'Donec rutrum congue leo eget malesuada. Donec sollicitudin molestie malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla quis lorem ut libero malesuada feugiat.', '2021-09-29 20:08:00', 'Barangay Hall', 'Captain', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_info`
--

CREATE TABLE `barangay_info` (
  `id` int(11) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `town` text DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `purok` varchar(20) DEFAULT NULL,
  `background` text DEFAULT NULL,
  `starts` varchar(20) DEFAULT NULL,
  `end` varchar(20) DEFAULT NULL,
  `dashboard_text` text DEFAULT NULL,
  `dashboard_img` text DEFAULT NULL,
  `city_logo` text DEFAULT NULL,
  `brgy_logo` text DEFAULT NULL,
  `map` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangay_info`
--

INSERT INTO `barangay_info` (`id`, `province`, `town`, `brgy_name`, `number`, `email`, `street`, `purok`, `background`, `starts`, `end`, `dashboard_text`, `dashboard_img`, `city_logo`, `brgy_logo`, `map`) VALUES
(1, 'Misamis Occidental', 'Plaridel', 'Looc Proper', '269-1034', 'brgypoblacion18@gmail.com', 'Parpagayo', 'purok 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue tincidunt purus, ac feugiat eros ullamcorper eget. Nulla egestas massa ut lectus ornare pretium. In non metus a magna bibendum lobortis. In nulla enim, ultricies at lacinia at, consequat id quam. In tempor purus et nisi placerat vehicula. Maecenas in eleifend erat. Quisque vitae dui in ligula malesuada euismod.', '2018', '2022', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue tincidunt purus, ac feugiat eros ullamcorper eget. Nulla egestas massa ut lectus ornare pretium. In non metus a magna bibendum lobortis. In nulla enim, ultricies at lacinia at, consequat id quam. In tempor purus et nisi placerat vehicula. Maecenas in eleifend erat. Quisque vitae dui in ligula malesuada euismod.', '5fea57b98ef1ea6f1b289b34491faf01.jpg', '995168477a0c9c7b87c7975c3a10dec6.png', 'a3806eb2b6a8a6a0ac3b8686a22f5f04.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `block_user`
--

CREATE TABLE `block_user` (
  `blocked_from` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `blocked_to` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `blotter`
--

CREATE TABLE `blotter` (
  `case_no` varchar(100) NOT NULL,
  `respondent` varchar(100) NOT NULL,
  `victim` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `incident_date` datetime NOT NULL,
  `details` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`ID`, `title`, `start`, `end`, `description`) VALUES
(1, 'Samsung', '2021-09-30 08:50:00', '2021-10-01 19:48:00', 'fdsfsdfdsfds');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `pic` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `pic`, `title`, `salutation`, `content`, `user`, `created_at`) VALUES
(8, 'dbbd805ba29e0013394500bb40f24ac0.jpg', 'C E R T I F I C A T I O N', 'TO WHOM IT MAY CONCERN :', '<p><span style=\"font-family: Calibri;\">This is to certify that </span><b>ALLAN L. CASTANEDA</b><span style=\"font-family: Calibri;\">, of legal age, male, married and a resident of Poblacion, Altavas, Aklan is a person of good moral character and conduct; that according to the record of this office, he/she has never been accused nor convicted of any crime, violation of legal orders, decrees, or any ordinance of this barangay.</span><br></p><p><b><span style=\"font-family: Calibri;\">THIS CERTIFICATION IS BEING ISSUED</span></b><span style=\"font-family: Calibri;\"> upon his/her request for the following purposes:</span><br></p><p><br></p><p>( ) Application for employment                                                              ( ) School Reference</p><p>( ) Passport / Overseas Travel Papers                                                   ( ) Processing of Calamity / Disaster</p><p>( ) Transaction with a bank                                                                     ( ) Police Clearance / NBI</p><p>( ) Loan / Lending Institution                                                                  ( ) Postal ID</p><p>( ) Travel / Transfer of Residence                                                           ( ) Others : Please specify : </p><p><br></p>', 'admin', '2021-08-19 03:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `cert_settings`
--

CREATE TABLE `cert_settings` (
  `id` int(11) NOT NULL,
  `flag` text DEFAULT NULL,
  `motto` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `watermark` text DEFAULT NULL,
  `color_bg` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cert_settings`
--

INSERT INTO `cert_settings` (`id`, `flag`, `motto`, `signature`, `watermark`, `color_bg`) VALUES
(1, 'flag.png', 'motto.png', 'signature.png', 'brgy-logo.png', 'rgba(28, 113, 216, 0.58)');

-- --------------------------------------------------------

--
-- Table structure for table `chairmanship`
--

CREATE TABLE `chairmanship` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chairmanship`
--

INSERT INTO `chairmanship` (`id`, `title`) VALUES
(1, 'PRESIDING OFFICER'),
(3, 'COMMITTEE ON HEALTH'),
(4, 'COMMITTEE ON APPROPRIATION'),
(5, 'COMMITTEE ON ENVIRONMENT'),
(6, 'COMMITTEE ON PEACE AND ORDER'),
(7, 'COMMITTEE ON EDUCATION'),
(8, 'COMMITTEE ON INFRASTRUCTURE'),
(9, 'COMMITTEE ON YOUTH DEVELOPMENT'),
(10, 'COMMITTEE ON GAD'),
(11, 'COMMITTEE ON AGRICULTURE'),
(12, 'COMMITTEE ON BAC'),
(13, 'COMMITTEE ON WAYS AND MEANS'),
(14, 'COMMITTEE ON VAW-C'),
(15, 'COMMITTEE ON SPORTS'),
(16, 'COMMITTEE ON APPROPRIATION / YOUTH DEVELOPMENT'),
(17, 'COMMITTEE ON HEALTH / SPORTS'),
(18, 'COMMITTEE ON INFRASTRUCTURE / BAC / WAYS AND MEANS'),
(19, 'COMMITTEE ON PEACE AND ORDER / SPORTS'),
(20, 'COMMITTEE ON VAW-C / COMMITTEE ON EDUCATION'),
(21, 'COMMITTEE ON ENVIRONMENT / GAD'),
(22, 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `complainants`
--

CREATE TABLE `complainants` (
  `case_no` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `national_id` varchar(50) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `covid_status`
--

CREATE TABLE `covid_status` (
  `resident_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_vaccinated` date DEFAULT NULL,
  `vaccinator_name` text DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `lot_no` varchar(100) DEFAULT NULL,
  `date_vaccinated_1` date DEFAULT NULL,
  `vaccinator_name_1` varchar(100) DEFAULT NULL,
  `manufacturer_1` text DEFAULT NULL,
  `batch_no_1` varchar(100) DEFAULT NULL,
  `lot_no_1` varchar(100) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `covid_status`
--

INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES
(2, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `house_number`
--

CREATE TABLE `house_number` (
  `id` int(11) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `id_settings`
--

CREATE TABLE `id_settings` (
  `id` int(11) NOT NULL,
  `front` text DEFAULT NULL,
  `back` text DEFAULT NULL,
  `bg_color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `id_settings`
--

INSERT INTO `id_settings` (`id`, `front`, `back`, `bg_color`) VALUES
(1, '0ca5fbcb36eadf819a4637a6d832b72f.png', 'brgy-logo.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `chairmanship` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES
(2, 'Kgg. Eddie B. Sandoval', 1, 3, '2021-05-08', '2025-05-28', 'Active', 'bf659a4294c78edce9582ed644bc6139.jpg'),
(3, 'Kgg. Avelina M. Tan', 16, 1, '2021-05-15', '2025-06-03', 'Active', 'c29cc2401b1e9860fe82e990b547cc2d.jpg'),
(4, 'Kgg. Nimfa C. Fernandez', 17, 5, '2021-05-22', '2025-04-30', 'Active', 'd56aad73de21819a53b455da08ac6c7a.jpg'),
(5, 'Kgg. Amelita D. Sandoval', 18, 6, '2021-05-01', '2025-05-01', 'Active', '08b5fc9218649d41143c321e2f3f2647.jpg'),
(6, 'Kgg. Angel B. Sandoc', 19, 7, '2021-05-08', '2025-05-08', 'Active', '8d35deade377dc39c32ef9a35b459201.jpg'),
(7, 'Kgg. Dante H. Aglahi', 20, 8, '2021-05-08', '2021-05-08', 'Active', 'd7b8a3c7cf6055acd872fd8edd8eba8f.jpg'),
(8, 'Kgg. Amado P. Villanueva Jr.', 21, 9, '2021-05-08', '2025-05-01', 'Active', '3f439ce4a17d0068f01d1fbafa5ab19a.jpg'),
(9, 'Kgg. Percy A. San Miguel', 11, 10, '2021-05-22', '2025-05-15', 'Active', '3565e5cf91b4d225e3ded2e9d72c3ccd.jpg'),
(10, 'Kgg. Christian U. Cueto', 22, 4, '2021-05-01', '2025-05-08', 'Active', 'd25f2800c8f2d5483f4583d9ab2fea90.jpg'),
(11, 'Gng. Zenaida F. Castañeda', 22, 11, '2021-05-08', '2025-05-15', 'Active', '90fda471b5a2df2015766ebfa78c4dcf.jpg'),
(12, 'Gng. Zenaida F. Castañeda', 22, 12, '2021-05-01', '2025-05-15', 'Active', 'ec337d5ad1e80be6f0b9dd4289fa4068.jpg'),
(21, 'Gng. Maureen V. De Jesus', 14, 14, '2021-09-01', '2021-09-25', 'Active', '3200e1828eb21fbc8c890a2691ded91a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `other_details`
--

CREATE TABLE `other_details` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `sss` varchar(50) DEFAULT NULL,
  `tin` varchar(50) DEFAULT NULL,
  `precinct` varchar(50) DEFAULT NULL,
  `gsis` varchar(50) DEFAULT NULL,
  `pagibig` varchar(50) DEFAULT NULL,
  `philhealth` varchar(50) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `other_details`
--

INSERT INTO `other_details` (`id`, `resident_id`, `sss`, `tin`, `precinct`, `gsis`, `pagibig`, `philhealth`, `blood`) VALUES
(2, 2, '', '', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES
(1, 'Resident Barangay ID Payment', 'Barangay ID', '50.00', 'admin', 'RONIL CAJAN', '2021-10-24'),
(2, 'Resident Barangay ID Payment', 'Barangay ID', '50.00', 'admin', 'RONIL CAJAN', '2021-10-24'),
(3, 'Resident Barangay ID Payment', 'Barangay ID', '50.00', 'admin', 'RONIL CAJAN', '2021-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `permit`
--

CREATE TABLE `permit` (
  `id` int(11) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `owner1` varchar(100) DEFAULT NULL,
  `owner2` varchar(100) DEFAULT NULL,
  `nature` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `b_address` text DEFAULT NULL,
  `o_address` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `pos_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES
(3, 'PUNONG BARANGAY', 1),
(4, 'SK Chairperson', 10),
(5, 'Councilor 2', 3),
(6, 'Councilor 3', 4),
(8, 'Councilor 5', 6),
(9, 'Councilor 6', 7),
(10, 'Councilor 7', 8),
(11, 'Barangay Secretary', 11),
(12, 'Barangay Treasurer', 12),
(13, 'Administrative Aid', 13),
(14, 'Councilor 8', 9);

-- --------------------------------------------------------

--
-- Table structure for table `precinct`
--

CREATE TABLE `precinct` (
  `id` int(11) NOT NULL,
  `precinct_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purok`
--

CREATE TABLE `purok` (
  `id` int(11) NOT NULL,
  `purok_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `ref_no` varchar(100) DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `files` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `request_stat` int(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `payment_method`, `ref_no`, `purpose`, `resident_id`, `service_id`, `date`, `files`, `status`, `request_stat`, `timestamp`) VALUES
(8, 'Cash on Pick-up', '', 'Barangay', 2, 1, '2021-10-25', '9a20ab9e0b2a15e1320802439771adc4.pdf', 'Ready for Pickup', 1, '2021-10-24 05:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(11) NOT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `birthplace` text DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `civilstatus` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `purok` varchar(20) DEFAULT NULL,
  `voterstatus` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `employer_name` varchar(100) DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `resident_type` varchar(50) DEFAULT 'Alive',
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `address`, `resident_type`, `remarks`) VALUES
(2, '', '', NULL, 'RONIL', 'MANGOMPIT', 'CAJAN', '', '', '0000-00-00', 0, NULL, NULL, NULL, NULL, '09187112668', 'ronil.cajan@gmail.com', '', '', NULL, 'PUROK 3\r\nLOOC PROPER', 'Alive', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resident_house`
--

CREATE TABLE `resident_house` (
  `resident_id` int(11) DEFAULT NULL,
  `house_number` varchar(100) DEFAULT NULL,
  `relation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resident_house`
--

INSERT INTO `resident_house` (`resident_id`, `house_number`, `relation`) VALUES
(2, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE `security_question` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `question_1` int(11) DEFAULT NULL,
  `answer_1` varchar(100) DEFAULT NULL,
  `question_2` int(11) DEFAULT NULL,
  `answer_2` varchar(100) DEFAULT NULL,
  `question_3` int(11) DEFAULT NULL,
  `answer_3` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `security_question`
--

INSERT INTO `security_question` (`id`, `resident_id`, `username`, `question_1`, `answer_1`, `question_2`, `answer_2`, `question_3`, `answer_3`, `date`) VALUES
(14, 1, 'roncajan', 1, 'Plaridel', 2, 'koki', 3, 'alabastro', '2021-10-22 09:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `requires` text DEFAULT NULL,
  `qr_code` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `fees`, `phone`, `requires`, `qr_code`, `status`) VALUES
(1, 'BARANGAY CLEARANCE', 'View the requirements needed for Barangay Clerance and acquire online now.', '100.00', '0108787878', NULL, NULL, 'Active'),
(2, 'RESIDENCY CERTIFICATE', 'View the requirements needed for Barangay Residency and acquire online now.', '200.00', '09787875454', NULL, NULL, 'Active'),
(3, 'INDIGENCY CERTIFICATE', 'View the requirements needed for Barangay Indigency and acquire online now.', '60.00', '09545454', NULL, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `settled`
--

CREATE TABLE `settled` (
  `case_no` varchar(50) NOT NULL,
  `updates` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settled`
--

INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES
('00123', NULL, NULL),
('13213213', NULL, NULL),
('213213213', NULL, NULL),
('CASESD4324234234222', '', '2021-06-10'),
('NO3218', 'nice', '2021-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `summon`
--

CREATE TABLE `summon` (
  `id` int(11) NOT NULL,
  `case_no` varchar(50) DEFAULT NULL,
  `blotter_update` text DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(11) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `acronym` varchar(100) NOT NULL,
  `powered_b` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `sname`, `acronym`, `powered_b`) VALUES
(1, 'Automated Barangay Management System', 'ABM System', 'IT Expert Solutions');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_type` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resident_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `unique_id`, `username`, `fname`, `lname`, `email`, `bio`, `birth`, `phone`, `address`, `password`, `user_type`, `avatar`, `status`, `created_at`, `resident_id`) VALUES
(20, '2bc812', 'admin', 'Jame', 'Rons', 'jame@gmail.com', 'dsadasdasd', '2021-10-05', '09187112668', 'PUROK 3', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', 'a191c7092cd7af9870edbc94e8579460.png', NULL, '2021-09-15 23:47:01', NULL),
(28, NULL, 'roncajan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd0e1e4f2c7b7ec83c95a200f4b2912b3c8d63b88', 'resident', NULL, 'Active', '2021-10-24 05:35:09', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `receiver_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `message` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_info`
--
ALTER TABLE `barangay_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blotter`
--
ALTER TABLE `blotter`
  ADD PRIMARY KEY (`case_no`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cert_settings`
--
ALTER TABLE `cert_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chairmanship`
--
ALTER TABLE `chairmanship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complainants`
--
ALTER TABLE `complainants`
  ADD KEY `case_no` (`case_no`);

--
-- Indexes for table `covid_status`
--
ALTER TABLE `covid_status`
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `house_number`
--
ALTER TABLE `house_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `id_settings`
--
ALTER TABLE `id_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_details`
--
ALTER TABLE `other_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `other_details_ibfk_1` (`resident_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permit`
--
ALTER TABLE `permit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precinct`
--
ALTER TABLE `precinct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purok`
--
ALTER TABLE `purok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resident_house`
--
ALTER TABLE `resident_house`
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `resident_house_ibfk_2` (`house_number`);

--
-- Indexes for table `security_question`
--
ALTER TABLE `security_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settled`
--
ALTER TABLE `settled`
  ADD PRIMARY KEY (`case_no`);

--
-- Indexes for table `summon`
--
ALTER TABLE `summon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_no` (`case_no`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `barangay_info`
--
ALTER TABLE `barangay_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cert_settings`
--
ALTER TABLE `cert_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chairmanship`
--
ALTER TABLE `chairmanship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `house_number`
--
ALTER TABLE `house_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4852;

--
-- AUTO_INCREMENT for table `id_settings`
--
ALTER TABLE `id_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `other_details`
--
ALTER TABLE `other_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permit`
--
ALTER TABLE `permit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `precinct`
--
ALTER TABLE `precinct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purok`
--
ALTER TABLE `purok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `security_question`
--
ALTER TABLE `security_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `summon`
--
ALTER TABLE `summon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complainants`
--
ALTER TABLE `complainants`
  ADD CONSTRAINT `complainants_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `blotter` (`case_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `covid_status`
--
ALTER TABLE `covid_status`
  ADD CONSTRAINT `covid_status_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `other_details`
--
ALTER TABLE `other_details`
  ADD CONSTRAINT `other_details_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resident_house`
--
ALTER TABLE `resident_house`
  ADD CONSTRAINT `resident_house_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resident_house_ibfk_2` FOREIGN KEY (`house_number`) REFERENCES `house_number` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `summon`
--
ALTER TABLE `summon`
  ADD CONSTRAINT `summon_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `blotter` (`case_no`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
