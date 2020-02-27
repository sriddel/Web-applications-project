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
	ID int NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT 5,
  `filename` varchar(255) DEFAULT NULL 
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`name`, `country`, `continent`, `rating`, `filename`) VALUES
('Great Barrier Reef', 'Australia', 'Oceania',5,'grebarreef'),
('Sydney Harbour Bridge', 'Australia', 'Oceania',5,'sydharbridge'),
('CN tower', 'Canada', 'America',5,'cntower'),
('Rogers Center', 'Canada', 'America',5,'rogcenter'),
('The Berlin Wall', 'Germany', 'Europe',5,'berwall'),
('The Black Forest', 'Germany', 'Europe',5,'blackforest'),
('Amboseli National Park', 'Kenya', 'Africa',5,'amboseli'),
('Samburu National Reserve', 'Kenya', 'Africa',5,'samburu'),
('Keukenhof', 'Netherlands', 'Europe',5,'keukenhof'),
('Van Gogh Museum', 'Netherlands', 'Europe',5,'vangohmuseum'),
('Hawkes Bay', 'NewZealand', 'Oceania',5,'hawkesbay'),
('Rotorua, North Island', 'NewZealand', 'Oceania',5,'rotnorisland'),
('Awhum Waterfall', 'Nigeria', 'Africa',5,'awhum'),
('Obudu Mountain Resort', 'Nigeria', 'Africa',5,'obudu'),
('gardens by the bay', 'Singapore', 'Asia',5,'gardensbythebay'),
('marina bay sands hotel', 'Singapore', 'Asia',5,'marinabayhotel'),
('Maokong Zoo', 'Taiwan', 'Asia',5,'maokongzoo'),
('National Palace Museum', 'Taiwan', 'Asia',5,'natpalmuseum'),
('Grand Canyon', 'US', 'America',5,'grandcanyon'),
('Mount Rushmore', 'US', 'America',5,'mountrushmore');

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
