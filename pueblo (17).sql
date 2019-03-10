-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2018 at 05:19 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `agendas`
--

CREATE TABLE `agendas` (
  `Id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `event` varchar(255) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `remark` varchar(255) NOT NULL DEFAULT 'No Remarks.',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agendas`
--

INSERT INTO `agendas` (`Id`, `date`, `time`, `event`, `deleted_at`, `remark`, `date_created`) VALUES
(1, '2018-02-23', '13:07:00', 'Meetings', NULL, 'bod only', '2018-02-13 15:28:35'),
(2, '2018-02-24', '12:00:00', 'Meeting', '2018-02-16 10:22:10', 'christmas party', '2018-02-16 14:21:58'),
(3, '2018-02-23', '01:00:00', 'Meetings', NULL, 'Board meeting', '2018-02-16 14:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `announcments`
--

CREATE TABLE `announcments` (
  `Id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `Text` text NOT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcments`
--

INSERT INTO `announcments` (`Id`, `admin_id`, `Text`, `Date_Created`) VALUES
(1, 1, 'Please come and support our first "FOOD FESTIVAL WEEKEND" this coming November 6, Sunday. \r\nOpen hours 8am to 10am(before & after mass) & 3pm to 6pm. \r\nLet''s BUY - EAT & CELEBRATE! Its more fun eating in Pueblo El Grande', '2018-02-13 14:57:39'),
(2, 1, 'Announcement Homeowners: \r\n"Halloween Party 2016" October 29, Saturday @5pm - Clubhouse area\r\nRegistration : P150 inclusive of food, games, prizes, trick or treat, fun show and recreational activities\r\nWEAR YOUR BEST COSTUMES and win prizes!!! \r\nlook for Ms. Jane @ PEGHAI office for reservation/registration.', '2018-02-13 14:57:56'),
(4, 1, 'Scheduled water service interruption due to alteration of pipeline \r\nat Tayud, Consolacion. \r\nPlease store enough water for the duration of the interruption.\r\nDATE & TIME: Tuesday, Feb. 20, 2018, 8:00 p.m. to Wednesday, Feb. 21, 2018, \r\n5:00 a.m. (9 hours)\r\n', '2018-02-16 14:07:46'),
(5, 1, 'There will be a gathering in the clubhouse!', '2018-02-16 14:12:31'),
(6, 1, 'Scheduled water service interruption due to alteration of pipeline \r\nat Tayud, Consolacion. \r\nPlease store enough water for the duration of the interruption.\r\nDATE & TIME: Tuesday, Feb. 20, 2018, 8:00 p.m. to Wednesday, Feb. 21, 2018, \r\n5:00 a.m. (9 hours)', '2018-02-16 14:31:09'),
(8, 1, 'defense', '2018-02-17 03:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `id` int(11) NOT NULL,
  `monthly_dues` double DEFAULT '1200',
  `penalty` float NOT NULL DEFAULT '0',
  `surcharges` float DEFAULT NULL,
  `status` enum('paid','unpaid') NOT NULL,
  `date_issued` date NOT NULL,
  `home_owner_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `notification_status` enum('new','seen') NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`id`, `monthly_dues`, `penalty`, `surcharges`, `status`, `date_issued`, `home_owner_id`, `house_id`, `notification_status`) VALUES
(138, 1200, 0, NULL, 'unpaid', '2018-01-01', 25, 35, 'new');

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

-- --------------------------------------------------------

--
-- Table structure for table `dues`
--

CREATE TABLE `dues` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dues`
--

INSERT INTO `dues` (`id`, `name`, `created_at`, `deleted_at`) VALUES
(8, 'Guard Salary', '2018-02-01 11:24:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `due_receipt`
--

CREATE TABLE `due_receipt` (
  `id` int(11) NOT NULL,
  `due_type_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `month` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Defense', '2018-02-14', '12:00:00', 'Ok', 'USC', 'complete', NULL),
(4, 'capstone defense', '2018-02-14', '12:00:00', 'Goodluck', 'bunzel', 'complete', NULL),
(5, 'Christmas Party', '2018-02-16', '00:00:00', 'Ok', 'clubhouse', 'ongoing', NULL);

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
(6, 4, 25, 'invited'),
(7, 4, 26, 'going'),
(8, 5, 26, 'invited'),
(9, 5, 27, 'invited'),
(10, 5, 25, 'going');

-- --------------------------------------------------------

--
-- Table structure for table `financial`
--

CREATE TABLE `financial` (
  `id` int(11) NOT NULL,
  `report` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financial`
--

INSERT INTO `financial` (`id`, `report`, `date`) VALUES
(1, 'FINANCIAL REPORT FOR THE MONTH OF JANUARY', '2018-01-13'),
(2, 'PUEBLO EL GRANDE FINANCIAL REPORT\nTayud Consolacion, Cebu  12345-6789\nFINANCIAL REPORT\nFor the Month of February 2018\n\nOperating Funds Available as of February 1          P  170,000\nOPERATING FUNDS:\n\n	Change Fund					  P  146.00\n	Decorations				           P 72.00\n	1st VP (Luncheons)			           P  380.38\n	1st VP (Programs)			           P  2.51\n	Membership				          P 72.50\n	Ways & Means (Consignment)	   P 183.20\n	Ways & Means					   P 558.85\nTotal Operating Income			   P 1,415.44\n\nOPERATING EXPENSES:\n\n	Child Care					         P       28.00\n	Entertainment					 P     146.00\n	Decorations					 P       57.23\n	1st VP (Luncheons)				P     409.47\n	Historian					        P      55.94\n	Membership					 P    288.32\n	Newsletter					        P       61.42\n	Recording Secretary		        P      25.26\n	Ways & Means (Consignment)	 P     309.88\nTotal Operating Expense			 P     1,381.59\n\nOperating Funds Available as of 17 February	  P  2,548.18\n\n\nSubmitted by:				Verified by:\n\nMary Jane Cabiasan\nSubdivision Admin\n\n\n', '2018-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `house_image` text NOT NULL,
  `lot` int(11) DEFAULT NULL,
  `home_owner` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `phase` int(11) DEFAULT NULL,
  `model` enum('rabonella','marbella','quinta','monda') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `lat`, `lng`, `house_image`, `lot`, `home_owner`, `block`, `phase`, `model`) VALUES
(2, 10.37037, 123.983818, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(3, 10.370419, 123.984012, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(4, 10.370404, 123.984144, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(5, 10.370308, 123.984296, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(6, 10.370233, 123.984398, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(7, 10.370212, 123.984448, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(8, 10.370158, 123.984527, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(9, 10.370127, 123.984611, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(10, 10.370053, 123.98472, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(11, 10.369988, 123.984836, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(12, 10.369915, 123.984938, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(13, 10.369846, 123.984981, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(14, 10.369805, 123.985014, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(15, 10.369744, 123.985074, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(16, 10.369671, 123.985133, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(17, 10.369521, 123.985184, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(18, 10.369441, 123.985143, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(19, 10.369341, 123.985099, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(20, 10.369237, 123.985047, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(21, 10.369125, 123.984996, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(22, 10.369062, 123.985074, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(23, 10.368932, 123.985196, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(24, 10.368879, 123.985277, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(25, 10.368838, 123.985377, 'images/monda.jpg', 20, 26, 20, 40, 'rabonella'),
(26, 10.368924, 123.985443, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(27, 10.369, 123.985475, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(28, 10.369041, 123.985492, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(29, 10.369074, 123.985511, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(30, 10.368993, 123.985652, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(31, 10.368908, 123.98561, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(32, 10.368781, 123.985566, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(33, 10.368815, 123.985663, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(34, 10.368848, 123.985746, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(35, 10.36887, 123.985888, 'images/monda.jpg', 12, 25, 12, 12, 'monda'),
(36, 10.368541, 123.985448, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(37, 10.368376, 123.985375, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(38, 10.368439, 123.985299, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(39, 10.368592, 123.985258, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(40, 10.368576, 123.984907, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(41, 10.368694, 123.984995, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(42, 10.368785, 123.985045, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(43, 10.368688, 123.984772, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(44, 10.36882, 123.98486, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(45, 10.368912, 123.984809, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(46, 10.368834, 123.984759, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(47, 10.368735, 123.984694, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(48, 10.368607, 123.984573, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(49, 10.368748, 123.984444, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(50, 10.368934, 123.984312, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(51, 10.369039, 123.984239, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(52, 10.369074, 123.984206, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(53, 10.369149, 123.984152, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(54, 10.369218, 123.984093, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(55, 10.369291, 123.984041, 'images/monda.jpg"', 0, NULL, NULL, NULL, 'rabonella'),
(56, 10.369358, 123.983997, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(57, 10.369398, 123.983968, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(58, 10.369471, 123.983912, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(59, 10.369474, 123.98391, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(60, 10.36955, 123.983863, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(61, 10.369627, 123.983824, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(62, 10.369759, 123.983807, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(63, 10.369867, 123.983802, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(64, 10.369929, 123.983797, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(65, 10.369985, 123.983796, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(66, 10.370065, 123.983801, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(67, 10.370195, 123.983823, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(68, 10.370045, 123.9844, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(69, 10.369977, 123.984519, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(70, 10.369948, 123.984557, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(71, 10.369904, 123.984632, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(72, 10.369853, 123.984722, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(73, 10.369745, 123.984855, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(74, 10.369651, 123.984901, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(75, 10.36956, 123.984976, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(76, 10.369457, 123.984905, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(77, 10.369553, 123.984832, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(78, 10.369632, 123.98479, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(79, 10.369698, 123.98473, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(80, 10.369781, 123.984654, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(81, 10.369833, 123.984558, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(82, 10.36988, 123.984478, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(83, 10.369929, 123.984392, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(84, 10.370195, 123.983823, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(85, 10.369937, 123.98427, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(86, 10.370065, 123.984262, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(87, 10.369827, 123.984292, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(88, 10.369732, 123.984343, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(89, 10.369666, 123.984386, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(90, 10.369612, 123.984437, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(91, 10.369563, 123.984464, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(92, 10.369482, 123.984526, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(93, 10.369414, 123.984577, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(94, 10.369316, 123.984643, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(95, 10.369227, 123.984713, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(96, 10.369172, 123.984799, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(97, 10.36931, 123.984793, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(98, 10.36942, 123.984705, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(99, 10.369485, 123.984647, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(100, 10.369588, 123.984571, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(101, 10.370135, 123.984072, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(102, 10.370024, 123.984074, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(103, 10.369935, 123.984068, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(104, 10.369884, 123.984068, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(105, 10.369806, 123.984071, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(106, 10.369688, 123.984127, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(107, 10.369589, 123.984189, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(108, 10.369517, 123.984235, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(109, 10.369433, 123.984294, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(110, 10.369331, 123.984374, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(111, 10.369214, 123.984456, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(112, 10.369178, 123.984481, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(113, 10.369106, 123.984546, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(114, 10.369016, 123.984615, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(115, 10.368953, 123.984527, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(116, 10.369047, 123.984467, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(117, 10.369119, 123.984411, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(118, 10.369205, 123.984346, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(119, 10.369308, 123.98427, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(120, 10.369375, 123.98421, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(121, 10.36942, 23.984189, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(122, 10.369481, 123.984148, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(123, 10.369592, 123.984076, 'images/marbella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(124, 10.36971, 123.983985, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(125, 10.369832, 123.98397, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(126, 10.369959, 123.983971, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(127, 10.370052, 123.983976, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(128, 10.370205, 123.983964, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `issues` longtext NOT NULL,
  `issue_date` datetime NOT NULL,
  `year` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `issues`, `issue_date`, `year`) VALUES
(1, '1. Garbage \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n2. Parking\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumm.\n\n3. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumm.\n\n\n', '2018-02-13 10:48:06', '2018'),
(2, '1. Garbage \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-02-13 10:48:30', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(6, 'clubhouse', 150),
(7, 'pool', 200),
(8, 'Basketball Court', 100);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `subject` enum('concerns/suggestions','complaint','noticeOFviolation') DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `status` enum('read','unread') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `content`, `subject`, `sender_id`, `recipient_id`, `status`, `created_at`) VALUES
(22, 'hello!', 'noticeOFviolation', 1, 27, 'read', '2018-02-16 16:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `minutes`
--

CREATE TABLE `minutes` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `time_end` time NOT NULL,
  `title` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `summary` text,
  `objectives` text,
  `milestones` text,
  `agenda` text,
  `goals` text,
  `risks` text,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minutes`
--

INSERT INTO `minutes` (`id`, `date`, `time`, `time_end`, `title`, `type`, `summary`, `objectives`, `milestones`, `agenda`, `goals`, `risks`, `deleted_at`) VALUES
(2, '2018-02-24', '13:00:00', '14:00:00', 'board of directors', 'meeting', 'it was good', NULL, 'save', NULL, NULL, 'need to upgrade lights', NULL),
(3, '2018-02-24', '01:00:00', '02:00:00', 'peghai meeting', 'meeting', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `minutes_attendees`
--

CREATE TABLE `minutes_attendees` (
  `id` int(11) NOT NULL,
  `minutes_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minutes_attendees`
--

INSERT INTO `minutes_attendees` (`id`, `minutes_id`, `user_id`) VALUES
(1, 2, 26),
(2, 3, 26);

-- --------------------------------------------------------

--
-- Table structure for table `obod`
--

CREATE TABLE `obod` (
  `Id` int(11) NOT NULL,
  `year` varchar(5) NOT NULL,
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

INSERT INTO `obod` (`Id`, `year`, `bd1`, `bd2`, `bd3`, `bd4`, `bd5`, `bd6`, `bd7`) VALUES
(1, '2018', 'Danica Cadampog', 'Siegred Blanco', 'Siegred Blanco', 'Siegred Blanco', 'Siegred Blanco', 'Siegred Blanco', 'Siegred Blanco'),
(2, '2018', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog');

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` int(11) NOT NULL,
  `president` varchar(20) NOT NULL,
  `secretary` varchar(20) NOT NULL,
  `vice` varchar(20) NOT NULL,
  `treasurer` varchar(20) NOT NULL,
  `auditor` varchar(20) NOT NULL,
  `pro` varchar(20) NOT NULL,
  `enforcer` varchar(20) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`id`, `president`, `secretary`, `vice`, `treasurer`, `auditor`, `pro`, `enforcer`, `year`) VALUES
(4, 'asdas', 'asd', 'asdas', 'zxc', 'as', 'asdasd', 'asd', 2017),
(5, 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 'Danica Cadampog', 2018);

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
(4, 8, 10000, '2018-01-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `name`, `created_at`, `deleted_at`) VALUES
(13, 'Monthly Dues', '2018-02-01 11:22:22', NULL),
(14, 'Water Bills', '2018-02-01 11:22:30', NULL),
(15, 'Reservation', '2018-02-01 11:22:39', NULL),
(16, 'something', '2018-02-01 01:45:44', NULL);

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
  `status` enum('complete','ongoing') NOT NULL DEFAULT 'ongoing',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `reminder_title`, `reminder_date`, `reminder_time`, `reminder_remarks`, `status`, `deleted_at`) VALUES
(5, 'Monthly dues for feb', '2018-02-23', '01:00:00', 'remind me', 'ongoing', NULL);

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
  `is_Deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_send` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `house_id` int(11) NOT NULL,
  `status` enum('paid','unpaid') NOT NULL DEFAULT 'unpaid',
  `notification_status` enum('new','seen','seen_by_homeowner') DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) NOT NULL,
  `amount_paid` float NOT NULL,
  `amount_to_be_paid` float NOT NULL,
  `payment_type` enum('cash','check') NOT NULL,
  `payment_date` datetime NOT NULL,
  `type` enum('monthly','water','reservation') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `FirstName` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `mobile_number` varchar(11) DEFAULT NULL,
  `account_type` enum('homeowner','admin') NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `username`, `password`, `FirstName`, `middle_name`, `LastName`, `mobile_number`, `account_type`, `image`, `created_at`, `deleted_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'cloys', 'delgados', 'delgados', '09154567891', 'admin', 'http://localhost/peg/uploads/22309050_1794857983888689_80765860752596509_n2.jpg', '2018-02-16 15:32:08', NULL),
(25, 'user', '6ad14ba9986e3615423dfca256d04e3f', 'Danica', 'Brizo', 'Cadampog', '09231237952', 'homeowner', NULL, '2018-02-16 13:49:14', NULL),
(29, 'adminadmin', 'f6fdffe48c908deb0f4c3bd36c032e72', 'Admin', 'Admin', 'Admin', '09231434232', 'admin', NULL, '2018-02-17 03:27:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `water_bill`
--

CREATE TABLE `water_bill` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `date_issued` date NOT NULL,
  `house_id` int(11) NOT NULL,
  `home_owner_id` int(11) NOT NULL,
  `status` enum('paid','unpaid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `water_bill`
--

INSERT INTO `water_bill` (`id`, `amount`, `date_issued`, `house_id`, `home_owner_id`, `status`) VALUES
(137, 0, '2018-01-01', 25, 26, 'unpaid'),
(138, 0, '2018-01-01', 35, 25, 'unpaid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `announcments`
--
ALTER TABLE `announcments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `due_receipt`
--
ALTER TABLE `due_receipt`
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
-- Indexes for table `financial`
--
ALTER TABLE `financial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minutes`
--
ALTER TABLE `minutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minutes_attendees`
--
ALTER TABLE `minutes_attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obod`
--
ALTER TABLE `obod`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pueblo_dues`
--
ALTER TABLE `pueblo_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `water_bill`
--
ALTER TABLE `water_bill`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `announcments`
--
ALTER TABLE `announcments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `del`
--
ALTER TABLE `del`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dues`
--
ALTER TABLE `dues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `due_receipt`
--
ALTER TABLE `due_receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `event_invites`
--
ALTER TABLE `event_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `financial`
--
ALTER TABLE `financial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `minutes`
--
ALTER TABLE `minutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `minutes_attendees`
--
ALTER TABLE `minutes_attendees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `obod`
--
ALTER TABLE `obod`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pueblo_dues`
--
ALTER TABLE `pueblo_dues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `water_bill`
--
ALTER TABLE `water_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
