-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 06:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catdes` varchar(255) NOT NULL,
  `catstatus` varchar(255) NOT NULL,
  `catdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`, `catdes`, `catstatus`, `catdate`) VALUES
(1, 'degsa', 'sae', '2', '2023-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `employeedata`
--

CREATE TABLE `employeedata` (
  `eid` int(11) NOT NULL,
  `efname` varchar(255) NOT NULL,
  `elname` varchar(255) NOT NULL,
  `eemail` varchar(255) NOT NULL,
  `epass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeedata`
--

INSERT INTO `employeedata` (`eid`, `efname`, `elname`, `eemail`, `epass`) VALUES
(1, 'ahtesham', 'arain', 'ahtesham@gmail.com', '$2y$10$6mPd9lPfD.0Gu.awOAnhUOpNQYwGX3LbLYosJkHNvm.ZuAERYZaPC'),
(2, 'umer', '', 'ahtesha@gmail.com', '$2y$10$ar/HYT6rIejETIljtzkDRuJPJqxlSn5WPs9rrjrqIOG9jGN4a7GVy'),
(3, 'Muhammad', '', 'mu@gmail.com', '$2y$10$D7Vos/ZqlVK1bNs39LCd9udzVDN1r1G2C0fIUfNS9SvWQpZ53akhO'),
(4, 'ahtesham', 'arain', 'ahtesham12@gmail.com', '$2y$10$VsDfSrP175YcpZnhwQQM6uyg.3OB2e1WEasIwHARBdS/A2GLUp9Um');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `pnumber` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pprice` int(255) NOT NULL,
  `pimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pnumber`, `pname`, `pprice`, `pimage`) VALUES
(3, 'Hb94580', 'handBag', 1200000, 'download.jfif'),
(4, 'sb-57935', 'shopping bag', 120000, 'download (1).jfif');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `fname`, `lname`, `email`, `password`) VALUES
(14, 'umer', 'choudry', 'ah@gmail.com', '$2y$10$YvwlmIX.dlT6f3IZlqd5HuPLjfHQJdB07GOkba24WuHXK/OkyfoEG'),
(15, 'khan', 'arain', 'ahtesham@gmail.com', '$2y$10$KkEkJLYbBD7KmoQDqtvjuukw1Hc.NbtDhKJr5zcDvEThnWQlnYhUW'),
(16, 'ahtesham', 'khan', 'ahtesham1@gmail.com', '$2y$10$fV8As/nL/3eubNotaBukFODw9WNaM4SbtDTso0edQcI/s9Kb/RYcm'),
(17, 'cgcjg', 'sgrs', 'ahtesham2@gmail.com', '$2y$10$WlyExLbYboKpl.CKR5mTKO.Du017EWrbahbwNUmNIxIbW0ruNzSje'),
(18, 'khan', 'umar', 'aht@gmail.com', '$2y$10$5Z8mJXLhqCMWjckqnjd.7Ok3icjVQfRvrzpiWq81iofzYxOxblj2a'),
(19, 'uaudqe', 'wvwvw', 'umar@gmail.com', '$2y$10$kkKYfHm5/uglslHqc11hH.Ux/cVxHqPdHXTmqD/HolScH63/6OOHW'),
(20, 'khan', 'av', 'wf@gmail.com', '$2y$10$m8QdGcrj/vRjoE9ImRfxmu23OUoE4WSrYk9Hpfva4shbW0F3iOP66');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `employeedata`
--
ALTER TABLE `employeedata`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employeedata`
--
ALTER TABLE `employeedata`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
