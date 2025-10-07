-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2024 at 01:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms19`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `date_borrow` datetime NOT NULL DEFAULT current_timestamp(),
  `borrowcode` bigint(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_assigned` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `time_limit` datetime NOT NULL,
  `date_return` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `date_borrow`, `borrowcode`, `member_id`, `item_id`, `stock_id`, `user_id`, `room_assigned`, `status`, `time_limit`, `date_return`) VALUES
(1, '2024-09-21 11:12:17', 22120170412171, 7, 16, 18, 1, 8, 2, '0000-00-00 00:00:00', '2024-09-21 04:12:47'),
(2, '2024-09-21 11:36:07', 22120170436071, 1, 16, 18, 1, 7, 2, '0000-00-00 00:00:00', '2024-09-21 04:48:33'),
(3, '2024-09-21 11:37:01', 22120170437011, 7, 26, 24, 1, 4, 2, '0000-00-00 00:00:00', '2024-09-21 04:12:50'),
(4, '2024-09-24 11:41:12', 22120170441121, 1, 16, 18, 1, 6, 2, '0000-00-00 00:00:00', '2024-09-24 04:48:31'),
(5, '2024-09-22 11:43:39', 22120170443391, 4, 17, 20, 1, 7, 2, '0000-00-00 00:00:00', '2024-09-22 04:48:33'),
(6, '2024-09-22 11:45:31', 22120170445311, 10, 26, 24, 1, 8, 2, '0000-00-00 00:00:00', '2024-09-22 04:48:32'),
(7, '2024-09-22 11:46:36', 22120170446361, 4, 25, 23, 1, 8, 2, '0000-00-00 00:00:00', '2024-09-22 04:48:31'),
(8, '2024-09-24 11:48:49', 22120170448491, 4, 17, 20, 1, 7, 2, '0000-00-00 00:00:00', '2024-09-24 11:03:10'),
(9, '2024-09-24 11:50:40', 22120170450401, 10, 18, 21, 1, 7, 2, '0000-00-00 00:00:00', '2024-09-24 11:03:15'),
(10, '2024-09-22 11:51:30', 22120170451301, 8, 24, 22, 1, 7, 2, '0000-00-00 00:00:00', '2024-09-23 11:03:21'),
(11, '2024-09-24 11:52:38', 22120170452381, 6, 26, 24, 1, 7, 2, '0000-00-00 00:00:00', '2024-09-25 11:03:15'),
(12, '2024-09-24 18:48:52', 22120171148521, 4, 16, 18, 1, 7, 2, '0000-00-00 00:00:00', '2024-09-25 11:03:13'),
(13, '2024-09-23 17:04:23', 92320241104231, 7, 18, 21, 1, 6, 2, '2024-09-23 05:00:00', '2024-09-23 11:09:22'),
(14, '2024-09-23 17:04:23', 92320241104231, 7, 24, 22, 1, 6, 2, '2024-09-23 05:00:00', '2024-09-23 11:09:22'),
(15, '2024-09-23 17:08:32', 92320241108179, 9, 24, 22, 1, 6, 2, '2024-09-23 05:30:00', '2024-09-26 11:56:41'),
(16, '2024-09-23 17:08:32', 92320241108179, 9, 26, 24, 1, 6, 2, '2024-09-23 05:30:00', '2024-09-26 11:56:41'),
(17, '2024-09-24 18:11:33', 92620241211029, 9, 18, 21, 1, 1, 2, '2024-09-26 06:30:00', '2024-09-26 12:12:08'),
(18, '2024-09-26 18:11:33', 92620241211029, 9, 24, 22, 1, 1, 2, '2024-09-26 06:30:00', '2024-09-26 12:12:08'),
(19, '2024-09-26 18:21:06', 92620241221061, 10, 24, 22, 1, 3, 2, '2024-09-26 06:30:00', '2024-09-26 12:21:25'),
(20, '2024-09-27 08:46:03', 927202402453610, 10, 24, 22, 1, 10, 2, '2024-09-27 09:30:00', '2024-09-27 02:46:50'),
(21, '2024-09-27 08:49:16', 927202402482011, 11, 16, 18, 1, 8, 2, '2024-09-27 09:30:00', '2024-09-28 13:15:41'),
(22, '2024-09-27 08:49:16', 927202402482011, 11, 27, 25, 1, 8, 2, '2024-09-27 09:30:00', '2024-09-28 13:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `e_deviceid` varchar(50) NOT NULL,
  `e_model` varchar(50) NOT NULL,
  `e_category` varchar(50) NOT NULL,
  `e_brand` varchar(50) NOT NULL,
  `e_description` text NOT NULL,
  `e_stock` int(11) NOT NULL,
  `e_stockleft` int(11) NOT NULL,
  `e_type` varchar(50) NOT NULL,
  `e_status` varchar(50) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipment_inventory`
--

CREATE TABLE `equipment_inventory` (
  `id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_logs`
--

CREATE TABLE `history_logs` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `status_name` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `history_logs`
--

INSERT INTO `history_logs` (`id`, `description`, `table_name`, `status_name`, `user_id`, `user_type`, `date_created`) VALUES
(49, 'add new equipmentSM-922 , Mouse', 'equipment', '', 1, 1, '2024-09-21 13:28:52'),
(50, 'add 2items toSM-922quantity', 'equipment', '', 1, 1, '2024-09-21 13:46:29'),
(51, 'add 2items toSM-9221quantity', 'equipment', '', 1, 1, '2024-09-21 14:15:46'),
(52, 'add new equipment---- , AVR', 'equipment', '', 1, 1, '2024-09-22 11:20:20'),
(53, 'add new equipmentH328C , Projector', 'equipment', '', 1, 1, '2024-09-22 11:24:12'),
(54, 'add new equipmentOM-130006A/K , Keyboard', 'equipment', '', 1, 1, '2024-09-22 11:28:04'),
(55, 'add new equipment---- , Remote', 'equipment', '', 1, 1, '2024-09-22 11:31:19'),
(56, 'add new equipment58E510 , TV', 'equipment', '', 1, 1, '2024-09-23 11:35:07'),
(57, 'return items', 'borrow', '', 1, 1, '2024-09-23 17:03:10'),
(58, 'return items', 'borrow', '', 1, 1, '2024-09-23 17:03:13'),
(59, 'return items', 'borrow', '', 1, 1, '2024-09-23 17:03:15'),
(60, 'return items', 'borrow', '', 1, 1, '2024-09-23 17:03:15'),
(61, 'return items', 'borrow', '', 1, 1, '2024-09-23 17:03:21'),
(62, 'add new room 101', 'room', '', 1, 1, '2024-09-23 17:05:28'),
(63, 'return items', 'borrow', '', 1, 1, '2024-09-23 17:09:22'),
(64, 'return items', 'borrow', '', 1, 1, '2024-09-26 17:56:41'),
(65, 'return items', 'borrow', '', 1, 1, '2024-09-26 18:12:08'),
(66, 'add new equipment-- , DLP Screen', 'equipment', '', 1, 1, '2024-09-26 18:15:08'),
(67, 'return items', 'borrow', '', 1, 1, '2024-09-26 18:21:25'),
(68, 'add new equipmentLENOVO ASPIRE , Extension', 'equipment', '', 1, 1, '2024-09-26 19:12:44'),
(69, 'add 2items toSM-9221quantity', 'equipment', '', 1, 1, '2024-09-26 19:59:30'),
(70, 'add 5items toSM-9221quantity', 'equipment', '', 1, 1, '2024-09-26 20:00:01'),
(71, 'edit user', 'user', '', 1, 1, '2024-09-26 20:30:03'),
(72, 'edit user', 'user', '', 1, 1, '2024-09-26 20:30:29'),
(73, 'edit user', 'user', '', 1, 1, '2024-09-26 20:30:52'),
(74, 'edit user', 'user', '', 1, 1, '2024-09-26 20:31:39'),
(75, 'edit user', 'user', '', 1, 1, '2024-09-26 20:32:07'),
(76, 'add userVee Quisada', 'user', '', 1, 1, '2024-09-26 20:32:34'),
(77, 'edit client', 'client', '', 1, 1, '2024-09-26 20:34:10'),
(78, 'edit client', 'client', '', 1, 1, '2024-09-26 20:34:28'),
(79, 'edit client', 'client', '', 1, 1, '2024-09-26 20:35:30'),
(80, 'edit client', 'client', '', 1, 1, '2024-09-26 20:38:31'),
(81, 'edit client', 'client', '', 1, 1, '2024-09-26 20:38:48'),
(82, 'edit client', 'client', '', 1, 1, '2024-09-26 20:40:54'),
(83, 'edit client', 'client', '', 1, 1, '2024-09-26 20:43:18'),
(84, 'edit client', 'client', '', 1, 1, '2024-09-26 20:43:34'),
(85, 'edit client', 'client', '', 1, 1, '2024-09-26 20:43:53'),
(86, 'edit client', 'client', '', 1, 1, '2024-09-26 20:44:14'),
(87, 'return items', 'borrow', '', 1, 1, '2024-09-27 08:46:50'),
(88, 'return items', 'borrow', '', 1, 1, '2024-09-28 19:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(5) NOT NULL,
  `i_deviceID` varchar(50) NOT NULL,
  `i_model` varchar(50) NOT NULL,
  `i_category` varchar(50) NOT NULL,
  `i_brand` varchar(50) NOT NULL,
  `i_description` text NOT NULL,
  `i_type` varchar(50) NOT NULL,
  `item_rawstock` int(11) NOT NULL,
  `i_status` int(11) NOT NULL DEFAULT 1,
  `i_mr` varchar(50) NOT NULL,
  `i_price` decimal(10,2) NOT NULL,
  `i_photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `i_deviceID`, `i_model`, `i_category`, `i_brand`, `i_description`, `i_type`, `item_rawstock`, `i_status`, `i_mr`, `i_price`, `i_photo`) VALUES
(16, '2009991', 'SM-9221', 'Mouse', 'Acer', 'Black', 'Consumable', 20, 1, 'Sir Cadagat', 599.00, '1487646917.jpg'),
(17, '4103500582', '----', 'AVR', 'Monster', '220v, black', 'Consumable', 16, 1, 'Sir Cadagat', 1500.00, '1487647220.jpg'),
(18, '----', 'H328C', 'Projector', 'epson', 'white', 'Consumable', 3, 1, 'Sir Cadagat', 2500.00, '1487647452.jpg'),
(19, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', 250.00, '1487647676.png'),
(20, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', 250.00, '1487647678.png'),
(21, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', 250.00, '1487647679.png'),
(22, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', 250.00, '1487647680.png'),
(23, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', 250.00, '1487647681.png'),
(24, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', 250.00, '1487647684.png'),
(25, '----', '----', 'Remote', 'Haier', 'Slim Remote, white', 'Consumable', 10, 1, 'Sir Cadagat', 100.00, '1487647878.jpg'),
(26, '37784471777', '58E510', 'TV', 'Skyworth', '58\" Smart Full HD, HDMI x3, VGA X1, LAN X2, USB X2, AV X3, Component in x2, Wifi, MHL Function, 1920x1080 screen resolution, 8w+8w audio output power, 100-240v~ 50/0Hz, 25.9 kg58\" Smart Full HD, HDMI x3, VGA X1, LAN X2, USB X2', 'Consumable', 5, 1, 'Sir Cadagat', 8000.00, '1487648107.jpg'),
(27, '457290383', 'Lenovo', 'DLP Screen', 'LENOVO ASpire', 'desc', 'Consumable', 10, 1, 'Miss Chin', 69000.00, '1727352466.jpg'),
(28, '22234555', 'LENOVO ASPIRE', 'Extension', 'LENOVO', 'DESC', 'Non-consumable', 15, 1, 'sir bry', 15000.00, '1727349164.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `item_inventory`
--

CREATE TABLE `item_inventory` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `inventory_itemstock` int(11) NOT NULL,
  `inventory_status` int(11) NOT NULL,
  `item_remarks` text NOT NULL,
  `date_change` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item_inventory`
--

INSERT INTO `item_inventory` (`id`, `item_id`, `inventory_itemstock`, `inventory_status`, `item_remarks`, `date_change`) VALUES
(8, 16, 2, 2, '', '2017-02-17 06:13:59'),
(9, 16, 2, 2, 'test', '2017-02-17 06:16:07'),
(10, 24, 3, 4, 'too old', '2024-09-23 09:10:26'),
(11, 17, 2, 4, 'too old', '2024-09-26 09:59:13'),
(12, 17, 2, 3, 'misplaced', '2024-09-26 10:00:05'),
(13, 24, 2, 3, 'misplaced', '2024-09-26 10:02:26'),
(14, 16, 1, 4, 'nnnnnn', '2024-09-26 10:09:02'),
(15, 27, 1, 2, 'too old', '2024-09-26 11:07:03'),
(16, 17, 2, 2, 'too old', '2024-09-26 11:08:29'),
(17, 18, 1, 3, 'misplaced', '2024-09-26 11:09:47'),
(18, 27, 1, 2, 'too old', '2024-09-27 00:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `items_stock` int(11) NOT NULL,
  `item_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item_stock`
--

INSERT INTO `item_stock` (`id`, `item_id`, `room_id`, `items_stock`, `item_status`, `status`) VALUES
(18, 16, 14, 16, 1, 1),
(19, 16, 14, 3, 2, 1),
(20, 17, 14, 10, 1, 1),
(21, 18, 14, 2, 1, 1),
(22, 24, 14, 55, 1, 1),
(23, 25, 14, 10, 1, 1),
(24, 26, 14, 5, 1, 1),
(25, 27, 14, 8, 1, 1),
(26, 27, 14, 2, 2, 1),
(27, 17, 14, 2, 2, 1),
(28, 28, 14, 15, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_transfer`
--

CREATE TABLE `item_transfer` (
  `id` int(11) NOT NULL,
  `t_itemID` int(11) NOT NULL,
  `t_roomID` int(11) NOT NULL,
  `t_stockID` int(11) NOT NULL,
  `t_quantity` int(11) NOT NULL,
  `date_transfer` timestamp NOT NULL DEFAULT current_timestamp(),
  `t_status` int(11) NOT NULL DEFAULT 1,
  `personincharge` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `m_school_id` int(11) NOT NULL,
  `m_fname` varchar(50) NOT NULL,
  `m_lname` varchar(50) NOT NULL,
  `m_gender` varchar(10) NOT NULL,
  `m_contact` varchar(15) NOT NULL,
  `m_department` varchar(50) NOT NULL,
  `m_year_section` varchar(20) NOT NULL,
  `m_type` varchar(50) NOT NULL,
  `m_password` varchar(50) NOT NULL,
  `m_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `m_school_id`, `m_fname`, `m_lname`, `m_gender`, `m_contact`, `m_department`, `m_year_section`, `m_type`, `m_password`, `m_status`) VALUES
(1, 10008, 'Johnny', 'Verbo', 'Male', '9124599887', 'BSIS', '1st-A', 'Student', '', 1),
(2, 10006, 'Chris ', 'Liam', 'Male', '9076486735', 'BSIS', '3rd-B', 'Student', '', 0),
(3, 10009, 'Shane', 'Ncionales', 'Female', '9072786945', 'BSCE', '1st-A', 'Student', '', 1),
(4, 10004, 'Alexander', 'Lopez', 'Male', '09765643423', 'BSIT', '4th-A', 'Student', 'alex123', 1),
(5, 10007, 'Tresha', 'Tiamzon', 'Female', '9499007591', 'BSIT', '1st-A', 'Student', '', 1),
(6, 21400099, 'Mark', 'Susana', 'Male', '091265451332', 'BSIT', '2nd- B', 'Student', '', 1),
(7, 10010, 'Gino', 'Olmedo', 'Male', '09502786543', 'BSIS', '4th- A', 'Student', '', 1),
(8, 21401109, 'Mika', 'Calapatan', 'Female', '09498723987', 'BSHRM', '3rd- C', 'Student', '', 1),
(9, 10001, 'Krisha', 'Viaje', 'Female', '09488098768', 'BSIT', '--', 'Faculty', '', 1),
(10, 10002, 'Marilyn', 'cepeda', 'Female', '09051148373', 'SAS', '- ', 'Faculty', '', 1),
(11, 10003, 'Peter', 'Villegas', 'Male', '09489238291', 'SAS', '- ', 'Faculty', '', 1),
(12, 10005, 'Sam', 'Reyes', 'Male', '09072708181', 'CIT', '- ', 'Faculty', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `reservation_code` varchar(60) NOT NULL,
  `member_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `reserve_date` varchar(50) DEFAULT NULL,
  `reservation_time` varchar(20) NOT NULL,
  `time_limit` datetime NOT NULL,
  `assign_room` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remarks` text NOT NULL,
  `r_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `reservation_code`, `member_id`, `item_id`, `stock_id`, `room_id`, `reserve_date`, `reservation_time`, `time_limit`, `assign_room`, `status`, `remarks`, `r_date`) VALUES
(1, '092320241108179', 9, 24, 22, 0, '09/23/2024', '17:10', '2024-09-23 05:30:00', 6, 3, '', '2024-09-23 17:08:17'),
(2, '092320241108179', 9, 26, 24, 0, '09/23/2024', '17:10', '2024-09-23 05:30:00', 6, 3, '', '2024-09-23 17:08:17'),
(3, '092620241211029', 9, 18, 21, 0, '09/26/2024', '18:10', '2024-09-26 06:30:00', 1, 3, '', '2024-09-26 18:11:02'),
(4, '092620241211029', 9, 24, 22, 0, '09/26/2024', '18:10', '2024-09-26 06:30:00', 1, 3, '', '2024-09-26 18:11:02'),
(5, '0927202402453610', 10, 24, 22, 0, '09/27/2024', '08:45', '2024-09-27 09:30:00', 10, 3, '', '2024-09-27 08:45:36'),
(6, '0927202402482011', 11, 16, 18, 0, '09/27/2024', '08:50', '2024-09-27 09:30:00', 8, 3, '', '2024-09-27 08:48:20'),
(7, '0927202402482011', 11, 27, 25, 0, '09/27/2024', '08:50', '2024-09-27 09:30:00', 8, 3, '', '2024-09-27 08:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_status`
--

CREATE TABLE `reservation_status` (
  `id` int(11) NOT NULL,
  `reservation_code` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `res_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reservation_status`
--

INSERT INTO `reservation_status` (`id`, `reservation_code`, `remark`, `res_status`) VALUES
(13, '0217201706314310', 'Accepted Reservation', 1),
(14, '021920170329593', 'Accepted Reservation', 1),
(15, '021920170329593', 'Accepted Reservation', 1),
(16, '021920170345437', 'Accepted Reservation', 1),
(17, '021920170353384', 'Accepted Reservation', 1),
(18, '092320241108179', 'Accepted Reservation', 1),
(19, '092620241211029', 'Accepted Reservation', 1),
(20, '0927202402453610', 'Accepted Reservation', 1),
(21, '0927202402482011', 'Accepted Reservation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `rm_name` varchar(50) NOT NULL,
  `rm_date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `rm_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `rm_name`, `rm_date_added`, `rm_status`) VALUES
(1, 'room 312', '2016-11-16 21:21:42', 1),
(2, 'room 403', '2016-11-16 21:21:47', 1),
(3, 'room 311', '2016-11-16 21:21:53', 1),
(4, 'room 313', '2016-11-17 18:45:03', 1),
(5, 'room 402', '2016-11-17 20:51:30', 1),
(6, 'room 301', '2016-11-17 20:51:43', 1),
(7, 'room 302', '2016-11-17 20:51:54', 1),
(8, 'room 303', '2016-11-17 20:52:04', 1),
(9, 'room 304', '2016-11-17 20:52:20', 1),
(10, 'room 305', '2016-11-17 20:52:56', 1),
(11, 'room 306', '2016-11-17 20:53:20', 1),
(14, 'room 310', '2017-01-08 13:17:18', 1),
(15, 'room 101', '2024-09-23 17:05:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_equipment`
--

CREATE TABLE `room_equipment` (
  `id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `re_quantity` int(11) NOT NULL,
  `stats` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room_equipment`
--

INSERT INTO `room_equipment` (`id`, `equipment_id`, `room_id`, `re_quantity`, `stats`) VALUES
(1, 1, 14, 12, 1),
(2, 2, 14, 12, 1),
(3, 3, 14, 12, 1),
(4, 4, 14, 12, 1),
(5, 5, 14, 12, 1),
(6, 6, 14, 12, 1),
(7, 7, 14, 12, 1),
(8, 8, 14, 12, 1),
(9, 1, 14, 10, 1),
(10, 2, 14, 10, 1),
(11, 1, 14, 12, 1),
(12, 2, 14, 12, 1),
(13, 3, 14, 2, 1),
(14, 1, 14, 12, 1),
(15, 2, 14, 10, 1),
(16, 3, 14, 10, 1),
(17, 1, 14, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=admin, 2=stafff',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active, 2=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `type`, `status`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1, 1),
(2, 'John Felix', 'felix', 'de9bf5643eabf80f4a56fda3bbb84483', 2, 1),
(3, 'Lovelyn Besa', 'lavv', 'f5737d25829e95b9c234b7fa06af8736', 2, 1),
(4, 'Lavander Fields', 'lavander', '263bce650e68ab4e23f28263760b9fa5', 2, 1),
(5, 'Patrick Felipe', 'pat', 'd3ce9efea6244baa7bf718f12dd0c331', 2, 1),
(6, 'Staff', 'staff', 'c84258e9c39059a89ab77d846ddab909', 2, 1),
(7, 'Vee Quisada', 'vee', '0951ba11ae1427612d3de66ed5dafacc', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `equipment_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `equipment_inventory`
--
ALTER TABLE `equipment_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_id` (`equipment_id`);

--
-- Indexes for table `history_logs`
--
ALTER TABLE `history_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_inventory`
--
ALTER TABLE `item_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_transfer`
--
ALTER TABLE `item_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `equipment_id` (`item_id`);

--
-- Indexes for table `reservation_status`
--
ALTER TABLE `reservation_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_equipment`
--
ALTER TABLE `room_equipment`
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
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipment_inventory`
--
ALTER TABLE `equipment_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_logs`
--
ALTER TABLE `history_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `item_inventory`
--
ALTER TABLE `item_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `item_transfer`
--
ALTER TABLE `item_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservation_status`
--
ALTER TABLE `reservation_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `room_equipment`
--
ALTER TABLE `room_equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
