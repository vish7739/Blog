-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 03:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `number` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `name`, `number`, `password`) VALUES
(1, 'Admin', '9087866', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `userid` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `usercontent` varchar(3000) NOT NULL,
  `userupload` varchar(500) NOT NULL,
  `uploadates` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `userid`, `username`, `usercontent`, `userupload`, `uploadates`) VALUES
(36, 14, 'admin2', '<p>This is a first blog post from userAdmin2&nbsp;</p>', 'fileuploads/668690d4d9b591.16901509.jpg', '2024-07-04'),
(37, 14, 'admin2', '<p>this is a second post from admin2</p>', 'fileuploads/6686936e940029.38689101.jpeg', '2024-07-04'),
(38, 17, 'admin3', '<p>hi this is content from admin3</p>', 'fileuploads/668693db950fa3.19797321.jpg', '2024-07-04'),
(39, 18, 'admin4', '<p>this is a video post content fro admin4</p>', 'fileuploads/6686940f50fea6.17191063.mp4', '2024-07-04'),
(42, 11, 'admin1', '<p>This is a blog content</p>', 'fileuploads/6689276526c027.16746176.png', '2024-07-06'),
(43, 11, 'admin1', '<p>This is a blog content 2</p>', 'fileuploads/66892773ea3477.90491183.jpg', '2024-07-06'),
(44, 18, 'admin4', '<p>This is a blog content from admin4</p>', 'fileuploads/66892b8fef97a2.52665408.png', '2024-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userimage` varchar(500) NOT NULL,
  `userstatus` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`id`, `name`, `phone`, `email`, `password`, `userimage`, `userstatus`) VALUES
(11, 'admin1', '9898745465', 'admin1@gmail.com', 'admin1', 'men1.jpeg', 1),
(14, 'admin2', '987656555', 'admin2@gmail.com', 'admin2', 'smokey.jpeg', 0),
(17, 'admin3', '859885', 'admin3@gmail.com', 'admin3', '', 0),
(18, 'admin4', '9887866655', 'admin4@gmail.com', 'admin44', 'black-hat.jpeg', 0),
(19, 'admin5', '34543335', 'admin5@gmail.com', 'admin5', 'avatar-s.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `payment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
