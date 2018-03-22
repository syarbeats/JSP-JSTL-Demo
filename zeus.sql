-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2018 at 10:09 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeus`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(5) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `title`, `category`) VALUES
(1, 'Java Concurrency', 'Java'),
(2, 'Hibernate HQL ', 'Hibernate'),
(3, 'Spring MVC with Hibernate', 'Spring'),
(10, 'Enterprise Integration Pattern', 'Java Enterprise');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `author` varchar(45) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `married` varchar(10) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `smoker` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `lname`, `fname`, `age`, `sex`, `married`, `children`, `smoker`) VALUES
(1, 'Smith', 'Jane', 26, 'F', 'Y', 2, 'N'),
(2, 'Doe', 'John', 47, 'M', 'N', 0, 'Y'),
(3, 'Johnson', 'Michael', 36, 'M', 'Y', 0, 'N'),
(4, 'Brooks', 'Susan', 24, 'F', 'N', 1, 'Y'),
(5, 'Inman', 'Bernard', 34, 'M', 'N', 0, 'N'),
(6, 'Lincoln', 'Abrahan', 70, 'M', 't', 5, 't'),
(7, 'Lennon', 'John', 78, 'M', 'true', 2, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `country`) VALUES
(1, 'John Lennon', 'England');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(10) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `manuf` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `description`, `manuf`, `price`) VALUES
('p001', 'Product 1', 'ABC Manufacturing Co.', 75),
('p002', 'Product 2', 'ABC Manufacturing Co.', 33),
('p003', 'Product 3', 'ABC Manufacturing Co.', 26),
('p004', 'Product 4', 'ABC Manufacturing Co.', 37),
('p005', 'Product 5', 'ABC Manufacturing Co.', 13),
('p006', 'Product 6', 'ABC Manufacturing Co.', 17),
('p007', 'Product 7', 'ABC Manufacturing Co.', 89),
('p008', 'Product 8', 'ABC Manufacturing Co.', 12),
('p009', 'Product 9', 'ABC Manufacturing Co.', 22),
('p010', 'Product 10', 'ABC Manufacturing Co.', 65),
('p011', 'Product 11', 'ABC Manufacturing Co.', 78),
('p012', 'Product 12', 'ABC Manufacturing Co.', 45),
('p013', 'Product 13', 'ABC Manufacturing Co.', 44),
('p014', 'Product 14', 'ABC Manufacturing Co.', 33),
('p015', 'Product 15', 'ABC Manufacturing Co.', 55),
('p016', 'Product 16', 'ABC Manufacturing Co.', 56),
('p017', 'Product 17', 'ABC Manufacturing Co.', 23),
('p018', 'Product 18', 'ABC Manufacturing Co.', 22),
('p019', 'Product 19', 'ABC Manufacturing Co.', 78),
('p020', 'Product 20', 'ABC Manufacturing Co.', 34),
('p021', 'Product 21', 'ABC Manufacturing Co.', 14),
('p022', 'Product 22', 'ABC Manufacturing Co.', 21),
('p023', 'Product 23', 'ABC Manufacturing Co.', 89),
('p024', 'Product 24', 'ABC Manufacturing Co.', 99),
('p025', 'Product 25', 'ABC Manufacturing Co.', 39),
('p026', 'Product 26', 'ABC Manufacturing Co.', 24),
('p027', 'Product 27', 'ABC Manufacturing Co.', 28),
('p028', 'Product 28', 'ABC Manufacturing Co.', 81),
('p029', 'Product 29', 'ABC Manufacturing Co.', 36),
('p030', 'Product 30', 'ABC Manufacturing Co.', 28),
('p031', 'Product 31', 'ABC Manufacturing Co.', 90),
('p032', 'Product 32', 'ABC Manufacturing Co.', 30),
('p033', 'Product 33', 'ABC Manufacturing Co.', 25);

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `id` int(11) NOT NULL,
  `custID` int(11) NOT NULL,
  `prodID` int(11) NOT NULL,
  `premium` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `pwd` varchar(10) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `pwd`, `cust_id`) VALUES
('apatzer', 'apress', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `book_id_UNIQUE` (`book_id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
