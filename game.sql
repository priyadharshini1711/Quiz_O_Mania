-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 21, 2021 at 06:38 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `category` varchar(255) NOT NULL,
  `quiz_title` varchar(255) NOT NULL,
  `points` int NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `uid`, `category`, `quiz_title`, `points`, `created_at`) VALUES
(1, 1, 'Nation', 'Country', 0, '2021-12-20 16:31:13'),
(2, 1, 'Nation', 'Country', 0, '2021-12-20 16:31:30'),
(3, 1, 'Nation', 'History', 1, '2021-12-20 17:20:00'),
(4, 1, 'Nation', 'State', 2, '2021-12-20 17:20:19'),
(5, 1, 'Nation', 'State', 2, '2021-12-20 17:20:21'),
(6, 1, 'Sports', 'Cricket', 2, '2021-12-20 17:20:31'),
(7, 1, 'Sports', 'Football', 2, '2021-12-20 17:26:00'),
(8, 1, 'Sports', 'Olympics', 2, '2021-12-20 17:26:10'),
(9, 1, 'Cinema', 'Bollywood', 1, '2021-12-20 17:34:08'),
(10, 1, 'Cinema', 'Hollywood', 1, '2021-12-20 17:34:20'),
(11, 1, 'Cinema', 'Kollywood', 0, '2021-12-20 17:34:31'),
(12, 1, 'Music', 'Instruments', 1, '2021-12-20 17:49:49'),
(13, 1, 'Music', 'MusicForms', 1, '2021-12-20 17:50:00'),
(14, 1, 'Music', 'Singers', 1, '2021-12-20 17:50:09'),
(15, 1, 'CurrentAffairs', 'CivicBodies', 2, '2021-12-20 18:06:37'),
(16, 1, 'CurrentAffairs', 'Symbols', 5, '2021-12-20 18:06:49'),
(17, 1, 'CurrentAffairs', 'World', 1, '2021-12-20 18:07:33'),
(18, 2, 'Nation', 'Country', 0, '2021-12-21 05:01:49'),
(19, 3, 'Nation', 'History', 1, '2021-12-21 06:28:45'),
(20, 3, 'Sports', 'Olympics', 2, '2021-12-21 06:29:20'),
(21, 3, 'Cinema', 'Kollywood', 0, '2021-12-21 06:29:38'),
(22, 3, 'Cinema', 'Kollywood', 0, '2021-12-21 06:29:45'),
(23, 3, 'Cinema', 'Kollywood', 0, '2021-12-21 06:29:48'),
(24, 3, 'Cinema', 'Kollywood', 0, '2021-12-21 06:29:52'),
(25, 3, 'Cinema', 'Kollywood', 0, '2021-12-21 06:29:56'),
(26, 3, 'Cinema', 'Kollywood', 0, '2021-12-21 06:30:12'),
(27, 3, 'Cinema', 'Kollywood', 0, '2021-12-21 06:31:02'),
(28, 3, 'Cinema', 'Hollywood', 1, '2021-12-21 06:31:54'),
(29, 3, 'Music', 'MusicForms', 1, '2021-12-21 06:32:26'),
(30, 3, 'CurrentAffairs', 'Symbols', 5, '2021-12-21 06:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'sample', 'sample'),
(2, 'priya', 'priya'),
(3, 'user1', 'user1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
