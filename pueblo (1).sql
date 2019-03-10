-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2018 at 05:01 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pueblo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(64) NOT NULL,
  `LastName` varchar(64) NOT NULL,
  `Username` varchar(24) NOT NULL,
  `Password` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`Id`, `FirstName`, `LastName`, `Username`, `Password`) VALUES
(2, 'Mary Jane', 'Cabiasan', 'adminpeg12345', 'admin'),
(3, 'adrian Kim', 'Dy', 'adriankimdy', 'adrian');

-- --------------------------------------------------------

--
-- Table structure for table `announcments`
--

CREATE TABLE `announcments` (
  `Id` int(11) NOT NULL,
  `Author_FirstName` varchar(64) NOT NULL,
  `Author_LastName` varchar(64) NOT NULL,
  `Text` text NOT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcments`
--

INSERT INTO `announcments` (`Id`, `Author_FirstName`, `Author_LastName`, `Text`, `Date_Created`) VALUES
(29, 'Mary Jane', 'Cabiasan', 'We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.', '2018-01-02 03:18:11'),
(30, 'Mary Jane', 'Cabiasan', 'We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.', '2018-01-02 03:18:15'),
(31, 'Mary Jane', 'Cabiasan', 'We have an event tomorrow at 3:00pm. Please do not park your cars at the deWe have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.signated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.', '2018-01-02 03:18:20'),
(32, 'Mary Jane', 'Cabiasan', 'We have an event tomorrow at 3:00pm. Please do not park your cars at the deWe have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.We have an event tomorrow aWe have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.t 3:00pm. Please do not park your cars at the designated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.signated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.', '2018-01-02 03:18:22'),
(33, 'Mary Jane', 'Cabiasan', 'We have an event tomorrow at 3:00pm. Please do not park your cars at the deWe have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.We have an event tomorrow aWe have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.t 3:00pm. Please do not park your cars at the designated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.signated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.', '2018-01-02 03:18:29'),
(34, 'Mary Jane', 'Cabiasan', 'We have an event tomorrow at 3:00pm. Please do not park your cars at the deWe have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.We have an event tomorrow aWeWe have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you. have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.t 3:00pm. Please do not park your cars at the designated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.signated area thank you.We have an event tomorrow at 3:00pm. Please do not park your cars at the designated area thank you.', '2018-01-02 03:18:37'),
(35, 'Mary Jane', 'Cabiasan', 'hghghghg', '2018-01-02 16:16:30'),
(36, 'Mary Jane', 'Cabiasan', 'Hello everyone! Merry Christmas and Happy New Year!', '2018-01-04 01:28:52'),
(37, 'Mary Jane', 'Cabiasan', 'Hello Althea is so pretty we will have ALTHEA PRETTY PARTY! 7pm at Jolibee :)', '2018-01-04 12:08:38'),
(39, 'Mary Jane', 'Cabiasan', 'Yow', '2018-01-07 07:32:20'),
(40, 'Mary Jane', 'Cabiasan', 'hey', '2018-01-16 20:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `del`
--

CREATE TABLE `del` (
  `Id` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `reason` varchar(64) NOT NULL,
  `amount_penalty` int(11) NOT NULL,
  `total_penalty` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `del`
--

INSERT INTO `del` (`Id`, `Name`, `reason`, `amount_penalty`, `total_penalty`, `date_created`) VALUES
(16, 'Danica Cadampog', '5 months no payment', 500, 1000, '2018-01-04 07:27:00'),
(17, 'Christine Joy Camota', '5 months no payment', 500, 1000, '2018-01-04 07:27:25'),
(18, 'Vanessa Brizo', '6 months no Payment', 1000, 1000, '2018-01-04 07:29:44'),
(19, 'Anika Lish', 'Whistle', 1000, 1000, '2018-01-04 07:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `dues`
--

CREATE TABLE `dues` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dues`
--

INSERT INTO `dues` (`id`, `name`, `created_at`, `deleted_at`) VALUES
(1, 'Manpower', '2018-01-18 19:06:03', NULL),
(2, 'Monthly Dues', '2018-01-18 19:03:03', NULL),
(3, 'Security', '0000-00-00 00:00:00', NULL),
(4, 'sample', '0000-00-00 00:00:00', NULL),
(5, 'last', '0000-00-00 00:00:00', NULL),
(6, 'cloy', '0000-00-00 00:00:00', NULL),
(7, 'bisag unsa', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_title` text NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_remarks` text NOT NULL,
  `event_venue` text NOT NULL,
  `event_status` enum('ongoing','complete','cancelled') NOT NULL DEFAULT 'ongoing',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_title`, `event_date`, `event_time`, `event_remarks`, `event_venue`, `event_status`, `deleted_at`) VALUES
(1, 'Starbucks', '2018-01-27', '13:00:00', 'Please wear formal clothes', 'Club', 'ongoing', NULL),
(2, 'sample', '2018-01-19', '12:59:00', 'Please wear formal clothes', 'asdasd', 'ongoing', NULL),
(3, 'hjkl', '2018-01-19', '13:59:00', 'defghjk', 'dfghj', 'ongoing', NULL),
(8, 'Capstone defenses', '2018-01-17', '12:00:00', 'PRACTICE PLEASE', 'Club house', 'ongoing', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_invites`
--

CREATE TABLE `event_invites` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `home_owner_id` int(11) NOT NULL,
  `status` enum('going','declined','invited') DEFAULT 'invited'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_invites`
--

INSERT INTO `event_invites` (`id`, `event_id`, `home_owner_id`, `status`) VALUES
(16, 8, 25, 'invited'),
(17, 8, 26, 'invited'),
(18, 8, 27, 'invited'),
(19, 8, 28, 'invited'),
(20, 8, 29, 'invited'),
(21, 8, 30, 'invited'),
(22, 8, 31, 'invited'),
(23, 8, 32, 'invited'),
(24, 8, 33, 'invited'),
(25, 8, 34, 'invited'),
(26, 8, 35, 'invited'),
(27, 8, 36, 'invited'),
(28, 8, 37, 'invited');

-- --------------------------------------------------------

--
-- Table structure for table `homeowners`
--

CREATE TABLE `homeowners` (
  `Id` int(11) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `FirstName` varchar(64) NOT NULL,
  `LastName` varchar(64) NOT NULL,
  `Model` varchar(64) NOT NULL,
  `Phase` varchar(3) NOT NULL,
  `Block` varchar(3) NOT NULL,
  `Lot` varchar(4) NOT NULL,
  `ContactNum` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homeowners`
--

INSERT INTO `homeowners` (`Id`, `username`, `password`, `FirstName`, `LastName`, `Model`, `Phase`, `Block`, `Lot`, `ContactNum`, `date_created`) VALUES
(25, NULL, NULL, 'Danica', 'Cadampog', 'bla', 'p1', 'b2', 'l3', '131231', '2018-01-05 11:43:09'),
(26, NULL, NULL, 'John', 'Doe', 'bla', 'p2', 'b4', 'l2', '1312311231231', '2018-01-05 11:43:30'),
(27, NULL, NULL, 'Cloie', 'Delgado', 'IDK', 'P1', 'b2', 'l3', '093354912', '2018-01-06 09:19:13'),
(28, NULL, NULL, 'Siegred', 'Blanco', 'IDK', 'P1', 'B2', 'L6', '123213124', '2018-01-06 09:36:03'),
(29, NULL, NULL, 'Cj', 'Camotasdasdasda', 'IDK', 'P2', 'B6', 'L12', '12321312423', '2018-01-06 09:37:00'),
(30, NULL, NULL, 'asdasd', 'asdsad', 's', 'sda', 's', 's', '2313131', '2018-01-07 07:55:41'),
(31, NULL, NULL, 'asdasd2', 'asdsad2', 's', 'sda', 's', 's', '2313131', '2018-01-07 07:56:03'),
(32, NULL, NULL, 'asdasd2', 'asdsad2', 's', 'sda', 's', 's', '2313131', '2018-01-07 07:56:07'),
(33, NULL, NULL, 'asdasd2', 'asdsad2', 's', 'sda', 's', 's', '2313131', '2018-01-07 07:56:12'),
(34, NULL, NULL, 'asdasd2', 'asdsad2', 's', 'sda', 's', 's', '2313131', '2018-01-07 07:56:19'),
(35, NULL, NULL, 'asdasd2', 'asdsad2', 's', 'sda', 's', 's', '2313131', '2018-01-07 07:56:25'),
(37, 'homeowner', 'b6293b7f1cbf05412e329b6badbcc646', 'Anthony', 'Davis', 'Something', '3', '', '4', '09151234567', '2018-01-17 18:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `house_image` text NOT NULL,
  `home_owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `lat`, `lng`, `house_image`, `home_owner`) VALUES
(1, 10.368659, 123.986272, 'images/rabonella.jpg', 37);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `status` enum('read','unread') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `content`, `sender_id`, `recipient_id`, `status`, `created_at`) VALUES
(1, 'Hello Po', 3, 2, 'unread', '2018-01-17 10:53:41'),
(2, 'HOY TUBAGO KO', 3, 2, 'unread', '2018-01-17 10:53:41'),
(3, 'hellooooooo', 2, 3, 'unread', '2018-01-17 11:38:40'),
(4, 'asdasdsa', 2, 3, 'unread', '2018-01-17 11:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `obod`
--

CREATE TABLE `obod` (
  `Id` int(11) NOT NULL,
  `year` varchar(5) NOT NULL,
  `peghai_president` varchar(32) NOT NULL,
  `peghai_vice` varchar(32) NOT NULL,
  `peghai_secretary` varchar(32) NOT NULL,
  `peghai_treasurer` varchar(32) NOT NULL,
  `peghai_auditor` varchar(32) NOT NULL,
  `peghai_pro` varchar(32) NOT NULL,
  `peghai_enforcer` varchar(32) NOT NULL,
  `pegyo_president` varchar(32) NOT NULL,
  `pegyo_vice` varchar(32) NOT NULL,
  `pegyo_secretary` varchar(32) NOT NULL,
  `pegyo_treasurer` varchar(32) NOT NULL,
  `pegyo_auditor` varchar(32) NOT NULL,
  `pegyo_pro` varchar(32) NOT NULL,
  `pegyo_enforcer` varchar(32) NOT NULL,
  `bd1` varchar(32) NOT NULL,
  `bd2` varchar(32) NOT NULL,
  `bd3` varchar(32) NOT NULL,
  `bd4` varchar(32) NOT NULL,
  `bd5` varchar(32) NOT NULL,
  `bd6` varchar(32) NOT NULL,
  `bd7` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obod`
--

INSERT INTO `obod` (`Id`, `year`, `peghai_president`, `peghai_vice`, `peghai_secretary`, `peghai_treasurer`, `peghai_auditor`, `peghai_pro`, `peghai_enforcer`, `pegyo_president`, `pegyo_vice`, `pegyo_secretary`, `pegyo_treasurer`, `pegyo_auditor`, `pegyo_pro`, `pegyo_enforcer`, `bd1`, `bd2`, `bd3`, `bd4`, `bd5`, `bd6`, `bd7`) VALUES
(1, '2017', 'Leonila N. Demeci', 'Evangeline Gerald', 'Djoanne Min', 'Rosalinda Tumong', 'Divigrace Mums', 'Dina Lapecera', 'Sandra Des', 'Hannah Tariman', 'Ben Ann Dostillos', 'Jan Cuizon', 'Jack Spade', 'Tanja Catherine', 'Fleur Threse', 'Jeric Jay', 'Ben Ann Dostillos', 'Sarah Dostillos', 'Maria Dostillos', 'Althea Dostillos', 'Cloie Dostillos', 'Siegred Dostillos', 'Christine Joy Dostillos'),
(2, '2018', 'Danica', 'uuyy', '1234sdsd', '134', '12341242', '12341243', '1234', 'fasfsdfs', 'asfsdafas', 'asdfasdf', 'sadfasdf', 'sadfasdf', 'asdfasdf', 'asdfasdfs', 'dsfsdafsd', 'sadfsdf', 'sdfsda', 'sadfsdaf', 'sadfsdaf', 'sdfas', 'sfsda'),
(3, '2019', 'Gwapa', 'ko', 'Kaayu', 'Dmd', 'Super', 'Werpa', 'Lodi', 'Cadampog', 'Dam', 'Pog', 'Cadam', 'dampog', 'ampog', 'ammpog', 'Yes', 'No', 'He', 'She', 'She', 'IS', 'Him'),
(4, '2020', 'DanicaHUhu Cadampog', 'Danicass Cadampog', 'Danica Cadampsdsog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadsdsdampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog'),
(5, '2021', 'SO PRETTYsss', 'Dang Danica', 'Dang Danica', 'Dang Danica', 'Dang Danica', 'Dang Danica', 'Dang Danica', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan', 'Dan'),
(6, '2022', 'dasdsa2', 'dasdas', 'da', 'adas', 'asdsa', 'asdsa', 'asdsa', 'sadas', 'sadas', 'dsadsa', 'sadsa', 'sadsad', 'asdsa', 'sadsa', 'sadsada', 'sadas', 'sadsa', 'asdsada', 'sadsa', 'sadsadas', 'sadsa');

-- --------------------------------------------------------

--
-- Table structure for table `pueblo_dues`
--

CREATE TABLE `pueblo_dues` (
  `id` int(11) NOT NULL,
  `due_type_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `month` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pueblo_dues`
--

INSERT INTO `pueblo_dues` (`id`, `due_type_id`, `total`, `month`) VALUES
(1, 1, 300, '2018-01-19 00:00:00'),
(2, 1, 400, '2018-01-09 00:00:00'),
(3, 1, 500, '2018-02-01 00:00:00'),
(4, 1, 700, '2018-02-09 00:00:00'),
(5, 2, 500, '2018-03-24 00:00:00'),
(7, 4, 500, '2018-01-20 00:00:00'),
(8, 5, 300, '2018-06-21 00:00:00'),
(9, 5, 500, '2018-04-05 00:00:00'),
(10, 5, 500, '2018-05-09 00:00:00'),
(11, 4, 1000, '2018-04-14 00:00:00'),
(12, 3, 399, '2018-03-23 00:00:00'),
(13, 1, 300, '2018-03-04 00:00:00'),
(14, 7, 500, '2018-05-01 00:00:00'),
(15, 7, 500, '2018-12-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(11) NOT NULL,
  `reminder_title` text NOT NULL,
  `reminder_date` date NOT NULL,
  `reminder_time` time NOT NULL,
  `reminder_remarks` text NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `reminder_title`, `reminder_date`, `reminder_time`, `reminder_remarks`, `deleted_at`) VALUES
(1, 'Payment ', '2018-01-25', '13:00:00', 'Please? asd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Id` int(11) NOT NULL,
  `homeowners_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(24) NOT NULL,
  `reserve_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `total_hours` int(11) NOT NULL,
  `equipments` varchar(255) NOT NULL,
  `total_price` int(11) NOT NULL,
  `contact_num` int(11) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
  `date_send` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Id`, `homeowners_id`, `name`, `title`, `reserve_date`, `start_time`, `end_time`, `total_hours`, `equipments`, `total_price`, `contact_num`, `approval_status`, `date_send`) VALUES
(10, 26, 'John Doe', 'Christmas', '2018-12-25', '18:54:00', '22:54:00', 4, ' Clubhouse Sound System  Tables Chairs', 3000, 2147483647, 1, '2018-01-05 18:55:17'),
(12, 27, 'Cloie Delgado', 'Birthday', '2018-01-06', '09:19:00', '11:19:00', 2, ' Clubhouse Sound System  Tables Chairs', 1500, 2389086, 1, '2018-01-06 09:20:03'),
(14, 29, 'Cj Camota', 'Valenines Day', '2018-02-25', '09:43:00', '15:43:00', 6, ' Clubhouse   Tables Chairs', 3600, 2147483647, 1, '2018-01-06 09:44:52'),
(15, 25, 'Danica Cadampog', 'Christmas Party', '2018-01-06', '11:55:00', '13:55:00', 2, ' Clubhouse Sound System  Tables Chairs', 1500, 2147483647, 1, '2018-01-06 11:55:58'),
(22, 25, 'Danica Cadampog', 'Christmas', '2018-01-06', '13:19:00', '15:19:00', 2, ' Clubhouse    ', 400, 435435353, 1, '2018-01-06 13:20:35'),
(23, 0, '', '', '0000-00-00', '07:50:00', '09:50:00', 2, 'Pool Clubhouse    Chairs', 1800, 2147483647, 0, '2018-01-07 07:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `Id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`Id`, `ip_address`, `timestamp`, `data`) VALUES
('006lv73rs2qmced97ub7bu7edkg3abd8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515030491;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('01im9u5kkvefglhugsa3k3cv7jt0caqj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515133012;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('028879b408avg4rj76j3finc1u3mgsdt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516135554;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('0690ajjekm8a0g9fe7j46gb39o6s2i48', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515232735;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('073jq92s1sv8nojeu7i4t1sfg0l0oomn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516178732;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('083qhoqlva0sa230f9dh4ihsrjfih0t8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516217313;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('0anptkamhhsrte18pd0deq4l73th49fs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514873669;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('0b5l0rvddmrrjg56vm727vs5fqu39ok7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516361686;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('0g9lubeqkphnarihclrbq3jb1dr55073', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516341048;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('0jjhambhhk1pnjubo6plh8jp8n0pq8lh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515050946;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('0kjkt25a1l4np9r19prsmo6d24dg3t3p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515044494;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('0l20l9j0jrlvpi1vte79jno7467c867l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516280525;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('0nobkl1u6vp42fn72q2p7nkv8pajeaeg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514878824;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('0o35lrc5cjvmnhrneg1bp2eunu5g00fr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516367349;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('0pf2d8f0eig2scc6tb8c47d6gf64bt3t', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515170252;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('13a9731ke3o11c1svi0qjspm903nqebm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514979917;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('14io1mspdf7t8ncbde4qe1630cimor83', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515167607;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('15hrb0chhj9g4sqd77bbu6tk29ustrpt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515082542;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('16f3pjc5rpiccjocvbggd5askfissrt1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516377387;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('16fvsd6s9cu8j1o0ulf8nbijhtevi75l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514962403;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('17nhrnhm6lamok7ihct70795b19di71i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515255318;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('17u9vk8mj5nr795f1kdgnj4is5bs7q4m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516213893;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('18ful6lsfk28kjurbbc9sht4oj6bdckt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515000275;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('18r7ajugr7ov409u8pvgsvadr2f3bhl5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516377083;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('191eihq16ilnofhu27qkc2gngjfn65dm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516360556;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('19s5ie8f97hifvf4or9110fpq3h8vran', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515084953;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('1c5a89pemtk93cvialots65it60m0mo7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516367697;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('1fvcv4naa154pfcrahpb6j2eh9v4fe37', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516283201;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('1j9jkdr16r8e42n2ovhb1m5u1ifk6rai', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514965462;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('1jcdi3drvdleunt0bfkr9lvqovocs8f8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516215438;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('1jce7v8g73fo11ra8tdufj5965o2kihl', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516361364;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('1l8dvqqkb26kub942iqc7tdisor7fijm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515163986;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('1qv8pu2kq5o8rplkjblk0dm7qsh4sshk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515607574;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('1rjuk6idc0bagbq5fhjsdfvmfc1qco3e', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515135725;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('1rkapntlsu9iinh40eifkoh9p9g8ccga', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515232404;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('1slvvbjuabqtj7b26pllg7qpl9ki0t44', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514990016;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('1sscvqag25ntk9qida7jqqddv074k0i8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515036145;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('1vlb4st3r4194s0qhr0rnfh5uu4ks56t', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514981516;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('20chfd1u6v28clppbal575smj3p513jo', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514880803;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2a79331hiucvko2jmjdtdup3il9cilme', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516373234;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('2df4vp6kkagodec7tnhchd2o80pdgdd0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516358546;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('2dn22fbii1jlqi7vse2ceecr8vlnn8l6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516215792;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('2f3eb7rp63ha1cv15chj9fjgbo6js4h1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515231337;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2gn97s5shr5g0ia21eka7t3lkmbfhplo', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515046145;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2hjka9t9562befloqa06doptdqh9779n', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515168118;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2kfad5fbpb14takl28gnba4su7q709r6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514882165;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2lk0fepvnunp7jmmatnl9oq40ghm4akm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516341930;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('2lp6uas0q62fimjej2dbv6t7ptvvetr7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515050644;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2m84d2bkv55l1iht0e0b53atoambbjun', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516284775;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('2n1bkj3e2bg5740u10bbkrckevd6itqi', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516351506;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('2nj80fmlmlqft9moddsuucgvnegodr4d', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514882467;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2q56hh02c80loaaiuf574v7a1rs87lek', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515002724;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2s4j22a20fb3hak7mos1661vpdf1vs9l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515033700;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2tge5cik8lsshhc9jt9qlap949n7qb3a', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516281968;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('2tl2bfss3ik127qqcjd6ebfcmi7raf59', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514956882;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2u64vsh7vd280505ktg72geoc8r4r43s', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515142828;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2u7tok0tb2ipeuj8ei4gv5jooa1s7t3m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516177331;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2un4v3eig4emlsa5672dtcgdlm6n9idr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514884316;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('2vr4t8q84isntqratcahenrldc12nll8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514961197;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('30ntknviq2ioah7nelqsiuvhdk2rd01t', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515046460;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('34buhsqnapfp02r72kqvhqtdv8blf2p7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515244851;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('35rvd1m947ef51am7pfqv9e3a69ffikj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515240378;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('366rfo9doln82nl0ktt94r1trqjtvpge', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516204192;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('38uik2p10vp7sj20569c1ues9kmkimjs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516218277;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('3b54ttm4rls7qgee0kqi3ibqq66piqrf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514995894;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('3c7qb47554llphhncrp55bl00utoe73l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514956563;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('3cerdpq2ujlma1mfnaavobf8jjbpsapr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516207646;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('3cppo1pj075or4anlf6j2bb5g4itd1eq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514861996;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('3lp0ge4lt432pno66ers2cv4mmfo4ek1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516352187;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('3lreaq8haq0m052m55kejp9u8m567lqm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514853303;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('3pbjjq18urhmivnliq9ei1mkqaccl0ma', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515166642;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('3php420dsqqve2lib2ol02g9di18di7m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516365203;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('3sbnk5nelmhmt51u6t5vtk0fmstsneef', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514984232;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('3tmca0orkleihr6hdilru6a8l3kstnvu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514999154;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('3ususr44mh3ffmkf9vdq2gpsdpr4cb62', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516285419;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('441kh2r0rpavs90oplkvilrcjqpd7mnh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516351087;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('44b71e1salksom1329rg74cdeta8n7g1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516281652;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('4aa7vptc73b13qug64ebbodcs9vqo4i1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515084481;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('4igdsdtfjam2jt23fqiqdbe31ki79jjq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514875987;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('4keleuqhkdnlvo0085bgls7qn3p4kk5l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514883268;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('4kshm97t97lj5m3hrtm0hh7fdfdpdhrh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514961639;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('4nnvnvoko1sqp9qbjckgl1ianosn2lpk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514877764;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('5226alfv4rruc7vdemaio8pduqmcrre9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159636;'),
('527ijlh8l4vtg092nsfg5f6tig2snk5m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514958080;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('52ulrkpqluv6fqr2l9p26co7nr0fnq48', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514872667;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('53q83tku1583d134vqc8mt2pgg09e9fe', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514962055;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('546la5k1ueoidls58s21i2d9c2lr1cs5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514985986;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('54i32i9nl4f2n8naqp1er8dv58so42hf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514980556;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('54r87ks4u58rth5o8j1uu2rbuuc6nhnn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515171242;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('56pafeuftut3dm0q1keg2vkct6m7usag', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514991711;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('599n0d6a4g4etp545hdo7san2frn90la', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515156925;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('5asfkgf9o2g6ro37un76irq05ad9k5ob', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515312008;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('5cnhvarhineq7vtm6r78nso5ik9dqs69', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515151842;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('5e2ndeikb5nherq9he3qgp9276qlmgmq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515600107;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('5jcb4rddnbfoio7h6codi8rslcsrn1ag', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516284025;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('5kerjhibs4t306sep3o3b83mi3r2vu4u', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516342553;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('5kftlgvuu96qidc41h84id5q56s3sq41', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516340522;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('5l4gsb4fqasnpulu59a1ps32icn1utl5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516370471;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('5ngcvdr5qc8sca36fpastn0875oevghr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514861677;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('5skqv6s8dk2s500fkm3dh7fd1rkguffv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515129098;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('5um198eackdlv1fda7pppgp5sm2lcol9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515142203;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('5vokc4lnukkpg9e3ml5frftt39338j5i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516214549;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('60v0cqpj0u16nuc0u8o4n7009671sm26', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516204515;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('635f7rrb3dt8hq1oh2iqdnhmuu1prp8t', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516017926;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('674s46sq0ve90ibdkm0jhvkbhj6hg0h6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515048407;'),
('69jmj7v6kqft3tfojuumm6kmimd9aqkg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514858894;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('6cgaisu8t4nufqe0i73ep2sdtvb6e8cp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515156564;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('6gduhlb6s5gkcd5e18ui1dp4jtc36mc4', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515245792;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('6h3a6qopn8vhk6sqobb3vg0bavvhilkj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514860521;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('6isq1r300gbcif29gf7evha8errqv775', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515083412;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('6qcagmb79lbertrf5jrtilm9baqdh3i3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515244544;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('6qdgdttgvdqdsikgtfmvdr9leaooflvc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515244221;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('6rf1ag2qbbimmqvblnqgpo7j9601u5v2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514978824;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('6vu3cnlo24ihebo62g0q340bg5qs12gs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514878451;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('70vq0jj99o87kbp6t40d24fnfbbjfr4g', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515150349;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('72431sroil94ds3tvv160tjmv743ott5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515068004;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('72hr5lp2aopi265j14afhe7o621ph3br', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516193111;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('748d6pcc7d98htp7g5k6in3qnlcvgf89', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516217959;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('766kgv31lru2unctccnrt1enkrnto9ae', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516188138;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('77aa99dgs57f7np5d5el1lc08jabt7ir', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516218938;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('79vb21m4gi0vnt9dh5t79bdhs42gmeen', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516363230;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('7c2bunq8knr1u5eoqbl3qme6i566fova', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516365528;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('7dmivscosl02fevu6j32alegtd80823s', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515152985;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('7equn2da7g59ksutqdb189cmbs3ckt0h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515046825;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('7hpo03jigpi0hpbk1jpfvpvdile6gorl', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514995445;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('7ri97fd7arfv7pv8f64vdqher41lmqga', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514266413;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('7rqfe125jeupiatdmcv87f4i7shh1u8d', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516377387;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('7srigrb46kg2viss4hhr3h1d1ijq8uqk', '127.0.0.1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515057790;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('80u8j1157r3d1rpon3b6i62augb48tpr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514858556;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('811p6lcsavpmf1kej5d7n5pa6c2gstg8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515256960;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('841go8obe08fkttp3trtgo5t2oabd2q8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516339652;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('89n9if4edadaqp2ihac8eib6muqoahqg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516191432;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('8e5gttb14il1jvm1ivqa21rchk9anetv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516344875;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('8mo13m0b4f3u6t6deb6i50ftdsf8md8r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514345078;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('8pnfj15fmvmi1js8raf77aoam513anpr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514986659;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('8r4tml39biculr0u1km9hritfa525j7f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515001200;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('8req6pn318gkp62g2mmcjseu7s718b1j', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233758;'),
('8sqmlp14tbinecqmit2d2o4m62q64uh5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516342251;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('8t88d2c9ioi71vtopfu2flkmfatk52ge', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516371009;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('8uvkedjkfu3n9cog5oveqafd4ac4cjt6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515261015;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('90np08h9io0f1pmrgcp97jen9tuk2fhp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514350732;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('90ua8inv3sm1a10um9dng1rr6c0fsoan', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516364515;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('92fd676duve0vrut42kcavvrue70k1ku', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515141490;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('98luhsthevc0se7i4e0jcra9pivacc25', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514859432;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('9b2b3k38h13p5b073iciqbgo621pvcf0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516346100;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('9ckkj2158b1e3h81ghu3rgoedtbfg3ih', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514265852;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('9h547p5g201t6de3ekg8nokq0gvp2ugu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514979189;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('9idrli5ckfh270ajd6uq7n4q8f4ii7pp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516216419;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('9pg5q02io1o58b48c980lvsk37coc92i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514857764;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('9qnkemr7gpt31ro7c3d430qcbtn788qp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515231895;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('9siso7m0qg1gn5uj2tjc9hujke671968', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515260637;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('9u4j7gllsl5hh9s55981jhkf9kgifa5m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233897;'),
('9u9fahjjnf7nlbbv50meuj0k8d63suot', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516188454;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('9vcbhtg86nqkqhhinjgdu9tpa1vs0rr6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515089979;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('9vjm155ibkncsqrat8ods9db0qeve18c', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516179267;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('a3ld3kppre5tjip171v29dhulpqd9slb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515039644;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('a51nu58vfpaukuu3q79taeaaeq20g0kb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514978137;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('a54ltaed5pho6lmp349o8v36hbu3udpi', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514879253;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('a6e1imgg2k1a413ueb5bvv0nogl7rchv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515028588;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('a7rvda0s5hb69tehrj6qp9bfklstf55q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515239593;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('a9cosvpvjsa4k66m49rkavjpf88ni6s6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516288312;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ach0ttub72gd80eue94d0paef9dp0d07', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516351821;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('aip0jc239hvdp6kq34vpugm9bel3oj2v', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515158829;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('al2ggdlsvtlrqmtcjq1kgguf52rr6abl', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515144389;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('aoknuasj80bq81irk5vomcpnetj6oosj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515091473;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('aovf0b60oofdj8ai2184mo1cv8ndjaj1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516214853;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('av3tq1vgs7qobj696uptirstrdj6u3tc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515002270;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('avpvenfu03ij4bolcv9chb6idrscp7ur', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515035464;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('b0i83visfcbesfmo5j43mm1k7o6occu7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516370166;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('b4ns9saugj5fm1lq3520q7nuvpfd5ibn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514960843;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('b57eh3aqjsis5kfdcav89ksknf08o4pm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516376738;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('bagm5k4rtsmpiagfho3qi9ealegggi4u', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515597932;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('bap9i7ib8a0oo8arf59fnikio3jkuc7e', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515600770;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('bdjsbj551pamsfgdv4ahc4fadv8kegct', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514859865;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('bhuib2c9qh3in5e7gbnp8mb8jjdjdkfj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515757115;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('blggr6tsg7qkae439m04e87n1a0ofjmv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516210483;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('blm2oa1pb1umgluacuen9pc8bkgu6d2a', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516210883;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('bm5g597b4ehucssdl8jtmm661v9m4n2n', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514999955;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('bpesuu4h00n2s4er62hgnd9ruvr4n5qc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515049962;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('brfi6gig42i3elflm989fonfdq4u60f0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514980873;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('bstirogagqtrfll9m7ev8ldv9fbh2bnn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515247836;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('bub8m0r3mo0b1n97da9uqt1qida2ktjj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516354293;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('buko5cv6to12e8ks6kjntfeer9cd6nkv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515238837;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('c33966hfuor3nmmu12dtd8lb42jer4qg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516287663;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('c3qnpuq3p9p62vsm5gg9heluh393vc81', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514881857;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('c430b07vt1nf9kp34q39t6ia8d176f1h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515230147;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('c5rhkdjh5nka56g2p4rosav4j50gu65p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515089650;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('c5rmaf5a9mb2caoge5ggo809ddtp56k4', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514981215;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('c9q8r2q92l02cgptisu9kas30h832jcs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159368;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('chol9h91dpikfbp5mfmu8quil5hpo035', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515003642;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ckm68bs90arnml1k9l6sdvbi799grc82', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515173541;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('cl5pg0pi4qe8g2o0u1628hrtl1n3t9bk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515246319;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('clhkea8bvtc01g2e9rkc2osdfa6cuur2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514881144;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('cttr17mhsqq7img7lts4kd5i5hlp6e6o', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514987468;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('cvofoe1d3d8efu3jnup4ek7e1pr5mtue', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514967813;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('d0ak1e67sls3n7ip5dnsvndoqd0euqb7', '127.0.0.1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515055672;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}');
INSERT INTO `sessions` (`Id`, `ip_address`, `timestamp`, `data`) VALUES
('d2135dumhm8t9rphec3g962f4h34uik1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515047570;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('d40bsfl9qua7et9b4cb7kqia0m9tvgci', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515085464;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('d4cuao4394ephgd8umg3rfaair13eo8h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515177656;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('d7pe047i1m1e8cq9pk9fab1v5rc1tk2p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516214232;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('dchejvbo7eqeeqn8vut6uk4m2dubvldr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515084069;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('dcr68dl4vrhfo3nupm06h5jnm6kfvibf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516208618;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ddu7161th8mben2uk5ekt79ep7br5e20', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516216114;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('df75lg7n6c6r30l9ja09dir5t68geoag', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516372281;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('dg41q4u454is8cepcno04i0qu744dga7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515178364;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('dghqh74k2b98ceblrrgcnebgje3vsblb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515153312;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('di29e363denvr040ptch399kb5h8shn2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516364830;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('dj3gogog14kmqqq74jr16okdbepo8cts', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514873363;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('dlfm3m4h8d5nm4efeaes55ue0chk96hb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516212271;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('dlmb6430lt0o0cuds01b3qtikb249rsb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515153613;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('dp1kasse2micr19t6d465f01mp4iu0b1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516365910;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('drklc2phcuneqnqjt19bk2c8v74dfjip', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515156226;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('dsprgn8qreka69sr2p9eisqb8f0r91bi', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516363876;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('dsr12re15c76hprhvorla16be9hjfmot', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515129401;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('dtmaep3baii4ij9v8p8nkj7od2a99kjk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515047539;'),
('dvd6tr54m4qfi4pfcr8eebtphc8hmm58', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514355015;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('e00v4kpmnn0kka07go0jtllncskjlov0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515128580;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('e0svv68mo93s6cqa8v2aiqb2jn2sddi6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514982251;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('e0tn81d6dbiqbrmrk0gefc0o3gp1eirg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515049598;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('e1jh3t32khc4olba19m7debln8rj2smr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516360219;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('e21i3ib4bmbqh7lqgdh1dfs9iovto760', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516352875;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('e3m6otb3fvlb2our2k8r2ancukv4mbot', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515037777;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('e4d1iu0hi0lhkmkejdap1m756239c7fg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515051318;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('e83c79dolidomm5v6nbbe1ooc8eogodf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516369111;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('e8giu9dd6iejatf17kgtpiike0g7io4s', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516368005;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('e9hqv1547htnbrmur5ekmbbja537ho5f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515239179;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ea0ie124959980gchtlvqftkcjp7pakd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516205848;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ef02j8gosnlbf6kqr804m48cqf7fecom', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516208277;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('eg5d0krudht6u32e5cmfrg51r1knocre', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514862533;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('eiie6dff130fge4gkg467r70bqesqbn8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514875422;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('elj2o0ml09jb70l1nmirlpjtguvmhq3i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516285095;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('eo9msupa0ce308dis363qnn60arj2fkp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516186516;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('eoh6lmac2leo87061i0v19ae9aobvrn2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515091143;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('eqph4khfaepq83699dd3957t2qi2jlvd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516276961;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('er8t0ps9lemtdrtfnhtb4k5vm4g7t5vj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515043499;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('etprcdp3u9967osag1c4k7n7lgiu17r1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514880485;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('etsojugcpdbiaa6crvg1p2nos0mbumkh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515149495;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('eu6u3gd8f4h5pssrveq6ag3nf0461hj5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514878071;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('f0aa9gujfbt593t92icqno1tj1gn0u8q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514999476;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('f0fd2lrb1njvinrgiqqd6v8oqd09sk5q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514569499;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('f18diaaiq4qtit41i9l1mhp1hjmkjuvb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515255718;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('f18ir0fk2gepoji194iofkupfrldbr3r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516189695;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('f57qv85fu9lpcs839g721nalujda34qt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515090428;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('f7t1oadhe98te671pqjtsap4rqn16ipg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516366911;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('f98mibljijk4uscd6n4o6j42i06k766r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515236430;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('f9lhg7ti86qo9s3kmr49co8rhmru23ko', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516202432;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('fasgcg9ua6c9upqtpnaghr6bi4vl9t80', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515154896;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('fbklhvv9bkid345p8ls68iem5pc089rb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516055664;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('fbltshvau0ct1to9aus3l96p1it2fi3a', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516282281;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('fcf8bddcr66nvc6sna78nteev7mquiaa', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515173849;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('fd2s1q57mv1ga9pn4lnpbl4qb89m2r43', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516362237;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('fdf1tpmktvu47jreov1munsea4uf6uc9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515254766;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ffifr7lpt2r2k34bvb9a57henhloocoe', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515146726;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('fgmlaaj0s8167pjsrmg6e9dnkeg7a9c8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516193444;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('fgmmnqnbi9u93h9pqo97jsvrnltvmqkd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515136297;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('fjpmkqa8g77fu48g63pu9ar59v6s0of0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516187163;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('fmr6a6a658lh5djg9o987grutdq1s18i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514978493;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('foa9e59jk14a6fp15vipvjbeldm11246', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515080701;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('fqdqc3io6bugfm63pheqsgafgcb1jimn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516341609;'),
('fqvs7jcblhrn5nf5n3nmpst0umopt78a', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515156227;'),
('frbd58uor1n3a9rgofrl20ldmp8hmuvj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515140209;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('fslq66umbg6nbk5g29k4krkl2fh2j31k', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516287968;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('g1vtj3kco1bc31gma44kl43ljkocob8m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516209590;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('g3t1l3vhfgs9i6fkfvbm753s99bc0ng3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515309710;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('g4cjt6tsfunf5dmdcrt2h48t68f4o71u', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514968260;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('g5eqlv867tt4th0fv5566tocsp68sn2d', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516211195;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('g7ctjpaeef4h18b5cjrotjt4vs09igi8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514977828;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('g92b0g9migh3opq8ok8ktir4enpp4hsg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514959707;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('gav1k9klobq51oo26rmf6dg0j39039u5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515257780;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('gd4dfepud6rmvcfdq41h0gjcr9n25o68', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515141813;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('gf1uac95ld36vqqqjvv339dgc6jrc2l9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514976979;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('gf5i52bu9e9h3dq7ambtiv1m9muh4eth', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516213122;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('gh0ovi5i0tm2rg7qa9c3ajtnd76mnnh5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515597202;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('gjrf745cjt6h7eroocnac45gblt7uo8i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515148898;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('gm0a28svkttla4nlg426luvna23pj17b', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516219350;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('gmdbvpj2rq9brolv901o1sqps7m6jlcb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516184243;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('gp8ipt9md5itnu1e6kf2t1csh6omp8j4', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515230471;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('grqu1i9fjj8k84c9ju7amiksf1ucinsr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514872013;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('grvbh23nme1ijo84h1si55fpo342v36k', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516368776;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('gshbu8meo0kjrelhjicdctig2ed156va', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515044157;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('gsl81c8mfqjpehggprdh5ekdh4m4p65r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515140538;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('gum4di4uf4e0o64sethivla8k781gahf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515257441;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('h4e865j5v0q5ppb2vonjg2ogmumu12v0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514879873;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('h501bgurqlpooik6cg4efk5j465hr62v', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516280932;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('h5npjeavo6mdqc3agf10b7c7id7v6tlg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516285739;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('h621k1skdh9739frcmthit17ju6p0ri9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514993598;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('h6q880qurme0dd11tnngfchvktqrhu6h', '127.0.0.1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515058816;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('hcvv3mmmqtobpra0vtopnhdcs3fqbhll', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515609921;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('hh9ebogtt41vch6t4ajm3627aoepl3l3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514882895;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('hjnbjdpsq8sablt0o7jg13o6n9a5scs6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515165290;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('hkq49s68vbhd9hd01kgru7dampph4toj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515174309;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('hn7q560hqg2eftiupv18pnb1ldj2ud7v', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514860204;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('hqacp4r835ga74ttc51tls3g32uaka0a', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515258561;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('hr8p2drkmla902opclnoir9vpg4teaij', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514958919;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('hraqc7mge1mhu9q0emp6p5eqi2hr3raf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516189316;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('huaui5m2d15bgabo6i6qh6mnegtb3i8r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516340135;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('hvfn8l16nnus51imfb7jentoq08k9j4r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515154233;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('i1b6ar2114cgbe0bd3dee4sv27lnoj5k', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515604107;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('i37f07ncsoig29img0frckr4ap288lin', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515258865;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('i3ks1lpm2m1ru242v231pofj6br5a4s0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516353512;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('i44sdjrreh6fmc7m9ju8d3qha0et6eoe', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516359838;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('i46rnokg79g2429tpnnqooeu8us8595c', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516205163;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('i4asahqp30pnllte75d05q0dhjo6dfgt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516192498;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ibfhr1srsrqvbfl2p1p6i81hkifm7ro1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516190994;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ibl55nekjm95co7pm70kkkj4mlkhb5ed', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515081743;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('icl0uqo200srptuu0br4hq74l8bol574', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233749;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ieek0aslmjfcrtekau6flfhshf58ff1m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515132931;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ieng5pk26k0jiok1spq7e84cdibv9f4f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515595999;'),
('ii6p534901d7umliec67cccj7kvdgp4f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516353816;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('imd3fjoq5382s82afkc8clb5nbmrje3f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514980252;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('imhi5olhn6lar3mq65c68h9njcct4kl6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514883983;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('imkirq9r04rslg8pmgqlfaktdtrib44j', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514986304;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('inbh8ncc6b87rackdnnqmmn2oae1bn4c', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515128050;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('iq9ubmgru1qg5vnbl9hhbjeegoj0lrod', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514877320;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('irght984sl1hjvac5v3m29h1lgl94otv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516287341;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('it9aee11ar25i7t2m40q5370n44maoo4', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516358871;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('itr9imn2jujaf09m8e9bqta10ffu9k60', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516194130;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('iun9ibnufilvk72ukd04skq4o1nms4h7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516185554;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('iuppt15sm8e6q5c5e23dpju4og0nf4kk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515147303;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('iv9u0psvca0k5r5msv6ialqs6brbocp3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516347160;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('j0i6l2teke3o2aef2nor1d5po529k7n2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516339314;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('j79vhcjm438b7jslcfddbc1hn3cd92fu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514996846;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('j8e6a29s77c18legale2rlmjo4gb2bj5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514862843;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('jggdkn11kn7bva142iv6j3ncq50cqrks', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516283604;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('jh5rrqc2ijpl0vtq7qbhu9bqm7rh72ec', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515169774;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('jhogikfd83coivqntdl1hvnol66t99l1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516177876;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('jjk6elkgo2g1ij8rb3j3rqj6aifkhugu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516218626;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('jnptgcpn2d0ni9a9cf08d5a646rm2jgk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516369821;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('jq2ptl0jd80dmsbjlmumfkfov2scj3d5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515086683;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('jqm47apedsv4u8jjbkobdfgtahjgm349', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515048407;'),
('jrgfdelgo8l6j1i669kt6u4rpnvkg3es', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515261726;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('jsq4itmoikmkoqdl4fo8beri81o124ev', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516371798;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('jtkcrcvkv1fme12tgpi898i2upla8gmk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514350376;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('jto4a8p2frn9jldhg4vhs6nq3d905vha', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515234206;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('k1aktohohvgt9v5aes7a1qc5dfts85n7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515139887;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('k3ndsh68su2eq3vdl8nbfe1btta8opqj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514873998;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('k799mupufngvrq7ngvl3992rijn4lidg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515143920;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('k9mlod6i6kisgd6blimr10dg6g342pcj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515048407;'),
('k9o47g3qtkvub1n36gcksfrjc3a59es6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516360929;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('kbos1t6gfqsrt970hr8429kem1gnhim5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516046484;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('kk2mfojl3u21geudnlu7gho4aaba34p2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516364191;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('koo93lcg4719t04dlnjcbjmp8fqa45rd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514957187;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('krtg8alkove3pjm5gpaibnc3ada4ifbq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159635;'),
('kuu8o0utsqe776o9otjqchpfo658bqt2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514858247;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('l16hdcrabp6m7kv93u2gnad4lcktmdt8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516187619;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('l1ic9ci1mero76c54lk8n37i0169nthd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516346841;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('l2dm4nd74i07sko8q7lekeir9jj2mk2g', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515091933;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('l2f02c58bqgt94u37uov1k442chasac9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516202775;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('l666jerhgakbu91q8s27ee0lebcddfkk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514957715;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('l7u29gemnk14ghv6h1dpupdb646d7daj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516068984;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('l9o4tcghrbf3fpft95bi0t4e8n6ktrct', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514963467;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('lar0knnc2ij27invml8ntfj6sn0krtn6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516343891;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('lbhogkhg38cfaredq7dgs9hp7hiqimgm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514994100;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ldirfef472h0pdejgba4b81q2o3eek8e', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515087831;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('livcb8gfmc8sardtkqs8t953asaqgo7c', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516135067;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ljhe8nvvc8q7f1t6qbedeuugsssr05ai', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515165998;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ll2o3gef2f4bs00c4o8ouvdmlsnqaui9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516018253;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ll8k10fuvr9qqioc00ur6vrceelkvuho', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515153922;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('llbbq15uk0156vv5q70vv0v7esjd2ci2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159807;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('lq2fosha905msc504n4809o6hv551q3e', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515312008;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('lrjk586q9coe9m2l3tr1iqjallo240qp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514994631;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('lueb8fsdq78l3f0q3lhhogrisq0205ak', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515596407;'),
('lvcra24c0g5edvaopr0l8v2mkeat1i85', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515085942;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('m092e4d15lavau3ef5uekq4berhqvqal', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516203872;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('m0tmg916p65r5dtgqjkg29gna2vo04ar', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514861180;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('m156h3eccjj5o3ic0u0rqj9uemgoa9i9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515245169;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('m24qc8decmm9m8977oo02rtnn9o3d99n', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515045505;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('m2k8gdibcjgqplqseedfk0t4cru7beks', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514876984;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('m4bp7ggsekhq9lnj6n0n43u8c9d6ddsb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516191804;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('m5aktnjgdjc1igraubt9d8gndu822du3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514871706;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('m7ufm8qk5ils0vo4btiuos74jkav4fhg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516282595;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('m9iqk8i21sl69i3kj400ou42vin8tca8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515028283;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('mafa2nmoqdqn814d728rkittcednsak7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514874425;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('mcdglinuacamspkfe0v2m3v5srr397s5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514909761;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('mfanuvg8e3af3o3rfutuvn1oo9lathga', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514354707;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('mkupp8k17g8jf4s6dsdi9vli3ubtllen', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515027572;'),
('ml2gap9d31mb301smc1smu2muek5v500', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515086989;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('mmrdd68socrh2t12r27afnubam5bjp2u', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514992067;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('mqk3d7p2fng60cr2u06392deigjc0ev8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515148059;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('mrqsgnctc2dskj2hhall55cktjdp7frs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515033398;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('msvru39ea641987ca7tfmub4mji4rbff', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514863152;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('mt5d6kmf5q6kh2i9cajgkukirljnd39c', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516203200;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('n6a2hs3am9r8ib9su4hl469iioeiunu2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516212631;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('n6haicgmp7iajdr3gujjsmeh0icpqg6q', '::1', '0000-00-00 00:00:00', ''),
('n6tm17l33s1402resbdk6iphqgsdg7t7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514909761;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('n7p9ncal40ruo4pemu8b0q7efoto7h7d', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515035843;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('nemonloqg9h7cijagqcdnhpoh6u201tg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516185896;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('nenn9f93fl2c06oqqh54kn5hjal41rf5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515238117;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('nhjhtuc3aoev584mmgmg8tdmp33f5f9l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515136297;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ni5djbubpa2klvsuttamq5mutf4t9ggk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516216733;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('nkg9oknttamo6u4oio3a3fpej3pb43q1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515142506;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('nn7mv5nu5mtjabbnu2411vrud50hm6hs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515149990;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('npisq2fqo4ibbe9kbm3tfugsr29gmjvi', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515150709;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('npndu6epsf6cm4nu1s7h09t3rej5eotr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514265326;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('nrac7n89v4adgbnnsjvj2vhh4702dtj1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515221048;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}');
INSERT INTO `sessions` (`Id`, `ip_address`, `timestamp`, `data`) VALUES
('o5biola2ckk807fkjflh6oc440l9fq55', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514876372;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('o5l0efosrcr5ott3avsgmi88i5d8gf6g', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516276113;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('o6v5n59fmhj2jojupbq732n50bd8q5dm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516185191;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('o8hsu6g0m6s56un6r0ppopvmbth5q7p6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516345703;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('o96qdc9ro0g4rd481qmgur55marpj6te', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515027982;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('o9c3aikl95522f5hni0qfa11g4lmue3q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516281286;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('oafo3bb286qipn9sd4fifvrg322ph2qq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515311163;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ocbb0g7q7mkts0pn7l8vlgl5bbe1n6ea', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233750;'),
('oe02cs3433nggbaurgr524cp44n4lb5s', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514956187;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ohoqsr2t3nopgq08pevbe87r8civr0ib', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516184888;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('oilq4kvs85t9e5b6lgcqijn3a360d355', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516363557;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('oit7s2dnhhv9ra1f6lid4ji92pmmgqnb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516284403;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ojh3rpicl13vlgqghmb7i4pi0d2jqsm2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514997694;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('okb3uu6fkk702sn5hdumc2b9hut6i5ij', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515081032;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('olslpnpf685b2ihn6vqh99m6b85263eh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514995078;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('oo8357dm6q0t67c2gebfneqdmjorcqnu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516188983;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ovgrhh22r9rgfk72qfj5u20svpcbn9pc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515151067;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('pau53e29gs9q1h330kc7q3cof0jquknk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516343184;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('pbjgmidad708pjvgvrn7sd2l4hir3cgf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515087325;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('pc2jm277lv62t7oopvo10ppq5er3gbo6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515067679;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('pd3heu6ivepi79hsfhe88o6h0uf7egsb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515143168;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('pfb6o7s00oi78a83jnl3aa7s1707teiu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515152200;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ph3a09boel8ltj2g6nikjajdojj8c79p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514876676;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('piu08fn4b7jav8dpd6o16gh3jj0n5jiv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515308836;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('pkrvfho9d849t68c9rqqbiuduq70u09q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514872322;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('plq1ehf5hnl1cght1pmkp2pthicc697j', '127.0.0.1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515058816;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('plt3gc5l0a2t05tlkcjpos64ud292ja6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515254263;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('pogebeg1hdv9a7qt5slelanoa5mmdutf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516213474;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('punn6lvchor8rllvrlgtm0mvb29mrc66', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516369485;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('q3uju25lj2m801oen9fnorg40al0qeuo', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515036749;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('q7oc7rbdjl33qtv99p1t0v2gt54qq8pq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514860833;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('q9a8rh77rlo2r6eg3b0h5bfcdj5g412f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516368403;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('qa45o8329ha962hkkq9k1bgusrmpa1p9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516204823;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('qc0vu5p4p4q9or9o8p101g2inb3du1vh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516194513;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('qcep5dkpip7cisn8nd4nirhotap38a7l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515036941;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('qdfb4il5m2hv3gj4cijetuj3lppuoea8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515140844;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('qhg1v1paear93vcpv0blcl5mgfrqvgq9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516194837;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('qi4h9i0bknkuks920sto2kld10usf9bq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515036465;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('qm5255kpcia9bf5pnchvh0d6gf2updct', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514988486;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('qn3crjcn007lbo0qt087388b4vfth8v7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516344404;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('qpdetpo85qnhf8cbbqtg47l7466844k3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515089074;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('qri7okf2n2t582rhrjq648ivepm448ss', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516193751;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('qt2hhkv3psqbis51khgl95fsl669rsf5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515047150;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('qvp7ti0bcgltdhork9q3u2ifrniqspko', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516211497;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('qvr1jvjc5pcg51f1f2v5ju6j78mq4sno', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514881544;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('r0dfsvtu6788lnbh7j39v9c6boljbjnf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515066759;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('r4d76ubb4ek374ko8bsnqlkj74mtrr4i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515136309;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('r4lqoj3eq47rgcfm27cs1hqp2o1gv42h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515086318;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('r51m75fd8h2537n40i7lhpuh3s8lt0tv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516374158;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('r6ok6p1hjjc5m7mb0sn5fpmk7s850ku0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515592013;'),
('r79g4s1cvk7o22t3bp86p5oqg7diqa6i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515308386;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('r83u923p0fsl0qrmsirvbecnvjt3139p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233428;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('r962do6baqhpu848bda1j0r20ssb5oe8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515055049;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('rb1q56ia2sh2dsjr5td3kkapfqnq19v9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515001742;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('rbt0f0a5i0s1vf54hbhi4vga5f87896k', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514960066;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('rg6fdnumc0ah6v5utoeh7okt4t9u3hmu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514992784;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('rg8l651n8kup5rqsn38u12bk1298je69', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516186197;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('rhje34cph5gdomdv9tv3931ff8te20bo', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515253411;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('rm6j3t9a8mcf210l3ug6go9jetfsilk8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516353194;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('ro3e97boknpgg2g7lht6gv3kh64ukd42', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516372604;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('rrap4kf9psbjtiada49ohtcmas1id602', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514984588;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('rsmdphd3llt5shceo36cot48sgp2agb0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514351728;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('rt3nf0uhh0ms419fjpq5a9crger1mof7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516374868;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('s0p1j724flrc8c8peo26oblkm260olge', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515039297;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('s1ql2jqvmnbqnb1hjtieoqu3mui2qekm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516366221;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('s35te4dvhjrk1pq048oms2ju4uoc368u', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514965896;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('s48tfe3lu3ubduraordqd8u4n02v2kl5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514880179;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('s7s9q51qs65v7b0uaki4jfq079o8581g', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514883669;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('s8hq29jp8kqqjtjg82jvp4vi4b2275io', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515243894;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('sfbaqd4a2io1efqdetjroqbvq7m9vkkj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515029130;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('sfoti0une9qj5nociboldgfv7t164fjs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516282899;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('sfs5f712ber5q6skb7vm8gdll7i18k8f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516205529;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('siv3amner202k3manavh2gg013nrbuf2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515173074;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('sj5r6bode4hrcjj11p3q8sfkotnev8mc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515038092;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('skco1rb92a3s5vqtcl2971s9a0csvblq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515245483;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('smbsf8g934e3a5pknbibub5gbl0b8hlk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515174977;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('smfka4hricb9vgdvdnqc7vmejoe9n1ra', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515310796;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('smum7b0gdh8orfhj1qgg1pmgt3pjifbh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515051357;'),
('snbcv54mo142hsthvmncrn183mfm2j58', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515044837;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ssekrdodvtvnes3fapskjg9g12qh10b7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514977514;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('st3jrge9s4ekisgcifbicmmgnjeda4r5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515152509;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('t2k4dunmhv6t8vkkq3hpaf1nkr47icvt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516371317;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('t3eq6a7t2m0g82jvk2srv9qigcdjinth', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515003324;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('t4h75jaivarvihqdt436ct6veb29di92', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516345190;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('tc6lfs1jpj87gl22q6uj5afrrtcl4avs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516362831;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('tcrdnis4sr74rnnjbfo4vajhp72al0vn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515310319;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('tct3cagv59l8j7ua36eq9kusqmlphl7f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516372931;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('tf407a7cnl75ppccf375cpupg9rs89bq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516209028;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ti5mmoqaanuj087gn9gvga01imm06pq1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515238126;'),
('tjfqc4q6fpqv8d2qtpr4pepusmlpcjnv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516358031;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('tjsb1m3vm8cmdhlq8uqc6b9fbsojobo8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516211802;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('to7u1opot915nsij4tfp0fpvl7um8pbr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514981934;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('tp08bm47c08ck7qf5e5aqfs6anjcifqi', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515141175;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('tq9ikovfosmsvn1siuso5dvptv88htlr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514976498;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('tretnu0vothffmk39v9rhvh4kdm4ldks', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516366589;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('ttbt6h4cq40p5ln09kgf3o47g86g2mft', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159635;'),
('u0vuffdb4if5gaps4veiono1namkkb99', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516192801;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('u102r0tc7lar2hq8fq3esrviisdngfje', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515261425;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('u80b0nh4hqohhhbsueh0fn1jnfa6r8sn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516203518;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ua439ena5gghfmncg330lvn9n5tnisnr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515147746;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ub7kadde6ecc83g9o241i0pocofvcv2h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516373785;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('uc6hht790n2qo04tcd1i250meeekbas5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515027948;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('uepu8u3uo20902dolts5akb52nhmn98h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516359534;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('uh046065fnpmr600vjt8i7r6bq53649u', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516195138;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('ui7j9ft8phm1m3t5uj008o7qnh9pr0cq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515258236;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('uj3ndfce0sk1ltv9b5vr68qpbl3eated', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514998049;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ujko4j6cspgrv9h3mm1b8d22bkm706q9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514954560;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('ujn95pm6thtslcm7ojg9l7jus5rbuimd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515038761;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('umrkcgt8fidlm9qcdbde5a8q4tugprt6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515133461;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('uphola6ge012tcorc9ajelm5okc62g26', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516342858;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('uq6dp27icq2v2f4tpetboirdtpmr5iu1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515083043;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('usebpeo5bnnv5v4sp99do4df88nluu3j', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515137012;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('v0u21lrtfnoh2eoqlpuhdemedlumm5i5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516374544;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('v2jvvmkoa4j9eplkpm3bt5maaf7lm02e', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515000670;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('v6krn3mofd3hf5q3hk1odnuvdac1g1s0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516210013;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('vavjakm83989aib5nbtvmvde9do28gmt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516339013;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('vclvdqvpbl200jdk5dlqp0md2i2tr6sb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515311567;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('vdjb1ilh76m7jbqk8jm3sirgpgts2hvj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515148540;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('vj8og4gt3tfsm93r8ubp5fsftdomtra7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516346446;data|a:5:{s:8:\"username\";s:5:\"admin\";s:9:\"FirstName\";s:4:\"cloy\";s:8:\"LastName\";s:7:\"delgado\";s:8:\"usertype\";s:5:\"admin\";s:2:\"id\";s:1:\"1\";}'),
('vjpccnc3lnf0osv1tt1siii45okjbgu1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516286618;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('vn4bbu5sme10kqel5halg5qraugq36nj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1516190678;data|a:5:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";s:2:\"id\";s:1:\"2\";}'),
('voj9jdgo2tar2tdtj6lf2g0eluampkt3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514966672;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('vpgi2o3dl7nm8rkqhrn49cdg6arr11nf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515256507;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('vs58902o218ukqji7km81kv3947ud09d', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515081388;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}'),
('vslcf891m7u0n8rn9pe32g77hkrjncqg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515037280;data|a:4:{s:8:\"username\";s:13:\"adminpeg12345\";s:9:\"firstname\";s:9:\"Mary Jane\";s:8:\"lastname\";s:8:\"Cabiasan\";s:8:\"usertype\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `home_owner_id` int(11) NOT NULL,
  `monthly_dues` double NOT NULL,
  `water_bills_dues` double NOT NULL,
  `total_reservation_dues` double NOT NULL,
  `penalty` double NOT NULL,
  `total` double NOT NULL,
  `remarks` text NOT NULL,
  `date_issued` datetime NOT NULL,
  `payment_method` enum('cash','check') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `home_owner_id`, `monthly_dues`, `water_bills_dues`, `total_reservation_dues`, `penalty`, `total`, `remarks`, `date_issued`, `payment_method`) VALUES
(1, 3, 300, 400, 500, 600, 1800, 'ok.', '2018-01-25 00:00:00', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `usermanagement`
--

CREATE TABLE `usermanagement` (
  `Id` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `mobile_number` varchar(11) DEFAULT NULL,
  `account_type` enum('homeowner','admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `username`, `password`, `FirstName`, `middle_name`, `LastName`, `mobile_number`, `account_type`, `created_at`, `deleted_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'cloy', 'colina', 'delgado', '', 'admin', '2018-01-18 16:00:00', NULL),
(2, 'homeowner', 'b6293b7f1cbf05412e329b6badbcc646', 'danica', 'brizo', 'cadampog', '', 'homeowner', '2018-01-19 05:54:34', NULL),
(3, 'adriandy', '8c4205ec33d8f6caeaaaa0c10a14138c', 'adrian kim', 'bernales', 'dy', '09151234567', 'homeowner', '0000-00-00 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `announcments`
--
ALTER TABLE `announcments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `del`
--
ALTER TABLE `del`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `dues`
--
ALTER TABLE `dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_invites`
--
ALTER TABLE `event_invites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homeowners`
--
ALTER TABLE `homeowners`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obod`
--
ALTER TABLE `obod`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pueblo_dues`
--
ALTER TABLE `pueblo_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermanagement`
--
ALTER TABLE `usermanagement`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `announcments`
--
ALTER TABLE `announcments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `del`
--
ALTER TABLE `del`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dues`
--
ALTER TABLE `dues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `event_invites`
--
ALTER TABLE `event_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `homeowners`
--
ALTER TABLE `homeowners`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `obod`
--
ALTER TABLE `obod`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pueblo_dues`
--
ALTER TABLE `pueblo_dues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usermanagement`
--
ALTER TABLE `usermanagement`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
