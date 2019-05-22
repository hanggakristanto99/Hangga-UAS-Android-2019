-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 10:32 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `uas`
--

CREATE TABLE IF NOT EXISTS `uas` (
  `id` int(11) NOT NULL,
  `nama` varchar(33) NOT NULL,
  `asal_daerah` varchar(33) NOT NULL,
  `kamar` varchar(33) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uas`
--

INSERT INTO `uas` (`id`, `nama`, `asal_daerah`, `kamar`) VALUES
(1, 'Muhammmad Ujang', 'Bogor', 'Presiden'),
(2, 'Ahmad bambang', 'jakarta', 'walikota'),
(3, 'asep surasep', 'bandung', 'gubernur'),
(4, 'budi susanto', 'makasar', 'lurah'),
(5, 'maman abdurohman', 'sukabumi', 'camat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uas`
--
ALTER TABLE `uas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uas`
--
ALTER TABLE `uas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
