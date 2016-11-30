-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2016 at 09:40 AM
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
-- Table structure for table `addquizmarks`
--

CREATE TABLE IF NOT EXISTS `addquizmarks` (
  `quizId` int(11) NOT NULL AUTO_INCREMENT,
  `program` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `studentId` varchar(50) NOT NULL,
  `quizMarks` int(11) NOT NULL,
  `totalQuizMarks` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`quizId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `addquizmarks`
--

INSERT INTO `addquizmarks` (`quizId`, `program`, `section`, `batch`, `subject`, `studentId`, `quizMarks`, `totalQuizMarks`, `teacherId`, `type`, `semester`, `time`) VALUES
(2, '1', '1', '1', 'b475', '01112001065026', 9, 10, 54, 'quiz', 0, '2016-11-28 16:49:03'),
(3, '1', '1', '1', 'b475', '01112001065026', 9, 10, 54, 'quiz', 0, '2016-11-29 15:04:13'),
(4, '1', '1', '1', 'b475', '01112001065026', 9, 10, 54, 'quiz', 0, '2016-11-29 15:06:16'),
(5, '1', '1', '1', 'b475', '01112001065026', 9, 10, 54, 'quiz', 0, '2016-11-29 15:07:38'),
(6, '1', '1', '1', '454b', '01112001065026', 9, 10, 54, 'quiz', 1, '2016-11-29 15:09:32'),
(7, '1', '1', '1', 'b475', '01112001065026', 25, 30, 54, 'mid', 1, '2016-11-29 15:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `assgincourses`
--

CREATE TABLE IF NOT EXISTS `assgincourses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `program` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `courses` text NOT NULL,
  `code` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `assgincourses`
--

INSERT INTO `assgincourses` (`id`, `userId`, `program`, `name`, `email`, `courses`, `code`, `section`, `batch`, `time`) VALUES
(5, 55, '1', 'Salman Ali', '01113002065008@skt.umt.edu.pk', 'b475', 'b475', '1', '1', '2016-11-26 12:28:33');

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
-- Table structure for table `classnames`
--

CREATE TABLE IF NOT EXISTS `classnames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `classnames`
--

INSERT INTO `classnames` (`id`, `className`) VALUES
(1, 'B2:4'),
(2, 'B3:3');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentId`, `postId`, `senderUserId`, `message`, `reciverUserId`, `numberOfComments`, `time`) VALUES
(130, 50, 0, 'sddsdsd', 0, 0, '2016-11-15 16:11:11'),
(131, 50, 0, 'sddsdsd', 0, 0, '2016-11-15 16:11:14'),
(132, 50, 0, 'sddsdsd', 0, 0, '2016-11-15 16:11:16'),
(133, 50, 0, 'sddsdsd', 0, 0, '2016-11-15 16:11:18'),
(134, 50, 0, 'sddsdsd', 0, 0, '2016-11-15 16:11:36'),
(135, 50, 24, 'dsss', 0, 0, '2016-11-15 16:11:40'),
(136, 50, 25, 'amazing', 0, 0, '2016-11-15 16:11:57'),
(137, 50, 25, 'amazing', 0, 0, '2016-11-15 16:12:09'),
(138, 25, 50, 'amazing', 0, 0, '2016-11-15 16:13:27'),
(139, 6, 50, 'dssdsdsdsd', 0, 0, '2016-11-15 16:13:35'),
(140, 6, 50, 'dssdsdsdsd', 0, 0, '2016-11-15 16:13:35'),
(141, 6, 50, 'dssdsdsdsd', 0, 0, '2016-11-15 16:15:43'),
(142, 25, 50, 'hello ', 0, 0, '2016-11-15 20:32:42'),
(143, 25, 50, 'hello ', 0, 0, '2016-11-15 20:37:34'),
(144, 25, 50, 'sddsdsd', 0, 0, '2016-11-15 20:38:55'),
(145, 6, 50, 'ssss', 50, 0, '2016-11-15 20:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `code`) VALUES
(1, 'Java', 'b475'),
(2, 'Programming', '454b'),
(3, 'ComputerScience', '255');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `emailverify`
--

INSERT INTO `emailverify` (`id`, `userId`, `email`, `tokken`, `time`, `verify`) VALUES
(21, 50, 'netroxtech1122@gmail.com', 'gnitjUdm6i', '2016-11-07 15:40:02', 'yes'),
(24, 53, '01112001065026@skt.umt.edu.pk', 'ovXOO1VkBm', '2016-11-19 21:50:03', 'yes'),
(25, 54, '01113002065008@skt.umt.edu.pk', 'dtbDhGew5y', '2016-11-23 17:30:44', 'yes'),
(26, 55, 'umerMirza@gmail.com', '$wWS@#$DE', '2016-11-26 11:41:27', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'Untitled.txt',
  `mime` varchar(50) NOT NULL DEFAULT 'text/plain',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `mime`, `size`, `data`, `created`) VALUES
(5, 'attachment_f2ca38687270c785faed13444979b54e.doc', 'application/msword', 359936, 0x433a78616d7070096d70706870433146422e746d70, '2016-11-27 00:22:22'),
(6, 'DateSheet.docx', 'application/vnd.openxmlformats-officedocument.word', 202280, 0x433a78616d7070096d70706870364245312e746d70, '2016-11-27 00:23:05');

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
-- Table structure for table `otherusers`
--

CREATE TABLE IF NOT EXISTS `otherusers` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `email` text NOT NULL,
  `phoneNumber` text NOT NULL,
  `role` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `otherusers`
--

INSERT INTO `otherusers` (`userid`, `firstName`, `lastName`, `email`, `phoneNumber`, `role`) VALUES
(1, 'mirza', 'umer', 'mirzaUmer@gmail.com', '03042151706', 'coordinator');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

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
(16, 0, '', '', '', '', '2016-11-13 08:16:50'),
(25, 50, 'abdulah masood', 'upload/90dc8ec3-132a-4b47-b286-55cef6a89850.png', 'hello ', 'private', '2016-11-14 20:02:20'),
(26, 52, 'usman abdullah', 'upload/90dc8ec3-132a-4b47-b286-55cef6a89850.png', 'hi guyss,,,,.  ', 'private', '2016-11-14 21:31:47'),
(27, 52, 'usman abdullah', 'upload/', 'dsdsdsdsd', 'private', '2016-11-14 21:37:22'),
(28, 0, '', '', '', '', '2016-11-15 20:53:51'),
(29, 0, '', '', '', '', '2016-11-15 20:53:51'),
(30, 0, '', '', '', '', '2016-11-15 20:53:51'),
(31, 0, '', '', '', '', '2016-11-15 20:53:51'),
(32, 0, '', '', '', '', '2016-11-15 20:53:51'),
(33, 0, '', '', '', '', '2016-11-15 20:53:51'),
(34, 0, '', '', '', '', '2016-11-15 20:53:51'),
(35, 0, '', '', '', '', '2016-11-15 20:53:51'),
(36, 50, 'abdulah masood', 'upload/5.jpg', '45445', 'private', '2016-11-17 17:25:41'),
(37, 50, 'abdulah masood', 'upload/14980811_1120554241374892_8989480841722171117_n.jpg', 'hello. ', 'public', '2016-11-18 05:07:51'),
(38, 53, 'Bilal Anwar', 'upload/14045580_1210867392298375_2562313168030021515_n.jpg', 'please read', 'public', '2016-11-22 17:18:08'),
(39, 53, 'Bilal Anwar', 'upload/13873178_1292030650824678_50254626756612510_n.jpg', 'ggfg', 'public', '2016-11-22 18:50:48'),
(40, 53, 'Bilal Anwar', 'upload/13315366_1193991220619435_4648832023830460489_n.jpg', 'dfddf', 'private', '2016-11-22 18:55:57'),
(41, 53, 'Bilal Anwar', 'upload/14563431_1211591735566437_7225699296943201593_n.jpg', 'jhgjij', 'private', '2016-11-22 18:57:24'),
(42, 50, 'abdulah masood', 'upload/Friend3.PNG', '65765', 'private', '2016-11-22 18:59:34'),
(43, 50, 'abdulah masood', 'upload/certificate.jpg', 'my certificates', 'private', '2016-11-29 07:33:49'),
(44, 53, 'Bilal Anwar', 'upload/90dc8ec3-132a-4b47-b286-55cef6a89850.png', 'sdsddsd', 'public', '2016-11-29 07:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `poststatus`
--

CREATE TABLE IF NOT EXISTS `poststatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `numberOfLikes` int(11) NOT NULL DEFAULT '0',
  `numberOfDisLikes` int(11) NOT NULL DEFAULT '0',
  `senderId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=207 ;

--
-- Dumping data for table `poststatus`
--

INSERT INTO `poststatus` (`id`, `postId`, `userId`, `numberOfLikes`, `numberOfDisLikes`, `senderId`) VALUES
(174, 25, 0, 1, 0, 50),
(175, 25, 50, 1, 0, 50),
(176, 25, 50, 1, 0, 50),
(177, 7, 50, 1, 0, 50),
(178, 3, 50, 1, 0, 50),
(179, 1, 50, 1, 0, 50),
(180, 5, 50, 1, 0, 50),
(181, 4, 50, 1, 0, 50),
(182, 24, 50, 1, 0, 50),
(183, 25, 50, 1, 0, 50),
(184, 25, 50, 0, 1, 50),
(185, 25, 50, 0, 1, 50),
(186, 24, 50, 0, 1, 50),
(187, 36, 50, 1, 0, 50),
(188, 37, 50, 1, 0, 50),
(189, 38, 53, 1, 0, 53),
(190, 38, 53, 1, 0, 50),
(191, 38, 53, 1, 0, 50),
(192, 38, 53, 1, 0, 50),
(193, 38, 53, 1, 0, 50),
(194, 38, 53, 0, 1, 50),
(195, 38, 53, 1, 0, 50),
(196, 39, 53, 0, 1, 50),
(197, 39, 53, 1, 0, 50),
(198, 39, 53, 1, 0, 50),
(199, 39, 53, 1, 0, 50),
(200, 40, 53, 1, 0, 53),
(201, 40, 53, 1, 0, 50),
(202, 40, 53, 0, 1, 53),
(203, 41, 53, 1, 0, 53),
(204, 42, 50, 1, 0, 50),
(205, 43, 50, 1, 0, 50),
(206, 44, 53, 1, 0, 53);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `userId`, `Location`, `Address`, `profileImage`) VALUES
(2, 50, 'silakot', 'sialkot gohad pure', 'upload/14618863_706264779549420_454534388_o.jpg'),
(4, 52, 'Sialkot', 'panjab', 'upload/14980811_1120554241374892_8989480841722171117_n.jpg'),
(5, 53, 'sialkot', 'lahore', 'upload/Friend3.png'),
(6, 54, '', '', 'upload/');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'student'),
(2, 'teacher'),
(3, 'coordinator');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(11, '6'),
(12, '7'),
(13, '8'),
(14, '9'),
(15, '10');

-- --------------------------------------------------------

--
-- Table structure for table `semsters`
--

CREATE TABLE IF NOT EXISTS `semsters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numbers` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sendfriendrequest`
--

CREATE TABLE IF NOT EXISTS `sendfriendrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendId` int(11) NOT NULL,
  `senderId` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'no',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sendfriendrequest`
--

INSERT INTO `sendfriendrequest` (`id`, `friendId`, `senderId`, `status`, `time`) VALUES
(7, 50, 53, 'yes', '2016-11-22 17:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `studentnewsupdates`
--

CREATE TABLE IF NOT EXISTS `studentnewsupdates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `descreption` text NOT NULL,
  `batch` varchar(50) NOT NULL,
  `semester` varchar(150) NOT NULL,
  `program` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `studentnewsupdates`
--

INSERT INTO `studentnewsupdates` (`id`, `title`, `descreption`, `batch`, `semester`, `program`, `section`, `teacherId`, `time`) VALUES
(3, 'Java Quiz ', 'sdsds', '1', '1', '1', '1', 54, '2016-11-28 18:00:25');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `userId`, `program`, `studentBatch`, `semester`, `studentSection`, `courceName`, `courseBatch`, `courseSection`, `courseCode`) VALUES
(1, 35, 'BS:SE', '1', '1', 'A', 'Java', '1', 'A', 'b475'),
(2, 52, 'BS:SE', '2', '3', 'B', 'Programming', '1', 'A', '454b'),
(3, 53, 'BS:SE', '1', '1', 'A', 'ComputerScience', '1', 'A', '255');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `userId`, `teacherSkills`, `teacherExpeirance`, `teacherExtra`) VALUES
(1, 48, 'java,  android, ', '3  year old experience ', 'sdsddssds'),
(2, 54, 'java,test', 'dsds', 'dsdsdsdsd');

-- --------------------------------------------------------

--
-- Table structure for table `updatenews`
--

CREATE TABLE IF NOT EXISTS `updatenews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsMessage` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `updatenews`
--

INSERT INTO `updatenews` (`id`, `newsMessage`, `status`, `userId`, `time`) VALUES
(1, 'sdssssdsdsds dsdsdsd', '1', 55, '2016-11-26 17:46:48'),
(2, 'ssddddsdsd', '1', 55, '2016-11-26 17:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `uplaodlecture`
--

CREATE TABLE IF NOT EXISTS `uplaodlecture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `subject` varchar(50) NOT NULL,
  `program` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `lecture` longblob NOT NULL,
  `name` varchar(255) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `size` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `teacherId` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `uplaodlecture`
--

INSERT INTO `uplaodlecture` (`id`, `title`, `subject`, `program`, `batch`, `semester`, `section`, `lecture`, `name`, `mime`, `size`, `created`, `teacherId`, `time`) VALUES
(1, 'Java Lecture', 'b475', '1', '1', '1', '1', 0x433a78616d7070096d70706870324542462e746d70, 'acx_adb (1).sql', 'application/octet-stream', 22526, '2016-11-29 00:01:59', 54, '2016-11-28 19:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `uplaodtimetable`
--

CREATE TABLE IF NOT EXISTS `uplaodtimetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `code` varchar(150) NOT NULL,
  `classTime` varchar(150) NOT NULL,
  `className` varchar(150) NOT NULL,
  `teacher` varchar(150) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `batch` varchar(150) NOT NULL,
  `section` varchar(150) NOT NULL,
  `program` varchar(150) NOT NULL,
  `day` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `uplaodtimetable`
--

INSERT INTO `uplaodtimetable` (`id`, `userId`, `subject`, `code`, `classTime`, `className`, `teacher`, `teacherId`, `batch`, `section`, `program`, `day`, `time`) VALUES
(5, 55, 'b475', 'b475', '02:45:PM', '1', 'Salman Ali', 54, '1', '1', '1', '1', '2016-11-27 10:41:13');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `password`, `userEmail`, `userRole`, `program`, `phoneNumber`, `BDate`, `BMonth`, `BYear`, `time`, `gender`) VALUES
(50, 'abdulah', 'masood', '123', 'netroxtech1122@gmail.com', 'student', '', '03042151706', '1', 'January', '1990', '2016-11-07 16:47:43', 'male'),
(52, 'usman', 'abdullah', '1234', '01112001065026@skt.umt.edu.pk', 'student', '', '03042151706', '1', 'January', '1990', '2016-11-14 21:27:17', 'male'),
(53, 'Bilal', 'Anwar', '123', '01112001065026@skt.umt.edu.pk', 'student', '', '0302222', '1', 'January', '1990', '2016-11-19 21:50:46', 'male'),
(54, 'Salman', 'Ali', '123', '01113002065008@skt.umt.edu.pk', 'teacher', '', '030000000000', '3', 'April', '1994', '2016-11-23 17:30:53', 'male'),
(55, 'umer', 'Mirza', '123', 'umerMirza@gmail.com', 'coordinator', '', '03042151706', '', '', '', '2016-11-23 18:38:38', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `weakdays`
--

CREATE TABLE IF NOT EXISTS `weakdays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `weakdays`
--

INSERT INTO `weakdays` (`id`, `name`) VALUES
(1, 'Sunday'),
(2, 'Monday'),
(3, 'Tuesday'),
(4, 'Wednesday'),
(5, 'Thursday'),
(6, 'Friday'),
(7, 'Saturday');

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
