-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 18, 2023 at 10:06 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_contents`
--

DROP TABLE IF EXISTS `api_contents`;
CREATE TABLE IF NOT EXISTS `api_contents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_types` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(300) NOT NULL,
  `header` varchar(1200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `authorization_types` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `body` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `api_contents`
--

INSERT INTO `api_contents` (`id`, `request_types`, `url`, `header`, `content_type`, `authorization_types`, `body`) VALUES
(1, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"test\", \"address\": \"test2\"}'),
(3, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"test\", \"address\": \"test2\"}'),
(4, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"rehan\", \"address\": \"67Asd\"}'),
(32, 'POST', 'http://127.0.0.1:8000/api/post_info/8', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"sahin\"}'),
(31, 'POST', 'http://127.0.0.1:8000/api/post_info/8', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"ydd\"}'),
(8, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"ydd\"}'),
(9, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '[]'),
(10, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(11, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(12, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(13, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(14, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(15, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(16, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(17, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(18, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(19, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(20, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(21, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(22, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfsl;\"}'),
(23, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"sdfsd\": \"sdfsdfs\"}'),
(24, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"sdfsd\": \"sdfsdfs\"}'),
(25, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '[]'),
(26, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '[]'),
(27, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"v\": \"sdf\", \"sdfs\": \"sdfsdfsdfsfsf\"}'),
(28, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"v\": \"sdf\", \"sdfs\": \"sdfsdfsdfsfsf\"}'),
(29, 'PUT', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"v\": \"sdf\", \"sdfs\": \"sdfsdfsdfsfsf\"}'),
(33, 'POST', 'http://127.0.0.1:8000/api/post_info/8', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"sahin\"}'),
(34, 'POST', 'http://127.0.0.1:8000/api/post_info/8', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"sahin\"}');


--
-- Table structure for table `query_logs`
--

CREATE TABLE `query_logs` (
  `id` varchar(300) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `query` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `query_logs`
--
ALTER TABLE `query_logs`
ADD PRIMARY KEY (`id`);


COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
