-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 03:26 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `showTrains` ()  SELECT * FROM train$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `trainNames` ()  SELECT sname FROM station$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `canc`
--

CREATE TABLE `canc` (
  `pnr` int(11) NOT NULL,
  `rfare` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canc`
--

INSERT INTO `canc` (`pnr`, `rfare`) VALUES
(57, 1100),
(58, 5600),
(59, 2200),
(63, 0),
(67, 4500);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cname` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cname`) VALUES
('AC1'),
('AC2'),
('AC3'),
('CC'),
('EC'),
('SL');

-- --------------------------------------------------------

--
-- Table structure for table `classseats`
--

CREATE TABLE `classseats` (
  `trainno` int(11) NOT NULL,
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `doj` date NOT NULL,
  `class` varchar(10) NOT NULL,
  `fare` int(11) NOT NULL,
  `seatsleft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classseats`
--

INSERT INTO `classseats` (`trainno`, `sp`, `dp`, `doj`, `class`, `fare`, `seatsleft`) VALUES
(6, 'mandya', 'sirsi', '2019-11-29', 'AC1', 77, 55),
(6, 'sirsi', 'banglore', '2019-11-29', 'AC1', 44, 6),
(12, 'banglore', 'Delhi', '2020-05-07', 'AC1', 344, 326),
(12, 'banglore', 'Delhi', '2020-05-17', 'AC1', 2750, 20),
(12, 'banglore', 'Delhi', '2020-05-17', 'AC3', 2350, 60),
(12, 'banglore', 'Delhi', '2020-05-17', 'EC', 1100, 120),
(12, 'banglore', 'Delhi', '2020-05-17', 'SL', 900, 180),
(12, 'chmragpura', 'mandya', '2020-05-07', 'AC1', 2200, 107),
(12, 'chmragpura', 'mandya', '2020-05-17', 'AC1', 3200, 20),
(12, 'chmragpura', 'mandya', '2020-05-17', 'AC3', 2400, 60),
(12, 'chmragpura', 'mandya', '2020-05-17', 'EC', 1200, 100),
(12, 'chmragpura', 'mandya', '2020-05-17', 'SL', 500, 200),
(12, 'mandya', 'mysore', '2020-05-07', 'AC1', 1434, 243),
(12, 'mandya', 'mysore', '2020-05-17', 'AC1', 2900, 15),
(12, 'mandya', 'mysore', '2020-05-17', 'AC3', 2100, 38),
(12, 'mandya', 'mysore', '2020-05-17', 'EC', 1500, 120),
(12, 'mandya', 'mysore', '2020-05-17', 'SL', 800, 250),
(12, 'mysore', 'banglore', '2020-05-07', 'AC1', 934, 322),
(12, 'mysore', 'banglore', '2020-05-17', 'AC1', 3100, 30),
(12, 'mysore', 'banglore', '2020-05-17', 'AC3', 1900, 30),
(12, 'mysore', 'banglore', '2020-05-17', 'EC', 1700, 150),
(12, 'mysore', 'banglore', '2020-05-17', 'SL', 700, 220),
(17, 'Delhi', 'mandya', '2020-10-05', 'AC1', 78997, 147899),
(17, 'Delhi', 'mandya', '2020-10-05', 'AC2', 51331, 65464),
(17, 'Delhi', 'mandya', '2020-10-05', 'AC3', 65, 653),
(17, 'Delhi', 'mandya', '2020-10-05', 'CC', 654654, 65454),
(17, 'Delhi', 'mandya', '2020-10-05', 'EC', 5454, 6545),
(17, 'Delhi', 'mandya', '2020-10-05', 'SL', 64564, 774),
(17, 'mandya', 'chmragpura', '2020-10-05', 'AC1', 789654, 6545),
(17, 'mandya', 'chmragpura', '2020-10-05', 'AC2', 7888, 8974),
(17, 'mandya', 'chmragpura', '2020-10-05', 'AC3', 8495, 789789),
(17, 'mandya', 'chmragpura', '2020-10-05', 'CC', 78948, 52),
(17, 'mandya', 'chmragpura', '2020-10-05', 'EC', 88, 54654),
(17, 'mandya', 'chmragpura', '2020-10-05', 'SL', 655, 55),
(18, 'chmragpura', 'mandya', '2020-05-12', 'AC1', 2420, 50),
(18, 'chmragpura', 'mandya', '2020-05-12', 'AC3', 1700, 20),
(18, 'chmragpura', 'mandya', '2020-05-12', 'CC', 750, 120),
(18, 'mandya', 'Delhi', '2020-05-12', 'AC1', 2750, 20),
(18, 'mandya', 'Delhi', '2020-05-12', 'AC3', 1200, 20),
(18, 'mandya', 'Delhi', '2020-05-12', 'CC', 900, 150),
(20, 'Delhi', 'mandya', '2019-11-30', 'AC1', 700, 45),
(20, 'Delhi', 'mandya', '2019-11-30', 'AC2', 890, 40),
(20, 'Delhi', 'mandya', '2019-11-30', 'AC3', 40, 75),
(20, 'Delhi', 'mandya', '2020-05-09', 'AC1', 4500, 20),
(20, 'Delhi', 'mandya', '2020-05-09', 'AC2', 3200, 48),
(20, 'Delhi', 'mandya', '2020-05-09', 'AC3', 2700, 50),
(20, 'Delhi', 'mandya', '2020-05-09', 'SL', 900, 300),
(27, 'Kodagu', 'banglore', '2019-11-30', 'AC1', 223, 12),
(27, 'Kodagu', 'banglore', '2019-11-30', 'AC2', 45, 49),
(27, 'Kodagu', 'banglore', '2019-11-30', 'AC3', 55, 70),
(27, 'Kodagu', 'banglore', '2020-10-05', 'AC1', 100, 101),
(27, 'Kodagu', 'banglore', '2020-10-05', 'AC2', 100, 100),
(27, 'Kodagu', 'banglore', '2020-10-05', 'AC3', 100, 100),
(27, 'Kodagu', 'banglore', '2020-10-05', 'CC', 210, 200),
(27, 'Kodagu', 'banglore', '2020-10-05', 'EC', 450, 210),
(27, 'Kodagu', 'banglore', '2020-10-05', 'SL', 44, 80);

--
-- Triggers `classseats`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_classseats` BEFORE INSERT ON `classseats` FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = 'Check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_classseats` BEFORE UPDATE ON `classseats` FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pd`
--

CREATE TABLE `pd` (
  `pnr` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `page` int(11) NOT NULL,
  `pgender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pd`
--

INSERT INTO `pd` (`pnr`, `pname`, `page`, `pgender`) VALUES
(0, 'adarsh', 23, 'M'),
(0, 'captain', 22, 'M'),
(0, 'chira', 25, 'F'),
(58, 'akhil', 20, 'M'),
(58, 'deepak', 21, 'M'),
(58, 'rahul', 12, 'M'),
(58, 'shyam', 50, 'M'),
(59, 'abhinav', 20, 'M'),
(59, 'vikas', 40, 'M'),
(60, 'mohan', 20, 'M'),
(61, 'pope', 50, 'M'),
(63, 'garages', 65, 'F'),
(63, 'mooris', 60, 'M'),
(65, 'Ford', 33, 'F'),
(65, 'Henry', 43, 'M'),
(66, 'Afridi', 77, 'F'),
(66, 'Chirag', 55, 'M'),
(66, 'Dhanush', 47, 'M'),
(67, 'AKASH', 20, 'M'),
(68, 'moon', 25, 'F'),
(68, 'Vighnesh', 20, 'F'),
(70, 'max', 25, 'M'),
(71, 'iron', 50, 'M'),
(71, 'man', 60, 'F'),
(71, 'Musk', 42, 'M'),
(71, 'pop', 25, 'M');

--
-- Triggers `pd`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_pd` BEFORE INSERT ON `pd` FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_pd` BEFORE UPDATE ON `pd` FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `resv`
--

CREATE TABLE `resv` (
  `pnr` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `trainno` int(11) NOT NULL,
  `sp` varchar(50) NOT NULL,
  `dp` varchar(50) NOT NULL,
  `doj` date NOT NULL,
  `tfare` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `nos` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resv`
--

INSERT INTO `resv` (`pnr`, `id`, `trainno`, `sp`, `dp`, `doj`, `tfare`, `class`, `nos`, `status`) VALUES
(51, 4, 12, 'chmragpura', 'mandya', '2020-05-07', 3300, 'AC1', 2, 'BOOKED'),
(57, 5, 12, 'chmragpura', 'mandya', '2020-05-07', 2200, 'AC1', 1, 'CANCELLED'),
(58, 6, 20, 'Delhi', 'mandya', '2020-05-09', 11200, 'AC2', 4, 'CANCELLED'),
(59, 10, 12, 'banglore', 'Delhi', '2020-05-17', 2200, 'EC', 2, 'CANCELLED'),
(61, 10, 20, 'Delhi', 'mandya', '2020-05-09', 6400, 'AC2', 2, 'BOOKED'),
(63, 21, 20, 'Delhi', 'mandya', '2020-05-09', 0, 'cc', 1, 'CANCELLED'),
(65, 21, 12, 'mandya', 'mysore', '2020-05-17', 4200, 'AC3', 2, 'BOOKED'),
(66, 21, 17, 'Delhi', 'mandya', '2020-10-05', 193692, 'SL', 3, 'BOOKED'),
(67, 24, 20, 'Delhi', 'mandya', '2020-05-09', 4500, 'AC1', 1, 'CANCELLED'),
(68, 24, 17, 'Delhi', 'mandya', '2020-10-05', 65, 'AC3', 1, 'BOOKED'),
(70, 21, 27, 'Kodagu', 'banglore', '2019-11-30', 45, 'AC2', 1, 'BOOKED'),
(71, 21, 6, 'Sirsi', 'banglore', '2019-11-29', 44, 'AC1', 1, 'BOOKED');

--
-- Triggers `resv`
--
DELIMITER $$
CREATE TRIGGER `after_insert_on_resv` AFTER INSERT ON `resv` FOR EACH ROW begin
UPDATE classseats SET seatsleft=seatsleft-new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_on_resv` AFTER UPDATE ON `resv` FOR EACH ROW begin
if (new.status='CANCELLED' AND datediff(new.doj,curdate())<0 ) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Cancellation Not Possible!!!!';
end if;

if (new.status='CANCELLED' AND datediff(new.doj,curdate())>0 )then
UPDATE classseats SET seatsleft=seatsleft+new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
 if datediff(new.doj,curdate())>=30 then 
 INSERT INTO canc values (new.pnr,new.tfare);
 end if;
 if datediff(new.doj,curdate())<30 then 
 INSERT INTO canc values (new.pnr,0.5*new.tfare);
 end if;
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_on_resv` BEFORE INSERT ON `resv` FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
if datediff(new.doj,curdate())<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Booking Not Possible!!!!';
end if;
SET new.status='BOOKED';
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_resv` BEFORE UPDATE ON `resv` FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `trainno` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_time` time NOT NULL DEFAULT '00:00:00',
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `trainno`, `sname`, `arrival_time`, `departure_time`, `distance`) VALUES
(1, 12, 'chmragpura', '01:00:12', '01:00:00', 0),
(2, 12, 'mandya', '03:45:15', '03:50:00', 100),
(3, 12, 'mysore', '05:00:00', '05:15:00', 300),
(4, 12, 'banglore', '11:50:10', '12:00:00', 450),
(5, 12, 'Delhi', '16:30:00', '16:30:00', 600),
(6, 13, 'kodagu', '22:00:00', '22:00:00', 0),
(7, 13, 'Delhi', '04:00:00', '04:05:00', 700),
(8, 13, 'Rajasthan', '07:30:50', '07:33:00', 900),
(9, 13, 'sirsi', '09:00:00', '09:10:00', 1700),
(10, 13, 'Patna', '11:45:00', '11:47:00', 2500),
(11, 13, 'Madhya Pradesh', '13:00:00', '13:00:00', 3600),
(12, 14, 'kodagu', '01:00:12', '01:00:12', 0),
(13, 14, 'Madras', '22:00:00', '22:00:00', 2500),
(14, 15, 'Delhi', '16:00:00', '16:00:00', 0),
(15, 15, 'mandya', '22:45:00', '22:45:00', 800),
(16, 16, 'mandya', '03:30:00', '03:30:00', 0),
(17, 16, 'Delhi', '09:30:00', '09:30:00', 800),
(18, 17, 'Delhi', '00:00:14', '00:00:14', 0),
(19, 17, 'mandya', '16:00:00', '16:10:00', 500),
(20, 17, 'chmragpura', '20:30:00', '20:30:00', 1200),
(21, 18, 'chmragpura', '08:05:00', '08:05:00', 0),
(22, 18, 'mandya', '10:15:00', '10:20:00', 700),
(23, 18, 'Delhi', '14:00:00', '14:00:00', 1200),
(24, 6, 'mandya', '03:30:00', '03:30:00', 0),
(25, 6, 'sirsi', '08:00:00', '08:15:00', 200),
(26, 6, 'banglore', '15:15:00', '15:15:00', 700),
(27, 19, 'banglore', '13:30:00', '13:30:00', 0),
(28, 19, 'sirsi', '20:00:00', '20:10:00', 300),
(29, 19, 'mandya', '05:15:00', '05:15:00', 700),
(30, 20, 'Delhi', '10:04:00', '10:04:00', 0),
(31, 20, 'mandya', '16:00:00', '16:00:00', 800),
(32, 21, 'mandya', '20:00:00', '20:00:00', 0),
(33, 21, 'Delhi', '10:00:00', '10:00:00', 800),
(34, 22, 'Delhi', '16:35:00', '16:35:00', 0),
(35, 22, 'Rajasthan', '20:00:00', '20:10:00', 1100),
(36, 22, 'Madhya Pradesh', '03:30:00', '03:33:00', 1500),
(37, 22, 'Mumbai', '09:00:00', '09:00:00', 2300),
(38, 23, 'Mumbai', '01:00:00', '01:00:00', 0),
(39, 23, 'Madhya Pradesh', '05:30:00', '05:40:00', 1500),
(40, 23, 'Rajasthan', '15:45:00', '15:50:00', 2000),
(41, 23, 'Delhi', '20:30:00', '20:30:00', 2300),
(42, 24, 'banglore', '05:59:00', '05:59:00', 0),
(43, 24, 'mysore', '09:30:00', '09:30:00', 150),
(44, 25, 'banglore', '19:55:00', '19:55:00', 0),
(45, 25, 'chmragpura', '20:00:00', '20:10:00', 15),
(46, 25, 'kodagu', '20:55:00', '20:55:00', 300),
(47, 26, 'banglore', '04:12:00', '04:12:00', 0),
(48, 26, 'Mumbai', '21:00:00', '20:20:00', 555),
(49, 26, 'Rajasthan', '04:52:00', '04:52:00', 741),
(50, 27, 'Kodagu', '00:59:00', '00:59:00', 0),
(51, 27, 'banglore', '03:59:00', '03:59:00', 150),
(52, 28, 'Madras', '01:12:00', '01:12:00', 0),
(53, 28, 'Patna', '20:00:00', '20:10:00', 350),
(54, 28, 'Kodagu', '22:10:00', '22:10:00', 450);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `sname`) VALUES
(1, 'chmragpura'),
(2, 'Delhi'),
(3, 'mandya'),
(4, 'banglore'),
(5, 'Mumbai'),
(6, 'Sirsi'),
(7, 'mysore'),
(8, 'Patna'),
(9, 'Madras'),
(10, 'Kodagu'),
(11, 'Rajasthan'),
(14, 'Manglore');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `trainno` int(11) NOT NULL COMMENT 'Train_no',
  `tname` varchar(50) NOT NULL COMMENT 'Train_name',
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `st` time NOT NULL COMMENT 'Arrival_Time',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `dt` time NOT NULL,
  `dd` varchar(10) DEFAULT NULL COMMENT 'Day',
  `distance` int(11) NOT NULL COMMENT 'Distance'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`trainno`, `tname`, `sp`, `st`, `dp`, `dt`, `dd`, `distance`) VALUES
(6, 'Ashram Express', 'mandya', '10:00:00', 'banglore', '21:30:00', 'Day 1', 700),
(12, 'Shatabdi Express', 'chmragpura', '01:00:12', 'Delhi', '16:30:00', 'Day 1', 600),
(13, 'chamundi Express', 'kodagu', '22:00:00', 'Madhya Pradesh', '13:00:00', 'Day2', 3600),
(14, 'mandya Mail Express', 'kodagu', '01:00:12', 'Madras', '22:00:00', 'Day 1', 2500),
(15, 'Delhi mandya Double Decker', 'Delhi', '16:00:00', 'mandya', '22:45:00', 'Day 1', 800),
(16, 'mandya Delhi Double Decker', 'mandya', '03:30:00', 'Delhi', '09:30:00', 'Day 1', 800),
(17, 'Delhi chmragpura Shatabdi', 'Delhi', '00:00:14', 'chmragpura', '20:30:00', 'Day 1', 1200),
(18, 'chmragpura Delhi Shatabdi', 'chmragpura', '08:05:00', 'Delhi', '14:00:00', 'Day 2', 1200),
(19, 'Ashram Express', 'banglore', '13:30:00', 'mandya', '05:15:00', 'Day 2', 700),
(20, 'Frontier Express', 'Delhi', '10:04:00', 'mandya', '16:00:00', 'Day 1', 800),
(21, 'Frontier Express', 'mandya', '20:00:00', 'Delhi', '10:00:00', 'Day 2', 800),
(22, 'Rajdhani Express', 'Delhi', '16:35:00', 'Mumbai', '09:00:00', 'Day 2 ', 2300),
(23, 'Rajdhani Express', 'Mumbai', '01:00:00', 'Delhi', '20:30:00', 'Day 1', 2300),
(24, 'chamundi express', 'banglore', '05:59:00', 'mysore', '09:30:00', 'Day1', 150),
(25, 'tippu express', 'banglore', '19:55:00', 'kodagu', '20:55:00', 'day 1', 300),
(26, 'RAMAYANA EXPRES', 'banglore', '04:12:00', 'Rajasthan', '04:52:00', 'day 3', 741),
(27, 'Rotunda Express', 'Kodagu', '00:59:00', 'banglore', '03:59:00', 'day 1', 150),
(28, 'Fun Express', 'Madras', '01:12:00', 'Kodagu', '22:10:00', 'day 1', 450);

--
-- Triggers `train`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_train` BEFORE INSERT ON `train` FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
if (new.dp=new.sp) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Same Starting & Destination Points not allowed';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_train` BEFORE UPDATE ON `train` FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `emailid`, `password`, `mobileno`, `dob`) VALUES
(6, 'akhilkumar@yahoo.co.in', 'akhil', '9872231234', '1994-03-04'),
(7, 'ayushjain@outlook.com', 'ayush', '9810150525', '1995-01-03'),
(8, 'aakashbharadwaj@yahoo.com', 'aakash', '9013452635', '1993-12-30'),
(10, 'abhinav@gmail.com', 'abhinav', '9876675567', '1991-01-01'),
(12, 'amanmalik@hotmail.com', 'aman', '9878876654', '1997-09-08'),
(20, 'chirag@nsitonline.com', 'chirag', '9123456789', '1960-06-02'),
(21, 'adarsh@gmail.com', 'adarsh', '147852369', '1953-05-10'),
(23, 'harshith@gmail.com', 'harshith', '912345678', '1985-05-21'),
(24, 'akash@gmail.com', 'dhanush', '8310938177', '1989-10-12'),
(27, 'dhanush@gmail.com', 'dhanush', '369852147', '1999-05-01'),
(28, 'ambi@gmail.com', 'ambi', '922454545', '1985-06-02'),
(30, 'rajeshd@gmail.com', 'harshith', '9854898548', '1999-03-06'),
(31, 'karthik@gmail.com', 'karthik', '1111111111', '1985-10-12'),
(33, 'admin', 'admin', '123456', '1999-12-22'),
(34, 'prajwal@gmail.com', 'prajwal', '9876598765', '1999-12-12'),
(37, 'rakesh@gmail.com', 'rakesh', '9090909090', '1999-09-09'),
(39, 'ramesh@gmail.com', 'ramesh', '9483808080', '1985-05-12');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_user` BEFORE INSERT ON `user` FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_user` BEFORE UPDATE ON `user` FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canc`
--
ALTER TABLE `canc`
  ADD PRIMARY KEY (`pnr`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cname`);

--
-- Indexes for table `classseats`
--
ALTER TABLE `classseats`
  ADD PRIMARY KEY (`trainno`,`sp`,`dp`,`doj`,`class`),
  ADD KEY `class` (`class`),
  ADD KEY `sp` (`sp`,`dp`),
  ADD KEY `dp` (`dp`);

--
-- Indexes for table `pd`
--
ALTER TABLE `pd`
  ADD PRIMARY KEY (`pnr`,`pname`,`page`,`pgender`);

--
-- Indexes for table `resv`
--
ALTER TABLE `resv`
  ADD PRIMARY KEY (`pnr`),
  ADD UNIQUE KEY `UNIQUE` (`id`,`trainno`,`doj`,`status`),
  ADD UNIQUE KEY `pnr` (`pnr`,`id`,`trainno`,`doj`,`class`,`status`),
  ADD UNIQUE KEY `pnr_2` (`pnr`,`id`,`trainno`,`sp`,`dp`,`doj`,`tfare`,`class`,`nos`,`status`),
  ADD KEY `FK_ID` (`id`),
  ADD KEY `FK_TN_DOJ_C` (`trainno`,`doj`,`class`),
  ADD KEY `class` (`class`),
  ADD KEY `sp` (`sp`,`dp`),
  ADD KEY `dp` (`dp`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainno` (`trainno`),
  ADD KEY `sname` (`sname`),
  ADD KEY `id` (`id`),
  ADD KEY `distance` (`distance`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`sname`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`trainno`),
  ADD KEY `sp` (`sp`),
  ADD KEY `dp` (`dp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUEMN` (`mobileno`),
  ADD UNIQUE KEY `UNIQUEEI` (`emailid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resv`
--
ALTER TABLE `resv`
  MODIFY `pnr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `trainno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Train_no', AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classseats`
--
ALTER TABLE `classseats`
  ADD CONSTRAINT `classseats_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  ADD CONSTRAINT `classseats_ibfk_3` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `classseats_ibfk_4` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `classseats_ibfk_5` FOREIGN KEY (`class`) REFERENCES `class` (`cname`);

--
-- Constraints for table `resv`
--
ALTER TABLE `resv`
  ADD CONSTRAINT `resv_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  ADD CONSTRAINT `resv_ibfk_2` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `resv_ibfk_3` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
