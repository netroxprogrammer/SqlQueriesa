-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2016 at 01:52 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sasc`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5');

-- --------------------------------------------------------

--
-- Table structure for table `dateofbirth`
--

CREATE TABLE IF NOT EXISTS `dateofbirth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  `months` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE IF NOT EXISTS `days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dayName` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `dayName`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12');

-- --------------------------------------------------------

--
-- Table structure for table `emailverify`
--

CREATE TABLE IF NOT EXISTS `emailverify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tokken` varchar(150) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verify` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `emailverify`
--

INSERT INTO `emailverify` (`id`, `userId`, `email`, `tokken`, `time`, `verify`) VALUES
(21, 50, 'netroxtech1122@gmail.com', 'gnitjUdm6i', '2016-11-07 15:40:02', 'yes'),
(22, 51, '01112001065026@skt.umt.edu.pk', '7zTehznnCV', '2016-11-08 17:35:26', '');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE IF NOT EXISTS `month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monthName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `monthName`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userName` varchar(150) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `privacy` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`postId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `userId`, `userName`, `image`, `status`, `privacy`, `time`) VALUES
(1, 50, 'abdulah masood', 'upload/attachment_6dcab6e8f056dbf6899418f701da90a0.jpg', 'dsds', 'private', '2016-11-09 11:52:31'),
(2, 50, 'abdulah masood', 'upload/', 'dsdsssdsddd', 'private', '2016-11-09 12:45:06'),
(3, 50, 'abdulah masood', 'upload/attachment_161024031153.jpeg', 'hello abdulalh  my  papepr', 'private', '2016-11-09 12:51:43'),
(4, 50, 'abdulah masood', 'upload/Cheap-Web-hosting-In-Pakistan---t.jpg', 'ddsds', 'private', '2016-11-09 12:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `Location` text NOT NULL,
  `Address` text NOT NULL,
  `profileImage` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `userId`, `Location`, `Address`, `profileImage`) VALUES
(1, 1, 'silakot', 'sialkot gohad pure', 'upload/'),
(2, 1, 'silakot', 'sialkot gohad pure', 'upload/14618863_706264779549420_454534388_o.jpg'),
(3, 1, 'silakot', 'sialkot gohad pure', 'upload/'),
(4, 1, 'silakot', 'sialkot gohad pure', 'upload/'),
(5, 1, 'silakot', 'sialkot gohad pure', 'upload/'),
(6, 1, '', '', 'upload/'),
(7, 1, 'silakot', 'sialkot gohad pure', 'upload/'),
(8, 1, 'silakot', 'address', 'upload/'),
(9, 1, '', '', 'upload/13873178_1292030650824678_50254626756612510_n.jpg'),
(10, 1, '', '', 'upload/14618863_706264779549420_454534388_o.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE IF NOT EXISTS `programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programs` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `programs`) VALUES
(1, 'BS:SE'),
(2, 'BS:CS');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'student'),
(2, 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sections` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `sections`) VALUES
(1, 'A'),
(2, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `program` varchar(50) NOT NULL,
  `studentBatch` varchar(10) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `studentSection` varchar(10) NOT NULL,
  `courceName` varchar(50) NOT NULL,
  `courseBatch` varchar(10) NOT NULL,
  `courseSection` varchar(10) NOT NULL,
  `courseCode` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `userId`, `program`, `studentBatch`, `semester`, `studentSection`, `courceName`, `courseBatch`, `courseSection`, `courseCode`) VALUES
(1, 35, 'BS:SE', '1', '1', 'A', 'Java', '1', 'A', 'b475');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `teacherSkills` text NOT NULL,
  `teacherExpeirance` text NOT NULL,
  `teacherExtra` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `userId`, `teacherSkills`, `teacherExpeirance`, `teacherExtra`) VALUES
(1, 48, 'java,  android, ', '3  year old experience ', 'sdsddssds');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(150) NOT NULL,
  `lastName` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `userEmail` varchar(150) NOT NULL,
  `userRole` varchar(150) NOT NULL,
  `program` varchar(150) NOT NULL,
  `phoneNumber` varchar(150) NOT NULL,
  `BDate` varchar(150) NOT NULL,
  `BMonth` varchar(150) NOT NULL,
  `BYear` varchar(150) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(150) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `password`, `userEmail`, `userRole`, `program`, `phoneNumber`, `BDate`, `BMonth`, `BYear`, `time`, `gender`) VALUES
(50, 'abdulah', 'masood', '123', 'netroxtech1122@gmail.com', 'student', '', '03042151706', '1', 'January', '1990', '2016-11-07 16:47:43', 'male'),
(51, '123', '123', '123', '01112001065026@skt.umt.edu.pk', '', '', '123', '1', 'January', '1990', '2016-11-08 17:35:16', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE IF NOT EXISTS `years` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yearName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `yearName`) VALUES
(1, '1990'),
(2, '1991'),
(3, '1992'),
(4, '1993'),
(5, '1994'),
(6, '1995'),
(7, '1996'),
(8, '1997'),
(9, '1998');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
