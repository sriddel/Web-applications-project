-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2020 at 09:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `places`
--

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `name` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL
  `continent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`name`, `country`, `continent`) VALUES
('Great Barrier Reef', 'Australia', 'Oceania'),
('Sydney Harbour Bridge', 'Australia', 'Oceania'),
('CN tower', 'Canada', 'America'),
('Rogers Center', 'Canada', 'America'),
('The Berlin Wall', 'Germany', 'Europe'),
('The Black Forest', 'Germany', 'Europe'),
('Amboseli National Park', 'Kenya', 'Africa'),
('Samburu National Reserve', 'Kenya', 'Africa'),
('Keukenhof', 'Netherlands', 'Europe'),
('Van Gogh Museum', 'Netherlands', 'Europe'),
('Hawkes Bay', 'NewZealand', 'Oceania'),
('Rotorua, North Island', 'NewZealand', 'Oceania'),
('Awhum Waterfall', 'Nigeria', 'Africa'),
('Obudu Mountain Resort', 'Nigeria', 'Africa'),
('gardens by the bay', 'Singapore', 'Asia'),
('marina bay sands hotel', 'Singapore', 'Asia'),
('Maokong Zoo', 'Taiwan', 'Asia'),
('National Palace Museum', 'Taiwan', 'Asia'),
('Grand Canyon', 'US', 'America'),
('Mount Rushmore', 'US', 'America');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`name`),
  ADD KEY `country` (`country`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attractions`
--
ALTER TABLE `attractions`
  ADD CONSTRAINT `attractions_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
