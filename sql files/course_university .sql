-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2021 at 10:14 AM
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
-- Table structure for table `course_university`
--

CREATE TABLE `course_university` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `university_id` bigint UNSIGNED DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `fee` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_university`
--

INSERT INTO `course_university` (`id`, `course_id`, `university_id`, `seats`, `fee`) VALUES
(5, 6, 3, 500, 20000),
(8, 1, 6, 100, 100000),
(9, 1, 3, 1230, 827277);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_university`
--
ALTER TABLE `course_university`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_university_course_id_foreign` (`course_id`),
  ADD KEY `course_university_university_id_foreign` (`university_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_university`
--
ALTER TABLE `course_university`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_university`
--
ALTER TABLE `course_university`
  ADD CONSTRAINT `course_university_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_university_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
