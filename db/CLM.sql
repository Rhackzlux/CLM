-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2025 at 02:46 PM
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
-- Database: `ma1`
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
(1, '2025-04-29 16:32:40', 42920250723119, 9, 1, 1, 1, 30, 2, '2025-05-06 01:30:00', '2025-04-29 10:33:12'),
(2, '2025-05-13 10:54:46', 51320250454461, 14, 10, 10, 1, 22, 2, '2025-05-13 08:30:00', '2025-05-13 05:15:19'),
(3, '2025-05-13 11:03:11', 51320250503111, 2, 1, 1, 1, 26, 2, '2025-05-13 11:03:00', '2025-05-13 05:15:20'),
(4, '2025-05-13 11:05:22', 51320250505221, 7, 7, 7, 1, 30, 2, '2025-05-13 11:05:00', '2025-05-13 05:15:21'),
(5, '2025-05-13 11:10:52', 51320250510521, 13, 1, 1, 1, 30, 2, '2025-05-13 11:10:00', '2025-05-13 05:15:21'),
(6, '2025-05-13 11:13:59', 51320250513591, 3, 8, 8, 1, 23, 2, '2025-05-13 11:10:00', '2025-05-13 05:15:21'),
(7, '2025-05-13 11:15:37', 51320250515371, 5, 2, 2, 1, 30, 2, '2025-05-13 11:15:00', '2025-05-22 01:47:36'),
(8, '2025-05-13 11:18:30', 51320250518301, 13, 9, 9, 1, 26, 2, '2025-05-13 11:15:00', '2025-05-19 09:32:43'),
(9, '2025-05-13 11:59:44', 51320250559441, 3, 9, 9, 1, 27, 2, '2025-05-13 11:59:00', '2025-05-22 01:47:36'),
(10, '2025-05-14 19:13:51', 51420251313511, 7, 13, 13, 1, 31, 2, '2025-05-14 07:13:00', '2025-05-14 13:14:15'),
(11, '2025-05-15 15:29:31', 51520250929311, 13, 18, 18, 1, 32, 2, '2025-05-15 03:28:00', '2025-05-21 14:32:01'),
(12, '2025-05-21 20:11:39', 513202505024917, 17, 8, 8, 1, 27, 2, '2025-05-27 12:00:00', '2025-05-21 14:31:58'),
(13, '2025-05-21 20:43:13', 521202502425517, 17, 13, 13, 1, 33, 2, '2025-05-27 12:00:00', '2025-05-21 14:43:32'),
(14, '2025-05-22 07:44:41', 52220250144411, 14, 17, 17, 1, 29, 2, '2025-05-22 07:44:00', '2025-05-22 01:47:35'),
(15, '2025-05-22 07:47:24', 51320250452482, 2, 11, 11, 1, 28, 2, '2025-05-23 11:00:00', '2025-05-22 01:47:35'),
(16, '2025-05-22 07:47:27', 521202502290416, 16, 12, 12, 1, 31, 2, '2025-05-26 04:30:00', '2025-05-22 01:47:36'),
(17, '2025-05-22 07:48:07', 52220250148071, 17, 13, 13, 1, 32, 2, '2025-05-22 07:47:00', '2025-05-28 04:28:57'),
(18, '2025-05-22 07:49:56', 52220250149561, 12, 15, 15, 1, 34, 2, '2025-05-22 07:49:00', '2025-05-28 04:28:58'),
(19, '2025-05-22 09:54:39', 52220250354391, 6, 16, 16, 1, 24, 2, '2025-05-22 09:54:00', '2025-05-28 04:28:59'),
(20, '2025-05-22 09:57:24', 52220250357082, 2, 1, 1, 1, 27, 2, '2025-05-23 09:01:00', '2025-05-28 04:29:00'),
(21, '2025-05-22 19:58:27', 522202501465012, 12, 18, 18, 1, 33, 2, '2025-05-23 02:00:00', '2025-05-28 04:29:02'),
(22, '2025-05-22 19:58:32', 52220250157062, 2, 15, 15, 1, 29, 2, '2025-05-23 07:57:00', '2025-05-28 04:28:58'),
(23, '2025-05-28 00:40:27', 52720250617509, 9, 16, 16, 1, 27, 2, '2025-05-28 12:17:00', '2025-05-29 05:10:22'),
(24, '2025-05-28 00:57:58', 52720251857581, 8, 6, 6, 1, 22, 1, '2025-05-28 12:57:00', NULL),
(25, '2025-05-28 02:09:24', 52720250808539, 9, 16, 16, 1, 25, 2, '2025-05-28 02:08:00', '2025-05-29 05:10:23'),
(26, '2025-05-28 02:10:17', 52720250810029, 9, 17, 17, 1, 22, 2, '2025-05-28 02:09:00', '2025-05-29 05:10:23'),
(27, '2025-05-29 10:46:39', 52220250158092, 2, 18, 18, 1, 33, 2, '2025-05-23 07:57:00', '2025-05-29 04:46:59'),
(28, '2025-05-29 10:46:49', 529202504455911, 11, 3, 3, 1, 23, 1, '2025-05-30 03:00:00', NULL),
(29, '2025-10-07 20:40:27', 1007202514402716, 18, 5, 5, 16, 31, 1, '2025-10-07 08:40:00', NULL);

--
-- Triggers `borrow`
--
DELIMITER $$
CREATE TRIGGER `reduce_item_stock` AFTER INSERT ON `borrow` FOR EACH ROW BEGIN
  UPDATE item_stock
  SET items_stock = items_stock - 1
  WHERE item_id = NEW.item_id AND room_id = NEW.room_assigned;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_item_stock_on_borrow` AFTER INSERT ON `borrow` FOR EACH ROW BEGIN
    -- Decrease item_rawstock in the item table when borrowed
    UPDATE item
    SET item_rawstock = item_rawstock - 1
    WHERE id = NEW.item_id;

    -- Decrease items_stock in the item_stock table when borrowed
    UPDATE item_stock
    SET items_stock = items_stock - 1
    WHERE item_id = NEW.item_id AND room_id = NEW.room_assigned;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_stock_on_item_return` AFTER UPDATE ON `borrow` FOR EACH ROW BEGIN
    -- Check if the item has been returned (assuming a return is marked by a status change)
    IF NEW.status = 2 AND OLD.status != NEW.status THEN
        -- Increase the stock in the item table
        UPDATE item
        SET item_rawstock = item_rawstock + 1
        WHERE id = NEW.item_id;

        -- Increase the stock in the item_stock table
        UPDATE item_stock
        SET items_stock = items_stock + 1
        WHERE item_id = NEW.item_id AND room_id = NEW.room_assigned;
    END IF;
END
$$
DELIMITER ;

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
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `m_school_id` int(11) NOT NULL,
  `m_fname` varchar(50) NOT NULL,
  `m_lname` varchar(50) NOT NULL,
  `m_gender` varchar(10) NOT NULL,
  `m_contact` varchar(15) NOT NULL,
  `m_department` varchar(50) NOT NULL,
  `m_type` varchar(50) NOT NULL,
  `m_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `m_school_id`, `m_fname`, `m_lname`, `m_gender`, `m_contact`, `m_department`, `m_type`, `m_status`) VALUES
(1, 20004, 'test', 'po', 'Male', '09071722534', 'BSME', 'Faculty', 1),
(2, 20008, 'Juan', 'Dela Cruz', 'Female', '09071722534', 'BSCRIM', 'Faculty', 1),
(3, 20001, 'test', 'test2', 'Male', '09071722545', 'BSED', 'Faculty', 1);

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
(113, 'activate client', 'client', '', 1, 1, '2025-10-07 20:32:37'),
(114, 'deactivate client', 'client', '', 1, 1, '2025-10-07 20:37:36'),
(115, 'activate client', 'client', '', 1, 1, '2025-10-07 20:37:38');

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
(2, '092444', 'TC22311', 'Equipment', 'VGA To HDMI Connector', '', 'Consumable', 10, 1, '', 0.00, '1747104462.webp'),
(3, '22314RT', '2019', 'Equipment', 'Blower', '', 'Non-consumable', 2, 1, '', 0.00, '1747104595.png'),
(4, '2234', '16:9D Folded', 'Equipment', 'Projection Screen w/ Folded Tripod', '', 'Non-consumable', 4, 1, '', 0.00, '1745893643.jpg'),
(5, 'K-1221', 'QWERTY Full Size', 'Equipment', 'Keyboard', '', 'Non-consumable', 16, 1, '', 0.00, '1745894973.jpg'),
(6, '----', 'C-TTR1', 'Tools', 'Crimping Tool', '', 'Non-consumable', 9, 1, '', 0.00, '1745895199.jpg'),
(7, '00099', 'Z-UTP', 'Equipment', 'Lan Cable', 'Use for internet', 'Non-consumable', 11, 1, 'Jonathan Angeles', 0.00, '1746622074.jpg'),
(8, '56341', 'S-221', 'Equipment', 'Web Cam', 'FOR PC connection', 'Non-consumable', 25, 1, 'Jonathan Angeles', 0.00, '1746495681.jpg'),
(9, 'LAN-2213', '22134', 'Equipment', 'Lan Tester', '', '', 5, 1, '', 0.00, '1746495569.webp'),
(10, 'MC 277689', '2024', 'Equipment', 'USB Microphone', '', '', 20, 1, '', 0.00, '1746495813.jpg'),
(11, 's9987', '2025 S', 'Equipment', 'Ethernet Switch', '', 'Non-consumable', 10, 1, '', 0.00, '1747110303.jpg'),
(12, '------', '--------', 'Venue', 'Computer Lab 1', '', 'Non-consumable', 40, 1, '', 0.00, '1747199413.jpg'),
(13, '----', '----', 'Venue', 'Computer Lab 2', '', 'Non-consumable', 30, 1, '', 0.00, '1747199371.jpg'),
(14, 'P-SC221', '2023', 'Equipment', 'Projector', '', 'Non-consumable', 5, 1, '', 0.00, '1747109983.jpg'),
(15, 'LMSSd', '2022', 'Equipment', 'Lamination Machine', '', 'Non-consumable', 2, 1, '', 0.00, '1747110146.jpg'),
(16, 'S2221', 'S2023', 'Equipment', 'Extension Wire', '', 'Non-consumable', 5, 1, '', 0.00, '1747198365.jpg'),
(17, '23125', '2024', 'Equipment', 'TV Floor Stand', '', 'Non-consumable', 2, 1, '', 0.00, '1747198690.jpg'),
(18, '------', '--------', 'Venue', 'Computer Lab 3', '', 'Non-consumable', 23, 1, '', 0.00, '1747639834.jpg'),
(19, 'USLT 12223', '2022', 'Tools', 'Tester', '', 'Non-consumable', 2, 1, '', 0.00, '1748418460.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_stock`
--

INSERT INTO `item_stock` (`id`, `item_id`, `room_id`, `items_stock`, `item_status`, `status`) VALUES
(2, 2, 0, 10, 2, 1),
(3, 3, 0, 2, 2, 1),
(4, 4, 0, 4, 2, 1),
(5, 5, 0, 16, 1, 1),
(6, 6, 0, 9, 2, 1),
(7, 7, 0, 11, 2, 1),
(8, 8, 0, 25, 2, 1),
(9, 9, 0, 5, 2, 1),
(10, 10, 0, 20, 2, 1),
(11, 11, 0, 10, 2, 1),
(12, 12, 0, 40, 2, 1),
(13, 13, 0, 30, 1, 1),
(14, 14, 0, 5, 2, 1),
(15, 15, 0, 2, 1, 1),
(16, 16, 0, 5, 1, 1),
(17, 17, 0, 2, 1, 1),
(18, 18, 0, 23, 2, 1),
(19, 19, 0, 2, 2, 1);

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
  `m_username` varchar(50) DEFAULT NULL,
  `m_password` varchar(50) DEFAULT NULL,
  `m_email` varchar(100) NOT NULL,
  `m_school_id` int(11) NOT NULL,
  `m_fname` varchar(50) NOT NULL,
  `m_lname` varchar(50) NOT NULL,
  `m_gender` varchar(10) NOT NULL,
  `m_contact` varchar(15) NOT NULL,
  `m_department` varchar(50) NOT NULL,
  `m_year_section` varchar(20) DEFAULT NULL,
  `m_type` varchar(50) NOT NULL,
  `m_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `m_username`, `m_password`, `m_email`, `m_school_id`, `m_fname`, `m_lname`, `m_gender`, `m_contact`, `m_department`, `m_year_section`, `m_type`, `m_status`) VALUES
(8, '', 'd41d8cd98f00b204e9800998ecf8427e', '', 10001, 'Bryle', 'Spencer', 'Male', '09071722837', 'BSM', '4th - A', 'Student', 1),
(10, 'testt23', 'ac77c6fa7812c433c7dafc357fa97f3f', 'hayys@gmail.com', 10002, 'Julie', 'Santos', 'Male', '09071722838', 'BSCA', '4th- A', 'Student', 1),
(11, 'Arfie', '3537f1d27306116f333c46817c5d75f8', 'arfietulz@gmal.com', 10003, 'Arfie', 'Tuliao', 'Male', '09261862656', 'BSCRIM', '2nd- 2', 'Student', 1),
(14, 'josh', '81dc9bdb52d04dc20036dbd8313ed055', 'josh@gmail.com', 10004, 'Joshua', 'Taguinod', 'Male', '0967775435', 'BSCS', '4th - 1', 'Student', 1),
(17, '', '', '', 10005, 'popo', 'popls', 'Male', '09876543210', 'BSED', '', 'Faculty', 1),
(18, '', '', '', 10000, 'asdasd', 'asdasd', 'Female', '09876543212', 'BSED', '', 'Faculty', 1),
(19, NULL, NULL, '', 10022, 'tes', 'ssd', 'Male', '09876543216', 'BSBA', NULL, 'Faculty', 1);

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
(1, '042920250723119', 9, 1, 1, 0, '05/01/2025', '08:00', '2025-05-06 01:30:00', 30, 3, '', '2025-04-29 13:23:11'),
(2, '051320250452482', 2, 11, 11, 0, '05/22/2025', '08:30', '2025-05-23 11:00:00', 28, 3, '', '2025-05-13 10:52:48'),
(3, '0513202505024917', 17, 8, 8, 0, '05/26/2025', '08:30', '2025-05-27 12:00:00', 27, 3, '', '2025-05-13 11:02:49'),
(4, '0514202507082110', 10, 13, 13, 0, '05/19/2025', '08:30', '2025-05-19 04:30:00', 33, 2, '', '2025-05-14 13:08:21'),
(5, '0521202502245910', 10, 13, 13, 0, '05/23/2025', '08:00', '2025-05-23 05:00:00', 32, 2, '', '2025-05-21 20:24:59'),
(6, '0521202502290416', 16, 12, 12, 0, '05/26/2025', '09:30', '2025-05-26 04:30:00', 31, 3, '', '2025-05-21 20:29:04'),
(7, '0521202502425517', 17, 13, 13, 0, '05/27/2025', '08:00', '2025-05-27 12:00:00', 33, 3, '', '2025-05-21 20:42:55'),
(8, '0522202501465012', 12, 18, 18, 0, '05/23/2025', '08:00', '2025-05-23 02:00:00', 33, 3, '', '2025-05-22 07:46:50'),
(9, '052220250357082', 2, 1, 1, 0, '05/22/2025', '10:00', '2025-05-23 09:01:00', 27, 3, '', '2025-05-22 09:57:08'),
(10, '0522202501552717', 17, 15, 15, 0, '05/26/2025', '08:00', '2025-05-26 07:55:00', 29, 2, '', '2025-05-22 19:55:27'),
(11, '052220250157062', 2, 15, 15, 0, '05/23/2025', '08:00', '2025-05-23 07:57:00', 29, 3, '', '2025-05-22 19:57:06'),
(12, '052220250158092', 2, 18, 18, 0, '05/23/2025', '08:00', '2025-05-23 07:57:00', 33, 3, '', '2025-05-22 19:58:09'),
(13, '052720250617509', 9, 16, 16, 0, '2025-05-28', '12:22', '2025-05-28 12:17:00', 27, 3, '', '2025-05-28 00:17:50'),
(14, '052720250808539', 9, 16, 16, 0, '2025-05-28', '12:02', '2025-05-28 02:08:00', 25, 3, '', '2025-05-28 02:08:53'),
(15, '052720250810029', 9, 17, 17, 0, '2025-12-30', '12:12', '2025-05-28 02:09:00', 22, 3, '', '2025-05-28 02:10:02'),
(16, '052720250841249', 9, 16, 16, 0, '0003-12-22', '12:02', '2025-05-28 02:41:00', 22, 1, '', '2025-05-28 02:41:24'),
(17, '0529202504455911', 11, 3, 3, 0, '2025-05-30', '08:00', '2025-05-30 03:00:00', 23, 3, '', '2025-05-29 10:45:59'),
(18, '0529202504474211', 11, 15, 15, 0, '2025-05-30', '08:00', '2025-05-30 02:00:00', 25, 2, '', '2025-05-29 10:47:42');

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
(1, '042920250723119', 'Accepted Reservation', 1),
(2, '051320250452482', 'Accepted Reservation', 1),
(3, '0513202505024917', 'Accepted Reservation', 1),
(4, '0514202507082110', 'Not available', 2),
(5, '0521202502290416', 'Accepted Reservation', 1),
(6, '0521202502245910', 'Computer Lab Not available', 2),
(7, '0521202502425517', 'Accepted Reservation', 1),
(8, '052220250357082', 'Accepted Reservation', 1),
(9, '0522202501465012', 'Accepted Reservation', 1),
(10, '052220250157062', 'Accepted Reservation', 1),
(11, '052220250158092', 'Accepted Reservation', 1),
(12, '0522202501552717', 'sad', 2),
(13, '052720250617509', 'Accepted Reservation', 1),
(14, '052720250808539', 'Accepted Reservation', 1),
(15, '052720250810029', 'Accepted Reservation', 1),
(16, '0529202504455911', 'Accepted Reservation', 1),
(17, '0529202504474211', 'Not Available', 2),
(18, '052720250841249', 'Accepted Reservation', 1);

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
(22, 'room 101', '2024-11-25 23:06:08', 1),
(23, 'evp office', '2024-11-25 23:16:14', 1),
(24, 'auditorium', '2024-11-25 23:16:43', 1),
(25, 'room 102', '2024-11-26 08:44:53', 1),
(26, 'vpaa office', '2024-11-26 08:45:01', 1),
(27, 'room 103', '2024-11-26 08:45:41', 1),
(28, 'library', '2024-11-26 08:45:53', 1),
(29, 'function hall', '2024-11-26 08:46:00', 1),
(30, 'new site amphitheatre', '2024-11-26 08:46:12', 1),
(31, 'computer laboratory', '2024-12-06 08:17:05', 1),
(32, 'computer lab (2nd floor)', '2025-05-13 12:08:45', 1),
(33, 'new computer lab', '2025-05-13 12:11:16', 1),
(34, 'publication office', '2025-05-13 12:11:45', 1);

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
(10, 'Bryle San', 'Bryle', '40321c9b51c45acd9a7f35f1a045f17d', 1, 1),
(11, 'Jaylord Gacia', 'jaylord', '16b0464f2bd8bcf12b03a5db01f42fcc', 1, 1),
(12, 'Juan', 'juan', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1),
(16, 'tes ssd', 'pepet', '0192023a7bbd73250516f069df18b500', 2, 1);

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
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history_logs`
--
ALTER TABLE `history_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `item_inventory`
--
ALTER TABLE `item_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `item_transfer`
--
ALTER TABLE `item_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reservation_status`
--
ALTER TABLE `reservation_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `room_equipment`
--
ALTER TABLE `room_equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
