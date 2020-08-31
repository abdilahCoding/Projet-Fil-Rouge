-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 10:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wasitdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `nom` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `nom`, `email`, `password`) VALUES
(1, 'admin1', 'admin1@wasit.com', 'admin1'),
(2, 'abdilah', 'abdilah@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `idAds` int(11) NOT NULL,
  `idAdmin` int(11) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL,
  `active` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`idAds`, `idAdmin`, `image`, `active`) VALUES
(14, 2, 'bCGsDsRyQ5Op3U5UfC58UA.jpeg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `idUser` int(11) NOT NULL,
  `nom` varchar(254) DEFAULT NULL,
  `prenom` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL,
  `ville` varchar(254) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`idUser`, `nom`, `prenom`, `email`, `password`, `ville`, `telephone`) VALUES
(1, 'azizi', 'abdelhamid', 'test@gmail.com', '$2y$10$r04lv9baoU4x5KqxKgsnfOjV6hFHrTAY2VyVfWpAK3JCmiyt.6Hyu', 'SAFI', '0612345691'),
(2, 'elaidi', 'abdelilah', 'abdilahela17@gmail.com', '$2y$10$y4.FpWHFmTycR3U8A.tfwOwjQsdWqGAkCe9pHtDZcnyV95cLEFiqS', 'safi', '0654345676');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `idComment` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idPostF` int(11) DEFAULT NULL,
  `comment` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`idComment`, `idUser`, `idPostF`, `comment`) VALUES
(1, 1, 1, 'dynmax'),
(2, 1, 1, 'dynmax mzyan'),
(3, 1, 2, 'ah mzn 4ir sawal 3la taman'),
(4, 1, 3, 'beneli hsan taliya o pieces dyalo mojoud'),
(5, 1, 4, 'k&amp;n marque zwina'),
(6, 1, 2, 'ah kayn likibi3ha 4alya');

-- --------------------------------------------------------

--
-- Table structure for table `postforum`
--

CREATE TABLE `postforum` (
  `idPostF` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `post` varchar(254) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postforum`
--

INSERT INTO `postforum` (`idPostF`, `idUser`, `post`, `date`) VALUES
(1, 1, 'slm l5ot chi antigel mzyan', '2020-07-11 21:12:26'),
(2, 1, 'slm l5ot bit nsawal wach sanya fice 50 mzyana ', '2020-07-11 17:31:24'),
(3, 1, 'slm l5ot ama hsan beneli ola cimati', '2020-07-11 21:12:47'),
(4, 1, 'chi filter dyal huile o l\'aire cgi haja mzyana', '2020-07-11 21:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `postvehicule`
--

CREATE TABLE `postvehicule` (
  `idPostV` int(11) NOT NULL,
  `image` varchar(254) DEFAULT NULL,
  `titre` varchar(254) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `ville` varchar(254) DEFAULT NULL,
  `description` varchar(254) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postvehicule`
--

INSERT INTO `postvehicule` (`idPostV`, `image`, `titre`, `prix`, `ville`, `description`, `telephone`, `idUser`, `date`, `category`) VALUES
(1, 's1000rr.jpg', 'S1000 RR', 120000, 'safi', 's1000 rr model 2010 dedouane 2013 line complet Z1000', '0612345689', 1, '2020-07-12 21:32:52', 'moto'),
(2, 'kaw.jpg', 'z1000', 90000, 'safi', 's1000 rr model 2010 dedouane 2013 line complet', '0612345689', 1, '2020-07-08 17:20:22', 'moto'),
(3, 'Mercedes-AMG-S-63.jpg', 'mercedes amg', 370000, 'safi', 'mercedes amg mercedes amg mercedes amg', '0612345689', 1, '2020-08-31 11:52:09', 'voiture'),
(4, 's1000rr.jpg', 'S1000', 20, 'safi', 'ghfhghfghfg', '0612345689', 1, '2020-07-12 17:37:06', 'moto'),
(5, 'kaw.jpg', 'Z1000', 35, 'SAFI, MOROCCO', 'fbcbcvbvbcbdffgdfgdf', '0612345689', 1, '2020-07-12 17:37:11', 'moto'),
(6, 'kaw.jpg', 'S1000 RR', 35, 'SAFI, MOROCCO', 'wxgdfgdhhfghfffghfghfg', '0612345689', 1, '2020-07-12 17:37:19', 'moto'),
(7, 's1000rr.jpg', 'S1000 RR', 20, 'SAFI, MOROCCO', 'slvxvnjkxbvbcvbvnxcvnxcbv,n', '0612345689', 1, '2020-07-12 17:37:30', 'moto'),
(8, '7s1000rr.jpg', 'S1000 RR', 20, 'SAFI, MOROCCO', 'slvxvnjkxbvbcvbvnxcvnxcbv,n', '0612345689', 1, '2020-07-12 17:37:35', 'moto'),
(9, '8panigali.jpg', 'PANIGALI', 230000, 'safi', 'dffggsdgddsgsf', '0612345689', 1, '2020-07-12 17:37:44', 'moto'),
(10, '9WA.png', 'PANIGALI2', 20, 'SAFI, MOROCCO', 'sqdfqsffqsfq', '0612345689', 1, '2020-07-12 17:37:55', 'moto'),
(11, '10s1000rr.jpg', 'S1000 RR', 20, 'SAFI, MOROCCO', 'bvbxcbxcbxc', '0612345689', 1, '2020-07-12 17:37:59', 'moto'),
(12, '11kaw.jpg', 's1000 rr', 20, 'SAFI', 'fgfgsdsgsdgs', '0612345689', 1, '2020-07-13 19:55:04', 'moto'),
(15, '14bk.jpg', 'mercedes', 8000, 'safi', 'GGGGGGGGGG', '786787656', 2, '2020-08-31 12:21:07', 'voiture');

-- --------------------------------------------------------

--
-- Table structure for table `postvol`
--

CREATE TABLE `postvol` (
  `idPostVo` int(11) NOT NULL,
  `vin` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postvol`
--

INSERT INTO `postvol` (`idPostVo`, `vin`) VALUES
(1, '1111'),
(2, '5687888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`idAds`),
  ADD KEY `FK_association6` (`idAdmin`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idUser`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idComment`),
  ADD KEY `FK_association5` (`idUser`),
  ADD KEY `FK_association4` (`idPostF`);

--
-- Indexes for table `postforum`
--
ALTER TABLE `postforum`
  ADD PRIMARY KEY (`idPostF`),
  ADD KEY `FK_association3` (`idUser`);

--
-- Indexes for table `postvehicule`
--
ALTER TABLE `postvehicule`
  ADD PRIMARY KEY (`idPostV`),
  ADD KEY `FK_association1` (`idUser`);

--
-- Indexes for table `postvol`
--
ALTER TABLE `postvol`
  ADD PRIMARY KEY (`idPostVo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `idAds` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `idComment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `postforum`
--
ALTER TABLE `postforum`
  MODIFY `idPostF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `postvehicule`
--
ALTER TABLE `postvehicule`
  MODIFY `idPostV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `postvol`
--
ALTER TABLE `postvol`
  MODIFY `idPostVo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `FK_association6` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_association4` FOREIGN KEY (`idPostF`) REFERENCES `postforum` (`idPostF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_association5` FOREIGN KEY (`idUser`) REFERENCES `client` (`idUser`);

--
-- Constraints for table `postforum`
--
ALTER TABLE `postforum`
  ADD CONSTRAINT `FK_association3` FOREIGN KEY (`idUser`) REFERENCES `client` (`idUser`);

--
-- Constraints for table `postvehicule`
--
ALTER TABLE `postvehicule`
  ADD CONSTRAINT `FK_association1` FOREIGN KEY (`idUser`) REFERENCES `client` (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
