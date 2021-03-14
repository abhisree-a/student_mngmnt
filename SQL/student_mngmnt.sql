-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2021 at 05:06 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_mngmnt`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `email` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('abi@gmail.com', 'abi123'),
('baek@gmail.com', 'baek98'),
('euna@gmail.com', '123edf'),
('ahem@gmail.com', '08thi34');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `subjct` varchar(20) NOT NULL,
  `mark` int(10) NOT NULL,
  `exam_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`subjct`, `mark`, `exam_date`) VALUES
('English', 123, '2010-03-10'),
('Science', 199, '2010-03-16'),
('English', 200, '2021-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `student_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`student_name`, `email`, `pass`) VALUES
('abi', 'abi@gmail.com', 'abi123'),
('baek', 'baek@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `student_form`
--

DROP TABLE IF EXISTS `student_form`;
CREATE TABLE IF NOT EXISTS `student_form` (
  `student_name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_form`
--

INSERT INTO `student_form` (`student_name`, `email`, `dob`, `gender`) VALUES
('abi', 'abi@gmail.com', '1996-01-16', 'female'),
('baek', 'baek@gmail.com', '1999-03-25', 'male'),
('euna', 'euna12@gmail.com', '2000-02-20', 'female');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
