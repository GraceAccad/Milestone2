-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 07:47 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ldb`
--
CREATE DATABASE IF NOT EXISTS `ldb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ldb`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categoryID` int(11) NOT NULL,
  `category_name` varchar(225) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cross_references`
--

DROP TABLE IF EXISTS `cross_references`;
CREATE TABLE IF NOT EXISTS `cross_references` (
  `cross_referenceID` int(11) NOT NULL,
  `cross_reference_link` varchar(225) NOT NULL,
  `lipids_lipidID` int(11) NOT NULL,
  `sources_sourceID` int(11) NOT NULL,
  PRIMARY KEY (`cross_referenceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `found_in`
--

DROP TABLE IF EXISTS `found_in`;
CREATE TABLE IF NOT EXISTS `found_in` (
  `lipidID` int(11) NOT NULL,
  `oraganismID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lipids`
--

DROP TABLE IF EXISTS `lipids`;
CREATE TABLE IF NOT EXISTS `lipids` (
  `lipidID` int(11) NOT NULL DEFAULT '0',
  `common_name` varchar(225) NOT NULL,
  `systematic_name` int(11) NOT NULL,
  `formula` varchar(225) NOT NULL,
  `mass` int(11) NOT NULL,
  `public_ID` varchar(225) NOT NULL,
  `structure_image` varchar(225) NOT NULL,
  `categories_categoryID` int(11) NOT NULL,
  PRIMARY KEY (`lipidID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lipid_references`
--

DROP TABLE IF EXISTS `lipid_references`;
CREATE TABLE IF NOT EXISTS `lipid_references` (
  `refernceID` int(11) NOT NULL,
  `reference_name` varchar(225) NOT NULL,
  `reference_description` varchar(225) NOT NULL,
  `reference_link` varchar(225) NOT NULL,
  `lipids_lipidID` int(11) NOT NULL,
  PRIMARY KEY (`refernceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modifications`
--

DROP TABLE IF EXISTS `modifications`;
CREATE TABLE IF NOT EXISTS `modifications` (
  `lipid_1ID` int(11) NOT NULL,
  `lipid_2ID` int(11) NOT NULL,
  `modification_typeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modification_types`
--

DROP TABLE IF EXISTS `modification_types`;
CREATE TABLE IF NOT EXISTS `modification_types` (
  `modification_typeID` int(11) NOT NULL,
  `modification_type_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organisms`
--

DROP TABLE IF EXISTS `organisms`;
CREATE TABLE IF NOT EXISTS `organisms` (
  `oraganismID` int(11) NOT NULL,
  `organism_name` varchar(225) NOT NULL,
  PRIMARY KEY (`oraganismID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
CREATE TABLE IF NOT EXISTS `sources` (
  `sourceID` int(11) NOT NULL DEFAULT '0',
  `source_name` varchar(225) NOT NULL,
  PRIMARY KEY (`sourceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spectroscopy_images`
--

DROP TABLE IF EXISTS `spectroscopy_images`;
CREATE TABLE IF NOT EXISTS `spectroscopy_images` (
  `imageID` int(11) NOT NULL,
  `image` varchar(225) NOT NULL,
  `image_description` varchar(225) NOT NULL,
  `lipids_lipidID` int(11) NOT NULL,
  PRIMARY KEY (`imageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
