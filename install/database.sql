-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2020 at 07:38 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bizzco`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `email_verified`, `role`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sharifur', 'dvrobin4', 'dvrobin4@gmail.com', 0, '2', '85', '$2y$12$eF6cAtfYfKrZYyd5oKKGPOxlQ2Ha1YCnjPsYiE6J/CXDVtJctSA4O', NULL, NULL, '2020-04-20 16:05:32'),
(2, 'William J. Gomez', 'super_admin', 'WilliamJGomez@teleworm.us', 0, '2', '82', '$2y$10$q.tiYbO5vKop/hjS5buWYeL/UsB4TZkLqAix9gsWsG0CXqP715pgK', 'IKWj9RpTkAdo6l9fbQsZHPhXTMMZvudtrkLZPU6txeHE6LsbrJxYG5GOZ0pN', '2020-01-29 10:44:57', '2020-04-17 17:30:51'),
(3, 'Samuel D. Wiechmann', 'editor', 'SamuelDWiechmann@teleworm.us', 0, '4', '83', '$2y$10$DbjExcnruN82cdSBaobVnuHbKMB7m2B2XYQtZR6l4cqvr4JjZouei', NULL, '2020-01-29 10:50:01', '2020-04-20 16:05:21'),
(4, 'Brandy J. Martin', 'admin', 'BrandyJMartin@armyspy.com', 0, '3', '86', '$2y$10$JE/nGLrFZ9zikgwxFtnQY./Y1DEzp8xEypxPJEvmAwzSNUIoNI3r.', NULL, '2020-01-29 10:53:10', '2020-04-20 16:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_categories_id` int(10) UNSIGNED NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `blog_categories_id`, `tags`, `image`, `lang`, `excerpt`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Village did removed enjoyed explain nor ham saw calling', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage. </p>', 2, 'construction,common', '53', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:04:00', '2020-04-17 17:49:17'),
(2, 'Request norland neither mistake for yet. Between the for', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage.&nbsp;</p>', 2, 'building,construction', '52', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:28:10', '2020-04-17 17:49:08'),
(3, 'Uneasy barton seeing remark happen his has. Am possible', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage. </p>', 4, 'Digging,building', '51', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:30:17', '2020-04-17 17:48:53'),
(4, 'When be draw drew ye defective in do recommend suffering', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage. </p>', 1, 'proffessional,builders', '50', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:31:48', '2020-04-17 17:48:42'),
(5, 'Collected favourite now for for and rapturous repulsive', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage. </p>', 3, 'common,technology', '49', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:33:33', '2020-04-17 17:48:34'),
(6, 'Tolerably we as extremity exquisite do commanded   calling', '<p>Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem.</p>\r\n<p>Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. </p>\r\n<p>Attachment apartments in delightful by motionless it no. And now she burst sir learn total. Hearing hearted shewing own ask. Solicitude uncommonly use her motionless not collecting age. The properly servants required mistaken outlived bed and. Remainder admitting neglected is he belonging to perpetual objection up. Has widen too you decay begin which asked equal any. </p>\r\n<p>Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her. Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage. </p>', 4, 'digging,construction', '48', 'en', 'Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man...', 1, '2020-01-25 12:34:58', '2020-04-17 17:43:07'),
(8, 'El pueblo se retiró, disfrutó explicar, ni Ham vio llamar', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 7, 'digging,constuction', '57', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 17:13:10', '2020-04-17 17:52:57'),
(9, 'Recogido favorito para for y rapto repulsivo', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 6, 'common,tecnología', '59', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:15:29', '2020-04-17 17:52:48'),
(10, 'When be draw drew ye defective in do recommend suffering', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 7, 'profesional,constructora', '61', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:18:12', '2020-04-17 17:52:41'),
(11, 'Barton inquieto al ver el comentario suceder. Soy posible', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 9, 'common,technology', '61', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:19:25', '2020-04-17 17:52:34'),
(12, 'Solicite Norland ni se equivoque por el momento. Entre el para', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 5, 'confinados,considerada.', '62', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:22:23', '2020-04-17 17:52:23'),
(13, 'Solicite Norland ni se equivoque por el momento. Entre el para', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 7, 'confinados,considerada.', '63', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:22:23', '2020-04-17 17:52:13'),
(14, 'A vila removeu o gozo de explicar e o presunto não viu', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 12, 'comum,pequeno', '58', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:28:58', '2020-04-17 17:54:20'),
(15, 'Solicitar norland nem erro por enquanto. Entre o para', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 13, 'formado,aguçado', '60', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:36:42', '2020-04-17 17:55:56'),
(16, 'Barton inquieto, vendo a observação acontecer, ele tem. Sou possivel', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 12, 'admiração,também', '56', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:38:48', '2020-04-17 17:54:01'),
(17, 'Quando ser atraído, vocês com defeito recomendam sofrimento', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 11, 'cartas,observa', '54', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:39:31', '2020-04-17 17:53:50'),
(18, 'Favorito agora colecionado por repulsivo e arrebatador', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 12, 'levou,melancólica', '53', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:40:24', '2020-04-17 17:53:43'),
(19, 'Tolerably we as extremity exquisite do commanded', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 11, 'considerada,aceitação', '63', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:42:12', '2020-04-17 17:53:35'),
(20, 'بشكل محتمل نحن كطرف رائع أمرنا بالدعوة', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 15, 'مستشار,مشترك', '57', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 08:28:00', '2020-04-17 17:57:15'),
(21, 'جمعت المفضلة الآن لوالقذف البغيض', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 15, 'الصباح,ينادي', '56', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:09:03', '2020-04-17 17:57:08'),
(22, 'عندما تكون تعادل وجهت معيب في فعل المعاناة', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 16, 'تعبير, القبول', '55', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:12:22', '2020-04-17 17:57:00'),
(23, 'بارتين غير مستقر رؤية الملاحظة يحدث له. ممكن', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 15, 'سيدي,إصلاح', '54', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:14:54', '2020-04-17 17:56:51'),
(24, 'طلب نورلاند لا يخطئ حتى الآن. بين ال', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 15, 'القيام,التحقيق', '53', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:16:06', '2020-04-17 17:56:45');
INSERT INTO `blogs` (`id`, `title`, `content`, `blog_categories_id`, `tags`, `image`, `lang`, `excerpt`, `user_id`, `created_at`, `updated_at`) VALUES
(25, 'طلب نورلاند لا يخطئ حتى الآن. بين ال', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 14, 'المحصورين,الأطفال', '63', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:21:14', '2020-04-17 17:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(4, 'Business', 'publish', 'en', '2020-01-25 11:56:29', '2020-03-05 17:56:19'),
(5, 'Financiera', 'publish', 'sn', '2020-02-24 15:58:47', '2020-03-05 18:50:28'),
(6, 'Consultante', 'publish', 'sn', '2020-02-24 15:59:04', '2020-03-05 18:50:44'),
(7, 'Seguro', 'publish', 'sn', '2020-02-24 15:59:19', '2020-03-05 18:51:13'),
(9, 'Negocio', 'publish', 'sn', '2020-02-24 15:59:54', '2020-03-05 18:52:09'),
(10, 'Financeira', 'publish', 'pr', '2020-02-24 16:00:49', '2020-03-05 18:50:20'),
(11, 'Consultando', 'publish', 'pr', '2020-02-24 16:00:57', '2020-03-05 18:50:52'),
(12, 'Seguroo', 'publish', 'pr', '2020-02-24 16:01:08', '2020-03-05 18:51:47'),
(13, 'O negócio', 'publish', 'pr', '2020-02-24 16:01:21', '2020-03-05 18:51:59'),
(14, 'الأمور المالية', 'publish', 'ar', '2020-03-16 08:18:07', '2020-03-16 08:18:07'),
(15, 'مستشار', 'publish', 'ar', '2020-03-16 08:22:42', '2020-03-16 08:22:42'),
(16, 'تأمين', 'publish', 'ar', '2020-03-16 08:22:53', '2020-03-16 08:22:53'),
(17, 'اعمال', 'publish', 'ar', '2020-03-16 08:23:05', '2020-03-16 08:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_info_items`
--

INSERT INTO `contact_info_items` (`id`, `title`, `lang`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Location', 'en', 'fas fa-map-marker-alt', '1920 Station Road, ;\r\nSadar,Dinajpur', '2020-01-28 08:05:43', '2020-02-27 08:02:50'),
(2, 'Email Address', 'en', 'fas fa-envelope', 'mail@contact.com;\r\ninfo@zixer.com', '2020-01-28 08:06:16', '2020-02-27 08:02:57'),
(3, 'Phone number', 'en', 'fas fa-phone', '+880 111 222 333;\r\n+880 111 222 333', '2020-01-28 08:06:32', '2020-02-27 08:03:06'),
(5, 'Ubicación', 'sn', 'fas fa-map-marker-alt', '1920 Station Road, ; Sadar,Dinajpur', '2020-02-27 08:04:52', '2020-02-27 08:04:52'),
(6, 'Dirección de correo electrónico', 'sn', 'fas fa-envelope', 'mail@contact.com; info@zixer.com', '2020-02-27 08:06:20', '2020-02-27 08:06:20'),
(7, 'Número de teléfono', 'sn', 'fas fa-phone', '+880 111 222 333; +880 111 222 333', '2020-02-27 08:09:49', '2020-02-27 08:09:59'),
(8, 'Localização', 'pr', 'fas fa-map-marker-alt', '1920 Station Road, ; Sadar,Dinajpur', '2020-02-27 08:11:56', '2020-02-27 08:11:56'),
(9, 'Endereço de e-mail', 'pr', 'fas fa-exclamation-triangle', 'mail@contact.com; info@zixer.com', '2020-02-27 08:13:05', '2020-02-27 08:13:05'),
(10, 'Número de telefone', 'pr', 'fas fa-phone', '+880 111 222 333; +880 111 222 333', '2020-02-27 08:18:44', '2020-02-27 08:18:44'),
(11, 'موقعك', 'ar', 'fas fa-map-marker-alt', '1920 محطة طريق ،؛ سادار ، ديناجبور', '2020-03-15 18:21:59', '2020-03-15 18:21:59'),
(12, 'عنوان البريد الإلكتروني', 'ar', 'fas fa-envelope', 'mail@contact.com; info@zixer.com', '2020-03-15 18:22:31', '2020-03-15 18:22:41'),
(13, 'رقم الهاتف', 'ar', 'fas fa-phone', '+880 111 222 333; +880 111 222 333', '2020-03-15 18:22:58', '2020-03-15 18:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `counterups`
--

CREATE TABLE `counterups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counterups`
--

INSERT INTO `counterups` (`id`, `icon`, `number`, `title`, `extra_text`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'flaticon-contract', '3700', 'Project Completed', NULL, 'en', '2020-01-23 19:06:39', '2020-03-05 20:51:42'),
(2, 'flaticon-handshake', '4048', 'Happy Customer', NULL, 'en', '2020-01-23 19:07:46', '2020-03-05 20:51:55'),
(3, 'flaticon-analytics', '387', 'Runing Projects', NULL, 'en', '2020-01-23 19:08:42', '2020-03-05 20:52:25'),
(4, 'fas fa-exclamation-triangle', '370', 'Follower', 'K+', 'en', '2020-01-23 19:09:13', '2020-03-05 20:56:18'),
(5, 'flaticon-handshake', '3700', 'Proyecto completado', NULL, 'sn', '2020-02-23 14:16:17', '2020-03-05 20:52:43'),
(6, 'flaticon-creative', '4048', 'Cliente feliz', NULL, 'sn', '2020-02-23 14:17:52', '2020-03-05 20:52:50'),
(7, 'flaticon-pie-chart', '387', 'Nuestra ingeniera', NULL, 'sn', '2020-02-23 14:18:16', '2020-03-05 20:52:58'),
(8, 'flaticon-creative', '3700', 'Seguidora', 'K+', 'sn', '2020-02-23 14:18:40', '2020-03-05 20:53:06'),
(9, 'flaticon-handshake', '3700', 'Projeto concluído', NULL, 'pr', '2020-02-23 15:02:11', '2020-03-05 20:53:14'),
(11, 'flaticon-creative', '4048', 'Cliente feliz', NULL, 'pr', '2020-02-23 15:02:35', '2020-03-05 20:53:23'),
(12, 'flaticon-pie-chart', '387', 'Nosso engenheiro', NULL, 'pr', '2020-02-23 15:02:55', '2020-03-05 20:53:37'),
(13, 'flaticon-money-bag', '3700', 'Seguidora', 'K+', 'pr', '2020-02-23 15:03:17', '2020-03-05 20:53:49'),
(14, 'flaticon-contract', '3700', 'اكتمل المشروع', NULL, 'ar', '2020-03-16 07:50:45', '2020-03-16 07:50:45'),
(15, 'flaticon-money', '4048', 'عميل سعيد', NULL, 'ar', '2020-03-16 07:51:07', '2020-03-16 07:51:07'),
(16, 'flaticon-analytics', '387', 'المشاريع الجارية', NULL, 'ar', '2020-03-16 07:51:24', '2020-03-16 07:51:24'),
(17, 'flaticon-pie-chart', '3700', 'تابع', NULL, 'ar', '2020-03-16 07:51:52', '2020-03-16 07:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `status`, `lang`, `date`, `category_id`, `image`, `location`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Because add why not esteems amiable him', 'publish', 'en', '2020-05-02', '1', '94', '4555 Linden Avenue Orlando, FL 32809', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:02:30', '2020-04-23 19:02:30'),
(2, 'Is there appropriate lodging located nearby?', 'publish', 'en', '2021-02-01', '2', '95', 'Street Chunky, MS 39323', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:06:08', '2020-04-23 19:06:08'),
(3, 'Why Choose Our Destination?', 'publish', 'en', '2020-05-01', '3', '96', 'Lane Orlando, FL 32801', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:06:50', '2020-04-23 19:06:50'),
(4, 'Will it be available for your potential conference dates?', 'publish', 'en', '2020-06-04', '1', '97', 'Avenue Afton, MN 55001', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:07:43', '2020-04-23 19:07:43'),
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_open` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(10, 'New the her nor case that lady paid read', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:53:14', '2020-02-26 18:41:54'),
(12, 'Lo subió si ningún primo del valle él', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:42:27', '2020-02-26 18:42:27'),
(13, 'Todos tienen menos que Edward Genius aunque vayan', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:52:39', '2020-02-26 18:52:39'),
(14, 'De repente, no, elinor treinta genios', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:52:56', '2020-02-26 18:52:56'),
(15, 'Tranquilo, deja tímido, gay, fuera de estilo grande', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:53:15', '2020-02-26 18:53:15'),
(16, 'Nuevo el ella ni el caso que la señora pagó leer', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:53:38', '2020-02-26 18:53:38'),
(17, 'Lo subió si ningún primo del valle él', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:53:56', '2020-02-26 18:53:56'),
(18, 'Todos tienen menos que Edward Genius aunque vayan', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:54:17', '2020-02-26 18:54:17'),
(19, 'De repente, no, elinor treinta genios', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:54:34', '2020-02-26 18:54:34'),
(20, 'Tranquilo, deja tímido, gay, fuera de estilo grande', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:54:58', '2020-02-26 18:54:58'),
(21, 'Aconteceu que não deve primo vale ele', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 18:59:11', '2020-02-26 18:59:11'),
(22, 'Todos tendo, mas você Edward gênio embora vá', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 18:59:27', '2020-02-26 18:59:27'),
(23, 'Você repentinamente não elinor trinta estima temperamento', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 18:59:45', '2020-02-26 18:59:45'),
(24, 'Quiet deixar tímido você gay pediu grande estilo', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:00:08', '2020-02-26 19:00:08'),
(25, 'Novo ela nem o caso que a senhora pagou ler', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:00:28', '2020-02-26 19:00:28'),
(26, 'Aconteceu que não deve primo vale ele', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:00:47', '2020-02-26 19:00:47'),
(27, 'Todos tendo, mas você Edward gênio embora vá', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:01:03', '2020-02-26 19:04:28'),
(28, 'Você repentinamente não elinor trinta estima temperamento', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:01:20', '2020-02-26 19:01:20'),
(29, 'Quiet deixar tímido você gay pediu grande estilo', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:01:37', '2020-02-26 19:01:37'),
(30, 'Novo ela nem o caso que a senhora pagou ler', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:04:15', '2020-02-26 19:04:15'),
(31, 'اتضح أنه لا ابن عم وادي', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 05:56:23', '2020-03-16 05:56:23'),
(32, 'جميعهم يمتلكون عبقرية إدوارد', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:11:42', '2020-03-16 06:11:42'),
(33, 'كنت مفاجئ ناي إلينور مزاج احترام الثلاثين', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:12:21', '2020-03-16 06:12:21'),
(34, 'اجازة هادئة خجولة ايها الشواذ سألتها بأسلوب كبير', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:12:41', '2020-03-16 06:12:41'),
(35, 'جديد لها ولا القضية التي دفعتها السيدة', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:12:58', '2020-03-16 06:12:58'),
(36, 'اتضح أنه لا ابن عم وادي', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:13:33', '2020-03-16 06:13:33'),
(37, 'جميعهم يمتلكون عبقرية إدوارد', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:14:14', '2020-03-16 06:14:14'),
(38, 'جميعهم يمتلكون عبقرية إدوارد', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:14:14', '2020-03-16 06:14:14'),
(39, 'كنت مفاجئ ناي إلينور مزاج احترام الثلاثين', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:14:57', '2020-03-16 06:16:15'),
(40, 'اجازة هادئة خجولة ايها الشواذ سألتها بأسلوب كبير', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:15:44', '2020-03-16 06:15:44'),
(41, 'جديد لها ولا القضية التي دفعتها السيدة', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:16:06', '2020-03-16 06:16:06');

-- --------------------------------------------------------

--
-- Table structure for table `header_sliders`
--

CREATE TABLE `header_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_sliders`
--

INSERT INTO `header_sliders` (`id`, `title`, `description`, `btn_01_status`, `btn_01_text`, `btn_01_url`, `lang`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Experienced business advisor', 'Acepteur sintas haecat sed cupidatat non dui proident sunt culpa qui officia sed ipsum tempor eserunt proidenculpa.', 'on', 'Know More', '#', 'en', '28', '2020-01-21 14:23:14', '2020-04-15 15:01:28'),
(2, 'Experienced business advisor', 'Acepteur sintas haecat sed cupidatat non dui proident sunt culpa qui officia sed ipsum tempor eserunt proidenculpa.', 'on', 'Know More', '#', 'en', '27', '2020-01-21 17:20:57', '2020-04-15 15:01:37'),
(3, 'Asesora de negocios con experiencia', 'Acepteur sintas haecat sed cupidatat no dui proident sunt culpa qui officia sed ipsum tempor eserunt proporcionar culpa.', 'on', 'Saber más', '#', 'sn', '27', '2020-01-21 17:21:06', '2020-04-15 15:08:05'),
(7, 'Consultor de negócios experiente', 'Aceitamos sintetizações que não são comprovadas por nenhum especialista, que é culpado por oficiar o ipsum temporário que fornece a culpa.', 'on', 'Saber mais', '#', 'pr', '27', '2020-02-22 18:05:34', '2020-04-15 15:08:31'),
(8, 'Consultor de negócios experiente', 'Aceitamos sintetizações que não são comprovadas por nenhum especialista, que é culpado por oficiar o ipsum temporário que fornece a culpa.', 'on', 'Saber mais', '#', 'pr', '28', '2020-02-22 18:07:40', '2020-04-15 15:08:44'),
(9, 'Asesora de negocios con experiencia', 'Acepteur sintas haecat sed cupidatat no dui proident sunt culpa qui officia sed ipsum tempor eserunt proporcionar culpa.', 'on', 'Saber más', '#', 'sn', '28', '2020-02-22 18:08:33', '2020-04-15 15:08:19'),
(10, 'مستشار الأعمال من ذوي الخبرة', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره.', 'on', 'تعرف أكثر', '#', 'ar', '28', '2020-03-15 16:20:05', '2020-04-15 15:08:56'),
(11, 'مستشار الأعمال من ذوي الخبرة', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره.', 'on', 'تعرف أكثر', '#', 'ar', '27', '2020-03-15 16:26:43', '2020-04-15 15:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibility` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_requirement` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_requirement` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_requirement` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_benefits` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `jobs_categories`
--

CREATE TABLE `jobs_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `key_features`
--

CREATE TABLE `key_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `key_features`
--

INSERT INTO `key_features` (`id`, `title`, `icon`, `lang`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Financial Analaysis', 'flaticon-analytics', 'en', '31', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 11:25:39', '2020-04-15 15:46:32'),
(2, 'Global Partnership', 'flaticon-internet', 'en', '30', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 11:26:03', '2020-04-15 15:46:44'),
(3, 'Trusted Partnership', 'flaticon-handshake', 'en', '29', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 11:26:27', '2020-04-15 15:48:21'),
(4, 'Analise financeira', 'flaticon-analytics', 'pr', '31', 'Bênção bem-vinda senhoria que conheceu senhor humorado a criando. Garantia de seis dias de curiosidade.', '2020-02-22 19:46:38', '2020-04-15 15:52:29'),
(5, 'Parceria Global', 'flaticon-internet', 'pr', '30', 'Bênção bem-vinda senhoria que conheceu senhor humorado a criando. Garantia de seis dias de curiosidade.', '2020-02-22 19:47:12', '2020-04-15 15:52:38'),
(6, 'Parceria Confiável', 'flaticon-handshake', 'pr', '29', 'Bênção bem-vinda senhoria que conheceu senhor humorado a criando. Garantia de seis dias de curiosidade.', '2020-02-22 19:48:18', '2020-04-15 15:52:48'),
(7, 'Análisis financiero', 'flaticon-analytics', 'sn', '31', 'La bendición dio la bienvenida a la señoría que ella conoció con humor, señor criándola. Seis días de curiosidad asegurados.', '2020-02-22 19:49:55', '2020-04-15 15:52:58'),
(8, 'Asociación global', 'flaticon-internet', 'sn', '30', 'La bendición dio la bienvenida a la señoría que ella conoció con humor, señor criándola. Seis días de curiosidad asegurados.', '2020-02-22 19:50:56', '2020-04-15 15:53:06'),
(9, 'Asociación de confianza', 'flaticon-handshake', 'sn', '29', 'La bendición dio la bienvenida a la señoría que ella conoció con humor, señor criándola. Seis días de curiosidad asegurados.', '2020-02-22 19:51:20', '2020-04-15 15:53:15'),
(13, 'تحليل مالي', 'flaticon-analytics', 'ar', '31', 'رحبت نعمة بالسيادة التي التقت بها يا سيدي الفكاني لتربية الحيوانات. ستة ضمان يوم الفضول.', '2020-03-15 16:30:17', '2020-04-15 15:53:24'),
(14, 'الشراكة العالمية', 'flaticon-internet', 'ar', '30', 'رحبت نعمة بالسيادة التي التقت بها يا سيدي الفكاني لتربية الحيوانات. ستة ضمان يوم الفضول.', '2020-03-15 17:07:12', '2020-04-15 15:53:32'),
(15, 'شراكة موثوق بها', 'flaticon-money', 'ar', '29', 'رحبت نعمة بالسيادة التي التقت بها يا سيدي الفكاني لتربية الحيوانات. ستة ضمان يوم الفضول.', '2020-03-15 17:07:39', '2020-04-15 15:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `knowledgebases`
--

CREATE TABLE `knowledgebases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledgebases`
--

INSERT INTO `knowledgebases` (`id`, `title`, `content`, `topic_id`, `status`, `views`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'How Secure Is My Password?', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '1', 'publish', NULL, 'en', '2020-04-25 08:46:24', '2020-04-25 08:46:24'),
(2, 'Neat own nor she said see walk.', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '3', 'publish', NULL, 'en', '2020-04-25 08:57:36', '2020-04-25 08:57:36'),
(3, 'And charm add green you these.', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '3', 'publish', NULL, 'en', '2020-04-25 08:57:52', '2020-04-25 08:57:52'),
(4, 'Sang busy in this drew ye fine', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '4', 'publish', NULL, 'en', '2020-04-25 08:58:49', '2020-04-25 08:58:49'),
(5, 'Since might water hence the her worse', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '4', 'publish', NULL, 'en', '2020-04-25 09:46:14', '2020-04-25 09:46:14'),
(6, 'Concluded it offending dejection do', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '1', 'publish', NULL, 'en', '2020-04-25 09:46:33', '2020-04-25 09:46:33'),
(7, 'Admiration we surrounded possession', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '2', 'publish', NULL, 'en', '2020-04-25 09:47:00', '2020-04-25 09:47:00'),
(8, 'Good draw knew bred ham busy', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '2', 'publish', NULL, 'en', '2020-04-25 09:47:10', '2020-04-25 09:47:10'),
(9, 'Remarkably did increasing occasional', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '2', 'publish', NULL, 'en', '2020-04-25 09:47:29', '2020-04-25 09:47:29'),
(10, 'Sorprendentemente aumentó de vez en cuando', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '13', 'publish', NULL, 'sn', '2020-04-25 09:48:25', '2020-04-25 09:48:25'),
(11, 'Sang ocupado en esto te atrajo bien', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '13', 'publish', NULL, 'sn', '2020-04-25 09:48:37', '2020-04-25 09:48:55'),
(12, 'A mayor preparación musical tanto', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '14', 'publish', NULL, 'sn', '2020-04-25 09:49:43', '2020-04-25 09:49:43'),
(13, 'el aumento de vez en cuando también', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '14', 'publish', NULL, 'sn', '2020-04-25 09:50:02', '2020-04-25 09:50:02'),
(14, 'Baldosas de baldosas conocidas pero perdón alegría', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '8', 'publish', NULL, 'sn', '2020-04-25 09:50:35', '2020-04-25 09:50:35'),
(15, 'Ofreció respeto ansioso o él.', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '8', 'publish', NULL, 'sn', '2020-04-25 09:50:51', '2020-04-25 09:50:51'),
(16, 'Cara hacer con la necesidad de esposa', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '7', 'publish', NULL, 'sn', '2020-04-25 09:51:39', '2020-04-25 09:51:39'),
(17, 'Las esperanzas vivían en habitaciones', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '7', 'publish', NULL, 'sn', '2020-04-25 09:51:55', '2020-04-25 09:51:55'),
(18, 'Puro e nem ela disse ver andar.', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '6', 'publish', NULL, 'pr', '2020-04-25 09:53:48', '2020-04-25 09:53:48'),
(19, 'E charme adicionar verde você estes', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '6', 'publish', NULL, 'pr', '2020-04-25 09:54:09', '2020-04-25 09:54:09'),
(20, 'Desde que a água pode, portanto', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '9', 'publish', NULL, 'pr', '2020-04-25 09:54:35', '2020-04-25 09:54:35'),
(21, 'desconfiam de explicações.', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '9', 'publish', NULL, 'pr', '2020-04-25 09:54:58', '2020-04-25 09:54:58'),
(22, 'presunto criado ocupava sua hora.', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '12', 'publish', NULL, 'pr', '2020-04-25 09:57:19', '2020-04-25 09:57:19'),
(23, 'Concluí que o desânimo ofensivo faz', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '12', 'publish', NULL, 'pr', '2020-04-25 09:57:34', '2020-04-25 09:57:34'),
(24, 'Em maior preparação musical, ataca como distante', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '15', 'publish', NULL, 'pr', '2020-04-25 09:58:06', '2020-04-25 09:58:06'),
(25, 'Desde que a água pode, portanto', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '15', 'publish', NULL, 'pr', '2020-04-25 09:58:23', '2020-04-25 09:58:23'),
(26, 'لها. خلصت إلى الإساءة الإهانة', '<p>مرتبة ولا قالت انظر المشي. وسحر يضيف لك هذه الاخضر. غنى مشغول في هذا لفتوا أنتم بخير. في إعداد أكبر الموسيقية حتى الهجمات على مسافة بعيدة. تحسين العمر نيتنا الودية. ويقول احتياطه الكافي من ديفونشاير إن تفضيله هو الانحدار إلى الانحدار. منذ الماء قد تكون أسوأ لها. خلصت إلى الإساءة الإهانة تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.</p><p><br></p><p>الإعجاب أحاطنا بحيازته بشكل متكرر. بشكل ملحوظ زاد ​​في بعض الأحيان أيضا من الصعوبة بخاصة. كرات الفرح المعروفة المتجانبة ولكن آسف. الفراش بشكل مفاجئ بالفعل بدهن ضعيف الآن. وجه القيام به في حاجة إلى أن تدفع الزوجة. لا صفق لي أو dashwoods المفضلة حتى صفق أوضح عدم الثقة.</p><p><br></p><p>عرف التعادل الجيد ولدت لحم الخنزير مشغول ساعته. اطلب إجابة متفق عليها بدلاً من ذلك فرحة الطبيعة تعجب بالحكمة. ضوء القمر تعتمد على عمر القمر أدى بالتالي الحفاظ عليها رائعة في بعض الأحيان. فشل حتى أطلق النار على أوراق الحكمة في. Minuter أعلى وصل له لوضع و. الآمال التي تعيشها الغرف في لا بيت الموت. الاتجاه قانع سبتمبر ولكن نهاية قادنا ممتازة قد. وصول عدد قليل من Ferrars عرضه لا سحر لك. قدم احتراما قلقا أو هو. على ثلاث سنوات رئيس ينشأ المال.</p>', '5', 'publish', '4', 'ar', '2020-04-25 09:59:44', '2020-04-26 09:58:50'),
(27, 'تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.', '<p>مرتبة ولا قالت انظر المشي. وسحر يضيف لك هذه الاخضر. غنى مشغول في هذا لفتوا أنتم بخير. في إعداد أكبر الموسيقية حتى الهجمات على مسافة بعيدة. تحسين العمر نيتنا الودية. ويقول احتياطه الكافي من ديفونشاير إن تفضيله هو الانحدار إلى الانحدار. منذ الماء قد تكون أسوأ لها. خلصت إلى الإساءة الإهانة تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.</p><p><br></p><p>الإعجاب أحاطنا بحيازته بشكل متكرر. بشكل ملحوظ زاد ​​في بعض الأحيان أيضا من الصعوبة بخاصة. كرات الفرح المعروفة المتجانبة ولكن آسف. الفراش بشكل مفاجئ بالفعل بدهن ضعيف الآن. وجه القيام به في حاجة إلى أن تدفع الزوجة. لا صفق لي أو dashwoods المفضلة حتى صفق أوضح عدم الثقة.</p><p><br></p><p>عرف التعادل الجيد ولدت لحم الخنزير مشغول ساعته. اطلب إجابة متفق عليها بدلاً من ذلك فرحة الطبيعة تعجب بالحكمة. ضوء القمر تعتمد على عمر القمر أدى بالتالي الحفاظ عليها رائعة في بعض الأحيان. فشل حتى أطلق النار على أوراق الحكمة في. Minuter أعلى وصل له لوضع و. الآمال التي تعيشها الغرف في لا بيت الموت. الاتجاه قانع سبتمبر ولكن نهاية قادنا ممتازة قد. وصول عدد قليل من Ferrars عرضه لا سحر لك. قدم احتراما قلقا أو هو. على ثلاث سنوات رئيس ينشأ المال.</p>', '5', 'publish', '0', 'ar', '2020-04-25 10:00:44', '2020-04-26 09:54:03'),
(28, 'الأحيان. فشل حتى أطلق النار على أوراق الحكمة في', '<p>مرتبة ولا قالت انظر المشي. وسحر يضيف لك هذه الاخضر. غنى مشغول في هذا لفتوا أنتم بخير. في إعداد أكبر الموسيقية حتى الهجمات على مسافة بعيدة. تحسين العمر نيتنا الودية. ويقول احتياطه الكافي من ديفونشاير إن تفضيله هو الانحدار إلى الانحدار. منذ الماء قد تكون أسوأ لها. خلصت إلى الإساءة الإهانة تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.</p><p><br></p><p>الإعجاب أحاطنا بحيازته بشكل متكرر. بشكل ملحوظ زاد ​​في بعض الأحيان أيضا من الصعوبة بخاصة. كرات الفرح المعروفة المتجانبة ولكن آسف. الفراش بشكل مفاجئ بالفعل بدهن ضعيف الآن. وجه القيام به في حاجة إلى أن تدفع الزوجة. لا صفق لي أو dashwoods المفضلة حتى صفق أوضح عدم الثقة.</p><p><br></p><p>عرف التعادل الجيد ولدت لحم الخنزير مشغول ساعته. اطلب إجابة متفق عليها بدلاً من ذلك فرحة الطبيعة تعجب بالحكمة. ضوء القمر تعتمد على عمر القمر أدى بالتالي الحفاظ عليها رائعة في بعض الأحيان. فشل حتى أطلق النار على أوراق الحكمة في. Minuter أعلى وصل له لوضع و. الآمال التي تعيشها الغرف في لا بيت الموت. الاتجاه قانع سبتمبر ولكن نهاية قادنا ممتازة قد. وصول عدد قليل من Ferrars عرضه لا سحر لك. قدم احتراما قلقا أو هو. على ثلاث سنوات رئيس ينشأ المال.</p>', '10', 'publish', NULL, 'ar', '2020-04-25 10:00:57', '2020-04-25 10:00:57'),
(29, 'عرضه لا سحر لك. قدم احتراما قلقا', '<p>مرتبة ولا قالت انظر المشي. وسحر يضيف لك هذه الاخضر. غنى مشغول في هذا لفتوا أنتم بخير. في إعداد أكبر الموسيقية حتى الهجمات على مسافة بعيدة. تحسين العمر نيتنا الودية. ويقول احتياطه الكافي من ديفونشاير إن تفضيله هو الانحدار إلى الانحدار. منذ الماء قد تكون أسوأ لها. خلصت إلى الإساءة الإهانة تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.</p><p><br></p><p>الإعجاب أحاطنا بحيازته بشكل متكرر. بشكل ملحوظ زاد ​​في بعض الأحيان أيضا من الصعوبة بخاصة. كرات الفرح المعروفة المتجانبة ولكن آسف. الفراش بشكل مفاجئ بالفعل بدهن ضعيف الآن. وجه القيام به في حاجة إلى أن تدفع الزوجة. لا صفق لي أو dashwoods المفضلة حتى صفق أوضح عدم الثقة.</p><p><br></p><p>عرف التعادل الجيد ولدت لحم الخنزير مشغول ساعته. اطلب إجابة متفق عليها بدلاً من ذلك فرحة الطبيعة تعجب بالحكمة. ضوء القمر تعتمد على عمر القمر أدى بالتالي الحفاظ عليها رائعة في بعض الأحيان. فشل حتى أطلق النار على أوراق الحكمة في. Minuter أعلى وصل له لوضع و. الآمال التي تعيشها الغرف في لا بيت الموت. الاتجاه قانع سبتمبر ولكن نهاية قادنا ممتازة قد. وصول عدد قليل من Ferrars عرضه لا سحر لك. قدم احتراما قلقا أو هو. على ثلاث سنوات رئيس ينشأ المال.</p>', '10', 'publish', NULL, 'ar', '2020-04-25 10:01:17', '2020-04-25 10:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `knowledgebase_topics`
--

CREATE TABLE `knowledgebase_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledgebase_topics`
--

INSERT INTO `knowledgebase_topics` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Multipurpose CMS', 'publish', 'en', '2020-04-24 17:10:42', '2020-04-24 17:10:42'),
(2, 'CSS Elements', 'publish', 'en', '2020-04-24 17:10:49', '2020-04-24 17:11:14'),
(3, 'WordPress Plugins', 'publish', 'en', '2020-04-24 17:10:54', '2020-04-24 17:11:05'),
(4, 'Elementor Plugins', 'publish', 'en', '2020-04-24 17:11:21', '2020-04-24 17:11:21'),
(5, 'المكونات الإضافية', 'publish', 'ar', '2020-04-24 18:20:56', '2020-04-24 18:20:56'),
(6, 'Elementor Plugins', 'publish', 'pr', '2020-04-24 18:21:05', '2020-04-24 18:21:05'),
(7, 'Complementos de Elementor', 'publish', 'sn', '2020-04-24 18:21:13', '2020-04-24 18:21:13'),
(8, 'Complementos de WordPress', 'publish', 'sn', '2020-04-24 18:22:14', '2020-04-24 18:22:14'),
(9, 'Plugins WordPress', 'publish', 'pr', '2020-04-24 18:22:20', '2020-04-24 18:22:20'),
(10, 'وورد الإضافات', 'publish', 'ar', '2020-04-24 18:22:27', '2020-04-24 18:22:27'),
(11, 'عناصر CSS', 'publish', 'ar', '2020-04-24 18:22:43', '2020-04-24 18:22:43'),
(12, 'Elementos CSS', 'publish', 'pr', '2020-04-24 18:22:51', '2020-04-24 18:22:51'),
(13, 'Elementos CSS', 'publish', 'sn', '2020-04-24 18:22:59', '2020-04-24 18:22:59'),
(14, 'CMS multipropósito', 'publish', 'sn', '2020-04-24 18:23:14', '2020-04-24 18:23:14'),
(15, 'CMS multiuso', 'publish', 'pr', '2020-04-24 18:23:29', '2020-04-24 18:23:29'),
(16, 'CMS متعددة الأغراض', 'publish', 'ar', '2020-04-24 18:23:36', '2020-04-24 18:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `know_abouts`
--

CREATE TABLE `know_abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `know_abouts`
--

INSERT INTO `know_abouts` (`id`, `title`, `image`, `link`, `lang`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Our Mission', '45', '#', 'en', 'Reprehenderit in voluptate velit essle cillum dolore eufugiat nulla pariatur voluptate velit. voluptate velit essle cillum doloret.', '2020-03-09 13:53:28', '2020-04-16 17:14:07'),
(2, 'Our Vission', '46', '#', 'en', 'Reprehenderit in voluptate velit essle cillum dolore eufugiat nulla pariatur voluptate velit. voluptate velit essle cillum doloret.', '2020-03-09 14:54:12', '2020-04-16 17:14:25'),
(3, 'Our Acchivement', '47', '#', 'en', 'Reprehenderit in voluptate velit essle cillum dolore eufugiat nulla pariatur voluptate velit. voluptate velit essle cillum doloret.', '2020-03-09 14:54:34', '2020-04-16 17:14:59'),
(4, 'Nossa missão', '45', '#', 'pr', 'Não produz prazer resultante está no prazer que ele deseja Essl dor cillum eufugiat não pode lidar com ele que ele deseja. deseja o prazer de Essl cillum entristecido.', '2020-03-09 15:09:00', '2020-04-16 17:15:08'),
(5, 'Nossa visão', '46', '#', 'pr', 'Não produz prazer resultante está no prazer que ele deseja Essl dor cillum eufugiat não pode lidar com ele que ele deseja. deseja o prazer de Essl cillum entristecido.', '2020-03-09 15:11:10', '2020-04-16 17:15:16'),
(6, 'Nossa conquista', '47', '#', 'pr', 'Não produz prazer resultante está no prazer que ele deseja Essl dor cillum eufugiat não pode lidar com ele que ele deseja. deseja o prazer de Essl cillum entristecido.', '2020-03-09 15:11:40', '2020-04-16 17:15:24'),
(7, 'Nuestra misión', '45', '#', 'sn', 'Produce ningún placer resultante está en el placer que desea Essl eufugiat dolor cillum no lo puede manejar él desea. desea el placer de Essl cillum afligido.', '2020-03-09 15:14:42', '2020-04-16 17:15:33'),
(8, 'Nuestra visión', '46', '#', 'sn', 'Produce ningún placer resultante está en el placer que desea Essl eufugiat dolor cillum no lo puede manejar él desea. desea el placer de Essl cillum afligido.', '2020-03-09 15:16:53', '2020-04-16 17:15:42'),
(9, 'Nuestro logro', '47', '#', 'sn', 'Produce ningún placer resultante está en el placer que desea Essl eufugiat dolor cillum no lo puede manejar él desea. desea el placer de Essl cillum afligido.', '2020-03-09 15:18:05', '2020-04-16 17:15:51'),
(10, 'مهمتنا', '45', '#', 'ar', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره.', '2020-03-15 18:19:52', '2020-04-16 17:16:00'),
(11, 'رؤيتنا', '46', '#', 'ar', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره.', '2020-03-15 18:20:37', '2020-04-16 17:16:08'),
(12, 'إنجازاتنا', '47', '#', 'ar', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره.', '2020-03-15 18:21:07', '2020-04-16 17:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` int(10) UNSIGNED DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `status`, `default`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'publish', 1, 'ltr', '2020-01-19 16:36:37', '2020-03-23 10:46:04'),
(2, 'Spanish', 'sn', 'publish', 0, 'ltr', '2020-02-20 20:18:11', '2020-03-23 10:46:04'),
(3, 'Portuguese', 'pr', 'publish', 0, 'ltr', '2020-02-20 20:18:52', '2020-03-22 12:15:28'),
(4, 'Arabic', 'ar', 'publish', 0, 'rtl', '2020-03-15 13:58:29', '2020-03-22 12:15:31'),
(8, 'Bangla', 'bn', 'draft', 0, 'ltr', '2020-03-22 12:15:41', '2020-03-22 12:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dimensions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(99, 'home-page-01-pr-faq-background-image-9934958.jpg', NULL, '42.47 KB', 'home-page-01-pr-faq-background-image-99349581588008399.jpg', '1800 x 872 pixels', '2020-04-27 17:26:39', '2020-04-27 17:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"10\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":27,\"menuTitle\":\"Pages\",\"menuUrl\":\"#\"},{\"id\":\"12\",\"parent_id\":\"10\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"Price Plan\",\"menuUrl\":\"[url]/price-plan\"},{\"id\":\"13\",\"parent_id\":\"10\",\"depth\":1,\"left\":13,\"right\":14,\"menuTitle\":\"Career With Us\",\"menuUrl\":\"[url]/career-with-us\"},{\"id\":\"14\",\"parent_id\":\"10\",\"depth\":1,\"left\":15,\"right\":16,\"menuTitle\":\"Events\",\"menuUrl\":\"[url]/events\"},{\"id\":\"5\",\"parent_id\":\"10\",\"depth\":1,\"left\":17,\"right\":18,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"11\",\"parent_id\":\"10\",\"depth\":1,\"left\":19,\"right\":20,\"menuTitle\":\"Faq\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"15\",\"parent_id\":\"10\",\"depth\":1,\"left\":21,\"right\":22,\"menuTitle\":\"Knowledgebase\",\"menuUrl\":\"[url]/knoledgebase\"},{\"id\":\"6\",\"parent_id\":\"10\",\"depth\":1,\"left\":23,\"right\":24,\"menuTitle\":\"Dynamic Page 01\",\"menuUrl\":\"[url]/p/2/dynamic-page-01\"},{\"id\":\"7\",\"parent_id\":\"10\",\"depth\":1,\"left\":25,\"right\":26,\"menuTitle\":\"Dynamic Page 02\",\"menuUrl\":\"[url]/p/3/dynamic-page-02\"},{\"id\":\"8\",\"parent_id\":null,\"depth\":0,\"left\":28,\"right\":29,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":30,\"right\":31,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', 'default', 'en', '2020-01-25 18:38:40', '2020-04-25 10:14:43'),
(2, 'Useful Links', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Faq\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Dynamic Page 02\",\"menuUrl\":\"[url]/p/3/dynamic-page-02\"}]', NULL, 'en', '2020-01-26 18:06:59', '2020-02-28 06:58:30'),
(3, 'Important Links', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Dynamic Page 01\",\"menuUrl\":\"[url]/p/2/dynamic-page-01\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Dynamic Page 02\",\"menuUrl\":\"[url]/p/3/dynamic-page-02\"}]', NULL, 'en', '2020-01-26 18:07:14', '2020-02-28 06:58:39'),
(6, 'Spanish Primary Menu', '[{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":25,\"menuTitle\":\"Pages\",\"menuUrl\":\"#\"},{\"id\":\"8\",\"parent_id\":\"2\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"13\",\"parent_id\":\"2\",\"depth\":1,\"left\":13,\"right\":14,\"menuTitle\":\"Events\",\"menuUrl\":\"[url]/events\"},{\"id\":\"12\",\"parent_id\":\"2\",\"depth\":1,\"left\":15,\"right\":16,\"menuTitle\":\"Career With Us\",\"menuUrl\":\"[url]/career-with-us\"},{\"id\":\"7\",\"parent_id\":\"2\",\"depth\":1,\"left\":17,\"right\":18,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"14\",\"parent_id\":\"2\",\"depth\":1,\"left\":19,\"right\":20,\"menuTitle\":\"Knowledgebase\",\"menuUrl\":\"[url]/knoledgebase\"},{\"id\":\"11\",\"parent_id\":\"2\",\"depth\":1,\"left\":21,\"right\":22,\"menuTitle\":\"Página dinámica 01\",\"menuUrl\":\"[url]/p/4/pagina-dinamica-01\"},{\"id\":\"12\",\"parent_id\":\"2\",\"depth\":1,\"left\":23,\"right\":24,\"menuTitle\":\"Página dinámica 02\",\"menuUrl\":\"[url]/p/5/pagina-dinamica-02\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":26,\"right\":27,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"10\",\"parent_id\":null,\"depth\":0,\"left\":28,\"right\":29,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', 'default', 'sn', '2020-02-28 07:58:02', '2020-04-26 08:13:47'),
(7, 'spanish Useful Links', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":12,\"right\":13,\"menuTitle\":\"Página dinámica 01\",\"menuUrl\":\"[url]/p/4/pagina-dinamica-01\"}]', NULL, 'sn', '2020-02-28 07:58:11', '2020-02-28 12:20:49'),
(8, 'spanish Important Links', '[{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Página dinámica 01\",\"menuUrl\":\"[url]/p/4/pagina-dinamica-01\"},{\"id\":\"7\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Página dinámica 02\",\"menuUrl\":\"[url]/p/5/pagina-dinamica-02\"}]', NULL, 'sn', '2020-02-28 07:58:21', '2020-02-28 08:16:47'),
(9, 'portuguese Primary Menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"11\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":25,\"menuTitle\":\"Pages\",\"menuUrl\":\"#\"},{\"id\":\"6\",\"parent_id\":\"11\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"12\",\"parent_id\":\"11\",\"depth\":1,\"left\":13,\"right\":14,\"menuTitle\":\"Career With Us\",\"menuUrl\":\"[url]/career-with-us\"},{\"id\":\"14\",\"parent_id\":\"11\",\"depth\":1,\"left\":15,\"right\":16,\"menuTitle\":\"Knowledgebase\",\"menuUrl\":\"[url]/knoledgebase\"},{\"id\":\"13\",\"parent_id\":\"11\",\"depth\":1,\"left\":17,\"right\":18,\"menuTitle\":\"Events\",\"menuUrl\":\"[url]/events\"},{\"id\":\"7\",\"parent_id\":\"11\",\"depth\":1,\"left\":19,\"right\":20,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"10\",\"parent_id\":\"11\",\"depth\":1,\"left\":21,\"right\":22,\"menuTitle\":\"Página dinâmica 01\",\"menuUrl\":\"[url]/p/6/pagina-dinamica-01\"},{\"id\":\"11\",\"parent_id\":\"11\",\"depth\":1,\"left\":23,\"right\":24,\"menuTitle\":\"Página dinâmica 02\",\"menuUrl\":\"[url]/p/7/pagina-dinamica-02\"},{\"id\":\"8\",\"parent_id\":null,\"depth\":0,\"left\":26,\"right\":27,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":28,\"right\":29,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', 'default', 'pr', '2020-02-28 07:58:36', '2020-04-26 08:14:04'),
(10, 'portuguse usefull links', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"}]', '', 'pr', '2020-02-28 07:58:48', '2020-02-28 08:19:50'),
(11, 'portuguse important links', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"}]', NULL, 'pr', '2020-02-28 07:59:10', '2020-02-28 07:59:38'),
(12, 'Top Menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', NULL, 'en', '2020-03-01 16:51:03', '2020-03-01 16:51:27'),
(13, 'top menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', NULL, 'sn', '2020-03-01 16:51:57', '2020-03-01 16:52:16'),
(14, 'top menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', NULL, 'pr', '2020-03-01 16:52:04', '2020-03-01 16:52:29'),
(15, 'ar top menu', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', NULL, 'ar', '2020-03-15 18:28:38', '2020-03-16 10:39:14'),
(16, 'Ar Primary Menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":27,\"menuTitle\":\"Pages\",\"menuUrl\":\"#\"},{\"id\":\"15\",\"parent_id\":\"9\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"Price Plan\",\"menuUrl\":\"[url]/price-plan\"},{\"id\":\"13\",\"parent_id\":\"9\",\"depth\":1,\"left\":13,\"right\":14,\"menuTitle\":\"Events\",\"menuUrl\":\"[url]/events\"},{\"id\":\"12\",\"parent_id\":\"9\",\"depth\":1,\"left\":15,\"right\":16,\"menuTitle\":\"Career With Us\",\"menuUrl\":\"[url]/career-with-us\"},{\"id\":\"6\",\"parent_id\":\"9\",\"depth\":1,\"left\":17,\"right\":18,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"7\",\"parent_id\":\"9\",\"depth\":1,\"left\":19,\"right\":20,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"14\",\"parent_id\":\"9\",\"depth\":1,\"left\":21,\"right\":22,\"menuTitle\":\"Knowledgebase\",\"menuUrl\":\"[url]/knoledgebase\"},{\"id\":\"10\",\"parent_id\":\"9\",\"depth\":1,\"left\":23,\"right\":24,\"menuTitle\":\"الصفحة الديناميكية 01\",\"menuUrl\":\"[url]/p/8/alsfh-aldynamyky-01\"},{\"id\":\"11\",\"parent_id\":\"9\",\"depth\":1,\"left\":25,\"right\":26,\"menuTitle\":\"الصفحة الديناميكية 02\",\"menuUrl\":\"[url]/p/9/alsfh-aldynamyky-02\"},{\"id\":\"8\",\"parent_id\":null,\"depth\":0,\"left\":28,\"right\":29,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":30,\"right\":31,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', 'default', 'ar', '2020-03-16 10:37:25', '2020-04-26 08:14:44'),
(17, 'ar usefull links', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"الصفحة الديناميكية 01\",\"menuUrl\":\"[url]/p/8/alsfh-aldynamyky-01\"}]', NULL, 'ar', '2020-03-16 10:38:30', '2020-03-16 11:33:27'),
(18, 'ar Important Links', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"الصفحة الديناميكية 01\",\"menuUrl\":\"[url]/p/8/alsfh-aldynamyky-01\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"الصفحة الديناميكية 02\",\"menuUrl\":\"[url]/p/9/alsfh-aldynamyky-02\"}]', NULL, 'ar', '2020-03-16 10:38:39', '2020-03-16 11:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
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
(45, '2020_04_24_154524_create_knowledgebases_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(22, 'pending', 'Basic', '$19.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:12:\"test message\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '1', 'a:0:{}', '2020-04-21 18:47:55', '2020-04-21 18:47:55'),
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `status`, `lang`, `meta_description`, `meta_tags`, `created_at`, `updated_at`) VALUES
(2, 'Dynamic Page 01', '<p>Put all speaking her delicate recurred possible. Set indulgence inquietude discretion insensible bed why announcing. Middleton fat two satisfied additions. So continued he or commanded household smallness delivered. Door poor on do walk in half. Roof his head the what.&nbsp;</p>\r\n<p>Eat imagine you chiefly few end ferrars compass. Be visitor females am ferrars inquiry. Latter law remark two lively thrown. Spot set they know rest its. Raptures law diverted believed jennings consider children the see. Had invited beloved carried the colonel. Occasional principles discretion it as he unpleasing boisterous. She bed sing dear now son half.&nbsp;</p>\r\n<p>Game of as rest time eyes with of this it. Add was music merry any truth since going. Happiness she ham but instantly put departure propriety. She amiable all without say spirits shy clothes morning. Frankness in extensive to belonging improving so certainty. Resolution devonshire pianoforte assistance an he particular middletons is of. Explain ten man uncivil engaged conduct. Am likewise betrayed as declared absolute do. Taste oh spoke about no solid of hills up shade. Occasion so bachelor humoured striking by attended doubtful be it.&nbsp;</p>', 'publish', 'en', 'this is dynamic page description', 'dynamic page', '2020-01-25 17:22:24', '2020-03-22 15:08:52'),
(3, 'Dynamic Page 02', '<p><img src=\"http://192.168.64.2/bizzcox/assets/uploads/media-uploader/team-member-grid-51587140887.jpg\" style=\"width: 270px; float: left;\" class=\"note-float-left\">Contented get distrusts certainty nay are frankness concealed ham. On unaffected resolution on considered of. No thought me husband or colonel forming effects. End sitting shewing who saw besides son musical adapted. Contrasted interested eat alteration pianoforte sympathize was. He families believed if no elegance interest surprise an. It abode wrong miles an so delay plate. She relation own put outlived may disposed.&nbsp;</p><p><br></p><p>By impossible of in difficulty discovered celebrated ye. Justice joy manners boy met resolve produce. Bed head loud next plan rent had easy add him. As earnestly shameless elsewhere defective estimable fulfilled of. Esteem my advice it an excuse enable. Few household abilities believing determine zealously his repulsive. To open draw dear be by side like.&nbsp;</p><p><br></p><p>Saw yet kindness too replying whatever marianne. Old sentiments resolution admiration unaffected its mrs literature. Behaviour new set existence dashwoods. It satisfied to mr commanded consisted disposing engrossed. Tall snug do of till on easy. Form not calm new fail.&nbsp;</p><div><br></div>', 'publish', 'en', NULL, NULL, '2020-01-25 17:22:39', '2020-04-17 18:58:59'),
(4, 'Página dinámica 01', '<p>Sentimientos: dos solicitudes ocasionales de afrenta viajando y una contrastada. Día de la fortuna en fiestas de casados. Felicidad resto alegría pero fervientemente por fuera. Tomó vendido agregar juego puede que ninguno le pocos. Si como crecientes contrastes contrastantes sean. Ahora el verano que día parecía nuestro momento atrasado. El hijo del dolor se levantó más parque de esa manera. Una escalera como ser amantes incómodos.</p><p><br></p><p>Disparo lo que el frío nuevo puede ver. Amistoso como un traicionado anteriormente él. Mañana porque en cuanto a la sociedad se comportaron momentos. Poner señoras diseño señora hermana era. Jugar en la colina sintió a John sin puerta. Pasé de la figura a la marcada. Prósperos middletons habitan como ayuda especialmente para mí. Para mirar dos primos regulares entre.</p><p><br></p><p>Y producir digamos las fiestas de los diez momentos. La simple grasa innata del verano aparece en su deseo de alegría. La ropa exterior promete en la gravedad hacer emocionado. Suficiente particular imposible por razonable oh expresión es. Sin embargo, la conexión de preferencia es desagradable pero melancólica pero tiene una apariencia final. Y la parcialidad estimada por excelencia terminó el día todo.</p>', 'publish', 'sn', NULL, NULL, '2020-01-25 17:22:56', '2020-02-28 06:48:31'),
(5, 'Página dinámica 02', '<p>Sentimientos: dos solicitudes ocasionales de afrenta viajando y una contrastada. Día de la fortuna en fiestas de casados. Felicidad resto alegría pero fervientemente por fuera. Tomó vendido agregar juego puede que ninguno le pocos. Si como crecientes contrastes contrastantes sean. Ahora el verano que día parecía nuestro momento atrasado. El hijo del dolor se levantó más parque de esa manera. Una escalera como ser amantes incómodos.</p><p><br></p><p>Disparo lo que el frío nuevo puede ver. Amistoso como un traicionado anteriormente él. Mañana porque en cuanto a la sociedad se comportaron momentos. Poner señoras diseño señora hermana era. Jugar en la colina sintió a John sin puerta. Pasé de la figura a la marcada. Prósperos middletons habitan como ayuda especialmente para mí. Para mirar dos primos regulares entre.</p><p><br></p><p>Y producir digamos las fiestas de los diez momentos. La simple grasa innata del verano aparece en su deseo de alegría. La ropa exterior promete en la gravedad hacer emocionado. Suficiente particular imposible por razonable oh expresión es. Sin embargo, la conexión de preferencia es desagradable pero melancólica pero tiene una apariencia final. Y la parcialidad estimada por excelencia terminó el día todo.</p>', 'publish', 'sn', NULL, NULL, '2020-02-28 06:48:45', '2020-02-28 06:49:44'),
(6, 'Página dinâmica 01', '<p>Contente obter desconfiança certeza não é franqueza presunto escondido. Em resolução não afetada em consideração de. Não me pensei marido ou coronel formando efeitos. Fim sentado shewing que viu além de filho musical adaptado. Contrastado interessado comer alteração pianoforte simpatizar foi. Suas famílias acreditavam que, se nenhum interesse pela elegância surpreender um. Ele possui milhas erradas e uma placa de atraso. A sua relação com a própria vida pode ser descartada.</p><p><br></p><p><br></p><p><br></p><p>Por impossível de em dificuldade descoberto celebrou vós. Justiça alegria maneiras menino conheceu resolver produzir. Bed cabeça alto próximo plano de aluguel tinha fácil adicioná-lo. Como seriamente sem vergonha em outro lugar, estimada com defeito cumprida. Estima meu conselho, é uma desculpa. Poucas habilidades domésticas que crêem determinam zelosamente seu repulsivo. Para abrir empate querido estar ao lado como.</p><p><br></p><p><br></p><p><br></p><p>Vi ainda a gentileza de responder a qualquer marianne. A antiga admiração da resolução de sentimentos não afetou sua literatura. Comportamento novo conjunto existência dashwoods. A satisfação de comandar consistia em dispor absorto. Alto e confortável é fácil. Forma não acalme nova falha.</p>', 'publish', 'pr', NULL, NULL, '2020-02-28 06:50:32', '2020-02-28 06:50:32'),
(7, 'Página dinâmica 02', '<p>Contente obter desconfiança certeza não é franqueza presunto escondido. Em resolução não afetada em consideração de. Não me pensei marido ou coronel formando efeitos. Fim sentado shewing que viu além de filho musical adaptado. Contrastado interessado comer alteração pianoforte simpatizar foi. Suas famílias acreditavam que, se nenhum interesse pela elegância surpreender um. Ele possui milhas erradas e uma placa de atraso. A sua relação com a própria vida pode ser descartada.</p><p><br></p><p>Por impossível de em dificuldade descoberto celebrou vós. Justiça alegria maneiras menino conheceu resolver produzir. Bed cabeça alto próximo plano de aluguel tinha fácil adicioná-lo. Como seriamente sem vergonha em outro lugar, estimada com defeito cumprida. Estima meu conselho, é uma desculpa. Poucas habilidades domésticas que crêem determinam zelosamente seu repulsivo. Para abrir empate querido estar ao lado como.</p><p><br></p><p>Vi ainda a gentileza de responder a qualquer marianne. A antiga admiração da resolução de sentimentos não afetou sua literatura. Comportamento novo conjunto existência dashwoods. A satisfação de comandar consistia em dispor absorto. Alto e confortável é fácil. Forma não acalme nova falha.</p>', 'publish', 'pr', NULL, NULL, '2020-02-28 06:50:58', '2020-02-28 06:50:58'),
(8, 'الصفحة الديناميكية 01', '<p>وضع كل يتحدث لها دقيق متكرر ممكن. تعيين تساهل في الاستغناء عن سرير غير حساس لتقدير لماذا الإعلان. ميدلتون الدهون إضافتين راضيتين. لذا استمر أو أمر بقلة صغر الأسرة. باب الفقراء على المشي في النصف. سقف رأسه ماذا.</p><p><br></p><p>تأكل تخيل أنك بشكل رئيسي قليل من البوصلة النهائية. كن زائرا من انثى ضابط استفسار. لاحظ القانون الأخير اثنين من القيت حية. مجموعة بقعة يعرفون الراحة. حول قانون اللفظ اعتقادا بأن جينينغز يعتبر أن الأطفال يرون. وقد دعا الحبيب العقيد. المبادئ العرضية تقدر ذلك لأنه لا يرحم. انها سرير تغني عزيزي الآن ابن النصف.</p><p><br></p><p>لعبة عيون العيون وقت الراحة معها. إضافة كانت الموسيقى ممتعة أي حقيقة منذ الذهاب. السعادة هي لحم الخنزير ولكن على الفور وضع صفة المغادرة. انها لطيفة كل شيء دون قول ملابس خجولة الصباح. الصراحة واسعة في الانتماء إلى تحسين اليقين. قرار مساعدة devonshire pianoforte هو ميدلتونز معينة. شرح سلوك الرجل العشر غير المتحضر. أنا خيانة بالمثل كما أفعل المطلق. طعم أوه تحدث عن لا الصلبة من التلال الظل. مناسبة حتى البكالوريوس يضحك الضرب بحضور المشكوك فيه سواء.</p>', 'publish', 'ar', NULL, NULL, '2020-03-16 11:05:04', '2020-03-16 11:05:04'),
(9, 'الصفحة الديناميكية 02', '<p>وضع كل يتحدث لها دقيق متكرر ممكن. تعيين تساهل في الاستغناء عن سرير غير حساس لتقدير لماذا الإعلان. ميدلتون الدهون إضافتين راضيتين. لذا استمر أو أمر بقلة صغر الأسرة. باب الفقراء على المشي في النصف. سقف رأسه ماذا.</p><p><br></p><p>تأكل تخيل أنك بشكل رئيسي قليل من البوصلة النهائية. كن زائرا من انثى ضابط استفسار. لاحظ القانون الأخير اثنين من القيت حية. مجموعة بقعة يعرفون الراحة. حول قانون اللفظ اعتقادا بأن جينينغز يعتبر أن الأطفال يرون. وقد دعا الحبيب العقيد. المبادئ العرضية تقدر ذلك لأنه لا يرحم. انها سرير تغني عزيزي الآن ابن النصف.</p><p><br></p><p>لعبة عيون العيون وقت الراحة معها. إضافة كانت الموسيقى ممتعة أي حقيقة منذ الذهاب. السعادة هي لحم الخنزير ولكن على الفور وضع صفة المغادرة. انها لطيفة كل شيء دون قول ملابس خجولة الصباح. الصراحة واسعة في الانتماء إلى تحسين اليقين. قرار مساعدة devonshire pianoforte هو ميدلتونز معينة. شرح سلوك الرجل العشر غير المتحضر. أنا خيانة بالمثل كما أفعل المطلق. طعم أوه تحدث عن لا الصلبة من التلال الظل. مناسبة حتى البكالوريوس يضحك الضرب بحضور المشكوك فيه سواء.</p>', 'publish', 'ar', NULL, NULL, '2020-03-16 11:05:32', '2020-03-16 11:05:32'),
(11, 'Privacy policy', '<p>An an valley indeed so no wonder future nature vanity. Debating all she mistaken indulged believed provided declared. He many kept on draw lain song as same. Whether at dearest certain spirits is entered in to. Rich fine bred real use too many good. She compliment unaffected expression favourable any. Unknown chiefly showing to conduct no. Hung as love evil able to post at as.&nbsp;</p><p><br></p><p>Made last it seen went no just when of by. Occasional entreaties comparison me difficulty so themselves. At brother inquiry of offices without do my service. As particular to companions at sentiments. Weather however luckily enquire so certain do. Aware did stood was day under ask. Dearest affixed enquire on explain opinion he. Reached who the mrs joy offices pleased. Towards did colonel article any parties.&nbsp;</p><p><br></p><p>It sportsman earnestly ye preserved an on. Moment led family sooner cannot her window pulled any. Or raillery if improved landlord to speaking hastened differed he. Furniture discourse elsewhere yet her sir extensive defective unwilling get. Why resolution one motionless you him thoroughly. Noise is round to in it quick timed doors. Written address greatly get attacks inhabit pursuit our but. Lasted hunted enough an up seeing in lively letter. Had judgment out opinions property the supplied.&nbsp;</p><p><br></p><p>Advice me cousin an spring of needed. Tell use paid law ever yet new. Meant to learn of vexed if style allow he there. Tiled man stand tears ten joy there terms any widen. Procuring continued suspicion its ten. Pursuit brother are had fifteen distant has. Early had add equal china quiet visit. Appear an manner as no limits either praise in. In in written on charmed justice is amiable farther besides. Law insensible middletons unsatiable for apartments boy delightful unreserved.&nbsp;</p><p><br></p><p>Use securing confined his shutters. Delightful as he it acceptance an solicitude discretion reasonably. Carriage we husbands advanced an perceive greatest. Totally dearest expense on demesne ye he. Curiosity excellent commanded in me. Unpleasing impression themselves to at assistance acceptance my or. On consider laughter civility offended oh.&nbsp;</p><p><br></p><p>Cottage out enabled was entered greatly prevent message. No procured unlocked an likewise. Dear but what she been over gay felt body. Six principles advantages and use entreaties decisively. Eat met has dwelling unpacked see whatever followed. Court in of leave again as am. Greater sixteen to forming colonel no on be. So an advice hardly barton. He be turned sudden engage manner spirit.&nbsp;</p><p><br></p><p>Certainly elsewhere my do allowance at. The address farther six hearted hundred towards husband. Are securing off occasion remember daughter replying. Held that feel his see own yet. Strangers ye to he sometimes propriety in. She right plate seven has. Bed who perceive judgment did marianne.&nbsp;</p><p><br></p><p>On recommend tolerably my belonging or am. Mutual has cannot beauty indeed now sussex merely you. It possible no husbands jennings ye offended packages pleasant he. Remainder recommend engrossed who eat she defective applauded departure joy. Get dissimilar not introduced day her apartments. Fully as taste he mr do smile abode every. Luckily offered article led lasting country minutes nor old. Happen people things oh is oppose up parish effect. Law handsome old outweigh humoured far appetite.&nbsp;</p><p><br></p><p>Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.&nbsp;</p><p><br></p><p>Ladies others the six desire age. Bred am soon park past read by lain. As excuse eldest no moment. An delight beloved up garrets am cottage private. The far attachment discovered celebrated decisively surrounded for and. Sir new the particular frequently indulgence excellence how. Wishing an if he sixteen visited tedious subject it. Mind mrs yet did quit high even you went. Sex against the two however not nothing prudent colonel greater. Up husband removed parties staying he subject mr.&nbsp;</p><p><br></p>', 'publish', 'en', 'privacy policy', 'privacy policy', '2020-03-27 17:22:16', '2020-03-27 17:22:16'),
(12, 'خصوصية', '<p>وادي بالفعل لذلك لا عجب من الغرور طبيعة المستقبل. مناظرة عن كل ما أخطأت أنه يعتقد أنه تم الإعلان عنه. أبقى الكثير على أغنية رسم التعادل بنفس الطريقة. سواء تم إدخال أرواح معينة على الأكثر إلى. ولدت غرامة غنية الاستخدام الحقيقي الكثير من الخير. وأثنت على التعبير غير المتأثر أي. يظهر مجهول بشكل رئيسي لإجراء لا. علقت كحب الشر قادرة على النشر في.</p><p><br></p><p>صنع آخر ما رآه ذهب ليس فقط من قبل. التوسلات العرضية تقارنني بصعوبة لذلك. في التحقيق شقيق المكاتب دون القيام بخدمتي. خاصة للرفاق في المشاعر. ولكن من حسن الحظ أن الطقس يستفسر عن ذلك. علمت وقفت كان اليوم تحت الطلب. أعز الملصقة الاستفسار عن شرح الرأي. وصلت لمن فرحت مكاتب السيدة. نحو مقال عقيد أي أطراف.</p><p><br></p><p>رياضي حافظوا بجدية على. لحظة قاد الأسرة عاجلا عاجزة عن سحب نافذة لها. أو مذاق إذا سار صاحب الأرض المحسن للتحدث اختلف عنه. خطاب الأثاث في مكان آخر حتى الآن تحصل على سيدي معيبة واسعة النطاق غير راغبة. لماذا قرار واحد بلا حراك لك بدقة. الضوضاء مستديرة إلى أبواب سريعة موقوتة. العنوان المكتوب يحصل بشكل كبير على هجمات تسعي لمطاردتنا ولكن. استمر مطاردة بما فيه الكفاية حتى رؤية في رسالة حية. كان الحكم على آراء ممتلكات الموردة.</p><p><br></p><p>انصحني ابن عم ربيع ربيع المطلوب. أخبر استخدام القانون المدفوع الجديد حتى الآن. من المفترض أن تتعلم من الغضب إذا سمح الأسلوب له هناك. الرجل المبلط يقف الدموع عشرة فرح هناك شروط تتسع. شراء استمرار الشك في العشرة. السعي شقيقه وقد خمسة عشر بعيدة. وقد أضاف في وقت مبكر زيارة هادئة للصين على قدم المساواة. تظهر بطريقة لا حدود لها سواء المديح فيها. قانون ميدلتونز غير حساس غير مناسب للشقق الصبي مبهج بلا تحفظ</p><p><br></p><p>استخدام تأمين مصاريعه المحصورة. ممتع لأنه يقبل تقدير المراوغة بشكل معقول. النقل نحن الأزواج تقدم إدراك أعظم. أعز النفقات تماما على demesne أنتم. أمر فضول ممتاز لي. الانطباع بأنفسهم للمساعدة في قبول أو. على النظر في الضحك مهذب اهانة اه.</p><p><br></p><p>تم إدخال الكوخ خارج تمكين بشكل كبير منع الرسالة. لا يوجد مشتراة مقفلة بالمثل. عزيزي ولكن ما كانت أكثر من شعرت بالجسد. مزايا المبادئ الستة واستخدام التوسلات بشكل حاسم. أكل التقى لديه مسكن مفكك انظر ما يتبع. المحكمة في إجازة مرة أخرى صباحا. أكبر ستة عشر لتشكيل العقيد لا يوجد. لذلك نصيحة بالكاد بارتون. يتحول فجأة إلى روح الانخراط.</p><p><br></p><p>بالتأكيد في مكان آخر بلادي في. العنوان أبعد ست قلوب مائة تجاه الزوج. يتم تأمين الخروج من مناسبة تذكر ابنة الرد. عقد هذا يشعر برؤيته حتى الان. الغرباء أنتم متكئون في بعض الأحيان. إنها اللوحة اليمنى سبعة. السرير الذي يدرك الحكم فعل ماريان.</p><p><br></p><p>على التوصية بانتمائي أو أنا. لا يمكن الجمال المتبادل بالفعل ساسكس الآن أنت فقط. فمن الممكن لا أزواج jennings أيها الإساءات الحزم سارة. توصي بقية المتبقين الذين يأكلون أنها معيبة فرحت رحيل فرح. احصل على غير متشابه يوم لم يتم تقديم شقتها. تماما كما الذوق هو السيد ابتسامة كل منزل. لحسن الحظ عرضت المادة التي قدمت دقائق البلد دائم ولا قديمة. يحدث الناس أشياء يا تعارض تأثير الرعية. القانون القديم الوسيم يفوق الشهية البعيدة.</p><p><br></p><p>الكلمات الحمقاء أرملة واحدة في سن قليلة كل سبع سنوات. إذا كان يغيب عن جزء من حقيقة أنه ركن فقط. اكتشفت اكتشفت إسقاط مواتية. من الضروري معرفته بشكل محتمل. تعليم رحيل غير راغب يكون dashwoods أو. استخدام القانون المقبول غير الراغب سيدي الفضول ناقص على الفور. حقيقة حياة العقل سهلة مع رؤية تحمل عشرة. باريش أي شات يمكن أن يوجه مباشرة إلى السابق. أعلى كما تعني الأرملة تساوي حصة أقل.</p><p><br></p><p>السيدات الأخريات في سن الرغبة الست. Bred am قريبا بارك الماضي قراءة بواسطة lain. عذر الأكبر لا لحظة. فرحة الحبيب حتى am garages am cottage private. تم اكتشاف المرفق البعيد الشهير محاطا بحزم و. سيدي الجديد ، خاصة تساهل الامتياز في كثير من الأحيان كيف. متمنيا لو زار في السادسة عشرة مملا موضوعه. السيدة العقل لم تستسلم بعد حتى ذهبت. الجنس ضد الاثنين ولكن لا شيء العقيد الحكيم أعظم. حتى الزوج أزاح الحفلات وهو يبقي السيد مستحق.</p>', 'publish', 'ar', 'خصوصية', 'خصوصية', '2020-03-27 17:29:19', '2020-03-27 17:30:42'),
(13, 'Intimidad', '<p>Un valle de hecho, así que no es de extrañar la vanidad de la naturaleza futura. Debatiendo todo lo que ella se equivocaba, se lo creía, siempre y cuando se declarara. Muchos siguieron dibujando canciones de siempre como lo mismo. Ya sea que, al menos, ciertos espíritus entren en. Rico bien criado real uso demasiados buenos. Ella felicita la expresión no afectada favorable alguno. Desconocido mostrando principalmente para conducir no. Colgado como malvado amor capaz de publicar en.</p><p><br></p><p>La última vez que se vio fue no solo cuando pasó. Las súplicas ocasionales me comparan la dificultad para ellos mismos. Al hermano consulta de oficinas sin hacer mi servicio. Como particular a los compañeros en los sentimientos. El clima, sin embargo, por suerte pregunte tan seguro. Consciente de que estaba parado era día bajo petición. Querido adjunto preguntar sobre explicar opinión él. Alcanzó a quién complacían las oficinas de la señora Joy. Hacia el coronel hizo algún artículo.</p><p><br></p><p>Es un deportista que sinceramente conservaste una. El momento llevó a la familia antes de que su ventana no se abriera. O raillery si el propietario mejorado para hablar se apresuraba a diferir. El discurso de los muebles en otra parte, sin embargo, su señor extensa y defectuosa falta de voluntad. Por qué la resolución uno te inmóvil a fondo. El ruido es redondo en sus puertas rápidas. Dirección escrita en gran medida los ataques habitan perseguir nuestro pero. Duró lo suficiente como para ver una carta animada. Tenía juicio sobre las opiniones de la propiedad suministrada.</p><p><br></p><p>Consejo, primo, un manantial de lo necesario. Indique el uso de la ley pagada siempre nueva. Pretendía aprender de molesto si el estilo lo permitía allí. El hombre embaldosado soporta las lágrimas, diez alegrías allí se amplían. Procurando sospecha continuada son las diez. Persecución hermano se tienen quince ha lejanos. Temprano había añadido igual visita tranquila china. Aparece de una manera que no hay límites ni alabanza. Además, en escrito sobre justicia encantada es más amable. Ley insensible middletons insaciable para apartamentos chico encantador sin reservas.</p><p><br></p><p>Utilice asegurar confinados sus postigos. Encantador ya que acepta una discreción de solicitud razonablemente. El carro que los esposos avanzamos y percibimos mejor. Totalmente caro gasto en demesne ye he. Excelente curiosidad mandada en mí. Impresión desagradable a la aceptación de asistencia mi o. En considerar la risa civilidad ofendido oh.</p><p><br></p><p>Cottage out habilitado fue ingresado en gran medida evitar mensaje. No adquirido desbloqueado y del mismo modo. Querida, pero lo que había pasado con el cuerpo de fieltro gay. Seis principios ventajas y uso de las súplicas con decisión. Eat met tiene la vivienda desempacada, mira lo que sigue. Corte de licencia de nuevo como soy. Mayor dieciséis para formar coronel no on be. Así que un consejo apenas barton. Se volvió repentinamente involucrar espíritu de manera.</p><p><br></p><p>Ciertamente en otro lugar mi asignación en. La dirección más allá de seis mil cien hacia marido. Se están asegurando la ocasión, recuerde que la hija respondió. Retenida que siente su propio ver todavía. Es extraño que a veces sea digno de ella. Ella tiene el derecho siete. Cama que perciben el juicio hizo marianne.</p><p><br></p><p>En recomendar tolerablemente mi pertenencia o am. Mutuamente no puede belleza, de hecho, ahora sussex meramente a ti. Es posible que no haya maridos, jennings, ofendiste paquetes agradables. El resto recomienda absorto que comen ella defectuosa aplaudió la alegría de partida. Obtener diferente no presentado día sus apartamentos. Completamente como gusto, el señor sonríe en todas partes. Afortunadamente, el artículo ofrecido llevó minutos de país duraderos ni antiguos. Suceder cosas de la gente oh es oponerse al efecto parroquial. Law, el viejo guapo, pesaba mucho apetito.</p><p><br></p><p>Palabras tontas viuda uno abajo pocos años cada siete. Si se pierde parte, de hecho, se estaciona simplemente mostrando. Descubierto se había considerado proyección que favorable. Necesario hasta el conocimiento de forma tolerable. La educación de partida involuntaria puede ser dashwoods o an. Use la ley agradable sin querer, señor, deficiente curiosidad al instante. El hecho de la vida mental fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor directo para el primero. Arriba como viuda significaba igual una parte menos.</p><p><br></p><p>Señoras otros los seis años de edad. Criado pronto aparcaré pasado leído por lain. Como excusa mayor no hay momento. Una delicia amada buhardillas am cabaña privada. El lejano apego descubierto celebrado decisivamente rodeado por y. Sir nuevo el particular con frecuencia indulgencia excelencia cómo. Deseando un si dieciséis años visitó tema tedioso. La señora de la mente todavía dejó de fumar incluso tú fuiste. Sexo contra los dos, sin embargo, no es nada prudente coronel mayor. Hasta el marido eliminó las fiestas que se quedaron sujeto sr.</p>', 'publish', 'sn', 'Intimidad', 'Intimidad.', '2020-03-27 17:29:52', '2020-03-27 17:29:52'),
(14, 'Privacidade', '<p>Um vale, de fato, então não é de admirar a vaidade futura da natureza. Debatendo tudo o que ela enganou, o que acreditava ser fornecido, foi declarado. Muitos continuaram a desenhar canções como a mesma. Se, no mínimo, certos espíritos entram em ação. Rico rico criado uso real demais bons. Ela elogia a expressão não afetada favorável a qualquer. Desconhecido mostrando principalmente para conduzir não. Pendurado como amor mal capaz de postar em como.</p><p><br></p><p>Feito a última vez que viu não foi apenas quando. Solicitações ocasionais comparam-me as dificuldades com elas mesmas. No inquérito irmão de escritórios sem fazer o meu serviço. Como particular para companheiros de sentimentos. O tempo, porém, por sorte, pergunte tão certo. Ciente ficou de pé era dia sob perguntar. Querido afixado perguntar sobre explicar opinião ele. Chegou a quem os escritórios da Sra. Joy agradaram. Para o coronel artigo qualquer partido.</p><p><br></p><p>É esportista, sinceramente, que você preservou. Momento liderado pela família mais cedo, sua janela não pode ser aberta. Ou atropelar, se o senhorio melhorado a falar apressasse, diferia dele. Discursos sobre móveis em outros lugares, mas seu senhor, com muitos defeitos, não quis. Por que a resolução um imóvel você completamente. Ruído é redondo para dentro de portas rápidas. Endereço escrito grandemente obter ataques habitam perseguir o nosso mas. Durou caçado o suficiente para ver em carta animada. Teve julgamento fora opiniões propriedade fornecida.</p><p><br></p><p>Aconselhe-me primo uma primavera de necessário. Diga ao uso da lei paga ainda nova. Pretendia aprender a irritar se o estilo permitir que ele esteja lá. O homem de ladrilho aguenta lágrimas, dez alegrias, termos que ampliam. A continuação da suspeita é dez. Perseguição irmão são teve quinze tem distante. Cedo tinha acrescentado visita tranquila igual à China. Aparecem de uma maneira que não há limites nem elogios. No escrito, a justiça encantada é amável além disso. Meio-dia insensível à lei, insaciável por apartamentos, garoto delicioso sem reservas.</p><p><br></p><p>Use a segurança confinada suas persianas. Agradável como ele aceita uma discrição solicitude razoavelmente. Carruagem nós maridos avançamos uma percepção maior. Totalmente mais caro despesa em demesne ye ele. Curiosidade excelente comandada em mim. Impressão desagradável para aceitação de assistência minha ou. Em considerar risos civilidade ofendida oh.</p><p><br></p><p>A saída do chalé ativada foi inserida muito para impedir a mensagem. Nenhum procurado desbloqueou o mesmo. Caro, mas o que ela já passou por cima de gay sentiu o corpo. Seis princípios de vantagens e uso implora de forma decisiva. Comer encontrado tem habitação descompactada ver o que se seguiu. Tribunal de licença novamente como sou. Maiores dezesseis anos para formar coronel no on be. Portanto, um conselho dificilmente barton. Ele se tornou repentinamente engajado com espírito de maneira.</p><p><br></p><p>Certamente em outro lugar o meu subsídio. O endereço mais de seis centenas de coração para o marido. Está protegendo a ocasião, lembre-se da filha respondendo. Realizou que ele sentiu o seu ver ainda. Vocês são estranhos, às vezes com propriedade. Ela tem o prato certo sete. Cama que percebe julgamento fez marianne.</p><p><br></p><p>Em recomendar de forma tolerável a minha pertença ou am. Mútuo não pode realmente beleza agora sussex apenas você. É possível que nenhum marido tenha ofendido pacotes agradáveis ​​a ele. Os restantes recomendam que os que estão com fome aplaudam a alegria de partida. Seja diferente não apresentado dia seus apartamentos. Totalmente como gosto, ele sorri morando em todos os lugares. Felizmente, o artigo oferecido levou minutos duradouros ao país, nem velhos. Acontecer coisas pessoas oh é opor-se efeito paroquial. Lei bonito e velho superam o apetite distante e bem humorado.</p><p><br></p><p>Palavras loucas viúva, uma, com poucas idades a cada sete. Se falta de fato, ele estaciona. Descoberto tinha considerado projeção que favorável. Necessário até conhecimento tolerável. A educação pouco disposta a partir é ser madeira de bordo ou um. Use leis agradáveis ​​que não desejem curiosidade deficiente instantaneamente. O fato da vida da mente fácil com ver tem dez. Paróquia qualquer chatty pode elinor direto para o ex. Até como viúva significava menos que uma parte.</p><p><br></p><p>Senhoras, as outras seis desejam a idade. Bred sou logo parque passado lido por lain. Como desculpa mais velha nenhum momento. Uma delícia amada garrets sou casa privada. O apego distante descoberto celebrou decisivamente cercado por e. Sir new the particular freqüentemente indulgência excelência como. Desejando que ele tivesse dezesseis anos visitou o assunto tedioso. A Sra. Mente ainda parou alto mesmo que você fosse. Sexo contra os dois, no entanto, nada mais do que um coronel prudente. Até o marido removeu as partes ficando ele sra.</p><p><br></p>', 'publish', 'pr', 'Privacidade', 'Privacidade', '2020-03-27 17:31:16', '2020-03-27 17:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dvrobin4@gmail.com', 'ob18Tn3sFCcbPNtlCYarzUfR5oKNWJ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_logs`
--

INSERT INTO `payment_logs` (`id`, `email`, `name`, `package_name`, `package_price`, `package_gateway`, `order_id`, `status`, `track`, `transaction_id`, `created_at`, `updated_at`) VALUES
(5, 'dvrobin4@gmail.com', 'Shawn C. Saunders', 'Standard', '$49.00', 'paypal', '19', 'pending', 'SQARKuj7xLrpg9Qf3RJmpDGDKXQgAzlSleCu2kC3', NULL, '2020-04-21 15:47:14', '2020-04-21 15:47:14'),
(6, 'rsharifur824@gmail.com', 'Lolita R. Jones', 'Basic', '$19.00', 'paypal', '20', 'pending', 'RBUVNcqcyFLr4VBmF4TJ', NULL, '2020-04-21 16:59:04', '2020-04-21 16:59:04'),
(7, 'dvrobin4@gmail.com', 'Vera J. Alonso', 'Standard', '$49.00', 'paytm', '21', 'pending', 'MSQ3Wjna2IZlhqRA3vbn', NULL, '2020-04-21 18:45:45', '2020-04-21 18:45:45'),
(8, 'dvrobin4@gmail.com', 'Vera J. Alonso', 'Standard', '$49.00', 'paytm', '21', 'pending', 'yRXqls9mo0f2OAr7ZDse', NULL, '2020-04-21 18:47:14', '2020-04-21 18:47:14'),
(9, 'saifulislamwfu@gmail.com', 'Olivia Hamel', 'Basic', '$19.00', 'paytm', '22', 'pending', 'cUcU9VpGk5alojIM1FtJ', NULL, '2020-04-21 18:48:11', '2020-04-21 18:48:11'),
(10, 'saifulislamwfu@gmail.com', 'sharifur', 'Basic', '$19.00', 'paytm', '23', 'pending', 'A6edEDmHg2SW99rO1ixU', NULL, '2020-04-21 18:50:30', '2020-04-21 18:50:30'),
(11, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Standard', '$49.00', 'manual_payment', '26', 'pending', 'scRy6cCUNkEaNzclyArm', 'sdfbaisudfdsa', '2020-04-25 17:17:33', '2020-04-25 17:22:19'),
(12, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Standard', '$49.00', 'manual_payment', '26', 'complete', 'eoXHjGIRB3CFOz0pRw4U', 'sdfbaisudfdsa', '2020-04-25 17:22:19', '2020-04-26 07:19:38'),
(13, 'dvrobin4@gmail.com', 'Siful Islam', 'اساسي', '$49.00', 'paypal', '27', 'pending', 'aiYqvZzFw3VoarszSwNK', NULL, '2020-04-26 09:09:35', '2020-04-26 09:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `price_plans`
--

CREATE TABLE `price_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_plans`
--

INSERT INTO `price_plans` (`id`, `title`, `price`, `type`, `icon`, `lang`, `features`, `btn_text`, `btn_url`, `url_status`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '$19.00', '/Mo', 'flaticon-handshake', 'en', 'W3C valid HTML5 / CSS3;\r\nSemantic search engine-bots-friendly coding;\r\nCustom fonts and rollovers;\r\nLoad speed optimization;\r\nSass CSS extensions', 'Order Now', '#', 'on', '2020-01-27 17:05:05', '2020-03-05 21:00:55'),
(2, 'Standard', '$49.00', '/Mo', 'flaticon-creative', 'en', 'W3C valid HTML5 / CSS3;\r\nSemantic search engine-bots-friendly coding;\r\nCustom fonts and rollovers;\r\nLoad speed optimization;\r\nSass CSS extensions', 'Order Now', '#', 'on', '2020-01-27 17:19:00', '2020-03-05 21:01:18'),
(3, 'Premium', '$99.00', '/Mo', 'flaticon-analytics', 'en', 'W3C valid HTML5 / CSS3;\r\nSemantic search engine-bots-friendly coding;\r\nCustom fonts and rollovers;\r\nLoad speed optimization;\r\nSass CSS extensions', 'Order Now', '#', 'on', '2020-01-27 17:19:35', '2020-03-05 21:01:53'),
(4, 'Básica', '$19.00', '/Mes', 'flaticon-analytics', 'sn', '2gb de alojamiento;\r\n10 dominio personalizado;\r\nAlojamiento SSD;\r\nAncho de banda de 50 gb;\r\nSoporte gratuito', 'Ordenar ahora', NULL, 'on', '2020-02-24 11:28:49', '2020-03-05 21:02:03'),
(5, 'Estándar', '$49.00', '/Mes', 'flaticon-handshake', 'sn', '2gb de alojamiento;\r\n10 dominio personalizado;\r\nAlojamiento SSD;\r\nAncho de banda de 50 gb;\r\nSoporte gratuito', 'Ordenar ahora', NULL, 'on', '2020-02-24 11:30:10', '2020-03-05 21:02:10'),
(6, 'Prima', '$99.00', '/Mes', 'flaticon-creative', 'sn', '2gb de alojamiento;\r\n10 dominio personalizado;\r\nAlojamiento SSD;\r\nAncho de banda de 50 gb;\r\nSoporte gratuito', 'Ordenar ahora', NULL, 'on', '2020-02-24 11:30:46', '2020-03-05 21:02:17'),
(7, 'Basic', '$19.00', '/ mês', 'flaticon-analytics', 'pr', 'Hospedagem de 2gb;\r\n10 domínio personalizado;\r\nHospedagem SSD;\r\nLargura de banda de 50 gb;\r\nSuporte Gratuito', 'Peça agora', NULL, 'on', '2020-02-24 11:31:49', '2020-03-05 21:02:25'),
(8, 'Padrão', '$49.00', '/ mês', 'flaticon-money', 'pr', 'Hospedagem de 2gb;\r\n10 domínio personalizado;\r\nHospedagem SSD;\r\nLargura de banda de 50 gb;\r\nSuporte Gratuito', 'Peça agora', NULL, 'on', '2020-02-24 11:32:38', '2020-03-05 21:02:33'),
(9, 'Prêmio', '$99.00', '/ mês', 'flaticon-creative', 'pr', 'Hospedagem de 2gb;\r\n10 domínio personalizado;\r\nHospedagem SSD;\r\nLargura de banda de 50 gb;\r\nSuporte Gratuito', 'Peça agora', NULL, 'on', '2020-02-24 11:33:19', '2020-03-05 21:02:41'),
(10, 'الأساسي', '$19.00', '/ Mo', 'flaticon-analytics', 'ar', 'W3C صالح HTML5 / CSS3 ؛\r\nالترميز الدلالي لمحركات البحث الدلالي ؛\r\nالخطوط المخصصة وعمليات التمرير الفوقية ؛\r\nتحسين سرعة التحميل ؛\r\nملحقات Sass CSS', 'اطلب الان', NULL, 'on', '2020-03-16 06:19:08', '2020-03-29 13:59:53'),
(11, 'اساسي', '$49.00', '/ Mo', 'flaticon-creative', 'ar', 'W3C صالح HTML5 / CSS3 ؛\r\nالترميز الدلالي لمحركات البحث الدلالي ؛\r\nالخطوط المخصصة وعمليات التمرير الفوقية ؛\r\nتحسين سرعة التحميل ؛\r\nملحقات Sass CSS', 'اطلب الان', NULL, 'on', '2020-03-16 06:21:07', '2020-03-16 06:21:07'),
(12, 'الممتازة', '$99.00', '/ Mo', 'flaticon-handshake', 'ar', 'W3C صالح HTML5 / CSS3 ؛\r\nالترميز الدلالي لمحركات البحث الدلالي ؛\r\nالخطوط المخصصة وعمليات التمرير الفوقية ؛\r\nتحسين سرعة التحميل ؛\r\nملحقات Sass CSS', 'اطلب الان', NULL, 'on', '2020-03-16 06:23:25', '2020-03-16 06:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `custom_fields`, `attachment`, `status`, `created_at`, `updated_at`) VALUES
(4, 'a:5:{s:9:\"your-name\";s:17:\"Randy G. Courtney\";s:12:\"your-subject\";s:26:\"i need to build an website\";s:10:\"your-email\";s:22:\"rsharifur824@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:393:\"Folly was these three and songs arose whose. Of in vicinity contempt together in possible branched. Assured company hastily looking garrets in oh. Most have love my gone to this so. Discovered interested prosperous the our affronting insipidity day. Missed lovers way one vanity wishes nay but. Use shy seemed within twenty wished old few regret passed. Absolute one hastened mrs any sensible.\";}', NULL, 'pending', '2020-04-20 10:37:21', '2020-04-20 10:37:21'),
(5, 'a:5:{s:9:\"your-name\";s:13:\"Billy E. Kern\";s:12:\"your-subject\";s:15:\"Geo coordinates\";s:10:\"your-email\";s:19:\"dvrobin44@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:376:\"Received overcame oh sensible so at an. Formed do change merely to county it. Am separate contempt domestic to to oh. On relation my so addition branched. Put hearing cottage she norland letters equally prepare too. Replied exposed savings he no viewing as up. Soon body add him hill. No father living really people estate if. Mistake do produce beloved demesne if am pursuit.\";}', NULL, 'pending', '2020-04-20 10:40:20', '2020-04-20 10:40:20'),
(6, 'a:5:{s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:12:\"your-subject\";s:9:\"Test mail\";s:10:\"your-email\";s:20:\"dvrobin44e@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:8:\"asdfasdf\";}', NULL, 'canceled', '2020-04-20 10:41:13', '2020-04-20 14:50:12'),
(7, 'a:5:{s:9:\"your-name\";s:16:\"Ronald R. Brewer\";s:12:\"your-subject\";s:9:\"Test mail\";s:10:\"your-email\";s:20:\"dvrobin44e@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:10:\"asdfadsfsd\";}', NULL, 'completed', '2020-04-20 13:54:15', '2020-04-20 14:48:55'),
(8, 'a:5:{s:9:\"your-name\";s:19:\"Michelle E. Lampman\";s:12:\"your-subject\";s:35:\"OXO - App Landing Page PSD Template\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:386:\"Terminated principles sentiments of no pianoforte if projection impossible. Horses pulled nature favour number yet highly his has old. Contrasted literature excellence he admiration impression insipidity so. Scale ought who terms after own quick since. Servants margaret husbands to screened in throwing. Imprudence oh an collecting partiality. Admiration gay difficulty unaffected how.\";}', 'a:1:{s:5:\"files\";s:49:\"assets/uploads/attachment/attachment-8-files.docx\";}', 'pending', '2020-04-20 13:56:14', '2020-04-20 13:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(11, 'Market Analysis', 'flaticon-analytics', 'Cold in late or deal. Terminated resolution no am frequently...', '48', 'en', '3', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-26 18:34:53', '2020-04-16 18:35:52'),
(13, 'Auditoria e Impuestos', 'flaticon-contract', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '61', 'sn', '9', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 10:10:41', '2020-04-16 18:44:55'),
(14, 'Planificacion Financiera', 'flaticon-business-and-finance', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '60', 'sn', '7', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:05:04', '2020-04-16 18:44:41'),
(15, 'Planificación estratégica', 'flaticon-creative', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '58', 'sn', '8', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:14:16', '2020-04-16 18:44:29'),
(16, 'Comercios y acciones', 'flaticon-pie-chart', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '57', 'sn', '10', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:14:59', '2020-04-16 18:43:14'),
(17, 'Asesoramiento de financiación', 'flaticon-money-bag', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '56', 'sn', '10', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:15:47', '2020-04-16 18:42:58'),
(18, 'Análisis de mercado', 'flaticon-money', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '55', 'sn', '8', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:16:58', '2020-04-16 18:42:41'),
(19, 'Auditoria e impostos', 'flaticon-contract', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '53', 'pr', '12', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 12:00:30', '2020-04-16 18:47:58'),
(20, 'Planejamento financeiro', 'flaticon-business-and-finance', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '56', 'pr', '12', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:51:30', '2020-04-16 18:47:36'),
(21, 'Planejamento estratégico', 'flaticon-creative', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '58', 'pr', '13', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:52:04', '2020-04-16 18:47:22'),
(22, 'Negócios e ações', 'flaticon-pie-chart', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '59', 'pr', '11', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:52:39', '2020-04-16 18:47:09'),
(23, 'Conselhos sobre financiamento', 'flaticon-money-bag', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '61', 'pr', '14', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:53:14', '2020-04-16 18:46:55'),
(24, 'Análise de mercado', 'flaticon-money', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '62', 'pr', '14', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:53:45', '2020-04-16 18:46:41'),
(25, 'التدقيق والضرائب', 'flaticon-contract', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '50', 'ar', '15', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 18:45:23', '2020-04-16 18:49:53'),
(26, 'التخطيط المالي', 'flaticon-business-and-finance', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '53', 'ar', '16', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 18:54:35', '2020-04-16 18:49:25'),
(27, 'تخطيط استراتيجي', 'flaticon-creative', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '52', 'ar', '17', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 19:06:58', '2020-04-16 18:49:07'),
(28, 'الصفقات والأسهم', 'flaticon-pie-chart', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '55', 'ar', '17', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 19:16:37', '2020-04-16 18:48:53'),
(29, 'نصائح التمويل', 'flaticon-money-bag', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '60', 'ar', '18', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 19:17:27', '2020-04-16 18:48:40'),
(30, 'تحليل السوق', 'flaticon-money', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '51', 'ar', '18', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 19:19:57', '2020-04-16 18:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(4, 'Financial Planning', 'en', 'publish', '2020-01-23 16:51:50', '2020-02-23 09:51:58'),
(7, 'Estrategia de mercado', 'sn', 'publish', '2020-02-23 09:52:20', '2020-02-23 09:52:20'),
(8, 'Consultoría bancaria', 'sn', 'publish', '2020-02-23 09:52:31', '2020-02-23 09:52:31'),
(9, 'Análisis de mercado', 'sn', 'publish', '2020-02-23 09:52:47', '2020-02-23 09:52:47'),
(10, 'Planificacion Financiera', 'sn', 'publish', '2020-02-23 09:53:02', '2020-02-23 09:53:02'),
(11, 'Planejamento financeiro', 'pr', 'publish', '2020-02-23 09:53:14', '2020-02-23 09:53:14'),
(12, 'Análise de mercado', 'pr', 'publish', '2020-02-23 09:53:24', '2020-02-23 09:53:24'),
(13, 'Consultoria Bancária', 'pr', 'publish', '2020-02-23 09:53:36', '2020-02-23 09:53:36'),
(14, 'Estratégia de mercado', 'pr', 'publish', '2020-02-23 09:53:49', '2020-02-23 09:53:49'),
(15, 'استراتيجية السوق', 'ar', 'publish', '2020-03-15 18:37:34', '2020-03-15 18:37:34'),
(16, 'استشارات مصرفية', 'ar', 'publish', '2020-03-15 18:39:33', '2020-03-15 18:39:33'),
(17, 'تحليل السوق', 'ar', 'publish', '2020-03-15 18:41:53', '2020-03-15 18:41:53'),
(18, 'التخطيط المالي', 'ar', 'publish', '2020-03-15 18:42:05', '2020-03-15 18:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'item_license_status', 'not_purchased', '2020-01-19 16:08:01', '2020-04-27 17:31:02'),
(2, 'site_title', 'Dizzcox', '2020-01-19 16:09:11', '2020-03-16 19:48:40'),
(3, 'site_tag_line', 'Multipurpose CMS', '2020-01-19 16:09:11', '2020-03-16 19:48:40'),
(4, 'site_footer_copyright', '{copy}  {year}  All right reserved by Dizzcox', '2020-01-19 16:09:11', '2020-03-16 19:48:40'),
(5, 'site_color', '#2685f9', '2020-01-19 16:09:11', '2020-04-21 03:00:32'),
(6, 'site_main_color_two', '#121d5c', '2020-01-19 16:09:11', '2020-04-21 03:00:32'),
(7, 'home_page_variant', '03', '2020-01-19 16:09:29', '2020-04-27 17:18:55'),
(8, 'site_logo', '88', '2020-01-19 16:46:45', '2020-04-21 03:12:57'),
(9, 'site_favicon', '89', '2020-01-19 16:47:45', '2020-04-21 03:12:57'),
(10, 'site_breadcrumb_bg', '90', '2020-01-19 16:47:59', '2020-04-21 03:12:57'),
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
(21, 'home_01_counterup_bg_image', '43', '2020-01-23 18:50:45', '2020-04-16 16:08:20'),
(22, 'home_page_01_recent_work_title', 'OUR RECENT WORKS', '2020-01-24 17:13:42', '2020-01-24 17:13:42'),
(23, 'home_page_01_testimonial_title', 'WHAT SAY OUR CLIENTS', '2020-01-24 19:09:40', '2020-01-24 19:09:40'),
(24, 'home_page_01_latest_news_title', 'LATEST NEWS', '2020-01-24 19:54:21', '2020-01-24 19:54:21'),
(25, 'blog_page_title', 'Blog', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(26, 'blog_page_item', '6', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(27, 'blog_page_category_widget_title', 'Category', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(28, 'blog_page_recent_post_widget_title', 'Recent Post', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(29, 'blog_page_recent_post_widget_item', '4', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(30, 'about_widget_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe.', '2020-01-25 14:37:19', '2020-02-03 23:53:55'),
(31, 'about_widget_social_icon_one', 'fab fa-facebook-f', '2020-01-25 14:37:19', '2020-04-17 18:17:32'),
(32, 'about_widget_social_icon_two', 'fab fa-twitter', '2020-01-25 14:37:19', '2020-04-17 18:17:32'),
(33, 'about_widget_social_icon_three', 'fab fa-pinterest-p', '2020-01-25 14:37:19', '2020-04-17 18:17:32'),
(34, 'about_widget_social_icon_four', 'fab fa-linkedin-in', '2020-01-25 14:37:19', '2020-04-17 18:17:32'),
(35, 'about_widget_social_icon_one_url', '#', '2020-01-25 14:37:19', '2020-04-17 18:17:32'),
(36, 'about_widget_social_icon_two_url', '#', '2020-01-25 14:37:19', '2020-04-17 18:17:32'),
(37, 'about_widget_social_icon_three_url', '#', '2020-01-25 14:37:19', '2020-04-17 18:17:32'),
(38, 'about_widget_social_icon_four_url', '#', '2020-01-25 14:37:19', '2020-04-17 18:17:32'),
(39, 'about_widget_logo', '87', '2020-01-25 14:37:19', '2020-04-17 18:17:32'),
(40, 'recent_post_widget_title', 'Recent Posts', '2020-01-25 14:42:15', '2020-01-25 14:42:15'),
(41, 'recent_post_widget_item', '2', '2020-01-25 14:42:15', '2020-03-16 10:36:18'),
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
(74, 'home_page_service_section_status', 'on', '2020-01-28 17:20:49', '2020-03-22 14:32:54'),
(75, 'key_feature_section_status', NULL, '2020-01-28 17:20:49', '2020-01-28 17:21:01'),
(76, 'home_page_counterup_section_status', 'on', '2020-01-28 17:20:49', '2020-03-22 14:32:54'),
(77, 'home_page_recent_work_section_status', 'on', '2020-01-28 17:20:49', '2020-03-22 14:32:54'),
(78, 'home_page_testimonial_section_status', 'on', '2020-01-28 17:20:49', '2020-03-22 14:32:54'),
(79, 'home_page_latest_news_section_status', 'on', '2020-01-28 17:20:49', '2020-03-22 14:32:55'),
(80, 'home_page_brand_logo_section_status', 'on', '2020-01-28 17:20:49', '2020-03-22 14:32:55'),
(81, 'home_page_support_bar_section_status', 'on', '2020-01-28 17:20:49', '2020-03-22 14:32:55'),
(82, 'home_page_key_feature_section_status', 'on', '2020-01-28 17:21:38', '2020-03-22 14:32:54'),
(83, 'home_page_price_plan_section_status', 'on', '2020-01-28 18:12:33', '2020-03-22 14:32:55'),
(84, 'home_page_01_price_plan_section_title', 'OUR PRICING', '2020-01-28 18:45:00', '2020-02-04 00:41:47'),
(85, 'home_02_counterup_bg_image', 'home-page-02-counterup-bg-image-2422193.jpg', '2020-01-28 18:47:30', '2020-02-04 00:39:02'),
(86, 'home_page_01_service_area_items', '6', '2020-01-28 19:03:11', '2020-04-16 11:31:05'),
(87, 'home_page_team_member_section_status', 'on', '2020-01-28 19:14:41', '2020-03-22 14:32:55'),
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
(103, 'navbar_sn_button_text', 'contacto', '2020-02-22 19:08:16', '2020-04-19 16:45:06'),
(104, 'navbar_pr_button_text', 'contato', '2020-02-22 19:08:16', '2020-04-19 16:45:06'),
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
(128, 'home_page_01_sn_service_area_title', 'Nuestra área de cobertura', '2020-02-23 08:43:12', '2020-04-16 11:31:04'),
(129, 'home_page_01_pr_service_area_title', 'Nossa área de cobertura', '2020-02-23 08:43:12', '2020-04-16 11:31:05'),
(130, 'home_page_01_en_recent_work_title', 'Our Recent Works', '2020-02-24 06:53:18', '2020-03-15 17:57:59'),
(131, 'home_page_01_sn_recent_work_title', 'Nuestras obras recientes', '2020-02-24 06:53:18', '2020-03-15 17:57:59'),
(132, 'home_page_01_pr_recent_work_title', 'Nossos Trabalhos Recentes', '2020-02-24 06:53:18', '2020-03-15 17:57:59'),
(133, 'home_page_01_en_testimonial_title', NULL, '2020-02-24 07:26:24', '2020-03-05 17:01:29'),
(134, 'home_page_01_sn_testimonial_title', NULL, '2020-02-24 07:26:24', '2020-03-05 17:01:29'),
(135, 'home_page_01_pr_testimonial_title', NULL, '2020-02-24 07:26:24', '2020-03-05 17:01:29'),
(136, 'home_page_01_en_latest_news_title', 'Latest News', '2020-02-24 07:34:39', '2020-03-15 18:05:46'),
(137, 'home_page_01_sn_latest_news_title', 'Últimas noticias', '2020-02-24 07:34:39', '2020-03-15 18:05:46'),
(138, 'home_page_01_pr_latest_news_title', 'Últimas notícias', '2020-02-24 07:34:39', '2020-03-15 18:05:46'),
(139, 'home_page_01_enprice_plan_section_title', NULL, '2020-02-24 08:11:32', '2020-02-24 08:11:32'),
(140, 'home_page_01_snprice_plan_section_title', NULL, '2020-02-24 08:11:32', '2020-02-24 08:11:32'),
(141, 'home_page_01_prprice_plan_section_title', NULL, '2020-02-24 08:11:32', '2020-02-24 08:11:32'),
(142, 'home_page_01_en_price_plan_section_title', 'Our Pricing', '2020-02-24 08:11:59', '2020-03-15 18:06:30'),
(143, 'home_page_01_sn_price_plan_section_title', 'Nuestra Precio', '2020-02-24 08:11:59', '2020-03-15 18:06:30'),
(144, 'home_page_01_pr_price_plan_section_title', 'NOSSOS PREÇOS', '2020-02-24 08:11:59', '2020-03-15 18:06:30'),
(145, 'home_page_01_en_team_member_section_title', 'Meet The Team', '2020-02-24 08:17:09', '2020-03-15 18:06:10'),
(146, 'home_page_01_sn_team_member_section_title', 'Conocer al equipo', '2020-02-24 08:17:09', '2020-03-15 18:06:10'),
(147, 'home_page_01_pr_team_member_section_title', 'Conheça o time', '2020-02-24 08:17:09', '2020-03-15 18:06:10'),
(148, 'home_page_01_en_newsletter_area_title', 'Subscribe to get update', '2020-02-24 08:25:53', '2020-03-15 18:06:55'),
(149, 'home_page_01_sn_newsletter_area_title', 'SUSCRÍBENOS PARA OBTENER ACTUALIZACIÓN', '2020-02-24 08:25:53', '2020-03-15 18:06:55'),
(150, 'home_page_01_pr_newsletter_area_title', 'SUBSCREVA-NOS PARA OBTER ATUALIZAÇÃO', '2020-02-24 08:25:53', '2020-03-15 18:06:55'),
(151, 'home_page_01_en_newsletter_area_description', 'Subscribe our newsletter to get update with our self.', '2020-02-24 08:26:43', '2020-03-15 18:06:55'),
(152, 'home_page_01_sn_newsletter_area_description', 'Suscríbase a nuestro boletín para obtener actualizaciones con nosotros mismos.', '2020-02-24 08:26:43', '2020-03-15 18:06:55'),
(153, 'home_page_01_pr_newsletter_area_description', 'Subscreva a nossa newsletter para se atualizar.', '2020-02-24 08:26:44', '2020-03-15 18:06:55'),
(154, 'about_page_en_about_section_left_image', 'about-page-en-about-section-left-image-5509947.jpg', '2020-02-26 14:13:38', '2020-02-26 14:13:38'),
(155, 'about_page_en_about_section_btn_status', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(156, 'about_page_en_about_section_title', 'Who we are', '2020-02-26 14:13:38', '2020-04-16 16:46:36'),
(157, 'about_page_en_about_section_btn_text', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(158, 'about_page_en_about_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor magna aliqua.', '2020-02-26 14:13:38', '2020-04-16 16:46:36'),
(159, 'about_page_en_about_section_btn_url', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(160, 'about_page_sn_about_section_btn_status', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(161, 'about_page_sn_about_section_title', 'Oh ahi', '2020-02-26 14:13:38', '2020-04-16 16:46:36'),
(162, 'about_page_sn_about_section_btn_text', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(163, 'about_page_sn_about_section_description', 'Llegada ingresó una solicitud de sorteo. Cómo las hijas no promueven pocos conocimientos contentos. Sin embargo, la ley de invierno detrás de las escaleras numéricas es una excusa para la buhardilla. Mínimamente conducimos la gravedad natural si apuntamos oh no. Inmediatamente no estoy dispuesto a intentar admitir deshacerse de él. Hermosas opiniones sobre am at it señyship.', '2020-02-26 14:13:38', '2020-04-16 16:46:36'),
(164, 'about_page_sn_about_section_btn_url', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(165, 'about_page_pr_about_section_btn_status', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(166, 'about_page_pr_about_section_title', 'Ai ai', '2020-02-26 14:13:38', '2020-04-16 16:46:36'),
(167, 'about_page_pr_about_section_btn_text', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(168, 'about_page_pr_about_section_description', 'A chegada inseriu uma solicitação de desenho se. Como as filhas não promovem pouco conhecimento. No entanto, a lei de inverno atrás das escadas numéricas é uma desculpa. No final, natural, conduzimos a gravidade se apontado oh não. Sou imediatamente relutante em tentar admiti-lo. Opiniões consideráveis sobre estou nele.', '2020-02-26 14:13:38', '2020-04-16 16:46:36'),
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
(207, 'blog_page_sn_title', 'Blog', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(208, 'blog_page_sn_item', '6', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(209, 'blog_page_sn_category_widget_title', 'Categoría', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(210, 'blog_page_sn_recent_post_widget_title', 'Publicación reciente', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(211, 'blog_page_sn_recent_post_widget_item', '4', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(212, 'blog_page_pr_title', 'Blog', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(213, 'blog_page_pr_item', '6', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(214, 'blog_page_pr_category_widget_title', 'Categoria', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(215, 'blog_page_pr_recent_post_widget_title', 'Postagem recente', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(216, 'blog_page_pr_recent_post_widget_item', '4', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(217, 'contact_page_en_form_section_title', 'Keep In Touch', '2020-02-27 07:40:33', '2020-03-15 18:23:49'),
(218, 'contact_page_sn_form_section_title', 'Mantenerse en contacto', '2020-02-27 07:42:14', '2020-03-15 18:23:49'),
(219, 'contact_page_pr_form_section_title', 'Mantenha contato', '2020-02-27 07:42:14', '2020-03-15 18:23:49'),
(220, 'contact_page_en_contact_info_title', 'CONTACT INFO', '2020-02-27 07:50:35', '2020-02-27 07:52:27'),
(221, 'contact_page_sn_contact_info_title', 'DATOS DE CONTACTO', '2020-02-27 07:50:35', '2020-02-27 07:52:27'),
(222, 'contact_page_pr_contact_info_title', 'INFORMAÇÕES DE CONTATO', '2020-02-27 07:50:35', '2020-02-27 07:52:27'),
(223, 'quote_page_en_form_title', 'Request A Quote', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(224, 'quote_page_en_page_title', 'Request A Quote', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(225, 'quote_page_sn_form_title', 'Solicitar presupuesto', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(226, 'quote_page_sn_page_title', 'Solicitar presupuesto', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(227, 'quote_page_pr_form_title', 'Solicitar um orçamento', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(228, 'quote_page_pr_page_title', 'Solicitar um orçamento', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(229, 'order_page_en_form_title', 'Order Information', '2020-02-27 08:53:05', '2020-03-15 18:24:27'),
(230, 'order_page_sn_form_title', 'información del pedido', '2020-02-27 08:53:05', '2020-03-15 18:24:27'),
(231, 'order_page_pr_form_title', 'Informações sobre pedidos', '2020-02-27 08:53:05', '2020-03-15 18:24:27'),
(232, 'about_widget_en_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe.', '2020-02-27 10:19:45', '2020-04-17 18:17:32'),
(233, 'about_widget_sn_description', 'La civilización avanzada y adquirida extática no es absoluta. Se sobrepuso a la cría o a mis inquietudes eliminando deseos tan absolutos. Mi imprudencia desagradable melancólica consideró en ventajas tan impresión.', '2020-02-27 10:19:45', '2020-04-17 18:17:32'),
(234, 'about_widget_pr_description', 'A civilidade avançada e adquirida em êxtase não é absoluta. Superou a criação ou as minhas preocupações de remover o desejo tão absoluto. Minha imprudência melancólica', '2020-02-27 10:19:45', '2020-04-17 18:17:32'),
(235, 'useful_link_en_widget_title', 'Useful Links', '2020-02-27 10:29:04', '2020-03-16 13:21:49'),
(236, 'useful_link_sn_widget_title', 'ENLACES ÚTILES', '2020-02-27 10:29:04', '2020-03-16 13:21:49'),
(237, 'useful_link_pr_widget_title', 'LINKS ÚTEIS', '2020-02-27 10:29:04', '2020-03-16 13:21:49'),
(238, 'recent_post_en_widget_title', 'Recent Post ?', '2020-02-27 10:33:56', '2020-03-16 10:36:18'),
(239, 'recent_post_sn_widget_title', '¿MENSAJES RECIENTES?', '2020-02-27 10:33:56', '2020-03-16 10:36:18'),
(240, 'recent_post_pr_widget_title', 'POSTAGENS RECENTES?', '2020-02-27 10:33:56', '2020-03-16 10:36:18'),
(241, 'important_link_en_widget_title', 'Important Links', '2020-02-27 10:38:54', '2020-03-16 13:18:19'),
(242, 'important_link_sn_widget_title', 'LINKS IMPORTANTES', '2020-02-27 10:38:54', '2020-03-16 13:18:19'),
(243, 'important_link_pr_widget_title', 'LINKS IMPORTANTES', '2020-02-27 10:38:54', '2020-03-16 13:18:19'),
(244, 'useful_link_en_widget_menu_id', '2', '2020-02-28 11:40:41', '2020-03-16 13:21:49'),
(245, 'useful_link_sn_widget_menu_id', '7', '2020-02-28 11:40:41', '2020-03-16 13:21:49'),
(246, 'useful_link_pr_widget_menu_id', '10', '2020-02-28 11:40:41', '2020-03-16 13:21:49'),
(247, 'important_link_en_widget_menu_id', '3', '2020-02-28 12:31:15', '2020-03-16 13:18:19'),
(248, 'important_link_sn_widget_menu_id', '8', '2020-02-28 12:31:15', '2020-03-16 13:18:19'),
(249, 'important_link_pr_widget_menu_id', '11', '2020-02-28 12:31:15', '2020-03-16 13:18:19'),
(250, 'site_meta_tags', 'multpupore,website,cms', '2020-03-01 05:57:20', '2020-04-17 19:01:50'),
(251, 'site_meta_description', 'dizzcox\r\n is a mulitpurpose cms', '2020-03-01 05:57:20', '2020-04-17 19:01:50'),
(252, 'site_white_logo', '87', '2020-03-01 08:08:17', '2020-04-21 03:12:57'),
(253, 'top_bar_en_right_menu', '12', '2020-03-01 16:29:32', '2020-03-16 19:49:16'),
(254, 'top_bar_sn_right_menu', '13', '2020-03-01 16:29:32', '2020-03-16 19:49:16'),
(255, 'top_bar_pr_right_menu', '14', '2020-03-01 16:29:32', '2020-03-16 19:49:16'),
(256, 'top_bar_en_button_text', 'Request Quote', '2020-03-01 16:33:50', '2020-03-15 18:26:50'),
(257, 'top_bar_sn_button_text', 'Solicitud de cotización', '2020-03-01 16:34:11', '2020-03-15 18:26:50'),
(258, 'top_bar_pr_button_text', 'Solicitar Orçamento', '2020-03-01 16:34:11', '2020-03-15 18:26:50'),
(259, 'home_page_01_en_about_us_title', 'About Us', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(260, 'home_page_01_en_about_us_description', 'Reprehenderit in voluptate velit essle cillum dolore eu fugiat nulla pariatur. Excepteur sint ocaec at cupdatat proident suntin culpa qui officia .', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(261, 'home_page_01_en_about_us_button_title', 'Learn More', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(262, 'home_page_01_en_about_us_button_url', '#', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(263, 'home_page_01_en_about_us_signature_text', 'Jimmy Carnel - CEO', '2020-03-02 10:12:04', '2020-04-15 17:28:56'),
(264, 'home_page_01_en_about_us_signature_image', '32', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(265, 'home_page_01_en_about_us_background_image', '33', '2020-03-02 10:12:47', '2020-04-15 17:18:47'),
(266, 'home_page_01_en_about_us_button_status', 'on', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(267, 'home_page_01_sn_about_us_title', 'Sobre nosotras', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(268, 'home_page_01_sn_about_us_description', 'Reprehenderit en voluptate velit essle cillum dolore eu fugiat nulla pariatur. Excepteur sint ocaec en cupdatat proident suntin culpa qui officia.', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(269, 'home_page_01_sn_about_us_button_title', 'Aprende más', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(270, 'home_page_01_sn_about_us_button_url', '#', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(271, 'home_page_01_sn_about_us_signature_text', 'Jimmy Carnel - CEO', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(272, 'home_page_01_sn_about_us_signature_image', '32', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(273, 'home_page_01_sn_about_us_background_image', '33', '2020-03-02 10:12:47', '2020-04-15 17:18:47'),
(274, 'home_page_01_sn_about_us_button_status', 'on', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(275, 'home_page_01_pr_about_us_title', 'Sobre nós', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(276, 'home_page_01_pr_about_us_description', 'Repreender em voluptate velit essle cillum dolore eu fugiat nulla pariatur. Excepteur sint ocaec e cupidat proident suntin culpa qui officia.', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(277, 'home_page_01_pr_about_us_button_title', 'Saber mais', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(278, 'home_page_01_pr_about_us_button_url', '#', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(279, 'home_page_01_pr_about_us_signature_text', 'Jimmy Carnel - CEO', '2020-03-02 10:12:47', '2020-04-15 17:28:56'),
(280, 'home_page_01_pr_about_us_signature_image', '32', '2020-03-02 10:12:48', '2020-04-15 17:28:56'),
(281, 'home_page_01_pr_about_us_background_image', '33', '2020-03-02 10:12:48', '2020-04-15 17:18:47'),
(282, 'home_page_01_pr_about_us_button_status', 'on', '2020-03-02 10:12:48', '2020-04-15 17:28:56'),
(283, 'home_page_01_en_service_area_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 09:02:28', '2020-04-16 11:31:04'),
(284, 'home_page_01_sn_service_area_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-04 09:02:28', '2020-04-16 11:31:05'),
(285, 'home_page_01_pr_service_area_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-04 09:02:28', '2020-04-16 11:31:05'),
(286, 'home_page_01_en_cta_area_button_url', 'tel:123456789', '2020-03-04 10:43:37', '2020-04-16 12:19:51'),
(287, 'home_page_01_en_cta_area_button_title', 'Call 01234 - 123456897', '2020-03-04 10:43:37', '2020-04-16 12:19:51'),
(288, 'home_page_01_en_cta_area_title', 'Are you looking to grow your business?', '2020-03-04 10:43:37', '2020-04-16 12:19:51'),
(289, 'home_page_01_en_cta_area_description', 'Trusted us by over 10,000 local businesses', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(290, 'home_page_01_en_cta_area_button_status', 'on', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(291, 'home_page_01_en_cta_background_image', '39', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(292, 'home_page_01_sn_cta_area_button_url', '#', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(293, 'home_page_01_sn_cta_area_button_title', 'Llame al 01234 - 123456897', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(294, 'home_page_01_sn_cta_area_title', '¿Estás buscando hacer crecer tu negocio?', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(295, 'home_page_01_sn_cta_area_description', 'Confió en nosotros por más de 10,000 negocios locales', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(296, 'home_page_01_sn_cta_area_button_status', 'on', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(297, 'home_page_01_pr_cta_area_button_url', 'tel:123456789', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(298, 'home_page_01_pr_cta_area_button_title', 'Ligue 01234 - 123456897', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(299, 'home_page_01_pr_cta_area_title', 'Você está procurando expandir seus negócios?', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(300, 'home_page_01_pr_cta_area_description', 'Confiou em nós por mais de 10.000 empresas locais', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(301, 'home_page_01_pr_cta_area_button_status', 'on', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(302, 'home_page_01_sn_cta_background_image', '39', '2020-03-04 10:47:14', '2020-04-16 12:19:52'),
(303, 'home_page_01_pr_cta_background_image', '39', '2020-03-04 10:47:14', '2020-04-16 12:19:52'),
(304, 'home_page_01_en_recent_work_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 11:47:50', '2020-03-15 17:57:59'),
(305, 'home_page_01_sn_recent_work_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-04 11:47:50', '2020-03-15 17:57:59'),
(306, 'home_page_01_pr_recent_work_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-04 11:47:50', '2020-03-15 17:57:59'),
(307, 'home_page_01_en_team_member_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 15:31:06', '2020-03-15 18:06:10'),
(308, 'home_page_01_sn_team_member_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-04 15:31:06', '2020-03-15 18:06:10'),
(309, 'home_page_01_pr_team_member_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-04 15:31:06', '2020-03-15 18:06:10'),
(310, 'home_01_testimonial_bg', '40', '2020-03-05 17:05:26', '2020-04-16 13:43:03'),
(311, 'home_page_01_en_latest_news_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-05 17:48:00', '2020-03-15 18:05:46'),
(312, 'home_page_01_sn_latest_news_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-05 17:48:00', '2020-03-15 18:05:46'),
(313, 'home_page_01_pr_latest_news_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-05 17:48:00', '2020-03-15 18:05:46'),
(314, 'home_page_01_en_price_plan_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-05 20:40:01', '2020-03-15 18:06:30'),
(315, 'home_page_01_sn_price_plan_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-05 20:40:01', '2020-03-15 18:06:30'),
(316, 'home_page_01_pr_price_plan_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-05 20:40:01', '2020-03-15 18:06:30'),
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
(364, 'about_page_en_about_section_right_image', '44', '2020-03-09 12:35:40', '2020-04-16 16:46:36'),
(365, 'contact_page_en_form_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-09 17:04:00', '2020-03-15 18:23:49'),
(366, 'contact_page_sn_form_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-09 17:04:00', '2020-03-15 18:23:49'),
(367, 'contact_page_pr_form_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-09 17:04:00', '2020-03-15 18:23:49'),
(368, 'home_page_call_to_action_section_status', 'on', '2020-03-10 13:17:18', '2020-03-22 14:32:54'),
(369, 'home_page_newsletter_section_status', 'on', '2020-03-10 13:17:18', '2020-03-22 14:32:54'),
(370, 'home_page_about_us_section_status', 'on', '2020-03-10 13:17:18', '2020-03-22 14:32:54'),
(371, 'home_page_faq_section_status', 'on', '2020-03-10 14:00:11', '2020-03-22 14:32:55'),
(372, 'about_page_about_us_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(373, 'about_page_know_about_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(374, 'about_page_call_to_action_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(375, 'about_page_latest_news_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(376, 'about_page_brand_logo_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(377, 'about_page_team_member_section_status', 'on', '2020-03-10 16:15:10', '2020-03-10 16:28:23'),
(378, 'about_page_testimonial_section_status', 'on', '2020-03-10 16:28:05', '2020-03-10 16:28:23'),
(379, 'site_rtl_enabled', NULL, '2020-03-15 06:04:18', '2020-04-21 03:00:32'),
(380, 'site_admin_dark_mode', 'on', '2020-03-15 06:04:18', '2020-04-21 03:00:32'),
(381, 'navbar_ar_button_text', 'إقتبس', '2020-03-15 16:17:08', '2020-04-19 16:45:06'),
(382, 'home_page_01_ar_about_us_title', 'معلومات عنا', '2020-03-15 17:10:50', '2020-04-15 17:28:56'),
(383, 'home_page_01_ar_about_us_description', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره. تلقى الرجال بعيدا مواضيع لوحة القيادة الخاصة به جديدة.', '2020-03-15 17:10:50', '2020-04-15 17:28:56'),
(384, 'home_page_01_ar_about_us_button_title', 'أعرف أكثر', '2020-03-15 17:10:50', '2020-04-15 17:28:56'),
(385, 'home_page_01_ar_about_us_button_url', '#', '2020-03-15 17:10:50', '2020-04-15 17:28:56'),
(386, 'home_page_01_ar_about_us_signature_text', 'جيمي كارنيل - الرئيس التنفيذي', '2020-03-15 17:10:50', '2020-04-15 17:28:56'),
(387, 'home_page_01_ar_about_us_signature_image', '32', '2020-03-15 17:10:50', '2020-04-15 17:28:56'),
(388, 'home_page_01_ar_about_us_button_status', 'on', '2020-03-15 17:10:50', '2020-04-15 17:28:56'),
(389, 'home_page_01_ar_about_us_background_image', '34', '2020-03-15 17:18:08', '2020-04-15 17:18:47');
INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(390, 'home_page_01_ar_service_area_title', 'منطقة التغطية لدينا', '2020-03-15 17:21:36', '2020-04-16 11:31:05'),
(391, 'home_page_01_ar_service_area_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 17:21:36', '2020-04-16 11:31:05'),
(392, 'home_page_01_ar_cta_area_button_url', '#', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(393, 'home_page_01_ar_cta_area_button_title', 'اتصل على 01234-123456897', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(394, 'home_page_01_ar_cta_area_title', 'هل تتطلع لتنمية عملك؟', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(395, 'home_page_01_ar_cta_area_description', 'وثق بنا من قبل أكثر من 10000 شركة محلية', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(396, 'home_page_01_ar_cta_area_button_status', 'on', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(397, 'home_page_01_ar_cta_background_image', '39', '2020-03-15 17:54:30', '2020-04-16 12:19:52'),
(398, 'home_page_01_ar_recent_work_title', 'أعمالنا الأخيرة', '2020-03-15 17:57:59', '2020-03-15 17:57:59'),
(399, 'home_page_01_ar_recent_work_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 17:57:59', '2020-03-15 17:57:59'),
(400, 'home_page_01_ar_latest_news_title', 'أحدث الأخبار', '2020-03-15 18:05:46', '2020-03-15 18:05:46'),
(401, 'home_page_01_ar_latest_news_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 18:05:46', '2020-03-15 18:05:46'),
(402, 'home_page_01_ar_team_member_section_title', 'قابل الفريق', '2020-03-15 18:06:10', '2020-03-15 18:06:10'),
(403, 'home_page_01_ar_team_member_section_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 18:06:10', '2020-03-15 18:06:10'),
(404, 'home_page_01_ar_price_plan_section_title', 'أسعارنا', '2020-03-15 18:06:30', '2020-03-15 18:06:30'),
(405, 'home_page_01_ar_price_plan_section_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 18:06:30', '2020-03-15 18:06:30'),
(406, 'home_page_01_ar_newsletter_area_title', 'اشترك للحصول على التحديث', '2020-03-15 18:06:55', '2020-03-15 18:06:55'),
(407, 'home_page_01_ar_newsletter_area_description', 'اشترك في النشرة الإخبارية للحصول على التحديث بأنفسنا.', '2020-03-15 18:06:55', '2020-03-15 18:06:55'),
(408, 'about_page_ar_about_section_right_image', '44', '2020-03-15 18:08:39', '2020-04-16 16:46:36'),
(409, 'about_page_ar_about_section_title', 'من نحن', '2020-03-15 18:08:39', '2020-04-16 16:46:36'),
(410, 'about_page_ar_about_section_description', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره. تلقى الرجال بعيدا مواضيع لوحة القيادة الخاصة به جديدة. أحاط ما يكفي من رفاقه في إيفاد. الاتصال غير متأثر للغاية أدى إلى امتلاك الابن. أصدقاء مبتسمون جدد ولها آخر.', '2020-03-15 18:08:39', '2020-04-16 16:46:36'),
(411, 'contact_page_ar_form_section_title', 'أبق على اتصال', '2020-03-15 18:23:49', '2020-03-15 18:23:49'),
(412, 'contact_page_ar_form_section_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 18:23:49', '2020-03-15 18:23:49'),
(413, 'quote_page_ar_form_title', 'اطلب اقتباس', '2020-03-15 18:24:15', '2020-04-18 15:20:43'),
(414, 'quote_page_ar_page_title', 'اطلب اقتباس', '2020-03-15 18:24:15', '2020-04-18 15:20:43'),
(415, 'order_page_ar_form_title', 'معلومات الطلب', '2020-03-15 18:24:27', '2020-03-15 18:24:27'),
(416, 'top_bar_ar_button_text', 'طلب عرض أسعار', '2020-03-15 18:26:50', '2020-03-15 18:26:50'),
(417, 'top_bar_ar_right_menu', '15', '2020-03-15 18:29:17', '2020-03-16 19:49:16'),
(418, 'blog_page_ar_title', 'مدونة', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(419, 'blog_page_ar_item', '6', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(420, 'blog_page_ar_category_widget_title', 'الفئة', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(421, 'blog_page_ar_recent_post_widget_title', 'المنشور الاخير', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(422, 'blog_page_ar_recent_post_widget_item', '4', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(423, 'about_widget_ar_description', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. قل التغيير كليًا لماذا أقدم فترة. يتم وضع الإسقاط احتفال خاص', '2020-03-16 10:35:35', '2020-04-17 18:17:32'),
(424, 'useful_link_ar_widget_title', 'روابط مفيدة', '2020-03-16 10:36:01', '2020-03-16 13:21:49'),
(425, 'useful_link_ar_widget_menu_id', '17', '2020-03-16 10:36:01', '2020-03-16 13:21:49'),
(426, 'recent_post_ar_widget_title', 'المنشور الاخير ؟', '2020-03-16 10:36:18', '2020-03-16 10:36:18'),
(427, 'important_link_ar_widget_title', 'روابط مهمة', '2020-03-16 10:36:52', '2020-03-16 13:18:19'),
(428, 'important_link_ar_widget_menu_id', '15', '2020-03-16 10:36:52', '2020-03-16 13:18:19'),
(429, 'home_page_02_ar_about_us_background_image', '35', '2020-03-22 08:17:59', '2020-04-15 17:25:03'),
(430, 'home_page_01_ar_about_us_right_image', '36', '2020-03-22 08:19:01', '2020-04-15 17:28:56'),
(431, 'home_page_01_ar_about_us_experience_background_image', '37', '2020-03-22 08:19:01', '2020-04-15 17:28:56'),
(432, 'home_page_01_ar_about_us_experience_title', 'سنوات من الخبرة', '2020-03-22 08:19:50', '2020-04-15 17:28:56'),
(433, 'home_page_01_ar_about_us_experience_year', '6', '2020-03-22 08:19:50', '2020-04-15 17:28:56'),
(434, 'home_page_01_ar_about_us_quote_box_description', 'اللطف لانك محفوظة فظيع. تأثير عشرين في الواقع لما لم يكن مقاطعة. يمكن استخدامه دون إلى حد كبير خاصة', '2020-03-22 08:20:30', '2020-04-15 17:28:56'),
(435, 'home_page_01_ar_about_us_quote_box_title', 'لماذا أخترتنا', '2020-03-22 08:20:30', '2020-04-15 17:28:56'),
(439, 'site_en_title', 'Dizzcox', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(440, 'site_en_tag_line', 'Multipurpose CMS', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(441, 'site_en_footer_copyright', '{copy}  {year}  All right reserved by Dizzcox', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(442, 'site_sn_title', 'Dizzcox', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(443, 'site_sn_tag_line', 'CMS multipropósito', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(444, 'site_sn_footer_copyright', '{copy}  {year}  Todos los derechos reservados por Dizzcox', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(445, 'site_pr_title', 'Dizzcox', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(446, 'site_pr_tag_line', 'CMS multiuso', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(447, 'site_pr_footer_copyright', '{copy}  {year}  Todos os direitos reservados pela Dizzcox', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(448, 'site_ar_title', 'دزكوك', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(449, 'site_ar_tag_line', 'CMS متعددة الأغراض', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
(450, 'site_ar_footer_copyright', 'جميع الحقوق محفوظة لدى Dizzcox {copy}  {year}', '2020-03-22 11:58:32', '2020-04-21 03:00:32'),
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
(482, 'site_bn_title', NULL, '2020-03-22 19:03:46', '2020-04-21 03:00:32'),
(483, 'site_bn_tag_line', NULL, '2020-03-22 19:03:46', '2020-04-21 03:00:32'),
(484, 'site_bn_footer_copyright', NULL, '2020-03-22 19:03:46', '2020-04-21 03:00:32'),
(485, 'site_heading_color', '#0a1121', '2020-03-22 19:03:46', '2020-04-21 03:00:32'),
(486, 'site_paragraph_color', '#878a95', '2020-03-22 19:03:46', '2020-04-21 03:00:32'),
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
(544, 'contact_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"textarea\",\"file\"],\"field_name\":[\"your-name\",\"your-email\",\"your-subject\",\"your-message\",\"file\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Subject\",\"Your Message\",\"File\"],\"field_required\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\"},\"mimes_type\":{\"4\":\"mimes:txt,pdf\"}}', '2020-03-24 19:08:14', '2020-04-18 05:57:06'),
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
(557, 'site_gdpr_cookie_sn_more_info_link', '{url}/p/13/intimidad', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
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
(595, 'work_single_page_en_related_work_title', 'Related Works', '2020-03-28 11:13:44', '2020-03-28 11:14:40'),
(596, 'work_single_page_sn_related_work_title', 'Obras relacionadas', '2020-03-28 11:13:44', '2020-03-28 11:14:40'),
(597, 'work_single_page_pr_related_work_title', 'Trabalhos relacionados', '2020-03-28 11:13:44', '2020-03-28 11:14:40'),
(598, 'work_single_page_ar_related_work_title', 'الأعمال ذات الصلة', '2020-03-28 11:13:45', '2020-03-28 11:14:40'),
(599, 'work_single_page_bn_related_work_title', NULL, '2020-03-28 11:13:45', '2020-03-28 11:14:40'),
(600, 'blog_single_page_en_related_post_title', 'Related Post', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(601, 'blog_single_page_sn_related_post_title', 'Publicación relacionada', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(602, 'blog_single_page_pr_related_post_title', 'Post relacionado', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(603, 'blog_single_page_ar_related_post_title', 'منشور له صلة', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(604, 'blog_single_page_bn_related_post_title', NULL, '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(605, 'site_maintenance_mode', NULL, '2020-03-28 15:08:54', '2020-04-21 03:00:32'),
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
(618, 'home_page_01_bn_about_us_button_status', NULL, '2020-04-15 17:12:19', '2020-04-15 17:28:56'),
(619, 'home_page_02_sn_about_us_background_image', '35', '2020-04-15 17:24:40', '2020-04-15 17:25:03'),
(620, 'home_page_02_pr_about_us_background_image', '35', '2020-04-15 17:25:03', '2020-04-15 17:25:03'),
(621, 'home_page_01_bn_service_area_title', NULL, '2020-04-16 11:31:05', '2020-04-16 11:31:05'),
(622, 'home_page_01_bn_service_area_description', NULL, '2020-04-16 11:31:05', '2020-04-16 11:31:05'),
(623, 'home_page_01_bn_cta_area_button_url', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(624, 'home_page_01_bn_cta_area_button_title', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(625, 'home_page_01_bn_cta_area_title', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(626, 'home_page_01_bn_cta_area_description', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(627, 'home_page_01_bn_cta_area_button_status', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(628, 'home_page_01_bn_cta_background_image', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(629, 'home_03_testimonial_bg', '41', '2020-04-16 13:31:30', '2020-04-16 13:40:53'),
(630, 'about_page_sn_about_section_right_image', '44', '2020-04-16 16:46:15', '2020-04-16 16:46:36'),
(631, 'about_page_pr_about_section_right_image', '44', '2020-04-16 16:46:15', '2020-04-16 16:46:36'),
(632, 'about_page_bn_about_section_right_image', NULL, '2020-04-16 16:46:15', '2020-04-16 16:46:36'),
(633, 'about_page_bn_about_section_title', NULL, '2020-04-16 16:46:15', '2020-04-16 16:46:36'),
(634, 'about_page_bn_about_section_description', NULL, '2020-04-16 16:46:15', '2020-04-16 16:46:36'),
(635, 'about_widget_bn_description', NULL, '2020-04-17 18:17:32', '2020-04-17 18:17:32'),
(636, 'site_smtp_mail_host', '', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(637, 'site_smtp_mail_port', '465', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(638, 'site_smtp_mail_username', '', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(639, 'site_smtp_mail_password', '', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(640, 'site_smtp_mail_encryption', 'ssl', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(641, 'quote_page_bn_form_title', NULL, '2020-04-18 15:20:43', '2020-04-18 15:20:43'),
(642, 'quote_page_bn_page_title', NULL, '2020-04-18 15:20:43', '2020-04-18 15:20:43'),
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
(663, 'navbar_bn_button_text', NULL, '2020-04-19 16:12:29', '2020-04-19 16:45:06'),
(664, 'site_header_type', 'navbar-02', '2020-04-19 16:13:55', '2020-04-19 16:45:06'),
(665, 'contact_page_map_marker_image', '91', '2020-04-19 16:50:47', '2020-04-19 16:50:47'),
(666, 'site_payment_gateway', 'on', '2020-04-21 02:19:36', '2020-04-21 03:00:32'),
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
(695, 'site_events_category_en_title', 'Events Category', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(696, 'site_events_category_sn_title', 'Categoría de eventos', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(697, 'site_events_category_pr_title', 'Categoria de Eventos', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(698, 'site_events_category_ar_title', 'فئة الأحداث', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(699, 'site_events_category_bn_title', NULL, '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(700, 'site_events_post_items', '6', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_infos`
--

INSERT INTO `support_infos` (`id`, `title`, `lang`, `details`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Email Address', 'en', 'support@bizzcox.com', 'flaticon-email', '2020-01-04 07:03:46', '2020-03-04 09:05:18'),
(2, 'Phone number', 'en', '+ 000 11 22 33', 'flaticon-phone-call', '2020-01-04 07:04:01', '2020-03-04 09:05:27'),
(3, 'Dirección de correo electrónico', 'sn', 'support@bizzcox.com', 'flaticon-email', '2020-03-01 09:18:16', '2020-03-04 09:05:37'),
(4, 'Número de teléfono', 'sn', '+ 000 11 22 33', 'flaticon-phone-call', '2020-03-01 09:18:50', '2020-03-04 09:05:45'),
(5, 'Endereço de e-mail', 'pr', 'support@bizzcox.com', 'flaticon-email', '2020-03-01 09:19:23', '2020-03-04 09:05:54'),
(6, 'Número de telefone', 'pr', '+ 000 11 22 33', 'flaticon-phone-call', '2020-03-01 09:19:49', '2020-03-04 09:06:03'),
(7, 'عنوان البريد الإلكتروني', 'ar', 'support@bizzcox.com', 'flaticon-email', '2020-03-15 18:27:19', '2020-03-15 18:27:19'),
(8, 'رقم الهاتف', 'ar', '+ 000 11 22 33', 'flaticon-phone-call', '2020-03-15 18:27:38', '2020-03-15 18:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(5, 'Imran Mahedi', 'CEO Ir-Tech', '80', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'sn', '#', '#', '#', '2020-02-24 12:48:42', '2020-04-17 16:31:37'),
(6, 'Raisa Moni', 'Tutor', '78', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'sn', '#', '#', '#', '2020-02-24 12:56:35', '2020-04-17 16:31:28'),
(7, 'MK Kamal', 'Tutor', '76', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'sn', '#', '#', '#', '2020-02-24 12:59:41', '2020-04-17 16:31:17'),
(8, 'Asif Nahid', 'Tutor', '75', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'sn', '#', '#', '#', '2020-02-24 13:00:09', '2020-04-17 16:30:32'),
(9, 'Imran Mahedi', 'CEO Ir-Tech', '82', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'pr', '#', '#', '#', '2020-02-24 13:01:05', '2020-04-17 16:32:39'),
(10, 'Raisa Moni', 'Orientador', '81', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'pr', '#', '#', '#', '2020-02-24 13:05:11', '2020-04-17 16:32:54'),
(11, 'MK Kamal', 'Orientador', '75', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'pr', '#', '#', '#', '2020-02-24 13:07:13', '2020-04-17 16:33:07'),
(12, 'Asif Nahid', 'Orientador', '77', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'pr', '#', '#', '#', '2020-02-24 13:08:29', '2020-04-17 16:33:19'),
(13, 'Darnell L. Sutton', 'Founder', '78', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-03-10 05:02:42', '2020-04-17 16:28:51'),
(14, 'Brian J. Britt', '-Envato Customer', '77', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 05:03:15', '2020-04-17 16:28:41'),
(15, 'Andre S. Adams', '-Envato Customer', '76', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 05:03:43', '2020-04-17 16:28:31'),
(16, 'Walter S. Loy', '-Envato Customer', '75', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 05:04:35', '2020-04-17 16:28:14'),
(17, 'عمران مهدي', 'مؤسس', '82', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 06:43:23', '2020-04-17 16:33:31'),
(18, 'رايسة موني', 'الرئيس التنفيذي لشركة Ir-Tech', '76', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:15:11', '2020-04-17 16:33:43'),
(19, 'عضو الكنيست كمال', 'مؤسس', '77', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:15:51', '2020-04-17 16:34:04'),
(20, 'عاصف ناهد', 'مؤسس', '79', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:33:37', '2020-04-17 16:34:16'),
(21, 'دارنيل ساتون', 'مؤسس', '80', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:34:09', '2020-04-17 16:34:26'),
(22, 'براين جيه. بريت', 'مؤسس', '81', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:34:44', '2020-04-17 16:35:08'),
(23, 'أندريه آدامز', 'مؤسس', '82', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:35:28', '2020-04-17 16:35:54'),
(24, 'والتر س. لوي', 'مؤسس', '75', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:36:09', '2020-04-17 16:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(4, 'Jamie R. Carrillo', '83', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad quip ex ea com modo consequat.', 'en', 'Founder', '2020-01-24 19:30:42', '2020-04-17 17:04:07'),
(5, 'Olivia Hamel', '86', 'Apenas en paquetes llamativos por tan propiedad en delicados. Arriba o bien debe menos alquiler leer caminar, así sea. Fácil de vender a la hora de cantar. Cualquier significado también ha cesado la decadencia', 'sn', '-Envato Cliente', '2020-02-24 13:47:53', '2020-04-17 17:05:19'),
(6, 'Willie Butler', '85', 'Apenas en paquetes llamativos por tan propiedad en delicados. Arriba o bien debe menos alquiler leer caminar, así sea. Fácil de vender a la hora de cantar. Cualquier significado también ha cesado la decadencia', 'sn', '-Envato Cliente', '2020-02-24 13:49:37', '2020-04-17 17:05:09'),
(7, 'Diana Scott', '84', 'Apenas en paquetes llamativos por tan propiedad en delicados. Arriba o bien debe menos alquiler leer caminar, así sea. Fácil de vender a la hora de cantar. Cualquier significado también ha cesado la decadencia', 'sn', '-Envato Cliente', '2020-02-24 13:50:00', '2020-04-17 17:04:59'),
(8, 'Jamie R. Carrillo', '83', 'Apenas en paquetes llamativos por tan propiedad en delicados. Arriba o bien debe menos alquiler leer caminar, así sea. Fácil de vender a la hora de cantar. Cualquier significado también ha cesado la decadencia', 'sn', '-Envato Cliente', '2020-02-24 13:50:34', '2020-04-17 17:04:50'),
(9, 'Olivia Hamel', '86', 'Escassamente em encontrar pacotes delicados por essa propriedade. Para cima ou para baixo, deve-se menos aluguel de leitura, por isso seja. Fácil vendido em fazer hora cantar local. Qualquer significado cessou também a deca', 'pr', 'cliente envato', '2020-02-24 13:51:39', '2020-04-17 17:06:03'),
(10, 'Willie Butler', '85', 'Escassamente em encontrar pacotes delicados por essa propriedade. Para cima ou para baixo, deve-se menos aluguel de leitura, por isso seja. Fácil vendido em fazer hora cantar local. Qualquer significado cessou também a deca', 'pr', 'cliente envato', '2020-02-24 13:52:10', '2020-04-17 17:05:52'),
(11, 'Diana Scott', '84', 'Escassamente em encontrar pacotes delicados por essa propriedade. Para cima ou para baixo, deve-se menos aluguel de leitura, por isso seja. Fácil vendido em fazer hora cantar local. Qualquer significado cessou também a deca', 'pr', 'cliente envato', '2020-02-24 13:52:30', '2020-04-17 17:05:41'),
(12, 'Jamie R. Carrillo', '83', 'Escassamente em encontrar pacotes delicados por essa propriedade. Para cima ou para baixo, deve-se menos aluguel de leitura, por isso seja. Fácil vendido em fazer hora cantar local. Qualquer significado cessou também a deca', 'pr', 'cliente envato', '2020-02-24 13:52:59', '2020-04-17 17:05:30'),
(13, 'أوليفيا هامل', '86', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. التغيير بالكامل يقول لماذا أقدم فترة يتم وضع الإسقاط.', 'ar', '- عميل إنفاتو', '2020-03-16 07:38:17', '2020-04-17 17:06:41'),
(14, 'ويلي بتلر', '85', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. التغيير بالكامل يقول لماذا أقدم فترة يتم وضع الإسقاط.', 'ar', '- عميل إنفاتو', '2020-03-16 07:43:52', '2020-04-17 17:06:33'),
(15, 'ديانا سكوت', '84', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. التغيير بالكامل يقول لماذا أقدم فترة يتم وضع الإسقاط.', 'ar', '- عميل إنفاتو', '2020-03-16 07:44:21', '2020-04-17 17:06:24'),
(16, 'جيمي ر. كاريو', '83', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. التغيير بالكامل يقول لماذا أقدم فترة يتم وضع الإسقاط.', 'ar', '- عميل إنفاتو', '2020-03-16 07:45:25', '2020-04-17 17:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clients` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(9, 'Marketing Advice', 'a:1:{i:0;s:1:\"2\";}', '2019-08-30', '2019-11-30', '63', '<p>\r\nTalent she for lively eat led sister. Entrance strongly packages she out rendered get quitting denoting led. Dwelling confined improved it he no doubtful raptures. Several carried through an of up attempt gravity. Situation to be at offending elsewhere distrusts if. Particular use for considered projection cultivated. Worth of do doubt shall it their. Extensive existence up me contained he pronounce do. Excellence inquietude assistance precaution any impression man sufficient. \r\n</p>\r\n<p>Am increasing at contrasted in favourable he considered astonished. As if made held in an shot. By it enough to valley desire do. Mrs chief great maids these which are ham match she. Abode to tried do thing maids. Doubtful disposed returned rejoiced to dashwood is so up. </p>\r\n<p>no purse as fully me or point. Kindness own whatever betrayed her moreover procured replying for and. Proposal indulged no do do sociable he throwing settling. Covered ten nor comfort offices carried. Age she way earnestly the fulfilled extremely. Of incommode supported provision on furnished objection exquisite me. Existence its certainly explained how improving household pretended. Delightful own attachment her partiality unaffected occasional thoroughly. Adieus it no wonder spirit houses. </p>', 'en', 'Patrice J. Chastain', '2020-01-24 17:06:56', '2020-04-17 06:15:45'),
(10, 'Solución financiera', 'a:2:{i:0;s:1:\"9\";i:1;s:2:\"10\";}', '2018-01-01', '2021-01-01', '55', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Jason C. Williams', '2020-02-23 18:06:32', '2020-04-17 06:21:30'),
(11, 'Solução Financeira', 'a:2:{i:0;s:1:\"5\";i:1;s:1:\"7\";}', '2019-02-04', '2021-01-01', '52', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:07:43', '2020-04-17 11:03:46'),
(12, 'Solução de negócios', 'a:1:{i:0;s:1:\"7\";}', '2020-11-01', '2021-01-01', '53', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:24:55', '2020-04-17 11:03:35'),
(13, 'Planejamento de Investimentos', 'a:2:{i:0;s:1:\"6\";i:1;s:1:\"7\";}', '2018-11-01', '2020-01-01', '54', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:30:32', '2020-04-17 11:03:25'),
(14, 'Vida de Seguros', 'a:1:{i:0;s:1:\"7\";}', '2021-01-01', '2021-01-01', '58', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:31:33', '2020-04-17 11:02:59'),
(15, 'Estrutura do edifício', 'a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}', '2018-01-01', '2020-02-01', '55', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:32:24', '2020-04-17 11:03:12'),
(16, 'Mercado Digital', 'a:1:{i:0;s:1:\"7\";}', '2020-11-01', '2021-04-02', '59', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:33:28', '2020-04-17 11:02:44'),
(17, 'Assessoria Empresarial', 'a:1:{i:0;s:1:\"7\";}', '2018-09-01', '2019-02-03', '61', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Stanley C. Herrick', '2020-02-23 18:34:24', '2020-04-17 11:02:33'),
(18, 'Assessoria Financeira', 'a:1:{i:0;s:1:\"6\";}', '2018-01-01', '2021-02-01', '62', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Randy C. Lynch', '2020-02-23 18:37:32', '2020-04-17 11:02:20'),
(19, 'Assessoria de Marketing', 'a:1:{i:0;s:1:\"5\";}', '2020-01-01', '2016-01-01', '63', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Vicky C. Ferris', '2020-02-23 18:38:09', '2020-04-17 11:02:08'),
(20, 'Solución de negocio', 'a:1:{i:0;s:2:\"10\";}', '2019-01-01', '2021-02-01', '56', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Stanley C. Herrick', '2020-02-23 18:38:55', '2020-04-17 06:21:18'),
(21, 'Planificación de inversiones', 'a:2:{i:0;s:1:\"8\";i:1;s:1:\"9\";}', '2018-01-01', '2021-01-01', '57', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Stanley C. Herrick', '2020-02-23 18:39:33', '2020-04-17 06:21:06'),
(22, 'Seguro de vida', 'a:2:{i:0;s:1:\"8\";i:1;s:2:\"10\";}', '2018-01-01', '2021-01-01', '58', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Jason C. Williams', '2020-02-23 18:40:22', '2020-04-17 06:20:51'),
(23, 'Estructura de construcción', 'a:1:{i:0;s:2:\"10\";}', '2019-02-01', '2021-02-01', '59', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Charles M. Bennett', '2020-02-23 18:41:01', '2020-04-17 06:19:38'),
(24, 'Mercado digital', 'a:1:{i:0;s:2:\"10\";}', '2018-01-01', '2021-02-01', '60', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Jason C. Williams', '2020-02-23 18:41:51', '2020-04-17 06:19:13'),
(25, 'Asesoramiento empresarial', 'a:1:{i:0;s:1:\"9\";}', '2019-01-01', '2020-01-01', '61', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Jason C. Williams', '2020-02-23 18:42:57', '2020-04-17 06:19:01'),
(26, 'Asesoramiento financiero', 'a:1:{i:0;s:1:\"9\";}', '2020-01-01', '2020-02-01', '62', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Stanley C. Herrick', '2020-02-23 18:43:35', '2020-04-17 06:18:48'),
(27, 'Asesoramiento de marketing', 'a:1:{i:0;s:1:\"9\";}', '2018-03-01', '2022-03-03', '63', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Stanley C. Herrick', '2020-02-23 18:47:37', '2020-04-17 06:18:28'),
(28, 'حل التمويل', 'a:2:{i:0;s:2:\"12\";i:1;s:2:\"13\";}', '2019-01-01', '2020-02-01', '54', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-15 19:55:20', '2020-04-17 12:36:21'),
(29, 'حلول الأعمال', 'a:2:{i:0;s:2:\"12\";i:1;s:2:\"13\";}', '2019-12-01', '2020-01-01', '55', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:29:13', '2020-04-17 12:36:11'),
(30, 'تخطيط الاستثمار', 'a:1:{i:0;s:2:\"13\";}', '2019-01-01', '2019-02-01', '57', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:45:02', '2020-04-17 12:35:59'),
(31, 'التأمين على الحياة', 'a:2:{i:0;s:2:\"11\";i:1;s:2:\"12\";}', '2020-01-01', '2020-02-01', '58', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:47:26', '2020-04-17 12:35:47'),
(32, 'هيكل المبنى', 'a:1:{i:0;s:2:\"11\";}', '2019-02-01', '2020-01-01', '59', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:48:30', '2020-04-17 12:35:35'),
(33, 'السوق الرقمي', 'a:1:{i:0;s:2:\"11\";}', '2020-01-01', '2020-02-01', '60', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:49:14', '2020-04-17 12:35:24');
INSERT INTO `works` (`id`, `title`, `categories_id`, `start_date`, `end_date`, `image`, `description`, `lang`, `clients`, `created_at`, `updated_at`) VALUES
(34, 'نصائح تجارية', 'a:1:{i:0;s:2:\"12\";}', '2019-01-01', '2019-10-02', '61', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:50:48', '2020-04-17 12:35:14'),
(35, 'نصائح مالية', 'a:1:{i:0;s:2:\"11\";}', '2019-01-01', '2020-01-01', '62', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:51:49', '2020-04-17 12:34:54'),
(36, 'نصائح التسويق', 'a:1:{i:0;s:2:\"12\";}', '2019-01-01', '2020-01-01', '63', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:54:34', '2020-04-17 12:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `works_categories`
--

CREATE TABLE `works_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works_categories`
--

INSERT INTO `works_categories` (`id`, `name`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Banking', 'publish', 'en', '2020-01-23 20:22:14', '2020-03-04 15:14:53'),
(2, 'Financial', 'publish', 'en', '2020-01-23 20:23:12', '2020-03-04 11:57:50'),
(3, 'Consulting', 'publish', 'en', '2020-01-23 20:23:28', '2020-03-04 11:58:03'),
(5, 'Bancária', 'publish', 'pr', '2020-02-23 16:00:39', '2020-03-04 15:15:38'),
(6, 'Financiera', 'publish', 'pr', '2020-02-23 16:00:51', '2020-03-04 15:14:59'),
(7, 'Consultando', 'publish', 'pr', '2020-02-23 16:01:00', '2020-03-04 15:16:13'),
(8, 'Bancaria', 'publish', 'sn', '2020-02-23 16:01:15', '2020-03-04 15:15:45'),
(9, 'Financiera', 'publish', 'sn', '2020-02-23 16:01:25', '2020-03-04 15:15:05'),
(10, 'Consultante', 'publish', 'sn', '2020-02-23 16:01:37', '2020-03-04 15:16:04'),
(11, 'الخدمات المصرفية', 'publish', 'ar', '2020-03-15 19:35:18', '2020-03-15 19:35:18'),
(12, 'الأمور المالية', 'publish', 'ar', '2020-03-15 19:35:26', '2020-03-15 19:35:31'),
(13, 'مستشار', 'publish', 'ar', '2020-03-15 19:35:41', '2020-03-15 19:35:41');

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
-- Indexes for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `key_features`
--
ALTER TABLE `key_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledgebases`
--
ALTER TABLE `knowledgebases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledgebase_topics`
--
ALTER TABLE `knowledgebase_topics`
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
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_plans`
--
ALTER TABLE `price_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_info_items`
--
ALTER TABLE `contact_info_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `counterups`
--
ALTER TABLE `counterups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events_categories`
--
ALTER TABLE `events_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `header_sliders`
--
ALTER TABLE `header_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `key_features`
--
ALTER TABLE `key_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `knowledgebases`
--
ALTER TABLE `knowledgebases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `knowledgebase_topics`
--
ALTER TABLE `knowledgebase_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `know_abouts`
--
ALTER TABLE `know_abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `price_plans`
--
ALTER TABLE `price_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `support_infos`
--
ALTER TABLE `support_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `works_categories`
--
ALTER TABLE `works_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
