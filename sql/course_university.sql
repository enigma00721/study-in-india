-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2021 at 03:08 PM
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
  `fee` int DEFAULT NULL,
  `hostel` int DEFAULT NULL,
  `mess` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_university`
--

INSERT INTO `course_university` (`id`, `course_id`, `university_id`, `seats`, `fee`, `hostel`, `mess`) VALUES
(1, 2, 6, 250, 10000, 8000, 3000),
(2, 2, 3, 400, 55000, NULL, NULL);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_university`
--
ALTER TABLE `course_university`
  ADD CONSTRAINT `course_university_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_university_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
