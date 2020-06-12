-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2019 at 06:41 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zivicode`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(25) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `username`, `name`, `pass`, `email`, `level`) VALUES
(1, 'zivicode', 'zivi', 'f37f6766837c95e224b6e196cf3fce24', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `activation` varchar(32) DEFAULT NULL,
  `pp` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `birthday` date NOT NULL,
  `notel` int(13) NOT NULL,
  `language` varchar(30) NOT NULL,
  `education` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `username`, `fname`, `lname`, `email`, `pass`, `tgl_daftar`, `activation`, `pp`, `gender`, `birthday`, `notel`, `language`, `education`, `job`, `address`) VALUES
(1, 'user1', 'user', 'satu', 'patris@ius.ken', 'jokam354', '0000-00-00 00:00:00', '', '', '', '0000-00-00', 0, '', '', '', ''),
(12, 'dsada31', 'dssda', 'dsadas', 'user1@localhost', '$2y$04$OeHCCScRU2rtVcyb7pS9mOlIStH.RKFNEJrb57pk08SiOV.SWSk4O', '2018-08-01 16:48:24', NULL, '', 'male', '0000-00-00', 0, '', '', '', ''),
(13, 'sdada', 'dsasda', 'dsadsa', 'user2@localhost', '$2y$04$qeNwmgcVXL6Ai5eAu1zEhurpB25iuKU3Zh9iyf5mvnMR2rr8wjXVO', '2018-08-01 17:48:54', NULL, '', 'female', '0000-00-00', 0, '', '', '', ''),
(14, 'adsasd', 'dssad', 'dsasda', 'asdad@ds.adsas', '$2y$04$Z3n69LmeWby209w3qFvKm.ofnx/3ylO19aYTQ3KQh5R5Qs9yV8r5G', '2018-08-02 18:15:21', '3621f1454cacf995530ea53652ddf8fb', '', 'female', '0000-00-00', 0, '', '', '', ''),
(15, 'dsasdad', 'asddsa', 'dsasad', 'dasadsd@asdsda.adsasd', '$2y$04$H6EaxxOSaUeMBCNGSThx5u8eYjP9IqohC8Q/YX16TsO6RtJBFoZuu', '2018-08-02 18:16:12', '4b04a686b0ad13dce35fa99fa4161c65', '', 'female', '0000-00-00', 0, '', '', '', ''),
(16, 'dsadsa', 'dasasd', 'dsdsa', 'dsads@dsa.dasasd', '$2y$04$4z7NpWMOuTcxLFziEZQZJ.p/zFp/zHaWqDsUIxrzYhsvHh399z8Qq', '2018-08-02 18:21:59', '07c5807d0d927dcd0980f86024e5208b', '', 'female', '0000-00-00', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(150) NOT NULL,
  `post_description` text NOT NULL,
  `post_posting_date` datetime NOT NULL,
  `post_posting_by` int(11) NOT NULL,
  `post_status` enum('Publish','Hidden') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_category_id`, `post_title`, `post_slug`, `post_description`, `post_posting_date`, `post_posting_by`, `post_status`) VALUES
(9, 1, 'lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet.html', '<p><img alt=\"\" src=\"http://localhost/zivicode/assets/upload/images/save.jpg\" /></p>\r\n\r\n<p>dsadsasda das a s a dsa asd sad&nbsp;</p>\r\n', '2018-07-08 15:07:03', 1, 'Publish'),
(10, 1, 'lorem ipsom dolor sit amet2', 'lorem-ipsom-dolor-sit-amet2.html', '<p><img alt=\"\" src=\"http://localhost/zivicode/assets/upload/images/save.jpg\" xss=removed></p>\r\n\r\n<p>lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet </p>', '2018-07-15 17:40:37', 1, 'Publish'),
(11, 1, 'lorem ipsum dolor sit amet3', 'lorem-ipsum-dolor-sit-amet3.html', '<p><img alt=\"\" src=\"http://localhost/zivicode/assets/upload/images/save.jpg\" xss=removed></p>\r\n\r\n<p>lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet </p>', '2018-07-15 17:41:24', 1, 'Publish'),
(12, 1, 'lorem ipsum dolor sit amet 4', 'lorem-ipsum-dolor-sit-amet-4.html', '<p><img alt=\"\" src=\"http://localhost/zivicode/assets/upload/images/save.jpg\"></p>\r\n\r\n<p>lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet </p>', '2018-07-15 17:41:40', 1, 'Publish'),
(13, 1, 'lorem ipsum dolor sit amet 5', 'lorem-ipsum-dolor-sit-amet-5.html', '<p><img alt=\"\" src=\"http://localhost/zivicode/assets/upload/images/save.jpg\"></p>\r\n\r\n<p>lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet </p>', '2018-07-15 17:41:57', 1, 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `post_category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`post_category_id`, `category_name`, `category_description`) VALUES
(1, 'works', 'Some of recent works'),
(2, 'page', '<p>ini di edit lagi</p>\r\n'),
(3, 'kategori baru', 'deskripsi'),
(4, 'kategori 2', 'deskripsi 2');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_slug` varchar(255) NOT NULL,
  `project_description` text NOT NULL,
  `project_posting_date` datetime NOT NULL,
  `project_posting_by` int(11) NOT NULL,
  `project_status` enum('Publish','Hidden','Process','Finish') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_title`, `project_slug`, `project_description`, `project_posting_date`, `project_posting_by`, `project_status`) VALUES
(1, 'lorem ipsum dolor sit amet ', 'lorem-ipsum-dolor-sit-amet.html', 'lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet ', '2018-07-11 00:00:00', 1, 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id_tag` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id_tag`, `tag`, `project_id`) VALUES
(1, 'web', 1),
(2, 'mobile', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `news_posting_by` (`post_posting_by`),
  ADD KEY `news_category_id` (`post_category_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`post_category_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `project_posting_by` (`project_posting_by`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tag`),
  ADD KEY `project_id` (`project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `post_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_posting_by`) REFERENCES `admin` (`id_user`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`post_category_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`project_posting_by`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
