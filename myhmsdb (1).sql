-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2022 at 07:59 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(12, 14, 'Devi', 'Bhattarai', 'Female', 'devi@gmail.com', '9844226793', 'Dinesh', 700, '2022-06-21', '12:00:00', 1, 0),
(12, 15, 'Devi', 'Bhattarai', 'Female', 'devi@gmail.com', '9844226793', 'Kumar', 800, '2022-06-23', '10:00:00', 1, 1),
(13, 16, 'Prama', 'Pandit', 'Female', 'prama@gmail.com', '9807478780', 'Abbis', 1500, '2022-07-01', '12:00:00', 1, 1),
(13, 17, 'Prama', 'Pandit', 'Female', 'prama@gmail.com', '9807478780', 'Amit', 1000, '2022-06-16', '16:00:00', 1, 0),
(14, 18, 'Santoshi ', 'Lamichhane', 'Female', 'santoshi@gmail.com', '9807478780', 'Dinesh', 700, '2022-06-16', '08:00:00', 1, 1),
(13, 19, 'Prama', 'Pandit', 'Female', 'prama@gmail.com', '9807478780', 'Bijay Poudel', 1800, '2022-06-23', '08:00:00', 1, 1),
(15, 20, 'Bijay', 'Poudel', 'Female', 'bijay@gmail.com', '9844226793', 'Amit', 1000, '2022-06-10', '12:00:00', 1, 1),
(16, 21, 'saugat', 'bhusal', 'Male', 'saugat@gmail.com', '9844226793', 'Amit', 1000, '2022-06-23', '10:00:00', 1, 1),
(12, 22, 'Devi', 'Bhattarai', 'Female', 'devi@gmail.com', '9844226793', 'Kumar', 800, '2022-06-25', '08:00:00', 1, 1),
(12, 23, 'Devi', 'Bhattarai', 'Female', 'devi@gmail.com', '9844226793', 'Abbis', 1500, '2022-06-16', '10:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `contact`, `message`) VALUES
(10, 'Devi Bhattarai', 'devi@gmail.com', '9844226793', 'Thank You!!!'),
(11, 'Prama Pandit', 'prama@gmail.com', '9807478780', 'Good Services');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Abbis', 'abbis123', 'abbis@gmail.com', 'Neurologist', 1500),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 600),
('ashok', 'ashok123', 'ashok@gmail.com', 'General', 500),
('Bijay Poudel', 'bijay123', 'bijay@gmail.com', 'Neurologist', 10000),
('Dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('Ganesh', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', 550),
('Keshav Adhikari', 'keshav123', 'keshav@gmail.com', 'Neurologist', 80000),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Ram Gupta', 'ram123', 'ram@gmail.com', 'General', 1000),
('Tiwary', 'tiwary123', 'tiwary@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(12, 'Devi', 'Bhattarai', 'Female', 'devi@gmail.com', '9844226793', 'devi123', 'devi123'),
(13, 'Prama', 'Pandit', 'Female', 'prama@gmail.com', '9807478780', 'prama123', 'prama123'),
(14, 'Santoshi ', 'Lamichhane', 'Female', 'santoshi@gmail.com', '9807478780', 'santoshi123', 'santoshi123'),
(15, 'Bijay', 'Poudel', 'Female', 'bijay@gmail.com', '9844226793', 'bijay123', 'bijay123'),
(16, 'saugat', 'bhusal', 'Male', 'saugat@gmail.com', '9844226793', 'saugat123', 'saugat123'),
(17, 'aakritee', 'sharma', 'Female', 'aakritee@gmail.com', '9844226793', 'aakritee123', 'aakritee123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Kumar', 12, 15, 'Devi', 'Bhattarai', '2022-06-23', '10:00:00', 'fever', 'Skin Dryness', 'Take some water'),
('Abbis', 13, 16, 'Prama', 'Pandit', '2022-07-01', '12:00:00', 'Cough', 'Neck', 'Take medicine on time'),
('Dinesh', 14, 18, 'Santoshi ', 'Lamichhane', '2022-06-16', '08:00:00', 'fever', 'skin', 'Take medicine at time');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctb`
--
ALTER TABLE `doctb`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `prestb`
--
ALTER TABLE `prestb`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pid` (`pid`),
  ADD KEY `doctor` (`doctor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD CONSTRAINT `appointmenttb_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patreg` (`pid`);

--
-- Constraints for table `prestb`
--
ALTER TABLE `prestb`
  ADD CONSTRAINT `prestb_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patreg` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
