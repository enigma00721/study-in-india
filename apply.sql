-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2021 at 04:54 PM
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

INSERT INTO `online_applies` (`id`, `created_at`, `updated_at`, `name`, `mobile_number`, `gender`, `dob`, `email`, `address`, `district`, `parent_name`, `parent_relationship`, `parent_address`, `parent_occupation`, `parent_contact`, `level`, `discipline`, `university`, `course`) VALUES
(2, '2021-04-24 20:42:45', '2021-04-24 20:42:45', 'Wallace Roach', '133', 'female', '2021-08-24', 'cold.knight21@gmail.com', 'Facilis laborum odit', 'Rerum facere et sit', 'Forrest Johns', 'Dolor adipisci ipsa', 'Sed aut magni tempor', 'Anim suscipit velit', '58', 'Bachelor', 'Science', 'Acharya & BM Reddy College of Pharmacy, Bengaluru', 'Bachelor of Engineering (B.E.)'),
(3, '2021-05-07 12:01:15', '2021-05-07 12:01:15', 'Jena Wolfe', '111', 'male', '1983-04-19', 'demo@demo.com', 'Est quasi laboriosam', 'Eos aute ipsum opti', 'Quinlan Blake', 'Dolor cupidatat eum', 'Ipsum et laborum S', 'Vero quis ut quas in', '9323423432', '+2', 'Science', 'Andhra University', 'Bachelor of Engineering (B.E.)'),
(4, '2021-05-07 12:02:44', '2021-05-07 12:02:44', 'Yael Kidd', '208', 'male', '2010-01-02', 'cold.knight21@gmail.com', 'Suscipit quis except', 'Lorem enim quasi ips', 'Medge French', 'Non adipisicing dict', 'Dolor ex id et cons', 'Maiores doloribus mo', '74', 'A Level', 'Humanities', 'Andhra University', 'Bachelor of Pharmacy (B.Pharm)');

--
-- Indexes for dumped tables
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
