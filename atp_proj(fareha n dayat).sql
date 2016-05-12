-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2016 at 10:19 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `atp_proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE IF NOT EXISTS `bidang` (
  `bidang_id` varchar(500) NOT NULL,
  `bidang_name` varchar(500) NOT NULL,
  `bidang_desc` varchar(500) NOT NULL,
  `result_bidang` float NOT NULL,
  `fac_id` varchar(500) NOT NULL,
  UNIQUE KEY `bidang_id` (`bidang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `fac_id` varchar(500) NOT NULL,
  `fac_name` varchar(500) NOT NULL,
  `admin_id` int(11) NOT NULL,
  UNIQUE KEY `fac_id` (`fac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `history_id` int(11) NOT NULL,
  `lec_id` int(11) NOT NULL,
  `bidang_id` varchar(500) NOT NULL,
  `unjuran_id` varchar(500) NOT NULL,
  `fac_id` varchar(500) NOT NULL,
  `year` date NOT NULL,
  UNIQUE KEY `history_id` (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE IF NOT EXISTS `lecturer` (
  `lect_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `campus` varchar(500) NOT NULL,
  `gred` varchar(500) NOT NULL,
  `ATS_diff` int(11) NOT NULL,
  `committee` varchar(500) NOT NULL,
  `trek` varchar(500) NOT NULL,
  `office_admin` varchar(500) NOT NULL,
  `academic` varchar(500) NOT NULL,
  `position_status` varchar(500) NOT NULL,
  `result_lect` varchar(500) NOT NULL,
  `fac_id` varchar(500) NOT NULL,
  UNIQUE KEY `lect_id` (`lect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unjuran`
--

CREATE TABLE IF NOT EXISTS `unjuran` (
  `unjuran_id` int(11) NOT NULL,
  `fac_id` varchar(500) NOT NULL,
  `stud_enrolment` varchar(500) NOT NULL,
  `year` date NOT NULL,
  `result_unjuran` varchar(500) NOT NULL,
  UNIQUE KEY `unjuran_id` (`unjuran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workload`
--

CREATE TABLE IF NOT EXISTS `workload` (
  `load_id` float NOT NULL,
  `lec_id` float NOT NULL,
  `ks_dip` float NOT NULL,
  `ps_dip` float NOT NULL,
  `ks_deg` float NOT NULL,
  `ps_deg` float NOT NULL,
  `total_deg` float NOT NULL,
  `total_dip` float NOT NULL,
  `ks_postgrade` float NOT NULL,
  `ps_postgrade` float NOT NULL,
  `total_postgrade` float NOT NULL,
  `k1` float NOT NULL,
  `k2` float NOT NULL,
  `k3` float NOT NULL,
  `KTS` float NOT NULL,
  `ATP` float NOT NULL,
  UNIQUE KEY `load_id` (`load_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
