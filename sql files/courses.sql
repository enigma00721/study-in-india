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
(1, '2021-04-12 02:46:37', '2021-04-12 05:01:21', 'Bachelor of Pharmacy (B.Pharm)', 'publish', 'Pass in 10+2 / ‘A’ Level or its equivalent from any Board or Council with 45% aggregate marks in Physics, Chemistry, Mathematics and Biology / Zoology / Computer Science.', 'Discipline :PharmacyProgram Level :Under Graduate (UG)Branch/Subject :PharmacyNo. of seats:40Annual Tuition Fees (SAARC Country):2500 USDAnnual Total Fees (SAARC Country):3500 USDAnnual Tuition Fees (NonSAARC Country):2500 USDAnnual Total Fees (NonSAARC Country) :3500 USD\nEligibility Criteria:\n( ( 10+2 in Physics, Chemistry and Biology (PCB) with minimum 45% score Or 10+2 in Physics, Chemistry and Mathematics (PCM) with minimum 45% score ) )\nCourse Durations(In Months): 36Examination Pattern: semester\nAdmission and Entry Requirements:\nPass in 10+2 / ‘A’ Level or its equivalent from any Board or Council with 45% aggregate marks in Physics, Chemistry, Mathematics and Biology / Zoology / Computer Science.', '4 years', 1, 1),
(6, '2021-04-24 23:25:52', '2021-06-07 20:26:41', 'Bachelor of Engineering (B.E.)', 'publish', '<p>Passed 12th grade or equivalent exam with Physics and Mathematics as compulsory subjects along with Chemistry&nbsp;</p><p> Bio‐Technology / Biology / Electronics / Computer Science as optional subjects with English as one of the languages of study </p><p>and obtained an aggregate minimum of 45% marks in the optional subjects in the Q. E. is eligible for Engineering International candidates are </p><p>admitted through direct applications with proof of valid passport / National citizenship card</p>', '<ul><li>assed 12th grade or equivalent exam with Physics and Mathematics as compulsory subjects along with Chemistry&nbsp;</li><li>Bio‐Technology / Biology / Electronics / Computer Science as optional subjects with English as one of the languages of study</li><li>and obtained an aggregate minimum of 45% marks in the optional subjects in the Q. E. is eligible for Engineering International candidates are</li><li>admitted through direct applications with proof of valid passport / National citizenship card</li></ul>', '4 years', 4, 4),
(7, '2021-06-07 20:28:08', '2021-06-07 20:28:08', 'New Course', 'publish', '<p>Pass in 10+2 / ‘A’ Level or its equivalent from any Board or Council with 45% aggregate marks in Physics, Chemistry, Mathematics and Biology / Zoology / Computer Science.<br></p>', '<p>Discipline :PharmacyProgram Level :Under Graduate (UG)Branch/Subject :PharmacyNo. of seats:40Annual Tuition Fees (SAARC Country):2500 USDAnnual Total Fees (SAARC Country):3500 USDAnnual Tuition Fees (NonSAARC Country):2500 USDAnnual Total Fees (NonSAARC Country) :3500 USD</p><p>Eligibility Criteria:</p><p>( ( 10+2 in Physics, Chemistry and Biology (PCB) with minimum 45% score Or 10+2 in Physics, Chemistry and Mathematics (PCM) with minimum 45% score ) )</p><p>Course Durations(In Months): 36Examination Pattern: semester</p><p>Admission and Entry Requirements:</p><p>Pass in 10+2 / ‘A’ Level or its equivalent from any Board or Council with 45% aggregate marks in Physics, Chemistry, Mathematics and Biology / Zoology / Computer Science.</p>', '3 Years', 1, 3);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_discipline_id_foreign` FOREIGN KEY (`discipline_id`) REFERENCES `disciplines` (`id`),
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
