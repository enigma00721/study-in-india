-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2021 at 10:35 AM
-- Server version: 8.0.23
-- PHP Version: 7.3.27-9+ubuntu18.04.1+deb.sury.org+1

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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int UNSIGNED NOT NULL DEFAULT '0',
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `email_verified`, `role`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sharifur', 'dvrobin4', 'dvrobin4@gmail.com', 0, '2', '85', '$2y$12$eF6cAtfYfKrZYyd5oKKGPOxlQ2Ha1YCnjPsYiE6J/CXDVtJctSA4O', NULL, NULL, '2020-04-20 16:05:32'),
(2, 'William J. Gomez', 'super_admin', 'WilliamJGomez@teleworm.us', 0, '2', '82', '$2y$10$q.tiYbO5vKop/hjS5buWYeL/UsB4TZkLqAix9gsWsG0CXqP715pgK', 'bPftvCjSvDpsGi2eLNZU8ebnNjN7CPinQG0pb5kOCKGvqrfwbBzJ4AMtnKH3', '2020-01-29 10:44:57', '2020-04-17 17:30:51'),
(3, 'Samuel D. Wiechmann', 'editor', 'SamuelDWiechmann@teleworm.us', 0, '4', '83', '$2y$10$DbjExcnruN82cdSBaobVnuHbKMB7m2B2XYQtZR6l4cqvr4JjZouei', NULL, '2020-01-29 10:50:01', '2020-04-20 16:05:21'),
(4, 'Brandy J. Martin', 'admin', 'BrandyJMartin@armyspy.com', 0, '3', '86', '$2y$10$JE/nGLrFZ9zikgwxFtnQY./Y1DEzp8xEypxPJEvmAwzSNUIoNI3r.', NULL, '2020-01-29 10:53:10', '2020-04-20 16:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `permission`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', '[\"admin_role_manage\",\"newsletter_manage\",\"home_variant\",\"nabvar_settings\",\"home_page_manage\",\"about_page_manage\",\"contact_page_manage\",\"quote_page_manage\",\"order_page_manage\",\"price_plan_page_manage\",\"work_single_page_manage\",\"top_bar_settings\",\"services\",\"works\",\"faq\",\"brand_logos\",\"price_plan\",\"team_members\",\"testimonial\",\"blog_settings\",\"counterup\",\"blogs\",\"form_builder\",\"footer_area\",\"menus_manage\",\"pages\",\"general_settings\",\"languages\",\"quote_manage\",\"order_manage\",\"all_payment_logs\",\"job_post_manage\",\"events_manage\",\"knowledgebase\"]', '2020-03-29 08:39:42', '2020-04-25 15:41:00'),
(3, 'Admin', '[\"newsletter_manage\",\"home_variant\",\"nabvar_settings\",\"home_page_manage\",\"about_page_manage\",\"contact_page_manage\",\"quote_page_manage\",\"order_page_manage\",\"price_plan_page_manage\",\"work_single_page_manage\",\"top_bar_settings\",\"services\",\"works\",\"faq\",\"brand_logos\",\"price_plan\",\"team_members\",\"testimonial\",\"blog_settings\",\"counterup\",\"blogs\",\"footer_area\",\"pages\"]', '2020-03-29 08:54:23', '2020-03-29 08:54:23'),
(4, 'Editor', '[\"newsletter_manage\",\"nabvar_settings\",\"home_page_manage\",\"about_page_manage\",\"contact_page_manage\",\"quote_page_manage\",\"order_page_manage\",\"price_plan_page_manage\",\"work_single_page_manage\",\"top_bar_settings\",\"services\",\"works\",\"faq\",\"brand_logos\",\"price_plan\",\"team_members\",\"testimonial\",\"blog_settings\",\"counterup\",\"blogs\",\"footer_area\",\"pages\"]', '2020-03-29 08:55:54', '2020-03-29 08:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_categories_id` int UNSIGNED NOT NULL,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `blog_categories_id`, `tags`, `image`, `lang`, `excerpt`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Request norland neither mistake for yet. Between the for', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage.&nbsp;</p>', 2, 'building,construction', '52', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:28:10', '2020-04-17 17:49:08'),
(3, 'Uneasy barton seeing remark happen his has. Am possible', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage. </p>', 4, 'Digging,building', '51', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:30:17', '2020-04-17 17:48:53'),
(4, 'When be draw drew ye defective in do recommend suffering', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage. </p>', 1, 'proffessional,builders', '50', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:31:48', '2020-04-17 17:48:42'),
(5, 'Collected favourite now for for and rapturous repulsive', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage. </p>', 3, 'common,technology', '49', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:33:33', '2020-04-17 17:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Financial', 'publish', 'en', '2020-01-25 11:54:07', '2020-03-05 17:55:40'),
(2, 'Consulting', 'publish', 'en', '2020-01-25 11:56:06', '2020-03-05 17:55:47'),
(3, 'Insurance', 'publish', 'en', '2020-01-25 11:56:17', '2020-03-05 17:56:01'),
(4, 'Business', 'publish', 'en', '2020-01-25 11:56:29', '2020-03-05 17:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `created_at`, `updated_at`, `url`) VALUES
(1, 'logo #1', '74', '2020-01-24 19:44:30', '2020-04-17 14:56:57', '#'),
(2, '#2', '73', '2020-01-24 19:44:37', '2020-04-17 14:56:45', '#'),
(3, '#3', '72', '2020-01-24 19:44:44', '2020-04-17 14:54:32', NULL),
(4, '#4', '71', '2020-01-24 19:44:52', '2020-04-17 14:54:23', NULL),
(5, '#5', '70', '2020-01-24 19:44:59', '2020-04-17 14:54:14', '#'),
(6, '#6', '69', '2020-01-24 19:45:09', '2020-04-17 14:53:56', '#');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info_items`
--

CREATE TABLE `contact_info_items` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_info_items`
--

INSERT INTO `contact_info_items` (`id`, `title`, `lang`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Location', 'en', 'fas fa-map-marker-alt', '1920 Station Road, ;\r\nSadar,Dinajpur', '2020-01-28 08:05:43', '2021-04-08 05:14:04'),
(2, 'Email Address', 'en', 'fas fa-envelope', 'mail@contact.com;\r\ninfo@zixer.com', '2020-01-28 08:06:16', '2020-02-27 08:02:57'),
(3, 'Phone number', 'en', 'fas fa-phone', '+880 111 222 333;\r\n+880 111 222 333', '2020-01-28 08:06:32', '2020-02-27 08:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `counterups`
--

CREATE TABLE `counterups` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counterups`
--

INSERT INTO `counterups` (`id`, `icon`, `number`, `title`, `extra_text`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-landmark', '3700', 'Institutes', NULL, 'en', '2020-01-23 19:06:39', '2021-04-07 03:17:43'),
(2, 'fas fa-address-book', '4048', 'Admissions', NULL, 'en', '2020-01-23 19:07:46', '2021-04-07 03:18:26'),
(18, 'fas fa-bookmark', '387', 'Courses', NULL, 'en', '2021-04-08 02:24:23', '2021-04-08 02:24:23');

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
  `fee` int NOT NULL,
  `elligibility` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seats` int NOT NULL,
  `course_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discipline_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `university_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `created_at`, `updated_at`, `title`, `status`, `fee`, `elligibility`, `description`, `seats`, `course_duration`, `discipline_id`, `level_id`, `university_id`) VALUES
(1, '2021-04-12 02:46:37', '2021-04-12 05:01:21', 'Bachelor of Pharmacy (B.Pharm)', 'publish', 50000, 'Pass in 10+2 / ‘A’ Level or its equivalent from any Board or Council with 45% aggregate marks in Physics, Chemistry, Mathematics and Biology / Zoology / Computer Science.', 'Discipline :PharmacyProgram Level :Under Graduate (UG)Branch/Subject :PharmacyNo. of seats:40Annual Tuition Fees (SAARC Country):2500 USDAnnual Total Fees (SAARC Country):3500 USDAnnual Tuition Fees (NonSAARC Country):2500 USDAnnual Total Fees (NonSAARC Country) :3500 USD\r\nEligibility Criteria:\r\n( ( 10+2 in Physics, Chemistry and Biology (PCB) with minimum 45% score Or 10+2 in Physics, Chemistry and Mathematics (PCM) with minimum 45% score ) )\r\nCourse Durations(In Months): 36Examination Pattern: semester\r\nAdmission and Entry Requirements:\r\nPass in 10+2 / ‘A’ Level or its equivalent from any Board or Council with 45% aggregate marks in Physics, Chemistry, Mathematics and Biology / Zoology / Computer Science.', 100, '4 years', 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_university`
--

CREATE TABLE `course_university` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `university_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disciplines`
--

CREATE TABLE `disciplines` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disciplines`
--

INSERT INTO `disciplines` (`id`, `created_at`, `updated_at`, `title`, `status`) VALUES
(1, '2021-04-11 01:11:01', '2021-04-11 01:11:01', 'Science', 'publish'),
(2, '2021-04-11 01:38:49', '2021-04-11 01:51:24', 'Art', 'publish'),
(3, '2021-04-11 01:51:36', '2021-04-11 01:51:36', 'Medical', 'publish'),
(4, '2021-04-11 01:51:46', '2021-04-11 01:51:46', 'Humanities', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `status`, `lang`, `date`, `category_id`, `image`, `location`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Is there appropriate lodging located nearby?', 'publish', 'en', '2021-02-01', '2', '95', 'Street Chunky, MS 39323', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:06:08', '2020-04-23 19:06:08'),
(3, 'Why Choose Our Destination?', 'publish', 'en', '2020-05-01', '3', '28', 'Lane Orlando, FL 32801', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:06:50', '2021-04-11 05:08:04'),
(6, '¿Estará disponible para sus posibles fechas de conferencia?', 'publish', 'sn', '2020-06-01', '7', '94', 'Avenue Afton, MN 55001', '<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>', '2020-04-23 19:38:08', '2020-04-23 19:38:08'),
(7, '¿Por qué elegir nuestro destino?', 'publish', 'sn', '2020-05-01', '8', '95', 'Avenue Afton, MN 55001', '<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>', '2020-04-23 19:38:50', '2020-04-23 19:38:50'),
(8, '¿Hay alojamiento apropiado cerca?', 'publish', 'sn', '2020-05-05', '8', '96', 'Street Chunky, MS 39323', '<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>', '2020-04-23 19:39:31', '2020-04-23 19:39:31'),
(9, 'Existe alojamento apropriado nas proximidades?', 'publish', 'pr', '2020-05-01', '4', '97', 'Avenue Afton, MN 55001', '<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>\r\n<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>\r\n<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>', '2020-04-23 19:40:31', '2020-04-23 19:40:31'),
(10, 'Por que escolher nosso destino?', 'publish', 'pr', '2020-01-02', '5', '94', 'Street Chunky, MS 39323', '<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>\r\n<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>\r\n<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>', '2020-04-23 19:42:16', '2020-04-23 19:46:09'),
(11, 'هل سيكون متاحًا لمواعيد المؤتمر المحتملة؟', 'publish', 'ar', '2020-02-01', '11', '97', 'شارع أفتون ، مينيسوتا 55001', '<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>\r\n<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>\r\n<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>', '2020-04-23 19:44:03', '2020-04-23 19:44:03'),
(12, 'لماذا تختار وجهتنا؟', 'publish', 'ar', '2020-02-01', '13', '96', 'شارع مكتنزة ، MS 39323', '<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>\r\n<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>\r\n<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>', '2020-04-23 19:44:56', '2020-04-23 19:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `events_categories`
--

CREATE TABLE `events_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events_categories`
--

INSERT INTO `events_categories` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Business Metting', 'publish', 'en', '2020-04-23 15:14:59', '2020-04-23 15:14:59'),
(2, 'Global Pandemic', 'publish', 'en', '2020-04-23 15:15:22', '2020-04-23 15:15:22'),
(3, 'Startup Solution', 'publish', 'en', '2020-04-23 15:24:36', '2020-04-23 15:35:48'),
(4, 'Solução de inicialização', 'publish', 'pr', '2020-04-23 15:26:41', '2020-04-23 15:26:41'),
(5, 'Pandemia global', 'publish', 'pr', '2020-04-23 15:26:57', '2020-04-23 15:26:57'),
(6, 'Reunião de negócios', 'publish', 'pr', '2020-04-23 15:32:21', '2020-04-23 15:32:21'),
(7, 'Reunión de negocios', 'publish', 'sn', '2020-04-23 15:34:44', '2020-04-23 15:34:44'),
(8, 'Pandemia globals', 'publish', 'sn', '2020-04-23 15:35:20', '2020-04-23 15:35:20'),
(9, 'Solución de inicio', 'publish', 'sn', '2020-04-23 15:35:33', '2020-04-23 15:35:33'),
(11, 'حل بدء التشغيل', 'publish', 'ar', '2020-04-23 19:42:39', '2020-04-23 19:42:39'),
(12, 'وباء عالمي', 'publish', 'ar', '2020-04-23 19:42:48', '2020-04-23 19:42:48'),
(13, 'اجتماع عمل', 'publish', 'ar', '2020-04-23 19:42:58', '2020-04-23 19:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_open` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `status`, `is_open`, `lang`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Turned it up should no valley cousin he', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:31:47', '2020-02-26 18:41:13'),
(2, 'All having but you edward genius though go', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:36:58', '2020-02-26 18:41:19'),
(3, 'You sudden nay elinor thirty esteem temper', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:51:21', '2020-02-26 18:41:23'),
(4, 'Quiet leave shy you gay off asked large style', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:51:34', '2020-02-26 18:41:27'),
(5, 'New the her nor case that lady paid read', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:51:55', '2020-02-26 18:41:32'),
(6, 'Turned it up should no valley cousin he', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:52:10', '2020-02-26 18:41:36'),
(7, 'All having but you edward genius though go', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:52:23', '2020-02-26 18:41:40'),
(8, 'You sudden nay elinor thirty esteem temper', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:52:36', '2020-02-26 18:41:44'),
(9, 'Quiet leave shy you gay off asked large style', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:52:51', '2020-02-26 18:41:49'),
(10, 'New the her nor case that lady paid read', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:53:14', '2020-02-26 18:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `header_sliders`
--

CREATE TABLE `header_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `btn_01_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_sliders`
--

INSERT INTO `header_sliders` (`id`, `title`, `description`, `btn_01_status`, `btn_01_text`, `btn_01_url`, `lang`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Experienced business advisor', 'Acepteur sintas haecat sed cupidatat non dui proident sunt culpa qui officia sed ipsum tempor eserunt proidenculpa.', 'on', 'Know More', '#', 'en', '28', '2020-01-21 14:23:14', '2020-04-15 15:01:28'),
(2, 'Experienced business advisor', 'Acepteur sintas haecat sed cupidatat non dui proident sunt culpa qui officia sed ipsum tempor eserunt proidenculpa.', 'on', 'Know More', '#', 'en', '27', '2020-01-21 17:20:57', '2020-04-15 15:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibility` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employment_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `education_requirement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `experience_requirement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `additional_requirement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `job_location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `salary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `job_context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_benefits` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `position`, `company_name`, `category_id`, `vacancy`, `job_responsibility`, `employment_status`, `education_requirement`, `experience_requirement`, `additional_requirement`, `job_location`, `salary`, `job_context`, `lang`, `other_benefits`, `email`, `status`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'Web Developer Wanted', 'Junior Developer', 'xgenious', '3', '03', 'The incumbent will report to Senior Manager, Information Technology.|\r\n S/he will be primarily responsible to Development of mobile/web front ends and cross platform clients with online/offline functionality based on agreed upon scope and requirements. |\r\nRapidly build prototypes/simulations from mockups that can be directly implemented|\r\nCreate clean interfaces and smooth interactions based on UI/UX designs and documentation for a range of devices, including mobiles, tablets and desktops.|\r\nCreate and build cross platform mobile applications using cross platform SDKs|\r\nUnit-test code for robustness, including edge cases, usability, and general reliability|\r\nContinuously discover, evaluate, and implement new technologies to maximize development', 'full_time', 'Bachelor / Masters in Computer Science', '3 to 5 year(s)', 'Age 25 to 30 years|\r\n3 to 5 years of working experience in web development|\r\nBest in Laravel 6+ development|\r\nBest in PHP 7+, MySQL|\r\nVery Good in OPP Programming|\r\nGood knowledge in API, API Resource, Eloquent ORM, DB Migration|\r\nExpert in JWT or Laravel Passport|\r\nExpert in MySQL query|\r\nKnow version control like as git|\r\nGood knowledge in|\r\nGood in MVC frameworkology|\r\nShould have strong communication skills in both Bengali and English', 'Bangkok, Thailand', '1500$', NULL, 'en', 'Provident fund|\r\nGratuity|\r\nSalary Review: Yearly|\r\nFestival Bonus: 2|\r\nLeave Encashment|\r\nWeekly 2 holidays', 'dvrobin4@gmail.com', 'publish', '2020-05-30', '2020-04-22 12:30:07', '2020-04-22 14:04:12'),
(2, 'Graphic/ Web Designer', 'Junior Graphic/Designer', 'Meena Bazar', '4', '05', 'Graphic Design and Image Editing using Adobe Photoshop, Illustrator and other components of Adobe Creative suite|\r\nMaking brochures, posters, billboard, newspaper ad, leaflet, icons, logos and other marketing materials|\r\nOutput setting, banding, spot & foil good idea.|\r\nDesigning vector graphics for internal use and for external projects|\r\nCrafting content like social posts, banner ads, print ads, etc.|\r\nDesign Shop Sign, Brochure, Leaflet, mockup and Hangtag|\r\nDigital marketing on digital media.|\r\nKnowledge on PHP, MySQL, Wordpress, CSS3, Bootstrap3, JavaScript, jQuery, Angular, XML and AJAX integration.|\r\nKnowledge on Laravel with vue.js will be plus.|\r\nShould have the ability of Pixel Perfect wordpress theme design & development is mandatory.|\r\nMust have experience in wordpress website maintaining.|\r\nExpert in PSD to Wordpress theme development.|\r\nExtensive knowledge in Pixel Perfection. Adobe Photoshop, Flash, Action Script and motion/animation techniques - will be plus|\r\nSound understanding of relevant W3C standards and best practices.|\r\nShould have knowledge on SEO (Search Engine Optimization) to develop & maintain website according to its requirements.|\r\nExpert in online radio, tv, news site design & develop.', 'part_time', 'Bachelor or Master degree in Computer Science or related field.|\r\nB.Sc in Computer Science Or Masters in Computer Science or any other relevant field.', '2 to 5 year(s)', 'Age 25 to 30 years|\r\nBoth males and females are allowed to apply|\r\nThe applicants should have experience in the following area(s): Web Developer/ Web Designer|\r\nMust meet deadlines and proactively communicate progress|\r\nMust be accountable, self-motivated and have meticulous attention to detail|\r\nMust have an eye for fine details and a passion to work with graphics|\r\nFamiliarity with tools like Microsoft Office and adobe creative suite|\r\nWillingness and ability to learn new technologies and think out of the box to come up with creative ideas|\r\nSelf-motivated and open to accept ideas from team members|\r\nStrong verbal and written communication, interpersonal skill, good work ethic|\r\nOnly Skill, Knowledge & Ability will be preferred.|\r\nAt Least 2 year experience on web developing company|\r\nFront-end and back-end development experience', 'Bangkok, Thailand', 'Negotiable', NULL, 'en', 'Festival Bonus: 2', 'dvrobin4@gmail.com', 'publish', '2020-05-01', '2020-04-22 12:41:58', '2020-04-22 12:41:58'),
(3, 'UI/ UX  Designer Required', 'Senior UI/UX Designer', 'Meena Bazar', '1', '05', 'Collaborate with software engineers to improve the usability|\r\nGet feedback from, and build solutions for users and customers|\r\nDevelop UI mockups and prototypes that clearly illustrate how sites function and look like|\r\nAdhere to style standards on fonts, colors and images|\r\nEnsure final graphics and layouts are visually appealing and on-brand|\r\nIllustrate design ideas using storyboards, process flows and sitemaps|\r\nDesign graphic user interface elements, like menus, tabs and widgets|\r\nBuild page navigation buttons and search fields|\r\nEnsure high quality graphic standards and brand consistency|\r\nDesign creative promotional and branding post for social media. |\r\nConceptualize visuals based on requirements |\r\nPrepare rough drafts and present ideas|\r\nUse the appropriate colors and layouts for each graphic|\r\nTest graphics across various media|\r\nAmend designs after feedback|\r\nCreate original graphic designs (e.g. images, sketches and tables)|\r\nPrepare and present rough drafts to internal teams and key stakeholders', 'full_time', 'Degree in Design, Fine Arts or related field is a plus|\r\nSkills Required: Adobe XD, UI Design pattern, UIUX, UIUX Design, UX Design', '1 to 5 year(s)|\r\nThe applicants should have experience in the following area(s):|\r\nAdobe creative Suite, Adobe XD, UI Design, UIUX Design, user experience|\r\nThe applicants should have experience in the following business area(s):|\r\nSoftware Company, Web Media/Blog', 'Age 24 to 40 years|\r\nBoth males and females are allowed to apply|\r\nProven graphic designing experience|\r\nA strong portfolio of illustrations or other graphics|\r\nUp-to-date knowledge of design software and technologies (such as XD, InDesign, Illustrator, Dreamweaver, Photoshop)|\r\nA keen eye for aesthetics and details|\r\nExcellent communication skills|\r\nAbility to work methodically and meet deadlines|\r\nProven work experience as a Graphic/UI Designer or similar role is an advantage|\r\nPortfolio of design projects|\r\nTeam spirit; strong communication skills to collaborate with various stakeholders|\r\nGood time-management skills', 'Bangkok, Thailand', 'Negotiable', 'We are looking for a UI/UX Engineer to create engaging and on-brand graphics for a variety of media including to turn our software into easy-to-use products for our clients. Your responsibilities include gathering user requirements, designing graphic elements and building navigation components. To be successful in this role, you should have experience with design software. If you also have a portfolio of professional design projects that includes work with web/mobile applications, we`d like to meet you. Ultimately, you`ll create both functional and appealing features that address our clients` needs and help us grow our customer base.', 'en', 'Medical allowance, Performance bonus, Weekly 2 holidays, Insurance|\r\nLunch Facilities: Full Subsidize|\r\nSalary Review: Yearly|\r\nBenefits are above market compensation - attractive package.|\r\nWork for an international company with clients|\r\nLunch, snacks, tea, coffee and else provided at the office for free.|\r\nDaylight shifts|\r\nAbility to grow and build a career', 'dvrobin4@gmail.com', 'publish', '2020-05-02', '2020-04-22 14:27:44', '2020-04-22 14:28:21'),
(4, 'Software Engineer Require', 'Senior Software Engineer', 'xgenious', '2', '03', 'Design, code, test and implement according to software design specifications following standard coding styles and practice.|\r\nAnalyze the requirements and understand the deliverable.|\r\nDevelop software solutions by studying information needs, systems flow, data usage, and work processes.|\r\nDocument and demonstrate solutions by developing documentation, flowcharts, layouts, diagrams, charts, code comments and clear readable code.|\r\nParticipate in code/ design reviews after investigating current software development projects.|\r\nSeek out new technologies and ideas to add value to project.|\r\nCollaborate with team members and ensure knowledge transfer.', 'full_time', 'Bachelor of Science (BSc) in CSE', '2 to 5 year(s)|\r\nFreshers are also encouraged to apply.', 'Age 20 to 30 years|\r\nBoth males and females are allowed to apply?\r\nThe applicants should have knowledge/experience in the following area(s):|\r\nStrong programming skills & highly proficient in PHP Framework CodeIgniter|\r\nExperience in PHP-based application development.|\r\nSolid understanding on MVC pattern.|\r\nApplicant must have excellent knowledge on modern Web Technologies like HTML5, CSS3, Bootstrap, jQuery, AJAX.|\r\nClear understanding of OOP & design patterns.|\r\nMust have hands on SQL query writing skill for complex business requirements.|\r\nBasic knowledge to work with Unix Platform.|\r\nFreshers with good knowledge of the above are encouraged to apply.|\r\nCandidate with knowledge on LMS (Learning Management System) will be preferred', 'Bangkok, Thailand', 'Negotiable', 'We are looking for a skilled web designers / developers who will be capable to work with our existing team and contribute his/ her knowledge and experience to develop the LMS module of the system.', 'en', 'Mobile bill, Performance bonus|\r\nSalary Review: Yearly', 'dvrobin4@gmail.com', 'publish', '2025-05-02', '2020-04-22 14:30:46', '2020-04-22 14:46:03'),
(5, 'Ingeniero de software requiere', 'Ingeniero de programación superior', 'xgenious', '6', '03', 'Diseñe, codifique, pruebe e implemente de acuerdo con las especificaciones de diseño del software siguiendo los estilos y prácticas de codificación estándar.|\r\nAnalice los requisitos y comprenda los entregables.|\r\nDesarrolle soluciones de software estudiando las necesidades de información, el flujo de sistemas, el uso de datos y los procesos de trabajo.|\r\nDocumente y demuestre soluciones desarrollando documentación, diagramas de flujo, diseños, diagramas, gráficos, comentarios de código y código legible claro.|\r\nParticipe en revisiones de código / diseño después de investigar los proyectos de desarrollo de software actuales.|\r\nBusque nuevas tecnologías e ideas para agregar valor al proyecto.|\r\nColabora con los miembros del equipo y asegura la transferencia de conocimiento.', 'full_time', 'Licenciatura en Ciencias (BSc) en CSE', '2 a 5 año (s) |\r\nTambién se alienta a los estudiantes de primer año a postularse.', 'Edad 20 a 30 años |\r\n¿Tanto hombres como mujeres pueden postularse?\r\nLos solicitantes deben tener conocimiento / experiencia en las siguientes áreas: |\r\nFuertes habilidades de programación y altamente competentes en PHP Framework CodeIgniter |\r\nExperiencia en desarrollo de aplicaciones basadas en PHP.|\r\nConocimiento sólido sobre el patrón MVC.|\r\nEl solicitante debe tener un excelente conocimiento de las tecnologías web modernas como HTML5, CSS3, Bootstrap, jQuery, AJAX.|\r\nComprensión clara de OOP y patrones de diseño.|\r\nDebe tener habilidad práctica de escritura de consultas SQL para requisitos comerciales complejos.|\r\nConocimientos básicos para trabajar con la plataforma Unix.|\r\nSe recomienda a los estudiantes de primer año con buen conocimiento de lo anterior que presenten su solicitud.|\r\nSe preferirá un candidato con conocimiento sobre LMS (Sistema de gestión de aprendizaje)', 'Bangkok, Thailand', 'Negotiable', 'Estamos buscando diseñadores / desarrolladores web capacitados que sean capaces de trabajar con nuestro equipo existente y contribuir con su conocimiento y experiencia para desarrollar el módulo LMS del sistema.', 'sn', 'Factura móvil, bonificación de rendimiento |\r\nRevisión salarial: anual', 'example@gmail.com', 'publish', '2020-05-01', '2020-04-22 14:40:36', '2020-04-22 14:40:36'),
(6, 'UI / UX Designer Requerida', 'Diseñador senior de UI / UX', 'xgenious', '9', '05', 'Colaborar con ingenieros de software para mejorar la usabilidad |\r\nObtenga comentarios y cree soluciones para usuarios y clientes |\r\nDesarrolle maquetas y prototipos de interfaz de usuario que ilustren claramente cómo funcionan y se ven los sitios |\r\nAdhiérase a los estándares de estilo en fuentes, colores e imágenes |\r\nAsegúrese de que los gráficos y diseños finales sean visualmente atractivos y de marca |\r\nIlustrar ideas de diseño utilizando guiones gráficos, flujos de procesos y mapas del sitio |\r\nDiseñe elementos gráficos de la interfaz de usuario, como menús, pestañas y widgets |\r\nCrear botones de navegación de página y campos de búsqueda |\r\nGarantizar estándares gráficos de alta calidad y consistencia de marca |\r\nDiseñar publicaciones creativas de promoción y branding para redes sociales. El |\r\nConceptualizar imágenes basadas en requisitos |\r\nPreparar borradores y presentar ideas |\r\nUse los colores y diseños apropiados para cada gráfico |\r\nPrueba de gráficos en varios medios |\r\nModificar diseños después de comentarios |\r\nCrear diseños gráficos originales (por ejemplo, imágenes, bocetos y tablas) |\r\nPreparar y presentar borradores a equipos internos y partes interesadas clave', 'part_time', 'Licenciatura en Diseño, Bellas Artes o campo relacionado es un plus |\r\nHabilidades requeridas: Adobe XD, patrón de diseño de interfaz de usuario, UIUX, diseño de UIUX, diseño de UX', '1 a 5 año (s) |\r\nLos solicitantes deben tener experiencia en las siguientes áreas: |\r\nAdobe creative Suite, Adobe XD, diseño de interfaz de usuario, diseño de interfaz de usuario, experiencia de usuario |\r\nLos solicitantes deben tener experiencia en las siguientes áreas comerciales: |\r\nEmpresa de software, Web Media / Blog', 'Edad 24 a 40 años |\r\nTanto hombres como mujeres pueden aplicar |\r\nExperiencia probada en diseño gráfico |\r\nUna sólida cartera de ilustraciones u otros gráficos |\r\nConocimiento actualizado de software de diseño y tecnologías (como XD, InDesign, Illustrator, Dreamweaver, Photoshop) |\r\nUn buen ojo para la estética y los detalles |\r\nExcelentes habilidades de comunicación |\r\nCapacidad para trabajar metódicamente y cumplir plazos |\r\nLa experiencia laboral probada como diseñador gráfico / UI o un rol similar es una ventaja |\r\nPortafolio de proyectos de diseño |\r\nEspíritu de equipo; fuertes habilidades de comunicación para colaborar con varios interesados |\r\nBuenas habilidades de gestión del tiempo.', 'Bangkok, Thailand', '1500$', 'Estamos buscando un ingeniero de UI / UX para crear gráficos atractivos y de marca para una variedad de medios, incluido para convertir nuestro software en productos fáciles de usar para nuestros clientes. Sus responsabilidades incluyen reunir los requisitos del usuario, diseñar elementos gráficos y construir componentes de navegación. Para tener éxito en este rol, debe tener experiencia con el software de diseño. Si también tiene una cartera de proyectos de diseño profesional que incluye trabajo con aplicaciones web / móviles, nos gustaría conocerlo. En última instancia, creará características funcionales y atractivas que aborden las necesidades de nuestros clientes y nos ayuden a aumentar nuestra base de clientes.', 'sn', 'Medical allowance, Performance bonus, Weekly 2 holidays, Insurance|\r\nLunch Facilities: Full Subsidize|\r\nSalary Review: Yearly|\r\nBenefits are above market compensation - attractive package.|\r\nWork for an international company with clients|\r\nLunch, snacks, tea, coffee and else provided at the office for free.|\r\nDaylight shifts|\r\nAbility to grow and build a career', 'example@gmail.com', 'publish', '2020-05-01', '2020-04-22 14:42:42', '2020-04-22 14:42:42'),
(7, 'Designer de UI / UX obrigatório', 'Designer sênior de UI / UX', 'xgenious', '13', '03', 'Colabore com engenheiros de software para melhorar a usabilidade |\r\nObtenha feedback e crie soluções para usuários e clientes |\r\nDesenvolva modelos e protótipos de interface do usuário que ilustrem claramente como os sites funcionam e se parecem |\r\nSiga os padrões de estilo em fontes, cores e imagens |\r\nGaranta que os gráficos e layouts finais sejam visualmente atraentes e na marca |\r\nIlustrar idéias de design usando storyboards, fluxos de processos e sitemaps |\r\nProjete elementos gráficos da interface do usuário, como menus, guias e widgets |\r\nCrie botões de navegação na página e campos de pesquisa |\r\nGaranta padrões gráficos de alta qualidade e consistência da marca |\r\nCrie postagens promocionais e de branding criativas para mídias sociais. |\r\nConceitualize visuais com base em requisitos |\r\nPreparar rascunhos e apresentar idéias |\r\nUse as cores e os layouts apropriados para cada gráfico |\r\nTeste gráficos em várias mídias |\r\nAlterar desenhos após feedback |\r\nCrie designs gráficos originais (por exemplo, imagens, esboços e tabelas) |\r\nPreparar e apresentar rascunhos para equipes internas e principais interessados', 'part_time', 'Licenciatura em Design, Belas Artes ou áreas afins é uma vantagem |\r\nHabilidades necessárias: Adobe XD, padrão de design de interface do usuário, UIUX, design de UIUX, design de UX', '1 a 5 ano (s) |\r\nOs candidatos devem ter experiência nas seguintes áreas: |\r\nAdobe creative Suite, Adobe XD, UI Design, UIUX Design, experiência do usuário |\r\nOs candidatos devem ter experiência nas seguintes áreas de negócios: |\r\nEmpresa de software, Mídia da Web / Blog', '24 a 40 anos |\r\nHomens e mulheres podem se inscrever |\r\nExperiência comprovada em design gráfico |\r\nUm forte portfólio de ilustrações ou outros gráficos |\r\nConhecimento atualizado de software e tecnologias de design (como XD, InDesign, Illustrator, Dreamweaver, Photoshop) |\r\nUm olho afiado para estética e detalhes |\r\nExcelentes habilidades de comunicação |\r\nCapacidade de trabalhar metodicamente e cumprir prazos |\r\nExperiência de trabalho comprovada como Designer Gráfico / UI ou função semelhante é uma vantagem |\r\nPortfólio de projetos de design |\r\nEspírito de equipe; fortes habilidades de comunicação para colaborar com várias partes interessadas |\r\nBoas habilidades de gerenciamento de tempo', 'Bangkok, Thailand', 'Negociável', 'Estamos procurando um engenheiro de UI / UX para criar gráficos atraentes e na marca para uma variedade de mídias, inclusive para transformar nosso software em produtos fáceis de usar para nossos clientes. Suas responsabilidades incluem reunir requisitos do usuário, projetar elementos gráficos e construir componentes de navegação. Para ter sucesso nessa função, você deve ter experiência com o software de design. Se você também possui um portfólio de projetos de design profissional que inclui trabalho com aplicativos da Web / dispositivos móveis, gostaríamos de conhecê-lo. Por fim, você criará recursos funcionais e atraentes que atendem às necessidades de nossos clientes e nos ajudam a aumentar nossa base de clientes.', 'pr', 'Subsídio médico, Bônus de desempenho, 2 dias por semana, Seguro |\r\nInstalações para almoço: Subsídio total |\r\nRevisão Salarial: Anual |\r\nOs benefícios estão acima da compensação de mercado - pacote atraente.\r\nTrabalhar para uma empresa internacional com clientes |\r\nAlmoço, lanches, chá, café e outros itens fornecidos gratuitamente no escritório.\r\nTurnos da luz do dia |\r\nCapacidade de crescer e construir uma carreira', 'example@gmail.com', 'publish', '2020-02-01', '2020-04-22 14:45:01', '2020-04-22 14:45:01'),
(8, 'Engenheiro de software exige', 'Engenheiro de software senior', 'xgenious', '12', '05', 'Projete, codifique, teste e implemente de acordo com as especificações de design do software, seguindo práticas e estilos de codificação padrão.|\r\nAnalise os requisitos e entenda a entrega.|\r\nDesenvolva soluções de software estudando as necessidades de informações, fluxo de sistemas, uso de dados e processos de trabalho.|\r\nDocumente e demonstre soluções desenvolvendo documentação, fluxogramas, layouts, diagramas, gráficos, comentários de código e código legível claro.|\r\nParticipe das revisões de código / design após investigar os projetos atuais de desenvolvimento de software.|\r\nProcure novas tecnologias e idéias para agregar valor ao projeto.|\r\nColabore com os membros da equipe e garanta a transferência de conhecimento.', 'full_time', 'Bacharel em Ciências (CSc) em CSE', '2 a 5 ano (s) |\r\nFreshers também são incentivados a aplicar.', '20 a 30 anos |\r\nHomens e mulheres podem se inscrever??\r\nOs candidatos devem ter conhecimento / experiência nas seguintes áreas: |\r\nFortes habilidades de programação e altamente proficiente em PHP Framework CodeIgniter |\r\nExperiência no desenvolvimento de aplicativos baseados em PHP.|\r\nSólido entendimento do padrão MVC.|\r\nO candidato deve ter excelente conhecimento em tecnologias modernas da Web, como HTML5, CSS3, Bootstrap, jQuery, AJAX.|\r\nCompreensão clara de OOP e padrões de design.|\r\nÉ necessário ter habilidade prática de gravação de consultas SQL para requisitos comerciais complexos.|\r\nConhecimento básico para trabalhar com a plataforma Unix.|\r\nIngressos com bom conhecimento do exposto acima são incentivados a se inscrever.|\r\nO candidato com conhecimento em LMS (Learning Management System) será preferido', 'Bangkok, Thailand', 'Negociável', 'Estamos procurando por web designers / desenvolvedores qualificados, capazes de trabalhar com nossa equipe existente e contribuir com seu conhecimento e experiência para desenvolver o módulo LMS do sistema.', 'pr', 'Fatura de celular, bônus de desempenho |\r\nRevisão salarial: Anual', 'example@gmail.com', 'publish', '2020-05-05', '2020-04-22 14:48:24', '2020-04-22 14:48:24'),
(9, 'مطلوب مهندس برمجيات', 'مهندس برمجيات أول', 'أنيق', '15', '03', 'التصميم والتشفير والاختبار والتنفيذ طبقاً لمواصفات تصميم البرمجيات باتباع أنماط وممارسات التشفير القياسية. |\r\nتحليل المتطلبات وفهم الناتج. |\r\nتطوير الحلول البرمجية بدراسة احتياجات المعلومات وتدفق النظم واستخدام البيانات وعمليات العمل. |\r\nقم بتوثيق وإظهار الحلول من خلال تطوير الوثائق ، المخططات الانسيابية ، التخطيطات ، الرسوم البيانية ، الرسوم البيانية ، تعليقات الكود وشفرة قابلة للقراءة.\r\nالمشاركة في مراجعات الكود / التصميم بعد دراسة مشاريع تطوير البرمجيات الحالية\r\nالبحث عن تقنيات وأفكار جديدة لإضافة قيمة للمشروع. |\r\nالتعاون مع أعضاء الفريق وضمان نقل المعرفة.', 'full_time', 'بكالوريوس العلوم (BSc) في CSE', 'من 2 إلى 5 سنة |\r\nيتم تشجيع الطلاب الجدد على التقديم.', 'العمر من 20 إلى 30 سنة |\r\nيسمح للذكور والإناث بتقديم الطلبات؟\r\nيجب أن يكون لدى المتقدمين المعرفة / الخبرة في المجالات التالية: |\r\nمهارات برمجة قوية وكفاءة عالية في PHP Framework CodeIgniter |\r\nخبرة في تطوير التطبيقات القائمة على PHP. |\r\nفهم متين لنمط MVC. |\r\nيجب أن يكون لدى مقدم الطلب معرفة ممتازة بتقنيات الويب الحديثة مثل HTML5 و CSS3 و Bootstrap و jQuery و AJAX.\r\nفهم واضح لأنماط OOP والتصميم. |\r\nيجب أن يكون لديك مهارة في كتابة استعلام SQL لمتطلبات العمل المعقدة. |\r\nالمعرفة الأساسية للعمل مع منصة يونكس. |\r\nيشجع الطلاب الجدد على معرفة ما ورد أعلاه\r\nالمرشح مع المعرفة على LMS (نظام إدارة التعلم) سيكون المفضل', 'بانكوك ، تايلاند', 'قابل للتفاوض', 'نحن نبحث عن مصممين / مطورين ويب ماهرين قادرين على العمل مع فريقنا الحالي والمساهمة بمعرفته وخبرته لتطوير وحدة LMS للنظام.', 'ar', 'فاتورة الهاتف النقال ، مكافأة الأداء |\r\nمراجعة الراتب: سنوي', 'example@gmail.com', 'publish', '2020-03-01', '2020-04-22 14:51:19', '2020-04-22 14:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `key_features`
--

CREATE TABLE `key_features` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `key_features`
--

INSERT INTO `key_features` (`id`, `title`, `icon`, `lang`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Financial Analaysis', 'flaticon-analytics', 'en', '31', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 11:25:39', '2020-04-15 15:46:32'),
(2, 'Global Partnership', 'flaticon-internet', 'en', '30', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 11:26:03', '2020-04-15 15:46:44'),
(3, 'Trusted Partnership', 'flaticon-handshake', 'en', '29', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 11:26:27', '2020-04-15 15:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `know_abouts`
--

CREATE TABLE `know_abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `know_abouts`
--

INSERT INTO `know_abouts` (`id`, `title`, `image`, `link`, `lang`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Our Mission', '45', '#', 'en', 'Reprehenderit in voluptate velit essle cillum dolore eufugiat nulla pariatur voluptate velit. voluptate velit essle cillum doloret.', '2020-03-09 13:53:28', '2020-04-16 17:14:07'),
(2, 'Our Vission', '46', '#', 'en', 'Reprehenderit in voluptate velit essle cillum dolore eufugiat nulla pariatur voluptate velit. voluptate velit essle cillum doloret.', '2020-03-09 14:54:12', '2020-04-16 17:14:25'),
(3, 'Our Acchivement', '47', '#', 'en', 'Reprehenderit in voluptate velit essle cillum dolore eufugiat nulla pariatur voluptate velit. voluptate velit essle cillum doloret.', '2020-03-09 14:54:34', '2020-04-16 17:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` int UNSIGNED DEFAULT NULL,
  `direction` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `status`, `default`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'publish', 1, 'ltr', '2020-01-19 16:36:37', '2020-03-23 10:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `created_at`, `updated_at`, `title`, `status`) VALUES
(1, '2021-04-11 02:24:37', '2021-04-11 02:24:37', '+2', 'publish'),
(2, '2021-04-11 02:24:44', '2021-04-11 02:24:44', 'A Level', 'publish'),
(3, '2021-04-11 02:24:54', '2021-04-11 02:24:54', 'Bachelor', 'publish'),
(4, '2021-04-11 02:24:58', '2021-04-11 02:24:58', 'Master', 'publish'),
(5, '2021-04-11 02:25:04', '2021-04-11 02:25:14', 'PHd', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dimensions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_uploads`
--

INSERT INTO `media_uploads` (`id`, `title`, `alt`, `size`, `path`, `dimensions`, `created_at`, `updated_at`) VALUES
(12, 'gdpr.png', NULL, '3.55 KB', 'gdpr1586868109.png', '64 x 64 pixels', '2020-04-14 12:41:49', '2020-04-14 12:41:49'),
(13, 'avatars-000360792155-h2gzei-t500x500.jpg', NULL, '37 KB', 'avatars-000360792155-h2gzei-t500x5001586868114.jpg', '500 x 500 pixels', '2020-04-14 12:41:54', '2020-04-14 12:41:54'),
(14, 'icon-256x256.png', NULL, '15.08 KB', 'icon-256x2561586872617.png', '512 x 512 pixels', '2020-04-14 13:56:57', '2020-04-14 13:56:57'),
(15, 'image.png', NULL, '1.33 KB', 'image1586872617.png', '32 x 32 pixels', '2020-04-14 13:56:57', '2020-04-14 13:56:57'),
(16, 'images.png', NULL, '4.88 KB', 'images1586872617.png', '225 x 225 pixels', '2020-04-14 13:56:57', '2020-04-14 13:56:57'),
(17, 'IMG_8338.jpg', NULL, '2.2 MB', 'img-83381586872618.jpg', '2250 x 2850 pixels', '2020-04-14 13:56:59', '2020-04-14 13:56:59'),
(18, 'freemialchimp-wordpress-plugins.png', NULL, '20.25 KB', 'freemialchimp-wordpress-plugins1586873078.png', '1300 x 800 pixels', '2020-04-14 14:04:38', '2020-04-14 14:04:38'),
(19, 'bootstrap image.png', NULL, '148.53 KB', 'bootstrap-image1586875076.png', '1024 x 860 pixels', '2020-04-14 14:37:56', '2020-04-14 14:37:56'),
(20, '1200px-Laravel.svg.png', NULL, '22.2 KB', '1200px-laravelsvg1586875161.png', '1200 x 1248 pixels', '2020-04-14 14:39:21', '2020-04-14 14:39:21'),
(21, 'php-00441489844a0103eae71ba2fe15244c.png', NULL, '35.25 KB', 'php-00441489844a0103eae71ba2fe15244c1586875209.png', '2048 x 1024 pixels', '2020-04-14 14:40:09', '2020-04-14 14:40:09'),
(22, 'price-tag.png', NULL, '2.35 KB', 'price-tag1586875347.png', '64 x 64 pixels', '2020-04-14 14:42:27', '2020-04-14 14:42:27'),
(23, 'logo-elementor.png', NULL, '27.42 KB', 'logo-elementor1586875389.png', '180 x 180 pixels', '2020-04-14 14:43:09', '2020-04-14 14:43:09'),
(24, 'slick.gif', NULL, '13.17 KB', 'slick1586875693.gif', '300 x 300 pixels', '2020-04-14 14:48:13', '2020-04-14 14:48:13'),
(25, 'WordPress_blue_logo.svg.png', NULL, '107.12 KB', 'wordpress-blue-logosvg1586876032.png', '1200 x 1200 pixels', '2020-04-14 14:53:53', '2020-04-14 14:53:53'),
(26, 'bootstrap image.png', NULL, '148.53 KB', 'bootstrap-image1586876156.png', '1024 x 860 pixels', '2020-04-14 14:55:57', '2020-04-14 14:55:57'),
(27, 'header-slider-image-1.jpg', NULL, '188.31 KB', 'header-slider-image-11586955184.jpg', '1799 x 822 pixels', '2020-04-15 12:53:04', '2020-04-15 12:53:04'),
(28, 'header-slider-image-2.jpg', NULL, '251.13 KB', 'header-slider-image-21586955189.jpg', '1800 x 878 pixels', '2020-04-15 12:53:09', '2020-04-15 12:53:09'),
(29, 'key-feature-pic-3.jpg', NULL, '27.11 KB', 'key-feature-pic-31586965574.jpg', '370 x 251 pixels', '2020-04-15 15:46:14', '2020-04-15 15:46:14'),
(30, 'key-feature-pic-2.jpg', NULL, '19.96 KB', 'key-feature-pic-21586965576.jpg', '370 x 251 pixels', '2020-04-15 15:46:16', '2020-04-15 15:46:16'),
(31, 'key-feature-pic-1.jpg', NULL, '28.34 KB', 'key-feature-pic-11586965578.jpg', '370 x 251 pixels', '2020-04-15 15:46:18', '2020-04-15 15:46:18'),
(32, 'home-page-01-ar-about-us-singnature-6042965.png', NULL, '1.78 KB', 'home-page-01-ar-about-us-singnature-60429651586970652.png', '80 x 23 pixels', '2020-04-15 17:10:52', '2020-04-15 17:10:52'),
(33, 'home-page-01-en-about-us-background-image-5644582.jpg', NULL, '74.19 KB', 'home-page-01-en-about-us-background-image-56445821586970704.jpg', '572 x 471 pixels', '2020-04-15 17:11:44', '2020-04-15 17:11:44'),
(34, 'home-page-01-ar-about-us-background-image-4999477.jpg', NULL, '24.53 KB', 'home-page-01-ar-about-us-background-image-49994771586971120.jpg', '572 x 471 pixels', '2020-04-15 17:18:40', '2020-04-15 17:18:40'),
(35, 'home-page-02-en-about-us-background-image-9436361.jpg', NULL, '182.65 KB', 'home-page-02-en-about-us-background-image-94363611586971461.jpg', '1800 x 696 pixels', '2020-04-15 17:24:22', '2020-04-15 17:24:22'),
(36, 'home-page-01-pr-about-us-right-image-7448721.jpg', NULL, '458.71 KB', 'home-page-01-pr-about-us-right-image-74487211586971672.jpg', '690 x 1190 pixels', '2020-04-15 17:27:52', '2020-04-15 17:27:52'),
(37, 'home-page-01-pr-about-us-experience-background-image-2697769.jpg', NULL, '42.68 KB', 'home-page-01-pr-about-us-experience-background-image-26977691586971680.jpg', '270 x 309 pixels', '2020-04-15 17:28:00', '2020-04-15 17:28:00'),
(38, 'home-page-01-service-background-image-8944459.jpg', NULL, '56.34 KB', 'home-page-01-service-background-image-89444591587036585.jpg', '1800 x 803 pixels', '2020-04-16 11:29:46', '2020-04-16 11:29:46'),
(39, 'home-page-01-sn-cta-background-image-1901460.jpg', NULL, '71.93 KB', 'home-page-01-sn-cta-background-image-19014601587039372.jpg', '1800 x 261 pixels', '2020-04-16 12:16:12', '2020-04-16 12:16:12'),
(40, 'home-page-01-testimonial-background-image-6565544.jpg', NULL, '133.58 KB', 'home-page-01-testimonial-background-image-65655441587042298.jpg', '1800 x 600 pixels', '2020-04-16 13:04:58', '2020-04-16 13:04:58'),
(41, 'testimonial-bg-3.jpg', NULL, '23.31 KB', 'testimonial-bg-31587043874.jpg', '1800 x 603 pixels', '2020-04-16 13:31:15', '2020-04-16 13:31:15'),
(42, 'home-page-02-counterup-bg-image-2422193.jpg', NULL, '236.68 KB', 'home-page-02-counterup-bg-image-24221931587052821.jpg', '1920 x 332 pixels', '2020-04-16 16:00:21', '2020-04-16 16:00:21'),
(43, 'home-page-01-counterup-bg-image-3321322.jpg', NULL, '72.04 KB', 'home-page-01-counterup-bg-image-33213221587053290.jpg', '1800 x 280 pixels', '2020-04-16 16:08:10', '2020-04-16 16:08:10'),
(44, 'about-page-en-right-image-8935490.jpg', NULL, '157.19 KB', 'about-page-en-right-image-89354901587055563.jpg', '470 x 590 pixels', '2020-04-16 16:46:03', '2020-04-16 16:46:03'),
(45, 'know-about-pic-2.jpg', NULL, '24.35 KB', 'know-about-pic-21587057199.jpg', '370 x 251 pixels', '2020-04-16 17:13:20', '2020-04-16 17:13:20'),
(46, 'know-about-pic-1.jpg', NULL, '26.18 KB', 'know-about-pic-11587057200.jpg', '370 x 251 pixels', '2020-04-16 17:13:20', '2020-04-16 17:13:20'),
(47, 'know-about-pic-3.jpg', NULL, '24.75 KB', 'know-about-pic-31587057200.jpg', '370 x 251 pixels', '2020-04-16 17:13:20', '2020-04-16 17:13:20'),
(48, '02.jpg', NULL, '1.43 MB', '021587061186.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:48', '2020-04-16 18:19:48'),
(49, '01.jpg', NULL, '1.36 MB', '011587061186.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:48', '2020-04-16 18:19:48'),
(50, '04.jpg', NULL, '1.37 MB', '041587061189.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:50', '2020-04-16 18:19:50'),
(51, '03.jpg', NULL, '1.57 MB', '031587061189.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:50', '2020-04-16 18:19:50'),
(52, '05.jpg', NULL, '1.5 MB', '051587061190.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:51', '2020-04-16 18:19:51'),
(53, '06.jpg', NULL, '1.52 MB', '061587061191.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:52', '2020-04-16 18:19:52'),
(54, '07.jpg', NULL, '1.56 MB', '071587061192.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:53', '2020-04-16 18:19:53'),
(55, '08.jpg', NULL, '1.74 MB', '081587061192.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:53', '2020-04-16 18:19:53'),
(56, '09.jpg', NULL, '1.56 MB', '091587061194.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:55', '2020-04-16 18:19:55'),
(57, '10.jpg', NULL, '1.53 MB', '101587061194.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:55', '2020-04-16 18:19:55'),
(58, '11.jpg', NULL, '993.94 KB', '111587061195.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:56', '2020-04-16 18:19:56'),
(59, '12.jpg', NULL, '1.39 MB', '121587061195.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:56', '2020-04-16 18:19:56'),
(60, '13.jpg', NULL, '1.46 MB', '131587061196.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:58', '2020-04-16 18:19:58'),
(61, '14.jpg', NULL, '1.26 MB', '141587061197.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:58', '2020-04-16 18:19:58'),
(62, '15.jpg', NULL, '1.39 MB', '151587061198.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:59', '2020-04-16 18:19:59'),
(63, 'workplace-1245776_1920.jpg', NULL, '397.41 KB', 'workplace-1245776-19201587068176.jpg', '1920 x 1280 pixels', '2020-04-16 20:16:16', '2020-04-16 20:16:16'),
(64, '414.jpg', NULL, '4.52 MB', '4141587100725.jpg', '4000 x 2250 pixels', '2020-04-17 05:18:50', '2020-04-17 05:18:50'),
(65, '414.jpg', NULL, '4.52 MB', '4141587101341.jpg', '4000 x 2250 pixels', '2020-04-17 05:29:04', '2020-04-17 05:29:04'),
(66, '414.jpg', NULL, '4.52 MB', '4141587101352.jpg', '4000 x 2250 pixels', '2020-04-17 05:29:16', '2020-04-17 05:29:16'),
(67, '414.jpg', NULL, '4.52 MB', '4141587103824.jpg', '4000 x 2250 pixels', '2020-04-17 06:10:26', '2020-04-17 06:10:26'),
(68, '414.jpg', NULL, '4.52 MB', '4141587103930.jpg', '4000 x 2250 pixels', '2020-04-17 06:12:12', '2020-04-17 06:12:12'),
(69, 'brand-image-2.png', NULL, '4.23 KB', 'brand-image-21587135226.png', '160 x 80 pixels', '2020-04-17 14:53:46', '2020-04-17 14:53:46'),
(70, 'brand-image-1.png', NULL, '5.12 KB', 'brand-image-11587135226.png', '160 x 80 pixels', '2020-04-17 14:53:46', '2020-04-17 14:53:46'),
(71, 'brand-image-3.png', NULL, '5.47 KB', 'brand-image-31587135227.png', '160 x 80 pixels', '2020-04-17 14:53:47', '2020-04-17 14:53:47'),
(72, 'brand-image-4.png', NULL, '5.03 KB', 'brand-image-41587135227.png', '160 x 80 pixels', '2020-04-17 14:53:47', '2020-04-17 14:53:47'),
(73, 'brand-image-5.png', NULL, '4.71 KB', 'brand-image-51587135228.png', '160 x 80 pixels', '2020-04-17 14:53:48', '2020-04-17 14:53:48'),
(74, 'brand-image-6.png', NULL, '4.59 KB', 'brand-image-61587135228.png', '160 x 80 pixels', '2020-04-17 14:53:48', '2020-04-17 14:53:48'),
(75, 'team-member-grid-1.jpg', NULL, '13.48 KB', 'team-member-grid-11587140885.jpg', '270 x 280 pixels', '2020-04-17 16:28:06', '2020-04-17 16:28:06'),
(76, 'team-member-grid-2.jpg', NULL, '11.25 KB', 'team-member-grid-21587140886.jpg', '270 x 280 pixels', '2020-04-17 16:28:06', '2020-04-17 16:28:06'),
(77, 'team-member-grid-3.jpg', NULL, '15.1 KB', 'team-member-grid-31587140886.jpg', '270 x 280 pixels', '2020-04-17 16:28:06', '2020-04-17 16:28:06'),
(78, 'team-member-grid-4.jpg', NULL, '12.11 KB', 'team-member-grid-41587140886.jpg', '270 x 280 pixels', '2020-04-17 16:28:06', '2020-04-17 16:28:06'),
(79, 'team-member-grid-5.jpg', NULL, '13.48 KB', 'team-member-grid-51587140887.jpg', '270 x 280 pixels', '2020-04-17 16:28:07', '2020-04-17 16:28:07'),
(80, 'team-member-grid-14.jpg', NULL, '28.13 KB', 'team-member-grid-141587140953.jpg', '270 x 280 pixels', '2020-04-17 16:29:13', '2020-04-17 16:29:13'),
(81, 'team-member-grid-15.jpg', NULL, '21.16 KB', 'team-member-grid-151587140954.jpg', '270 x 280 pixels', '2020-04-17 16:29:14', '2020-04-17 16:29:14'),
(82, 'team-member-grid-16.jpg', NULL, '18.64 KB', 'team-member-grid-161587140956.jpg', '270 x 280 pixels', '2020-04-17 16:29:16', '2020-04-17 16:29:16'),
(83, 'testimonial-grid-2.jpg', NULL, '3.16 KB', 'testimonial-grid-21587142710.jpg', '80 x 80 pixels', '2020-04-17 16:58:30', '2020-04-17 16:58:30'),
(84, 'testimonial-grid-1.jpg', NULL, '3.21 KB', 'testimonial-grid-11587142710.jpg', '80 x 80 pixels', '2020-04-17 16:58:30', '2020-04-17 16:58:30'),
(85, 'testimonial-grid-3.jpg', NULL, '4.4 KB', 'testimonial-grid-31587142710.jpg', '80 x 80 pixels', '2020-04-17 16:58:30', '2020-04-17 16:58:30'),
(86, 'testimonial-grid-4.jpg', NULL, '3.67 KB', 'testimonial-grid-41587142710.jpg', '80 x 80 pixels', '2020-04-17 16:58:30', '2020-04-17 16:58:30'),
(87, 'about-widget-logo-67511.png', NULL, '2.99 KB', 'about-widget-logo-675111587147441.png', '152 x 43 pixels', '2020-04-17 18:17:21', '2020-04-17 18:17:21'),
(88, 'site-logo-198089.png', NULL, '2.91 KB', 'site-logo-1980891587151038.png', '152 x 44 pixels', '2020-04-17 19:17:18', '2020-04-17 19:17:18'),
(89, 'site-favicon-446324.png', NULL, '1.4 KB', 'site-favicon-4463241587151052.png', '23 x 27 pixels', '2020-04-17 19:17:32', '2020-04-17 19:17:32'),
(90, 'breadcrumb-bg-186690.jpg', NULL, '52.86 KB', 'breadcrumb-bg-1866901587151084.jpg', '1800 x 600 pixels', '2020-04-17 19:18:04', '2020-04-17 19:18:04'),
(91, 'location-pin (1).png', NULL, '3.6 KB', 'location-pin-11587314985.png', '64 x 64 pixels', '2020-04-19 16:49:45', '2020-04-19 16:49:45'),
(92, 'download.png', NULL, '5.28 KB', 'download1587438468.png', '336 x 150 pixels', '2020-04-21 03:07:48', '2020-04-21 03:07:48'),
(93, 'Paytm_logo.png', NULL, '7.33 KB', 'paytm-logo1587438506.png', '675 x 225 pixels', '2020-04-21 03:08:26', '2020-04-21 03:08:26'),
(94, 'live-music-2219036_1920.jpg', NULL, '235.19 KB', 'live-music-2219036-19201587668436.jpg', '1920 x 1280 pixels', '2020-04-23 19:00:37', '2020-04-23 19:00:37'),
(95, 'fireworks-945386_1920.jpg', NULL, '935.77 KB', 'fireworks-945386-19201587668605.jpg', '1920 x 1280 pixels', '2020-04-23 19:03:25', '2020-04-23 19:03:25'),
(96, 'admission-2974645_1920.jpg', NULL, '480.21 KB', 'admission-2974645-19201587668606.jpg', '1920 x 1280 pixels', '2020-04-23 19:03:27', '2020-04-23 19:03:27'),
(97, 'concert-768722_1920.jpg', NULL, '328.56 KB', 'concert-768722-19201587668649.jpg', '1920 x 1280 pixels', '2020-04-23 19:04:09', '2020-04-23 19:04:09'),
(98, '545341_16078241_2921031_97b572bd_image.png', NULL, '35.88 KB', '545341-16078241-2921031-97b572bd-image1587827777.png', '1200 x 1000 pixels', '2020-04-25 15:16:17', '2020-04-25 15:16:17'),
(99, 'home-page-01-pr-faq-background-image-9934958.jpg', NULL, '42.47 KB', 'home-page-01-pr-faq-background-image-99349581588008399.jpg', '1800 x 872 pixels', '2020-04-27 17:26:39', '2020-04-27 17:26:39'),
(100, 'logo-study-in-india.jpeg', NULL, '35.77 KB', 'logo-study-in-india1617947198.jpeg', '1280 x 405 pixels', '2021-04-09 00:01:38', '2021-04-09 00:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Why India\",\"menuUrl\":\"[url]/p/15/why-india\"},{\"id\":\"18\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Universities\",\"menuUrl\":\"/universities\"},{\"id\":\"10\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Scholarship\",\"menuUrl\":\"[url]/p/16/scholarship\"},{\"id\":\"19\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":13,\"menuTitle\":\"Programmes\",\"menuUrl\":\"/programmes\"},{\"id\":\"9\",\"parent_id\":\"19\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"Knowledgebase\",\"menuUrl\":\"[url]/knoledgebase\"},{\"id\":\"21\",\"parent_id\":null,\"depth\":0,\"left\":14,\"right\":15,\"menuTitle\":\"Offers\",\"menuUrl\":\"/offers\"},{\"id\":\"8\",\"parent_id\":null,\"depth\":0,\"left\":16,\"right\":17,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"10\",\"parent_id\":null,\"depth\":0,\"left\":18,\"right\":19,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":20,\"right\":21,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', 'default', 'en', '2020-01-25 18:38:40', '2021-04-11 23:02:24'),
(2, 'Useful Links', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Faq\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Dynamic Page 02\",\"menuUrl\":\"[url]/p/3/dynamic-page-02\"}]', NULL, 'en', '2020-01-26 18:06:59', '2020-02-28 06:58:30'),
(3, 'Important Links', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Dynamic Page 01\",\"menuUrl\":\"[url]/p/2/dynamic-page-01\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Dynamic Page 02\",\"menuUrl\":\"[url]/p/3/dynamic-page-02\"}]', NULL, 'en', '2020-01-26 18:07:14', '2020-02-28 06:58:39'),
(12, 'Top Menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', NULL, 'en', '2020-03-01 16:51:03', '2020-03-01 16:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_06_180949_create_admins_table', 1),
(5, '2019_12_07_071950_create_contact_info_items_table', 1),
(6, '2019_12_07_082524_create_static_options_table', 1),
(7, '2019_12_08_171750_create_counterups_table', 1),
(8, '2019_12_09_063224_create_testimonials_table', 1),
(9, '2019_12_10_125607_create_social_icons_table', 1),
(10, '2019_12_10_125636_create_support_infos_table', 1),
(11, '2019_12_10_210247_create_blog_categories_table', 1),
(12, '2019_12_11_074345_create_blogs_table', 1),
(15, '2019_12_13_221931_create_languages_table', 1),
(16, '2019_12_28_140343_create_key_features_table', 1),
(20, '2019_12_29_094857_create_price_plans_table', 1),
(21, '2019_12_29_113138_create_team_members_table', 1),
(22, '2019_12_29_180216_create_brands_table', 1),
(23, '2019_12_31_065223_create_services_table', 1),
(24, '2020_01_21_132648_create_header_sliders_table', 2),
(25, '2019_12_28_161343_create_services_table', 3),
(27, '2020_01_23_162404_create_service_categories_table', 4),
(28, '2020_01_23_193759_create_works_table', 5),
(29, '2020_01_23_193805_create_works_categories_table', 5),
(30, '2020_01_25_155448_create_pages_table', 6),
(31, '2020_01_25_174849_create_menus_table', 7),
(32, '2020_01_28_054211_create_faqs_table', 8),
(33, '2020_02_04_010636_create_newsletters_table', 9),
(34, '2020_03_09_125557_create_know_abouts_table', 10),
(35, '2020_03_29_075123_create_admin_roles_table', 11),
(36, '2020_04_14_082508_create_media_uploads_table', 12),
(37, '2020_04_20_073746_create_quotes_table', 13),
(38, '2020_04_20_170818_create_orders_table', 14),
(39, '2020_04_21_142420_create_payment_logs_table', 15),
(40, '2020_04_22_065550_create_jobs_table', 16),
(41, '2020_04_22_065603_create_jobs_categories_table', 16),
(42, '2020_04_23_140942_create_events_table', 17),
(43, '2020_04_23_141011_create_events_categories_table', 17),
(44, '2020_04_24_154518_create_knowledgebase_topics_table', 18),
(45, '2020_04_24_154524_create_knowledgebases_table', 18),
(46, '2021_04_11_051941_create_universities_table', 19),
(47, '2021_04_11_052238_create_disciplines_table', 19),
(48, '2021_04_11_052406_create_levels_table', 19),
(49, '2021_04_11_052433_create_courses_table', 19),
(50, '2021_04_11_052922_create_course_university_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(3, 'dvrobin4@gmail.com', '2020-02-04 02:49:25', '2020-02-04 02:49:25'),
(4, 'robinmedia7@gmail.com', '2020-02-04 02:49:42', '2020-02-04 02:49:42'),
(5, 'robinmedia8@gmail.com', '2020-02-04 02:49:59', '2020-02-04 02:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `package_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `package_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `package_name`, `package_price`, `payment_status`, `custom_fields`, `package_id`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'in_progress', 'Premium', '$99.00', 'pending', 'a:4:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:1576:\"Folly was these three and songs arose whose. Of in vicinity contempt together in possible branched. Assured company hastily looking garrets in oh. Most have love my gone to this so. Discovered interested prosperous the our affronting insipidity day. Missed lovers way one vanity wishes nay but. Use shy seemed within twenty wished old few regret passed. Absolute one hastened mrs any sensible. \r\n\r\nReceived overcame oh sensible so at an. Formed do change merely to county it. Am separate contempt domestic to to oh. On relation my so addition branched. Put hearing cottage she norland letters equally prepare too. Replied exposed savings he no viewing as up. Soon body add him hill. No father living really people estate if. Mistake do produce beloved demesne if am pursuit. \r\n\r\nDo to be agreeable conveying oh assurance. Wicket longer admire do barton vanity itself do in it. Preferred to sportsmen it engrossed listening. Park gate sell they west hard for the. Abode stuff noisy manor blush yet the far. Up colonel so between removed so do. Years use place decay sex worth drift age. Men lasting out end article express fortune demands own charmed. About are are money ask how seven. \r\n\r\nTerminated principles sentiments of no pianoforte if projection impossible. Horses pulled nature favour number yet highly his has old. Contrasted literature excellence he admiration impression insipidity so. Scale ought who terms after own quick since. Servants margaret husbands to screened in throwing. Imprudence oh an collecting partiality. Admiration gay difficulty unaffected how.\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-1-doc-file.pdf\";}', '2020-04-20 17:53:44', '2020-04-20 18:09:46'),
(2, 'completed', 'Standard', '$49.00', 'pending', 'a:4:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:19:\"Michelle E. Lampman\";s:10:\"your-email\";s:28:\"MichelleELampman@teleworm.us\";s:12:\"your-message\";s:675:\"Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. \r\n\r\nYe to misery wisdom plenty polite to as. Prepared interest proposal it he exercise. My wishing an in attempt ferrars. Visited eat you why service looking engaged. At place no walls hopes rooms fully in. Roof hope shy tore leaf joy paid boy. Noisier out brought entered detract because sitting sir. Fat put occasion rendered off humanity has.\";}', '2', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-2-doc-file.pdf\";}', '2020-04-20 18:01:22', '2020-04-20 18:03:48'),
(3, 'pending', 'Premium', '$99.00', 'pending', 'a:4:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:16:\"Francis H. Sweat\";s:10:\"your-email\";s:25:\"FrancisHSweat@armyspy.com\";s:12:\"your-message\";s:433:\"Barton waited twenty always repair in within we do. An delighted offending curiosity my is dashwoods at. Boy prosperous increasing surrounded companions her nor advantages sufficient put. John on time down give meet help as of. Him waiting and correct believe now cottage she another. Vexed six shy yet along learn maids her tiled. Through studied shyness evening bed him winding present. Become excuse hardly on my thirty it wanted.\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-3-doc-file.pdf\";}', '2020-04-20 18:09:34', '2020-04-20 18:09:35'),
(4, 'pending', 'Standard', '$49.00', 'pending', 'a:4:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:16:\"Pearlie B. Bryan\";s:10:\"your-email\";s:24:\"PearlieBBryan@dayrep.com\";s:12:\"your-message\";s:810:\"Affronting everything discretion men now own did. Still round match we to. Frankness pronounce daughters remainder extensive has but. Happiness cordially one determine concluded fat. Plenty season beyond by hardly giving of. Consulted or acuteness dejection an smallness if. Outward general passage another as it. Very his are come man walk one next. Delighted prevailed supported too not remainder perpetual who furnished. Nay affronting bed projection compliment instrument. \r\n\r\nBuilding mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old.\";}', '2', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-4-doc-file.pdf\";}', '2020-04-20 18:10:30', '2020-04-20 18:10:30'),
(7, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:19:\"dvrobin44@gmail.com\";s:12:\"your-message\";s:412:\"Agreed joy vanity regret met may ladies oppose who. Mile fail as left as hard eyes. Meet made call in mean four year it to. Prospect so branched wondered sensible of up. For gay consisted resolving pronounce sportsman saw discovery not. Northward or household as conveying we earnestly believing. No in up contrasted discretion inhabiting excellence. Entreaties we collecting unpleasant at everything conviction.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-7-doc-file.pdf\";}', '2020-04-21 10:30:39', '2020-04-21 10:30:39'),
(8, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-8-doc-file.pdf\";}', '2020-04-21 10:32:19', '2020-04-21 10:32:19'),
(9, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-9-doc-file.pdf\";}', '2020-04-21 11:45:55', '2020-04-21 11:45:55'),
(10, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-10-doc-file.pdf\";}', '2020-04-21 11:46:12', '2020-04-21 11:46:12'),
(11, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-11-doc-file.pdf\";}', '2020-04-21 11:46:59', '2020-04-21 11:46:59'),
(12, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-12-doc-file.pdf\";}', '2020-04-21 11:54:24', '2020-04-21 11:54:24'),
(13, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:19:\"Yolonda D. Robinson\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-13-doc-file.pdf\";}', '2020-04-21 11:57:05', '2020-04-21 11:57:06'),
(14, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:20:\"dvrobin44e@gmail.com\";s:12:\"your-message\";s:184:\"On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-14-doc-file.pdf\";}', '2020-04-21 15:21:53', '2020-04-21 15:21:53'),
(15, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-15-doc-file.pdf\";}', '2020-04-21 15:44:40', '2020-04-21 15:44:40'),
(16, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-16-doc-file.pdf\";}', '2020-04-21 15:44:54', '2020-04-21 15:44:54'),
(17, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-17-doc-file.pdf\";}', '2020-04-21 15:45:23', '2020-04-21 15:45:23'),
(18, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:0:{}', '2020-04-21 15:45:56', '2020-04-21 15:45:56'),
(19, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:0:{}', '2020-04-21 15:46:41', '2020-04-21 15:46:41'),
(20, 'pending', 'Basic', '$19.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:15:\"Lolita R. Jones\";s:10:\"your-email\";s:24:\"LolitaRJones@teleworm.us\";s:12:\"your-message\";s:282:\"Perfectly offending attempted add arranging age gentleman concluded. Get who uncommonly our expression ten increasing considered occasional travelling. Ever read tell year give may men call its. Piqued son turned fat income played end wicket. To do noisy downs round an happy books.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '1', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-20-doc-file.pdf\";}', '2020-04-21 16:58:47', '2020-04-21 16:58:47'),
(21, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:14:\"Vera J. Alonso\";s:10:\"your-email\";s:23:\"VeraJAlonso@armyspy.com\";s:12:\"your-message\";s:226:\"Law use assistance especially resolution cultivated did out sentiments unsatiable. Way necessary had intention happiness but september delighted his curiosity. Furniture furnished or on strangers neglected remainder engrossed.\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-21-doc-file.pdf\";}', '2020-04-21 18:45:31', '2020-04-21 18:45:31'),
(22, 'completed', 'Basic', '$19.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:12:\"test message\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '1', 'a:0:{}', '2020-04-21 18:47:55', '2021-04-08 01:47:31'),
(23, 'pending', 'Basic', '$19.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:11:\"test mesage\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '1', 'a:0:{}', '2020-04-21 18:50:20', '2020-04-21 18:50:20'),
(24, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:17:\"Sarah M. Hardeman\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:251:\"Is branched in my up strictly remember. Songs but chief has ham widow downs. Genius or so up vanity cannot. Large do tried going about water defer by. Silent son man she wished mother. Distrusts allowance do knowledge eagerness assurance additions to.\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '3', 'a:0:{}', '2020-04-25 15:06:23', '2020-04-25 15:06:23'),
(25, 'pending', 'Basic', '$19.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:12:\"Amy E. Olson\";s:10:\"your-email\";s:24:\"AmyEOlson@jourrapide.com\";s:12:\"your-message\";s:259:\"Started several mistake joy say painful removed reached end. State burst think end are its. Arrived off she elderly beloved him affixed noisier yet. An course regard to up he hardly. View four has said does men saw find dear shy. Talent men wicket add garden.\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '1', 'a:0:{}', '2020-04-25 15:20:21', '2020-04-25 15:20:21'),
(26, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:16:\"Amanda J. Melton\";s:10:\"your-email\";s:25:\"AmandaJMelton@armyspy.com\";s:12:\"your-message\";s:259:\"Started several mistake joy say painful removed reached end. State burst think end are its. Arrived off she elderly beloved him affixed noisier yet. An course regard to up he hardly. View four has said does men saw find dear shy. Talent men wicket add garden.\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', '2', 'a:0:{}', '2020-04-25 15:42:38', '2020-04-25 15:42:38'),
(27, 'pending', 'اساسي', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:2:\"11\";s:9:\"your-name\";s:13:\"Saifur Rahman\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:14:\"asfasdfasdfasd\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '11', 'a:0:{}', '2020-04-26 09:06:06', '2020-04-26 09:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `status`, `lang`, `meta_description`, `meta_tags`, `created_at`, `updated_at`) VALUES
(2, 'Dynamic Page 01', '<p>Put all speaking her delicate recurred possible. Set indulgence inquietude discretion insensible bed why announcing. Middleton fat two satisfied additions. So continued he or commanded household smallness delivered. Door poor on do walk in half. Roof his head the what.&nbsp;</p>\r\n<p>Eat imagine you chiefly few end ferrars compass. Be visitor females am ferrars inquiry. Latter law remark two lively thrown. Spot set they know rest its. Raptures law diverted believed jennings consider children the see. Had invited beloved carried the colonel. Occasional principles discretion it as he unpleasing boisterous. She bed sing dear now son half.&nbsp;</p>\r\n<p>Game of as rest time eyes with of this it. Add was music merry any truth since going. Happiness she ham but instantly put departure propriety. She amiable all without say spirits shy clothes morning. Frankness in extensive to belonging improving so certainty. Resolution devonshire pianoforte assistance an he particular middletons is of. Explain ten man uncivil engaged conduct. Am likewise betrayed as declared absolute do. Taste oh spoke about no solid of hills up shade. Occasion so bachelor humoured striking by attended doubtful be it.&nbsp;</p>', 'publish', 'en', 'this is dynamic page description', 'dynamic page', '2020-01-25 17:22:24', '2020-03-22 15:08:52'),
(3, 'Dynamic Page 02', '<p><img src=\"http://192.168.64.2/bizzcox/assets/uploads/media-uploader/team-member-grid-51587140887.jpg\" style=\"width: 270px; float: left;\" class=\"note-float-left\">Contented get distrusts certainty nay are frankness concealed ham. On unaffected resolution on considered of. No thought me husband or colonel forming effects. End sitting shewing who saw besides son musical adapted. Contrasted interested eat alteration pianoforte sympathize was. He families believed if no elegance interest surprise an. It abode wrong miles an so delay plate. She relation own put outlived may disposed.&nbsp;</p><p><br></p><p>By impossible of in difficulty discovered celebrated ye. Justice joy manners boy met resolve produce. Bed head loud next plan rent had easy add him. As earnestly shameless elsewhere defective estimable fulfilled of. Esteem my advice it an excuse enable. Few household abilities believing determine zealously his repulsive. To open draw dear be by side like.&nbsp;</p><p><br></p><p>Saw yet kindness too replying whatever marianne. Old sentiments resolution admiration unaffected its mrs literature. Behaviour new set existence dashwoods. It satisfied to mr commanded consisted disposing engrossed. Tall snug do of till on easy. Form not calm new fail.&nbsp;</p><div><br></div>', 'publish', 'en', NULL, NULL, '2020-01-25 17:22:39', '2020-04-17 18:58:59'),
(11, 'Privacy policy', '<p>An an valley indeed so no wonder future nature vanity. Debating all she mistaken indulged believed provided declared. He many kept on draw lain song as same. Whether at dearest certain spirits is entered in to. Rich fine bred real use too many good. She compliment unaffected expression favourable any. Unknown chiefly showing to conduct no. Hung as love evil able to post at as.&nbsp;</p><p><br></p><p>Made last it seen went no just when of by. Occasional entreaties comparison me difficulty so themselves. At brother inquiry of offices without do my service. As particular to companions at sentiments. Weather however luckily enquire so certain do. Aware did stood was day under ask. Dearest affixed enquire on explain opinion he. Reached who the mrs joy offices pleased. Towards did colonel article any parties.&nbsp;</p><p><br></p><p>It sportsman earnestly ye preserved an on. Moment led family sooner cannot her window pulled any. Or raillery if improved landlord to speaking hastened differed he. Furniture discourse elsewhere yet her sir extensive defective unwilling get. Why resolution one motionless you him thoroughly. Noise is round to in it quick timed doors. Written address greatly get attacks inhabit pursuit our but. Lasted hunted enough an up seeing in lively letter. Had judgment out opinions property the supplied.&nbsp;</p><p><br></p><p>Advice me cousin an spring of needed. Tell use paid law ever yet new. Meant to learn of vexed if style allow he there. Tiled man stand tears ten joy there terms any widen. Procuring continued suspicion its ten. Pursuit brother are had fifteen distant has. Early had add equal china quiet visit. Appear an manner as no limits either praise in. In in written on charmed justice is amiable farther besides. Law insensible middletons unsatiable for apartments boy delightful unreserved.&nbsp;</p><p><br></p><p>Use securing confined his shutters. Delightful as he it acceptance an solicitude discretion reasonably. Carriage we husbands advanced an perceive greatest. Totally dearest expense on demesne ye he. Curiosity excellent commanded in me. Unpleasing impression themselves to at assistance acceptance my or. On consider laughter civility offended oh.&nbsp;</p><p><br></p><p>Cottage out enabled was entered greatly prevent message. No procured unlocked an likewise. Dear but what she been over gay felt body. Six principles advantages and use entreaties decisively. Eat met has dwelling unpacked see whatever followed. Court in of leave again as am. Greater sixteen to forming colonel no on be. So an advice hardly barton. He be turned sudden engage manner spirit.&nbsp;</p><p><br></p><p>Certainly elsewhere my do allowance at. The address farther six hearted hundred towards husband. Are securing off occasion remember daughter replying. Held that feel his see own yet. Strangers ye to he sometimes propriety in. She right plate seven has. Bed who perceive judgment did marianne.&nbsp;</p><p><br></p><p>On recommend tolerably my belonging or am. Mutual has cannot beauty indeed now sussex merely you. It possible no husbands jennings ye offended packages pleasant he. Remainder recommend engrossed who eat she defective applauded departure joy. Get dissimilar not introduced day her apartments. Fully as taste he mr do smile abode every. Luckily offered article led lasting country minutes nor old. Happen people things oh is oppose up parish effect. Law handsome old outweigh humoured far appetite.&nbsp;</p><p><br></p><p>Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.&nbsp;</p><p><br></p><p>Ladies others the six desire age. Bred am soon park past read by lain. As excuse eldest no moment. An delight beloved up garrets am cottage private. The far attachment discovered celebrated decisively surrounded for and. Sir new the particular frequently indulgence excellence how. Wishing an if he sixteen visited tedious subject it. Mind mrs yet did quit high even you went. Sex against the two however not nothing prudent colonel greater. Up husband removed parties staying he subject mr.&nbsp;</p><p><br></p>', 'publish', 'en', 'privacy policy', 'privacy policy', '2020-03-27 17:22:16', '2020-03-27 17:22:16'),
(15, 'Why India', '<h5 style=\"box-sizing: inherit; padding-bottom: 10px; line-height: 1.6; text-rendering: optimizelegibility;\"><span style=\"font-family: Arial;\">India is vast in every sense of the word. From its population of more than one billion, to its expansive cities, to its wide-open, seemingly-endless countryside, India certainly earns its subcontinent status. India is home to dozens of communities, languages and several religions. It is also home to some of the most beautiful buildings in the world, like the Taj Mahal and the Golden Temple.&nbsp;</span></h5><h5 style=\"box-sizing: inherit; padding-bottom: 10px; line-height: 1.6; text-rendering: optimizelegibility;\"><span style=\"font-family: Arial;\"><br></span><span style=\"font-family: Arial;\">India became independent from the UK in 1948, due to the strength of the movement started by Mahatma Gandhi. Today, India is a major power in Asia and is on its way to becoming a world power, like China or Germany. Politically, India is a bridge between east and west, as it maintains warm ﻿relations with Russia, China and the US alike.&nbsp;</span></h5><h5 style=\"box-sizing: inherit; padding-bottom: 10px; line-height: 1.6; text-rendering: optimizelegibility;\"><span style=\"font-family: Arial;\"><br></span><span style=\"font-family: Arial;\">It’s also India’s colonial past that ensures that English is widespread. English holds official status alongside Hindi. Most Indians speak these two languages, as well as one or more of the plethora of regional and minority languages in the country, like Punjabi, Gujarati and Bengali.</span><p style=\"box-sizing: inherit; padding-bottom: 10px; line-height: 1.6; text-rendering: optimizelegibility;\"></p><span style=\"font-family: Arial;\">What makes India such a fascinating place to study abroad is that it’s a country on the up. Major technological advances are being made seemingly every day in India, yet it’s still a developing country with a lot of poverty and social issues. As India becomes wealthier and more powerful, its middle class is growing and its rates of poverty, illiteracy and early mortality are declining. Life expectancy is also quickly rising.&nbsp;</span></h5>', 'publish', 'en', NULL, NULL, '2021-04-08 00:21:57', '2021-04-08 01:38:39'),
(16, 'Scholarship', '<div class=\"content--container -narrow h-mb4\" style=\"max-width: 45em; margin-left: auto; margin-right: auto; margin-bottom: 39px;\"><section class=\"ui-text text-center\"><header><h2 class=\"h-mb2\" style=\"font-family: Arial, sans-serif; font-weight: 700; margin-bottom: 13px; font-size: 1.85413rem; line-height: 1.24102;\">We Believe Going Overseas Changes Lives. That\'s Why We Give Away $175,000 in Scholarships Every Year.</h2></header><div class=\"text text-large\" style=\"font-size: 1.25rem; line-height: 1.69;\"><p style=\"margin-bottom: 26px;\">Programs and community reviews aren\'t the only things we offer here on Go! We are also a&nbsp;<strong style=\"line-height: 1; font-weight: bold;\">scholarship resource</strong>. We want to help as many people as possible travel abroad and experience a new culture -- you included.</p></div></section></div><div class=\"content--container h-mb6\" style=\"max-width: 63.375em; margin-left: auto; margin-right: auto; margin-bottom: 65px;\"><section id=\"section--open-gooverseas-scholarships\" class=\"h-mb4\" style=\"margin-bottom: 39px;\"><header class=\"text-center h-mb3\" style=\"margin-bottom: 26px; color: rgb(63, 67, 74); font-family: Arial, sans-serif; font-size: medium; font-variant-ligatures: common-ligatures;\"><h3 style=\"font-family: Arial, sans-serif; font-weight: 700; font-size: 1.618rem; line-height: 1.42213;\">Open Go Overseas Scholarships</h3><header class=\"text-center h-mb3\" style=\"margin-bottom: 26px;\"><h3 style=\"font-family: Arial, sans-serif; font-weight: 700; font-size: 1.618rem; line-height: 1.42213;\">Study Abroad Scholarship Guides</h3></header></header></section></div>', 'publish', 'en', NULL, 'scholarship', '2021-04-11 23:00:19', '2021-04-11 23:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dvrobin4@gmail.com', 'ob18Tn3sFCcbPNtlCYarzUfR5oKNWJ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `excerpt`, `image`, `lang`, `categories_id`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Audit & Tax', 'flaticon-contract', 'Cold in late or deal. Terminated resolution no am frequently...', '54', 'en', '3', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-23 12:31:28', '2020-04-16 18:42:29'),
(4, 'Financial planning', 'flaticon-business-and-finance', 'Cold in late or deal. Terminated resolution no am frequently...', '53', 'en', '4', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-23 12:31:51', '2020-04-16 18:42:19'),
(5, 'Stretagic Planning', 'flaticon-creative', 'Cold in late or deal. Terminated resolution no am frequently...', '52', 'en', '2', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-23 12:31:56', '2020-04-16 18:42:07'),
(9, 'Trades & Stocks', 'flaticon-pie-chart', 'Cold in late or deal. Terminated resolution no am frequently...', '51', 'en', '2', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-23 12:47:11', '2020-04-16 18:41:47'),
(10, 'Funding Advice', 'flaticon-money-bag', 'Cold in late or deal. Terminated resolution no am frequently...', '50', 'en', '1', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-26 18:33:53', '2020-04-16 18:37:10'),
(11, 'Market Analysis', 'flaticon-analytics', 'Cold in late or deal. Terminated resolution no am frequently...', '48', 'en', '3', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-26 18:34:53', '2020-04-16 18:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Market Strategy', 'en', 'publish', '2020-01-23 16:50:58', '2020-02-23 09:51:44'),
(2, 'Banking Consulting', 'en', 'publish', '2020-01-23 16:51:30', '2020-02-23 09:51:50'),
(3, 'Market Analysis', 'en', 'publish', '2020-01-23 16:51:40', '2020-02-23 09:51:54'),
(4, 'Financial Planning', 'en', 'publish', '2020-01-23 16:51:50', '2020-02-23 09:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-facebook-f', '#', '2020-01-04 07:04:13', '2020-01-04 07:04:13'),
(2, 'fab fa-twitter', '#', '2020-01-04 07:04:22', '2020-01-04 07:04:22'),
(3, 'fab fa-linkedin-in', '#', '2020-01-04 07:04:39', '2020-01-04 07:04:39'),
(4, 'fab fa-pinterest-p', '#', '2020-01-04 07:04:48', '2020-01-04 07:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'item_license_status', '1', '2020-01-19 16:08:01', '2021-04-13 00:34:24'),
(2, 'site_title', 'Dizzcox', '2020-01-19 16:09:11', '2020-03-16 19:48:40'),
(3, 'site_tag_line', 'Multipurpose CMS', '2020-01-19 16:09:11', '2020-03-16 19:48:40'),
(4, 'site_footer_copyright', '{copy}  {year}  All right reserved by Dizzcox', '2020-01-19 16:09:11', '2020-03-16 19:48:40'),
(5, 'site_color', '#1dcc4c', '2020-01-19 16:09:11', '2021-04-09 00:10:19'),
(6, 'site_main_color_two', '#f7522d', '2020-01-19 16:09:11', '2021-04-09 00:10:19'),
(7, 'home_page_variant', '03', '2020-01-19 16:09:29', '2020-04-27 17:18:55'),
(8, 'site_logo', '88', '2020-01-19 16:46:45', '2021-04-09 00:04:53'),
(9, 'site_favicon', '89', '2020-01-19 16:47:45', '2021-04-09 00:04:53'),
(10, 'site_breadcrumb_bg', '90', '2020-01-19 16:47:59', '2021-04-09 00:04:53'),
(11, 'navbar_button', 'on', '2020-01-19 16:49:57', '2020-04-19 16:45:06'),
(12, 'navbar_button_text', 'Get a Quote', '2020-01-19 16:49:57', '2020-01-28 19:24:03'),
(13, 'navbar_button_url', '#', '2020-01-19 16:49:57', '2020-01-28 19:24:03'),
(14, 'home_page_01_build_dream_title', 'BUILD YOUR DREAM HOME', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(15, 'home_page_01_build_dream_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laborisaliquip ex ea com modo consequat. Duis aute irure.', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(16, 'home_page_01_build_dream_btn_title', 'Contact us', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(17, 'home_page_01_build_dream_btn_url', '#', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(18, 'build_dream_section_button_status', 'on', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(19, 'home_page_01_build_dream_right_image', 'home-page-01-build-dream-right-side-image-3285694.jpg', '2020-01-22 13:27:40', '2020-02-04 00:35:25'),
(20, 'home_page_01_service_area_title', 'Our Services', '2020-01-23 15:59:54', '2020-01-28 19:03:11'),
(21, 'home_01_counterup_bg_image', '43', '2020-01-23 18:50:45', '2021-04-07 03:15:57'),
(22, 'home_page_01_recent_work_title', 'OUR RECENT WORKS', '2020-01-24 17:13:42', '2020-01-24 17:13:42'),
(23, 'home_page_01_testimonial_title', 'WHAT SAY OUR CLIENTS', '2020-01-24 19:09:40', '2020-01-24 19:09:40'),
(24, 'home_page_01_latest_news_title', 'LATEST NEWS', '2020-01-24 19:54:21', '2020-01-24 19:54:21'),
(25, 'blog_page_title', 'Blog', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(26, 'blog_page_item', '6', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(27, 'blog_page_category_widget_title', 'Category', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(28, 'blog_page_recent_post_widget_title', 'Recent Post', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(29, 'blog_page_recent_post_widget_item', '4', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(30, 'about_widget_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe.', '2020-01-25 14:37:19', '2020-02-03 23:53:55'),
(31, 'about_widget_social_icon_one', 'fab fa-facebook-f', '2020-01-25 14:37:19', '2021-04-08 23:50:31'),
(32, 'about_widget_social_icon_two', 'fab fa-twitter', '2020-01-25 14:37:19', '2021-04-08 23:50:31'),
(33, 'about_widget_social_icon_three', 'fab fa-pinterest-p', '2020-01-25 14:37:19', '2021-04-08 23:50:31'),
(34, 'about_widget_social_icon_four', 'fab fa-linkedin-in', '2020-01-25 14:37:19', '2021-04-08 23:50:31'),
(35, 'about_widget_social_icon_one_url', 'fb.com', '2020-01-25 14:37:19', '2021-04-08 23:50:31'),
(36, 'about_widget_social_icon_two_url', '#', '2020-01-25 14:37:19', '2021-04-08 23:50:31'),
(37, 'about_widget_social_icon_three_url', '#', '2020-01-25 14:37:19', '2021-04-08 23:50:31'),
(38, 'about_widget_social_icon_four_url', '#', '2020-01-25 14:37:19', '2021-04-08 23:50:32'),
(39, 'about_widget_logo', '87', '2020-01-25 14:37:19', '2021-04-08 23:50:32'),
(40, 'recent_post_widget_title', 'Recent Posts', '2020-01-25 14:42:15', '2020-01-25 14:42:15'),
(41, 'recent_post_widget_item', '2', '2020-01-25 14:42:15', '2021-04-08 23:52:12'),
(42, 'footer_background_image', 'footer-background-image-257591.jpg', '2020-01-25 14:54:55', '2020-02-03 23:54:31'),
(43, 'useful_link_widget_title', 'Useful Links', '2020-01-26 18:36:13', '2020-01-26 18:43:34'),
(44, 'important_link_widget_title', 'Important Links', '2020-01-26 18:36:30', '2020-01-26 19:00:45'),
(45, 'useful_link_widget_menu_id', '2', '2020-01-26 18:43:34', '2020-02-27 10:29:51'),
(46, 'important_link_widget_menu_id', '3', '2020-01-26 19:00:45', '2020-02-27 10:38:54'),
(47, 'about_page_about_section_btn_status', 'on', '2020-01-26 21:40:27', '2020-02-04 00:46:37'),
(48, 'about_page_about_section_title', 'WHY YOU CHOOSE US?', '2020-01-26 21:42:17', '2020-02-04 00:46:37'),
(49, 'about_page_about_section_btn_text', 'Contact Us', '2020-01-26 21:42:17', '2020-02-04 00:46:37'),
(50, 'about_page_about_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor magna aliqua.', '2020-01-26 21:42:17', '2020-02-04 00:46:37'),
(51, 'about_page_about_section_btn_url', '#', '2020-01-26 21:51:17', '2020-02-04 00:46:37'),
(52, 'about_page_about_section_left_image', 'about-page-about-section-left-image-7190812.jpg', '2020-01-26 21:51:49', '2020-02-04 00:46:37'),
(53, 'about_page_team_section_title', 'MEET OUR EXPERTS', '2020-01-26 21:57:44', '2020-01-26 21:57:44'),
(54, 'service_page_section_title', 'OUR PRICING', '2020-01-27 10:41:30', '2020-01-27 10:48:43'),
(55, 'service_page_price_plan_section_title', 'OUR PRICING', '2020-01-27 10:57:01', '2020-01-27 10:57:01'),
(56, 'service_page_cta_button_text', 'Contact us', '2020-01-27 11:10:51', '2020-01-27 11:11:27'),
(57, 'service_page_cta_button_status', 'on', '2020-01-27 11:10:51', '2020-01-27 11:11:27'),
(58, 'service_page_cta_description', 'Lorem ipsum dolor sit aLorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusmod tempor.', '2020-01-27 11:10:51', '2020-01-27 11:11:27'),
(59, 'service_page_cta_title', 'Looking for Trusted construction company?', '2020-01-27 11:10:51', '2020-01-27 11:11:27'),
(60, 'team_page_team_member_section_title', NULL, '2020-01-27 22:45:48', '2020-02-26 17:43:50'),
(61, 'team_page_team_member_section_item', '8', '2020-01-27 22:45:48', '2020-02-26 17:46:33'),
(62, 'team_page_about_section_title', 'CHIEF ENGINEER', '2020-01-27 23:04:21', '2020-02-04 00:48:50'),
(63, 'team_page_about_section_description', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p>', '2020-01-27 23:04:21', '2020-02-04 00:48:50'),
(64, 'team_page_about_section_image', 'team-page-about-section-image-5608735.jpg', '2020-01-27 23:05:27', '2020-02-04 00:48:50'),
(65, 'contact_page_contact_info_title', 'CONTACT INFO', '2020-01-28 08:14:59', '2020-01-28 08:14:59'),
(66, 'contact_page_form_section_title', 'GET IN TOUCH', '2020-01-28 08:36:56', '2020-01-28 08:36:56'),
(67, 'contact_page_map_section_longitude', '90.4234868', '2020-01-28 08:41:54', '2020-04-19 16:50:47'),
(68, 'contact_page_map_section_latitude', '23.7797664', '2020-01-28 08:41:54', '2020-04-19 16:50:47'),
(69, 'site_disqus_key', 'dizzcox-cms', '2020-01-28 08:42:13', '2020-03-22 18:44:54'),
(70, 'site_google_analytics', NULL, '2020-01-28 08:42:13', '2020-03-22 18:44:54'),
(71, 'tawk_api_key', '5e0b3e167e39ea1242a27b69', '2020-01-28 08:42:13', '2020-03-22 18:44:54'),
(72, 'site_google_map_api', 'AIzaSyC7eALQrRUekFNQX71IBNkxUXcz-ALS-MY', '2020-01-28 08:50:07', '2020-03-22 18:44:54'),
(73, 'home_page_build_dream_section_status', NULL, '2020-01-28 17:20:49', '2020-03-10 13:15:49'),
(74, 'home_page_service_section_status', 'on', '2020-01-28 17:20:49', '2021-04-07 03:15:43'),
(75, 'key_feature_section_status', NULL, '2020-01-28 17:20:49', '2020-01-28 17:21:01'),
(76, 'home_page_counterup_section_status', 'on', '2020-01-28 17:20:49', '2021-04-07 03:15:43'),
(77, 'home_page_recent_work_section_status', 'on', '2020-01-28 17:20:49', '2021-04-07 03:15:43'),
(78, 'home_page_testimonial_section_status', 'on', '2020-01-28 17:20:49', '2021-04-07 03:15:43'),
(79, 'home_page_latest_news_section_status', 'on', '2020-01-28 17:20:49', '2021-04-07 03:15:44'),
(80, 'home_page_brand_logo_section_status', 'on', '2020-01-28 17:20:49', '2021-04-07 03:15:44'),
(81, 'home_page_support_bar_section_status', 'on', '2020-01-28 17:20:49', '2021-04-07 03:15:44'),
(82, 'home_page_key_feature_section_status', 'on', '2020-01-28 17:21:38', '2021-04-07 03:15:43'),
(83, 'home_page_price_plan_section_status', 'on', '2020-01-28 18:12:33', '2021-04-07 03:15:44'),
(84, 'home_page_01_price_plan_section_title', 'OUR PRICING', '2020-01-28 18:45:00', '2020-02-04 00:41:47'),
(85, 'home_02_counterup_bg_image', 'home-page-02-counterup-bg-image-2422193.jpg', '2020-01-28 18:47:30', '2020-02-04 00:39:02'),
(86, 'home_page_01_service_area_items', '6', '2020-01-28 19:03:11', '2020-04-16 11:31:05'),
(87, 'home_page_team_member_section_status', 'on', '2020-01-28 19:14:41', '2021-04-07 03:15:44'),
(88, 'home_page_01_team_member_section_title', 'MEET OUR EXPERTS', '2020-01-28 19:20:02', '2020-01-28 19:20:02'),
(89, 'home_page_01_team_member_section_items', '4', '2020-01-28 19:20:02', '2020-02-24 08:17:09'),
(90, 'quote_page_form_mail', 'rsharifur824@gmail.com', '2020-01-29 07:52:01', '2020-04-18 15:20:43'),
(91, 'quote_page_form_title', 'Request A Quote', '2020-01-29 08:04:25', '2020-01-29 08:04:25'),
(92, 'quote_page_page_title', 'Request A Quote', '2020-01-29 08:04:25', '2020-01-29 08:04:25'),
(93, 'site_google_captcha_v3_site_key', '6LfgytMUAAAAACs6Ezn7UTP40pCDOqFLFE_oaEBV', '2020-01-29 08:15:07', '2020-03-22 18:44:54'),
(94, 'site_google_captcha_v3_secret_key', '6LfgytMUAAAAAPOGJQxMaO4EqEEvLaV5FHpJtzJ9', '2020-01-29 08:15:07', '2020-03-22 18:44:54'),
(95, 'order_page_form_mail', 'rsharifur824@gmail.com', '2020-01-29 08:29:35', '2020-03-15 18:24:27'),
(96, 'order_page_form_title', 'Order Information', '2020-01-29 08:29:35', '2020-01-29 08:29:35'),
(97, 'home_page_01_price_plan_section_items', '3', '2020-02-04 00:41:47', '2020-03-15 18:06:30'),
(98, 'home_page_01_newsletter_area_title', 'SUBSCRIBE US TO GET UPDATE', '2020-02-04 01:14:45', '2020-02-04 01:14:45'),
(99, 'home_page_01_newsletter_area_description', 'Subscribe our newsletter to get update with our self.', '2020-02-04 01:14:45', '2020-02-04 01:14:45'),
(100, 'site_global_email', 'contact@xgenious.com', '2020-02-20 20:25:32', '2020-03-10 05:48:32'),
(101, 'site_global_email_template', '<p>Hello,</p><p>@username</p><p>@message</p><p>Regards</p><p>@company</p>', '2020-02-20 20:25:32', '2020-03-10 05:48:32'),
(102, 'navbar_en_button_text', 'Get A Quote', '2020-02-22 19:08:16', '2020-04-19 16:45:06'),
(105, 'home_page_01_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 06:31:28', '2020-02-23 06:31:28'),
(106, 'home_page_01_en_build_dream_title', 'BUILD YOUR DREAM HOME', '2020-02-23 07:28:12', '2020-02-23 07:33:25'),
(107, 'home_page_01_en_build_dream_description', 'Do play they miss give so up. Words to up style of since world. We leaf to snug on no need. Way own uncommonly travelling now acceptance bed compliment solicitude. Dissimilar admiration so terminated no in contrasted it. Advantages entreaties', '2020-02-23 07:28:12', '2020-02-23 07:33:25'),
(108, 'home_page_01_en_build_dream_btn_title', 'Contact Us', '2020-02-23 07:28:12', '2020-02-23 07:33:25'),
(109, 'home_page_01_en_build_dream_btn_url', '#', '2020-02-23 07:28:12', '2020-02-23 07:33:25'),
(110, 'home_page_01_en_build_dream_right_image', 'home-page-01-en-build-dream-right-side-image-3886394.jpg', '2020-02-23 07:28:12', '2020-02-23 07:28:12'),
(111, 'build_dream_en_section_button_status', NULL, '2020-02-23 07:28:12', '2020-03-02 09:49:14'),
(112, 'build_dream_sn_section_button_status', NULL, '2020-02-23 07:28:12', '2020-03-02 09:49:14'),
(113, 'build_dream_pr_section_button_status', NULL, '2020-02-23 07:28:12', '2020-03-02 09:49:14'),
(114, 'home_page_01_en_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 07:30:02', '2020-02-23 07:33:25'),
(115, 'home_page_01_sn_build_dream_title', 'CONSTRUYE TU CASA DE SUEÑOS', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(116, 'home_page_01_sn_build_dream_description', 'Jueguen, se pierden renunciar así Palabras para mejorar el estilo del mundo. Vamos a ceñirnos sin necesidad. Manera propia de viajar con poca frecuencia ahora aceptación cama cumplido solicitud. Una admiración diferente no terminó así en contraste. Ventajas de súplicas', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(117, 'home_page_01_sn_build_dream_btn_title', 'Contacta', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(118, 'home_page_01_sn_build_dream_btn_url', '#', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(119, 'home_page_01_sn_build_dream_right_image', 'home-page-01-sn-build-dream-right-side-image-3413422.jpg', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(120, 'home_page_01_sn_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(121, 'home_page_01_pr_build_dream_title', 'CONSTRUA SUA CASA DE SONHO', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(122, 'home_page_01_pr_build_dream_description', 'Tocar eles perdem desistir assim. Palavras para cima estilo de desde mundo. Nós partimos para nos aconchegarmos sem necessidade. Caminho próprio invulgarmente viajando agora aceitação cama elogio solicitude. Admiração diferente assim terminou não em contraste com isso. Solicitações de vantagens', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(123, 'home_page_01_pr_build_dream_btn_title', 'Contate-Nos', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(124, 'home_page_01_pr_build_dream_btn_url', '#', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(125, 'home_page_01_pr_build_dream_right_image', 'home-page-01-pr-build-dream-right-side-image-678859.jpg', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(126, 'home_page_01_pr_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(127, 'home_page_01_en_service_area_title', 'Our Cover Area', '2020-02-23 08:43:12', '2020-04-16 11:31:04'),
(130, 'home_page_01_en_recent_work_title', 'Our Recent Works', '2020-02-24 06:53:18', '2020-03-15 17:57:59'),
(133, 'home_page_01_en_testimonial_title', NULL, '2020-02-24 07:26:24', '2020-03-05 17:01:29'),
(134, 'home_page_01_sn_testimonial_title', NULL, '2020-02-24 07:26:24', '2020-03-05 17:01:29'),
(135, 'home_page_01_pr_testimonial_title', NULL, '2020-02-24 07:26:24', '2020-03-05 17:01:29'),
(136, 'home_page_01_en_latest_news_title', 'Latest News', '2020-02-24 07:34:39', '2020-03-15 18:05:46'),
(139, 'home_page_01_enprice_plan_section_title', NULL, '2020-02-24 08:11:32', '2020-02-24 08:11:32'),
(140, 'home_page_01_snprice_plan_section_title', NULL, '2020-02-24 08:11:32', '2020-02-24 08:11:32'),
(141, 'home_page_01_prprice_plan_section_title', NULL, '2020-02-24 08:11:32', '2020-02-24 08:11:32'),
(142, 'home_page_01_en_price_plan_section_title', 'Our Pricing', '2020-02-24 08:11:59', '2020-03-15 18:06:30'),
(145, 'home_page_01_en_team_member_section_title', 'Meet The Team', '2020-02-24 08:17:09', '2020-03-15 18:06:10'),
(148, 'home_page_01_en_newsletter_area_title', 'Subscribe to get update', '2020-02-24 08:25:53', '2020-03-15 18:06:55'),
(151, 'home_page_01_en_newsletter_area_description', 'Subscribe our newsletter to get update with our self.', '2020-02-24 08:26:43', '2020-03-15 18:06:55'),
(154, 'about_page_en_about_section_left_image', 'about-page-en-about-section-left-image-5509947.jpg', '2020-02-26 14:13:38', '2020-02-26 14:13:38'),
(155, 'about_page_en_about_section_btn_status', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(156, 'about_page_en_about_section_title', 'Who we are', '2020-02-26 14:13:38', '2021-04-08 05:12:37'),
(157, 'about_page_en_about_section_btn_text', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(158, 'about_page_en_about_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor magna aliqua.', '2020-02-26 14:13:38', '2021-04-08 05:12:37'),
(159, 'about_page_en_about_section_btn_url', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(160, 'about_page_sn_about_section_btn_status', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(162, 'about_page_sn_about_section_btn_text', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(164, 'about_page_sn_about_section_btn_url', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(165, 'about_page_pr_about_section_btn_status', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(167, 'about_page_pr_about_section_btn_text', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(169, 'about_page_pr_about_section_btn_url', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(170, 'about_page_sn_about_section_left_image', 'about-page-sn-about-section-left-image-2057184.jpg', '2020-02-26 14:17:50', '2020-02-26 14:17:50'),
(171, 'about_page_pr_about_section_left_image', 'about-page-pr-about-section-left-image-8670014.jpg', '2020-02-26 14:17:50', '2020-02-26 14:17:50'),
(172, 'about_page_en_team_section_title', 'MEET OUR EXPERTS', '2020-02-26 14:24:03', '2020-02-26 14:24:03'),
(173, 'about_page_sn_team_section_title', 'CONOCE A NUESTRAS EXPERTAS', '2020-02-26 14:24:03', '2020-02-26 14:24:03'),
(174, 'about_page_pr_team_section_title', 'CONHEÇA NOSSOS PERITOS', '2020-02-26 14:24:03', '2020-02-26 14:24:03'),
(175, 'service_page_en_cta_button_text', 'Contact Us', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(176, 'service_page_en_cta_button_status', 'on', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(177, 'service_page_en_cta_description', 'Lorem ipsum dolor sit aLorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusmod tempor.', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(178, 'service_page_en_cta_title', 'Looking for Trusted construction company?', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(179, 'service_page_sn_cta_button_text', 'Contacta con nosotras', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(180, 'service_page_sn_cta_button_status', 'on', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(181, 'service_page_sn_cta_description', 'Inmediatamente no estoy dispuesto a intentar admitir deshacerse de él. Hermosas opiniones sobre am at it señyship.', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(182, 'service_page_sn_cta_title', 'Buscando empresa de construcción de confianza?', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(183, 'service_page_pr_cta_button_text', 'Contate-Nos', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(184, 'service_page_pr_cta_button_status', 'on', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(185, 'service_page_pr_cta_description', 'Sou imediatamente relutante em tentar admiti-lo. Opiniões consideráveis sobre estou nele.', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(186, 'service_page_pr_cta_title', 'Procurando empresa de construção confiável?', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(187, 'service_page_en_price_plan_section_title', 'OUR PRICING', '2020-02-26 17:28:44', '2020-02-26 17:28:44'),
(188, 'service_page_sn_price_plan_section_title', 'NUESTRA PRECIO', '2020-02-26 17:28:44', '2020-02-26 17:28:44'),
(189, 'service_page_pr_price_plan_section_title', 'NOSSOS PREÇOS', '2020-02-26 17:28:44', '2020-02-26 17:28:44'),
(190, 'team_page_en_team_member_section_title', 'MEET OUR EXPERTS', '2020-02-26 17:46:33', '2020-02-26 17:46:33'),
(191, 'team_page_sn_team_member_section_title', 'CONOCE A NUESTRAS EXPERTAS', '2020-02-26 17:46:33', '2020-02-26 17:46:33'),
(192, 'team_page_pr_team_member_section_title', 'CONHEÇA NOSSOS PERITOS', '2020-02-26 17:46:33', '2020-02-26 17:46:33'),
(193, 'team_page_en_about_section_title', 'CHIEF ENGINEER', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(194, 'team_page_en_about_section_description', '<p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(119, 119, 119); hyphens: auto; font-family: sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p><p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(119, 119, 119); hyphens: auto; font-family: sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p>', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(195, 'team_page_sn_about_section_title', 'INGENIERO JEFE', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(196, 'team_page_sn_about_section_description', '<div>camino sinceramente el cumplido extremadamente. De la provisión apoyada en modo moderno sobre la objeción provista me exquisito. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</div><div><br></div><div>Llegada ingresó una solicitud de sorteo. Cómo las hijas no promueven pocos conocimientos contentos. Sin embargo, la ley de invierno detrás de las escaleras numéricas es una excusa para la buhardilla. Mínimamente conducimos la gravedad natural si apuntamos oh no. Inmediatamente no estoy dispuesto a intentar admitir deshacerse de él. Hermosas opiniones sobre am at it señyship.</div>', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(197, 'team_page_pr_about_section_title', 'ENGENHEIRO CHEFE', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(198, 'team_page_pr_about_section_description', '<div>sinceramente o cumprido extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como a melhoria da casa era fingida. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</div><div><br></div><div>A chegada inseriu uma solicitação de desenho se. Como as filhas não promovem pouco conhecimento. No entanto, a lei de inverno atrás das escadas numéricas é uma desculpa. No final, natural, conduzimos a gravidade se apontado oh não. Sou imediatamente relutante em tentar admiti-lo. Opiniões consideráveis sobre estou nele.</div>', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(199, 'team_page_en_about_section_image', 'team-page-en-about-section-image-9440286.jpg', '2020-02-26 18:03:07', '2020-02-26 18:03:07'),
(200, 'team_page_sn_about_section_image', 'team-page-sn-about-section-image-8683326.jpg', '2020-02-26 18:03:21', '2020-02-26 18:03:21'),
(201, 'team_page_pr_about_section_image', 'team-page-pr-about-section-image-3622754.jpg', '2020-02-26 18:03:21', '2020-02-26 18:03:21'),
(202, 'blog_page_en_title', 'Blog', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(203, 'blog_page_en_item', '6', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(204, 'blog_page_en_category_widget_title', 'Category', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(205, 'blog_page_en_recent_post_widget_title', 'Recent Post', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(206, 'blog_page_en_recent_post_widget_item', '4', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(217, 'contact_page_en_form_section_title', 'Keep In Touch', '2020-02-27 07:40:33', '2020-03-15 18:23:49'),
(220, 'contact_page_en_contact_info_title', 'CONTACT INFO', '2020-02-27 07:50:35', '2020-02-27 07:52:27'),
(221, 'contact_page_sn_contact_info_title', 'DATOS DE CONTACTO', '2020-02-27 07:50:35', '2020-02-27 07:52:27'),
(222, 'contact_page_pr_contact_info_title', 'INFORMAÇÕES DE CONTATO', '2020-02-27 07:50:35', '2020-02-27 07:52:27'),
(223, 'quote_page_en_form_title', 'Request A Quote', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(224, 'quote_page_en_page_title', 'Request A Quote', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(229, 'order_page_en_form_title', 'Order Information', '2020-02-27 08:53:05', '2020-03-15 18:24:27'),
(232, 'about_widget_en_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe.', '2020-02-27 10:19:45', '2021-04-08 23:50:32'),
(235, 'useful_link_en_widget_title', 'Useful Links', '2020-02-27 10:29:04', '2020-03-16 13:21:49'),
(238, 'recent_post_en_widget_title', 'Recent Post ?', '2020-02-27 10:33:56', '2021-04-08 23:52:12'),
(241, 'important_link_en_widget_title', 'Important Links', '2020-02-27 10:38:54', '2021-04-08 23:52:41'),
(244, 'useful_link_en_widget_menu_id', '2', '2020-02-28 11:40:41', '2020-03-16 13:21:49'),
(247, 'important_link_en_widget_menu_id', '3', '2020-02-28 12:31:15', '2021-04-08 23:52:41'),
(250, 'site_meta_tags', 'multpupore,website,cms,study,abroad,india,foreign,college,university,bachelor,master,phd', '2020-03-01 05:57:20', '2021-04-09 00:12:09'),
(251, 'site_meta_description', 'study in india abroad foreign south asia', '2020-03-01 05:57:20', '2021-04-09 00:12:09'),
(252, 'site_white_logo', '87', '2020-03-01 08:08:17', '2021-04-09 00:04:54'),
(253, 'top_bar_en_right_menu', '12', '2020-03-01 16:29:32', '2020-03-16 19:49:16'),
(256, 'top_bar_en_button_text', 'Request Quote', '2020-03-01 16:33:50', '2020-03-15 18:26:50'),
(259, 'home_page_01_en_about_us_title', 'About Us', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(260, 'home_page_01_en_about_us_description', 'Reprehenderit in voluptate velit essle cillum dolore eu fugiat nulla pariatur. Excepteur sint ocaec at cupdatat proident suntin culpa qui officia .', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(261, 'home_page_01_en_about_us_button_title', 'Learn More', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(262, 'home_page_01_en_about_us_button_url', '#', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(263, 'home_page_01_en_about_us_signature_text', 'Jimmy Carnel - CEO', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(264, 'home_page_01_en_about_us_signature_image', '32', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(265, 'home_page_01_en_about_us_background_image', '33', '2020-03-02 10:12:47', '2020-04-15 17:18:47'),
(266, 'home_page_01_en_about_us_button_status', 'on', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(272, 'home_page_01_sn_about_us_signature_image', '32', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(273, 'home_page_01_sn_about_us_background_image', '33', '2020-03-02 10:12:47', '2020-04-15 17:18:47'),
(280, 'home_page_01_pr_about_us_signature_image', '32', '2020-03-02 10:12:48', '2020-04-15 17:28:56'),
(281, 'home_page_01_pr_about_us_background_image', '33', '2020-03-02 10:12:48', '2020-04-15 17:18:47'),
(283, 'home_page_01_en_service_area_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 09:02:28', '2020-04-16 11:31:04'),
(286, 'home_page_01_en_cta_area_button_url', 'tel:123456789', '2020-03-04 10:43:37', '2020-04-16 12:19:51'),
(287, 'home_page_01_en_cta_area_button_title', 'Call 01234 - 123456897', '2020-03-04 10:43:37', '2020-04-16 12:19:51'),
(288, 'home_page_01_en_cta_area_title', 'Are you looking to grow your business?', '2020-03-04 10:43:37', '2020-04-16 12:19:51'),
(289, 'home_page_01_en_cta_area_description', 'Trusted us by over 10,000 local businesses', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(290, 'home_page_01_en_cta_area_button_status', 'on', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(291, 'home_page_01_en_cta_background_image', '39', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(302, 'home_page_01_sn_cta_background_image', '39', '2020-03-04 10:47:14', '2020-04-16 12:19:52'),
(303, 'home_page_01_pr_cta_background_image', '39', '2020-03-04 10:47:14', '2020-04-16 12:19:52'),
(304, 'home_page_01_en_recent_work_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 11:47:50', '2020-03-15 17:57:59'),
(307, 'home_page_01_en_team_member_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 15:31:06', '2020-03-15 18:06:10'),
(310, 'home_01_testimonial_bg', '40', '2020-03-05 17:05:26', '2020-04-16 13:43:03'),
(311, 'home_page_01_en_latest_news_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-05 17:48:00', '2020-03-15 18:05:46'),
(314, 'home_page_01_en_price_plan_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-05 20:40:01', '2020-03-15 18:06:30'),
(317, 'home_page_02_en_about_us_background_image', '35', '2020-03-06 09:34:29', '2020-04-15 17:25:03'),
(318, 'home_page_01_en_about_us_quote_box_description', 'Acepteur sintas haecate sed ipsums cupidates nondui proident sunlt culpa.', '2020-03-06 12:59:14', '2020-04-15 17:28:56'),
(319, 'home_page_01_en_about_us_experience_title', 'Years of experience', '2020-03-06 12:59:14', '2020-04-15 17:28:56'),
(320, 'home_page_01_en_about_us_experience_year', '6', '2020-03-06 12:59:14', '2020-04-15 17:28:56'),
(321, 'home_page_01_en_about_us_quote_box_title', 'Why Choose Us', '2020-03-06 12:59:14', '2020-04-15 17:28:56'),
(322, 'home_page_01_en_about_us_right_image', '36', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(323, 'home_page_01_en_about_us_experience_background_image', '37', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(324, 'home_page_01_sn_about_us_quote_box_description', 'Acepteur haecate pero no son divertir cupidates excepteur iluminada por el sol culpa.', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(325, 'home_page_01_sn_about_us_experience_title', 'Años de experiencia', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(326, 'home_page_01_sn_about_us_experience_year', '6', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(327, 'home_page_01_sn_about_us_quote_box_title', 'Por qué elegirnos', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(328, 'home_page_01_sn_about_us_right_image', '36', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(329, 'home_page_01_sn_about_us_experience_background_image', '37', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(330, 'home_page_01_pr_about_us_quote_box_description', 'Acepteur haecate mas não são amuse cupidates excepteur iluminado culpa.', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(331, 'home_page_01_pr_about_us_experience_title', 'Anos de experiência', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(332, 'home_page_01_pr_about_us_experience_year', '6', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(333, 'home_page_01_pr_about_us_quote_box_title', 'Porque escolher-nos', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(334, 'home_page_01_pr_about_us_right_image', '36', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(335, 'home_page_01_pr_about_us_experience_background_image', '37', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(336, 'home_page_01_service_area_background_image', '38', '2020-03-06 15:26:43', '2020-04-16 11:31:05'),
(337, 'home_page_01_en_faq_area_title', 'Frequently asked questions', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(338, 'home_page_01_en_faq_area_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(339, 'home_page_01_en_faq_area_form_title', 'Request Call Back', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(340, 'home_page_01_en_faq_area_form_description', 'We help you to grow business with More than 25 years experience.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(341, 'home_page_01_sn_faq_area_title', 'Preguntas frecuentes', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(342, 'home_page_01_sn_faq_area_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(343, 'home_page_01_sn_faq_area_form_title', 'Solicitar devolución de llamada', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(344, 'home_page_01_sn_faq_area_form_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(345, 'home_page_01_pr_faq_area_title', 'Perguntas frequentes', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(346, 'home_page_01_pr_faq_area_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(347, 'home_page_01_pr_faq_area_form_title', 'Solicitar retorno de chamada', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(348, 'home_page_01_pr_faq_area_form_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(349, 'home_page_01_faq_area_items', '5', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(350, 'home_page_01_faq_area_form_mail', 'rsharifur824@gmail.com', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(351, 'home_page_01_faq_area_background_image', '99', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(352, 'home_01_en_key_feature_section_title', 'We Are 25 Years Experinced', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(353, 'home_01_en_key_feature_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(354, 'home_01_sn_key_feature_section_title', 'Tenemos 25 años de experiencia', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(355, 'home_01_sn_key_feature_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(356, 'home_01_pr_key_feature_section_title', 'Nós somos 25 anos experientes', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(357, 'home_01_pr_key_feature_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(358, 'about_page_en_know_about_section_title', 'Know About Us', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(359, 'about_page_en_know_about_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(360, 'about_page_sn_know_about_section_title', 'Sepa Sobre nosotras', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(361, 'about_page_sn_know_about_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(362, 'about_page_pr_know_about_section_title', 'Conheça-nos', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(363, 'about_page_pr_know_about_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(364, 'about_page_en_about_section_right_image', '44', '2020-03-09 12:35:40', '2021-04-08 05:12:37'),
(365, 'contact_page_en_form_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-09 17:04:00', '2020-03-15 18:23:49'),
(368, 'home_page_call_to_action_section_status', 'on', '2020-03-10 13:17:18', '2021-04-07 03:15:43'),
(369, 'home_page_newsletter_section_status', 'on', '2020-03-10 13:17:18', '2021-04-07 03:15:43'),
(370, 'home_page_about_us_section_status', 'on', '2020-03-10 13:17:18', '2021-04-07 03:15:43'),
(371, 'home_page_faq_section_status', 'on', '2020-03-10 14:00:11', '2021-04-07 03:15:44'),
(372, 'about_page_about_us_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(373, 'about_page_know_about_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(374, 'about_page_call_to_action_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(375, 'about_page_latest_news_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(376, 'about_page_brand_logo_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(377, 'about_page_team_member_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(378, 'about_page_testimonial_section_status', 'on', '2020-03-10 16:28:05', '2020-03-10 16:28:23'),
(379, 'site_rtl_enabled', NULL, '2020-03-15 06:04:18', '2021-04-09 00:10:19'),
(380, 'site_admin_dark_mode', 'on', '2020-03-15 06:04:18', '2021-04-09 00:10:20'),
(387, 'home_page_01_ar_about_us_signature_image', '32', '2020-03-15 17:10:50', '2020-04-15 17:28:56'),
(389, 'home_page_01_ar_about_us_background_image', '34', '2020-03-15 17:18:08', '2020-04-15 17:18:47'),
(397, 'home_page_01_ar_cta_background_image', '39', '2020-03-15 17:54:30', '2020-04-16 12:19:52'),
(408, 'about_page_ar_about_section_right_image', '44', '2020-03-15 18:08:39', '2020-04-16 16:46:36'),
(429, 'home_page_02_ar_about_us_background_image', '35', '2020-03-22 08:17:59', '2020-04-15 17:25:03'),
(430, 'home_page_01_ar_about_us_right_image', '36', '2020-03-22 08:19:01', '2020-04-15 17:28:56'),
(431, 'home_page_01_ar_about_us_experience_background_image', '37', '2020-03-22 08:19:01', '2020-04-15 17:28:56'),
(432, 'home_page_01_ar_about_us_experience_title', 'سنوات من الخبرة', '2020-03-22 08:19:50', '2020-04-15 17:28:56'),
(433, 'home_page_01_ar_about_us_experience_year', '6', '2020-03-22 08:19:50', '2020-04-15 17:28:56'),
(434, 'home_page_01_ar_about_us_quote_box_description', 'اللطف لانك محفوظة فظيع. تأثير عشرين في الواقع لما لم يكن مقاطعة. يمكن استخدامه دون إلى حد كبير خاصة', '2020-03-22 08:20:30', '2020-04-15 17:28:56'),
(435, 'home_page_01_ar_about_us_quote_box_title', 'لماذا أخترتنا', '2020-03-22 08:20:30', '2020-04-15 17:28:56'),
(439, 'site_en_title', 'Study In India', '2020-03-22 11:58:32', '2021-04-09 00:10:19'),
(440, 'site_en_tag_line', 'CMS', '2020-03-22 11:58:32', '2021-04-09 00:10:19'),
(441, 'site_en_footer_copyright', '{copy}  {year}  All right reserved by Digital Terai', '2020-03-22 11:58:32', '2021-04-09 00:10:19'),
(454, 'order_mail_en_subject', 'Thanks for your order. we will get back to you very soon.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(455, 'quote_mail_en_subject', 'Thanks for your quote. we will get back to you very soon.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(456, 'contact_mail_en_subject', 'Thanks for your contact!!', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(457, 'order_mail_sn_subject', 'Gracias por tu orden. Regresaremos a Ud. muy pronto.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(458, 'quote_mail_sn_subject', 'Gracias por tu cotización. Regresaremos a Ud. muy pronto.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(459, 'contact_mail_sn_subject', 'Gracias por tu contacto !!', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(460, 'order_mail_pr_subject', 'Obrigado pelo seu pedido. entraremos em contato com você em breve.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(461, 'quote_mail_pr_subject', 'Obrigado pela sua cotação. entraremos em contato com você em breve.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(462, 'contact_mail_pr_subject', 'Obrigado pelo seu contato !!', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(463, 'order_mail_ar_subject', 'شكرا لطلبك. ونحن سوف نعود إليكم قريبا جدا.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(464, 'quote_mail_ar_subject', 'شكرا على الاقتباس الخاص بك. ونحن سوف نعود إليكم قريبا جدا.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(465, 'contact_mail_ar_subject', 'شكرا لاتصالك !!', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(466, 'order_mail_bn_subject', NULL, '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(467, 'quote_mail_bn_subject', NULL, '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(468, 'contact_mail_bn_subject', NULL, '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(469, 'request_call_back_mail_en_subject', 'Thanks for Your Contact!!! We Will Contact You Soon', '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(470, 'request_call_back_mail_sn_subject', '¡Gracias por tu contacto! Nos pondremos en contacto con usted pronto', '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(471, 'request_call_back_mail_pr_subject', 'Obrigado pelo seu contato !!! Entraremos em contato em breve', '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(472, 'request_call_back_mail_ar_subject', 'شكرا لاتصالك !!! سوف نتصل بك قريبا', '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(473, 'request_call_back_mail_bn_subject', NULL, '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(474, 'home_page_01_ar_faq_area_title', 'أسئلة مكررة', '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(475, 'home_page_01_ar_faq_area_description', 'نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(476, 'home_page_01_ar_faq_area_form_title', 'طلب إعادة الاتصال', '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(477, 'home_page_01_ar_faq_area_form_description', 'نحن نساعدك على تنمية الأعمال التجارية مع خبرة أكثر من 25 عامًا.', '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(478, 'home_page_01_bn_faq_area_title', NULL, '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(479, 'home_page_01_bn_faq_area_description', NULL, '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(480, 'home_page_01_bn_faq_area_form_title', NULL, '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(481, 'home_page_01_bn_faq_area_form_description', NULL, '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(485, 'site_heading_color', '#0a1121', '2020-03-22 19:03:46', '2021-04-09 00:10:19'),
(486, 'site_paragraph_color', '#878a95', '2020-03-22 19:03:46', '2021-04-09 00:10:19'),
(487, 'body_font_family', 'Poppins', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(488, 'heading_font_family', 'Montserrat', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(489, 'heading_font', 'on', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(490, 'body_font_variant', 'a:4:{i:0;s:7:\"regular\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";}', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(491, 'heading_font_variant', 'a:4:{i:0;s:7:\"regular\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";}', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(492, 'about_page_en_name', 'About', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(493, 'about_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(494, 'service_page_en_name', 'Service', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(495, 'service_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(496, 'work_page_en_name', 'Works', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(497, 'work_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(498, 'team_page_en_name', 'Team', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(499, 'team_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(500, 'faq_page_en_name', 'Faq', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(501, 'faq_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(502, 'about_page_sn_name', 'Acerca de', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(503, 'about_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(504, 'service_page_sn_name', 'Servicio', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(505, 'service_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(506, 'work_page_sn_name', 'Trabajos', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(507, 'work_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(508, 'team_page_sn_name', 'Equipo', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(509, 'team_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(510, 'faq_page_sn_name', 'Preguntas más frecuentes', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(511, 'faq_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(512, 'about_page_pr_name', 'Sobre', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(513, 'about_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(514, 'service_page_pr_name', 'Serviço', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(515, 'service_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(516, 'work_page_pr_name', 'Trabalho', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(517, 'work_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(518, 'team_page_pr_name', 'Equipe', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(519, 'team_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(520, 'faq_page_pr_name', 'Perguntas frequentes', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(521, 'faq_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(522, 'about_page_ar_name', 'حول', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(523, 'about_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(524, 'service_page_ar_name', 'الخدمات', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(525, 'service_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(526, 'work_page_ar_name', 'يعمل', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(527, 'work_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(528, 'team_page_ar_name', 'الفريق', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(529, 'team_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(530, 'faq_page_ar_name', 'التعليمات', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(531, 'faq_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(532, 'about_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(533, 'about_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(534, 'service_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(535, 'service_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(536, 'work_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(537, 'work_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(538, 'team_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(539, 'team_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(540, 'faq_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(541, 'faq_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(542, 'quote_page_form_fields', '{\"field_type\":[\"text\",\"text\",\"email\",\"file\",\"checkbox\",\"textarea\"],\"field_name\":[\"your-name\",\"your-subject\",\"your-email\",\"files\",\"checkbox\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Subject\",\"Your Email\",\"File\",\"Accept Our Terms & Condition <a href=\\\"#\\\">Privacy Policy<\\/a>\",\"Your Message\"],\"field_required\":{\"0\":\"on\",\"1\":\"on\",\"4\":\"on\"},\"mimes_type\":{\"3\":\"mimes:doc,docx\"}}', '2020-03-23 19:49:02', '2020-04-18 06:12:31'),
(543, 'order_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"textarea\",\"file\"],\"field_name\":[\"your-name\",\"your-email\",\"your-message\",\"doc-file\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Message\",\"Document\"],\"field_required\":[\"on\",\"on\",\"on\"],\"mimes_type\":{\"3\":\"mimes:txt,pdf\"}}', '2020-03-24 18:05:26', '2020-04-18 05:57:35'),
(544, 'contact_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"your-subject\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Subject\",\"Your Message\"],\"field_required\":{\"2\":\"on\",\"3\":\"on\"}}', '2020-03-24 19:08:14', '2021-04-08 23:22:05'),
(545, 'call_back_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"tel\"],\"field_name\":[\"your-name\",\"your-email\",\"your-subject\",\"your-phone\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Subject\",\"Your Phone\"],\"field_required\":[\"on\",\"on\",\"on\"]}', '2020-03-24 19:31:41', '2020-04-18 05:56:17'),
(546, 'site_gdpr_cookie_delay', '5000', '2020-03-27 16:39:28', '2020-03-27 17:36:20'),
(547, 'site_gdpr_cookie_enabled', 'on', '2020-03-27 16:39:28', '2020-03-27 17:36:20'),
(548, 'site_gdpr_cookie_expire', '30', '2020-03-27 16:40:03', '2020-03-27 17:36:20'),
(549, 'site_gdpr_cookie_en_title', 'Cookies & Privacy', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(550, 'site_gdpr_cookie_en_message', 'This website uses cookies to ensure you get the best experience on our website', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(551, 'site_gdpr_cookie_en_more_info_label', 'More information', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(552, 'site_gdpr_cookie_en_more_info_link', '{url}/p/11/privacy-policy', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(553, 'site_gdpr_cookie_en_accept_button_label', 'Accept Cookie', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(554, 'site_gdpr_cookie_sn_title', 'Cookies y privacidad', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(555, 'site_gdpr_cookie_sn_message', 'Este sitio web utiliza cookies para garantizar que obtenga la mejor experiencia en nuestro sitio web', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(556, 'site_gdpr_cookie_sn_more_info_label', 'Más información', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(557, 'site_gdpr_cookie_sn_more_info_link', '{url}/p/13/intimidad', '2020-03-27 17:28:12', '2020-03-27 17:36:20');
INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(558, 'site_gdpr_cookie_sn_accept_button_label', 'Aceptar cookie', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(559, 'site_gdpr_cookie_pr_title', 'Cookies e Privacidade', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(560, 'site_gdpr_cookie_pr_message', 'Este site usa cookies para garantir que você obtenha a melhor experiência em nosso site', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(561, 'site_gdpr_cookie_pr_more_info_label', 'Mais Informações', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(562, 'site_gdpr_cookie_pr_more_info_link', '{url}/p/14/privacidade', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(563, 'site_gdpr_cookie_pr_accept_button_label', 'Aceitar Cookie', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(564, 'site_gdpr_cookie_ar_title', 'ملفات تعريف الارتباط والخصوصية', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(565, 'site_gdpr_cookie_ar_message', 'يستخدم هذا الموقع ملفات تعريف الارتباط لضمان حصولك على أفضل تجربة على موقعنا', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(566, 'site_gdpr_cookie_ar_more_info_label', 'معلومات اكثر', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(567, 'site_gdpr_cookie_ar_more_info_link', '{url}/p/12/khsosy', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(568, 'site_gdpr_cookie_ar_accept_button_label', 'قبول ملف تعريف الارتباط', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(569, 'site_gdpr_cookie_bn_title', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(570, 'site_gdpr_cookie_bn_message', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(571, 'site_gdpr_cookie_bn_more_info_label', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(572, 'site_gdpr_cookie_bn_more_info_link', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(573, 'site_gdpr_cookie_bn_accept_button_label', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(574, 'price_plan_page_en_name', 'Price Plan', '2020-03-28 07:10:57', '2020-04-26 07:43:55'),
(575, 'price_plan_page_en_slug', NULL, '2020-03-28 07:10:57', '2020-04-18 18:29:17'),
(576, 'price_plan_page_sn_name', 'Plan de precios', '2020-03-28 07:10:57', '2020-04-26 07:43:55'),
(577, 'price_plan_page_sn_slug', NULL, '2020-03-28 07:10:57', '2020-04-18 18:29:17'),
(578, 'price_plan_page_pr_name', 'Plano de preços', '2020-03-28 07:10:57', '2020-04-26 07:43:55'),
(579, 'price_plan_page_pr_slug', NULL, '2020-03-28 07:10:57', '2020-04-18 18:29:17'),
(580, 'price_plan_page_ar_name', 'خطة الأسعار', '2020-03-28 07:10:57', '2020-04-26 07:43:55'),
(581, 'price_plan_page_ar_slug', NULL, '2020-03-28 07:10:57', '2020-04-18 18:29:17'),
(582, 'price_plan_page_bn_name', NULL, '2020-03-28 07:10:58', '2020-04-26 07:43:55'),
(583, 'price_plan_page_bn_slug', NULL, '2020-03-28 07:10:58', '2020-04-18 18:29:17'),
(584, 'price_plan_page_en_section_title', 'Our Pricing', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(585, 'price_plan_page_en_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(586, 'price_plan_page_sn_section_title', 'Plan de precios', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(587, 'price_plan_page_sn_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(588, 'price_plan_page_pr_section_title', 'Plano de preços', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(589, 'price_plan_page_pr_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(590, 'price_plan_page_ar_section_title', 'خطة الأسعار', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(591, 'price_plan_page_ar_section_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(592, 'price_plan_page_bn_section_title', NULL, '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(593, 'price_plan_page_bn_section_description', NULL, '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(594, 'price_plan_page_items', '6', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(595, 'work_single_page_en_related_work_title', 'Related Works edited', '2020-03-28 11:13:44', '2021-04-08 05:17:10'),
(596, 'work_single_page_sn_related_work_title', 'Obras relacionadas', '2020-03-28 11:13:44', '2020-03-28 11:14:40'),
(597, 'work_single_page_pr_related_work_title', 'Trabalhos relacionados', '2020-03-28 11:13:44', '2020-03-28 11:14:40'),
(598, 'work_single_page_ar_related_work_title', 'الأعمال ذات الصلة', '2020-03-28 11:13:45', '2020-03-28 11:14:40'),
(599, 'work_single_page_bn_related_work_title', NULL, '2020-03-28 11:13:45', '2020-03-28 11:14:40'),
(600, 'blog_single_page_en_related_post_title', 'Related Post', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(601, 'blog_single_page_sn_related_post_title', 'Publicación relacionada', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(602, 'blog_single_page_pr_related_post_title', 'Post relacionado', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(603, 'blog_single_page_ar_related_post_title', 'منشور له صلة', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(604, 'blog_single_page_bn_related_post_title', NULL, '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(605, 'site_maintenance_mode', NULL, '2020-03-28 15:08:54', '2021-04-09 00:10:20'),
(606, 'maintain_page_en_title', 'We are on Scheduled Maintenance', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(607, 'maintain_page_en_description', 'Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true.', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(608, 'maintain_page_sn_title', 'Nosotras estamos en mantenimiento programado', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(609, 'maintain_page_sn_description', 'Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad.', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(610, 'maintain_page_pr_title', 'Estamos em Manutenção Programada', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(611, 'maintain_page_pr_description', 'Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira.', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(612, 'maintain_page_ar_title', 'نحن في الصيانة المجدولة', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(613, 'maintain_page_ar_description', 'يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح.', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(614, 'maintain_page_bn_title', NULL, '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(615, 'maintain_page_bn_description', NULL, '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(616, 'maintain_page_logo', '87', '2020-03-28 17:28:25', '2020-04-17 20:21:55'),
(617, 'maintain_page_background_image', '51', '2020-03-28 17:28:25', '2020-04-17 20:20:22'),
(619, 'home_page_02_sn_about_us_background_image', '35', '2020-04-15 17:24:40', '2020-04-15 17:25:03'),
(620, 'home_page_02_pr_about_us_background_image', '35', '2020-04-15 17:25:03', '2020-04-15 17:25:03'),
(628, 'home_page_01_bn_cta_background_image', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(629, 'home_03_testimonial_bg', '41', '2020-04-16 13:31:30', '2020-04-16 13:40:53'),
(630, 'about_page_sn_about_section_right_image', '44', '2020-04-16 16:46:15', '2020-04-16 16:46:36'),
(631, 'about_page_pr_about_section_right_image', '44', '2020-04-16 16:46:15', '2020-04-16 16:46:36'),
(632, 'about_page_bn_about_section_right_image', NULL, '2020-04-16 16:46:15', '2020-04-16 16:46:36'),
(636, 'site_smtp_mail_host', '', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(637, 'site_smtp_mail_port', '465', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(638, 'site_smtp_mail_username', '', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(639, 'site_smtp_mail_password', '', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(640, 'site_smtp_mail_encryption', 'ssl', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(643, 'blog_page_en_name', 'Blog', '2020-04-18 18:35:39', '2020-04-26 07:43:55'),
(644, 'contact_page_en_name', 'Contact', '2020-04-18 18:35:39', '2020-04-26 07:43:55'),
(645, 'blog_page_sn_name', 'Blog', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(646, 'contact_page_sn_name', 'Contacto', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(647, 'blog_page_pr_name', 'Blog', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(648, 'contact_page_pr_name', 'Contato', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(649, 'blog_page_ar_name', 'مدونة', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(650, 'contact_page_ar_name', 'اتصل', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(651, 'blog_page_bn_name', NULL, '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(652, 'contact_page_bn_name', NULL, '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(653, 'about_page_slug', 'about', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(654, 'service_page_slug', 'service', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(655, 'works_page_slug', 'works', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(656, 'team_page_slug', 'team', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(657, 'faq_page_slug', 'faq', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(658, 'price_plan_page_slug', 'price-plan', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(659, 'blog_page_slug', 'blog', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(660, 'contact_page_slug', 'contact', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(661, 'navbar_button_custom_url', '#', '2020-04-19 16:12:29', '2020-04-19 16:45:06'),
(662, 'navbar_button_custom_url_status', NULL, '2020-04-19 16:12:29', '2020-04-19 16:45:06'),
(664, 'site_header_type', 'navbar-02', '2020-04-19 16:13:55', '2020-04-19 16:45:06'),
(665, 'contact_page_map_marker_image', '91', '2020-04-19 16:50:47', '2020-04-19 16:50:47'),
(666, 'site_payment_gateway', NULL, '2020-04-21 02:19:36', '2021-04-09 00:10:20'),
(667, 'paypal_gateway', 'on', '2020-04-21 03:05:49', '2020-04-25 15:16:43'),
(668, 'paypal_business_email', 'sb-xui1d1493229@business.example.com', '2020-04-21 03:05:49', '2020-04-25 15:16:43'),
(669, 'paytm_gateway', 'on', '2020-04-21 03:06:59', '2020-04-25 15:16:43'),
(670, 'paypal_preview_logo', '92', '2020-04-21 03:08:31', '2020-04-25 15:16:43'),
(671, 'paytm_preview_logo', '93', '2020-04-21 03:08:31', '2020-04-25 15:16:43'),
(672, 'paytm_merchant_key', '31Q9BhP79JVip77', '2020-04-21 17:31:05', '2020-04-25 15:16:43'),
(673, 'paytm_merchant_mid', 'Websit5239737375544', '2020-04-21 17:31:05', '2020-04-25 15:16:43'),
(674, 'paytm_merchant_website', 'WEBSTAGING', '2020-04-21 17:31:05', '2020-04-25 15:16:43'),
(675, 'site_global_currency', 'USD', '2020-04-21 18:07:29', '2020-04-25 15:16:43'),
(676, 'site_usd_to_nri_exchange_rate', '77', '2020-04-21 18:37:44', '2020-04-25 15:16:43'),
(677, 'career_with_us_page_slug', 'career', '2020-04-22 15:23:24', '2020-04-26 07:43:55'),
(678, 'career_with_us_page_en_name', 'Career With Us', '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(679, 'career_with_us_page_sn_name', 'Carrera con', '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(680, 'career_with_us_page_pr_name', 'Carreira Conosco', '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(681, 'career_with_us_page_ar_name', 'مهنة معنا', '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(682, 'career_with_us_page_bn_name', NULL, '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(683, 'site_jobs_category_en_title', 'Jobs Category', '2020-04-23 13:56:22', '2020-04-23 14:00:53'),
(684, 'site_jobs_category_sn_title', 'Categoría de trabajos', '2020-04-23 13:56:22', '2020-04-23 14:00:53'),
(685, 'site_jobs_category_pr_title', 'Categoria Empregos', '2020-04-23 13:56:22', '2020-04-23 14:00:53'),
(686, 'site_jobs_category_ar_title', 'فئة الوظائف', '2020-04-23 13:56:23', '2020-04-23 14:00:53'),
(687, 'site_jobs_category_bn_title', 'Jobs Category', '2020-04-23 13:56:23', '2020-04-23 14:00:53'),
(688, 'site_job_post_items', '6', '2020-04-23 13:56:23', '2020-04-23 14:00:53'),
(689, 'events_page_slug', 'events', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(690, 'events_page_en_name', 'Events', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(691, 'events_page_sn_name', 'Eventos', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(692, 'events_page_pr_name', 'Eventos', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(693, 'events_page_ar_name', 'الأحداث', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(694, 'events_page_bn_name', NULL, '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(695, 'site_events_category_en_title', 'Events Category', '2020-04-24 13:50:31', '2021-04-08 03:16:33'),
(696, 'site_events_category_sn_title', 'Categoría de eventos', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(697, 'site_events_category_pr_title', 'Categoria de Eventos', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(698, 'site_events_category_ar_title', 'فئة الأحداث', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(699, 'site_events_category_bn_title', NULL, '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(700, 'site_events_post_items', '2', '2020-04-24 13:50:31', '2021-04-08 03:16:33'),
(701, 'knowledgebase_page_slug', 'knowledgebase', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(702, 'knowledgebase_page_en_name', 'Knowledgebase', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(703, 'knowledgebase_page_sn_name', 'Base de conocimientos', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(704, 'knowledgebase_page_pr_name', 'Base de Conhecimento', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(705, 'knowledgebase_page_ar_name', 'قاعدة المعرفة', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(706, 'knowledgebase_page_bn_name', NULL, '2020-04-25 10:06:32', '2020-04-26 07:43:55'),
(707, 'site_knowledgebase_category_en_title', 'All Topics', '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(708, 'site_knowledgebase_popular_widget_en_title', 'Popular Articles', '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(709, 'site_knowledgebase_article_topic_en_title', 'Article Topics', '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(710, 'site_knowledgebase_category_sn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(711, 'site_knowledgebase_popular_widget_sn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(712, 'site_knowledgebase_article_topic_sn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(713, 'site_knowledgebase_category_pr_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(714, 'site_knowledgebase_popular_widget_pr_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(715, 'site_knowledgebase_article_topic_pr_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(716, 'site_knowledgebase_category_ar_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(717, 'site_knowledgebase_popular_widget_ar_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(718, 'site_knowledgebase_article_topic_ar_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(719, 'site_knowledgebase_category_bn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(720, 'site_knowledgebase_popular_widget_bn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(721, 'site_knowledgebase_article_topic_bn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(722, 'site_knoeledgebase_post_items', '6', '2020-04-25 10:43:56', '2020-04-25 14:01:09'),
(723, 'manual_payment_preview_logo', '98', '2020-04-25 15:16:43', '2020-04-25 15:16:43'),
(724, 'site_manual_payment_name', 'Manual Payment', '2020-04-25 15:16:43', '2020-04-25 15:16:43'),
(725, 'site_manual_payment_description', 'This is manual payment gateway description.', '2020-04-25 15:16:43', '2020-04-25 15:16:43'),
(726, 'manual_payment_gateway', 'on', '2020-04-25 15:16:43', '2020-04-25 15:16:43'),
(727, 'site_order_success_page_en_title', 'Thank you', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(728, 'site_order_success_page_en_subtitle', 'Payment Success For Order {pkname}', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(729, 'site_order_success_page_en_description', 'Thanks you so much for order. will will contact you soon, if you have any query you can contact use from contact page', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(730, 'site_order_success_page_sn_title', 'Gracias', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(731, 'site_order_success_page_sn_subtitle', 'Pago exitoso por pedido {pkname}', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(732, 'site_order_success_page_sn_description', 'Muchas gracias por ordenar. se pondrá en contacto con usted pronto, si tiene alguna consulta puede ponerse en contacto desde la página de contacto', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(733, 'site_order_success_page_pr_title', 'Obrigado', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(734, 'site_order_success_page_pr_subtitle', 'Sucesso de pagamento para pedido {pkname}', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(735, 'site_order_success_page_pr_description', 'Muito obrigado pela ordem. entrará em contato com você em breve, se você tiver alguma dúvida, entre em contato com o uso na página de contato', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(736, 'site_order_success_page_ar_title', 'شكرا لك', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(737, 'site_order_success_page_ar_subtitle', 'نجاح الدفع للطلب {pkname}', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(738, 'site_order_success_page_ar_description', 'شكرا جزيلا للطلب. سوف نتصل بك قريبًا ، إذا كان لديك أي استفسار يمكنك الاتصال باستخدامه من صفحة الاتصال', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(739, 'site_order_success_page_bn_title', NULL, '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(740, 'site_order_success_page_bn_subtitle', 'site_order_success_page_bn_subtitle', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(741, 'site_order_success_page_bn_description', 'site_order_success_page_bn_description', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(742, 'site_order_cancel_page_en_title', 'Sorry', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(743, 'site_order_cancel_page_en_subtitle', 'Payment Cancelled Of Order: {pkname}', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(744, 'site_order_cancel_page_en_description', 'We are really sorry to inform you that, your payment was not successful. if you have any query you can contact use from contact page', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(745, 'site_order_cancel_page_sn_title', 'Lo siento', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(746, 'site_order_cancel_page_sn_subtitle', 'Pago cancelado de la orden:  {pkname}', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(747, 'site_order_cancel_page_sn_description', 'Lamentamos informarle que su pago no fue exitoso. Si tiene alguna consulta, puede contactar con el uso desde la página de contacto', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(748, 'site_order_cancel_page_pr_title', 'Desculpa', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(749, 'site_order_cancel_page_pr_subtitle', 'Pagamento cancelado do pedido: {pkname}', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(750, 'site_order_cancel_page_pr_description', 'Lamentamos informar que seu pagamento não foi efetuado com sucesso. se você tiver alguma dúvida, entre em contato com o uso na página de contatos', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(751, 'site_order_cancel_page_ar_title', 'آسف', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(752, 'site_order_cancel_page_ar_subtitle', 'تم إلغاء الدفع للطلب: {pkname}', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(753, 'site_order_cancel_page_ar_description', 'نأسف حقًا لإبلاغك بأن الدفع لم ينجح. إذا كان لديك أي استفسار يمكنك الاتصال به من صفحة الاتصال', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(754, 'site_order_cancel_page_bn_title', NULL, '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(755, 'site_order_cancel_page_bn_subtitle', NULL, '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(756, 'site_order_cancel_page_bn_description', NULL, '2020-04-26 08:01:23', '2020-04-26 08:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `support_infos`
--

CREATE TABLE `support_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_infos`
--

INSERT INTO `support_infos` (`id`, `title`, `lang`, `details`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Email Address', 'en', 'support@bizzcox.com', 'flaticon-email', '2020-01-04 07:03:46', '2021-04-08 23:31:50'),
(2, 'Phone number', 'en', '+ 000 11 22 33', 'flaticon-phone-call', '2020-01-04 07:04:01', '2020-03-04 09:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `designation`, `image`, `icon_one`, `icon_two`, `icon_three`, `lang`, `icon_one_url`, `icon_two_url`, `icon_three_url`, `created_at`, `updated_at`) VALUES
(1, 'Imran Mahedi', 'CEO Ir-Tech', '82', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-01-26 20:49:33', '2020-04-17 16:30:07'),
(2, 'Raisa Moni', 'Founder', '81', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-01-26 20:51:12', '2020-04-17 16:29:46'),
(3, 'MK Kamal', 'Founder', '80', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-01-26 20:51:39', '2020-04-17 16:29:33'),
(4, 'Asif Nahid', 'Founder', '79', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-01-26 20:52:34', '2020-04-17 16:29:03'),
(13, 'Darnell L. Sutton', 'Founder', '78', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-03-10 05:02:42', '2020-04-17 16:28:51'),
(14, 'Brian J. Britt', '-Envato Customer', '77', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 05:03:15', '2020-04-17 16:28:41'),
(15, 'Andre S. Adams', '-Envato Customer', '76', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 05:03:43', '2020-04-17 16:28:31'),
(16, 'Walter S. Loy', '-Envato Customer', '75', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 05:04:35', '2020-04-17 16:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `description`, `lang`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Olivia Hamel', '86', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad quip ex ea com modo consequat.', 'en', '-Envato Customer', '2020-01-24 19:27:07', '2020-04-17 17:04:41'),
(2, 'Willie Butler', '85', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad quip ex ea com modo consequat.', 'en', 'Founder', '2020-01-24 19:29:58', '2020-04-17 17:04:33'),
(3, 'Diana Scott', '84', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad quip ex ea com modo consequat.', 'en', '-Envato Customer', '2020-01-24 19:30:21', '2020-04-17 17:04:25'),
(4, 'Jamie R. Carrillo', '83', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad quip ex ea com modo consequat.', 'en', 'Founder', '2020-01-24 19:30:42', '2020-04-17 17:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `facilities` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `description`, `facilities`, `image`, `location`, `created_at`, `updated_at`, `status`) VALUES
(3, 'Acharya & BM Reddy College of Pharmacy, Bengaluru', 'The eligible student gets an opportunity in the industries, hospital and other pharma sectors. We are working closely and regularly with students to identify interests, skill, needs, employment barriers, and available resources, and respond to all students questions or requests regarding placement support. Reputed pharmaceutical companies such as Glaxosmithkline Pharmaceutical Ltd, Himalaya Drug Company, Microlabs, Novonordisk Pvt Ltd, Abbot Pharma India, Medriech Ltd, Strides Arco Labs, Boehringer Ingelheim India, Quintiles clinical research Pvt Ltd from Bengaluru and Small scale industries are conducted the interview offered placement indifferent position. We train our students in soft skills along with technical training to have a better placement.', 'The academic, residential, extra-curricular and landscaped zones of the campus are integrated with one another in an innovative manner. And adding to the campus life are the sports facilities that include a 10,000+ seating stadium enabling track and field events, football, cricket, cultural events and mega music shows, along with an amphitheatre and other facilities for indoor games. The concern for environment is deeply rooted here in the design, through extensive afforestation of land, rain water harvesting, creation of a 4-acre artificial lake, water treatment, use of alternative energy sources, ban on the use of substances that are not environment-friendly, etc. All this and more await you here and we are delighted to welcome you to an exciting learning experience at Acharya - where the world comes to learn.', '82', 'Sinamangal - 9 , Kathmandu, Nepal edited', '2021-04-11 04:39:49', '2021-04-12 05:00:24', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int UNSIGNED NOT NULL DEFAULT '0',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clients` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `categories_id`, `start_date`, `end_date`, `image`, `description`, `lang`, `clients`, `created_at`, `updated_at`) VALUES
(1, 'Finance Solution', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}', '2019-02-03', '2019-04-02', '55', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Jason C. Williams', '2020-01-24 10:45:38', '2020-04-17 06:17:13'),
(2, 'Business Solution', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}', '2019-03-01', '2020-01-02', '56', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Stanley C. Herrick', '2020-01-24 10:46:06', '2020-04-17 06:16:58'),
(3, 'Investment Planning', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', '2019-04-02', '2019-11-03', '57', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Stanley C. Herrick', '2020-01-24 15:36:58', '2020-04-17 06:16:49'),
(4, 'Insurance Life', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', '2019-10-02', '2019-12-01', '58', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Vicky C. Ferris', '2020-01-24 15:48:17', '2020-04-17 06:16:39'),
(5, 'Building Structure', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', '2019-11-02', '2018-02-03', '59', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Randy C. Lynch', '2020-01-24 16:35:28', '2020-04-17 06:16:29'),
(6, 'Digital Market', 'a:1:{i:0;s:1:\"2\";}', '2019-03-03', '2019-04-04', '60', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Charles M. Bennett', '2020-01-24 16:58:20', '2020-04-17 06:16:19'),
(7, 'Business Advice', 'a:1:{i:0;s:1:\"1\";}', '2019-02-03', '2019-05-08', '61', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Rebecca S. Isbell', '2020-01-24 17:01:17', '2020-04-17 06:16:06'),
(8, 'Finance Advice', 'a:1:{i:0;s:1:\"2\";}', '2019-04-03', '2019-05-02', '62', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Jason L. Urena', '2020-01-24 17:03:45', '2020-04-17 06:15:56'),
(9, 'Marketing Advice', 'a:1:{i:0;s:1:\"2\";}', '2019-08-30', '2019-11-30', '63', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Patrice J. Chastain', '2020-01-24 17:06:56', '2020-04-17 06:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `works_categories`
--

CREATE TABLE `works_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works_categories`
--

INSERT INTO `works_categories` (`id`, `name`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Banking', 'publish', 'en', '2020-01-23 20:22:14', '2020-03-04 15:14:53'),
(2, 'Financial', 'publish', 'en', '2020-01-23 20:23:12', '2020-03-04 11:57:50'),
(3, 'Consulting', 'publish', 'en', '2020-01-23 20:23:28', '2020-03-04 11:58:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_info_items`
--
ALTER TABLE `contact_info_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counterups`
--
ALTER TABLE `counterups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_discipline_id_foreign` (`discipline_id`),
  ADD KEY `courses_level_id_foreign` (`level_id`);

--
-- Indexes for table `course_university`
--
ALTER TABLE `course_university`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_university_course_id_foreign` (`course_id`),
  ADD KEY `course_university_university_id_foreign` (`university_id`);

--
-- Indexes for table `disciplines`
--
ALTER TABLE `disciplines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_categories`
--
ALTER TABLE `events_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_sliders`
--
ALTER TABLE `header_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `key_features`
--
ALTER TABLE `key_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `know_abouts`
--
ALTER TABLE `know_abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_uploads`
--
ALTER TABLE `media_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_infos`
--
ALTER TABLE `support_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works_categories`
--
ALTER TABLE `works_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `contact_info_items`
--
ALTER TABLE `contact_info_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `counterups`
--
ALTER TABLE `counterups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `course_university`
--
ALTER TABLE `course_university`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `disciplines`
--
ALTER TABLE `disciplines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `events_categories`
--
ALTER TABLE `events_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `header_sliders`
--
ALTER TABLE `header_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `key_features`
--
ALTER TABLE `key_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `know_abouts`
--
ALTER TABLE `know_abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;
--
-- AUTO_INCREMENT for table `support_infos`
--
ALTER TABLE `support_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `works_categories`
--
ALTER TABLE `works_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_discipline_id_foreign` FOREIGN KEY (`discipline_id`) REFERENCES `disciplines` (`id`),
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);

--
-- Constraints for table `course_university`
--
ALTER TABLE `course_university`
  ADD CONSTRAINT `course_university_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_university_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
