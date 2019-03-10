-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2018 at 10:22 AM
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
(1, '2018-02-23', '13:07:00', 'Meetings', NULL, 'hehehehehehe', '2018-02-13 15:28:35');

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
(2, 1, 'Announcement Homeowners: \r\n"Halloween Party 2016" October 29, Saturday @5pm - Clubhouse area\r\nRegistration : P150 inclusive of food, games, prizes, trick or treat, fun show and recreational activities\r\nWEAR YOUR BEST COSTUMES and win prizes!!! \r\nlook for Ms. Jane @ PEGHAI office for reservation/registration.', '2018-02-13 14:57:56');

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
(19, 1200, 0, NULL, 'paid', '2018-01-01', 21, 28, 'new'),
(20, 1200, 0, NULL, 'unpaid', '2018-01-01', 14, 29, 'new'),
(21, 1200, 0, NULL, 'unpaid', '2018-01-01', 22, 30, 'new'),
(22, 1200, 0, NULL, 'unpaid', '2018-01-01', 20, 31, 'new'),
(23, 1200, 0, NULL, 'unpaid', '2018-01-01', 19, 32, 'new'),
(24, 1200, 0, NULL, 'unpaid', '2018-01-01', 18, 33, 'new'),
(25, 1200, 0, NULL, 'unpaid', '2018-01-01', 2, 34, 'new'),
(26, 1200, 0, NULL, 'unpaid', '2018-01-01', 2, 35, 'new'),
(27, 1200, 0, NULL, 'paid', '2018-02-01', 21, 28, 'new'),
(28, 1200, 0, NULL, 'paid', '2018-02-01', 14, 29, 'new'),
(29, 1200, 0, NULL, 'unpaid', '2018-02-01', 22, 30, 'new'),
(30, 1200, 0, NULL, 'unpaid', '2018-02-01', 20, 31, 'new'),
(31, 1200, 0, NULL, 'unpaid', '2018-02-01', 19, 32, 'new'),
(32, 1200, 0, NULL, 'unpaid', '2018-02-01', 18, 33, 'new'),
(33, 1200, 0, NULL, 'unpaid', '2018-02-01', 2, 34, 'new'),
(34, 1200, 0, NULL, 'unpaid', '2018-02-01', 2, 35, 'new'),
(35, 1200, 0, NULL, 'unpaid', '2018-03-01', 21, 28, 'new'),
(36, 1200, 0, NULL, 'unpaid', '2018-03-01', 14, 29, 'new'),
(37, 1200, 0, NULL, 'unpaid', '2018-03-01', 22, 30, 'new'),
(38, 1200, 0, NULL, 'unpaid', '2018-03-01', 20, 31, 'new'),
(39, 1200, 0, NULL, 'unpaid', '2018-03-01', 19, 32, 'new'),
(40, 1200, 0, NULL, 'unpaid', '2018-03-01', 18, 33, 'new'),
(41, 1200, 0, NULL, 'unpaid', '2018-03-01', 2, 34, 'new'),
(42, 1200, 0, NULL, 'unpaid', '2018-03-01', 2, 35, 'new'),
(43, 1200, 0, NULL, 'unpaid', '2018-04-01', 21, 28, 'new'),
(44, 1200, 0, NULL, 'unpaid', '2018-04-01', 14, 29, 'new'),
(45, 1200, 0, NULL, 'unpaid', '2018-04-01', 22, 30, 'new'),
(46, 1200, 0, NULL, 'unpaid', '2018-04-01', 20, 31, 'new'),
(47, 1200, 0, NULL, 'unpaid', '2018-04-01', 19, 32, 'new'),
(48, 1200, 0, NULL, 'unpaid', '2018-04-01', 18, 33, 'new'),
(49, 1200, 0, NULL, 'unpaid', '2018-04-01', 2, 34, 'new'),
(50, 1200, 0, NULL, 'unpaid', '2018-04-01', 2, 35, 'new');

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
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dues`
--

INSERT INTO `dues` (`id`, `name`, `created_at`, `deleted_at`) VALUES
(1, 'Parking fees', '0000-00-00 00:00:00', NULL),
(2, 'Garbage', '0000-00-00 00:00:00', NULL),
(3, 'water bills', '0000-00-00 00:00:00', NULL);

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

--
-- Dumping data for table `due_receipt`
--

INSERT INTO `due_receipt` (`id`, `due_type_id`, `total`, `month`) VALUES
(3, 2, 500, '2018-01-13 00:00:00');

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
(1, 'Defense', '2018-02-14', '12:00:00', 'Ok', 'USC', 'ongoing', NULL),
(2, 'SAMPLE EVENT', '2018-02-15', '13:00:00', ':(', 'BLANCOS HOUSE', 'ongoing', NULL);

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
(1, 1, 14, 'invited'),
(2, 1, 2, 'going'),
(3, 2, 21, 'going');

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
(1, 'SAMPLE  FORMAT  FOR  A  FINANCIAL  REPORT\n\n(Name of Private Organization)\nP.O. Box 1234\nFort Excellence, GA  12345-6789\n\nFINANCIAL REPORT\nFor the Month of August 2003\n\nOperating Funds Available as of 1 August 2003						$  2,514.33\nOPERATING FUNDS:\n\n	Change Fund					    146.00\n	Decorations				            72.00\n	1st VP (Luncheons)			           380.38\n	1st VP (Programs)			           2.51\n	Membership				     72.50\n	Ways & Means (Consignment)	$     183.20\n	Ways & Means					$     558.85\nTotal Operating Income			$  1,415.44\n\nOPERATING EXPENSES:\n\n	Child Care					        $       28.00\n	Entertainment					$     146.00\n	Decorations					$       57.23\n	1st VP (Luncheons)				$     409.47\n	Historian					        $       55.94\n	Membership					$     288.32\n	Newsletter					        $       61.42\n	Recording Secretary		        $       25.26\n	Ways & Means (Consignment)	$     309.88\nTotal Operating Expense			$  1,381.59\n\nOperating Funds Available as of 31 August 2003				                      $  2,548.18\n\n\nSubmitted by:				Verified by:\n\n\nMary Jane Cabiasan\nSubdivision Admin\n\n\n', '2018-01-13'),
(2, 'userfinancialreport', '2018-02-13');

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
(1, 10.368659, 123.986272, 'images/fireplace.png', 5, NULL, 90, 45, 'rabonella'),
(2, 10.37037, 123.983818, 'images/rabonella.jpg', 3, NULL, 4, 10, 'rabonella'),
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
(19, 10.369341, 123.985099, 'images/monda.jpg', 122, NULL, 12, 12, 'quinta'),
(20, 10.369237, 123.985047, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(21, 10.369125, 123.984996, 'images/monda.jpg', 23, NULL, 23, 23, 'monda'),
(22, 10.369062, 123.985074, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(23, 10.368932, 123.985196, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(24, 10.368879, 123.985277, 'images/rabonella.jpg', 34, NULL, 34, 23, 'marbella'),
(25, 10.368838, 123.985377, 'images/monda.jpg', 2, NULL, 45, 12, 'marbella'),
(26, 10.368924, 123.985443, 'images/quinta.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(27, 10.369, 123.985475, 'images/monda.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(28, 10.369041, 123.985492, 'images/marbella.jpg', 45, 21, 34, 10, 'rabonella'),
(29, 10.369074, 123.985511, 'images/monda.jpg', 10, 14, 23, 34, 'monda'),
(30, 10.368993, 123.985652, 'images/quinta.jpg', 67, 22, 12, 34, 'monda'),
(31, 10.368908, 123.98561, 'images/monda.jpg', 78, 20, 78, 78, 'quinta'),
(32, 10.368781, 123.985566, 'images/marbella.jpg', 56, 19, 90, 34, 'rabonella'),
(33, 10.368815, 123.985663, 'images/monda.jpg', 56, 18, 12, 45, 'monda'),
(34, 10.368848, 123.985746, 'images/rabonella.jpg', 40, 2, 60, 50, 'marbella'),
(35, 10.36887, 123.985888, 'images/monda.jpg', 100, 2, 32, 45, 'marbella'),
(36, 10.368541, 123.985448, 'images/rabonella.jpg', 0, NULL, NULL, NULL, 'rabonella'),
(37, 10.368376, 123.985375, 'images/monda.jpg', 60, NULL, 50, 40, 'marbella'),
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
(1, '1. Garbage \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n', '2018-02-13 10:48:06', '2018'),
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
(1, 'Clubhouse', 200),
(2, 'Sound Sytem', 100);

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
(1, 'Some were also annoyed the club publicly said it had consulted residents, but none recalled being made aware of the proposal before the council sent them copies of the application.\r\n\r\nMembers of the Wingatui Community Hall Society said they supported the club but the subdivision would have a major physical effect on the area.\r\n\r\nWhile it said it wanted capital, the club''s desire to sell off bits of its land was clearly to keep itself afloat and was simply ''''delaying the inevitable'''', their submission said.\r\n\r\nIt should combine with the Forbury Park Trotting Club, sooner rather than later, and the council should decline the application on the basis of protecting the district plan''s integrity, the society''s submission said.', 'concerns/suggestions', 2, 1, 'read', '2018-02-13 18:39:03'),
(2, 'SURE OI', 'complaint', 1, 2, 'read', '2018-02-14 06:37:05'),
(3, 'huhuhuhuhuhuh daghana pa', 'concerns/suggestions', 2, 1, 'read', '2018-02-13 18:29:23'),
(4, 'Whats up?', 'concerns/suggestions', 18, 1, 'read', '2018-02-13 18:52:33'),
(5, 'hey', 'concerns/suggestions', 21, 1, 'read', '2018-02-13 18:52:33'),
(6, 'HEHEHEHEHEHEHEHE', 'complaint', 1, 18, 'unread', '2018-02-13 19:00:38'),
(7, 'k', 'noticeOFviolation', 1, 21, 'read', '2018-02-13 19:04:28'),
(8, 'Hahaha', 'noticeOFviolation', 1, 21, 'read', '2018-02-13 19:17:03');

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

-- --------------------------------------------------------

--
-- Table structure for table `minutes_attendees`
--

CREATE TABLE `minutes_attendees` (
  `id` int(11) NOT NULL,
  `minutes_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` int(11) NOT NULL,
  `president` int(11) NOT NULL,
  `vice` int(11) NOT NULL,
  `treasurer` int(11) NOT NULL,
  `auditor` int(11) NOT NULL,
  `pro` int(11) NOT NULL,
  `enforcer` int(11) NOT NULL,
  `board1` int(11) NOT NULL,
  `board2` int(11) NOT NULL,
  `board3` int(11) NOT NULL,
  `board4` int(11) NOT NULL,
  `board5` int(11) NOT NULL,
  `board6` int(11) NOT NULL,
  `board7` int(11) NOT NULL,
  `officer_type` enum('peghai','pegyo') NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `name`, `created_at`, `deleted_at`) VALUES
(2, 'membership', '2018-02-13 14:34:55', NULL);

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
(1, 'new assessment for march', '2018-02-22', '13:00:00', 'remind me', 'complete', NULL);

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

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Id`, `homeowners_id`, `name`, `title`, `reserve_date`, `start_time`, `end_time`, `total_hours`, `equipments`, `total_price`, `contact_num`, `approval_status`, `is_Deleted`, `date_send`, `house_id`, `status`, `notification_status`) VALUES
(1, 21, 'April Marie Andrande Ramos', 'Cloie''s Birthday Party', '2018-02-23', '13:00:00', '14:00:00', 1, 'Clubhouse Sound ', 300, 2147483647, 1, 0, '2018-02-13 16:03:37', 28, 'paid', 'seen'),
(2, 2, 'Danica Brizo Cadampog', 'sample event', '2018-02-15', '13:00:00', '15:00:00', 2, 'Clubhouse Sound ', 600, 2147483647, 1, 0, '2018-02-14 07:01:56', 35, 'unpaid', 'seen'),
(5, 2, 'Danica Cadampog', 'debut', '2018-02-21', '01:00:00', '03:00:00', 2, 'Clubhouse ', 400, 922235522, 0, 0, '2018-02-14 07:25:42', 35, 'unpaid', 'seen'),
(6, 2, 'Danica Cadampog', 'asdasdas', '2018-02-22', '13:00:00', '15:01:00', 2, 'Clubhouse ', 400, 2147483647, 1, 0, '2018-02-14 07:37:20', 34, 'unpaid', 'seen');

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

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `assessment_id`, `amount_paid`, `amount_to_be_paid`, `payment_type`, `payment_date`, `type`) VALUES
(1, 27, 1500, 1400, 'cash', '2018-02-14 12:05:29', 'monthly'),
(2, 27, 250, 224, 'cash', '2018-02-14 12:06:24', 'water'),
(3, 1, 300, 300, 'cash', '2018-02-14 12:06:40', 'reservation'),
(4, 28, 1400, 1400, 'cash', '2018-02-14 02:09:46', 'monthly'),
(5, 19, 1344, 1344, 'cash', '2018-02-14 03:55:34', 'monthly');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `username`, `password`, `FirstName`, `middle_name`, `LastName`, `mobile_number`, `account_type`, `created_at`, `deleted_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'cloy', 'colina', 'delgado', '09154567891', 'admin', '2018-02-13 17:39:22', NULL),
(2, 'homeowner', 'b6293b7f1cbf05412e329b6badbcc646', 'Danica', 'Brizo', 'Cadampog', '09231123795', 'homeowner', '2018-02-13 13:40:21', NULL),
(13, NULL, NULL, 'Siegred', 'Saballa', 'Blanco', '09456372833', 'homeowner', '2018-02-13 13:57:12', '2018-02-13 09:57:12'),
(14, 'camota', '23d899aff729f58631b80c24e615226f', 'Christine Joy', 'Sorono', 'Camota', '09236231723', 'homeowner', '2018-02-13 15:38:45', NULL),
(15, NULL, NULL, 'sdsd', 'sd', 'sdsd', '4334', 'homeowner', '2018-02-13 14:00:45', '2018-02-13 10:00:45'),
(16, 'adminadmin', 'f6fdffe48c908deb0f4c3bd36c032e72', 'Althea', 'Brizo', 'Cadampog', '0934627312', 'admin', '2018-02-13 15:35:03', NULL),
(17, 'admin123', '0192023a7bbd73250516f069df18b500', 'Wenella', 'Sorono', 'Camota', '5373482323', 'admin', '2018-02-13 15:38:24', NULL),
(18, 'siegred', '4dab0ba410932bb82807d28040d690a2', 'Siegred', 'Saballa', 'Blanco', '99283982938', 'homeowner', '2018-02-13 18:46:45', NULL),
(19, NULL, NULL, 'Clarence', 'Sorono', 'Camota', '09237239233', 'homeowner', '2018-02-13 15:54:38', NULL),
(20, NULL, NULL, 'Vanessa', 'Ecoling', 'Brizo', '34838494383', 'homeowner', '2018-02-13 15:54:58', NULL),
(21, 'april', '37d153a06c79e99e4de5889dbe2e7c57', 'April Marie', 'Andrande', 'Ramos', '02392323232', 'homeowner', '2018-02-13 18:49:25', NULL),
(22, 'merwin', '22661473c6965459537599d7dd83d70f', 'Merwin', 'Gay', 'De Gracia', '9383984934', 'homeowner', '2018-02-13 18:48:44', NULL);

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
(1, 0, '2018-01-01', 19, 11, 'unpaid'),
(2, 0, '2018-01-01', 21, 12, 'unpaid'),
(3, 0, '2018-01-01', 24, 2, 'unpaid'),
(4, 0, '2018-01-01', 25, 11, 'unpaid'),
(5, 0, '2018-01-01', 32, 6, 'unpaid'),
(6, 0, '2018-01-01', 33, 3, 'unpaid'),
(7, 0, '2018-01-01', 34, 3, 'unpaid'),
(8, 0, '2018-01-01', 35, 2, 'unpaid'),
(9, 0, '2018-01-01', 37, 5, 'unpaid'),
(10, 0, '2018-01-01', 19, 11, 'unpaid'),
(11, 0, '2018-01-01', 21, 12, 'unpaid'),
(12, 0, '2018-01-01', 24, 2, 'unpaid'),
(13, 0, '2018-01-01', 25, 11, 'unpaid'),
(14, 0, '2018-01-01', 32, 6, 'unpaid'),
(15, 0, '2018-01-01', 33, 3, 'unpaid'),
(16, 0, '2018-01-01', 34, 3, 'unpaid'),
(17, 0, '2018-01-01', 35, 2, 'unpaid'),
(18, 0, '2018-01-01', 37, 5, 'unpaid'),
(19, 0, '2018-01-01', 28, 21, 'unpaid'),
(20, 0, '2018-01-01', 29, 14, 'unpaid'),
(21, 0, '2018-01-01', 30, 22, 'unpaid'),
(22, 0, '2018-01-01', 31, 20, 'unpaid'),
(23, 0, '2018-01-01', 32, 19, 'unpaid'),
(24, 0, '2018-01-01', 33, 18, 'unpaid'),
(25, 0, '2018-01-01', 34, 2, 'unpaid'),
(26, 0, '2018-01-01', 35, 2, 'unpaid'),
(27, 200, '2018-02-01', 28, 21, 'paid'),
(28, 0, '2018-02-01', 29, 14, 'unpaid'),
(29, 0, '2018-02-01', 30, 22, 'unpaid'),
(30, 0, '2018-02-01', 31, 20, 'unpaid'),
(31, 0, '2018-02-01', 32, 19, 'unpaid'),
(32, 0, '2018-02-01', 33, 18, 'unpaid'),
(33, 0, '2018-02-01', 34, 2, 'unpaid'),
(34, 0, '2018-02-01', 35, 2, 'unpaid'),
(35, 0, '2018-03-01', 28, 21, 'unpaid'),
(36, 0, '2018-03-01', 29, 14, 'unpaid'),
(37, 0, '2018-03-01', 30, 22, 'unpaid'),
(38, 0, '2018-03-01', 31, 20, 'unpaid'),
(39, 0, '2018-03-01', 32, 19, 'unpaid'),
(40, 0, '2018-03-01', 33, 18, 'unpaid'),
(41, 0, '2018-03-01', 34, 2, 'unpaid'),
(42, 0, '2018-03-01', 35, 2, 'unpaid'),
(43, 0, '2018-04-01', 28, 21, 'unpaid'),
(44, 0, '2018-04-01', 29, 14, 'unpaid'),
(45, 0, '2018-04-01', 30, 22, 'unpaid'),
(46, 0, '2018-04-01', 31, 20, 'unpaid'),
(47, 0, '2018-04-01', 32, 19, 'unpaid'),
(48, 0, '2018-04-01', 33, 18, 'unpaid'),
(49, 0, '2018-04-01', 34, 2, 'unpaid'),
(50, 0, '2018-04-01', 35, 2, 'unpaid');

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `announcments`
--
ALTER TABLE `announcments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `del`
--
ALTER TABLE `del`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dues`
--
ALTER TABLE `dues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `due_receipt`
--
ALTER TABLE `due_receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event_invites`
--
ALTER TABLE `event_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `minutes`
--
ALTER TABLE `minutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `minutes_attendees`
--
ALTER TABLE `minutes_attendees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `obod`
--
ALTER TABLE `obod`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pueblo_dues`
--
ALTER TABLE `pueblo_dues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `water_bill`
--
ALTER TABLE `water_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
