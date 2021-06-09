-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2021 at 01:52 PM
-- Server version: 8.0.25
-- PHP Version: 7.3.28-2+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studyinindia`
--

-- --------------------------------------------------------

--
-- Table structure for table `online_applies`
--

CREATE TABLE `online_applies` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_relationship` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_occupation` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_contact` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discipline` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_applies`
--

--
-- Indexes for table `online_applies`
--
ALTER TABLE `online_applies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `online_applies`
--
ALTER TABLE `online_applies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
