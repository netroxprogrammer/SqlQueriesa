-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 10:43 PM
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
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `senderUserId` int(11) NOT NULL,
  `message` text NOT NULL,
  `reciverUserId` int(11) NOT NULL,
  `numberOfComments` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `emailverify`
--

INSERT INTO `emailverify` (`id`, `userId`, `email`, `tokken`, `time`, `verify`) VALUES
(21, 50, 'netroxtech1122@gmail.com', 'gnitjUdm6i', '2016-11-07 15:40:02', 'yes'),
(22, 51, '01112001065026@skt.umt.edu.pk', '7zTehznnCV', '2016-11-14 21:18:49', 'yes'),
(23, 52, '01112001065026@skt.umt.edu.pk', 'jRpbTHv3Xq', '2016-11-14 21:18:49', 'yes');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `userId`, `userName`, `image`, `status`, `privacy`, `time`) VALUES
(1, 50, 'abdulah masood', 'upload/attachment_6dcab6e8f056dbf6899418f701da90a0.jpg', 'dsds', 'private', '2016-11-09 11:52:31'),
(2, 50, 'abdulah masood', 'upload/', 'dsdsssdsddd', 'private', '2016-11-09 12:45:06'),
(3, 50, 'abdulah masood', 'upload/attachment_161024031153.jpeg', 'hello abdulalh  my  papepr', 'private', '2016-11-09 12:51:43'),
(4, 50, 'abdulah masood', 'upload/Cheap-Web-hosting-In-Pakistan---t.jpg', 'ddsds', 'private', '2016-11-09 12:52:23'),
(5, 50, 'abdulah masood', 'upload/14618863_706264779549420_454534388_o.jpg', 'hello abdullah MAsood', 'public', '2016-11-09 13:11:58'),
(6, 50, 'abdulah masood', 'upload/Friend1.PNG', 'helo abdullah ', 'private', '2016-11-12 09:31:05'),
(7, 50, 'abdulah masood', 'upload/1.png', 'hellossss', 'private', '2016-11-12 09:31:20'),
(8, 0, '', '', '', '', '2016-11-13 08:14:29'),
(9, 0, '', '', '', '', '2016-11-13 08:14:29'),
(10, 0, '', '', '', '', '2016-11-13 08:14:30'),
(11, 0, '', '', '', '', '2016-11-13 08:14:30'),
(12, 0, '', '', '', '', '2016-11-13 08:14:30'),
(13, 0, '', '', '', '', '2016-11-13 08:14:30'),
(14, 0, '', '', '', '', '2016-11-13 08:14:30'),
(15, 0, '', '', '', '', '2016-11-13 08:16:36'),
(16, 0, '', '', '', '', '2016-11-13 08:16:50'),
(17, 0, '', '', '', '', '2016-11-13 08:16:52'),
(18, 0, '', '', '', '', '2016-11-13 08:17:02'),
(19, 0, '', '', '', '', '2016-11-13 08:17:02'),
(20, 0, '', '', '', '', '2016-11-13 08:17:02'),
(21, 0, '', '', '', '', '2016-11-13 08:17:02'),
(22, 0, '', '', '', '', '2016-11-13 08:17:02'),
(23, 0, '', '', '', '', '2016-11-13 08:17:02'),
(24, 50, 'abdulah masood', 'upload/Four_Poplars_2.jpg', 'sddsdsd', 'private', '2016-11-13 13:15:41'),
(25, 50, 'abdulah masood', 'upload/90dc8ec3-132a-4b47-b286-55cef6a89850.png', 'hello ', 'private', '2016-11-14 20:02:20'),
(26, 52, 'usman abdullah', 'upload/90dc8ec3-132a-4b47-b286-55cef6a89850.png', 'hi guyss,,,,.  ', 'private', '2016-11-14 21:31:47'),
(27, 52, 'usman abdullah', 'upload/', 'dsdsdsdsd', 'private', '2016-11-14 21:37:22');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `userId`, `Location`, `Address`, `profileImage`) VALUES
(2, 1, 'silakot', 'sialkot gohad pure', 'upload/14618863_706264779549420_454534388_o.jpg'),
(4, 52, 'Sialkot', 'panjab', 'upload/14980811_1120554241374892_8989480841722171117_n.jpg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `userId`, `program`, `studentBatch`, `semester`, `studentSection`, `courceName`, `courseBatch`, `courseSection`, `courseCode`) VALUES
(1, 35, 'BS:SE', '1', '1', 'A', 'Java', '1', 'A', 'b475'),
(2, 52, 'BS:SE', '2', '3', 'B', 'Programming', '1', 'A', '454b');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `password`, `userEmail`, `userRole`, `program`, `phoneNumber`, `BDate`, `BMonth`, `BYear`, `time`, `gender`) VALUES
(50, 'abdulah', 'masood', '123', 'netroxtech1122@gmail.com', 'student', '', '03042151706', '1', 'January', '1990', '2016-11-07 16:47:43', 'male'),
(52, 'usman', 'abdullah', '1234', '01112001065026@skt.umt.edu.pk', 'student', '', '03042151706', '1', 'January', '1990', '2016-11-14 21:27:17', 'male');

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
