-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2020 at 03:07 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digg`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `article`, `date`) VALUES
(1, 1, 'Avi first post', 'bla bla text demo avi post', '2020-09-24 15:09:11'),
(2, 2, 'Moshe post', 'my post is very posted', '2020-09-24 15:10:07'),
(5, 2, 'הפוסט של משה בעברית', 'בלה בלה טקסט דוגמה', '2020-09-24 15:18:10'),
(6, 2, 'dsfsdf', 'fsdfsdfsdfsdf', '2020-09-24 16:05:57'),
(7, 2, 'sdferwtertert', 'ertertert', '2020-09-24 16:06:03'),
(8, 1, 'haha', '123', '2020-09-29 09:36:06'),
(9, 1, '<h1 style=\"color: red\">heyyy my post!</h1>', 'cxvxcvxc', '2020-09-29 09:45:11'),
(10, 1, 'fooo', 'line1\r\nline2\r\nline3', '2020-09-29 12:22:07'),
(11, 1, 'I&#39;m the &#34;best&#34; ever', 'treterte', '2020-09-29 12:22:55'),
(12, 1, 'my title', 'bla bla bla\r\ndemo text', '2020-09-29 13:29:30'),
(13, 2, 'I&#39;m demo text', '&#34;My q&#34; foo text bla bla i&#39;m', '2020-09-29 13:37:29'),
(14, 2, 'i\'m the \"best\" ever', '\"my text\" demo b\'la', '2020-09-29 13:58:05'),
(15, 3, 'Vered first post', 'bla bla', '2020-09-29 14:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile_image`) VALUES
(1, 'Avi Cohen', 'avi@gmail.com', '$2y$10$ci7Oqz6BYrdA3VeuPkbTt.vIjdeJOjAy6inm82C/8NdhNygs987x.', 'default-profile.png'),
(2, 'Moshe Levi', 'mosh@gmail.com', '$2y$10$ci7Oqz6BYrdA3VeuPkbTt.vIjdeJOjAy6inm82C/8NdhNygs987x.', 'default-profile.png'),
(3, 'Vered Bitun', 'vered@gmail.com', '$2y$10$ZYkzNgwDsyJNv4OIIoh7TO5KSNuv6RHkdNtdXjn70GsfkNRPqWtHW', 'default-profile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
