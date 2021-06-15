-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2021 at 05:25 PM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elligibility` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discipline_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `created_at`, `updated_at`, `title`, `status`, `elligibility`, `description`, `course_duration`, `discipline_id`, `level_id`) VALUES
(1, '2021-06-15 11:34:07', '2021-06-15 11:34:07', 'Masters in Information system', 'publish', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\">On graduation, you will be ready for jobs that require you to identify problems and leverage technology to develop solutions for your business problems.</span><br style=\"-webkit-font-smoothing: antialiased; color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\">&nbsp;</span><br style=\"-webkit-font-smoothing: antialiased; color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\">The management of IT systems is considered a business function because of the impact of information technology on businesses, and is therefore offered by Business Schools in various universities. It is also offered by specific schools of Information Studies.</span><br style=\"-webkit-font-smoothing: antialiased; color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\">&nbsp;</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\">On graduation, you will be ready for jobs that require you to identify problems and leverage technology to develop solutions for your business problems.</span><br style=\"-webkit-font-smoothing: antialiased; color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\">&nbsp;</span><br style=\"-webkit-font-smoothing: antialiased; color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\">The management of IT systems is considered a business function because of the impact of information technology on businesses, and is therefore offered by Business Schools in various universities. It is also offered by specific schools of Information Studies.</span><br style=\"-webkit-font-smoothing: antialiased; color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Merriweather, Georgia, serif&quot;; font-size: 21px;\">&nbsp;</span><br></p>', '2 years', 1, 2),
(2, '2021-06-15 11:34:51', '2021-06-15 11:34:51', 'Bachelor of Pharmacy (B.Pharm)', 'publish', '<p><span style=\"font-size: 14px;\">Pass in 10+2 / ‘A’ Level or its equivalent from any Board or Council with 45% aggregate marks in Physics, Chemistry, Mathematics and Biology / Zoology / Computer Science.</span><br></p>', '<p><span style=\"font-size: 14px;\">Discipline :PharmacyProgram Level :Under Graduate (UG)Branch/Subject :PharmacyNo. of seats:40Annual Tuition Fees (SAARC Country):2500 USDAnnual Total Fees (SAARC Country):3500 USDAnnual Tuition Fees (NonSAARC Country):2500 USDAnnual Total Fees (NonSAARC Country) :3500 USD Eligibility Criteria: ( ( 10+2 in Physics, Chemistry and Biology (PCB) with minimum 45% score Or 10+2 in Physics, Chemistry and Mathematics (PCM) with minimum 45% score ) ) Course Durations(In Months): 36Examination Pattern: semester Admission and Entry Requirements: Pass in 10+2 / ‘A’ Level or its equivalent from any Board or Council with 45% aggregate marks in Physics, Chemistry, Mathematics and Biology / Zoology / Computer Science.</span><br></p>', '4 years', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_discipline_id_foreign` (`discipline_id`),
  ADD KEY `courses_level_id_foreign` (`level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_discipline_id_foreign` FOREIGN KEY (`discipline_id`) REFERENCES `disciplines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
