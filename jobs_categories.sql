-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2021 at 04:16 PM
-- Server version: 8.0.23
-- PHP Version: 7.3.27-9+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `try`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs_categories`
--

CREATE TABLE `jobs_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_categories`
--

INSERT INTO `jobs_categories` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', 'publish', 'en', '2020-04-22 10:18:17', '2020-04-22 10:21:50'),
(2, 'Web Developer', 'publish', 'en', '2020-04-22 10:22:01', '2020-04-22 10:22:01'),
(3, 'Laravel Developer', 'publish', 'en', '2020-04-22 10:22:11', '2020-04-22 10:22:11'),
(4, 'Graphic Designer', 'publish', 'en', '2020-04-22 10:22:21', '2020-04-22 10:22:21'),
(6, 'Diseñador gráfico', 'publish', 'sn', '2020-04-22 10:24:02', '2020-04-22 10:24:02'),
(7, 'Desarrollador Laravel', 'publish', 'sn', '2020-04-22 10:24:12', '2020-04-22 10:24:20'),
(8, 'Desarrolladora web', 'publish', 'sn', '2020-04-22 10:24:29', '2020-04-22 10:24:36'),
(9, 'Diseño web', 'publish', 'sn', '2020-04-22 10:24:43', '2020-04-22 10:24:43'),
(10, 'Designer de Web', 'publish', 'pr', '2020-04-22 10:24:53', '2020-04-22 10:24:53'),
(11, 'Desenvolvedor Web', 'publish', 'pr', '2020-04-22 10:25:04', '2020-04-22 10:25:04'),
(12, 'Desenvolvedor Laravel', 'publish', 'pr', '2020-04-22 10:25:14', '2020-04-22 10:25:14'),
(13, 'Designer gráfico', 'publish', 'pr', '2020-04-22 10:25:24', '2020-04-22 10:25:24'),
(14, 'مصمم جرافيك', 'publish', 'ar', '2020-04-22 10:25:37', '2020-04-22 10:25:37'),
(15, 'مطور Laravel', 'publish', 'ar', '2020-04-22 10:25:53', '2020-04-22 10:25:53'),
(16, 'مطور ويب', 'publish', 'ar', '2020-04-22 10:26:04', '2020-04-22 10:26:04'),
(17, 'تم تصميم الموقع', 'publish', 'ar', '2020-04-22 10:26:15', '2020-04-22 10:26:15'),
(18, 'Business Metting', 'draft', 'en', '2020-04-23 15:09:55', '2020-04-23 15:10:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
