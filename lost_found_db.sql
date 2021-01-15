-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2021 at 09:39 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lost_found_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `pp1` ()  begin 
select * from `lost_reports`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pt` ()  begin
select * from `user`;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `claim_request`
--

CREATE TABLE `claim_request` (
  `ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `CLAIMER_ID` int(11) NOT NULL,
  `CLAIM_MESSAGE` varchar(100) DEFAULT NULL,
  `CLAIM_APPROVED` int(11) NOT NULL,
  `APPROVAL_MESSAGE` varchar(50) DEFAULT NULL,
  `APPROVED_BY` int(11) DEFAULT NULL,
  `DATE` date NOT NULL,
  `TIME` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `claim_request`
--

INSERT INTO `claim_request` (`ID`, `ITEM_ID`, `CLAIMER_ID`, `CLAIM_MESSAGE`, `CLAIM_APPROVED`, `APPROVAL_MESSAGE`, `APPROVED_BY`, `DATE`, `TIME`) VALUES
(1, 2, 5, NULL, 0, NULL, NULL, '2020-12-30', '2020-12-29'),
(2, 1, 5, NULL, 0, NULL, NULL, '2020-12-30', '2020-12-29'),
(3, 3, 5, NULL, 0, NULL, NULL, '2020-12-30', '2020-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ID` int(11) NOT NULL,
  `FOUND_BY` int(11) NOT NULL,
  `POSTED_BY` int(11) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `FOUND_LOCATION` varchar(100) NOT NULL,
  `COLLECTION_LOCATION` varchar(100) NOT NULL,
  `MEDIA` varchar(200) NOT NULL,
  `IS_CLAIMED` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ID`, `FOUND_BY`, `POSTED_BY`, `TITLE`, `DESCRIPTION`, `FOUND_LOCATION`, `COLLECTION_LOCATION`, `MEDIA`, `IS_CLAIMED`, `DATE`, `TIME`) VALUES
(1, 5, 1, 'Found Iphone 6', 'This device was found at the d4 lobby', '', '', '', 0, '2020-01-11', '2020-12-22'),
(2, 5, 1, 'Found a Ring', 'A Ring was found at the park on the evening of the 14th', '', '', '', 0, '2020-01-11', '2020-12-22'),
(3, 5, 1, 'EBike Key', 'A key was found at the entrance of the main field', '', '', '', 0, '2020-01-11', '2020-12-22'),
(4, 5, 1, 'Found a Boya Textbook', 'A Student found a boya textbook at the north campus', '', '', '', 0, '2020-01-11', '2020-12-22'),
(5, 5, 1, 'Found Iphone 6', 'This device was found at the canteen', 'north campus canteen', '', '', 1, '2020-01-11', '2020-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `lost_report`
--

CREATE TABLE `lost_report` (
  `ID` int(11) NOT NULL,
  `LOST_BY` int(11) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(300) NOT NULL,
  `LOST_LOCATION` varchar(50) NOT NULL,
  `POST_APPROVED` int(11) NOT NULL,
  `APPROVED_BY` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lost_report`
--

INSERT INTO `lost_report` (`ID`, `LOST_BY`, `TITLE`, `DESCRIPTION`, `LOST_LOCATION`, `POST_APPROVED`, `APPROVED_BY`, `DATE`, `TIME`) VALUES
(1, 5, 'I Lost my Iphone', 'Iphone 6s gray color, little crack to the side', 'I think I lost it at room 5b 213', 0, 0, '2020-02-12', '2020-12-22'),
(2, 5, 'I Lost my Bike Key', 'Black Bike Key, has a little teddy bear', 'I think I lost it at room 5b 213', 0, 0, '2020-02-12', '2020-12-22'),
(3, 5, 'I Lost my Watch', 'Its a Galaxy Watch army camouflage', 'I think I lost it at room 5b 213', 0, 0, '2020-02-12', '2020-12-22'),
(4, 5, 'I Lost my Pen', 'A black ink pen, with yelow shell', 'I think I lost it at room 5b 213', 0, 0, '2020-02-12', '2020-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `test_command`
--

CREATE TABLE `test_command` (
  `ID` int(11) NOT NULL,
  `GG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(50) NOT NULL,
  `SURNAME` varchar(50) NOT NULL,
  `OFFICIAL_ID` int(11) NOT NULL,
  `CAMPUS` varchar(100) NOT NULL,
  `IPADDRESS` varchar(30) NOT NULL,
  `HOUSE_ADDRESS` varchar(50) NOT NULL,
  `ROLE` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `FIRSTNAME`, `SURNAME`, `OFFICIAL_ID`, `CAMPUS`, `IPADDRESS`, `HOUSE_ADDRESS`, `ROLE`, `DATE`, `TIME`) VALUES
(1, 'Joe', 'Biden', 108222938, 'North Campus', '10.122.2.5', '', 100, '2020-02-04', '2020-12-22'),
(2, 'Monica', 'Rose', 7522222, 'North Campus', '10.122.2.5', '', 20, '2020-02-04', '2020-12-22'),
(3, 'Jesica', 'Rowland', 1288888, 'South Campus', '10.122.2.5', '', 20, '2020-02-04', '2020-12-22'),
(4, 'Martin', 'Konti', 8222938, 'North Campus', '10.122.2.5', '', 10, '2020-02-04', '2020-12-22'),
(5, 'Aski', 'Miski', 8222938, 'North Campus', '10.122.2.5', '', 10, '2020-02-04', '2020-12-22'),
(6, 'John', 'James', 8222938, 'North Campus', '10.122.2.5', '', 10, '2020-02-04', '2020-12-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `claim_request`
--
ALTER TABLE `claim_request`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_cat` (`CLAIMER_ID`),
  ADD KEY `fk_cat2` (`APPROVED_BY`),
  ADD KEY `fk_cat_item` (`ITEM_ID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FOUND_BY` (`FOUND_BY`),
  ADD KEY `fk_cat_item_found2` (`POSTED_BY`);

--
-- Indexes for table `lost_report`
--
ALTER TABLE `lost_report`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_cat_lost_item` (`LOST_BY`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `claim_request`
--
ALTER TABLE `claim_request`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lost_report`
--
ALTER TABLE `lost_report`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `claim_request`
--
ALTER TABLE `claim_request`
  ADD CONSTRAINT `fk_cat` FOREIGN KEY (`CLAIMER_ID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `fk_cat2` FOREIGN KEY (`APPROVED_BY`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `fk_cat_item` FOREIGN KEY (`ITEM_ID`) REFERENCES `item` (`ID`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_cat_item_found2` FOREIGN KEY (`POSTED_BY`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`FOUND_BY`) REFERENCES `user` (`ID`);

--
-- Constraints for table `lost_report`
--
ALTER TABLE `lost_report`
  ADD CONSTRAINT `fk_cat_lost_item` FOREIGN KEY (`LOST_BY`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
