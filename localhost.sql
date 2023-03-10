-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2023 at 08:13 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Dashboard`
--
CREATE DATABASE IF NOT EXISTS `Dashboard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Dashboard`;

-- --------------------------------------------------------

--
-- Table structure for table `Content`
--

CREATE TABLE `Content` (
  `Title` varchar(1000) NOT NULL,
  `Header` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Image` text NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Content`
--

INSERT INTO `Content` (`Title`, `Header`, `Description`, `Image`, `id`) VALUES
('how to coding', 'coding', 'this is lesson coding', './image/flower', 1),
('this is title', 'this is header', 'this is description', 'this is url', 17),
('af', 'hello', 'as', 'as', 18),
('wer', 'ewt', 'wer', 'ete', 19),
('the improtant of money', 'money ', 'this is description', './image', 20),
('the improtant of money', 'money ', 'this is description', './image', 21),
('in the year that has passed', 'Faint cracks emerge in the facade', 'Sun February 19, 2023', './image', 22),
('The portal to 1500s', 'the second world', 'this is portal to old', './image/portal', 23),
('The portal to 1500s', 'the second world', 'this is portal to old', './image/portal', 24),
('', '', '', '', 25),
('dj', 'flkaslf', 'lsjfa', 'asjf', 26),
('dj', 'flkaslf', 'lsjfa', 'asjf', 27),
('dj', 'flkaslf', 'lsjfa', 'asjf', 28),
('a', 'this is header', 'a', './image', 29),
('a', 'this is header', 'a', './image', 30),
('a', 'this is header', 'a', './image', 31),
('', 'av', '', '', 32),
('abc', 'abca', 'abc', 'abc', 33);

-- --------------------------------------------------------

--
-- Table structure for table `Profile`
--

CREATE TABLE `Profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `header` varchar(30) NOT NULL,
  `Description` text NOT NULL,
  `image` text NOT NULL,
  `TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Profile`
--

INSERT INTO `Profile` (`id`, `header`, `Description`, `image`, `TIME`) VALUES
(1, 'Your Profile Official', 'this is profile', 'https://i.pinimg.com/originals/f1/0f/f7/f10ff70a7155e5ab666bcdd1b45b726d.jpg', '2023-02-22 00:14:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Content`
--
ALTER TABLE `Content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Profile`
--
ALTER TABLE `Profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Content`
--
ALTER TABLE `Content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `Profile`
--
ALTER TABLE `Profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `Lesson`
--
CREATE DATABASE IF NOT EXISTS `Lesson` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Lesson`;

-- --------------------------------------------------------

--
-- Table structure for table `Crash_course`
--

CREATE TABLE `Crash_course` (
  `Title` varchar(500) NOT NULL,
  `Header` varchar(500) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` longtext NOT NULL,
  `Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Crash_course`
--

INSERT INTO `Crash_course` (`Title`, `Header`, `Description`, `Image`, `Id`) VALUES
('javascript basics', 'what is JavaScript?', ' This is similar to what we did using CSS selectors. When you want to do something to an element, you need to select it first.To give you a better understanding of how JavaScript works, let\'s explain some of the core features of the language. It\'s worth noting that these features are common to all programming languages. If you master these fundamentals, you have a head start on coding in other languages too!A semicolon at the end of a line indicates where a statement ends. It is only required when you need to separate statements on a single line. However, some people believe it\'s good practice to have semicolons at the end of each statement. There are other rules for when you should and shouldn\'t use semicolons. For more details, see Your Guide to Semicolons in JavaScript.The expression inside the if () is the test. This uses the strict equality operator (as described above) to compare the variable iceCream with the string chocolate to see if the two are equal. If this comparison returns true, the first block of code runs. If the comparison is not true, the second block of code???after the else statement???runs instead.The expression inside the if () is the test. This uses the strict equality operator (as described above) to compare the variable iceCream with the string chocolate to see if the two are equal. If this comparison returns true, the first block of code runs. If the comparison is not true, the second block of code???after the else statement???runs instead.The expression inside the if () is the test. This uses the strict equality operator (as described above) to compare the variable iceCream with the string chocolate to see if the two are equal. If this comparison returns true, the first block of code runs. If the comparison is not true, the second block of code???after the else statement???runs instead.The expression inside the if () is the test. This uses the strict equality operator (as described above) to compare the variable iceCream with the string chocolate to see if the two are equal. If this comparison returns true, the first block of code runs. If the comparison is not true, the second block of code???after the else statement???runs instead.', 'data:image/png;base64,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', 15),
('Lesson CSS stylesheet', 'CSS: Cascading Style Sheets', 'Cascading Style Sheets (CSS) is a stylesheet language used to describe the presentation of a document written in HTML or XML (including XML dialects such as SVG, MathML or XHTML). CSS describes how elements should be rendered on screen, on paper, in speech, or on other media.  CSS is among the core languages of the open web and is standardized across Web browsers according to W3C specifications. Previously, the development of various parts of CSS specification was done synchronously, which allowed the versioning of the latest recommendations. You might have heard about CSS1, CSS2.1, or even CSS3. There will never be a CSS3 or a CSS4; rather, everything is now CSS without a version number.After CSS 2.1, the scope of the specification increased significantly and the progress on different CSS modules started to differ so much, that it became more effective to develop and release recommendations separately per module. Instead of versioning the CSS specification, W3C now periodically takes a snapshot of the latest stable state of the CSS specification and individual modules progress. CSS modules now have version numbers, or levels, such as CSS Color Module Level 5.This module carries on where CSS first steps left off ??? now you\'ve gained familiarity with the language and its syntax, and got some basic experience with using it, it\'s time to dive a bit deeper. This module looks at the cascade and inheritance, all the selector types we have available, units, sizing, styling backgrounds and borders, debugging, and lots more.\r\n\r\nThe aim here is to provide you with a toolkit for writing competent CSS and help you understand all the essential theory, before moving on to more specific disciplines like text styling and CSS layout.\r\n', 'data:image/jpeg;base64,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', 16),
('javascript basics', 'what is JavaScript?', ' This is similar to what we did using CSS selectors. When you want to do something to an element, you need to select it first.', 'data:image/png;base64,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', 17),
('HTML LESSON GUIDE', 'HTML for Absolute Beginners', 'While many guides on the internet attempt to teach HTML using a lot of mind-boggling theory, this tutorial will instead focus on giving you the practical skills to build your first site.  The aim is to show you ???how??? to create your first web page without spending the entire tutorial focusing too much on the ???why.???  By the end of this tutorial, you will have the know-how to create a basic website and we hope that this will inspire you to delve further into the world of HTML using our follow-on guides', 'https://html.com/wp-content/uploads/html-hpg-featured-new.png', 19),
('PHP Lesson Guide', '', '', '', 20),
('PYTHON FRAMEWORK', 'this is python', 'python', '', 21);

-- --------------------------------------------------------

--
-- Table structure for table `Guest_view`
--

CREATE TABLE `Guest_view` (
  `id` int(10) UNSIGNED NOT NULL,
  `when_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Guest_view`
--

INSERT INTO `Guest_view` (`id`, `when_create`) VALUES
(1, '2023-02-21 11:33:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Crash_course`
--
ALTER TABLE `Crash_course`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Guest_view`
--
ALTER TABLE `Guest_view`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Crash_course`
--
ALTER TABLE `Crash_course`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Guest_view`
--
ALTER TABLE `Guest_view`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `User`
--
CREATE DATABASE IF NOT EXISTS `User` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `User`;

-- --------------------------------------------------------

--
-- Table structure for table `User_input`
--

CREATE TABLE `User_input` (
  `Username` varchar(20) NOT NULL,
  `Firstname` varchar(20) NOT NULL,
  `Lastname` varchar(20) NOT NULL,
  `Age` varchar(3) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `pw` varchar(50) NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `when-create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User_input`
--

INSERT INTO `User_input` (`Username`, `Firstname`, `Lastname`, `Age`, `Email`, `pw`, `ID`, `when-create`) VALUES
('pdf', 'sdgf', '', '', '', '', 38, '2023-02-21 15:26:49'),
('East', 'Soy', 'Tet', '21', 'Easti4419@gmail.com', 'Easti@1449', 39, '2023-02-21 16:15:03'),
('Hacker', 'Apple', 'SamSung', '99', 'Hacker@gmail.com', '01010101', 40, '2023-02-21 16:25:37'),
('khode', 'icloude', 'isky', '15', 'khode@gmail.com', 'Khode@2023', 41, '2023-02-21 17:24:12'),
('East', 'sfs', 'df', '34', 'lkfja', '0101', 42, '2023-02-21 17:26:31'),
('sf', 'sdf', 'sdf', '23', 'asfd', 'sdf', 43, '2023-02-21 17:42:24'),
('Coder', 'soy', 'tet', '21', 'Coder@gmail.com', 'Easti1449', 44, '2023-02-21 18:27:59'),
('Mood', 'Poat', 'Malone', '45', 'Postmalone@gmail.com', 'Goodbye', 45, '2023-02-21 18:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `User_login`
--

CREATE TABLE `User_login` (
  `id` int(10) UNSIGNED NOT NULL,
  `Username` varchar(50) NOT NULL,
  `pw` varchar(50) NOT NULL,
  `when-create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User_login`
--

INSERT INTO `User_login` (`id`, `Username`, `pw`, `when-create`) VALUES
(1, '', '', '2023-02-21 15:56:28'),
(2, '-45', '', '2023-02-21 15:57:54'),
(3, 'Easti', 'Easti@1449', '2023-02-21 16:15:29'),
(4, 'Easti', 'Easti@1449', '2023-02-21 16:16:43'),
(5, 'sdfg', 'safd', '2023-02-21 16:23:11'),
(6, '', '', '2023-02-21 16:23:37'),
(7, 'sdg', '', '2023-02-21 16:23:41'),
(8, 'dfg', 'dfg', '2023-02-21 16:23:46'),
(9, 'Easti', '1449', '2023-02-21 16:23:55'),
(10, 'East', 'Easti@1449', '2023-02-21 16:24:06'),
(11, 'sadfsa', 'g', '2023-02-21 16:25:44'),
(12, 'Hacker', '01010101', '2023-02-21 16:26:00'),
(13, '', '', '2023-02-21 16:27:16'),
(14, '', '', '2023-02-21 16:27:17'),
(15, '', '', '2023-02-21 16:27:17'),
(16, '', '', '2023-02-21 16:27:17'),
(17, '', '', '2023-02-21 16:27:17'),
(18, '', '', '2023-02-21 16:27:21'),
(19, '', '', '2023-02-21 16:32:16'),
(20, 'sgfd', 'sg', '2023-02-21 17:04:31'),
(21, 'Hacker', '01010101', '2023-02-21 17:04:45'),
(22, '', '', '2023-02-21 17:06:06'),
(23, '', '', '2023-02-21 17:06:08'),
(24, '', '', '2023-02-21 17:06:09'),
(25, '', '', '2023-02-21 17:06:09'),
(26, '', '', '2023-02-21 17:06:09'),
(27, '', '', '2023-02-21 17:06:09'),
(28, '', '', '2023-02-21 17:06:09'),
(29, 'dfg', '', '2023-02-21 17:06:14'),
(30, 'dfg', 'dfg', '2023-02-21 17:06:18'),
(31, '', '', '2023-02-21 17:06:20'),
(32, '', '', '2023-02-21 17:06:21'),
(33, '', '', '2023-02-21 17:06:21'),
(34, '', '', '2023-02-21 17:06:21'),
(35, '', '', '2023-02-21 17:06:21'),
(36, '', '', '2023-02-21 17:06:21'),
(37, 'East', 'Easti@1449', '2023-02-21 17:06:30'),
(38, '', '', '2023-02-21 17:13:11'),
(39, '', '', '2023-02-21 17:13:12'),
(40, '', '', '2023-02-21 17:13:13'),
(41, '', '', '2023-02-21 17:13:13'),
(42, '', '', '2023-02-21 17:13:13'),
(43, '', '', '2023-02-21 17:13:13'),
(44, '', '', '2023-02-21 17:15:43'),
(45, '', '', '2023-02-21 17:15:44'),
(46, '', '', '2023-02-21 17:15:45'),
(47, '', '', '2023-02-21 17:15:45'),
(48, '', '', '2023-02-21 17:15:45'),
(49, '', '', '2023-02-21 17:15:45'),
(50, '', '', '2023-02-21 17:15:45'),
(51, '', '', '2023-02-21 17:15:45'),
(52, '', '', '2023-02-21 17:15:46'),
(53, '', '', '2023-02-21 17:15:46'),
(54, '', '', '2023-02-21 17:15:46'),
(55, '', '', '2023-02-21 17:15:47'),
(56, '', '', '2023-02-21 17:15:48'),
(57, '', '', '2023-02-21 17:20:34'),
(58, '', '', '2023-02-21 17:20:44'),
(59, '', '', '2023-02-21 17:21:03'),
(60, '', '', '2023-02-21 17:31:20'),
(61, 'asdf', '', '2023-02-21 17:31:28'),
(62, 'Hacker', '01010101', '2023-02-21 17:32:41'),
(63, '', '', '2023-02-21 17:32:56'),
(64, '', '', '2023-02-21 17:32:57'),
(65, '', '', '2023-02-21 17:32:57'),
(66, '', '', '2023-02-21 17:32:57'),
(67, '', '', '2023-02-21 17:32:57'),
(68, '', '', '2023-02-21 17:32:57'),
(69, '', '', '2023-02-21 17:32:57'),
(70, '', '', '2023-02-21 17:32:57'),
(71, '', '', '2023-02-21 17:32:57'),
(72, '', '', '2023-02-21 17:32:58'),
(73, '', '', '2023-02-21 17:32:58'),
(74, '', '', '2023-02-21 17:32:58'),
(75, '', '', '2023-02-21 17:32:58'),
(76, '', '', '2023-02-21 17:32:58'),
(77, '', '', '2023-02-21 17:32:58'),
(78, '', '', '2023-02-21 17:32:58'),
(79, '', '', '2023-02-21 17:32:59'),
(80, '', '', '2023-02-21 17:32:59'),
(81, '', '', '2023-02-21 17:32:59'),
(82, '', '', '2023-02-21 17:32:59'),
(83, '', '', '2023-02-21 17:32:59'),
(84, '', '', '2023-02-21 17:32:59'),
(85, 'afas', 'fsdf', '2023-02-21 17:33:06'),
(86, 'East', 'Easti@1449', '2023-02-21 17:33:18'),
(87, 'Hacker', '01010101', '2023-02-21 17:40:29'),
(88, 'Hacker', '01010101', '2023-02-21 17:41:09'),
(89, 'Hacker', '01010101', '2023-02-21 18:55:09'),
(90, 'Hacker', '01010101', '2023-02-21 18:55:46'),
(91, 'East', 'Easti@1449', '2023-02-21 18:59:36'),
(92, 'Hacker', '01010101', '2023-02-21 19:03:45'),
(93, '', '', '2023-02-21 19:03:50'),
(94, 'Hacker', '01010101', '2023-02-21 20:45:11'),
(95, 'Hacker', '01010101', '2023-02-21 21:12:34'),
(96, '', '', '2023-02-21 21:12:37'),
(97, 'Hacker', '01010101', '2023-02-21 21:17:33'),
(98, 'Hacker', '01010101', '2023-02-21 21:23:51'),
(99, 'sf', 'sdf', '2023-02-21 21:25:56'),
(100, 'ldjg', 'lkdfg', '2023-02-21 21:26:12'),
(101, ';dkgf;', ';dflkg', '2023-02-21 21:26:19'),
(102, 'Hacker', '01010101', '2023-02-21 21:26:31'),
(103, 'Hacker', '01010101', '2023-02-21 21:27:52'),
(104, 'Hacker', '01010101', '2023-02-21 21:38:49'),
(105, '', '', '2023-02-21 21:38:50'),
(106, 'East', 'Easti@1449', '2023-02-21 21:40:38'),
(107, 'Hacker', '01010101', '2023-02-21 21:40:54'),
(108, 'Mood', 'goodbye', '2023-02-21 21:46:03'),
(109, 'Hacker', '01010101', '2023-02-21 21:54:20'),
(110, 'Hacker', 'lsf', '2023-02-21 21:56:34'),
(111, 'Hacker', '01010101', '2023-02-21 21:56:48'),
(112, 'Hacker', '01010101', '2023-02-21 22:07:48'),
(113, 'Hacker', '01010101', '2023-02-22 09:20:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `User_input`
--
ALTER TABLE `User_input`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `User_login`
--
ALTER TABLE `User_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `User_input`
--
ALTER TABLE `User_input`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `User_login`
--
ALTER TABLE `User_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- Database: `View`
--
CREATE DATABASE IF NOT EXISTS `View` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `View`;

-- --------------------------------------------------------

--
-- Table structure for table `Dashboard_view`
--

CREATE TABLE `Dashboard_view` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `pw` varchar(50) NOT NULL,
  `when_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Dashboard_view`
--

INSERT INTO `Dashboard_view` (`id`, `username`, `pw`, `when_create`) VALUES
(1, 'East', 'Easti@1449', '2023-02-21 10:44:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Dashboard_view`
--
ALTER TABLE `Dashboard_view`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Dashboard_view`
--
ALTER TABLE `Dashboard_view`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
