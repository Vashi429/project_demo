-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2023 at 11:32 AM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 8.1.16
  --  fdlfkdlfkldfkldfkldfkldfkldfkld
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `citechno_vidushi`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `int_glcode` int(11) NOT NULL,
  `fk_role` int(11) NOT NULL,
  `var_username` varchar(50) NOT NULL,
  `var_email` varchar(50) NOT NULL,
  `var_password` varchar(100) NOT NULL,
  `dt_createdate` datetime NOT NULL,
  `dt_modifydate` datetime NOT NULL,
  `var_ipaddress` varchar(255) NOT NULL,
  `convience_fee` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`int_glcode`, `fk_role`, `var_username`, `var_email`, `var_password`, `dt_createdate`, `dt_modifydate`, `var_ipaddress`, `convience_fee`) VALUES
(1, 0, 'admin', 'admin@vidushi.com', '112086094093091118006010010', '2019-02-11 15:44:50', '2022-10-19 08:34:52', '19.161.132', '20');

-- --------------------------------------------------------

--
-- Table structure for table `mst_assessment`
--

CREATE TABLE `mst_assessment` (
  `int_glcode` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `bfi_score` double(9,2) NOT NULL,
  `copm_score` double(9,2) NOT NULL,
  `lisat_11_score` double(9,2) NOT NULL,
  `field1` varchar(50) NOT NULL,
  `field2` varchar(50) NOT NULL,
  `field3` varchar(50) NOT NULL,
  `field4` varchar(50) NOT NULL,
  `field5` varchar(50) NOT NULL,
  `ps_field1` double(9,2) NOT NULL,
  `ps_field2` double(9,2) NOT NULL,
  `ps_field3` double(9,2) NOT NULL,
  `ps_field4` double(9,2) NOT NULL,
  `ps_field5` double(9,2) NOT NULL,
  `ss_field1` double(9,2) NOT NULL,
  `ss_field2` double(9,2) NOT NULL,
  `ss_field3` double(9,2) NOT NULL,
  `ss_field4` double(9,2) NOT NULL,
  `ss_field5` double(9,2) NOT NULL,
  `avg_ps` double(9,2) NOT NULL,
  `avg_ss` double(9,2) NOT NULL,
  `reassessment_date` varchar(30) NOT NULL,
  `is_completed` varchar(1) NOT NULL DEFAULT 'N',
  `chr_publish` varchar(1) NOT NULL DEFAULT 'Y',
  `chr_delete` varchar(1) NOT NULL DEFAULT 'N',
  `dt_createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modifydate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_assessment`
--

INSERT INTO `mst_assessment` (`int_glcode`, `fk_user`, `bfi_score`, `copm_score`, `lisat_11_score`, `field1`, `field2`, `field3`, `field4`, `field5`, `ps_field1`, `ps_field2`, `ps_field3`, `ps_field4`, `ps_field5`, `ss_field1`, `ss_field2`, `ss_field3`, `ss_field4`, `ss_field5`, `avg_ps`, `avg_ss`, `reassessment_date`, `is_completed`, `chr_publish`, `chr_delete`, `dt_createddate`, `dt_modifydate`) VALUES
(1, 13, 1.00, 2.00, 3.00, 'Self- care', 'productivity', 'leisure', 'test', 'test', 11.00, 13.00, 44.00, 0.00, 2.00, 12.00, 14.00, 56.00, 0.00, 44.00, 17.50, 31.50, '2023-10-02', 'N', 'Y', 'N', '2023-09-29 14:35:41', '2023-10-04 13:42:02'),
(2, 12, 0.00, 2.00, 2.00, 'assessmenet1', 'assessmenet2', 'assessmenet3', 'assessmenet4', 'assessmenet5', 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.80, '2023-10-05', 'N', 'Y', 'N', '2023-09-29 14:59:50', '2023-10-04 11:25:21'),
(3, 11, 0.00, 0.00, 0.00, '1', '2', '3', '4', '5', 1.00, 1.00, 2.00, 3.00, 1.00, 22.00, 22.00, 22.00, 22.00, 22.00, 1.60, 22.00, '2023-10-17', 'N', 'Y', 'N', '2023-09-29 16:53:30', '2023-10-03 10:05:45'),
(4, 10, 0.00, 0.00, 0.00, 'Self- care', 'productivity', 'leisure', '', '', 3.00, 12.00, 2.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.40, 0.00, '', 'N', 'Y', 'N', '2023-09-29 18:41:43', '2023-10-04 16:44:51'),
(5, 10, 0.00, 0.00, 0.00, 'Self- care', 'productivity', 'leisure', '', '', 3.00, 12.00, 2.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.50, 0.00, '', 'N', 'Y', 'N', '2023-09-29 18:41:43', '2023-09-29 18:41:43'),
(6, 10, 0.00, 0.00, 0.00, 'Self- care', 'productivity', 'leisure', '', '', 3.00, 12.00, 2.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.50, 0.00, '', 'N', 'Y', 'N', '2023-09-29 18:41:44', '2023-09-29 18:41:44'),
(7, 9, 0.00, 1.00, 2.00, 'w', 'qq', 'qq', 'q', 'q', 1.00, 0.00, 3.00, 4.00, 5.00, 4.00, 4.00, 4.00, 4.00, 4.00, 2.60, 4.00, '2023-10-18', 'N', 'Y', 'N', '2023-10-03 11:57:30', '2023-10-03 11:58:16'),
(8, 8, 0.00, 0.00, 0.00, '', '', '', '', 'gfgjkl', 0.00, 0.00, 0.00, 0.00, 637.00, 0.00, 0.00, 0.00, 0.00, 0.00, 637.00, 0.00, '', 'N', 'Y', 'N', '2023-10-03 15:41:31', '2023-10-03 15:41:31'),
(9, 7, 1.00, 1.00, 1.00, '1', '1', 'dsd', 'dsd', 'dsd', 1.00, 122.00, 0.00, 0.00, 0.00, 1.00, 122.00, 0.00, 0.00, 0.00, 24.60, 24.60, '2023-10-03', 'N', 'Y', 'N', '2023-10-03 17:12:43', '2023-10-03 17:13:05'),
(10, 6, 0.00, 0.00, 0.00, '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'N', 'Y', 'N', '2023-10-03 17:32:26', '2023-10-03 17:32:26'),
(11, 4, 0.00, 0.00, 0.00, '', '', '', '', '', 1.00, 0.00, 0.00, 2.00, 2.00, 1.00, 0.00, 2222.00, 0.00, 0.00, 1.00, 444.60, '', 'N', 'Y', 'N', '2023-10-04 11:26:55', '2023-10-04 11:27:37'),
(12, 14, 100.00, 50.00, 0.00, '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'N', 'Y', 'N', '2023-10-04 15:03:00', '2023-10-04 15:03:00'),
(13, 15, 0.00, 0.00, 0.00, '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'N', 'Y', 'N', '2023-10-04 15:04:01', '2023-10-04 15:04:01'),
(14, 17, 10.00, 5.00, 11.00, 'Cure', 'health', 'Test', 'test1', 'test2', 10.00, 8.00, 10.00, 8.00, 0.00, 10.00, 5.00, 5.00, 5.00, 5.00, 7.20, 6.00, '2023-10-27', 'N', 'Y', 'N', '2023-10-04 15:10:32', '2023-10-04 15:14:20'),
(15, 29, 0.00, 0.00, 0.00, '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'N', 'Y', 'N', '2023-10-04 16:45:57', '2023-10-04 16:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `mst_reassessment`
--

CREATE TABLE `mst_reassessment` (
  `int_glcode` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `bfi_score` double(9,2) NOT NULL,
  `copm_score` double(9,2) NOT NULL,
  `lisat_11_score` double(9,2) NOT NULL,
  `field1` varchar(50) NOT NULL,
  `field2` varchar(50) NOT NULL,
  `field3` varchar(50) NOT NULL,
  `field4` varchar(50) NOT NULL,
  `field5` varchar(50) NOT NULL,
  `ps_field1` double(9,2) NOT NULL,
  `ps_field2` double(9,2) NOT NULL,
  `ps_field3` double(9,2) NOT NULL,
  `ps_field4` double(9,2) NOT NULL,
  `ps_field5` double(9,2) NOT NULL,
  `ss_field1` double(9,2) NOT NULL,
  `ss_field2` double(9,2) NOT NULL,
  `ss_field3` double(9,2) NOT NULL,
  `ss_field4` double(9,2) NOT NULL,
  `ss_field5` double(9,2) NOT NULL,
  `avg_ps` double(9,2) NOT NULL,
  `avg_ss` double(9,2) NOT NULL,
  `reassessment_date` varchar(30) NOT NULL,
  `is_completed` varchar(1) NOT NULL DEFAULT 'N',
  `chr_publish` varchar(1) NOT NULL DEFAULT 'Y',
  `chr_delete` varchar(1) NOT NULL DEFAULT 'N',
  `dt_createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modifydate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_reassessment`
--

INSERT INTO `mst_reassessment` (`int_glcode`, `fk_user`, `bfi_score`, `copm_score`, `lisat_11_score`, `field1`, `field2`, `field3`, `field4`, `field5`, `ps_field1`, `ps_field2`, `ps_field3`, `ps_field4`, `ps_field5`, `ss_field1`, `ss_field2`, `ss_field3`, `ss_field4`, `ss_field5`, `avg_ps`, `avg_ss`, `reassessment_date`, `is_completed`, `chr_publish`, `chr_delete`, `dt_createddate`, `dt_modifydate`) VALUES
(1, 13, 1.00, 0.00, 0.00, 'test-refdfdfrewr', 'test-refdfrwer', 'dsfsdrrewr', '324324rewr', 'fdfefew   erer r re32434324', 1.00, 1.00, 1.00, 1.00, 2.00, 2.00, 3.00, 2.00, 2.00, 2.00, 1.20, 2.20, '', 'N', 'Y', 'N', '2023-10-03 11:31:23', '2023-10-04 13:41:05'),
(2, 12, 0.00, 2.00, 2.00, 're-assests1', 're-assests2', 're-assests3', 're-assests4', 're-assests5', 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, '', 'N', 'Y', 'N', '2023-10-03 11:50:43', '2023-10-03 11:54:47'),
(3, 9, 0.00, 2.00, 2.00, 'ds', 'fds', 'dd', 'dd', 'dd', 1.00, 1.00, 0.00, 0.00, 0.00, 1.00, 1.00, 0.00, 0.00, 0.00, 0.40, 0.40, '', 'N', 'Y', 'N', '2023-10-03 12:10:43', '2023-10-03 12:11:49'),
(4, 8, 1.00, 1.00, 1.00, 'd', '6456', '66', '654', '645', 2.00, 2.00, 2.00, 4334.00, 3423.00, 2.00, 2.00, 6546.00, 645.00, 0.00, 1552.60, 1439.00, '', 'N', 'Y', 'N', '2023-10-03 17:13:46', '2023-10-04 12:01:59'),
(5, 7, 0.00, 0.00, 0.00, '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'N', 'Y', 'N', '2023-10-03 17:17:28', '2023-10-03 17:17:28'),
(6, 4, 1.00, 1.00, 1.00, '', '', '', '', '', 1.00, 1.00, 0.00, 0.00, 1.00, 0.00, 123.00, 23213.00, 1.00, 1.00, 0.60, 4667.60, '', 'N', 'Y', 'N', '2023-10-04 11:27:58', '2023-10-04 11:30:22'),
(7, 5, 0.00, 0.00, 0.00, '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'N', 'Y', 'N', '2023-10-04 11:30:47', '2023-10-04 11:30:47'),
(8, 16, 0.00, 0.00, 0.00, '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'N', 'Y', 'N', '2023-10-04 15:08:44', '2023-10-04 15:08:44'),
(9, 17, 0.00, 0.00, 0.00, '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'N', 'Y', 'N', '2023-10-04 15:16:14', '2023-10-04 15:16:14'),
(10, 29, 0.00, 0.00, 0.00, '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'N', 'Y', 'N', '2023-10-04 16:45:23', '2023-10-04 16:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `int_glcode` int(11) NOT NULL,
  `var_name` varchar(100) NOT NULL,
  `var_age` int(12) NOT NULL,
  `var_mobile` varchar(20) NOT NULL,
  `var_email` varchar(100) NOT NULL,
  `var_address` text NOT NULL,
  `var_date_of_surgery` date NOT NULL,
  `var_starting_date_of_chemotherapy` date NOT NULL,
  `var_starting_date_of_radiotherapy` date NOT NULL,
  `chr_publish` varchar(1) NOT NULL,
  `chr_delete` varchar(1) NOT NULL,
  `dt_createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modifydate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`int_glcode`, `var_name`, `var_age`, `var_mobile`, `var_email`, `var_address`, `var_date_of_surgery`, `var_starting_date_of_chemotherapy`, `var_starting_date_of_radiotherapy`, `chr_publish`, `chr_delete`, `dt_createddate`, `dt_modifydate`) VALUES
(1, 'test', 12, '9994499943', 'test@gmail.com', 'test,teset:-122', '2023-09-26', '2023-09-28', '2023-09-30', 'Y', 'Y', '2023-09-26 15:32:09', '2023-09-26 15:32:09'),
(2, 'vashi', 23, '9408786429', 'vashio@gmail.com', 'hello', '2023-09-27', '2023-09-30', '2023-09-30', 'Y', 'N', '2023-09-27 15:41:48', '2023-09-26 16:04:52'),
(3, 'najir1', 331, '7874031171', 'naji1r@gmail.com', 'hello1111', '2023-12-12', '2000-11-23', '2023-09-24', 'Y', 'Y', '2023-09-26 16:20:42', '2023-09-26 16:07:28'),
(4, 'akshat', 33, '6354495098', 'rdffd@gmail.com', 'hello moto', '2000-01-11', '2200-01-02', '2023-01-02', 'Y', 'N', '2023-10-04 11:31:35', '2023-09-26 17:21:48'),
(5, 'dsf', 34, '4324324324', '34@gmail.com', 'dsadsadsadsad', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'Y', '2023-09-27 13:38:44', '2023-09-26 17:24:30'),
(6, 'yrrt', 0, '6546456565', 'hgh@ffdf.vvv', '6546546', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'Y', '2023-09-28 10:21:26', '2023-09-28 10:21:26'),
(7, 'dsa', 0, '3243242343', 'fff@gmail.com', 'dsfgd', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'Y', '2023-09-28 10:24:37', '2023-09-28 10:24:37'),
(8, 'fdfd', 0, '3432432443', '432432@gmail.com', '432432432', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-09-28 10:25:02', '2023-09-28 10:25:02'),
(9, 'erewr', 11, '4324324324', 'ff@gnmailkl.com3', 'rewrewr', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-09-28 10:25:23', '2023-09-28 10:25:23'),
(10, 'rewr', 3432, '3432432432', 'f@gnmail.com', '543543', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-09-28 10:25:43', '2023-09-28 10:25:43'),
(11, '5435', 5435, '5435435435', 'gg@g.com', 'rerewr', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-09-28 10:26:13', '2023-09-28 10:26:13'),
(12, 'fdf', 0, '4324324324', 'ff@gmauil.com', 'fgfdg', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-09-28 10:26:35', '2023-09-28 10:26:35'),
(13, 'wqrwqr', -9, '4324324324', 'dd@g.com', 'gfdgfd', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 13:43:34', '2023-09-28 10:26:57'),
(14, 'Sanjay', 0, '9874563210', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'N', 'N', '2023-10-04 15:02:06', '2023-10-04 15:02:06'),
(15, 'test', 0, '1470144412', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:03:51', '2023-10-04 15:03:51'),
(16, 'Sanjay', 21, '1245639870', 'test@mailinator.com', 'Ahmedabad', '2023-10-06', '2023-10-13', '2023-10-23', 'Y', 'N', '2023-10-04 15:08:29', '2023-10-04 15:07:58'),
(17, 'Test', 74, '7848596321', 'test@gmail.com', 'Ahmedabad', '2023-10-13', '2023-10-26', '2023-10-01', 'Y', 'N', '2023-10-04 15:09:38', '2023-10-04 15:09:38'),
(18, 'test', 0, '2121215454', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:21:52', '2023-10-04 15:21:52'),
(19, 'sktest', 0, '6626262626', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:22:12', '2023-10-04 15:22:12'),
(20, 'Ak', 0, '6565656565', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:22:40', '2023-10-04 15:22:40'),
(21, 'test', 0, '5444545445', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:23:01', '2023-10-04 15:23:01'),
(22, 'Anil', 0, '6565656565', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:23:30', '2023-10-04 15:23:30'),
(23, 'Akash', 0, '5796565656', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:23:58', '2023-10-04 15:23:58'),
(24, 'Asha', 0, '9874412121', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:25:17', '2023-10-04 15:25:17'),
(25, 'John', 0, '6565695656', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:25:52', '2023-10-04 15:25:52'),
(26, 'harmayni', 0, '5454545454', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:26:53', '2023-10-04 15:26:53'),
(27, 'Deeksha', 0, '2124544545', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:27:31', '2023-10-04 15:27:31'),
(28, 'Deekshith', 0, '5454545478', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:27:52', '2023-10-04 15:27:52'),
(29, 'test', 0, '7878787878', 'test@mailinator.com', '', '0000-00-00', '0000-00-00', '0000-00-00', 'Y', 'N', '2023-10-04 15:44:05', '2023-10-04 15:43:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`int_glcode`),
  ADD KEY `fk_role` (`fk_role`);

--
-- Indexes for table `mst_assessment`
--
ALTER TABLE `mst_assessment`
  ADD PRIMARY KEY (`int_glcode`);

--
-- Indexes for table `mst_reassessment`
--
ALTER TABLE `mst_reassessment`
  ADD PRIMARY KEY (`int_glcode`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`int_glcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `int_glcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_assessment`
--
ALTER TABLE `mst_assessment`
  MODIFY `int_glcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mst_reassessment`
--
ALTER TABLE `mst_reassessment`
  MODIFY `int_glcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `int_glcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
