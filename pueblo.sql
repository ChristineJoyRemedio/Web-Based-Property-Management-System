-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2018 at 03:28 PM
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
(2, 'Mary Jane', 'Cabiasan', 'adminpeg12345', '@adminpeg12345');

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
(40, 'Mary Jane', 'Cabiasan', 'CAPSTONEsdsdsdssdsdsafksldjfkjsdfkjsdkjfkdsjfkjsdkjfkjdskfjkdsjfkjsdkfjdskjfjdsfkjsdkjfkdsjfkjdskjfkjsdfkjsdkfjkdsjfkjdskfjsdkjfkjdfjskdjfkjsdfjfsd', '2018-01-09 11:06:54'),
(41, 'Mary Jane', 'Cabiasan', 'CAPSTONEsdsdsdssdsdsafksldjfkjsdfkjsdkjfkdsjfkjsdkjfkjdskfjkdsjfkjsdkfjdskjfjdsfkjsdkjfkdsjfkjdskjfkjsdfkjsdkfjkdsjfkjdskfjsdkjfkjdfjskdjfkjsdfjfsd', '2018-01-10 04:26:14'),
(42, 'Mary Jane', 'Cabiasan', 'shdksjdkjskldjkasjdkjskdsdCAPSTONEsdsdsdssdsdsafksldjfkjsdfkjsdkjfkdsjfkjsdkjfkjdskfjkdsjfkjsdkfjdskjfjdsfkjsdkjfkdsjfkjdskjfkjsdfkjsdkfjkdsjfkjdskfjsdkjfkjdfjskdjfkjsdfjfsd', '2018-01-10 06:37:21');

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
(19, 'Anika Lish', 'Whistle', 1000, 1000, '2018-01-04 07:31:17'),
(20, 'cj', 'nio payas', 3434, 3434, '2018-01-10 04:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `homeowners`
--

CREATE TABLE `homeowners` (
  `Id` int(11) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(24) DEFAULT NULL,
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
(26, NULL, NULL, 'John', 'Doe', 'bla', 'p2', 'b4', 'l2', '1312311231231', '2018-01-05 11:43:30'),
(27, NULL, NULL, 'Cloie', 'Delgado', 'IDK', 'P1', 'b2', 'l3', '093354912', '2018-01-06 09:19:13'),
(28, NULL, NULL, 'Siegred', 'Blanco', 'IDK', 'P1', 'B2', 'L6', '123213124', '2018-01-06 09:36:03'),
(29, NULL, NULL, 'Cj', 'Camotasdasdasda', 'IDK', 'P2', 'B6', 'L12', '12321312423', '2018-01-06 09:37:00'),
(30, NULL, NULL, 'asdasd', 'asdsad', 's', 'sda', 's', 's', '2313131', '2018-01-07 07:55:41'),
(31, NULL, NULL, 'Danica', 'Cadampog', 's', 'sda', 's', 's', '2313131', '2018-01-07 07:56:03'),
(32, NULL, NULL, 'Cj', 'Camota', 'er', 'er', 'er', 'er', '454545', '2018-01-10 04:31:34'),
(33, NULL, NULL, 'Sigred', 'Sigred', 'Sigred', 'Sig', 'Sig', 'Sigr', '9493948398434', '2018-01-10 06:38:10');

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
(6, '2022', 'dasdsa2', 'dasdas', 'da', 'adas', 'asdsa', 'asdsa', 'asdsa', 'sadas', 'sadas', 'dsadsa', 'sadsa', 'sadsad', 'asdsa', 'sadsa', 'sadsada', 'sadas', 'sadsa', 'asdsada', 'sadsa', 'sadsadas', 'sadsa'),
(7, '2025', '', 'r', 'rer', 'er', 'er', 'rer', 'ere', 'wew', 'e', 'ewe', 'we', 'we', 'we', 'we', 'we', 'e', 'ew', 'ew', 'ewe', 'we', 'we'),
(8, '2026', 'djjds', 'cj', 'cj', 'cj', 'cj', 'cj', 'cj', 'jsd', 'jsd', 'jsd', 'jsd', 'jsd', 'jsd', 'jsd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd'),
(9, '', 'sdsd', 'sds', 'sd', 'sdsd', 'sds', 'sdsd', 'sd', 'sdsd', 'sd', 'ds', 'sds', 'dsds', '', 'sdsd', 'sds', 'ddsd', 'sdsd', 'dsd', 'd', 'sdsd', 'sds');

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
(24, 25, 'Danica Cadampog', 'Christmas Party', '2018-01-16', '00:00:00', '02:00:00', 2, 'Pool Clubhouse Sound System Court Tables Chairs', 2700, 343434, 1, '2018-01-09 11:09:21'),
(26, 31, 'Danica Cadampog', 'Christmas PArty', '2018-01-12', '01:00:00', '02:00:00', 1, 'Pool Clubhouse   Tables ', 900, 454545, 1, '2018-01-10 04:30:21'),
(27, 31, 'Danica Cadampog', 'Christmas Party', '2018-01-11', '01:00:00', '03:00:00', 2, ' Clubhouse   Tables Chairs', 1200, 224343434, 1, '2018-01-10 06:45:32'),
(28, 31, 'Danica Cadampog', 'christmas party', '2018-01-10', '01:00:00', '02:00:00', 1, 'Pool Clubhouse   Tables ', 900, 3434, 1, '2018-01-10 14:27:19');

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
('006lv73rs2qmced97ub7bu7edkg3abd8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515030491;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('01im9u5kkvefglhugsa3k3cv7jt0caqj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515133012;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('0690ajjekm8a0g9fe7j46gb39o6s2i48', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515232735;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('07kt96p2rsud1vdlvgd10ajpbh1m05ve', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515594998;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('0anptkamhhsrte18pd0deq4l73th49fs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514873669;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('0bj9fg1coa06g61qt9dov4o2p5dsilep', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515572401;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('0jjhambhhk1pnjubo6plh8jp8n0pq8lh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515050946;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('0kjkt25a1l4np9r19prsmo6d24dg3t3p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515044494;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('0nobkl1u6vp42fn72q2p7nkv8pajeaeg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514878824;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('0pf2d8f0eig2scc6tb8c47d6gf64bt3t', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515170252;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('12pl20j078k1pcg5veq6f9d98n3npf92', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515584516;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('13a9731ke3o11c1svi0qjspm903nqebm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514979917;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('14hkfcma29qtbf9llooghasscoo8qqpt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515565806;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('14io1mspdf7t8ncbde4qe1630cimor83', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515167607;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('15hrb0chhj9g4sqd77bbu6tk29ustrpt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515082542;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('16fvsd6s9cu8j1o0ulf8nbijhtevi75l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514962403;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('16nqdqr6r9pjvk65qt2vmot6puad92e6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515585261;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('17nhrnhm6lamok7ihct70795b19di71i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515255318;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('18ful6lsfk28kjurbbc9sht4oj6bdckt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515000275;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('19s5ie8f97hifvf4or9110fpq3h8vran', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515084953;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('1j9jkdr16r8e42n2ovhb1m5u1ifk6rai', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514965462;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('1l8dvqqkb26kub942iqc7tdisor7fijm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515163986;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('1nrud2u9qfgt1vs04h3738rt1mibgrr5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515579147;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('1rjuk6idc0bagbq5fhjsdfvmfc1qco3e', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515135725;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('1rkapntlsu9iinh40eifkoh9p9g8ccga', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515232404;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('1slvvbjuabqtj7b26pllg7qpl9ki0t44', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514990016;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('1sscvqag25ntk9qida7jqqddv074k0i8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515036145;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('1vlb4st3r4194s0qhr0rnfh5uu4ks56t', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514981516;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('20chfd1u6v28clppbal575smj3p513jo', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514880803;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('22tqit9m637jolojg6ere30l2h545oqv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515577474;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2f3eb7rp63ha1cv15chj9fjgbo6js4h1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515231337;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2gn97s5shr5g0ia21eka7t3lkmbfhplo', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515046145;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2hjka9t9562befloqa06doptdqh9779n', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515168118;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2kfad5fbpb14takl28gnba4su7q709r6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514882165;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2lp6uas0q62fimjej2dbv6t7ptvvetr7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515050644;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2nj80fmlmlqft9moddsuucgvnegodr4d', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514882467;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2q56hh02c80loaaiuf574v7a1rs87lek', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515002724;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2s4j22a20fb3hak7mos1661vpdf1vs9l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515033700;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2tl2bfss3ik127qqcjd6ebfcmi7raf59', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514956882;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2u64vsh7vd280505ktg72geoc8r4r43s', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515142828;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2un4v3eig4emlsa5672dtcgdlm6n9idr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514884316;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('2vr4t8q84isntqratcahenrldc12nll8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514961197;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('30ntknviq2ioah7nelqsiuvhdk2rd01t', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515046460;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('34buhsqnapfp02r72kqvhqtdv8blf2p7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515244851;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('35rvd1m947ef51am7pfqv9e3a69ffikj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515240378;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('3b54ttm4rls7qgee0kqi3ibqq66piqrf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514995894;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('3c7qb47554llphhncrp55bl00utoe73l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514956563;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('3cppo1pj075or4anlf6j2bb5g4itd1eq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514861996;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('3lreaq8haq0m052m55kejp9u8m567lqm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514853303;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('3pbjjq18urhmivnliq9ei1mkqaccl0ma', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515166642;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('3sbnk5nelmhmt51u6t5vtk0fmstsneef', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514984232;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('3tmca0orkleihr6hdilru6a8l3kstnvu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514999154;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('430plgkajo82qk2ju0lejr52i6ndsp55', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515573100;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('4aa7vptc73b13qug64ebbodcs9vqo4i1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515084481;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('4ci0bdn4sp02m3ldo8bst8ioccs54e04', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515587363;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('4hhtqvufabrnvmiot48gfrfuajv78f00', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515574333;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('4igdsdtfjam2jt23fqiqdbe31ki79jjq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514875987;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('4keleuqhkdnlvo0085bgls7qn3p4kk5l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514883268;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('4kshm97t97lj5m3hrtm0hh7fdfdpdhrh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514961639;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('4nnvnvoko1sqp9qbjckgl1ianosn2lpk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514877764;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('5226alfv4rruc7vdemaio8pduqmcrre9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159636;'),
('527ijlh8l4vtg092nsfg5f6tig2snk5m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514958080;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('52ulrkpqluv6fqr2l9p26co7nr0fnq48', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514872667;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('53q83tku1583d134vqc8mt2pgg09e9fe', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514962055;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('546la5k1ueoidls58s21i2d9c2lr1cs5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514985986;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('54i32i9nl4f2n8naqp1er8dv58so42hf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514980556;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('54r87ks4u58rth5o8j1uu2rbuuc6nhnn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515171242;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('56pafeuftut3dm0q1keg2vkct6m7usag', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514991711;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('599n0d6a4g4etp545hdo7san2frn90la', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515156925;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('5asfkgf9o2g6ro37un76irq05ad9k5ob', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515312008;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('5cf41p3s7vg08de5b8b226ektkibu66i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515764907;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('5cnhvarhineq7vtm6r78nso5ik9dqs69', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515151842;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('5ngcvdr5qc8sca36fpastn0875oevghr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514861677;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('5p54vq2eql4ht04o4tfutjetl2co65go', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515587902;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('5skqv6s8dk2s500fkm3dh7fd1rkguffv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515129098;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('5um198eackdlv1fda7pppgp5sm2lcol9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515142203;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('65rvtu182mo099qjia7t6551effn741a', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515591805;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('674s46sq0ve90ibdkm0jhvkbhj6hg0h6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515048407;'),
('69jmj7v6kqft3tfojuumm6kmimd9aqkg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514858894;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('6cgaisu8t4nufqe0i73ep2sdtvb6e8cp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515156564;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('6gduhlb6s5gkcd5e18ui1dp4jtc36mc4', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515245792;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('6h3a6qopn8vhk6sqobb3vg0bavvhilkj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514860521;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('6isq1r300gbcif29gf7evha8errqv775', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515083412;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('6qcagmb79lbertrf5jrtilm9baqdh3i3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515244544;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('6qdgdttgvdqdsikgtfmvdr9leaooflvc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515244221;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('6rf1ag2qbbimmqvblnqgpo7j9601u5v2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514978824;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('6vu3cnlo24ihebo62g0q340bg5qs12gs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514878451;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('70vq0jj99o87kbp6t40d24fnfbbjfr4g', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515150349;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('71at7b7vtv17ceh8nd2p7jil0r12k4d9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515843627;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('72431sroil94ds3tvv160tjmv743ott5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515068004;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('7dmivscosl02fevu6j32alegtd80823s', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515152985;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('7equn2da7g59ksutqdb189cmbs3ckt0h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515046825;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('7hpo03jigpi0hpbk1jpfvpvdile6gorl', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514995445;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('7rgad9flu4vhhboq067u61lccjuiq59n', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515592817;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('7ri97fd7arfv7pv8f64vdqher41lmqga', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514266413;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('7srigrb46kg2viss4hhr3h1d1ijq8uqk', '127.0.0.1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515057790;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('80u8j1157r3d1rpon3b6i62augb48tpr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514858556;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('811p6lcsavpmf1kej5d7n5pa6c2gstg8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515256960;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('8dlb15r0f3j9c3c2u3bjtg6isuo5m5s1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515768287;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('8mo13m0b4f3u6t6deb6i50ftdsf8md8r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514345078;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('8pnfj15fmvmi1js8raf77aoam513anpr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514986659;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('8r4tml39biculr0u1km9hritfa525j7f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515001200;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('8req6pn318gkp62g2mmcjseu7s718b1j', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233758;'),
('8uvkedjkfu3n9cog5oveqafd4ac4cjt6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515261015;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('907mov6h1qhttq4u4b9baiej70dbfud5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515765630;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('90852jcvit9oa6ivgsugqmckfluug9h1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515599411;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('90np08h9io0f1pmrgcp97jen9tuk2fhp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514350732;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('92fd676duve0vrut42kcavvrue70k1ku', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515141490;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('98arci4vtip4iugc872e2sv1k3d45stb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515496755;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('98luhsthevc0se7i4e0jcra9pivacc25', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514859432;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('9a00caq2bjqu3q30s9t2na4ldn18oag6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515597706;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('9ae3lpc1g42hspgk8813fk8i41etpk5l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515843627;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('9ckkj2158b1e3h81ghu3rgoedtbfg3ih', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514265852;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('9h547p5g201t6de3ekg8nokq0gvp2ugu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514979189;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('9pg5q02io1o58b48c980lvsk37coc92i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514857764;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('9qnkemr7gpt31ro7c3d430qcbtn788qp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515231895;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('9siso7m0qg1gn5uj2tjc9hujke671968', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515260637;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('9u4j7gllsl5hh9s55981jhkf9kgifa5m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233897;'),
('9vcbhtg86nqkqhhinjgdu9tpa1vs0rr6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515089979;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('a3ld3kppre5tjip171v29dhulpqd9slb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515039644;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('a51nu58vfpaukuu3q79taeaaeq20g0kb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514978137;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('a54ltaed5pho6lmp349o8v36hbu3udpi', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514879253;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('a6e1imgg2k1a413ueb5bvv0nogl7rchv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515028588;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('a7rvda0s5hb69tehrj6qp9bfklstf55q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515239593;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('aip0jc239hvdp6kq34vpugm9bel3oj2v', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515158829;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('al2ggdlsvtlrqmtcjq1kgguf52rr6abl', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515144389;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('aoknuasj80bq81irk5vomcpnetj6oosj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515091473;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('av3tq1vgs7qobj696uptirstrdj6u3tc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515002270;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('avpvenfu03ij4bolcv9chb6idrscp7ur', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515035464;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('b13pmudm0nce555jjnfhsmfkc5hqqjna', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515566808;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('b4ns9saugj5fm1lq3520q7nuvpfd5ibn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514960843;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('b7f10v0d0mpn6t6nosaag1hu793cr1nc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515576201;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ba4mh5oa5d6s7j383ltr6n7vpr6fstkr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515766270;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('bdjsbj551pamsfgdv4ahc4fadv8kegct', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514859865;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('bjdh15jink22ngs7bip8atqases8scqb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515558145;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('blim02u0qcjho40ttmsp45h1bq8jb754', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515577140;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('bm5g597b4ehucssdl8jtmm661v9m4n2n', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514999955;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('bo9hcqi1mtrdclhkemjpre4359rgr2h2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515592238;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('bpesuu4h00n2s4er62hgnd9ruvr4n5qc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515049962;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('brfi6gig42i3elflm989fonfdq4u60f0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514980873;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('bstirogagqtrfll9m7ev8ldv9fbh2bnn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515247836;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('buko5cv6to12e8ks6kjntfeer9cd6nkv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515238837;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('c3qnpuq3p9p62vsm5gg9heluh393vc81', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514881857;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('c430b07vt1nf9kp34q39t6ia8d176f1h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515230147;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('c5444c8sjv1r9fv0cc5nkqgffvej9qvq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515583729;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('c5rhkdjh5nka56g2p4rosav4j50gu65p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515089650;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('c5rmaf5a9mb2caoge5ggo809ddtp56k4', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514981215;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('c6jh3pbgenbb109nkn69osp004u93ihh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515571552;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('c9q8r2q92l02cgptisu9kas30h832jcs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159368;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('chol9h91dpikfbp5mfmu8quil5hpo035', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515003642;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ckm68bs90arnml1k9l6sdvbi799grc82', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515173541;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('cl5pg0pi4qe8g2o0u1628hrtl1n3t9bk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515246319;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('clhkea8bvtc01g2e9rkc2osdfa6cuur2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514881144;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('co1fudodqssq4206rolnuvj609o2qe2j', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515575880;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('cspu55soh6j33dkbfv6u7m3s0ouo3rn5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515506820;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('cttr17mhsqq7img7lts4kd5i5hlp6e6o', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514987468;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('cvofoe1d3d8efu3jnup4ek7e1pr5mtue', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514967813;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('d0ak1e67sls3n7ip5dnsvndoqd0euqb7', '127.0.0.1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515055672;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('d2135dumhm8t9rphec3g962f4h34uik1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515047570;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('d40bsfl9qua7et9b4cb7kqia0m9tvgci', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515085464;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('d4cuao4394ephgd8umg3rfaair13eo8h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515177656;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('dchejvbo7eqeeqn8vut6uk4m2dubvldr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515084069;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('dg41q4u454is8cepcno04i0qu744dga7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515178364;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('dghqh74k2b98ceblrrgcnebgje3vsblb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515153312;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('dj3gogog14kmqqq74jr16okdbepo8cts', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514873363;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('dlmb6430lt0o0cuds01b3qtikb249rsb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515153613;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('drklc2phcuneqnqjt19bk2c8v74dfjip', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515156226;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('dsr12re15c76hprhvorla16be9hjfmot', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515129401;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('dtmaep3baii4ij9v8p8nkj7od2a99kjk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515047539;'),
('dvd6tr54m4qfi4pfcr8eebtphc8hmm58', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514355015;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('e00v4kpmnn0kka07go0jtllncskjlov0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515128580;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('e0svv68mo93s6cqa8v2aiqb2jn2sddi6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514982251;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('e0tn81d6dbiqbrmrk0gefc0o3gp1eirg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515049598;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('e3m6otb3fvlb2our2k8r2ancukv4mbot', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515037777;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('e4d1iu0hi0lhkmkejdap1m756239c7fg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515051318;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('e9hqv1547htnbrmur5ekmbbja537ho5f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515239179;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('e9pvivo2o30ist4o3dio8849edvrpak7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515576513;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('eg5484du7m8vjae4pn1po4057tn85i6v', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515575552;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('eg5d0krudht6u32e5cmfrg51r1knocre', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514862533;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('egckqdjdcoifceue7nucmvfpm5iue5ao', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515594620;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ei74ql2s9g7k1ipe558h7r48fla99uu0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515581521;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('eiie6dff130fge4gkg467r70bqesqbn8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514875422;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('eoh6lmac2leo87061i0v19ae9aobvrn2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515091143;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('er8t0ps9lemtdrtfnhtb4k5vm4g7t5vj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515043499;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('etprcdp3u9967osag1c4k7n7lgiu17r1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514880485;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('etsojugcpdbiaa6crvg1p2nos0mbumkh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515149495;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('eu6u3gd8f4h5pssrveq6ag3nf0461hj5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514878071;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('f0aa9gujfbt593t92icqno1tj1gn0u8q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514999476;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('f0fd2lrb1njvinrgiqqd6v8oqd09sk5q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514569499;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('f18diaaiq4qtit41i9l1mhp1hjmkjuvb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515255718;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('f4lak5ucfffroj1jaob5hstdu9dkv7nf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515570631;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('f57qv85fu9lpcs839g721nalujda34qt', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515090428;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('f98mibljijk4uscd6n4o6j42i06k766r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515236430;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('fasgcg9ua6c9upqtpnaghr6bi4vl9t80', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515154896;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('fcf8bddcr66nvc6sna78nteev7mquiaa', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515173849;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('fdf1tpmktvu47jreov1munsea4uf6uc9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515254766;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ffifr7lpt2r2k34bvb9a57henhloocoe', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515146726;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('fgmmnqnbi9u93h9pqo97jsvrnltvmqkd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515136297;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('fk84thb3evijmesmnf7djvk9dks0rmpf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515508548;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('fmr6a6a658lh5djg9o987grutdq1s18i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514978493;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('foa9e59jk14a6fp15vipvjbeldm11246', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515080701;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('fqpeg5jji4d8j5cc5ro5ksnuiqsbdp7k', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515589210;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('fqvs7jcblhrn5nf5n3nmpst0umopt78a', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515156227;'),
('frbd58uor1n3a9rgofrl20ldmp8hmuvj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515140209;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('fuk405kp1ksniee7bh690seq0k9cfvbb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515575210;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('g3t1l3vhfgs9i6fkfvbm753s99bc0ng3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515309710;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('g4cjt6tsfunf5dmdcrt2h48t68f4o71u', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514968260;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('g6rrc55do94sbvu4o98c42vg7uau9tgk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515572772;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('g7ctjpaeef4h18b5cjrotjt4vs09igi8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514977828;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('g92b0g9migh3opq8ok8ktir4enpp4hsg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514959707;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('gaotv9mi0emi36djsuvojtkld330ni8s', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515579448;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('gav1k9klobq51oo26rmf6dg0j39039u5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515257780;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('gd4dfepud6rmvcfdq41h0gjcr9n25o68', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515141813;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('gf1uac95ld36vqqqjvv339dgc6jrc2l9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514976979;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}');
INSERT INTO `sessions` (`Id`, `ip_address`, `timestamp`, `data`) VALUES
('gg9hga9tan4hv7bpnivkv4i5ounefoc9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515766705;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('gjrf745cjt6h7eroocnac45gblt7uo8i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515148898;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('gp8ipt9md5itnu1e6kf2t1csh6omp8j4', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515230471;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('grqu1i9fjj8k84c9ju7amiksf1ucinsr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514872013;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('gshbu8meo0kjrelhjicdctig2ed156va', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515044157;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('gsl81c8mfqjpehggprdh5ekdh4m4p65r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515140538;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('gum4di4uf4e0o64sethivla8k781gahf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515257441;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('h4e865j5v0q5ppb2vonjg2ogmumu12v0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514879873;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('h621k1skdh9739frcmthit17ju6p0ri9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514993598;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('h6q880qurme0dd11tnngfchvktqrhu6h', '127.0.0.1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515058816;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('hbcve6dogksoutlcg93bh4p49fvsaj0p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515559663;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('hh9ebogtt41vch6t4ajm3627aoepl3l3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514882895;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('hjnbjdpsq8sablt0o7jg13o6n9a5scs6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515165290;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('hkq49s68vbhd9hd01kgru7dampph4toj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515174309;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('hn7q560hqg2eftiupv18pnb1ldj2ud7v', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514860204;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('hqacp4r835ga74ttc51tls3g32uaka0a', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515258561;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('hr8p2drkmla902opclnoir9vpg4teaij', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514958919;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('hvfn8l16nnus51imfb7jentoq08k9j4r', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515154233;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('i23q5icnfcqnvokenmqrlueb87p32f8j', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515564079;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('i37f07ncsoig29img0frckr4ap288lin', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515258865;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ibl55nekjm95co7pm70kkkj4mlkhb5ed', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515081743;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('icl0uqo200srptuu0br4hq74l8bol574', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233749;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ieek0aslmjfcrtekau6flfhshf58ff1m', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515132931;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('imd3fjoq5382s82afkc8clb5nbmrje3f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514980252;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('imhi5olhn6lar3mq65c68h9njcct4kl6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514883983;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('imkirq9r04rslg8pmgqlfaktdtrib44j', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514986304;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('inbh8ncc6b87rackdnnqmmn2oae1bn4c', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515128050;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('iq9ubmgru1qg5vnbl9hhbjeegoj0lrod', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514877320;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ism52jup7016f24t2pe3r5ijbuq7svsp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515557254;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('iuppt15sm8e6q5c5e23dpju4og0nf4kk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515147303;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('j63s4kdbl3bngc5i0mcs7gk8it0mkndb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515573564;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('j79vhcjm438b7jslcfddbc1hn3cd92fu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514996846;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('j7i4ot1mo2ndktja0493oe496rksea7f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515584172;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('j8e6a29s77c18legale2rlmjo4gb2bj5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514862843;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('jf4bqb7qe1915d112a83ur2l43rr7q44', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515576820;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('jh5rrqc2ijpl0vtq7qbhu9bqm7rh72ec', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515169774;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('jq2ptl0jd80dmsbjlmumfkfov2scj3d5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515086683;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('jqm47apedsv4u8jjbkobdfgtahjgm349', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515048407;'),
('jrgfdelgo8l6j1i669kt6u4rpnvkg3es', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515261726;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('jtkcrcvkv1fme12tgpi898i2upla8gmk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514350376;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('jto4a8p2frn9jldhg4vhs6nq3d905vha', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515234206;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('k1aktohohvgt9v5aes7a1qc5dfts85n7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515139887;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('k3ndsh68su2eq3vdl8nbfe1btta8opqj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514873998;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('k799mupufngvrq7ngvl3992rijn4lidg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515143920;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('k8mlsigcpn50s0cue1mutc6f11cattiu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515563775;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('k9mlod6i6kisgd6blimr10dg6g342pcj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515048407;'),
('kfi81rjg88ncmbg7f91ueiq6imbkd7ch', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515765324;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('kjuhmlv2c1n01hd9796244tvse4o71tp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515593154;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('koo93lcg4719t04dlnjcbjmp8fqa45rd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514957187;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('krabdsla1ttdqgic24mji9ljqh57bt0o', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515558454;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('krtg8alkove3pjm5gpaibnc3ada4ifbq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159635;'),
('kuu8o0utsqe776o9otjqchpfo658bqt2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514858247;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('l1iv823tv89oqlcvjtjfccbj000mcalp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515593940;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('l2dm4nd74i07sko8q7lekeir9jj2mk2g', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515091933;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('l5p3v3070ms67jf063694g5igmq6retl', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515767928;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('l666jerhgakbu91q8s27ee0lebcddfkk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514957715;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('l9o4tcghrbf3fpft95bi0t4e8n6ktrct', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514963467;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('lbhogkhg38cfaredq7dgs9hp7hiqimgm', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514994100;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ldirfef472h0pdejgba4b81q2o3eek8e', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515087831;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ljhe8nvvc8q7f1t6qbedeuugsssr05ai', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515165998;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ll8k10fuvr9qqioc00ur6vrceelkvuho', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515153922;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('llbbq15uk0156vv5q70vv0v7esjd2ci2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159807;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('lq2fosha905msc504n4809o6hv551q3e', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515312008;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('lrjk586q9coe9m2l3tr1iqjallo240qp', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514994631;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ls6c83gj0bb3lbr97nvjvdemtnd26g60', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515496101;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('luus6f558a2b08j7smf8jqen20tjcob0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515587048;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('lvcra24c0g5edvaopr0l8v2mkeat1i85', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515085942;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('m0tmg916p65r5dtgqjkg29gna2vo04ar', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514861180;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('m156h3eccjj5o3ic0u0rqj9uemgoa9i9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515245169;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('m24qc8decmm9m8977oo02rtnn9o3d99n', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515045505;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('m2k8gdibcjgqplqseedfk0t4cru7beks', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514876984;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('m5aktnjgdjc1igraubt9d8gndu822du3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514871706;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('m9iqk8i21sl69i3kj400ou42vin8tca8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515028283;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('mafa2nmoqdqn814d728rkittcednsak7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514874425;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('mcdglinuacamspkfe0v2m3v5srr397s5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514909761;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('mfanuvg8e3af3o3rfutuvn1oo9lathga', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514354707;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('mkupp8k17g8jf4s6dsdi9vli3ubtllen', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515027572;'),
('ml2gap9d31mb301smc1smu2muek5v500', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515086989;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('mmrdd68socrh2t12r27afnubam5bjp2u', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514992067;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('mqk3d7p2fng60cr2u06392deigjc0ev8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515148059;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('mrqsgnctc2dskj2hhall55cktjdp7frs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515033398;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('msvru39ea641987ca7tfmub4mji4rbff', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514863152;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('muissk0etgaev54iuv6j0r2h1coq3b8b', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515508093;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('mv6nfarh2vnu00lschhtp2i2cr96vqgn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515767018;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('n6haicgmp7iajdr3gujjsmeh0icpqg6q', '::1', '0000-00-00 00:00:00', ''),
('n6tm17l33s1402resbdk6iphqgsdg7t7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514909761;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('n7p9ncal40ruo4pemu8b0q7efoto7h7d', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515035843;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('na4i3t4rkqtj51rqjptttimu7ge3kr4j', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515572096;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('nenn9f93fl2c06oqqh54kn5hjal41rf5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515238117;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ng85ogvvlvakr676dse8t6fb0ru79sqk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515582385;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('nhjhtuc3aoev584mmgmg8tdmp33f5f9l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515136297;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('nhslsee784rl5a28ubbifv037j7l1d7q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515588869;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('nkg9oknttamo6u4oio3a3fpej3pb43q1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515142506;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('nn7mv5nu5mtjabbnu2411vrud50hm6hs', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515149990;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('npisq2fqo4ibbe9kbm3tfugsr29gmjvi', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515150709;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('npndu6epsf6cm4nu1s7h09t3rej5eotr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514265326;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('nrac7n89v4adgbnnsjvj2vhh4702dtj1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515221048;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('nuimm4dkpui9ch3rfevogf0i1er9eggb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515586011;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('o5biola2ckk807fkjflh6oc440l9fq55', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514876372;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('o96qdc9ro0g4rd481qmgur55marpj6te', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515027982;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('oafo3bb286qipn9sd4fifvrg322ph2qq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515311163;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ocbb0g7q7mkts0pn7l8vlgl5bbe1n6ea', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233750;'),
('oe02cs3433nggbaurgr524cp44n4lb5s', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514956187;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ojh3rpicl13vlgqghmb7i4pi0d2jqsm2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514997694;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('okb3uu6fkk702sn5hdumc2b9hut6i5ij', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515081032;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('olslpnpf685b2ihn6vqh99m6b85263eh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514995078;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('or89qq0sj7vf1c191gb4nudl99erlaev', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515580987;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ovgrhh22r9rgfk72qfj5u20svpcbn9pc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515151067;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('p1khfch432j3o0j2g373k3gmf9uhulvh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515595312;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('p5opd1oeve6bt2h5m892ksuq2si6t36g', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515505784;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('pbjgmidad708pjvgvrn7sd2l4hir3cgf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515087325;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('pc2jm277lv62t7oopvo10ppq5er3gbo6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515067679;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('pd3heu6ivepi79hsfhe88o6h0uf7egsb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515143168;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('pfb6o7s00oi78a83jnl3aa7s1707teiu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515152200;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ph3a09boel8ltj2g6nikjajdojj8c79p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514876676;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('piu08fn4b7jav8dpd6o16gh3jj0n5jiv', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515308836;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('pkrvfho9d849t68c9rqqbiuduq70u09q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514872322;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('plq1ehf5hnl1cght1pmkp2pthicc697j', '127.0.0.1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515058816;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('plt3gc5l0a2t05tlkcjpos64ud292ja6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515254263;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('q3uju25lj2m801oen9fnorg40al0qeuo', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515036749;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('q7oc7rbdjl33qtv99p1t0v2gt54qq8pq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514860833;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('qcep5dkpip7cisn8nd4nirhotap38a7l', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515036941;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('qchh9oca0etlg7s5ah800oopd4j4dg40', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515594294;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('qdfb4il5m2hv3gj4cijetuj3lppuoea8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515140844;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('qeg7cmtaha407jtb3qip5tbu8rhk019f', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515578543;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('qi4h9i0bknkuks920sto2kld10usf9bq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515036465;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('qm5255kpcia9bf5pnchvh0d6gf2updct', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514988486;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('qpdetpo85qnhf8cbbqtg47l7466844k3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515089074;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('qt2hhkv3psqbis51khgl95fsl669rsf5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515047150;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('qvr1jvjc5pcg51f1f2v5ju6j78mq4sno', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514881544;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('r0dfsvtu6788lnbh7j39v9c6boljbjnf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515066759;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('r4d76ubb4ek374ko8bsnqlkj74mtrr4i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515136309;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('r4lqoj3eq47rgcfm27cs1hqp2o1gv42h', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515086318;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('r767ogsmjsb9bahhl4p9pjv8klm0cn7n', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515588217;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('r79g4s1cvk7o22t3bp86p5oqg7diqa6i', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515308386;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('r83u923p0fsl0qrmsirvbecnvjt3139p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515233428;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('r8khl118rpih14e6v3sca4p6posd0abr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515563343;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('r962do6baqhpu848bda1j0r20ssb5oe8', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515055049;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('rb1q56ia2sh2dsjr5td3kkapfqnq19v9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515001742;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('rbt0f0a5i0s1vf54hbhi4vga5f87896k', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514960066;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('rce2q1egqnennf53rvm77kiede08p8qc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515566487;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('rg6fdnumc0ah6v5utoeh7okt4t9u3hmu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514992784;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('rhje34cph5gdomdv9tv3931ff8te20bo', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515253411;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('rnmbdujgrh12m2vef771bsj6mgm0ed8o', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515496454;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('rrap4kf9psbjtiada49ohtcmas1id602', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514984588;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('rsmdphd3llt5shceo36cot48sgp2agb0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514351728;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('s0p1j724flrc8c8peo26oblkm260olge', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515039297;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('s35te4dvhjrk1pq048oms2ju4uoc368u', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514965896;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('s48tfe3lu3ubduraordqd8u4n02v2kl5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514880179;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('s7s9q51qs65v7b0uaki4jfq079o8581g', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514883669;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('s8hq29jp8kqqjtjg82jvp4vi4b2275io', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515243894;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('sab9ig8f98ark4d4ici7m1rn3bi8iuv3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515579749;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('sfbaqd4a2io1efqdetjroqbvq7m9vkkj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515029130;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('sfl47q9eeffjv12dhfobe1fc19mlpmlj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515591490;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('siv3amner202k3manavh2gg013nrbuf2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515173074;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('sj5r6bode4hrcjj11p3q8sfkotnev8mc', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515038092;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('skco1rb92a3s5vqtcl2971s9a0csvblq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515245483;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('smbsf8g934e3a5pknbibub5gbl0b8hlk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515174977;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('smfka4hricb9vgdvdnqc7vmejoe9n1ra', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515310796;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('smum7b0gdh8orfhj1qgg1pmgt3pjifbh', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515051357;'),
('snbcv54mo142hsthvmncrn183mfm2j58', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515044837;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ss03qm3gm0op484cts1gds8ib88v9epu', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515564553;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ssekrdodvtvnes3fapskjg9g12qh10b7', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514977514;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('st3jrge9s4ekisgcifbicmmgnjeda4r5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515152509;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('stirsb737e4a9d9q74f8k1d05efm884s', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515500603;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('suc6ujqs420ttou46q4dt67nj4smsf2v', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515588530;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('t1j6e5l7g69r3jbd2t1ub46l0a0kifaj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515585683;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('t3eq6a7t2m0g82jvk2srv9qigcdjinth', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515003324;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('t5vpo6pualgb5jv1ihvu9v9tr5nvcbvk', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515767567;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('tcrdnis4sr74rnnjbfo4vajhp72al0vn', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515310319;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('tg8963f0sj203dvpqh3pkaljb79oa4ql', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515577830;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ti5mmoqaanuj087gn9gvga01imm06pq1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515238126;'),
('tlfdn7bbkjccv0dkn130ptq30d567vo0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515571197;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('to7u1opot915nsij4tfp0fpvl7um8pbr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514981934;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('tp08bm47c08ck7qf5e5aqfs6anjcifqi', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515141175;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('tq9ikovfosmsvn1siuso5dvptv88htlr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514976498;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ttbt6h4cq40p5ln09kgf3o47g86g2mft', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515159635;'),
('ttn8o8aa5g4kqc7aoklrt18rcs5id36q', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515566149;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('u102r0tc7lar2hq8fq3esrviisdngfje', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515261425;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ua439ena5gghfmncg330lvn9n5tnisnr', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515147746;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('uc6hht790n2qo04tcd1i250meeekbas5', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515027948;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ui7j9ft8phm1m3t5uj008o7qnh9pr0cq', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515258236;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('uj3ndfce0sk1ltv9b5vr68qpbl3eated', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514998049;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ujko4j6cspgrv9h3mm1b8d22bkm706q9', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514954560;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ujn95pm6thtslcm7ojg9l7jus5rbuimd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515038761;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('ul19dfj663iefkpekeledmtr9gr16o8t', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515565501;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('umrkcgt8fidlm9qcdbde5a8q4tugprt6', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515133461;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('uq6dp27icq2v2f4tpetboirdtpmr5iu1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515083043;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('urv71mrg5jl2a0mjvuquc9o4v6fktmhe', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515574814;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('usebpeo5bnnv5v4sp99do4df88nluu3j', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515137012;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('v2jvvmkoa4j9eplkpm3bt5maaf7lm02e', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515000670;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('vclvdqvpbl200jdk5dlqp0md2i2tr6sb', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515311567;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('vdjb1ilh76m7jbqk8jm3sirgpgts2hvj', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515148540;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('vhpj0q4ci8ah48a964e999a8vdmhkpdd', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515598009;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('voj9jdgo2tar2tdtj6lf2g0eluampkt3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1514966672;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('vpgi2o3dl7nm8rkqhrn49cdg6arr11nf', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515256507;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('vrc58aokmc981md0sg7ir5fabacgjm9p', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515593457;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('vs58902o218ukqji7km81kv3947ud09d', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515081388;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}'),
('vslcf891m7u0n8rn9pe32g77hkrjncqg', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1515037280;data|a:4:{s:8:"username";s:13:"adminpeg12345";s:9:"firstname";s:9:"Mary Jane";s:8:"lastname";s:8:"Cabiasan";s:8:"usertype";s:1:"1";}');

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
-- Indexes for table `homeowners`
--
ALTER TABLE `homeowners`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `obod`
--
ALTER TABLE `obod`
  ADD PRIMARY KEY (`Id`);

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
-- Indexes for table `usermanagement`
--
ALTER TABLE `usermanagement`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `announcments`
--
ALTER TABLE `announcments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `del`
--
ALTER TABLE `del`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `homeowners`
--
ALTER TABLE `homeowners`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `obod`
--
ALTER TABLE `obod`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `usermanagement`
--
ALTER TABLE `usermanagement`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
