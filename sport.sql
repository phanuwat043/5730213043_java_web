-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 07:36 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sport`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CID` int(11) NOT NULL,
  `Cfname` varchar(100) NOT NULL,
  `Clname` varchar(100) NOT NULL,
  `Caddress` varchar(500) NOT NULL,
  `Ctel` varchar(10) NOT NULL,
  `Cemail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CID`, `Cfname`, `Clname`, `Caddress`, `Ctel`, `Cemail`) VALUES
(1, 'panuwat', 'buranapraphan', 'phuket', '0864927479', 'panuwat@gmail.com'),
(2, 'jatuwit', 'pitakdansakul', 'phuket', '0862548750', 'jatuwit@gmail.com'),
(3, 'sorasak', 'keawyaw', 'phuket', '0872588751', 'sorasak@gmail.com'),
(4, 'dang', 'dum', 'krabi', '0882588751', 'dangdum@gmail.com'),
(5, 'white', 'black', 'surattani', '0802588751', 'white@gmail.com'),
(6, 'panuwat', 'b', 'krabi', '0854715108', 'panuwat16692@gmail.com'),
(7, 'jatuwit', 'p', 'phuket', '02222222', 'jatuwit@gmail.com'),
(8, 'jatuwit', 'p', 'phuket', '02222222', 'jatuwit@gmail.com'),
(9, 'jatuwit', 'p', 'phuket', '0854715108', 'jatuwit@gmail.com'),
(10, 'panuwat', 'buranaprapan', 'krabi', '02222222', 'kusuma.dear7838@hotmail.com'),
(11, 'panuwat', 'buranaprapan', 'krabi', '02222222', 'kusuma.dear7838@hotmail.com'),
(13, 'panuwat', 'buranaprapan', 'krabi', '0854715108', 'panuwat16692@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `IDuser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `IDuser`) VALUES
('film', '12345', 1),
('nut', '12345', 2),
('baw', '12345', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PID` int(11) NOT NULL,
  `PTeam` varchar(100) NOT NULL,
  `PSize` varchar(5) NOT NULL,
  `PPrice` double NOT NULL,
  `PAmount` int(11) NOT NULL,
  `PColor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PID`, `PTeam`, `PSize`, `PPrice`, `PAmount`, `PColor`) VALUES
(5, 'Man u', 's', 1300, 10, 'red'),
(6, 'Liver pool', 's', 1300, 10, 'red'),
(7, 'Man City', 's', 1300, 10, 'blue'),
(8, 'Spur', 's', 1300, 10, 'white'),
(10, 'liver pool', 'S', 1200, 5, 'red'),
(11, 'liver pool', 'L', 1200, 5, 'red'),
(12, 'liver pool', 'S', 1200, 5, 'Black');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`IDuser`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `IDuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
