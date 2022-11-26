-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql-etna-bubble-tea.alwaysdata.net
-- Generation Time: Nov 26, 2022 at 10:36 AM
-- Server version: 10.6.7-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etna-bubble-tea_softia`
--

-- --------------------------------------------------------

--
-- Table structure for table `attestation`
--

CREATE TABLE `attestation` (
  `att_id` int(11) NOT NULL,
  `conv_text` mediumblob DEFAULT NULL,
  `fk_conv_id` int(11) DEFAULT NULL,
  `fk_etu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `convention`
--

CREATE TABLE `convention` (
  `conv_id` int(11) NOT NULL,
  `conv_nom` varchar(100) DEFAULT NULL,
  `conv_nbHeur` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `convention`
--

INSERT INTO `convention` (`conv_id`, `conv_nom`, `conv_nbHeur`) VALUES
(1, 'Convention Testo', '30:00:00'),
(2, 'convention Jojo', '30:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `etu_id` int(11) NOT NULL,
  `etu_nom` varchar(100) DEFAULT NULL,
  `etu_prenom` varchar(100) DEFAULT NULL,
  `etu_email` varchar(100) DEFAULT NULL,
  `fk_conv_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`etu_id`, `etu_nom`, `etu_prenom`, `etu_email`, `fk_conv_id`) VALUES
(1, 'Testo', 'Roberto', 'testo@gmail.com', 1),
(2, 'Jojo', 'Pablo', 'jojo@gmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attestation`
--
ALTER TABLE `attestation`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `fk_conv_id` (`fk_conv_id`),
  ADD KEY `fk_etu_id` (`fk_etu_id`);

--
-- Indexes for table `convention`
--
ALTER TABLE `convention`
  ADD PRIMARY KEY (`conv_id`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`etu_id`),
  ADD KEY `fk_conv_id` (`fk_conv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attestation`
--
ALTER TABLE `attestation`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `convention`
--
ALTER TABLE `convention`
  MODIFY `conv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `etu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attestation`
--
ALTER TABLE `attestation`
  ADD CONSTRAINT `attestation_ibfk_1` FOREIGN KEY (`fk_conv_id`) REFERENCES `convention` (`conv_id`),
  ADD CONSTRAINT `attestation_ibfk_2` FOREIGN KEY (`fk_etu_id`) REFERENCES `etudiant` (`etu_id`);

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`fk_conv_id`) REFERENCES `convention` (`conv_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
