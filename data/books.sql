-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2018 at 04:05 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf16_bin NOT NULL,
  `author` varchar(50) COLLATE utf16_bin NOT NULL,
  `issued` datetime(6) NOT NULL,
  `pages` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `name`, `author`, `issued`, `pages`) VALUES
(1, 'Tom Soier', 'Mark Twain', '2018-06-07 12:23:35.000000', 200000),
(2, 'Robin Hood', 'John Dowe', '2018-06-07 14:31:40.000000', 300000),
(3, 'Vinety', 'Karl May', '2018-06-07 14:31:40.000000', 300000),
(4, 'The State', 'Plato', '2018-06-07 14:31:40.000000', 300000),
(5, 'For The Nature', 'Aristotle', '2018-06-07 14:31:40.000000', 300000),
(6, 'Topics', 'Aristotle', '2018-06-07 14:31:40.000000', 300000),
(7, 'Feder', 'Plato', '2018-06-07 14:31:40.000000', 300000),
(13, 'History of Western Philosophy', 'Bertrand Russel', '2018-06-07 14:31:40.000000', 300000),
(14, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(15, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(16, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(18, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(19, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(20, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(21, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(22, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(23, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(24, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(25, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(26, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(27, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(28, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(29, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(30, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(33, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(34, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(35, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(36, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(37, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000),
(38, 'Hegel and Aristotle The Enemies of Open Society', 'Karl Poper', '2018-06-07 14:31:40.000000', 300000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
