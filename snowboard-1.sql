-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 09, 2018 at 11:45 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snowboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `longboards`
--

CREATE TABLE `longboards` (
  `Longueur` text NOT NULL,
  `Largeur` text NOT NULL,
  `Poids` text NOT NULL,
  `Prix` text NOT NULL,
  `Type` text NOT NULL,
  `imageproduit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `longboards`
--

INSERT INTO `longboards` (`Longueur`, `Largeur`, `Poids`, `Prix`, `Type`, `imageproduit`) VALUES
('99cm', '22,25cm', '1,5kg', '180€', 'FREESTYLE', ''),
('99cm', '22,25cm', '1,5Kg', '180€', 'DANCING', ''),
('12', '13', '5', '180', 'Top', 'images/g7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `PersonID` int(11) DEFAULT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pword` varchar(255) DEFAULT NULL,
  `Roles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`PersonID`, `Nom`, `Prenom`, `email`, `pword`, `Roles`) VALUES
(1, 'Land', 'Dom', 'studio.devisual@gmail.com', 'domdom', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD UNIQUE KEY `email` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
