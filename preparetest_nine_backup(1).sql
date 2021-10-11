-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2021 at 07:05 AM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `preparetest`
--

-- --------------------------------------------------------

--
-- Table structure for table `mo_upgrade_log`
--

CREATE TABLE `mo_upgrade_log` (
  `id` bigint NOT NULL,
  `type` bigint NOT NULL,
  `plugin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetversion` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `backtrace` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `userid` bigint NOT NULL,
  `timemodified` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Upgrade logging';

--
-- Dumping data for table `mo_upgrade_log`
--

INSERT INTO `mo_upgrade_log` (`id`, `type`, `plugin`, `version`, `targetversion`, `info`, `details`, `backtrace`, `userid`, `timemodified`) VALUES
(1, 0, 'core', '2019111804', '2019111804', 'Upgrade savepoint reached', NULL, '', 0, 1599457749),
(2, 0, 'core', '2019111804', '2019111804', 'Core installed', NULL, '', 0, 1599457768),
(3, 0, 'antivirus_clamav', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457768),
(4, 0, 'antivirus_clamav', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457768),
(5, 0, 'antivirus_clamav', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457768),
(6, 0, 'availability_completion', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457768),
(7, 0, 'availability_completion', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457768),
(8, 0, 'availability_completion', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457768),
(9, 0, 'availability_date', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457768),
(10, 0, 'availability_date', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457768),
(11, 0, 'availability_date', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457768),
(12, 0, 'availability_grade', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457768),
(13, 0, 'availability_grade', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457768),
(14, 0, 'availability_grade', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457768),
(15, 0, 'availability_group', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457768),
(16, 0, 'availability_group', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457768),
(17, 0, 'availability_group', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457768),
(18, 0, 'availability_grouping', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457768),
(19, 0, 'availability_grouping', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457768),
(20, 0, 'availability_grouping', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457769),
(21, 0, 'availability_profile', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457769),
(22, 0, 'availability_profile', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457769),
(23, 0, 'availability_profile', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457769),
(24, 0, 'qtype_calculated', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457769),
(25, 0, 'qtype_calculated', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457769),
(26, 0, 'qtype_calculated', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457769),
(27, 0, 'qtype_calculatedmulti', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457769),
(28, 0, 'qtype_calculatedmulti', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457769),
(29, 0, 'qtype_calculatedmulti', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457769),
(30, 0, 'qtype_calculatedsimple', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457769),
(31, 0, 'qtype_calculatedsimple', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457769),
(32, 0, 'qtype_calculatedsimple', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457770),
(33, 0, 'qtype_ddimageortext', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457770),
(34, 0, 'qtype_ddimageortext', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457770),
(35, 0, 'qtype_ddimageortext', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457770),
(36, 0, 'qtype_ddmarker', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457770),
(37, 0, 'qtype_ddmarker', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457770),
(38, 0, 'qtype_ddmarker', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457770),
(39, 0, 'qtype_ddwtos', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457770),
(40, 0, 'qtype_ddwtos', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457770),
(41, 0, 'qtype_ddwtos', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457770),
(42, 0, 'qtype_description', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457770),
(43, 0, 'qtype_description', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457770),
(44, 0, 'qtype_description', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457771),
(45, 0, 'qtype_essay', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457771),
(46, 0, 'qtype_essay', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457771),
(47, 0, 'qtype_essay', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457771),
(48, 0, 'qtype_gapselect', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457771),
(49, 0, 'qtype_gapselect', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457771),
(50, 0, 'qtype_gapselect', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457771),
(51, 0, 'qtype_match', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457771),
(52, 0, 'qtype_match', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457771),
(53, 0, 'qtype_match', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457771),
(54, 0, 'qtype_missingtype', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457771),
(55, 0, 'qtype_missingtype', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457771),
(56, 0, 'qtype_missingtype', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457771),
(57, 0, 'qtype_multianswer', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457771),
(58, 0, 'qtype_multianswer', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457771),
(59, 0, 'qtype_multianswer', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457771),
(60, 0, 'qtype_multichoice', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457771),
(61, 0, 'qtype_multichoice', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457771),
(62, 0, 'qtype_multichoice', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457771),
(63, 0, 'qtype_numerical', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457772),
(64, 0, 'qtype_numerical', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457772),
(65, 0, 'qtype_numerical', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457772),
(66, 0, 'qtype_random', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457772),
(67, 0, 'qtype_random', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457772),
(68, 0, 'qtype_random', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457772),
(69, 0, 'qtype_randomsamatch', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457772),
(70, 0, 'qtype_randomsamatch', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457772),
(71, 0, 'qtype_randomsamatch', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457772),
(72, 0, 'qtype_shortanswer', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457772),
(73, 0, 'qtype_shortanswer', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457772),
(74, 0, 'qtype_shortanswer', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457772),
(75, 0, 'qtype_truefalse', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457772),
(76, 0, 'qtype_truefalse', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457772),
(77, 0, 'qtype_truefalse', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457772),
(78, 0, 'mod_assign', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457772),
(79, 0, 'mod_assign', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457772),
(80, 0, 'mod_assign', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457772),
(81, 0, 'mod_assignment', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457772),
(82, 0, 'mod_assignment', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457773),
(83, 0, 'mod_assignment', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457773),
(84, 0, 'mod_book', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457773),
(85, 0, 'mod_book', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457773),
(86, 0, 'mod_book', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457773),
(87, 0, 'mod_chat', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457773),
(88, 0, 'mod_chat', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457773),
(89, 0, 'mod_chat', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457773),
(90, 0, 'mod_choice', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457773),
(91, 0, 'mod_choice', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457773),
(92, 0, 'mod_choice', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457774),
(93, 0, 'mod_data', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457774),
(94, 0, 'mod_data', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457775),
(95, 0, 'mod_data', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457777),
(96, 0, 'mod_feedback', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457777),
(97, 0, 'mod_feedback', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457778),
(98, 0, 'mod_feedback', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457778),
(99, 0, 'mod_folder', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457778),
(100, 0, 'mod_folder', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457779),
(101, 0, 'mod_folder', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457779),
(102, 0, 'mod_forum', NULL, '2019111801', 'Starting plugin installation', NULL, '', 0, 1599457779),
(103, 0, 'mod_forum', '2019111801', '2019111801', 'Upgrade savepoint reached', NULL, '', 0, 1599457779),
(104, 0, 'mod_forum', '2019111801', '2019111801', 'Plugin installed', NULL, '', 0, 1599457780),
(105, 0, 'mod_glossary', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457780),
(106, 0, 'mod_glossary', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457780),
(107, 0, 'mod_glossary', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457781),
(108, 0, 'mod_imscp', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457781),
(109, 0, 'mod_imscp', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457781),
(110, 0, 'mod_imscp', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457781),
(111, 0, 'mod_label', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457781),
(112, 0, 'mod_label', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457781),
(113, 0, 'mod_label', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457781),
(114, 0, 'mod_lesson', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457781),
(115, 0, 'mod_lesson', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457782),
(116, 0, 'mod_lesson', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457782),
(117, 0, 'mod_lti', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457782),
(118, 0, 'mod_lti', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457782),
(119, 0, 'mod_lti', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457783),
(120, 0, 'mod_page', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457783),
(121, 0, 'mod_page', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457783),
(122, 0, 'mod_page', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457783),
(123, 0, 'mod_quiz', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457783),
(124, 0, 'mod_quiz', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457783),
(125, 0, 'mod_quiz', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457784),
(126, 0, 'mod_resource', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457784),
(127, 0, 'mod_resource', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457784),
(128, 0, 'mod_resource', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457784),
(129, 0, 'mod_scorm', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457784),
(130, 0, 'mod_scorm', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457785),
(131, 0, 'mod_scorm', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457785),
(132, 0, 'mod_survey', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457785),
(133, 0, 'mod_survey', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457785),
(134, 0, 'mod_survey', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457786),
(135, 0, 'mod_url', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457786),
(136, 0, 'mod_url', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457786),
(137, 0, 'mod_url', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457786),
(138, 0, 'mod_wiki', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457786),
(139, 0, 'mod_wiki', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457786),
(140, 0, 'mod_wiki', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457787),
(141, 0, 'mod_workshop', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457787),
(142, 0, 'mod_workshop', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457787),
(143, 0, 'mod_workshop', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457789),
(144, 0, 'auth_cas', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457789),
(145, 0, 'auth_cas', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457789),
(146, 0, 'auth_cas', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457789),
(147, 0, 'auth_db', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457789),
(148, 0, 'auth_db', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457789),
(149, 0, 'auth_db', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457789),
(150, 0, 'auth_email', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457789),
(151, 0, 'auth_email', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457789),
(152, 0, 'auth_email', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457789),
(153, 0, 'auth_ldap', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457789),
(154, 0, 'auth_ldap', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457789),
(155, 0, 'auth_ldap', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457790),
(156, 0, 'auth_lti', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457790),
(157, 0, 'auth_lti', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457790),
(158, 0, 'auth_lti', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457790),
(159, 0, 'auth_manual', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457790),
(160, 0, 'auth_manual', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457790),
(161, 0, 'auth_manual', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457790),
(162, 0, 'auth_mnet', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457790),
(163, 0, 'auth_mnet', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457790),
(164, 0, 'auth_mnet', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457790),
(165, 0, 'auth_nologin', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457790),
(166, 0, 'auth_nologin', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457790),
(167, 0, 'auth_nologin', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457790),
(168, 0, 'auth_none', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(169, 0, 'auth_none', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(170, 0, 'auth_none', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(171, 0, 'auth_oauth2', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(172, 0, 'auth_oauth2', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(173, 0, 'auth_oauth2', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(174, 0, 'auth_shibboleth', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(175, 0, 'auth_shibboleth', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(176, 0, 'auth_shibboleth', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(177, 0, 'auth_webservice', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(178, 0, 'auth_webservice', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(179, 0, 'auth_webservice', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(180, 0, 'calendartype_gregorian', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(181, 0, 'calendartype_gregorian', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(182, 0, 'calendartype_gregorian', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(183, 0, 'customfield_checkbox', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(184, 0, 'customfield_checkbox', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(185, 0, 'customfield_checkbox', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(186, 0, 'customfield_date', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(187, 0, 'customfield_date', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(188, 0, 'customfield_date', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(189, 0, 'customfield_select', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(190, 0, 'customfield_select', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(191, 0, 'customfield_select', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(192, 0, 'customfield_text', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(193, 0, 'customfield_text', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(194, 0, 'customfield_text', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(195, 0, 'customfield_textarea', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(196, 0, 'customfield_textarea', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(197, 0, 'customfield_textarea', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(198, 0, 'enrol_category', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457791),
(199, 0, 'enrol_category', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457791),
(200, 0, 'enrol_category', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457791),
(201, 0, 'enrol_cohort', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(202, 0, 'enrol_cohort', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(203, 0, 'enrol_cohort', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(204, 0, 'enrol_database', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(205, 0, 'enrol_database', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(206, 0, 'enrol_database', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(207, 0, 'enrol_flatfile', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(208, 0, 'enrol_flatfile', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(209, 0, 'enrol_flatfile', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(210, 0, 'enrol_guest', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(211, 0, 'enrol_guest', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(212, 0, 'enrol_guest', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(213, 0, 'enrol_imsenterprise', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(214, 0, 'enrol_imsenterprise', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(215, 0, 'enrol_imsenterprise', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(216, 0, 'enrol_ldap', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(217, 0, 'enrol_ldap', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(218, 0, 'enrol_ldap', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(219, 0, 'enrol_lti', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(220, 0, 'enrol_lti', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(221, 0, 'enrol_lti', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(222, 0, 'enrol_manual', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(223, 0, 'enrol_manual', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(224, 0, 'enrol_manual', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(225, 0, 'enrol_meta', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(226, 0, 'enrol_meta', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(227, 0, 'enrol_meta', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(228, 0, 'enrol_mnet', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(229, 0, 'enrol_mnet', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457792),
(230, 0, 'enrol_mnet', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457792),
(231, 0, 'enrol_paypal', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457792),
(232, 0, 'enrol_paypal', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457793),
(233, 0, 'enrol_paypal', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457793),
(234, 0, 'enrol_self', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457793),
(235, 0, 'enrol_self', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457793),
(236, 0, 'enrol_self', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457793),
(237, 0, 'message_airnotifier', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457793),
(238, 0, 'message_airnotifier', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457793),
(239, 0, 'message_airnotifier', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457793),
(240, 0, 'message_email', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457793),
(241, 0, 'message_email', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457793),
(242, 0, 'message_email', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457793),
(243, 0, 'message_jabber', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457793),
(244, 0, 'message_jabber', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457793),
(245, 0, 'message_jabber', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457794),
(246, 0, 'message_popup', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457794),
(247, 0, 'message_popup', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457794),
(248, 0, 'message_popup', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457794),
(249, 0, 'block_activity_modules', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457794),
(250, 0, 'block_activity_modules', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457794),
(251, 0, 'block_activity_modules', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457794),
(252, 0, 'block_activity_results', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457794),
(253, 0, 'block_activity_results', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457794),
(254, 0, 'block_activity_results', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457794),
(255, 0, 'block_admin_bookmarks', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457794),
(256, 0, 'block_admin_bookmarks', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457794),
(257, 0, 'block_admin_bookmarks', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457794),
(258, 0, 'block_badges', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457794),
(259, 0, 'block_badges', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457794),
(260, 0, 'block_badges', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457794),
(261, 0, 'block_blog_menu', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457794),
(262, 0, 'block_blog_menu', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457794),
(263, 0, 'block_blog_menu', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457795),
(264, 0, 'block_blog_recent', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457795),
(265, 0, 'block_blog_recent', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457795),
(266, 0, 'block_blog_recent', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457795),
(267, 0, 'block_blog_tags', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457795),
(268, 0, 'block_blog_tags', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457795),
(269, 0, 'block_blog_tags', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457795),
(270, 0, 'block_calendar_month', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457795),
(271, 0, 'block_calendar_month', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457795),
(272, 0, 'block_calendar_month', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457795),
(273, 0, 'block_calendar_upcoming', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457796),
(274, 0, 'block_calendar_upcoming', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457796),
(275, 0, 'block_calendar_upcoming', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457796),
(276, 0, 'block_comments', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457796),
(277, 0, 'block_comments', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457796),
(278, 0, 'block_comments', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457796),
(279, 0, 'block_completionstatus', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457796),
(280, 0, 'block_completionstatus', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457796),
(281, 0, 'block_completionstatus', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457796),
(282, 0, 'block_course_list', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457796),
(283, 0, 'block_course_list', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457796),
(284, 0, 'block_course_list', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457797),
(285, 0, 'block_course_summary', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457797),
(286, 0, 'block_course_summary', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457797),
(287, 0, 'block_course_summary', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457798),
(288, 0, 'block_feedback', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457798),
(289, 0, 'block_feedback', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457798),
(290, 0, 'block_feedback', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457798),
(291, 0, 'block_globalsearch', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457798),
(292, 0, 'block_globalsearch', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457798),
(293, 0, 'block_globalsearch', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457799),
(294, 0, 'block_glossary_random', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457799),
(295, 0, 'block_glossary_random', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457799),
(296, 0, 'block_glossary_random', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457799),
(297, 0, 'block_html', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457799),
(298, 0, 'block_html', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457799),
(299, 0, 'block_html', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457799),
(300, 0, 'block_login', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457799),
(301, 0, 'block_login', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457800),
(302, 0, 'block_login', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457800),
(303, 0, 'block_lp', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457800),
(304, 0, 'block_lp', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457800),
(305, 0, 'block_lp', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457800),
(306, 0, 'block_mentees', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457800),
(307, 0, 'block_mentees', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457800),
(308, 0, 'block_mentees', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457800),
(309, 0, 'block_mnet_hosts', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457800),
(310, 0, 'block_mnet_hosts', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457800),
(311, 0, 'block_mnet_hosts', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457801),
(312, 0, 'block_myoverview', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457801),
(313, 0, 'block_myoverview', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457801),
(314, 0, 'block_myoverview', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457801),
(315, 0, 'block_myprofile', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457801),
(316, 0, 'block_myprofile', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457801),
(317, 0, 'block_myprofile', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457802),
(318, 0, 'block_navigation', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457802),
(319, 0, 'block_navigation', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457802),
(320, 0, 'block_navigation', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457802),
(321, 0, 'block_news_items', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457802),
(322, 0, 'block_news_items', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457802),
(323, 0, 'block_news_items', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457803),
(324, 0, 'block_online_users', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457803),
(325, 0, 'block_online_users', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457803),
(326, 0, 'block_online_users', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457803),
(327, 0, 'block_private_files', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457803),
(328, 0, 'block_private_files', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457803),
(329, 0, 'block_private_files', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457804),
(330, 0, 'block_quiz_results', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457804),
(331, 0, 'block_quiz_results', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457804),
(332, 0, 'block_quiz_results', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457804),
(333, 0, 'block_recent_activity', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457804),
(334, 0, 'block_recent_activity', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457804),
(335, 0, 'block_recent_activity', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457804),
(336, 0, 'block_recentlyaccessedcourses', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457804),
(337, 0, 'block_recentlyaccessedcourses', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457804),
(338, 0, 'block_recentlyaccessedcourses', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457804),
(339, 0, 'block_recentlyaccesseditems', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457804),
(340, 0, 'block_recentlyaccesseditems', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457804),
(341, 0, 'block_recentlyaccesseditems', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457805),
(342, 0, 'block_rss_client', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457805),
(343, 0, 'block_rss_client', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457805),
(344, 0, 'block_rss_client', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457805),
(345, 0, 'block_search_forums', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457805),
(346, 0, 'block_search_forums', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457805),
(347, 0, 'block_search_forums', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457805),
(348, 0, 'block_section_links', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457805),
(349, 0, 'block_section_links', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457805),
(350, 0, 'block_section_links', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457805),
(351, 0, 'block_selfcompletion', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457806),
(352, 0, 'block_selfcompletion', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457806),
(353, 0, 'block_selfcompletion', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457806),
(354, 0, 'block_settings', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457806),
(355, 0, 'block_settings', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457806),
(356, 0, 'block_settings', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457806),
(357, 0, 'block_site_main_menu', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457806),
(358, 0, 'block_site_main_menu', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457806),
(359, 0, 'block_site_main_menu', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457806),
(360, 0, 'block_social_activities', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457806),
(361, 0, 'block_social_activities', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457806),
(362, 0, 'block_social_activities', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457807),
(363, 0, 'block_starredcourses', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457807),
(364, 0, 'block_starredcourses', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457807),
(365, 0, 'block_starredcourses', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457807),
(366, 0, 'block_tag_flickr', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457807),
(367, 0, 'block_tag_flickr', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457807),
(368, 0, 'block_tag_flickr', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457807),
(369, 0, 'block_tag_youtube', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457807),
(370, 0, 'block_tag_youtube', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457807),
(371, 0, 'block_tag_youtube', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457807),
(372, 0, 'block_tags', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457807),
(373, 0, 'block_tags', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457807),
(374, 0, 'block_tags', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457807),
(375, 0, 'block_timeline', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457807),
(376, 0, 'block_timeline', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457807),
(377, 0, 'block_timeline', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457807),
(378, 0, 'media_html5audio', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457808),
(379, 0, 'media_html5audio', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457808),
(380, 0, 'media_html5audio', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457808),
(381, 0, 'media_html5video', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457808),
(382, 0, 'media_html5video', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457808),
(383, 0, 'media_html5video', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457808),
(384, 0, 'media_swf', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457808),
(385, 0, 'media_swf', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457808),
(386, 0, 'media_swf', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457808),
(387, 0, 'media_videojs', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457808),
(388, 0, 'media_videojs', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457808),
(389, 0, 'media_videojs', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457808),
(390, 0, 'media_vimeo', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457808),
(391, 0, 'media_vimeo', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457808),
(392, 0, 'media_vimeo', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457808),
(393, 0, 'media_youtube', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457808),
(394, 0, 'media_youtube', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457808),
(395, 0, 'media_youtube', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457808),
(396, 0, 'filter_activitynames', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457808),
(397, 0, 'filter_activitynames', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457808),
(398, 0, 'filter_activitynames', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457809),
(399, 0, 'filter_algebra', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457809),
(400, 0, 'filter_algebra', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457809),
(401, 0, 'filter_algebra', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457809),
(402, 0, 'filter_censor', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457809),
(403, 0, 'filter_censor', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457809),
(404, 0, 'filter_censor', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457809),
(405, 0, 'filter_data', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457809),
(406, 0, 'filter_data', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457809),
(407, 0, 'filter_data', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457809),
(408, 0, 'filter_displayh5p', NULL, '2020031700', 'Starting plugin installation', NULL, '', 0, 1599457809),
(409, 0, 'filter_displayh5p', '2020031700', '2020031700', 'Upgrade savepoint reached', NULL, '', 0, 1599457809),
(410, 0, 'filter_displayh5p', '2020031700', '2020031700', 'Plugin installed', NULL, '', 0, 1599457809),
(411, 0, 'filter_emailprotect', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457809),
(412, 0, 'filter_emailprotect', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457809),
(413, 0, 'filter_emailprotect', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457809),
(414, 0, 'filter_emoticon', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457809),
(415, 0, 'filter_emoticon', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457810),
(416, 0, 'filter_emoticon', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457810),
(417, 0, 'filter_glossary', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457810),
(418, 0, 'filter_glossary', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457810),
(419, 0, 'filter_glossary', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457810),
(420, 0, 'filter_mathjaxloader', NULL, '2019111801', 'Starting plugin installation', NULL, '', 0, 1599457810),
(421, 0, 'filter_mathjaxloader', '2019111801', '2019111801', 'Upgrade savepoint reached', NULL, '', 0, 1599457810),
(422, 0, 'filter_mathjaxloader', '2019111801', '2019111801', 'Plugin installed', NULL, '', 0, 1599457810),
(423, 0, 'filter_mediaplugin', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457810),
(424, 0, 'filter_mediaplugin', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457810),
(425, 0, 'filter_mediaplugin', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457810),
(426, 0, 'filter_multilang', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457810),
(427, 0, 'filter_multilang', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457810),
(428, 0, 'filter_multilang', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457810),
(429, 0, 'filter_tex', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457810),
(430, 0, 'filter_tex', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457810),
(431, 0, 'filter_tex', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457810),
(432, 0, 'filter_tidy', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457810),
(433, 0, 'filter_tidy', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457810),
(434, 0, 'filter_tidy', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457811),
(435, 0, 'filter_urltolink', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457811),
(436, 0, 'filter_urltolink', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457811),
(437, 0, 'filter_urltolink', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457811),
(438, 0, 'editor_atto', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457811),
(439, 0, 'editor_atto', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457811),
(440, 0, 'editor_atto', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457812),
(441, 0, 'editor_textarea', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457812),
(442, 0, 'editor_textarea', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457812),
(443, 0, 'editor_textarea', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457812),
(444, 0, 'editor_tinymce', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457812),
(445, 0, 'editor_tinymce', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457812),
(446, 0, 'editor_tinymce', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457812),
(447, 0, 'format_singleactivity', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457812),
(448, 0, 'format_singleactivity', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457812),
(449, 0, 'format_singleactivity', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457813),
(450, 0, 'format_social', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457813),
(451, 0, 'format_social', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457813),
(452, 0, 'format_social', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457813),
(453, 0, 'format_topics', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457813),
(454, 0, 'format_topics', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457813),
(455, 0, 'format_topics', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457814),
(456, 0, 'format_weeks', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457814),
(457, 0, 'format_weeks', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457814),
(458, 0, 'format_weeks', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457814),
(459, 0, 'dataformat_csv', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457814),
(460, 0, 'dataformat_csv', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457814),
(461, 0, 'dataformat_csv', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457815),
(462, 0, 'dataformat_excel', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457815),
(463, 0, 'dataformat_excel', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457815),
(464, 0, 'dataformat_excel', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457815),
(465, 0, 'dataformat_html', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457815),
(466, 0, 'dataformat_html', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457816),
(467, 0, 'dataformat_html', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457816),
(468, 0, 'dataformat_json', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457816),
(469, 0, 'dataformat_json', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457816),
(470, 0, 'dataformat_json', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457817),
(471, 0, 'dataformat_ods', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457817),
(472, 0, 'dataformat_ods', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457817),
(473, 0, 'dataformat_ods', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457817),
(474, 0, 'dataformat_pdf', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457817),
(475, 0, 'dataformat_pdf', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457818),
(476, 0, 'dataformat_pdf', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457818),
(477, 0, 'profilefield_checkbox', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457818),
(478, 0, 'profilefield_checkbox', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457818),
(479, 0, 'profilefield_checkbox', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457818),
(480, 0, 'profilefield_datetime', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457818);
INSERT INTO `mo_upgrade_log` (`id`, `type`, `plugin`, `version`, `targetversion`, `info`, `details`, `backtrace`, `userid`, `timemodified`) VALUES
(481, 0, 'profilefield_datetime', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457818),
(482, 0, 'profilefield_datetime', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457819),
(483, 0, 'profilefield_menu', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457819),
(484, 0, 'profilefield_menu', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457819),
(485, 0, 'profilefield_menu', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457819),
(486, 0, 'profilefield_text', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457819),
(487, 0, 'profilefield_text', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457820),
(488, 0, 'profilefield_text', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457820),
(489, 0, 'profilefield_textarea', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457820),
(490, 0, 'profilefield_textarea', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457820),
(491, 0, 'profilefield_textarea', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457820),
(492, 0, 'report_backups', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457820),
(493, 0, 'report_backups', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457820),
(494, 0, 'report_backups', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457821),
(495, 0, 'report_competency', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457821),
(496, 0, 'report_competency', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457821),
(497, 0, 'report_competency', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457822),
(498, 0, 'report_completion', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457822),
(499, 0, 'report_completion', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457822),
(500, 0, 'report_completion', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457822),
(501, 0, 'report_configlog', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457822),
(502, 0, 'report_configlog', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457822),
(503, 0, 'report_configlog', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457823),
(504, 0, 'report_courseoverview', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457823),
(505, 0, 'report_courseoverview', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457823),
(506, 0, 'report_courseoverview', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457823),
(507, 0, 'report_eventlist', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457823),
(508, 0, 'report_eventlist', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457823),
(509, 0, 'report_eventlist', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457823),
(510, 0, 'report_insights', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457823),
(511, 0, 'report_insights', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457823),
(512, 0, 'report_insights', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457823),
(513, 0, 'report_log', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457823),
(514, 0, 'report_log', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457823),
(515, 0, 'report_log', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457824),
(516, 0, 'report_loglive', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457824),
(517, 0, 'report_loglive', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457824),
(518, 0, 'report_loglive', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457824),
(519, 0, 'report_outline', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457824),
(520, 0, 'report_outline', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457824),
(521, 0, 'report_outline', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457824),
(522, 0, 'report_participation', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457824),
(523, 0, 'report_participation', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457824),
(524, 0, 'report_participation', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457825),
(525, 0, 'report_performance', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457825),
(526, 0, 'report_performance', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457825),
(527, 0, 'report_performance', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457825),
(528, 0, 'report_progress', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457825),
(529, 0, 'report_progress', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457825),
(530, 0, 'report_progress', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457825),
(531, 0, 'report_questioninstances', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457825),
(532, 0, 'report_questioninstances', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457825),
(533, 0, 'report_questioninstances', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457826),
(534, 0, 'report_security', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457826),
(535, 0, 'report_security', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457826),
(536, 0, 'report_security', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457826),
(537, 0, 'report_stats', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457826),
(538, 0, 'report_stats', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457826),
(539, 0, 'report_stats', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457826),
(540, 0, 'report_usersessions', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457826),
(541, 0, 'report_usersessions', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457826),
(542, 0, 'report_usersessions', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457827),
(543, 0, 'gradeexport_ods', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457827),
(544, 0, 'gradeexport_ods', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457827),
(545, 0, 'gradeexport_ods', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457827),
(546, 0, 'gradeexport_txt', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457827),
(547, 0, 'gradeexport_txt', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457827),
(548, 0, 'gradeexport_txt', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457827),
(549, 0, 'gradeexport_xls', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457827),
(550, 0, 'gradeexport_xls', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457828),
(551, 0, 'gradeexport_xls', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457828),
(552, 0, 'gradeexport_xml', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457828),
(553, 0, 'gradeexport_xml', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457828),
(554, 0, 'gradeexport_xml', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457828),
(555, 0, 'gradeimport_csv', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457828),
(556, 0, 'gradeimport_csv', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457828),
(557, 0, 'gradeimport_csv', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457828),
(558, 0, 'gradeimport_direct', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457828),
(559, 0, 'gradeimport_direct', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457828),
(560, 0, 'gradeimport_direct', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457829),
(561, 0, 'gradeimport_xml', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457829),
(562, 0, 'gradeimport_xml', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457829),
(563, 0, 'gradeimport_xml', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457829),
(564, 0, 'gradereport_grader', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457829),
(565, 0, 'gradereport_grader', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457829),
(566, 0, 'gradereport_grader', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457829),
(567, 0, 'gradereport_history', NULL, '2019111801', 'Starting plugin installation', NULL, '', 0, 1599457829),
(568, 0, 'gradereport_history', '2019111801', '2019111801', 'Upgrade savepoint reached', NULL, '', 0, 1599457829),
(569, 0, 'gradereport_history', '2019111801', '2019111801', 'Plugin installed', NULL, '', 0, 1599457829),
(570, 0, 'gradereport_outcomes', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457829),
(571, 0, 'gradereport_outcomes', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457829),
(572, 0, 'gradereport_outcomes', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457830),
(573, 0, 'gradereport_overview', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457830),
(574, 0, 'gradereport_overview', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457830),
(575, 0, 'gradereport_overview', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457830),
(576, 0, 'gradereport_singleview', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457830),
(577, 0, 'gradereport_singleview', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457830),
(578, 0, 'gradereport_singleview', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457830),
(579, 0, 'gradereport_user', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457830),
(580, 0, 'gradereport_user', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457830),
(581, 0, 'gradereport_user', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457831),
(582, 0, 'gradingform_guide', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457831),
(583, 0, 'gradingform_guide', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457831),
(584, 0, 'gradingform_guide', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457832),
(585, 0, 'gradingform_rubric', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457832),
(586, 0, 'gradingform_rubric', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457832),
(587, 0, 'gradingform_rubric', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457832),
(588, 0, 'mlbackend_php', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457832),
(589, 0, 'mlbackend_php', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457832),
(590, 0, 'mlbackend_php', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457832),
(591, 0, 'mlbackend_python', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457832),
(592, 0, 'mlbackend_python', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457832),
(593, 0, 'mlbackend_python', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457832),
(594, 0, 'mnetservice_enrol', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457832),
(595, 0, 'mnetservice_enrol', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457832),
(596, 0, 'mnetservice_enrol', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457832),
(597, 0, 'webservice_rest', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457832),
(598, 0, 'webservice_rest', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457832),
(599, 0, 'webservice_rest', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457833),
(600, 0, 'webservice_soap', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457833),
(601, 0, 'webservice_soap', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457833),
(602, 0, 'webservice_soap', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457833),
(603, 0, 'webservice_xmlrpc', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457833),
(604, 0, 'webservice_xmlrpc', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457833),
(605, 0, 'webservice_xmlrpc', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457833),
(606, 0, 'repository_areafiles', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457833),
(607, 0, 'repository_areafiles', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457833),
(608, 0, 'repository_areafiles', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457833),
(609, 0, 'repository_boxnet', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457833),
(610, 0, 'repository_boxnet', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457833),
(611, 0, 'repository_boxnet', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457833),
(612, 0, 'repository_coursefiles', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457833),
(613, 0, 'repository_coursefiles', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457833),
(614, 0, 'repository_coursefiles', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457834),
(615, 0, 'repository_dropbox', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457834),
(616, 0, 'repository_dropbox', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457834),
(617, 0, 'repository_dropbox', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457834),
(618, 0, 'repository_equella', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457834),
(619, 0, 'repository_equella', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457834),
(620, 0, 'repository_equella', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457834),
(621, 0, 'repository_filesystem', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457834),
(622, 0, 'repository_filesystem', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457834),
(623, 0, 'repository_filesystem', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457835),
(624, 0, 'repository_flickr', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457835),
(625, 0, 'repository_flickr', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457835),
(626, 0, 'repository_flickr', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457835),
(627, 0, 'repository_flickr_public', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457835),
(628, 0, 'repository_flickr_public', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457835),
(629, 0, 'repository_flickr_public', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457835),
(630, 0, 'repository_googledocs', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457835),
(631, 0, 'repository_googledocs', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457835),
(632, 0, 'repository_googledocs', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457835),
(633, 0, 'repository_local', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457835),
(634, 0, 'repository_local', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457835),
(635, 0, 'repository_local', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457835),
(636, 0, 'repository_merlot', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457835),
(637, 0, 'repository_merlot', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457835),
(638, 0, 'repository_merlot', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457836),
(639, 0, 'repository_nextcloud', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457836),
(640, 0, 'repository_nextcloud', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457836),
(641, 0, 'repository_nextcloud', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457836),
(642, 0, 'repository_onedrive', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457836),
(643, 0, 'repository_onedrive', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457836),
(644, 0, 'repository_onedrive', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457836),
(645, 0, 'repository_picasa', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457836),
(646, 0, 'repository_picasa', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457836),
(647, 0, 'repository_picasa', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457836),
(648, 0, 'repository_recent', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457836),
(649, 0, 'repository_recent', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457836),
(650, 0, 'repository_recent', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457836),
(651, 0, 'repository_s3', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457836),
(652, 0, 'repository_s3', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457836),
(653, 0, 'repository_s3', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457837),
(654, 0, 'repository_skydrive', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457837),
(655, 0, 'repository_skydrive', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457837),
(656, 0, 'repository_skydrive', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457837),
(657, 0, 'repository_upload', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457837),
(658, 0, 'repository_upload', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457837),
(659, 0, 'repository_upload', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457837),
(660, 0, 'repository_url', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457837),
(661, 0, 'repository_url', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457837),
(662, 0, 'repository_url', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457837),
(663, 0, 'repository_user', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457837),
(664, 0, 'repository_user', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457837),
(665, 0, 'repository_user', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457838),
(666, 0, 'repository_webdav', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457838),
(667, 0, 'repository_webdav', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457838),
(668, 0, 'repository_webdav', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457838),
(669, 0, 'repository_wikimedia', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457838),
(670, 0, 'repository_wikimedia', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457838),
(671, 0, 'repository_wikimedia', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457838),
(672, 0, 'repository_youtube', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457838),
(673, 0, 'repository_youtube', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457838),
(674, 0, 'repository_youtube', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457839),
(675, 0, 'portfolio_boxnet', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457839),
(676, 0, 'portfolio_boxnet', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457839),
(677, 0, 'portfolio_boxnet', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457839),
(678, 0, 'portfolio_download', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457839),
(679, 0, 'portfolio_download', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457839),
(680, 0, 'portfolio_download', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457839),
(681, 0, 'portfolio_flickr', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457839),
(682, 0, 'portfolio_flickr', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457839),
(683, 0, 'portfolio_flickr', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457839),
(684, 0, 'portfolio_googledocs', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457839),
(685, 0, 'portfolio_googledocs', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457839),
(686, 0, 'portfolio_googledocs', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457839),
(687, 0, 'portfolio_mahara', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457839),
(688, 0, 'portfolio_mahara', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457839),
(689, 0, 'portfolio_mahara', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457840),
(690, 0, 'portfolio_picasa', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457840),
(691, 0, 'portfolio_picasa', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457840),
(692, 0, 'portfolio_picasa', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457840),
(693, 0, 'search_simpledb', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457840),
(694, 0, 'search_simpledb', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457841),
(695, 0, 'search_simpledb', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457841),
(696, 0, 'search_solr', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457841),
(697, 0, 'search_solr', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457841),
(698, 0, 'search_solr', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457841),
(699, 0, 'qbehaviour_adaptive', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457842),
(700, 0, 'qbehaviour_adaptive', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457842),
(701, 0, 'qbehaviour_adaptive', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457842),
(702, 0, 'qbehaviour_adaptivenopenalty', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457842),
(703, 0, 'qbehaviour_adaptivenopenalty', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457842),
(704, 0, 'qbehaviour_adaptivenopenalty', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457842),
(705, 0, 'qbehaviour_deferredcbm', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457842),
(706, 0, 'qbehaviour_deferredcbm', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457842),
(707, 0, 'qbehaviour_deferredcbm', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457843),
(708, 0, 'qbehaviour_deferredfeedback', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457843),
(709, 0, 'qbehaviour_deferredfeedback', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457843),
(710, 0, 'qbehaviour_deferredfeedback', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457843),
(711, 0, 'qbehaviour_immediatecbm', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457843),
(712, 0, 'qbehaviour_immediatecbm', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457843),
(713, 0, 'qbehaviour_immediatecbm', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457843),
(714, 0, 'qbehaviour_immediatefeedback', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457843),
(715, 0, 'qbehaviour_immediatefeedback', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457843),
(716, 0, 'qbehaviour_immediatefeedback', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457843),
(717, 0, 'qbehaviour_informationitem', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457843),
(718, 0, 'qbehaviour_informationitem', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457843),
(719, 0, 'qbehaviour_informationitem', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457843),
(720, 0, 'qbehaviour_interactive', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457843),
(721, 0, 'qbehaviour_interactive', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457844),
(722, 0, 'qbehaviour_interactive', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457844),
(723, 0, 'qbehaviour_interactivecountback', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457844),
(724, 0, 'qbehaviour_interactivecountback', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457844),
(725, 0, 'qbehaviour_interactivecountback', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457844),
(726, 0, 'qbehaviour_manualgraded', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457844),
(727, 0, 'qbehaviour_manualgraded', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457844),
(728, 0, 'qbehaviour_manualgraded', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457844),
(729, 0, 'qbehaviour_missing', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457844),
(730, 0, 'qbehaviour_missing', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457845),
(731, 0, 'qbehaviour_missing', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457845),
(732, 0, 'qformat_aiken', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457845),
(733, 0, 'qformat_aiken', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457845),
(734, 0, 'qformat_aiken', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457845),
(735, 0, 'qformat_blackboard_six', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457845),
(736, 0, 'qformat_blackboard_six', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457845),
(737, 0, 'qformat_blackboard_six', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457845),
(738, 0, 'qformat_examview', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457845),
(739, 0, 'qformat_examview', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457845),
(740, 0, 'qformat_examview', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457845),
(741, 0, 'qformat_gift', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457845),
(742, 0, 'qformat_gift', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457845),
(743, 0, 'qformat_gift', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457845),
(744, 0, 'qformat_missingword', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457845),
(745, 0, 'qformat_missingword', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457845),
(746, 0, 'qformat_missingword', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(747, 0, 'qformat_multianswer', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457846),
(748, 0, 'qformat_multianswer', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(749, 0, 'qformat_multianswer', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(750, 0, 'qformat_webct', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457846),
(751, 0, 'qformat_webct', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(752, 0, 'qformat_webct', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(753, 0, 'qformat_xhtml', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457846),
(754, 0, 'qformat_xhtml', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(755, 0, 'qformat_xhtml', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(756, 0, 'qformat_xml', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457846),
(757, 0, 'qformat_xml', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(758, 0, 'qformat_xml', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(759, 0, 'tool_analytics', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457846),
(760, 0, 'tool_analytics', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(761, 0, 'tool_analytics', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(762, 0, 'tool_availabilityconditions', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457846),
(763, 0, 'tool_availabilityconditions', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(764, 0, 'tool_availabilityconditions', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(765, 0, 'tool_behat', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457846),
(766, 0, 'tool_behat', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(767, 0, 'tool_behat', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(768, 0, 'tool_capability', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457846),
(769, 0, 'tool_capability', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(770, 0, 'tool_capability', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(771, 0, 'tool_cohortroles', NULL, '2019111801', 'Starting plugin installation', NULL, '', 0, 1599457846),
(772, 0, 'tool_cohortroles', '2019111801', '2019111801', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(773, 0, 'tool_cohortroles', '2019111801', '2019111801', 'Plugin installed', NULL, '', 0, 1599457846),
(774, 0, 'tool_customlang', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457846),
(775, 0, 'tool_customlang', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(776, 0, 'tool_customlang', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457846),
(777, 0, 'tool_dataprivacy', NULL, '2019111801', 'Starting plugin installation', NULL, '', 0, 1599457846),
(778, 0, 'tool_dataprivacy', '2019111801', '2019111801', 'Upgrade savepoint reached', NULL, '', 0, 1599457846),
(779, 0, 'tool_dataprivacy', '2019111801', '2019111801', 'Plugin installed', NULL, '', 0, 1599457847),
(780, 0, 'tool_dbtransfer', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(781, 0, 'tool_dbtransfer', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(782, 0, 'tool_dbtransfer', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(783, 0, 'tool_filetypes', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(784, 0, 'tool_filetypes', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(785, 0, 'tool_filetypes', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(786, 0, 'tool_generator', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(787, 0, 'tool_generator', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(788, 0, 'tool_generator', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(789, 0, 'tool_health', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(790, 0, 'tool_health', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(791, 0, 'tool_health', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(792, 0, 'tool_httpsreplace', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(793, 0, 'tool_httpsreplace', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(794, 0, 'tool_httpsreplace', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(795, 0, 'tool_innodb', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(796, 0, 'tool_innodb', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(797, 0, 'tool_innodb', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(798, 0, 'tool_installaddon', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(799, 0, 'tool_installaddon', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(800, 0, 'tool_installaddon', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(801, 0, 'tool_langimport', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(802, 0, 'tool_langimport', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(803, 0, 'tool_langimport', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(804, 0, 'tool_log', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(805, 0, 'tool_log', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(806, 0, 'tool_log', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(807, 0, 'tool_lp', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(808, 0, 'tool_lp', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(809, 0, 'tool_lp', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(810, 0, 'tool_lpimportcsv', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(811, 0, 'tool_lpimportcsv', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(812, 0, 'tool_lpimportcsv', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457847),
(813, 0, 'tool_lpmigrate', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457847),
(814, 0, 'tool_lpmigrate', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457847),
(815, 0, 'tool_lpmigrate', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457848),
(816, 0, 'tool_messageinbound', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457848),
(817, 0, 'tool_messageinbound', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457848),
(818, 0, 'tool_messageinbound', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457848),
(819, 0, 'tool_mobile', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457848),
(820, 0, 'tool_mobile', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457848),
(821, 0, 'tool_mobile', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457848),
(822, 0, 'tool_monitor', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457848),
(823, 0, 'tool_monitor', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457848),
(824, 0, 'tool_monitor', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457849),
(825, 0, 'tool_multilangupgrade', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457849),
(826, 0, 'tool_multilangupgrade', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457849),
(827, 0, 'tool_multilangupgrade', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457849),
(828, 0, 'tool_oauth2', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457849),
(829, 0, 'tool_oauth2', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457849),
(830, 0, 'tool_oauth2', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457849),
(831, 0, 'tool_phpunit', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457849),
(832, 0, 'tool_phpunit', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457849),
(833, 0, 'tool_phpunit', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457849),
(834, 0, 'tool_policy', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457849),
(835, 0, 'tool_policy', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457849),
(836, 0, 'tool_policy', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457849),
(837, 0, 'tool_profiling', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457849),
(838, 0, 'tool_profiling', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457849),
(839, 0, 'tool_profiling', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457849),
(840, 0, 'tool_recyclebin', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457849),
(841, 0, 'tool_recyclebin', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457849),
(842, 0, 'tool_recyclebin', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457850),
(843, 0, 'tool_replace', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457850),
(844, 0, 'tool_replace', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457850),
(845, 0, 'tool_replace', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457850),
(846, 0, 'tool_spamcleaner', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457850),
(847, 0, 'tool_spamcleaner', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457850),
(848, 0, 'tool_spamcleaner', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457851),
(849, 0, 'tool_task', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457851),
(850, 0, 'tool_task', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457851),
(851, 0, 'tool_task', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457851),
(852, 0, 'tool_templatelibrary', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457851),
(853, 0, 'tool_templatelibrary', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457851),
(854, 0, 'tool_templatelibrary', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457851),
(855, 0, 'tool_unsuproles', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457851),
(856, 0, 'tool_unsuproles', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457851),
(857, 0, 'tool_unsuproles', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457851),
(858, 0, 'tool_uploadcourse', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457851),
(859, 0, 'tool_uploadcourse', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457851),
(860, 0, 'tool_uploadcourse', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457851),
(861, 0, 'tool_uploaduser', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457851),
(862, 0, 'tool_uploaduser', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457851),
(863, 0, 'tool_uploaduser', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457851),
(864, 0, 'tool_usertours', NULL, '2019111801', 'Starting plugin installation', NULL, '', 0, 1599457851),
(865, 0, 'tool_usertours', '2019111801', '2019111801', 'Upgrade savepoint reached', NULL, '', 0, 1599457851),
(866, 0, 'tool_usertours', '2019111801', '2019111801', 'Plugin installed', NULL, '', 0, 1599457853),
(867, 0, 'tool_xmldb', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457853),
(868, 0, 'tool_xmldb', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457853),
(869, 0, 'tool_xmldb', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457853),
(870, 0, 'cachestore_apcu', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457853),
(871, 0, 'cachestore_apcu', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457853),
(872, 0, 'cachestore_apcu', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457854),
(873, 0, 'cachestore_file', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457854),
(874, 0, 'cachestore_file', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457854),
(875, 0, 'cachestore_file', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457854),
(876, 0, 'cachestore_memcached', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457854),
(877, 0, 'cachestore_memcached', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457854),
(878, 0, 'cachestore_memcached', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457854),
(879, 0, 'cachestore_mongodb', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457854),
(880, 0, 'cachestore_mongodb', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457854),
(881, 0, 'cachestore_mongodb', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457854),
(882, 0, 'cachestore_redis', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457854),
(883, 0, 'cachestore_redis', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457854),
(884, 0, 'cachestore_redis', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457854),
(885, 0, 'cachestore_session', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457854),
(886, 0, 'cachestore_session', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457854),
(887, 0, 'cachestore_session', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457855),
(888, 0, 'cachestore_static', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457855),
(889, 0, 'cachestore_static', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457855),
(890, 0, 'cachestore_static', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457855),
(891, 0, 'cachelock_file', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457855),
(892, 0, 'cachelock_file', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457855),
(893, 0, 'cachelock_file', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457855),
(894, 0, 'fileconverter_googledrive', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457855),
(895, 0, 'fileconverter_googledrive', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457855),
(896, 0, 'fileconverter_googledrive', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457855),
(897, 0, 'fileconverter_unoconv', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457855),
(898, 0, 'fileconverter_unoconv', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457855),
(899, 0, 'fileconverter_unoconv', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457856),
(900, 0, 'theme_boost', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457856),
(901, 0, 'theme_boost', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457856),
(902, 0, 'theme_boost', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457856),
(903, 0, 'theme_classic', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457856),
(904, 0, 'theme_classic', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457856),
(905, 0, 'theme_classic', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457856),
(906, 0, 'assignsubmission_comments', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457856),
(907, 0, 'assignsubmission_comments', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457856),
(908, 0, 'assignsubmission_comments', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457857),
(909, 0, 'assignsubmission_file', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457857),
(910, 0, 'assignsubmission_file', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457857),
(911, 0, 'assignsubmission_file', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457857),
(912, 0, 'assignsubmission_onlinetext', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457857),
(913, 0, 'assignsubmission_onlinetext', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457857),
(914, 0, 'assignsubmission_onlinetext', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457858),
(915, 0, 'assignfeedback_comments', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457858),
(916, 0, 'assignfeedback_comments', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457858),
(917, 0, 'assignfeedback_comments', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457858),
(918, 0, 'assignfeedback_editpdf', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457858),
(919, 0, 'assignfeedback_editpdf', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457858),
(920, 0, 'assignfeedback_editpdf', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457859),
(921, 0, 'assignfeedback_file', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457859),
(922, 0, 'assignfeedback_file', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457859),
(923, 0, 'assignfeedback_file', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457859),
(924, 0, 'assignfeedback_offline', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457859),
(925, 0, 'assignfeedback_offline', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457859),
(926, 0, 'assignfeedback_offline', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457859),
(927, 0, 'assignment_offline', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457859),
(928, 0, 'assignment_offline', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457859),
(929, 0, 'assignment_offline', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457860),
(930, 0, 'assignment_online', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457860),
(931, 0, 'assignment_online', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457860),
(932, 0, 'assignment_online', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457860),
(933, 0, 'assignment_upload', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457860),
(934, 0, 'assignment_upload', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457860),
(935, 0, 'assignment_upload', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457860),
(936, 0, 'assignment_uploadsingle', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457860),
(937, 0, 'assignment_uploadsingle', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457860),
(938, 0, 'assignment_uploadsingle', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457860),
(939, 0, 'booktool_exportimscp', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457860),
(940, 0, 'booktool_exportimscp', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457860),
(941, 0, 'booktool_exportimscp', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457860),
(942, 0, 'booktool_importhtml', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457860),
(943, 0, 'booktool_importhtml', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457860),
(944, 0, 'booktool_importhtml', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457860),
(945, 0, 'booktool_print', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457860),
(946, 0, 'booktool_print', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457860),
(947, 0, 'booktool_print', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457860),
(948, 0, 'datafield_checkbox', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457860);
INSERT INTO `mo_upgrade_log` (`id`, `type`, `plugin`, `version`, `targetversion`, `info`, `details`, `backtrace`, `userid`, `timemodified`) VALUES
(949, 0, 'datafield_checkbox', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457860),
(950, 0, 'datafield_checkbox', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457860),
(951, 0, 'datafield_date', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457860),
(952, 0, 'datafield_date', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457860),
(953, 0, 'datafield_date', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457860),
(954, 0, 'datafield_file', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457860),
(955, 0, 'datafield_file', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(956, 0, 'datafield_file', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(957, 0, 'datafield_latlong', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(958, 0, 'datafield_latlong', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(959, 0, 'datafield_latlong', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(960, 0, 'datafield_menu', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(961, 0, 'datafield_menu', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(962, 0, 'datafield_menu', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(963, 0, 'datafield_multimenu', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(964, 0, 'datafield_multimenu', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(965, 0, 'datafield_multimenu', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(966, 0, 'datafield_number', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(967, 0, 'datafield_number', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(968, 0, 'datafield_number', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(969, 0, 'datafield_picture', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(970, 0, 'datafield_picture', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(971, 0, 'datafield_picture', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(972, 0, 'datafield_radiobutton', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(973, 0, 'datafield_radiobutton', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(974, 0, 'datafield_radiobutton', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(975, 0, 'datafield_text', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(976, 0, 'datafield_text', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(977, 0, 'datafield_text', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(978, 0, 'datafield_textarea', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(979, 0, 'datafield_textarea', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(980, 0, 'datafield_textarea', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(981, 0, 'datafield_url', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(982, 0, 'datafield_url', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457861),
(983, 0, 'datafield_url', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457861),
(984, 0, 'datapreset_imagegallery', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457861),
(985, 0, 'datapreset_imagegallery', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457862),
(986, 0, 'datapreset_imagegallery', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457862),
(987, 0, 'forumreport_summary', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457862),
(988, 0, 'forumreport_summary', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457862),
(989, 0, 'forumreport_summary', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457862),
(990, 0, 'ltiservice_basicoutcomes', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457862),
(991, 0, 'ltiservice_basicoutcomes', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457862),
(992, 0, 'ltiservice_basicoutcomes', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457862),
(993, 0, 'ltiservice_gradebookservices', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457862),
(994, 0, 'ltiservice_gradebookservices', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457862),
(995, 0, 'ltiservice_gradebookservices', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457863),
(996, 0, 'ltiservice_memberships', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457863),
(997, 0, 'ltiservice_memberships', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457863),
(998, 0, 'ltiservice_memberships', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457863),
(999, 0, 'ltiservice_profile', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457863),
(1000, 0, 'ltiservice_profile', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457863),
(1001, 0, 'ltiservice_profile', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457863),
(1002, 0, 'ltiservice_toolproxy', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457863),
(1003, 0, 'ltiservice_toolproxy', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457863),
(1004, 0, 'ltiservice_toolproxy', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457864),
(1005, 0, 'ltiservice_toolsettings', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457864),
(1006, 0, 'ltiservice_toolsettings', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457864),
(1007, 0, 'ltiservice_toolsettings', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457864),
(1008, 0, 'quiz_grading', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457864),
(1009, 0, 'quiz_grading', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457864),
(1010, 0, 'quiz_grading', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457864),
(1011, 0, 'quiz_overview', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457864),
(1012, 0, 'quiz_overview', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457864),
(1013, 0, 'quiz_overview', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457864),
(1014, 0, 'quiz_responses', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457864),
(1015, 0, 'quiz_responses', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457864),
(1016, 0, 'quiz_responses', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457864),
(1017, 0, 'quiz_statistics', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457864),
(1018, 0, 'quiz_statistics', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457864),
(1019, 0, 'quiz_statistics', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457864),
(1020, 0, 'quizaccess_delaybetweenattempts', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457864),
(1021, 0, 'quizaccess_delaybetweenattempts', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457864),
(1022, 0, 'quizaccess_delaybetweenattempts', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457865),
(1023, 0, 'quizaccess_ipaddress', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457865),
(1024, 0, 'quizaccess_ipaddress', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457865),
(1025, 0, 'quizaccess_ipaddress', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457865),
(1026, 0, 'quizaccess_numattempts', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457865),
(1027, 0, 'quizaccess_numattempts', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457865),
(1028, 0, 'quizaccess_numattempts', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457865),
(1029, 0, 'quizaccess_offlineattempts', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457865),
(1030, 0, 'quizaccess_offlineattempts', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457865),
(1031, 0, 'quizaccess_offlineattempts', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457865),
(1032, 0, 'quizaccess_openclosedate', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457866),
(1033, 0, 'quizaccess_openclosedate', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457866),
(1034, 0, 'quizaccess_openclosedate', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457866),
(1035, 0, 'quizaccess_password', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457866),
(1036, 0, 'quizaccess_password', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457866),
(1037, 0, 'quizaccess_password', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457866),
(1038, 0, 'quizaccess_safebrowser', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457866),
(1039, 0, 'quizaccess_safebrowser', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457866),
(1040, 0, 'quizaccess_safebrowser', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457866),
(1041, 0, 'quizaccess_securewindow', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457866),
(1042, 0, 'quizaccess_securewindow', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457866),
(1043, 0, 'quizaccess_securewindow', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457867),
(1044, 0, 'quizaccess_timelimit', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457867),
(1045, 0, 'quizaccess_timelimit', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457867),
(1046, 0, 'quizaccess_timelimit', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457867),
(1047, 0, 'scormreport_basic', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457867),
(1048, 0, 'scormreport_basic', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457867),
(1049, 0, 'scormreport_basic', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457867),
(1050, 0, 'scormreport_graphs', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457867),
(1051, 0, 'scormreport_graphs', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457867),
(1052, 0, 'scormreport_graphs', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457867),
(1053, 0, 'scormreport_interactions', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457867),
(1054, 0, 'scormreport_interactions', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457867),
(1055, 0, 'scormreport_interactions', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457868),
(1056, 0, 'scormreport_objectives', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457868),
(1057, 0, 'scormreport_objectives', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457868),
(1058, 0, 'scormreport_objectives', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457868),
(1059, 0, 'workshopform_accumulative', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457868),
(1060, 0, 'workshopform_accumulative', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457868),
(1061, 0, 'workshopform_accumulative', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457868),
(1062, 0, 'workshopform_comments', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457868),
(1063, 0, 'workshopform_comments', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457868),
(1064, 0, 'workshopform_comments', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457869),
(1065, 0, 'workshopform_numerrors', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457869),
(1066, 0, 'workshopform_numerrors', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457869),
(1067, 0, 'workshopform_numerrors', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457869),
(1068, 0, 'workshopform_rubric', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457869),
(1069, 0, 'workshopform_rubric', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457869),
(1070, 0, 'workshopform_rubric', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457870),
(1071, 0, 'workshopallocation_manual', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457870),
(1072, 0, 'workshopallocation_manual', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457870),
(1073, 0, 'workshopallocation_manual', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457870),
(1074, 0, 'workshopallocation_random', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457870),
(1075, 0, 'workshopallocation_random', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457870),
(1076, 0, 'workshopallocation_random', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457870),
(1077, 0, 'workshopallocation_scheduled', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457870),
(1078, 0, 'workshopallocation_scheduled', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457871),
(1079, 0, 'workshopallocation_scheduled', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457871),
(1080, 0, 'workshopeval_best', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457871),
(1081, 0, 'workshopeval_best', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457871),
(1082, 0, 'workshopeval_best', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457871),
(1083, 0, 'atto_accessibilitychecker', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457871),
(1084, 0, 'atto_accessibilitychecker', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457871),
(1085, 0, 'atto_accessibilitychecker', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457872),
(1086, 0, 'atto_accessibilityhelper', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457872),
(1087, 0, 'atto_accessibilityhelper', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457872),
(1088, 0, 'atto_accessibilityhelper', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457872),
(1089, 0, 'atto_align', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457872),
(1090, 0, 'atto_align', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457872),
(1091, 0, 'atto_align', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457872),
(1092, 0, 'atto_backcolor', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457872),
(1093, 0, 'atto_backcolor', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457872),
(1094, 0, 'atto_backcolor', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457872),
(1095, 0, 'atto_bold', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457872),
(1096, 0, 'atto_bold', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457873),
(1097, 0, 'atto_bold', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457873),
(1098, 0, 'atto_charmap', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457873),
(1099, 0, 'atto_charmap', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457873),
(1100, 0, 'atto_charmap', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457873),
(1101, 0, 'atto_clear', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457873),
(1102, 0, 'atto_clear', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457873),
(1103, 0, 'atto_clear', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457873),
(1104, 0, 'atto_collapse', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457873),
(1105, 0, 'atto_collapse', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457873),
(1106, 0, 'atto_collapse', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457873),
(1107, 0, 'atto_emojipicker', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457873),
(1108, 0, 'atto_emojipicker', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457874),
(1109, 0, 'atto_emojipicker', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457874),
(1110, 0, 'atto_emoticon', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457874),
(1111, 0, 'atto_emoticon', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457874),
(1112, 0, 'atto_emoticon', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457874),
(1113, 0, 'atto_equation', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457874),
(1114, 0, 'atto_equation', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457874),
(1115, 0, 'atto_equation', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457874),
(1116, 0, 'atto_fontcolor', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457874),
(1117, 0, 'atto_fontcolor', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457874),
(1118, 0, 'atto_fontcolor', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457874),
(1119, 0, 'atto_h5p', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457874),
(1120, 0, 'atto_h5p', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457874),
(1121, 0, 'atto_h5p', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457874),
(1122, 0, 'atto_html', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457874),
(1123, 0, 'atto_html', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457874),
(1124, 0, 'atto_html', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457874),
(1125, 0, 'atto_image', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457874),
(1126, 0, 'atto_image', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457874),
(1127, 0, 'atto_image', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457874),
(1128, 0, 'atto_indent', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457874),
(1129, 0, 'atto_indent', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457874),
(1130, 0, 'atto_indent', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457874),
(1131, 0, 'atto_italic', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457874),
(1132, 0, 'atto_italic', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457874),
(1133, 0, 'atto_italic', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457874),
(1134, 0, 'atto_link', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457875),
(1135, 0, 'atto_link', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457875),
(1136, 0, 'atto_link', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457875),
(1137, 0, 'atto_managefiles', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457875),
(1138, 0, 'atto_managefiles', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457875),
(1139, 0, 'atto_managefiles', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457875),
(1140, 0, 'atto_media', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457875),
(1141, 0, 'atto_media', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457875),
(1142, 0, 'atto_media', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457875),
(1143, 0, 'atto_noautolink', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457875),
(1144, 0, 'atto_noautolink', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457875),
(1145, 0, 'atto_noautolink', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457875),
(1146, 0, 'atto_orderedlist', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457875),
(1147, 0, 'atto_orderedlist', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457875),
(1148, 0, 'atto_orderedlist', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457875),
(1149, 0, 'atto_recordrtc', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457875),
(1150, 0, 'atto_recordrtc', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457875),
(1151, 0, 'atto_recordrtc', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457875),
(1152, 0, 'atto_rtl', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457875),
(1153, 0, 'atto_rtl', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457875),
(1154, 0, 'atto_rtl', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457875),
(1155, 0, 'atto_strike', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457875),
(1156, 0, 'atto_strike', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457875),
(1157, 0, 'atto_strike', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1158, 0, 'atto_subscript', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1159, 0, 'atto_subscript', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1160, 0, 'atto_subscript', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1161, 0, 'atto_superscript', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1162, 0, 'atto_superscript', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1163, 0, 'atto_superscript', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1164, 0, 'atto_table', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1165, 0, 'atto_table', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1166, 0, 'atto_table', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1167, 0, 'atto_title', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1168, 0, 'atto_title', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1169, 0, 'atto_title', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1170, 0, 'atto_underline', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1171, 0, 'atto_underline', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1172, 0, 'atto_underline', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1173, 0, 'atto_undo', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1174, 0, 'atto_undo', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1175, 0, 'atto_undo', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1176, 0, 'atto_unorderedlist', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1177, 0, 'atto_unorderedlist', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1178, 0, 'atto_unorderedlist', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1179, 0, 'tinymce_ctrlhelp', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1180, 0, 'tinymce_ctrlhelp', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1181, 0, 'tinymce_ctrlhelp', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1182, 0, 'tinymce_managefiles', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1183, 0, 'tinymce_managefiles', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1184, 0, 'tinymce_managefiles', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457876),
(1185, 0, 'tinymce_moodleemoticon', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457876),
(1186, 0, 'tinymce_moodleemoticon', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457876),
(1187, 0, 'tinymce_moodleemoticon', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1188, 0, 'tinymce_moodleimage', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457877),
(1189, 0, 'tinymce_moodleimage', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457877),
(1190, 0, 'tinymce_moodleimage', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1191, 0, 'tinymce_moodlemedia', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457877),
(1192, 0, 'tinymce_moodlemedia', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457877),
(1193, 0, 'tinymce_moodlemedia', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1194, 0, 'tinymce_moodlenolink', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457877),
(1195, 0, 'tinymce_moodlenolink', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457877),
(1196, 0, 'tinymce_moodlenolink', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1197, 0, 'tinymce_pdw', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457877),
(1198, 0, 'tinymce_pdw', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457877),
(1199, 0, 'tinymce_pdw', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1200, 0, 'tinymce_spellchecker', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457877),
(1201, 0, 'tinymce_spellchecker', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457877),
(1202, 0, 'tinymce_spellchecker', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1203, 0, 'tinymce_wrap', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457877),
(1204, 0, 'tinymce_wrap', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457877),
(1205, 0, 'tinymce_wrap', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1206, 0, 'logstore_database', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457877),
(1207, 0, 'logstore_database', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457877),
(1208, 0, 'logstore_database', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1209, 0, 'logstore_legacy', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457877),
(1210, 0, 'logstore_legacy', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457877),
(1211, 0, 'logstore_legacy', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1212, 0, 'logstore_standard', NULL, '2019111800', 'Starting plugin installation', NULL, '', 0, 1599457877),
(1213, 0, 'logstore_standard', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 0, 1599457877),
(1214, 0, 'logstore_standard', '2019111800', '2019111800', 'Plugin installed', NULL, '', 0, 1599457877),
(1215, 0, 'theme_lambda', NULL, '2020090638', 'Starting plugin installation', NULL, '', 2, 1599460759),
(1216, 0, 'theme_lambda', '2020090638', '2020090638', 'Upgrade savepoint reached', NULL, '', 2, 1599460759),
(1217, 0, 'theme_lambda', '2020090638', '2020090638', 'Plugin installed', NULL, '', 2, 1599460759),
(1218, 0, 'mod_bigbluebuttonbn', NULL, '2019042009', 'Starting plugin installation', NULL, '', 2, 1600006722),
(1219, 0, 'mod_bigbluebuttonbn', '2019042009', '2019042009', 'Upgrade savepoint reached', NULL, '', 2, 1600006722),
(1220, 0, 'mod_bigbluebuttonbn', '2019042009', '2019042009', 'Plugin installed', NULL, '', 2, 1600006724),
(1221, 0, 'local_staticpage', NULL, '2020090638', 'Starting plugin installation', NULL, '', 2, 1600174995),
(1222, 0, 'local_staticpage', '2020090638', '2020090638', 'Upgrade savepoint reached', NULL, '', 2, 1600174995),
(1223, 0, 'local_staticpage', '2020090638', '2020090638', 'Plugin installed', NULL, '', 2, 1600174995),
(1224, 0, 'block_customhomepage', NULL, '2019111800', 'Starting plugin installation', NULL, '', 2, 1602053880),
(1225, 0, 'block_customhomepage', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 2, 1602053880),
(1226, 0, 'block_customhomepage', '2019111800', '2019111800', 'Plugin installed', NULL, '', 2, 1602053880),
(1227, 0, 'block_theme_selector', NULL, '2015082107', 'Starting plugin installation', NULL, '', 2, 1612244626),
(1228, 0, 'block_theme_selector', '2015082107', '2015082107', 'Upgrade savepoint reached', NULL, '', 2, 1612244626),
(1229, 0, 'block_theme_selector', '2015082107', '2015082107', 'Plugin installed', NULL, '', 2, 1612244626),
(1230, 0, 'format_tiles', NULL, '2020080611', 'Starting plugin installation', NULL, '', 2, 1612245316),
(1231, 0, 'format_tiles', '2020080611', '2020080611', 'Upgrade savepoint reached', NULL, '', 2, 1612245316),
(1232, 0, 'format_tiles', '2020080611', '2020080611', 'Plugin installed', NULL, '', 2, 1612245316),
(1233, 0, 'mod_hvp', NULL, '2020080400', 'Starting plugin installation', NULL, '', 2, 1612245957),
(1234, 0, 'mod_hvp', '2020080400', '2020080400', 'Upgrade savepoint reached', NULL, '', 2, 1612245957),
(1235, 0, 'mod_hvp', '2020080400', '2020080400', 'Plugin installed', NULL, '', 2, 1612245959),
(1236, 0, 'core', '2019111804', '2020110903', 'Starting core upgrade', NULL, '', 2, 1618472229),
(1237, 0, 'core', '2019120500.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472229),
(1238, 0, 'core', '2019121800', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472229),
(1239, 0, 'core', '2019122000.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472229),
(1240, 0, 'core', '2020010900.02', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472229),
(1241, 0, 'core', '2020011700.02', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472230),
(1242, 0, 'core', '2020013000.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472230),
(1243, 0, 'core', '2020040200.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472230),
(1244, 0, 'core', '2020040700', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472230),
(1245, 0, 'core', '2020041500', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472230),
(1246, 0, 'core', '2020041700.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472230),
(1247, 0, 'core', '2020042800.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472230),
(1248, 0, 'core', '2020051900.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472230),
(1249, 0, 'core', '2020052000', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472230),
(1250, 0, 'core', '2020052200.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472231),
(1251, 0, 'core', '2020060500.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472231),
(1252, 0, 'core', '2020061500.02', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472231),
(1253, 0, 'core', '2020062600.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472231),
(1254, 0, 'core', '2020071100.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472231),
(1255, 0, 'core', '2020072300.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472231),
(1256, 0, 'core', '2020081400.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472231),
(1257, 0, 'core', '2020081400.02', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472231),
(1258, 0, 'core', '2020082200.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472231),
(1259, 0, 'core', '2020082200.02', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1260, 0, 'core', '2020082200.03', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1261, 0, 'core', '2020091000.02', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1262, 0, 'core', '2020091800.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1263, 0, 'core', '2020100200.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1264, 0, 'core', '2020100700', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1265, 0, 'core', '2020101300.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1266, 0, 'core', '2020101600.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1267, 0, 'core', '2020101600.02', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1268, 0, 'core', '2020102100.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1269, 0, 'core', '2020102100.02', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1270, 0, 'core', '2020102300.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1271, 0, 'core', '2020102300.02', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472232),
(1272, 0, 'core', '2020102700.04', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472233),
(1273, 0, 'core', '2020110900.01', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472233),
(1274, 0, 'core', '2020110901.03', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472233),
(1275, 0, 'core', '2020110901.08', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472233),
(1276, 0, 'core', '2020110903', '2020110903', 'Upgrade savepoint reached', NULL, '', 2, 1618472233),
(1277, 0, 'core', '2020110903', '2020110903', 'Core upgraded', NULL, '', 2, 1618472236),
(1278, 0, 'antivirus_clamav', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472236),
(1279, 0, 'antivirus_clamav', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472236),
(1280, 0, 'antivirus_clamav', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1281, 0, 'availability_completion', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1282, 0, 'availability_completion', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1283, 0, 'availability_completion', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1284, 0, 'availability_date', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1285, 0, 'availability_date', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1286, 0, 'availability_date', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1287, 0, 'availability_grade', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1288, 0, 'availability_grade', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1289, 0, 'availability_grade', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1290, 0, 'availability_group', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1291, 0, 'availability_group', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1292, 0, 'availability_group', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1293, 0, 'availability_grouping', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1294, 0, 'availability_grouping', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1295, 0, 'availability_grouping', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1296, 0, 'availability_profile', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1297, 0, 'availability_profile', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1298, 0, 'availability_profile', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1299, 0, 'qtype_calculated', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1300, 0, 'qtype_calculated', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1301, 0, 'qtype_calculated', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1302, 0, 'qtype_calculatedmulti', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1303, 0, 'qtype_calculatedmulti', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1304, 0, 'qtype_calculatedmulti', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1305, 0, 'qtype_calculatedsimple', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1306, 0, 'qtype_calculatedsimple', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1307, 0, 'qtype_calculatedsimple', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1308, 0, 'qtype_ddimageortext', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1309, 0, 'qtype_ddimageortext', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1310, 0, 'qtype_ddimageortext', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1311, 0, 'qtype_ddmarker', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1312, 0, 'qtype_ddmarker', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1313, 0, 'qtype_ddmarker', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1314, 0, 'qtype_ddwtos', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1315, 0, 'qtype_ddwtos', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1316, 0, 'qtype_ddwtos', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472237),
(1317, 0, 'qtype_description', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472237),
(1318, 0, 'qtype_description', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472237),
(1319, 0, 'qtype_description', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1320, 0, 'qtype_essay', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1321, 0, 'qtype_essay', '2020091600', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1322, 0, 'qtype_essay', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1323, 0, 'qtype_essay', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1324, 0, 'qtype_gapselect', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1325, 0, 'qtype_gapselect', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1326, 0, 'qtype_gapselect', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1327, 0, 'qtype_match', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1328, 0, 'qtype_match', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1329, 0, 'qtype_match', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1330, 0, 'qtype_missingtype', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1331, 0, 'qtype_missingtype', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1332, 0, 'qtype_missingtype', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1333, 0, 'qtype_multianswer', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1334, 0, 'qtype_multianswer', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1335, 0, 'qtype_multianswer', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1336, 0, 'qtype_multichoice', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1337, 0, 'qtype_multichoice', '2020041600', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1338, 0, 'qtype_multichoice', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1339, 0, 'qtype_multichoice', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1340, 0, 'qtype_numerical', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1341, 0, 'qtype_numerical', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1342, 0, 'qtype_numerical', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1343, 0, 'qtype_random', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1344, 0, 'qtype_random', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1345, 0, 'qtype_random', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1346, 0, 'qtype_randomsamatch', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1347, 0, 'qtype_randomsamatch', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1348, 0, 'qtype_randomsamatch', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1349, 0, 'qtype_shortanswer', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1350, 0, 'qtype_shortanswer', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1351, 0, 'qtype_shortanswer', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472238),
(1352, 0, 'qtype_truefalse', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472238),
(1353, 0, 'qtype_truefalse', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472238),
(1354, 0, 'qtype_truefalse', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472239),
(1355, 0, 'mod_assign', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472239),
(1356, 0, 'mod_assign', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1357, 0, 'mod_assign', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472239),
(1358, 0, 'mod_assignment', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472239),
(1359, 0, 'mod_assignment', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1360, 0, 'mod_assignment', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472239),
(1361, 0, 'mod_book', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472239),
(1362, 0, 'mod_book', '2020100100', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1363, 0, 'mod_book', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1364, 0, 'mod_book', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472239),
(1365, 0, 'mod_chat', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472239),
(1366, 0, 'mod_chat', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1367, 0, 'mod_chat', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472239),
(1368, 0, 'mod_choice', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472239),
(1369, 0, 'mod_choice', '2020061600', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1370, 0, 'mod_choice', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1371, 0, 'mod_choice', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472239),
(1372, 0, 'mod_data', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472239),
(1373, 0, 'mod_data', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1374, 0, 'mod_data', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472239),
(1375, 0, 'mod_feedback', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472239),
(1376, 0, 'mod_feedback', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1377, 0, 'mod_feedback', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472239),
(1378, 0, 'mod_folder', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472239),
(1379, 0, 'mod_folder', '2020061501', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1380, 0, 'mod_folder', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1381, 0, 'mod_folder', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472239),
(1382, 0, 'mod_forum', '2019111801', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472239),
(1383, 0, 'mod_forum', '2020072100', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1384, 0, 'mod_forum', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472239),
(1385, 0, 'mod_forum', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472240),
(1386, 0, 'mod_glossary', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472240),
(1387, 0, 'mod_glossary', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472240),
(1388, 0, 'mod_glossary', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472240),
(1389, 0, 'mod_h5pactivity', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472240),
(1390, 0, 'mod_h5pactivity', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472240),
(1391, 0, 'mod_h5pactivity', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472240),
(1392, 0, 'mod_imscp', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472240),
(1393, 0, 'mod_imscp', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472240),
(1394, 0, 'mod_imscp', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472240),
(1395, 0, 'mod_label', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472240),
(1396, 0, 'mod_label', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472240),
(1397, 0, 'mod_label', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472240),
(1398, 0, 'mod_lesson', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472240),
(1399, 0, 'mod_lesson', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472240),
(1400, 0, 'mod_lesson', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472240),
(1401, 0, 'mod_lti', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472240),
(1402, 0, 'mod_lti', '2020061501', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472240),
(1403, 0, 'mod_lti', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472240),
(1404, 0, 'mod_lti', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472241),
(1405, 0, 'mod_page', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472241),
(1406, 0, 'mod_page', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472241),
(1407, 0, 'mod_page', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472241),
(1408, 0, 'mod_quiz', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472241),
(1409, 0, 'mod_quiz', '2020061501', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472241),
(1410, 0, 'mod_quiz', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472241),
(1411, 0, 'mod_quiz', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472241),
(1412, 0, 'mod_resource', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472241),
(1413, 0, 'mod_resource', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472241),
(1414, 0, 'mod_resource', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472241),
(1415, 0, 'mod_scorm', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472241),
(1416, 0, 'mod_scorm', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472241),
(1417, 0, 'mod_scorm', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472241),
(1418, 0, 'mod_survey', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472241),
(1419, 0, 'mod_survey', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472241);
INSERT INTO `mo_upgrade_log` (`id`, `type`, `plugin`, `version`, `targetversion`, `info`, `details`, `backtrace`, `userid`, `timemodified`) VALUES
(1420, 0, 'mod_survey', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472241),
(1421, 0, 'mod_url', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472241),
(1422, 0, 'mod_url', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472241),
(1423, 0, 'mod_url', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472241),
(1424, 0, 'mod_wiki', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472241),
(1425, 0, 'mod_wiki', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472241),
(1426, 0, 'mod_wiki', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472241),
(1427, 0, 'mod_workshop', '2019111800', '2020110901', 'Starting plugin upgrade', NULL, '', 2, 1618472241),
(1428, 0, 'mod_workshop', '2020110901', '2020110901', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1429, 0, 'mod_workshop', '2020110901', '2020110901', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1430, 0, 'auth_cas', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1431, 0, 'auth_cas', '2020081700', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1432, 0, 'auth_cas', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1433, 0, 'auth_cas', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1434, 0, 'auth_db', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1435, 0, 'auth_db', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1436, 0, 'auth_db', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1437, 0, 'auth_email', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1438, 0, 'auth_email', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1439, 0, 'auth_email', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1440, 0, 'auth_ldap', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1441, 0, 'auth_ldap', '2020081700', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1442, 0, 'auth_ldap', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1443, 0, 'auth_ldap', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1444, 0, 'auth_lti', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1445, 0, 'auth_lti', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1446, 0, 'auth_lti', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1447, 0, 'auth_manual', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1448, 0, 'auth_manual', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1449, 0, 'auth_manual', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1450, 0, 'auth_mnet', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1451, 0, 'auth_mnet', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1452, 0, 'auth_mnet', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1453, 0, 'auth_nologin', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1454, 0, 'auth_nologin', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1455, 0, 'auth_nologin', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1456, 0, 'auth_none', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1457, 0, 'auth_none', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1458, 0, 'auth_none', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1459, 0, 'auth_oauth2', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472242),
(1460, 0, 'auth_oauth2', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472242),
(1461, 0, 'auth_oauth2', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472242),
(1462, 0, 'auth_shibboleth', '2019111800', '2020110901', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1463, 0, 'auth_shibboleth', '2020110901', '2020110901', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1464, 0, 'auth_shibboleth', '2020110901', '2020110901', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1465, 0, 'auth_webservice', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1466, 0, 'auth_webservice', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1467, 0, 'auth_webservice', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1468, 0, 'calendartype_gregorian', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1469, 0, 'calendartype_gregorian', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1470, 0, 'calendartype_gregorian', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1471, 0, 'customfield_checkbox', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1472, 0, 'customfield_checkbox', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1473, 0, 'customfield_checkbox', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1474, 0, 'customfield_date', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1475, 0, 'customfield_date', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1476, 0, 'customfield_date', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1477, 0, 'customfield_select', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1478, 0, 'customfield_select', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1479, 0, 'customfield_select', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1480, 0, 'customfield_text', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1481, 0, 'customfield_text', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1482, 0, 'customfield_text', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1483, 0, 'customfield_textarea', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1484, 0, 'customfield_textarea', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1485, 0, 'customfield_textarea', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1486, 0, 'enrol_category', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1487, 0, 'enrol_category', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1488, 0, 'enrol_category', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1489, 0, 'enrol_cohort', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1490, 0, 'enrol_cohort', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1491, 0, 'enrol_cohort', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1492, 0, 'enrol_database', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472243),
(1493, 0, 'enrol_database', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1494, 0, 'enrol_database', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472243),
(1495, 0, 'enrol_fee', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472243),
(1496, 0, 'enrol_fee', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472243),
(1497, 0, 'enrol_fee', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472244),
(1498, 0, 'enrol_flatfile', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1499, 0, 'enrol_flatfile', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1500, 0, 'enrol_flatfile', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1501, 0, 'enrol_guest', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1502, 0, 'enrol_guest', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1503, 0, 'enrol_guest', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1504, 0, 'enrol_imsenterprise', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1505, 0, 'enrol_imsenterprise', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1506, 0, 'enrol_imsenterprise', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1507, 0, 'enrol_ldap', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1508, 0, 'enrol_ldap', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1509, 0, 'enrol_ldap', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1510, 0, 'enrol_lti', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1511, 0, 'enrol_lti', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1512, 0, 'enrol_lti', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1513, 0, 'enrol_manual', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1514, 0, 'enrol_manual', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1515, 0, 'enrol_manual', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1516, 0, 'enrol_meta', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1517, 0, 'enrol_meta', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1518, 0, 'enrol_meta', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1519, 0, 'enrol_mnet', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1520, 0, 'enrol_mnet', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1521, 0, 'enrol_mnet', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1522, 0, 'enrol_paypal', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1523, 0, 'enrol_paypal', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1524, 0, 'enrol_paypal', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1525, 0, 'enrol_self', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1526, 0, 'enrol_self', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1527, 0, 'enrol_self', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472244),
(1528, 0, 'message_airnotifier', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472244),
(1529, 0, 'message_airnotifier', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472244),
(1530, 0, 'message_airnotifier', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472245),
(1531, 0, 'message_email', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472245),
(1532, 0, 'message_email', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472245),
(1533, 0, 'message_email', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472245),
(1534, 0, 'message_jabber', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472245),
(1535, 0, 'message_jabber', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472245),
(1536, 0, 'message_jabber', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472245),
(1537, 0, 'message_popup', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472245),
(1538, 0, 'message_popup', '2020020600', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472245),
(1539, 0, 'message_popup', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472245),
(1540, 0, 'message_popup', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472245),
(1541, 0, 'block_activity_modules', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472245),
(1542, 0, 'block_activity_modules', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472245),
(1543, 0, 'block_activity_modules', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472245),
(1544, 0, 'block_activity_results', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472245),
(1545, 0, 'block_activity_results', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472245),
(1546, 0, 'block_activity_results', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472245),
(1547, 0, 'block_admin_bookmarks', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472245),
(1548, 0, 'block_admin_bookmarks', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472245),
(1549, 0, 'block_admin_bookmarks', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472245),
(1550, 0, 'block_badges', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1551, 0, 'block_badges', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1552, 0, 'block_badges', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1553, 0, 'block_blog_menu', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1554, 0, 'block_blog_menu', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1555, 0, 'block_blog_menu', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1556, 0, 'block_blog_recent', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1557, 0, 'block_blog_recent', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1558, 0, 'block_blog_recent', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1559, 0, 'block_blog_tags', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1560, 0, 'block_blog_tags', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1561, 0, 'block_blog_tags', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1562, 0, 'block_calendar_month', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1563, 0, 'block_calendar_month', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1564, 0, 'block_calendar_month', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1565, 0, 'block_calendar_upcoming', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1566, 0, 'block_calendar_upcoming', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1567, 0, 'block_calendar_upcoming', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1568, 0, 'block_comments', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1569, 0, 'block_comments', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1570, 0, 'block_comments', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1571, 0, 'block_completionstatus', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1572, 0, 'block_completionstatus', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1573, 0, 'block_completionstatus', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1574, 0, 'block_course_list', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1575, 0, 'block_course_list', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1576, 0, 'block_course_list', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1577, 0, 'block_course_summary', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1578, 0, 'block_course_summary', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1579, 0, 'block_course_summary', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1580, 0, 'block_feedback', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1581, 0, 'block_feedback', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1582, 0, 'block_feedback', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1583, 0, 'block_globalsearch', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1584, 0, 'block_globalsearch', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1585, 0, 'block_globalsearch', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1586, 0, 'block_glossary_random', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1587, 0, 'block_glossary_random', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472246),
(1588, 0, 'block_glossary_random', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472246),
(1589, 0, 'block_html', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472246),
(1590, 0, 'block_html', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1591, 0, 'block_html', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1592, 0, 'block_login', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1593, 0, 'block_login', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1594, 0, 'block_login', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1595, 0, 'block_lp', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1596, 0, 'block_lp', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1597, 0, 'block_lp', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1598, 0, 'block_mentees', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1599, 0, 'block_mentees', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1600, 0, 'block_mentees', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1601, 0, 'block_mnet_hosts', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1602, 0, 'block_mnet_hosts', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1603, 0, 'block_mnet_hosts', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1604, 0, 'block_myoverview', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1605, 0, 'block_myoverview', '2019111801', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1606, 0, 'block_myoverview', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1607, 0, 'block_myoverview', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1608, 0, 'block_myprofile', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1609, 0, 'block_myprofile', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1610, 0, 'block_myprofile', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1611, 0, 'block_navigation', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1612, 0, 'block_navigation', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1613, 0, 'block_navigation', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1614, 0, 'block_news_items', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1615, 0, 'block_news_items', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1616, 0, 'block_news_items', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1617, 0, 'block_online_users', '2019111800', '2020110901', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1618, 0, 'block_online_users', '2020110901', '2020110901', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1619, 0, 'block_online_users', '2020110901', '2020110901', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1620, 0, 'block_private_files', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1621, 0, 'block_private_files', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1622, 0, 'block_private_files', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1623, 0, 'block_quiz_results', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1624, 0, 'block_quiz_results', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1625, 0, 'block_quiz_results', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472247),
(1626, 0, 'block_recent_activity', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472247),
(1627, 0, 'block_recent_activity', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472247),
(1628, 0, 'block_recent_activity', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1629, 0, 'block_recentlyaccessedcourses', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1630, 0, 'block_recentlyaccessedcourses', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1631, 0, 'block_recentlyaccessedcourses', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1632, 0, 'block_recentlyaccesseditems', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1633, 0, 'block_recentlyaccesseditems', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1634, 0, 'block_recentlyaccesseditems', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1635, 0, 'block_rss_client', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1636, 0, 'block_rss_client', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1637, 0, 'block_rss_client', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1638, 0, 'block_search_forums', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1639, 0, 'block_search_forums', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1640, 0, 'block_search_forums', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1641, 0, 'block_section_links', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1642, 0, 'block_section_links', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1643, 0, 'block_section_links', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1644, 0, 'block_selfcompletion', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1645, 0, 'block_selfcompletion', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1646, 0, 'block_selfcompletion', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1647, 0, 'block_settings', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1648, 0, 'block_settings', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1649, 0, 'block_settings', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1650, 0, 'block_site_main_menu', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1651, 0, 'block_site_main_menu', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1652, 0, 'block_site_main_menu', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1653, 0, 'block_social_activities', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1654, 0, 'block_social_activities', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1655, 0, 'block_social_activities', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1656, 0, 'block_starredcourses', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1657, 0, 'block_starredcourses', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1658, 0, 'block_starredcourses', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1659, 0, 'block_tag_flickr', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1660, 0, 'block_tag_flickr', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1661, 0, 'block_tag_flickr', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1662, 0, 'block_tag_youtube', '2019111800', '2020110901', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1663, 0, 'block_tag_youtube', '2020110901', '2020110901', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1664, 0, 'block_tag_youtube', '2020110901', '2020110901', 'Plugin upgraded', NULL, '', 2, 1618472248),
(1665, 0, 'block_tags', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472248),
(1666, 0, 'block_tags', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472248),
(1667, 0, 'block_tags', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1668, 0, 'block_timeline', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1669, 0, 'block_timeline', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1670, 0, 'block_timeline', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1671, 0, 'block_userdashboard', NULL, '2019111800', 'Starting plugin installation', NULL, '', 2, 1618472249),
(1672, 0, 'block_userdashboard', '2019111800', '2019111800', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1673, 0, 'block_userdashboard', '2019111800', '2019111800', 'Plugin installed', NULL, '', 2, 1618472249),
(1674, 0, 'media_html5audio', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1675, 0, 'media_html5audio', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1676, 0, 'media_html5audio', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1677, 0, 'media_html5video', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1678, 0, 'media_html5video', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1679, 0, 'media_html5video', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1680, 0, 'media_swf', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1681, 0, 'media_swf', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1682, 0, 'media_swf', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1683, 0, 'media_videojs', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1684, 0, 'media_videojs', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1685, 0, 'media_videojs', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1686, 0, 'media_vimeo', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1687, 0, 'media_vimeo', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1688, 0, 'media_vimeo', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1689, 0, 'media_youtube', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1690, 0, 'media_youtube', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1691, 0, 'media_youtube', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1692, 0, 'filter_activitynames', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1693, 0, 'filter_activitynames', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1694, 0, 'filter_activitynames', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1695, 0, 'filter_algebra', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1696, 0, 'filter_algebra', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1697, 0, 'filter_algebra', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1698, 0, 'filter_censor', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1699, 0, 'filter_censor', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1700, 0, 'filter_censor', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1701, 0, 'filter_data', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1702, 0, 'filter_data', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1703, 0, 'filter_data', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1704, 0, 'filter_displayh5p', '2020031700', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1705, 0, 'filter_displayh5p', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1706, 0, 'filter_displayh5p', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472249),
(1707, 0, 'filter_emailprotect', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472249),
(1708, 0, 'filter_emailprotect', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472249),
(1709, 0, 'filter_emailprotect', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1710, 0, 'filter_emoticon', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1711, 0, 'filter_emoticon', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1712, 0, 'filter_emoticon', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1713, 0, 'filter_glossary', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1714, 0, 'filter_glossary', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1715, 0, 'filter_glossary', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1716, 0, 'filter_mathjaxloader', '2019111801', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1717, 0, 'filter_mathjaxloader', '2020050401', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1718, 0, 'filter_mathjaxloader', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1719, 0, 'filter_mathjaxloader', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1720, 0, 'filter_mediaplugin', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1721, 0, 'filter_mediaplugin', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1722, 0, 'filter_mediaplugin', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1723, 0, 'filter_multilang', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1724, 0, 'filter_multilang', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1725, 0, 'filter_multilang', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1726, 0, 'filter_tex', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1727, 0, 'filter_tex', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1728, 0, 'filter_tex', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1729, 0, 'filter_tidy', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1730, 0, 'filter_tidy', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1731, 0, 'filter_tidy', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1732, 0, 'filter_urltolink', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1733, 0, 'filter_urltolink', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1734, 0, 'filter_urltolink', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1735, 0, 'editor_atto', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1736, 0, 'editor_atto', '2020052100', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1737, 0, 'editor_atto', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1738, 0, 'editor_atto', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1739, 0, 'editor_textarea', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1740, 0, 'editor_textarea', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1741, 0, 'editor_textarea', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1742, 0, 'editor_tinymce', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1743, 0, 'editor_tinymce', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1744, 0, 'editor_tinymce', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1745, 0, 'format_singleactivity', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1746, 0, 'format_singleactivity', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1747, 0, 'format_singleactivity', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1748, 0, 'format_social', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1749, 0, 'format_social', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1750, 0, 'format_social', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472250),
(1751, 0, 'format_topics', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472250),
(1752, 0, 'format_topics', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472250),
(1753, 0, 'format_topics', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1754, 0, 'format_weeks', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1755, 0, 'format_weeks', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1756, 0, 'format_weeks', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1757, 0, 'dataformat_csv', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1758, 0, 'dataformat_csv', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1759, 0, 'dataformat_csv', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1760, 0, 'dataformat_excel', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1761, 0, 'dataformat_excel', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1762, 0, 'dataformat_excel', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1763, 0, 'dataformat_html', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1764, 0, 'dataformat_html', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1765, 0, 'dataformat_html', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1766, 0, 'dataformat_json', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1767, 0, 'dataformat_json', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1768, 0, 'dataformat_json', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1769, 0, 'dataformat_ods', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1770, 0, 'dataformat_ods', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1771, 0, 'dataformat_ods', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1772, 0, 'dataformat_pdf', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1773, 0, 'dataformat_pdf', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1774, 0, 'dataformat_pdf', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1775, 0, 'profilefield_checkbox', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1776, 0, 'profilefield_checkbox', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1777, 0, 'profilefield_checkbox', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1778, 0, 'profilefield_datetime', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1779, 0, 'profilefield_datetime', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1780, 0, 'profilefield_datetime', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1781, 0, 'profilefield_menu', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1782, 0, 'profilefield_menu', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1783, 0, 'profilefield_menu', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1784, 0, 'profilefield_text', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1785, 0, 'profilefield_text', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1786, 0, 'profilefield_text', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1787, 0, 'profilefield_textarea', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1788, 0, 'profilefield_textarea', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1789, 0, 'profilefield_textarea', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1790, 0, 'report_backups', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1791, 0, 'report_backups', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1792, 0, 'report_backups', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1793, 0, 'report_competency', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1794, 0, 'report_competency', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1795, 0, 'report_competency', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472251),
(1796, 0, 'report_completion', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472251),
(1797, 0, 'report_completion', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472251),
(1798, 0, 'report_completion', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1799, 0, 'report_configlog', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1800, 0, 'report_configlog', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1801, 0, 'report_configlog', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1802, 0, 'report_courseoverview', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1803, 0, 'report_courseoverview', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1804, 0, 'report_courseoverview', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1805, 0, 'report_eventlist', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1806, 0, 'report_eventlist', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1807, 0, 'report_eventlist', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1808, 0, 'report_infectedfiles', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472252),
(1809, 0, 'report_infectedfiles', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1810, 0, 'report_infectedfiles', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472252),
(1811, 0, 'report_insights', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1812, 0, 'report_insights', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1813, 0, 'report_insights', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1814, 0, 'report_log', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1815, 0, 'report_log', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1816, 0, 'report_log', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1817, 0, 'report_loglive', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1818, 0, 'report_loglive', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1819, 0, 'report_loglive', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1820, 0, 'report_outline', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1821, 0, 'report_outline', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1822, 0, 'report_outline', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1823, 0, 'report_participation', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1824, 0, 'report_participation', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1825, 0, 'report_participation', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1826, 0, 'report_performance', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1827, 0, 'report_performance', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1828, 0, 'report_performance', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1829, 0, 'report_progress', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1830, 0, 'report_progress', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1831, 0, 'report_progress', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1832, 0, 'report_questioninstances', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1833, 0, 'report_questioninstances', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1834, 0, 'report_questioninstances', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1835, 0, 'report_security', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1836, 0, 'report_security', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1837, 0, 'report_security', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472252),
(1838, 0, 'report_stats', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472252),
(1839, 0, 'report_stats', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472252),
(1840, 0, 'report_stats', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1841, 0, 'report_status', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472253),
(1842, 0, 'report_status', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1843, 0, 'report_status', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472253),
(1844, 0, 'report_usersessions', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1845, 0, 'report_usersessions', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1846, 0, 'report_usersessions', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1847, 0, 'gradeexport_ods', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1848, 0, 'gradeexport_ods', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1849, 0, 'gradeexport_ods', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1850, 0, 'gradeexport_txt', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1851, 0, 'gradeexport_txt', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1852, 0, 'gradeexport_txt', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1853, 0, 'gradeexport_xls', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1854, 0, 'gradeexport_xls', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1855, 0, 'gradeexport_xls', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1856, 0, 'gradeexport_xml', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1857, 0, 'gradeexport_xml', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1858, 0, 'gradeexport_xml', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1859, 0, 'gradeimport_csv', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1860, 0, 'gradeimport_csv', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1861, 0, 'gradeimport_csv', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1862, 0, 'gradeimport_direct', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1863, 0, 'gradeimport_direct', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1864, 0, 'gradeimport_direct', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1865, 0, 'gradeimport_xml', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1866, 0, 'gradeimport_xml', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1867, 0, 'gradeimport_xml', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1868, 0, 'gradereport_grader', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1869, 0, 'gradereport_grader', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1870, 0, 'gradereport_grader', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1871, 0, 'gradereport_history', '2019111801', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1872, 0, 'gradereport_history', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1873, 0, 'gradereport_history', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1874, 0, 'gradereport_outcomes', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1875, 0, 'gradereport_outcomes', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1876, 0, 'gradereport_outcomes', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1877, 0, 'gradereport_overview', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1878, 0, 'gradereport_overview', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1879, 0, 'gradereport_overview', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472253),
(1880, 0, 'gradereport_singleview', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472253),
(1881, 0, 'gradereport_singleview', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472253),
(1882, 0, 'gradereport_singleview', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1883, 0, 'gradereport_user', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1884, 0, 'gradereport_user', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1885, 0, 'gradereport_user', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1886, 0, 'gradingform_guide', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1887, 0, 'gradingform_guide', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254);
INSERT INTO `mo_upgrade_log` (`id`, `type`, `plugin`, `version`, `targetversion`, `info`, `details`, `backtrace`, `userid`, `timemodified`) VALUES
(1888, 0, 'gradingform_guide', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1889, 0, 'gradingform_rubric', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1890, 0, 'gradingform_rubric', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1891, 0, 'gradingform_rubric', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1892, 0, 'mlbackend_php', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1893, 0, 'mlbackend_php', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1894, 0, 'mlbackend_php', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1895, 0, 'mlbackend_python', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1896, 0, 'mlbackend_python', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1897, 0, 'mlbackend_python', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1898, 0, 'mnetservice_enrol', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1899, 0, 'mnetservice_enrol', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1900, 0, 'mnetservice_enrol', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1901, 0, 'webservice_rest', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1902, 0, 'webservice_rest', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1903, 0, 'webservice_rest', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1904, 0, 'webservice_soap', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1905, 0, 'webservice_soap', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1906, 0, 'webservice_soap', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1907, 0, 'webservice_xmlrpc', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1908, 0, 'webservice_xmlrpc', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1909, 0, 'webservice_xmlrpc', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1910, 0, 'repository_areafiles', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1911, 0, 'repository_areafiles', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1912, 0, 'repository_areafiles', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1913, 0, 'repository_boxnet', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472254),
(1914, 0, 'repository_boxnet', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1915, 0, 'repository_boxnet', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472254),
(1916, 0, 'repository_contentbank', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472254),
(1917, 0, 'repository_contentbank', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472254),
(1918, 0, 'repository_contentbank', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472255),
(1919, 0, 'repository_coursefiles', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1920, 0, 'repository_coursefiles', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1921, 0, 'repository_coursefiles', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1922, 0, 'repository_dropbox', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1923, 0, 'repository_dropbox', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1924, 0, 'repository_dropbox', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1925, 0, 'repository_equella', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1926, 0, 'repository_equella', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1927, 0, 'repository_equella', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1928, 0, 'repository_filesystem', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1929, 0, 'repository_filesystem', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1930, 0, 'repository_filesystem', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1931, 0, 'repository_flickr', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1932, 0, 'repository_flickr', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1933, 0, 'repository_flickr', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1934, 0, 'repository_flickr_public', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1935, 0, 'repository_flickr_public', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1936, 0, 'repository_flickr_public', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1937, 0, 'repository_googledocs', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1938, 0, 'repository_googledocs', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1939, 0, 'repository_googledocs', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1940, 0, 'repository_local', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1941, 0, 'repository_local', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1942, 0, 'repository_local', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1943, 0, 'repository_merlot', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1944, 0, 'repository_merlot', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1945, 0, 'repository_merlot', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1946, 0, 'repository_nextcloud', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1947, 0, 'repository_nextcloud', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1948, 0, 'repository_nextcloud', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1949, 0, 'repository_onedrive', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1950, 0, 'repository_onedrive', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1951, 0, 'repository_onedrive', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472255),
(1952, 0, 'repository_picasa', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472255),
(1953, 0, 'repository_picasa', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472255),
(1954, 0, 'repository_picasa', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1955, 0, 'repository_recent', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1956, 0, 'repository_recent', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1957, 0, 'repository_recent', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1958, 0, 'repository_s3', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1959, 0, 'repository_s3', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1960, 0, 'repository_s3', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1961, 0, 'repository_skydrive', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1962, 0, 'repository_skydrive', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1963, 0, 'repository_skydrive', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1964, 0, 'repository_upload', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1965, 0, 'repository_upload', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1966, 0, 'repository_upload', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1967, 0, 'repository_url', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1968, 0, 'repository_url', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1969, 0, 'repository_url', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1970, 0, 'repository_user', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1971, 0, 'repository_user', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1972, 0, 'repository_user', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1973, 0, 'repository_webdav', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1974, 0, 'repository_webdav', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1975, 0, 'repository_webdav', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1976, 0, 'repository_wikimedia', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1977, 0, 'repository_wikimedia', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1978, 0, 'repository_wikimedia', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1979, 0, 'repository_youtube', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1980, 0, 'repository_youtube', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1981, 0, 'repository_youtube', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1982, 0, 'portfolio_boxnet', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1983, 0, 'portfolio_boxnet', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1984, 0, 'portfolio_boxnet', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1985, 0, 'portfolio_download', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1986, 0, 'portfolio_download', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1987, 0, 'portfolio_download', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1988, 0, 'portfolio_flickr', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1989, 0, 'portfolio_flickr', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1990, 0, 'portfolio_flickr', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1991, 0, 'portfolio_googledocs', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1992, 0, 'portfolio_googledocs', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1993, 0, 'portfolio_googledocs', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1994, 0, 'portfolio_mahara', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472256),
(1995, 0, 'portfolio_mahara', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472256),
(1996, 0, 'portfolio_mahara', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472256),
(1997, 0, 'portfolio_picasa', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(1998, 0, 'portfolio_picasa', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(1999, 0, 'portfolio_picasa', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2000, 0, 'search_simpledb', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2001, 0, 'search_simpledb', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2002, 0, 'search_simpledb', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2003, 0, 'search_solr', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2004, 0, 'search_solr', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2005, 0, 'search_solr', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2006, 0, 'qbehaviour_adaptive', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2007, 0, 'qbehaviour_adaptive', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2008, 0, 'qbehaviour_adaptive', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2009, 0, 'qbehaviour_adaptivenopenalty', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2010, 0, 'qbehaviour_adaptivenopenalty', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2011, 0, 'qbehaviour_adaptivenopenalty', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2012, 0, 'qbehaviour_deferredcbm', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2013, 0, 'qbehaviour_deferredcbm', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2014, 0, 'qbehaviour_deferredcbm', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2015, 0, 'qbehaviour_deferredfeedback', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2016, 0, 'qbehaviour_deferredfeedback', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2017, 0, 'qbehaviour_deferredfeedback', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2018, 0, 'qbehaviour_immediatecbm', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2019, 0, 'qbehaviour_immediatecbm', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2020, 0, 'qbehaviour_immediatecbm', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2021, 0, 'qbehaviour_immediatefeedback', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2022, 0, 'qbehaviour_immediatefeedback', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2023, 0, 'qbehaviour_immediatefeedback', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2024, 0, 'qbehaviour_informationitem', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2025, 0, 'qbehaviour_informationitem', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2026, 0, 'qbehaviour_informationitem', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2027, 0, 'qbehaviour_interactive', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2028, 0, 'qbehaviour_interactive', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2029, 0, 'qbehaviour_interactive', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2030, 0, 'qbehaviour_interactivecountback', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2031, 0, 'qbehaviour_interactivecountback', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2032, 0, 'qbehaviour_interactivecountback', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2033, 0, 'qbehaviour_manualgraded', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2034, 0, 'qbehaviour_manualgraded', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2035, 0, 'qbehaviour_manualgraded', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2036, 0, 'qbehaviour_missing', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2037, 0, 'qbehaviour_missing', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2038, 0, 'qbehaviour_missing', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472257),
(2039, 0, 'qformat_aiken', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472257),
(2040, 0, 'qformat_aiken', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472257),
(2041, 0, 'qformat_aiken', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2042, 0, 'qformat_blackboard_six', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2043, 0, 'qformat_blackboard_six', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2044, 0, 'qformat_blackboard_six', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2045, 0, 'qformat_examview', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2046, 0, 'qformat_examview', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2047, 0, 'qformat_examview', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2048, 0, 'qformat_gift', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2049, 0, 'qformat_gift', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2050, 0, 'qformat_gift', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2051, 0, 'qformat_missingword', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2052, 0, 'qformat_missingword', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2053, 0, 'qformat_missingword', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2054, 0, 'qformat_multianswer', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2055, 0, 'qformat_multianswer', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2056, 0, 'qformat_multianswer', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2057, 0, 'qformat_webct', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2058, 0, 'qformat_webct', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2059, 0, 'qformat_webct', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2060, 0, 'qformat_xhtml', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2061, 0, 'qformat_xhtml', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2062, 0, 'qformat_xhtml', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2063, 0, 'qformat_xml', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2064, 0, 'qformat_xml', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2065, 0, 'qformat_xml', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2066, 0, 'tool_analytics', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2067, 0, 'tool_analytics', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2068, 0, 'tool_analytics', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2069, 0, 'tool_availabilityconditions', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2070, 0, 'tool_availabilityconditions', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2071, 0, 'tool_availabilityconditions', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2072, 0, 'tool_behat', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2073, 0, 'tool_behat', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2074, 0, 'tool_behat', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2075, 0, 'tool_capability', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2076, 0, 'tool_capability', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2077, 0, 'tool_capability', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2078, 0, 'tool_cohortroles', '2019111801', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2079, 0, 'tool_cohortroles', '2020020600', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2080, 0, 'tool_cohortroles', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2081, 0, 'tool_cohortroles', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472258),
(2082, 0, 'tool_customlang', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472258),
(2083, 0, 'tool_customlang', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472258),
(2084, 0, 'tool_customlang', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2085, 0, 'tool_dataprivacy', '2019111801', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2086, 0, 'tool_dataprivacy', '2020061501', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2087, 0, 'tool_dataprivacy', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2088, 0, 'tool_dataprivacy', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2089, 0, 'tool_dbtransfer', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2090, 0, 'tool_dbtransfer', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2091, 0, 'tool_dbtransfer', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2092, 0, 'tool_filetypes', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2093, 0, 'tool_filetypes', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2094, 0, 'tool_filetypes', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2095, 0, 'tool_generator', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2096, 0, 'tool_generator', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2097, 0, 'tool_generator', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2098, 0, 'tool_health', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2099, 0, 'tool_health', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2100, 0, 'tool_health', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2101, 0, 'tool_httpsreplace', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2102, 0, 'tool_httpsreplace', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2103, 0, 'tool_httpsreplace', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2104, 0, 'tool_innodb', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2105, 0, 'tool_innodb', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2106, 0, 'tool_innodb', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2107, 0, 'tool_installaddon', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2108, 0, 'tool_installaddon', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2109, 0, 'tool_installaddon', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2110, 0, 'tool_langimport', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2111, 0, 'tool_langimport', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2112, 0, 'tool_langimport', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2113, 0, 'tool_licensemanager', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472259),
(2114, 0, 'tool_licensemanager', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2115, 0, 'tool_licensemanager', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472259),
(2116, 0, 'tool_log', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2117, 0, 'tool_log', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2118, 0, 'tool_log', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2119, 0, 'tool_lp', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2120, 0, 'tool_lp', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472259),
(2121, 0, 'tool_lp', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472259),
(2122, 0, 'tool_lpimportcsv', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472259),
(2123, 0, 'tool_lpimportcsv', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2124, 0, 'tool_lpimportcsv', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2125, 0, 'tool_lpmigrate', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2126, 0, 'tool_lpmigrate', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2127, 0, 'tool_lpmigrate', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2128, 0, 'tool_messageinbound', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2129, 0, 'tool_messageinbound', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2130, 0, 'tool_messageinbound', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2131, 0, 'tool_mobile', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2132, 0, 'tool_mobile', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2133, 0, 'tool_mobile', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2134, 0, 'tool_monitor', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2135, 0, 'tool_monitor', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2136, 0, 'tool_monitor', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2137, 0, 'tool_moodlenet', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472260),
(2138, 0, 'tool_moodlenet', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2139, 0, 'tool_moodlenet', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472260),
(2140, 0, 'tool_multilangupgrade', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2141, 0, 'tool_multilangupgrade', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2142, 0, 'tool_multilangupgrade', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2143, 0, 'tool_oauth2', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2144, 0, 'tool_oauth2', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2145, 0, 'tool_oauth2', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2146, 0, 'tool_phpunit', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2147, 0, 'tool_phpunit', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2148, 0, 'tool_phpunit', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2149, 0, 'tool_policy', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2150, 0, 'tool_policy', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2151, 0, 'tool_policy', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2152, 0, 'tool_profiling', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2153, 0, 'tool_profiling', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2154, 0, 'tool_profiling', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2155, 0, 'tool_recyclebin', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2156, 0, 'tool_recyclebin', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2157, 0, 'tool_recyclebin', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472260),
(2158, 0, 'tool_replace', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472260),
(2159, 0, 'tool_replace', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472260),
(2160, 0, 'tool_replace', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2161, 0, 'tool_spamcleaner', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2162, 0, 'tool_spamcleaner', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2163, 0, 'tool_spamcleaner', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2164, 0, 'tool_task', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2165, 0, 'tool_task', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2166, 0, 'tool_task', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2167, 0, 'tool_templatelibrary', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2168, 0, 'tool_templatelibrary', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2169, 0, 'tool_templatelibrary', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2170, 0, 'tool_unsuproles', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2171, 0, 'tool_unsuproles', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2172, 0, 'tool_unsuproles', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2173, 0, 'tool_uploadcourse', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2174, 0, 'tool_uploadcourse', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2175, 0, 'tool_uploadcourse', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2176, 0, 'tool_uploaduser', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2177, 0, 'tool_uploaduser', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2178, 0, 'tool_uploaduser', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2179, 0, 'tool_usertours', '2019111801', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2180, 0, 'tool_usertours', '2020061501', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2181, 0, 'tool_usertours', '2020082700', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2182, 0, 'tool_usertours', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2183, 0, 'tool_usertours', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2184, 0, 'tool_xmldb', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2185, 0, 'tool_xmldb', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2186, 0, 'tool_xmldb', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2187, 0, 'cachestore_apcu', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2188, 0, 'cachestore_apcu', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2189, 0, 'cachestore_apcu', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2190, 0, 'cachestore_file', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2191, 0, 'cachestore_file', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2192, 0, 'cachestore_file', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2193, 0, 'cachestore_memcached', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2194, 0, 'cachestore_memcached', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2195, 0, 'cachestore_memcached', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2196, 0, 'cachestore_mongodb', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2197, 0, 'cachestore_mongodb', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2198, 0, 'cachestore_mongodb', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2199, 0, 'cachestore_redis', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472261),
(2200, 0, 'cachestore_redis', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472261),
(2201, 0, 'cachestore_redis', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472261),
(2202, 0, 'cachestore_session', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472262),
(2203, 0, 'cachestore_session', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2204, 0, 'cachestore_session', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472262),
(2205, 0, 'cachestore_static', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472262),
(2206, 0, 'cachestore_static', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2207, 0, 'cachestore_static', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472262),
(2208, 0, 'cachelock_file', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472262),
(2209, 0, 'cachelock_file', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2210, 0, 'cachelock_file', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472262),
(2211, 0, 'fileconverter_googledrive', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472262),
(2212, 0, 'fileconverter_googledrive', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2213, 0, 'fileconverter_googledrive', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472262),
(2214, 0, 'fileconverter_unoconv', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472262),
(2215, 0, 'fileconverter_unoconv', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2216, 0, 'fileconverter_unoconv', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472262),
(2217, 0, 'contenttype_h5p', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472262),
(2218, 0, 'contenttype_h5p', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2219, 0, 'contenttype_h5p', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472262),
(2220, 0, 'theme_boost', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472262),
(2221, 0, 'theme_boost', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2222, 0, 'theme_boost', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472262),
(2223, 0, 'theme_classic', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472262),
(2224, 0, 'theme_classic', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2225, 0, 'theme_classic', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472262),
(2226, 0, 'h5plib_v124', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472262),
(2227, 0, 'h5plib_v124', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2228, 0, 'h5plib_v124', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472262),
(2229, 0, 'paygw_paypal', NULL, '2020110901', 'Starting plugin installation', NULL, '', 2, 1618472262),
(2230, 0, 'paygw_paypal', '2020110901', '2020110901', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2231, 0, 'paygw_paypal', '2020110901', '2020110901', 'Plugin installed', NULL, '', 2, 1618472262),
(2232, 0, 'assignsubmission_comments', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472262),
(2233, 0, 'assignsubmission_comments', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472262),
(2234, 0, 'assignsubmission_comments', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2235, 0, 'assignsubmission_file', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2236, 0, 'assignsubmission_file', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2237, 0, 'assignsubmission_file', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2238, 0, 'assignsubmission_onlinetext', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2239, 0, 'assignsubmission_onlinetext', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2240, 0, 'assignsubmission_onlinetext', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2241, 0, 'assignfeedback_comments', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2242, 0, 'assignfeedback_comments', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2243, 0, 'assignfeedback_comments', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2244, 0, 'assignfeedback_editpdf', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2245, 0, 'assignfeedback_editpdf', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2246, 0, 'assignfeedback_editpdf', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2247, 0, 'assignfeedback_file', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2248, 0, 'assignfeedback_file', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2249, 0, 'assignfeedback_file', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2250, 0, 'assignfeedback_offline', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2251, 0, 'assignfeedback_offline', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2252, 0, 'assignfeedback_offline', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2253, 0, 'assignment_offline', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2254, 0, 'assignment_offline', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2255, 0, 'assignment_offline', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2256, 0, 'assignment_online', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2257, 0, 'assignment_online', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2258, 0, 'assignment_online', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2259, 0, 'assignment_upload', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2260, 0, 'assignment_upload', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2261, 0, 'assignment_upload', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2262, 0, 'assignment_uploadsingle', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2263, 0, 'assignment_uploadsingle', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2264, 0, 'assignment_uploadsingle', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2265, 0, 'booktool_exportimscp', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2266, 0, 'booktool_exportimscp', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2267, 0, 'booktool_exportimscp', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2268, 0, 'booktool_importhtml', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2269, 0, 'booktool_importhtml', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2270, 0, 'booktool_importhtml', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2271, 0, 'booktool_print', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2272, 0, 'booktool_print', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2273, 0, 'booktool_print', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472263),
(2274, 0, 'datafield_checkbox', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472263),
(2275, 0, 'datafield_checkbox', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472263),
(2276, 0, 'datafield_checkbox', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2277, 0, 'datafield_date', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2278, 0, 'datafield_date', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2279, 0, 'datafield_date', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2280, 0, 'datafield_file', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2281, 0, 'datafield_file', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2282, 0, 'datafield_file', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2283, 0, 'datafield_latlong', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2284, 0, 'datafield_latlong', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2285, 0, 'datafield_latlong', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2286, 0, 'datafield_menu', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2287, 0, 'datafield_menu', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2288, 0, 'datafield_menu', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2289, 0, 'datafield_multimenu', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2290, 0, 'datafield_multimenu', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2291, 0, 'datafield_multimenu', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2292, 0, 'datafield_number', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2293, 0, 'datafield_number', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2294, 0, 'datafield_number', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2295, 0, 'datafield_picture', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2296, 0, 'datafield_picture', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2297, 0, 'datafield_picture', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2298, 0, 'datafield_radiobutton', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2299, 0, 'datafield_radiobutton', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2300, 0, 'datafield_radiobutton', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2301, 0, 'datafield_text', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2302, 0, 'datafield_text', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2303, 0, 'datafield_text', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2304, 0, 'datafield_textarea', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2305, 0, 'datafield_textarea', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2306, 0, 'datafield_textarea', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2307, 0, 'datafield_url', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2308, 0, 'datafield_url', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2309, 0, 'datafield_url', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2310, 0, 'datapreset_imagegallery', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2311, 0, 'datapreset_imagegallery', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2312, 0, 'datapreset_imagegallery', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2313, 0, 'forumreport_summary', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2314, 0, 'forumreport_summary', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2315, 0, 'forumreport_summary', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2316, 0, 'ltiservice_basicoutcomes', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2317, 0, 'ltiservice_basicoutcomes', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472264),
(2318, 0, 'ltiservice_basicoutcomes', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472264),
(2319, 0, 'ltiservice_gradebookservices', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472264),
(2320, 0, 'ltiservice_gradebookservices', '2020042401', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2321, 0, 'ltiservice_gradebookservices', '2020042402', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2322, 0, 'ltiservice_gradebookservices', '2020042403', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2323, 0, 'ltiservice_gradebookservices', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2324, 0, 'ltiservice_gradebookservices', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2325, 0, 'ltiservice_memberships', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2326, 0, 'ltiservice_memberships', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2327, 0, 'ltiservice_memberships', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2328, 0, 'ltiservice_profile', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2329, 0, 'ltiservice_profile', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2330, 0, 'ltiservice_profile', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2331, 0, 'ltiservice_toolproxy', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2332, 0, 'ltiservice_toolproxy', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2333, 0, 'ltiservice_toolproxy', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2334, 0, 'ltiservice_toolsettings', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2335, 0, 'ltiservice_toolsettings', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2336, 0, 'ltiservice_toolsettings', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2337, 0, 'quiz_grading', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2338, 0, 'quiz_grading', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2339, 0, 'quiz_grading', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2340, 0, 'quiz_overview', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2341, 0, 'quiz_overview', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2342, 0, 'quiz_overview', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2343, 0, 'quiz_responses', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2344, 0, 'quiz_responses', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2345, 0, 'quiz_responses', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2346, 0, 'quiz_statistics', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2347, 0, 'quiz_statistics', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265);
INSERT INTO `mo_upgrade_log` (`id`, `type`, `plugin`, `version`, `targetversion`, `info`, `details`, `backtrace`, `userid`, `timemodified`) VALUES
(2348, 0, 'quiz_statistics', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2349, 0, 'quizaccess_delaybetweenattempts', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2350, 0, 'quizaccess_delaybetweenattempts', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2351, 0, 'quizaccess_delaybetweenattempts', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2352, 0, 'quizaccess_ipaddress', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2353, 0, 'quizaccess_ipaddress', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2354, 0, 'quizaccess_ipaddress', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2355, 0, 'quizaccess_numattempts', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2356, 0, 'quizaccess_numattempts', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2357, 0, 'quizaccess_numattempts', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2358, 0, 'quizaccess_offlineattempts', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2359, 0, 'quizaccess_offlineattempts', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2360, 0, 'quizaccess_offlineattempts', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472265),
(2361, 0, 'quizaccess_openclosedate', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472265),
(2362, 0, 'quizaccess_openclosedate', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472265),
(2363, 0, 'quizaccess_openclosedate', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472266),
(2364, 0, 'quizaccess_password', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472266),
(2365, 0, 'quizaccess_password', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472266),
(2366, 0, 'quizaccess_password', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472266),
(2367, 0, 'quizaccess_seb', NULL, '2020110900', 'Starting plugin installation', NULL, '', 2, 1618472266),
(2368, 0, 'quizaccess_seb', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472266),
(2369, 0, 'quizaccess_seb', '2020110900', '2020110900', 'Plugin installed', NULL, '', 2, 1618472267),
(2370, 0, 'quizaccess_securewindow', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472267),
(2371, 0, 'quizaccess_securewindow', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472267),
(2372, 0, 'quizaccess_securewindow', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472267),
(2373, 0, 'quizaccess_timelimit', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472267),
(2374, 0, 'quizaccess_timelimit', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472267),
(2375, 0, 'quizaccess_timelimit', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472267),
(2376, 0, 'scormreport_basic', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472267),
(2377, 0, 'scormreport_basic', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472267),
(2378, 0, 'scormreport_basic', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472267),
(2379, 0, 'scormreport_graphs', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472267),
(2380, 0, 'scormreport_graphs', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472267),
(2381, 0, 'scormreport_graphs', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472267),
(2382, 0, 'scormreport_interactions', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472267),
(2383, 0, 'scormreport_interactions', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472267),
(2384, 0, 'scormreport_interactions', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472267),
(2385, 0, 'scormreport_objectives', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472267),
(2386, 0, 'scormreport_objectives', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472267),
(2387, 0, 'scormreport_objectives', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472267),
(2388, 0, 'workshopform_accumulative', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472267),
(2389, 0, 'workshopform_accumulative', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472267),
(2390, 0, 'workshopform_accumulative', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472267),
(2391, 0, 'workshopform_comments', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472267),
(2392, 0, 'workshopform_comments', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472267),
(2393, 0, 'workshopform_comments', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472267),
(2394, 0, 'workshopform_numerrors', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472267),
(2395, 0, 'workshopform_numerrors', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472267),
(2396, 0, 'workshopform_numerrors', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2397, 0, 'workshopform_rubric', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2398, 0, 'workshopform_rubric', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2399, 0, 'workshopform_rubric', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2400, 0, 'workshopallocation_manual', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2401, 0, 'workshopallocation_manual', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2402, 0, 'workshopallocation_manual', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2403, 0, 'workshopallocation_random', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2404, 0, 'workshopallocation_random', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2405, 0, 'workshopallocation_random', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2406, 0, 'workshopallocation_scheduled', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2407, 0, 'workshopallocation_scheduled', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2408, 0, 'workshopallocation_scheduled', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2409, 0, 'workshopeval_best', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2410, 0, 'workshopeval_best', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2411, 0, 'workshopeval_best', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2412, 0, 'atto_accessibilitychecker', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2413, 0, 'atto_accessibilitychecker', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2414, 0, 'atto_accessibilitychecker', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2415, 0, 'atto_accessibilityhelper', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2416, 0, 'atto_accessibilityhelper', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2417, 0, 'atto_accessibilityhelper', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2418, 0, 'atto_align', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2419, 0, 'atto_align', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2420, 0, 'atto_align', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2421, 0, 'atto_backcolor', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2422, 0, 'atto_backcolor', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2423, 0, 'atto_backcolor', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2424, 0, 'atto_bold', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2425, 0, 'atto_bold', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2426, 0, 'atto_bold', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2427, 0, 'atto_charmap', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2428, 0, 'atto_charmap', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2429, 0, 'atto_charmap', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2430, 0, 'atto_clear', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2431, 0, 'atto_clear', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2432, 0, 'atto_clear', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2433, 0, 'atto_collapse', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2434, 0, 'atto_collapse', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2435, 0, 'atto_collapse', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472268),
(2436, 0, 'atto_emojipicker', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472268),
(2437, 0, 'atto_emojipicker', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472268),
(2438, 0, 'atto_emojipicker', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2439, 0, 'atto_emoticon', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2440, 0, 'atto_emoticon', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2441, 0, 'atto_emoticon', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2442, 0, 'atto_equation', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2443, 0, 'atto_equation', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2444, 0, 'atto_equation', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2445, 0, 'atto_fontcolor', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2446, 0, 'atto_fontcolor', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2447, 0, 'atto_fontcolor', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2448, 0, 'atto_h5p', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2449, 0, 'atto_h5p', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2450, 0, 'atto_h5p', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2451, 0, 'atto_html', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2452, 0, 'atto_html', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2453, 0, 'atto_html', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2454, 0, 'atto_image', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2455, 0, 'atto_image', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2456, 0, 'atto_image', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2457, 0, 'atto_indent', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2458, 0, 'atto_indent', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2459, 0, 'atto_indent', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2460, 0, 'atto_italic', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2461, 0, 'atto_italic', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2462, 0, 'atto_italic', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2463, 0, 'atto_link', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2464, 0, 'atto_link', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2465, 0, 'atto_link', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2466, 0, 'atto_managefiles', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2467, 0, 'atto_managefiles', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2468, 0, 'atto_managefiles', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2469, 0, 'atto_media', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2470, 0, 'atto_media', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2471, 0, 'atto_media', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2472, 0, 'atto_noautolink', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2473, 0, 'atto_noautolink', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2474, 0, 'atto_noautolink', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2475, 0, 'atto_orderedlist', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2476, 0, 'atto_orderedlist', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472269),
(2477, 0, 'atto_orderedlist', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472269),
(2478, 0, 'atto_recordrtc', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472269),
(2479, 0, 'atto_recordrtc', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2480, 0, 'atto_recordrtc', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2481, 0, 'atto_rtl', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2482, 0, 'atto_rtl', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2483, 0, 'atto_rtl', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2484, 0, 'atto_strike', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2485, 0, 'atto_strike', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2486, 0, 'atto_strike', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2487, 0, 'atto_subscript', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2488, 0, 'atto_subscript', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2489, 0, 'atto_subscript', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2490, 0, 'atto_superscript', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2491, 0, 'atto_superscript', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2492, 0, 'atto_superscript', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2493, 0, 'atto_table', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2494, 0, 'atto_table', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2495, 0, 'atto_table', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2496, 0, 'atto_title', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2497, 0, 'atto_title', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2498, 0, 'atto_title', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2499, 0, 'atto_underline', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2500, 0, 'atto_underline', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2501, 0, 'atto_underline', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2502, 0, 'atto_undo', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2503, 0, 'atto_undo', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2504, 0, 'atto_undo', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2505, 0, 'atto_unorderedlist', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2506, 0, 'atto_unorderedlist', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2507, 0, 'atto_unorderedlist', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2508, 0, 'tinymce_ctrlhelp', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2509, 0, 'tinymce_ctrlhelp', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2510, 0, 'tinymce_ctrlhelp', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2511, 0, 'tinymce_managefiles', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2512, 0, 'tinymce_managefiles', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2513, 0, 'tinymce_managefiles', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2514, 0, 'tinymce_moodleemoticon', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2515, 0, 'tinymce_moodleemoticon', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2516, 0, 'tinymce_moodleemoticon', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2517, 0, 'tinymce_moodleimage', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2518, 0, 'tinymce_moodleimage', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472270),
(2519, 0, 'tinymce_moodleimage', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472270),
(2520, 0, 'tinymce_moodlemedia', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472270),
(2521, 0, 'tinymce_moodlemedia', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472271),
(2522, 0, 'tinymce_moodlemedia', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472271),
(2523, 0, 'tinymce_moodlenolink', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472271),
(2524, 0, 'tinymce_moodlenolink', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472271),
(2525, 0, 'tinymce_moodlenolink', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472271),
(2526, 0, 'tinymce_pdw', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472271),
(2527, 0, 'tinymce_pdw', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472271),
(2528, 0, 'tinymce_pdw', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472271),
(2529, 0, 'tinymce_spellchecker', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472271),
(2530, 0, 'tinymce_spellchecker', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472271),
(2531, 0, 'tinymce_spellchecker', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472271),
(2532, 0, 'tinymce_wrap', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472271),
(2533, 0, 'tinymce_wrap', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472271),
(2534, 0, 'tinymce_wrap', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472271),
(2535, 0, 'logstore_database', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472271),
(2536, 0, 'logstore_database', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472271),
(2537, 0, 'logstore_database', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472271),
(2538, 0, 'logstore_legacy', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472271),
(2539, 0, 'logstore_legacy', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472271),
(2540, 0, 'logstore_legacy', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472271),
(2541, 0, 'logstore_standard', '2019111800', '2020110900', 'Starting plugin upgrade', NULL, '', 2, 1618472271),
(2542, 0, 'logstore_standard', '2020110900', '2020110900', 'Upgrade savepoint reached', NULL, '', 2, 1618472271),
(2543, 0, 'logstore_standard', '2020110900', '2020110900', 'Plugin upgraded', NULL, '', 2, 1618472271),
(2544, 0, 'local_mdl_course_enroll', NULL, '2019052000', 'Starting plugin installation', NULL, '', 2, 1621243693),
(2545, 0, 'local_mdl_course_enroll', '2019052000', '2019052000', 'Upgrade savepoint reached', NULL, '', 2, 1621243693),
(2546, 0, 'local_mdl_course_enroll', '2019052000', '2019052000', 'Plugin installed', NULL, '', 2, 1621243693),
(2547, 0, 'block_searchdashboard', NULL, '2018051410', 'Starting plugin installation', NULL, '', 2, 1626064020),
(2548, 0, 'block_searchdashboard', '2018051410', '2018051410', 'Upgrade savepoint reached', NULL, '', 2, 1626064020),
(2549, 0, 'block_searchdashboard', '2018051410', '2018051410', 'Plugin installed', NULL, '', 2, 1626064020),
(2550, 0, 'block_coursesearchlang', NULL, '2021052700', 'Starting plugin installation', NULL, '', 2, 1628002593),
(2551, 0, 'block_coursesearchlang', '2021052700', '2021052700', 'Upgrade savepoint reached', NULL, '', 2, 1628002593),
(2552, 0, 'block_coursesearchlang', '2021052700', '2021052700', 'Plugin installed', NULL, '', 2, 1628002593);

-- --------------------------------------------------------

--
-- Table structure for table `mo_url`
--

CREATE TABLE `mo_url` (
  `id` bigint NOT NULL,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `externalurl` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `display` smallint NOT NULL DEFAULT '0',
  `displayoptions` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parameters` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='each record is one url resource';

-- --------------------------------------------------------

--
-- Table structure for table `mo_user`
--

CREATE TABLE `mo_user` (
  `id` bigint NOT NULL,
  `auth` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `policyagreed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `mnethostid` bigint NOT NULL DEFAULT '0',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `emailstop` tinyint(1) NOT NULL DEFAULT '0',
  `icq` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `skype` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `yahoo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `aim` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msn` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone1` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `institution` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `calendartype` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'gregorian',
  `theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '99',
  `firstaccess` bigint NOT NULL DEFAULT '0',
  `lastaccess` bigint NOT NULL DEFAULT '0',
  `lastlogin` bigint NOT NULL DEFAULT '0',
  `currentlogin` bigint NOT NULL DEFAULT '0',
  `lastip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `secret` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `picture` bigint NOT NULL DEFAULT '0',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint NOT NULL DEFAULT '1',
  `mailformat` tinyint(1) NOT NULL DEFAULT '1',
  `maildigest` tinyint(1) NOT NULL DEFAULT '0',
  `maildisplay` tinyint NOT NULL DEFAULT '2',
  `autosubscribe` tinyint(1) NOT NULL DEFAULT '1',
  `trackforums` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `trustbitmask` bigint NOT NULL DEFAULT '0',
  `imagealt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastnamephonetic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstnamephonetic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternatename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `moodlenetprofile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='One record for each person';

--
-- Dumping data for table `mo_user`
--

INSERT INTO `mo_user` (`id`, `auth`, `confirmed`, `policyagreed`, `deleted`, `suspended`, `mnethostid`, `username`, `password`, `idnumber`, `firstname`, `lastname`, `email`, `emailstop`, `icq`, `skype`, `yahoo`, `aim`, `msn`, `phone1`, `phone2`, `institution`, `department`, `address`, `city`, `country`, `lang`, `calendartype`, `theme`, `timezone`, `firstaccess`, `lastaccess`, `lastlogin`, `currentlogin`, `lastip`, `secret`, `picture`, `url`, `description`, `descriptionformat`, `mailformat`, `maildigest`, `maildisplay`, `autosubscribe`, `trackforums`, `timecreated`, `timemodified`, `trustbitmask`, `imagealt`, `lastnamephonetic`, `firstnamephonetic`, `middlename`, `alternatename`, `moodlenetprofile`) VALUES
(1, 'manual', 1, 0, 0, 0, 1, 'guest', '$2y$10$zG79Bug6EekayegrmKBySOJ/Zj7kKChcFsXMDKvjREXotcjQYImCK', '', 'Guest user', ' ', 'root@localhost', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, '', 'This user is a special user that allows read-only access to some courses.', 1, 1, 0, 2, 1, 0, 0, 1599457746, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'manual', 1, 0, 0, 0, 1, 'admin', '$2y$10$2rkXH3lbmi8Kx2NQMVNSlOeKRX21kxLLX8aBdrQjXYWVFM2/yrRw.', '', 'Site', 'Owner', 'hanud@hotmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'New York', 'US', 'en', 'gregorian', '', '99', 1599457892, 1633935846, 1633931240, 1633932071, '172.31.79.165', '', 0, '', '', 0, 1, 0, 1, 1, 0, 0, 1627909214, 0, '', '', '', '', '', ''),
(3, 'manual', 1, 0, 0, 0, 1, 'sreekanths22@gmail.com', '$2y$10$P0ED37mSuX30vrtZRB2EnO0Zec4lkFIRozU2.fidakJsVdZ2f2AK2', '', 'Sreekanth', 'Chakravarthy', 'sreekanths22@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1599642257, 1599912612, 1599656475, 1599912612, '106.51.142.102', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1599640458, 1599640458, 0, '', '', '', '', '', NULL),
(4, 'manual', 1, 0, 0, 0, 1, 'demo365', '$2y$10$rajURLX6y92PN3mKOA9CQe1XNgKv9YfmYQGVVcnnfbbHP1shSRVfy', '', 'testfirstt', 'last', 'saroj@lds-international.in', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1626789227, 1632142527, 1632142403, 1632142527, '172.31.80.161', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1599903412, 1599903495, 0, '', '', '', '', '', NULL),
(5, 'email', 1, 0, 0, 0, 1, 'rsp42814', '$2y$10$UGOXcSHQFKRInURjCEiP3uFa9WbEJXvgDpaO50YTJcelUdNn1tX4i', '', 'RS', 'P', 'RSP42814@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'HYD', 'IN', 'en', 'gregorian', '', '99', 1600875138, 1605790507, 1600967606, 1605790343, '117.254.149.100', 's858GP3pw9TBC5l', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600874831, 1600874831, 0, NULL, '', '', '', '', NULL),
(6, 'email', 1, 0, 0, 0, 1, 'chinnikaza', '$2y$10$XHSIwMgct8h9vhXgQFJ2bum6xslKWEgr3ITUhXIXUkLQN8dmpcdvm', '', 'Sushmitha', 'Kanaparthi', 'sushmithakanaparthi@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1601025995, 1601037803, 1601025995, 1601037101, '45.117.64.196', 'KJ8GEtT5prLSKTP', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1601025879, 1601025879, 0, NULL, '', '', '', '', NULL),
(8, 'email', 1, 0, 0, 0, 1, 'chalasani', '$2y$10$hF.D8QZcT0t641iCyCgXSeni6/ujA3rksqogIh0XBpaI7IOZiMVKu', '', 'srinivas', 'chalasani', 'srinivas@highwaycabs.com', 0, '', '', '', '', '', '', '', '', '', '', 'hyderabad', 'IN', 'en', 'gregorian', '', '99', 1604550441, 1604550911, 1604550441, 1604550596, '117.195.135.229', 'KXiZDm8H7DhrL9h', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1604550358, 1604550358, 0, NULL, '', '', '', '', NULL),
(9, 'email', 1, 0, 0, 0, 1, 'hello123', '$2y$10$kZqaUYbnAIvgg.KlTXqHreFM7l/UBB.P56h1AAKDOXEP5Z5bu9t3S', '', 'raja', 'm', 'mallepeddi@yahoo.com', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 1604790944, 1604803937, 0, 1604790944, '108.5.114.85', 'CXlGmryl49ml4kR', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1604790843, 1604790843, 0, NULL, '', '', '', '', NULL),
(10, 'email', 1, 0, 1, 0, 1, 'bhargavim498@gmail.com.1621703104', '$2y$10$b0vCyn33WMGjL.6zHEZHq.AD6yWrGkJR7oxUEAFwklzJz7TMnhlvW', '', 'Bhargavi', 'maddoju', '23c0409b8488d0e91b9d14f12c432627', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1607922966, 1621687871, 1621687695, 1621687871, '172.31.35.55', 'Sy1qZEeRUzDmxje', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1607922801, 1621703104, 0, NULL, '', '', '', '', NULL),
(11, 'email', 1, 0, 1, 0, 1, 'ksandeep840@gmail.com.1621704739', '$2y$10$C.BquES0/P0cm4B.IGAosOVSaTkO7gwmAF5aV7y7Z36gGQCDY4qKm', '', 'sandeeo kumar', 'Bodepudi', 'b37ff57f25f6e38b5121a53f6888cdb3', 0, '', '', '', '', '', '', '', '', '', '', 'Hyderabad', 'IN', 'en', 'gregorian', '', '99', 1608024240, 1621703582, 1621687703, 1621703582, '172.31.67.30', 'vmfMyvpCaniq9c9', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1608024170, 1621704739, 0, NULL, '', '', '', '', NULL),
(12, 'email', 1, 0, 1, 0, 1, 'bodepudisandeepkumar@gmail.com.1621704780', '$2y$10$bPs7Y2QLwsqcANzPNiso2./0U2UbtrzdSOGQB18/RcdFgS97/URUC', '', 'Sandeep Kumar', 'Bodepudi', '2120ef8ca083ffac485839dec19a4a7c', 0, '', '', '', '', '', '', '', '', '', '', 'Hyderabad', 'IN', 'en', 'gregorian', '', '99', 1608029580, 1610457419, 1608189055, 1610457419, '157.47.68.76', 'DJo6k8S1kmUc7RQ', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1608029503, 1621704780, 0, NULL, '', '', '', '', NULL),
(13, 'email', 1, 0, 1, 1, 1, 'sandeepkumarbodepudi@gmail.com.1621704726', '$2y$10$G.RgeAHThAJM2Bub4su8h.HNpJ.PK.pjxrnDWXlQvmmy9/tuQggM6', '', 'sandeep kumar', 'Bodepudi', 'f34faa22bc58c50a49bc7746f85e4f9a', 0, '', '', '', '', '', '', '', '', '', '', 'Hyderabad', 'IN', 'en', 'gregorian', '', '99', 1608181719, 1610777622, 1610777303, 1610777622, '14.99.204.194', 'rQTyq6belLj0qrH', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1608181629, 1621704726, 0, NULL, '', '', '', '', NULL),
(14, 'email', 1, 0, 1, 0, 1, 'bhargavimanager123@gmail.com.1621704649', '$2y$10$DGRE6hcnMisT.LpkvtZrBerXfOsMUQ3SjlDx1Ra1xgDxvozLQQMBG', '', 'bhargavi', 'maddoju', '91d7487e020e4cc86e8c278ba532578d', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 1608358954, 1608358954, 0, 1608358954, '14.99.204.194', '4G4WSJHyIVLpXXk', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1608358860, 1621704649, 0, NULL, '', '', '', '', NULL),
(15, 'email', 1, 0, 0, 0, 1, 'rralla2000', '$2y$10$o9v1llw3y94q60C6ztqrQO1zZKpVI6mbJlAM4QsBgydy4RgRHspvK', '', 'Ranga', 'Alla', 'rralla2000@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Penuballi', 'IN', 'en', 'gregorian', '', '99', 1608881880, 1608882032, 0, 1608881880, '71.198.5.78', 'Vgk1SAQfIGv0pEh', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1608881699, 1608881699, 0, NULL, '', '', '', '', NULL),
(16, 'manual', 1, 0, 1, 0, 1, 'student01@campustutr.com.1621709042', '$2y$10$ssmrCDUMX9a19n60epnd5uHYmtktdw3.025OSf6bD6CU7R/ADF7wG', '', 'Student', '01', 'b0f272966386057c96b4e0bc3b2ebc0d', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1610073786, 1610074096, 0, 1610073786, '106.51.140.151', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1610072980, 1621709042, 0, '', '', '', '', '', NULL),
(17, 'email', 1, 0, 1, 0, 1, 'campustutrstudent1@gmail.com.1621709024', '$2y$10$ooqLKjpr0aYydS9vndm/d.ek5Cyfr3aYObSIB5cPt1md/Sqv1izq2', '', 'student', 'campus', '67b1b2a138886d396c9945a0173904ee', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 1610435897, 1621688461, 1621688306, 1621688461, '172.31.28.202', 'MFADJAQSb50Fac6', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610435791, 1621709024, 0, NULL, '', '', '', '', NULL),
(18, 'email', 0, 0, 1, 0, 1, 'campustutrstudent2@gamil.com.1621709083', '$2y$10$sFiFRKFi4/FXqjmcbHMO5eR/xYMjlaqzct2bgkktzz6LsVK3rEjDy', '', 'student', 'campus', '7540a5b8ba097e42f7be0ab70262deac', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'x0tmGWrkz9h5s7Q', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610436275, 1621709083, 0, NULL, '', '', '', '', NULL),
(19, 'email', 0, 0, 1, 0, 1, 'campusstudent2@gmail.com.1621708904', '$2y$10$HOuIoUJuan51v9Sa3heekuqxanl8.zgIvSeb3rqTptJna63Kdg816', '', 'campus', 'student', 'f48634fca010e59ad75f8ade6159026c', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'ILeRrr6PwqOUOng', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610438948, 1621708904, 0, NULL, '', '', '', '', NULL),
(20, 'email', 1, 0, 1, 0, 1, 'campustutrteacher1@gmail.com.1621709050', '$2y$10$ezKxVf3DjYBclFinlHGs.uVuv7M9VPBvR7cgqPfOHdNRmTGkYY7jG', '', 'teacher', 'campus', '326bdf1234c69b8d47e3648325a7775d', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1610442763, 1610442763, 0, 1610442763, '14.99.204.194', 'MLQjYgWUuO4vXRV', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610439040, 1621709050, 0, NULL, '', '', '', '', NULL),
(21, 'email', 0, 0, 1, 0, 1, 'campusstudent3@gmail.com.1621708911', '$2y$10$i0ut9mobbN7mx8cIUBXJu.4tlfcDPklO2Wd8uOey5SXiydLj86mja', '', 'campus', 'student', '36e8e7cf77cc10cef3757125f58946fc', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'uP1FdsCFMh7BGXB', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610439116, 1621708911, 0, NULL, '', '', '', '', NULL),
(22, 'email', 0, 0, 1, 0, 1, 'campusstudent4@gmail.com.1621708919', '$2y$10$jTcZRSN5c92nL24XA8OU0.mF6ADX/7i2nl1uOTGwP1OIl2c7NDP7e', '', 'campus', 'student', '94e0507732e4aa746336d8a8844469fa', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'jVyjfxKrkEyLk2u', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610439228, 1621708919, 0, NULL, '', '', '', '', NULL),
(23, 'email', 0, 0, 1, 0, 1, 'campusstudent5@gmail.com.1621708926', '$2y$10$1QjAHWQGNnulGi6otY21wu/ML6LkcLBul.u2ybsjjtSQB7Wm8q9xi', '', 'campus', 'student', 'cbc15a54b03e2cff9a42bfd2cadeb772', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'vEGPO3NbvLwU8Q7', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610439279, 1621708926, 0, NULL, '', '', '', '', NULL),
(24, 'email', 1, 0, 1, 0, 1, 'campustutrteacher2@gmail.com.1621709066', '$2y$10$14tLyPk3d08yz5JMitUV3ODTddIFnX6.fCs/qFOsED1rGD5QmWh8O', '', 'teacher', 'campus', 'a00439c402b3cd087e292f4939903638', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 1610442844, 1610814478, 1610814399, 1610814455, '69.141.100.17', 'dMfUqOW7Cw3N6pZ', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610441867, 1621709066, 0, NULL, '', '', '', '', NULL),
(25, 'email', 0, 0, 1, 0, 1, 'campustutrteacher3@gamil.com.1621709058', '$2y$10$zRTX058LO.bD9GBdcx26TePuJS52TjRTU/47Mq/E9fGX3NoJYlS9a', '', 'teacher', 'campus', '0939da75b18ec3136f9dfdef2d1b86b2', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'WYPUS5XBqQlhzzx', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610442148, 1621709058, 0, NULL, '', '', '', '', NULL),
(26, 'email', 1, 0, 1, 0, 1, 'campustutrteacher4@gmail.com.1621709074', '$2y$10$M4jsHGPpYZP0rBtEO4N2nOYMlK3PZdxNKXlCa59KoV0n25o17FRRO', '', 'teacher', 'campus', '1d04f6866c38956b72c5a0cae81ef7a2', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 1610443406, 1610524979, 1610443406, 1610524979, '14.99.204.194', '0ZNByM1ptDUpO2d', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610442264, 1621709074, 0, NULL, '', '', '', '', NULL),
(27, 'email', 1, 0, 1, 0, 1, 'campustutrteacher5@gmail.com.1621709034', '$2y$10$4tuRzBLjfWNTPEBOnuyCPuDgEtacY6k9KodKlEaia05xpfX52bFC2', '', 'teacher', 'campus', '48c00bcc13ec76fcda9a2aa96acf8087', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 1610443470, 1610444950, 0, 1610443470, '14.99.204.194', 'Y312aSwHaJp27ZN', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610442495, 1621709034, 0, NULL, '', '', '', '', NULL),
(28, 'email', 0, 0, 1, 0, 1, 'campusteacher3@gmail.com.1621708964', '$2y$10$zJ9JP1GbUm5xb9qTsTQmw.O72kcAeeE1QV2FNE829avU86qCdffxW', '', 'campus', 'teacher3', '204cf50c38bbfa5cf21261e0924c3c1a', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'fdR02W2JP3HLhUn', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610525256, 1621708964, 0, NULL, '', '', '', '', NULL),
(29, 'email', 1, 0, 1, 0, 1, 'campustutrteacher3@gmail.com.1621708971', '$2y$10$AJvRt5Bi/lgwIVQ5Ckie8uFE8rTZ9Hzt7Du541nK7dW4nMfavskdu', '', 'campus', 'teacher3', '6b03e34eea45acd55f477244a6037ed5', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1610525594, 1610525594, 0, 1610525594, '14.99.204.194', 'S3C0baiValj5ORU', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610525521, 1621708971, 0, NULL, '', '', '', '', NULL),
(30, 'email', 1, 0, 1, 0, 1, 'campustutrstudent2@gmail.com.1621708978', '$2y$10$xiScm5qlJaAZ6eXBsgi9vePhs75o81q83FjZT4E0J9XdDfeSgJZ5K', '', 'campus', 'student', '5758d05b28f17ef658c36790ef4b3d17', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1610689230, 1610690060, 1610689230, 1610690060, '14.99.204.194', 'ri9pzH9QYNIiRVz', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610689104, 1621708978, 0, NULL, '', '', '', '', NULL),
(31, 'email', 1, 0, 1, 0, 1, 'campustutrstudent3@gmail.com.1621708983', '$2y$10$mmzY6i98Hl4p8ZnzgtgnnOnRXD76.qzWhxKfS6hreILgTnu.CiAJi', '', 'campus', 'student', 'b01dbdbf6c1a1deb951d6ffca5c95021', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1610689825, 1610689825, 0, 1610689825, '14.99.204.194', 'pmlmsl3Wed1X9QY', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610689582, 1621708983, 0, NULL, '', '', '', '', NULL),
(32, 'email', 1, 0, 1, 0, 1, 'campustutrstudent4@gmail.com.1621708990', '$2y$10$fQClS8VlqKX2QA3/frigOuZ5BsblCdnNflbZLMCxGHQGDwjn1SAN.', '', 'campus', 'student', 'a6e919576a500df4176e440a8ac9f720', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1610690690, 1610690690, 0, 1610690690, '14.99.204.194', 'XBfiEbT3n8Oxqiq', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610690618, 1621708990, 0, NULL, '', '', '', '', NULL),
(33, 'email', 1, 0, 1, 0, 1, 'campustutrstudent5@gmail.com.1621708997', '$2y$10$XYoDX4dIh49RHgT.b7Uip.4JOFza6SJ602frYh3GmagtYzRV86hLW', '', 'campus', 'student', 'f0aa8393b1599d36a9dff85dff914414', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 1610692464, 1610692464, 0, 1610692464, '14.99.204.194', '0kQhXJBOqFm3HmX', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1610692297, 1621708997, 0, '', '', '', '', '', NULL),
(34, 'email', 0, 0, 0, 0, 1, 'hari@babu', '$2y$10$0WLQBEgxrHIhX/PG.dx3ku3c4ptb.yTvJQqKKx.57XJ3xOrzy6P/.', '', 'hari babu', 'mulugu', 'harimulugu97@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', '7RTB0dcoYHfPMCr', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1617783686, 1617783686, 0, NULL, '', '', '', '', NULL),
(35, 'email', 0, 0, 1, 0, 1, 'samaikyasreeramaneni5@gmail.com.1621704697', '$2y$10$mMX262nmnacyDdTVv4okpOi3ZTKpHQVje7.dNbNe2qW33Ie3HYsb6', '', 'Samaikya', 'Sreeramaneni', '974dae99f2d450e93e093c8ee1671e04', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'SGmNUp0l46VUvSt', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1620298876, 1621704697, 0, NULL, '', '', '', '', NULL),
(36, 'email', 0, 0, 1, 0, 1, 'bodepudisandeep6@gmail.com.1621704752', '$2y$10$o/xUucTR4cUAqYjUeYrpyOiLo2ve4/kCwJ1dNj3XkB85CCMDch0zW', '', 'sandeep', 'bodepudi', 'c48fbc0a651cd365977df3026f237ce4', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1621500669, 1621500669, 0, 1621500669, '172.31.67.30', 'GsHCEmYZQLq1FQC', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621232730, 1621704752, 0, NULL, '', '', '', '', NULL),
(48, 'manual', 1, 0, 0, 0, 1, 'sand@gmail.com', 'bb8237489cd1667ac3820af73244b021', '', 'Sandeep', 'Gupta', 'sand@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1621323728, 1621325529, 1621323879, 1621325529, '172.31.59.188', '', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621323458, 1621323458, 0, NULL, NULL, NULL, ' ', NULL, NULL),
(49, 'manual', 1, 0, 0, 0, 1, 'ssss111@gmail.com', '$2y$10$T2/Zaizls8us3mnA1RIxCeAH9WLvgEJpDgO5tgRzcNq6WJd9nrhXS', '', 'testfirst', 'demo', 'ssss111@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1621324974, 1621326934, 0, 1621324974, '172.31.35.55', '', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621324974, 1621324974, 0, NULL, NULL, NULL, ' ', NULL, NULL),
(50, 'email', 1, 0, 1, 0, 1, 'bodepudisandeepkumar683@gmail.com.1621704766', '$2y$10$t9EKBl30vjeG0mg19ADkL.BWasZxvYEy7cGyAmC3TAPvH4sTBq6xO', '', 'sandeep', 'bodepudi', 'eb36647b513983b57486f148850e1bde', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1621404874, 1621404874, 0, 1621404874, '172.31.35.55', 'uGzrBIzBp0uALCn', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621404799, 1621704766, 0, NULL, '', '', '', '', NULL),
(51, 'manual', 1, 0, 0, 0, 1, 'sks@gmail.com', '2cebf94f8ea13fd4427290b3f324b5ff', '', 'test22', 'test', 'sks@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1621405907, 1621405907, 0, 1621405907, '172.31.67.30', '', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621405907, 1621405907, 0, NULL, NULL, NULL, ' ', NULL, NULL),
(52, 'email', 1, 0, 0, 0, 1, 'bhagam', '$2y$10$ukmBUeYgbo3OWw2w1olJx.5dxNDHdPH7oO8Yjo6tAVbzPSeuntXWe', '', 'gowthami', 'bhagam', 'gowthamichowdary369@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1621408423, 1621408423, 0, 1621408423, '172.31.59.188', 'LW7tARnBNXX0HKv', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621408346, 1621408346, 0, NULL, '', '', '', '', NULL),
(53, 'email', 0, 0, 0, 0, 1, 'minnu', '$2y$10$jVZIg6tatoGqutfNLvtyyuBfVHUJvzUvWi.3r5gBx5uRk2pU8QvcS', '', 'minnu', 'Sreeramaneni', 'minnusreeramaneni5@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'QgKdpNsqHPy54DY', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621408734, 1621408734, 0, NULL, '', '', '', '', NULL),
(54, 'email', 1, 0, 0, 0, 1, 'manasa', '$2y$10$Erw4d7GNvj0MHSRoLatCKu94/o7xhTxp8RdZLx5iwHBwvtN2idu1C', '', 'manasa', 'vempati', 'vempatimanasa123@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1621409673, 1628153035, 1628087189, 1628153035, '172.31.44.62', 'Gq0KaG7Y3G6JI2s', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621409597, 1621409597, 0, NULL, '', '', '', '', NULL),
(55, 'email', 1, 0, 0, 0, 1, 'minnus', '$2y$10$FQU9AqtP.5B.8lbRgT4kBOhwnwm8WEZANgw.Ew7Dx8QKCz17tiUq2', '', 'minnu', 'Sreeramaneni', 'sreeramaneniminnu5@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1621409961, 1621409961, 0, 1621409961, '172.31.35.55', 'NdDeUyNVJb8E44D', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621409767, 1621409767, 0, NULL, '', '', '', '', NULL),
(56, 'email', 1, 0, 1, 0, 1, 'manjula.maddoju@gmail.com.1621704673', '$2y$10$U.QJKg1Bf6Cuvtw6vAutOu.isZPmJuynVe3dX1nPOh2vln6fsuLZG', '', 'manjula', 'maddoju', '86f9ab6653b3b0151eef76b46ba2f9a5', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', '', 'en', 'gregorian', '', '99', 1621412538, 1621412675, 1621412538, 1621412675, '172.31.28.202', 'Z8hCdCgPV3uQZEM', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621412316, 1621704673, 0, NULL, '', '', '', '', NULL),
(57, 'email', 1, 0, 1, 0, 1, 'injamsruthi119@gmail.com.1621704707', '$2y$10$9zHC2Wfndo0rtUpu8TtvueweFSPviBNXgVN7MNxQitbVTMrRWwNR6', '', 'sruthi', 'injam', '350a59bf511d617e132168affb3dcb76', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1621412804, 1621412804, 0, 1621412804, '172.31.91.243', 'gohGce78cRFP4a0', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621412639, 1621704707, 0, NULL, '', '', '', '', NULL),
(67, 'manual', 1, 0, 0, 0, 1, 'saroj@lds-international.in', 'ece8f3f904cfe78313d7d082f5e1f8f5', '', 'Usertest', 'Demo', 'suneet@lds-international.in', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1621501903, 1621501903, 0, 1621501903, '172.31.28.202', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1621501902, 1622123069, 0, '', '', '', ' ', '', ''),
(68, 'email', 1, 0, 0, 0, 1, 'sandeep7086', '$2y$10$MU0A5iMEkAQlM87/fAWXhur6vGphs7WgyZtrShQPrR6uJpzfWl7E.', '', 'Sandeep', 'Bodepudi', 'ksandeep840@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1621704963, 1633504387, 1633496168, 1633504387, '172.31.44.62', 'rT9zUvYTFCStWob', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621704882, 1621704882, 0, NULL, '', '', '', '', NULL),
(69, 'email', 1, 0, 0, 0, 1, 'sandeepkumar7086', '$2y$10$jCMdw1CcBnlN8WZcsxaqgeuc9ZXUU79m24ejZLJNr//yAu4CWRbCu', '', 'B.sandeep', 'kumar', 'bodepudisandeepkumar@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Hyderabad', 'IN', 'en', 'gregorian', '', '99', 1621707851, 1633429070, 1629205015, 1633429070, '172.31.80.161', 'RfjPT1wn5CY9I65', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621707782, 1621707782, 0, NULL, '', '', '', '', NULL),
(70, 'email', 1, 0, 0, 0, 1, 'samaikya', '$2y$10$NSyrvQU7Bbx5AaOsueVDIeFIgsMH4yYFB7wwK0UZkmvvDEVUWJXGa', '', 'Samaikya', 'Sreeramaneni', 'samaikyasreeramaneni5@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1621751908, 1626511121, 1626511033, 1626511121, '172.31.94.175', 'ajFljdlQud7O7yR', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621751830, 1621751830, 0, NULL, '', '', '', '', NULL),
(71, 'email', 1, 0, 1, 0, 1, 'bhargavim498@gmail.com.1632813430', '$2y$10$hpWq2ISUcSgAtiWt8vxPFe0aBl/U90ynmUJjs04wGc9RAS.XQs.PC', '', 'bhargavi', 'maddoju', '23c0409b8488d0e91b9d14f12c432627', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1621764375, 1624347581, 1621764515, 1624347581, '172.31.10.156', 'G3vCxTUpayojD47', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621763339, 1632813430, 0, NULL, '', '', '', '', NULL),
(72, 'email', 1, 0, 0, 0, 1, 'gowthami', '$2y$10$VifELPcrhtajdHq76KoveOk7jrMCQk5LO9zFx0KUoAXwvkJaP9.uO', '', 'gowthami', 'bhagam', 'gowthamib1163@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1621770583, 1621770583, 0, 1621770583, '172.31.11.233', 'Qt7ESMLpduYARjH', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621770434, 1621770434, 0, NULL, '', '', '', '', NULL),
(73, 'email', 1, 0, 1, 0, 1, 'mogilishettyswetha123@gmail.com.1632813128', '$2y$10$YPP91lA9OScePgcKlvckHuR3c7uVvrnJzEc5xK4WLhBR9A3Uj4QvG', '', 'swetha', 'mogilishetty', '816ec7940e73f853bb8af9b2a4aecd86', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1621771394, 1632232180, 1631189990, 1632231885, '172.31.18.160', 'BRACeiMECTkyYlW', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621771314, 1632813128, 0, NULL, '', '', '', '', NULL),
(74, 'email', 1, 0, 0, 0, 1, 'sruthiabhi', '$2y$10$5bmi4ZtLDlMpzKLnV2OvMeZhvBBNHN0PHicKmNQFMB7hNGQaUxFLa', '', 'sruthi', 'injam', 'injamsruthi119@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1621830865, 1621830865, 0, 1621830865, '172.31.11.233', 'yiutQUNODywQ1NI', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621830786, 1621830786, 0, NULL, '', '', '', '', NULL),
(75, 'email', 1, 0, 0, 0, 1, 'keerthi', '$2y$10$MqkNJ1/mFQwmQU2BTiXI2eCl6YGWCDd.GJ81AKy46RvJG/tyYWrD6', '', 'keerthi', 'mogilisetti', '2089a0432@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1621835969, 1633594014, 1633504746, 1633594014, '172.31.54.221', 'IBHjRHcIJhigQVl', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1621835874, 1621835874, 0, NULL, '', '', '', '', NULL),
(77, 'oauth2', 1, 0, 0, 0, 1, 'kirandeep.arora08@gmail.com', '', '', 'Kirandeep', 'Arora', 'kirandeep.arora08@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1623995137, 1624084019, 1623996400, 1624084019, '172.31.44.62', 'nKQ6QqNBckvnSW0', 118366, '', NULL, 1, 1, 0, 2, 1, 0, 1623995002, 1624084019, 0, NULL, NULL, NULL, NULL, 'Kirandeep Kaur Arora', NULL),
(78, 'oauth2', 1, 0, 0, 0, 1, 'kk8451462@gmail.com', '', '', 'Kirandeep', 'Kaur', 'kk8451462@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1624005569, 1624005569, 0, 1624005569, '172.31.18.160', '9WmWF416TZwQMNZ', 118372, '', NULL, 1, 1, 0, 2, 1, 0, 1624005425, 1624005425, 0, NULL, NULL, NULL, NULL, 'Kirandeep Kaur', NULL),
(79, 'email', 0, 0, 0, 0, 1, 'sam', '$2y$10$.jjoXrglB1GQwJXkpHALK.XP6myJ8zmcy/LWa3kv87JoGYSYZgyh.', '', 'samaikya', 'Sreeramaneni', 'samaikya.campustutr5@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'gQqMC0oP0yFuFEz', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1626511272, 1626511272, 0, NULL, '', '', '', '', NULL),
(80, 'email', 1, 0, 0, 0, 1, 'samaikya@sam5', '$2y$10$/GEOrgA0N5WL54syQmxHH.Vef9a9b18SvXyLpLjykeSvWcODDo2sW', '', 'Samaikya', 'Sreeramaneni', 'samaikya.campustutr@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1626511566, 1626511566, 0, 1626511566, '172.31.44.62', '3MjyLjaJn5GFsZf', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1626511499, 1626511499, 0, NULL, '', '', '', '', NULL),
(81, 'email', 1, 0, 0, 0, 1, 'sandeep4155', '$2y$10$tGAmKkgxIcCqgJmC7m7b1..QxAw2DkLfoPdhn33jH2iBpF5gm710i', '', 'B.sandeep', 'kumar', 'sandeepkumarbodepudi@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Hyderabad', 'IN', 'en', 'gregorian', '', '99', 1628150241, 1628152210, 0, 1628150241, '172.31.80.161', 'EnewLIqOrzeRPGj', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1628150038, 1628150038, 0, NULL, '', '', '', '', NULL),
(82, 'email', 1, 0, 0, 0, 1, 'runa', '$2y$10$JAuicG028tq7ufjnEf8UDePaDpr9hmEZ7yuuINoZBSdTwp/NvKY2O', '', 'user', 'Gupta', 'userdemo367@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Delhi', 'IN', 'en', 'gregorian', '', '99', 1628151378, 1628151378, 0, 1628151378, '172.31.44.62', 'kq1IuAhGLjB5MS7', 0, '', '', 1, 1, 0, 2, 1, 0, 1628150544, 1628151368, 0, '', '', '', '', '', ''),
(83, 'manual', 1, 0, 0, 0, 1, 'ldsdemo', '$2y$10$sZYjY1ef1RbyUZsunUU0y.TIFgAOKanbCqhk2gbTewb1Fr4.9hLnW', '', 'lds', 'demo', 'ldsdemo@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1628506104, 1633439561, 1633428493, 1633430466, '172.31.18.160', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1628496569, 1629203719, 0, '', '', '', '', '', ''),
(84, 'manual', 1, 0, 0, 0, 1, '', '023d248151646d1e4a64e33381b28b30', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1628590875, 1628590875, 0, NULL, NULL, NULL, ' ', NULL, NULL),
(85, 'email', 1, 0, 0, 0, 1, 'vineelamandala03@gmail.com', '$2y$10$plubXb3s79FmPA62vNeOCOHMNyhQP/lYRBjQe8aj9SlLn4et1CEyO', '', 'vineela', 'mandala', 'vineelamandala03@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1628595265, 1628595265, 0, 1628595265, '172.31.79.165', 'Ddc6uCvSB9AUh0x', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1628595180, 1628595180, 0, NULL, '', '', '', '', NULL),
(86, 'email', 0, 0, 0, 0, 1, 'gowthami1_1', '$2y$10$bMvkyEOEtXADgg.IqHBFSe1ZnYU7EP8TlNg1/nfshwpn92c3cCpo6', '', 'gowthami', 'bhagam', 'gowthamianumolu3@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', '5MSMZdomugqu0lf', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1628755886, 1628755886, 0, NULL, '', '', '', '', NULL),
(87, 'oauth2', 1, 0, 0, 0, 1, 'hanudondapati@gmail.com', '', '', 'Hanu', 'Dondapati', 'hanudondapati@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1629043502, 1633007633, 1632611969, 1633007633, '172.31.6.21', 'bizF3BV0sCpAHIF', 181801, '', NULL, 1, 1, 0, 2, 1, 0, 1629043396, 1633007633, 0, NULL, NULL, NULL, NULL, '', NULL),
(88, 'oauth2', 1, 0, 0, 0, 1, 'sruthibodepudi@gmail.com', '', '', 'Sruthi ', 'Bodepudi', 'sruthibodepudi@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1629043482, 1629043482, 0, 1629043482, '172.31.6.21', 'WBvkKFqjDdQW7UW', 181807, '', NULL, 1, 1, 0, 2, 1, 0, 1629043405, 1629043406, 0, NULL, NULL, NULL, NULL, '', NULL),
(89, 'oauth2', 1, 0, 0, 0, 1, 'rajkmm2@gmail.com', '', '', 'RAJA', 'P', 'rajkmm2@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'US', 'en', 'gregorian', '', '99', 1629204475, 1629377187, 1629205318, 1629377086, '172.31.79.165', 'HN6BO94iYWiWSJQ', 184565, '', '', 1, 1, 0, 2, 1, 0, 1629204404, 1629377086, 0, '', 'P', 'Raja', 'S', 'Bujji', 'Bhargavi.com'),
(90, 'email', 1, 0, 0, 0, 1, 'satyabrata2082@gmail.com', '$2y$10$ygylEAhKm4.EGSyeEL5JROZwzTeSmBQyVW/QHHkKadt.GHq6WUELy', '', 'Satyabrata', 'Sahoo', 'satyabrata2082@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Nairobi', 'IN', 'en', 'gregorian', '', '99', 1629270640, 1629270640, 0, 1629270640, '172.31.54.221', 'xo7KX8LslxDHIOc', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1629270567, 1629270567, 0, NULL, '', '', '', '', NULL),
(91, 'email', 0, 0, 0, 0, 1, 'testuser', '$2y$10$Dh6cGdiw5.jX6AvlYMOH8u5YNDPXoERVgiuWaSbhJUNP0TVJk.vcO', '', 'test', 'user', 'test@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'noida', 'IN', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'IiQuTkiroclDVyb', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1630049814, 1630049814, 0, NULL, '', '', '', '', NULL),
(92, 'manual', 1, 0, 0, 0, 1, 'testuser1234', '$2y$10$gFtW6LyfrkRLN79wEGok3uuGJXHolyerAbQ8fbMGusshNJ0711ARm', '', 'test', 'user', 'testuser1234@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', 'IN', 'en', 'gregorian', '', '99', 1630058425, 1633518596, 1633507694, 1633518596, '172.31.54.221', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1630056138, 1630056138, 0, '', '', '', '', '', ''),
(93, 'oauth2', 1, 0, 0, 0, 1, 'raju.cr021@gmail.com', '', '', 'JATOTHU', 'RAJUNAIK', 'raju.cr021@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1631022374, 1631023884, 0, 1631022374, '172.31.54.221', '46Kgjhonx9NyOL0', 187655, '', '', 1, 1, 0, 2, 1, 0, 1631022230, 1631102887, 0, '', '', '', '', '', ''),
(94, 'email', 1, 0, 0, 0, 1, 'aartni', '$2y$10$kOLS.uC/h5Mi2WQryyc/buYttXx7z8OhmajlKLPqs9hdtlaoprjVm', '', 'Aarthi', 'Javvaji', 'aarthijavvaji97@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1631790898, 1631790898, 0, 1631790898, '172.31.80.161', 'g2JCwHQlXdBCgbp', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1631790659, 1631790659, 0, NULL, '', '', '', '', NULL),
(95, 'oauth2', 0, 0, 0, 0, 1, 'dasdip179@gmail.com', '', '', 'Dip', 'Das', 'dasdip179@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'BODQC9C4J29oEgM', 197193, '', NULL, 1, 1, 0, 2, 1, 0, 1632367737, 1632367738, 0, NULL, NULL, NULL, NULL, '', NULL),
(96, 'oauth2', 0, 0, 0, 0, 1, 'nayaksanjay06145@gmail.com', '', '', 'Sanjay', 'Nayak', 'nayaksanjay06145@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'TbQU6nolM1MSEAc', 197199, '', NULL, 1, 1, 0, 2, 1, 0, 1632370619, 1632370620, 0, NULL, NULL, NULL, NULL, '', NULL),
(97, 'oauth2', 0, 0, 0, 0, 1, 'goyalatul6263@gmail.com', '', '', 'Atul', 'Goyal', 'goyalatul6263@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'QHeVXoQQm2JkhHp', 197205, '', NULL, 1, 1, 0, 2, 1, 0, 1632371037, 1632371037, 0, NULL, NULL, NULL, NULL, '', NULL),
(98, 'oauth2', 0, 0, 0, 0, 1, 'vanishree9964@gmail.com', '', '', 'vanishree', 'bhavani', 'vanishree9964@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'U5Esd38TGWdVh1d', 198578, '', NULL, 1, 1, 0, 2, 1, 0, 1632405098, 1632405098, 0, NULL, NULL, NULL, NULL, '', NULL),
(99, 'email', 1, 0, 1, 0, 1, 'mogilishettyswetha123@gmail.com.1632814027', '$2y$10$4L.OB9jiW3J2H1Rlm7UBWO5u3voTjDD7ARoTB1PRs64uzjYA3Vp6i', '', 'mogilishetty', 'swetha', '816ec7940e73f853bb8af9b2a4aecd86', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1632813482, 1632813797, 1632813482, 1632813797, '172.31.18.160', 'QGGaVxuCaWYQa1b', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1632813401, 1632814027, 0, NULL, '', '', '', '', NULL),
(100, 'oauth2', 1, 0, 0, 0, 1, 'bhargavim498@gmail.com', '', '', 'M', 'bhargavi', 'bhargavim498@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1632813786, 1632830858, 1632828901, 1632829101, '172.31.79.165', 'oP6qEbKUPBRGdhi', 200267, '', NULL, 1, 1, 0, 2, 1, 0, 1632813683, 1632829101, 0, NULL, NULL, NULL, NULL, '', NULL),
(101, 'email', 1, 0, 1, 0, 1, 'mogilishettyswetha123@gmail.com.1632815828', '$2y$10$F3tP./27cP5/kazybfS20.R6krZbK1McuxVkQaCmm5Bcs8KBtJzyC', '', 'mogilishetty', 'swetha', '816ec7940e73f853bb8af9b2a4aecd86', 0, '', '', '', '', '', '', '', '', '', '', 'khammam', 'IN', 'en', 'gregorian', '', '99', 1632814347, 1632815558, 1632814425, 1632815558, '172.31.44.62', 'nVE67DtYjWCDO13', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1632814263, 1632815828, 0, NULL, '', '', '', '', NULL),
(102, 'email', 1, 0, 0, 0, 1, 'aarthi', '$2y$10$HOgmMMduTiRSXVRD7jZQF.WftR0qdtpWjsjSJrpX.t0dDY0L1giAa', '', 'Aarthi', 'Javvaji', 'aarthijavvaji@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Khammam', 'IN', 'en', 'gregorian', '', '99', 1632825858, 1633675686, 1633517446, 1633675686, '172.31.80.161', '1t6Oa2GfaPErtG3', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1632825771, 1632825771, 0, NULL, '', '', '', '', NULL),
(103, 'manual', 1, 0, 0, 0, 1, 'test', '$2y$10$mbXlcRpG2fm3V9Z7a9avg.pigbKFdRrJx50COzzA2gHfHeiSyjMn.', '', 'test', 'test1', 'test1234@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1633417340, 1633417340, 0, '', '', '', '', '', ''),
(104, 'oauth2', 0, 0, 0, 0, 1, 'rajivranjan012345678@gmail.com', '', '', 'Rajiv', 'Ranjan', 'rajivranjan012345678@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', 'cvHIoW1MtFNe577', 202296, '', NULL, 1, 1, 0, 2, 1, 0, 1633491594, 1633491594, 0, NULL, NULL, NULL, NULL, '', NULL),
(105, 'oauth2', 1, 0, 0, 0, 1, 'mogilishettyswetha123@gmail.com', '', '', 'Swetha', 'Mogilishetty', 'mogilishettyswetha123@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1633569994, 1633578692, 1633570093, 1633577969, '172.31.18.160', 'ok02K7ctWfkpVqI', 202520, '', NULL, 1, 1, 0, 2, 1, 0, 1633569882, 1633577969, 0, NULL, NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_devices`
--

CREATE TABLE `mo_user_devices` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `appid` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `model` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `platform` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pushid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='This table stores user''s mobile devices information in order';

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_enrolments`
--

CREATE TABLE `mo_user_enrolments` (
  `id` bigint NOT NULL,
  `status` bigint NOT NULL DEFAULT '0',
  `enrolid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `timestart` bigint NOT NULL DEFAULT '0',
  `timeend` bigint NOT NULL DEFAULT '2147483647',
  `modifierid` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Users participating in courses (aka enrolled users) - everyb';

--
-- Dumping data for table `mo_user_enrolments`
--

INSERT INTO `mo_user_enrolments` (`id`, `status`, `enrolid`, `userid`, `timestart`, `timeend`, `modifierid`, `timecreated`, `timemodified`) VALUES
(3, 0, 127, 43, 1621321080, 1652857080, 2, 1621320972, 1621320972),
(4, 0, 127, 45, 1621322141, 1652858141, 2, 1621322094, 1621322094),
(5, 0, 127, 46, 1621322159, 1652858159, 2, 1621322159, 1621322159),
(6, 0, 127, 47, 1621323100, 1652859100, 2, 1621322277, 1621322277),
(7, 0, 127, 48, 1621325528, 1652861528, 0, 1621323458, 1621323458),
(10, 0, 115, 49, 1621324974, 1652860974, 0, 1621324974, 1621324974),
(11, 0, 127, 51, 1621405907, 1652941907, 0, 1621405907, 1621405907),
(12, 0, 115, 7, 1621414046, 1652950046, 0, 1621414046, 1621414046),
(13, 0, 127, 58, 1621414316, 1652950316, 0, 1621414316, 1621414316),
(14, 0, 115, 60, 1621415447, 1652951447, 0, 1621415447, 1621415447),
(15, 0, 115, 61, 1621416268, 1652952268, 0, 1621416268, 1621416268),
(16, 0, 115, 62, 1621416405, 1652952405, 0, 1621416405, 1621416405),
(17, 0, 115, 63, 1621418070, 1652954070, 0, 1621418070, 1621418070),
(18, 0, 115, 64, 1621420467, 1652956467, 0, 1621420467, 1621420467),
(19, 0, 115, 65, 1621420553, 1652956553, 61, 1621420553, 1621420553),
(32, 0, 250, 83, 1628848859, 1644746459, 2, 1628661105, 1628661105),
(38, 0, 250, 1, 1628880686, 1644778286, 1, 1628880686, 1628880686),
(39, 0, 187, 2, 1628927823, 1644825423, 2, 1628926383, 1628926383),
(40, 0, 187, 1, 1628929361, 1644826961, 1, 1628929361, 1628929361),
(41, 0, 250, 88, 1629043498, 1644941098, 88, 1629043498, 1629043498),
(42, 0, 250, 87, 1629043540, 1644941140, 87, 1629043540, 1629043540),
(43, 0, 193, 89, 1629204549, 1645102149, 89, 1629204549, 1629204549),
(45, 0, 193, 68, 1629205061, 1645102661, 68, 1629205061, 1629205061),
(46, 0, 250, 2, 1629271355, 1645168955, 2, 1629271355, 1629271355),
(48, 0, 172, 68, 1629952615, 1645850215, 68, 1629952615, 1629952615),
(51, 0, 124, 2, 1631010423, 1646648823, 2, 1631010423, 1631010423),
(52, 0, 250, 93, 1631022415, 1646660815, 93, 1631022415, 1631022415),
(53, 0, 289, 2, 1632987754, 1648626154, 2, 1632226463, 1632226463),
(54, 0, 289, 87, 1633007641, 1648646041, 87, 1632230252, 1632230252),
(55, 0, 289, 1, 1632992363, 1648630763, 1, 1632395173, 1632395173),
(57, 0, 289, 100, 1632828935, 1648467335, 100, 1632813927, 1632813927),
(59, 0, 289, 102, 1632827673, 1648466073, 102, 1632827673, 1632827673),
(60, 0, 304, 67, 1632852199, 0, 2, 1632852284, 1632852284),
(61, 0, 304, 83, 1632852199, 0, 2, 1632852284, 1632852284),
(62, 0, 289, 75, 1632987098, 1648625498, 75, 1632987098, 1632987098),
(63, 0, 289, 68, 1633083675, 1648808475, 68, 1633083675, 1633083675),
(64, 0, 298, 102, 1633083902, 1648808702, 102, 1633083902, 1633083902),
(65, 0, 298, 75, 1633158607, 1648883407, 75, 1633158607, 1633158607),
(66, 0, 250, 102, 1633159941, 1648884741, 102, 1633159941, 1633159941),
(67, 0, 298, 1, 1633415528, 1649140328, 1, 1633352725, 1633352725),
(68, 0, 172, 75, 1633416181, 1649140981, 75, 1633416181, 1633416181),
(69, 0, 250, 92, 1633429799, 1649154599, 92, 1633429267, 1633429267),
(70, 0, 199, 92, 1633430029, 1649154829, 92, 1633430029, 1633430029),
(71, 0, 274, 92, 1633430093, 1649154893, 92, 1633430093, 1633430093),
(72, 0, 298, 92, 1633430111, 1649154911, 92, 1633430111, 1633430111),
(73, 0, 298, 68, 1633496179, 1649220979, 68, 1633496179, 1633496179);

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_info_category`
--

CREATE TABLE `mo_user_info_category` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Customisable fields categories';

--
-- Dumping data for table `mo_user_info_category`
--

INSERT INTO `mo_user_info_category` (`id`, `name`, `sortorder`) VALUES
(1, 'Other fields', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_info_data`
--

CREATE TABLE `mo_user_info_data` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `fieldid` bigint NOT NULL DEFAULT '0',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dataformat` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Data for the customisable user fields';

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_info_field`
--

CREATE TABLE `mo_user_info_field` (
  `id` bigint NOT NULL,
  `shortname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'shortname',
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datatype` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint NOT NULL DEFAULT '0',
  `categoryid` bigint NOT NULL DEFAULT '0',
  `sortorder` bigint NOT NULL DEFAULT '0',
  `required` tinyint NOT NULL DEFAULT '0',
  `locked` tinyint NOT NULL DEFAULT '0',
  `visible` smallint NOT NULL DEFAULT '0',
  `forceunique` tinyint NOT NULL DEFAULT '0',
  `signup` tinyint NOT NULL DEFAULT '0',
  `defaultdata` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `defaultdataformat` tinyint NOT NULL DEFAULT '0',
  `param1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `param2` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `param3` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `param4` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `param5` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Customisable user profile fields';

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_lastaccess`
--

CREATE TABLE `mo_user_lastaccess` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `courseid` bigint NOT NULL DEFAULT '0',
  `timeaccess` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='To keep track of course page access times, used in online pa';

--
-- Dumping data for table `mo_user_lastaccess`
--

INSERT INTO `mo_user_lastaccess` (`id`, `userid`, `courseid`, `timeaccess`) VALUES
(60, 2, 40, 1633326924),
(61, 2, 41, 1631009838),
(63, 2, 43, 1632995614),
(64, 2, 44, 1631093451),
(73, 2, 53, 1633693960),
(74, 2, 54, 1632984936),
(76, 2, 55, 1628765981),
(78, 2, 57, 1627976609),
(79, 2, 58, 1628667587),
(80, 2, 59, 1630065654),
(81, 2, 60, 1632910737),
(83, 2, 62, 1628935834),
(84, 2, 63, 1628759789),
(85, 2, 64, 1633417148),
(86, 2, 65, 1628667558),
(87, 2, 66, 1633091690),
(88, 2, 67, 1628845805),
(89, 2, 68, 1628925827),
(90, 2, 69, 1633109911),
(93, 2, 72, 1628856183),
(94, 2, 73, 1628667592),
(95, 2, 74, 1633108060),
(96, 2, 75, 1628667772),
(98, 2, 77, 1621074598),
(99, 2, 78, 1625217947),
(100, 2, 79, 1628667787),
(103, 2, 80, 1628248492),
(104, 62, 40, 1621416770),
(107, 68, 72, 1621705832),
(108, 68, 60, 1621705864),
(109, 69, 72, 1621709161),
(111, 54, 60, 1624357591),
(112, 2, 82, 1628667822),
(115, 2, 84, 1628925679),
(116, 2, 85, 1631104037),
(119, 70, 60, 1626511138),
(120, 80, 60, 1626511576),
(122, 83, 85, 1628848860),
(126, 68, 85, 1629097058),
(131, 69, 85, 1629205016),
(135, 88, 85, 1629043498),
(136, 87, 85, 1629043540),
(138, 68, 66, 1629546154),
(139, 89, 66, 1629205794),
(141, 68, 59, 1629952616),
(148, 2, 93, 1633931152),
(149, 2, 94, 1631005102),
(150, 2, 96, 1632032893),
(151, 2, 97, 1632314638),
(152, 93, 85, 1631023859),
(153, 2, 98, 1633083159),
(154, 87, 98, 1633007641),
(155, 2, 99, 1632730938),
(156, 2, 100, 1633609222),
(157, 2, 101, 1633525646),
(158, 2, 102, 1633080971),
(160, 100, 98, 1632829237),
(162, 102, 98, 1633160584),
(163, 2, 103, 1632918382),
(164, 2, 104, 1633356613),
(165, 75, 98, 1632987098),
(166, 68, 98, 1633091304),
(167, 102, 101, 1633083902),
(168, 75, 101, 1633158607),
(169, 102, 85, 1633159941),
(170, 2, 105, 1633355170),
(171, 2, 106, 1633355436),
(172, 92, 104, 1633356210),
(173, 75, 59, 1633441729),
(174, 92, 85, 1633429800),
(175, 92, 68, 1633430029),
(176, 92, 93, 1633430175),
(177, 92, 101, 1633430438),
(178, 68, 101, 1633496179),
(179, 2, 107, 1633935846),
(180, 2, 108, 1633935788),
(181, 2, 109, 1633935832),
(182, 105, 98, 1633570050);

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_password_history`
--

CREATE TABLE `mo_user_password_history` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='A rotating log of hashes of previously used passwords for ea';

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_password_resets`
--

CREATE TABLE `mo_user_password_resets` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `timerequested` bigint NOT NULL,
  `timererequested` bigint NOT NULL DEFAULT '0',
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='table tracking password reset confirmation tokens';

--
-- Dumping data for table `mo_user_password_resets`
--

INSERT INTO `mo_user_password_resets` (`id`, `userid`, `timerequested`, `timererequested`, `token`) VALUES
(1, 32, 1610691370, 1610691479, 'rOWf7Uk2dwF0WZAdLBMzKKzepDY2Ccz0'),
(2, 68, 1622184477, 0, 'oQfzUKwq9GVc0wUALCyBLY0xuO3ywNES'),
(5, 72, 1626245612, 0, 'mzCCSpN4r5EbmE41HMBbcvKbpoAIkBg5'),
(7, 94, 1631790949, 0, 'AwxTbrFxRy3bvH02IXCOdDxrQLw6p5Ww'),
(8, 4, 1633703408, 0, 'BKTRTmZ9xHFRd8D7PqpkAQLJWhbDzJTv');

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_preferences`
--

CREATE TABLE `mo_user_preferences` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(1333) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Allows modules to store arbitrary user preferences';

--
-- Dumping data for table `mo_user_preferences`
--

INSERT INTO `mo_user_preferences` (`id`, `userid`, `name`, `value`) VALUES
(1, 2, 'core_message_migrate_data', '1'),
(2, 2, 'auth_manual_passwordupdatetime', '1599457896'),
(3, 2, 'email_bounce_count', '1'),
(4, 2, 'email_send_count', '1'),
(5, 2, 'filepicker_recentrepository', '4'),
(6, 2, 'filepicker_recentlicense', 'allrightsreserved'),
(7, 2, 'tool_usertours_tour_completion_time_2', '1600014509'),
(8, 2, 'drawer-open-nav', 'true'),
(9, 2, 'block_myoverview_user_grouping_preference', 'past'),
(10, 2, 'block_myoverview_user_sort_preference', 'title'),
(11, 2, 'block_myoverview_user_view_preference', 'list'),
(12, 2, 'tool_usertours_tour_completion_time_1', '1599618922'),
(13, 3, 'auth_forcepasswordchange', '0'),
(14, 3, 'email_bounce_count', '1'),
(15, 3, 'email_send_count', '1'),
(16, 3, 'core_message_migrate_data', '1'),
(17, 3, 'tool_usertours_tour_completion_time_2', '1599642265'),
(18, 2, 'login_failed_count_since_success', '91'),
(19, 4, 'auth_forcepasswordchange', '0'),
(20, 4, 'email_bounce_count', '1'),
(21, 4, 'email_send_count', '3'),
(22, 4, 'auth_manual_passwordupdatetime', '1599903495'),
(23, 4, 'core_message_migrate_data', '1'),
(24, 2, 'tool_usertours_tour_reset_time_2', '1600014503'),
(25, 2, 'filemanager_recentviewmode', '3'),
(26, 2, 'userselector_preserveselected', '0'),
(27, 2, 'userselector_autoselectunique', '0'),
(28, 2, 'userselector_searchanywhere', '0'),
(30, 5, 'core_message_migrate_data', '1'),
(31, 5, 'tool_usertours_tour_completion_time_2', '1600875441'),
(32, 2, 'userselector_optionscollapsed', '0'),
(33, 5, 'tool_usertours_tour_completion_time_1', '1600878782'),
(35, 6, 'core_message_migrate_data', '1'),
(36, 6, 'tool_usertours_tour_completion_time_2', '1601026153'),
(37, 6, 'tool_usertours_tour_completion_time_1', '1601037563'),
(38, 7, 'auth_email_wantsurl', 'http://preparetest.com/'),
(40, 8, 'core_message_migrate_data', '1'),
(41, 8, 'login_failed_count_since_success', '1'),
(43, 9, 'core_message_migrate_data', '1'),
(44, 9, 'tool_usertours_tour_reset_time_2', '1604791284'),
(45, 9, 'tool_usertours_tour_completion_time_2', '1604791302'),
(54, 2, 'lesson_view', 'full'),
(81, 15, 'core_message_migrate_data', '1'),
(122, 2, 'question_preview_options_behaviour', 'deferredfeedback'),
(123, 2, 'question_preview_options_correctness', '0'),
(124, 2, 'question_preview_options_marks', '1'),
(125, 2, 'question_preview_options_markdp', '2'),
(126, 2, 'question_preview_options_feedback', '0'),
(127, 2, 'question_preview_options_generalfeedback', '0'),
(128, 2, 'question_preview_options_rightanswer', '0'),
(129, 2, 'question_preview_options_history', '0'),
(133, 34, 'core_message_migrate_data', '1'),
(136, 34, 'auth_email_wantsurl', 'http://preparetest.com/'),
(137, 2, 'core_question_preview_techinfo_collapsed', '1'),
(138, 37, 'auth_forcepasswordchange', '1'),
(139, 38, 'auth_forcepasswordchange', '1'),
(140, 39, 'auth_forcepasswordchange', '1'),
(141, 40, 'auth_forcepasswordchange', '1'),
(142, 41, 'auth_forcepasswordchange', '1'),
(143, 42, 'auth_forcepasswordchange', '1'),
(144, 43, 'auth_forcepasswordchange', '1'),
(145, 44, 'auth_forcepasswordchange', '1'),
(146, 45, 'auth_forcepasswordchange', '1'),
(147, 46, 'auth_forcepasswordchange', '1'),
(148, 47, 'auth_forcepasswordchange', '1'),
(149, 48, 'auth_forcepasswordchange', '1'),
(150, 48, 'core_message_migrate_data', '1'),
(152, 49, 'core_message_migrate_data', '1'),
(153, 49, 'auth_manual_passwordupdatetime', '1621325015'),
(156, 51, 'auth_forcepasswordchange', '1'),
(157, 51, 'core_message_migrate_data', '1'),
(159, 52, 'core_message_migrate_data', '1'),
(160, 53, 'auth_email_wantsurl', 'https://preparetest.com/'),
(162, 54, 'core_message_migrate_data', '1'),
(164, 55, 'core_message_migrate_data', '1'),
(169, 7, 'core_message_migrate_data', '1'),
(170, 58, 'auth_forcepasswordchange', '1'),
(171, 58, 'core_message_migrate_data', '1'),
(172, 59, 'auth_forcepasswordchange', '1'),
(173, 59, 'core_message_migrate_data', '1'),
(175, 60, 'core_message_migrate_data', '1'),
(176, 60, 'auth_manual_passwordupdatetime', '1621415834'),
(177, 61, 'auth_forcepasswordchange', '1'),
(178, 61, 'core_message_migrate_data', '1'),
(180, 62, 'core_message_migrate_data', '1'),
(181, 62, 'auth_manual_passwordupdatetime', '1621416710'),
(182, 63, 'auth_forcepasswordchange', '1'),
(183, 63, 'core_message_migrate_data', '1'),
(184, 64, 'auth_forcepasswordchange', '1'),
(185, 64, 'core_message_migrate_data', '1'),
(186, 65, 'auth_forcepasswordchange', '1'),
(187, 65, 'core_message_migrate_data', '1'),
(190, 66, 'core_message_migrate_data', '1'),
(191, 66, 'auth_manual_passwordupdatetime', '1621501312'),
(192, 67, 'auth_forcepasswordchange', '1'),
(193, 67, 'core_message_migrate_data', '1'),
(195, 68, 'core_message_migrate_data', '1'),
(197, 69, 'core_message_migrate_data', '1'),
(198, 2, 'definerole_showadvanced', '1'),
(199, 68, 'userselector_preserveselected', '0'),
(200, 68, 'userselector_autoselectunique', '0'),
(201, 68, 'userselector_searchanywhere', '0'),
(203, 70, 'core_message_migrate_data', '1'),
(208, 72, 'core_message_migrate_data', '1'),
(212, 74, 'core_message_migrate_data', '1'),
(214, 75, 'core_message_migrate_data', '1'),
(216, 76, 'core_message_migrate_data', '1'),
(217, 77, 'core_message_migrate_data', '1'),
(218, 78, 'core_message_migrate_data', '1'),
(219, 72, 'login_failed_count_since_success', '4'),
(220, 79, 'auth_email_wantsurl', 'https://preparetest.com/'),
(222, 80, 'core_message_migrate_data', '1'),
(223, 69, 'login_failed_count_since_success', '3'),
(225, 81, 'core_message_migrate_data', '1'),
(227, 82, 'auth_forcepasswordchange', '0'),
(228, 82, 'core_message_migrate_data', '1'),
(229, 68, 'login_failed_count_since_success', '1'),
(231, 83, 'email_bounce_count', '1'),
(232, 83, 'email_send_count', '1'),
(233, 83, 'core_message_migrate_data', '1'),
(234, 83, 'login_failed_count_since_success', '22'),
(235, 84, 'auth_forcepasswordchange', '1'),
(237, 85, 'core_message_migrate_data', '1'),
(238, 86, 'auth_email_wantsurl', 'https://preparetest.com/'),
(239, 83, 'auth_manual_passwordupdatetime', '1628837607'),
(240, 88, 'core_message_migrate_data', '1'),
(241, 87, 'core_message_migrate_data', '1'),
(242, 89, 'core_message_migrate_data', '1'),
(245, 90, 'core_message_migrate_data', '1'),
(246, 89, 'login_failed_count_since_success', '1'),
(247, 91, 'auth_email_wantsurl', 'https://preparetest.com/'),
(248, 92, 'auth_forcepasswordchange', '0'),
(249, 92, 'email_bounce_count', '1'),
(250, 92, 'email_send_count', '1'),
(251, 92, 'core_message_migrate_data', '1'),
(252, 93, 'core_message_migrate_data', '1'),
(253, 93, 'auth_forcepasswordchange', '0'),
(254, 2, 'ifirst', ''),
(255, 2, 'ilast', ''),
(257, 94, 'core_message_migrate_data', '1'),
(258, 87, 'login_failed_count_since_success', '1'),
(259, 2, 'tool_dataprivacy_request-filters', '[]'),
(262, 100, 'core_message_migrate_data', '1'),
(267, 102, 'core_message_migrate_data', '1'),
(268, 2, 'question_bank_advanced_search', '0'),
(269, 2, 'question_bank_recurse', '1'),
(270, 2, 'question_bank_showhidden', '1'),
(271, 2, 'question_bank_qbshowtext', '1'),
(272, 2, 'grade_report_grader_collapsed_categories104', '{\"aggregatesonly\":[],\"gradesonly\":[\"100\"]}'),
(273, 103, 'auth_forcepasswordchange', '0'),
(274, 103, 'email_bounce_count', '1'),
(275, 103, 'email_send_count', '1'),
(276, 91, 'login_failed_count_since_success', '1'),
(277, 105, 'core_message_migrate_data', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mo_user_private_key`
--

CREATE TABLE `mo_user_private_key` (
  `id` bigint NOT NULL,
  `script` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint NOT NULL,
  `instance` bigint DEFAULT NULL,
  `iprestriction` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `validuntil` bigint DEFAULT NULL,
  `timecreated` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='access keys used in cookieless scripts - rss, etc.';

--
-- Dumping data for table `mo_user_private_key`
--

INSERT INTO `mo_user_private_key` (`id`, `script`, `value`, `userid`, `instance`, `iprestriction`, `validuntil`, `timecreated`) VALUES
(1, 'core_files', '5a54df6eb587ba653af184d0e8732f3f', 5, NULL, NULL, NULL, 1600875987),
(5, 'core_files', 'b15f872fabfc7390da1c57f81aaac495', 69, NULL, NULL, NULL, 1628678842),
(6, 'core_files', 'ab5958ef151f8fb3e25a5d6b1d16e0c4', 68, NULL, NULL, NULL, 1628678843);

-- --------------------------------------------------------

--
-- Table structure for table `mo_wiki`
--

CREATE TABLE `mo_wiki` (
  `id` bigint NOT NULL,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Wiki',
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `firstpagetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'First Page',
  `wikimode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'collaborative',
  `defaultformat` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'creole',
  `forceformat` tinyint(1) NOT NULL DEFAULT '1',
  `editbegin` bigint NOT NULL DEFAULT '0',
  `editend` bigint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores Wiki activity configuration';

-- --------------------------------------------------------

--
-- Table structure for table `mo_wiki_links`
--

CREATE TABLE `mo_wiki_links` (
  `id` bigint NOT NULL,
  `subwikiid` bigint NOT NULL DEFAULT '0',
  `frompageid` bigint NOT NULL DEFAULT '0',
  `topageid` bigint NOT NULL DEFAULT '0',
  `tomissingpage` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Page wiki links';

-- --------------------------------------------------------

--
-- Table structure for table `mo_wiki_locks`
--

CREATE TABLE `mo_wiki_locks` (
  `id` bigint NOT NULL,
  `pageid` bigint NOT NULL DEFAULT '0',
  `sectionname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `lockedat` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Manages page locks';

-- --------------------------------------------------------

--
-- Table structure for table `mo_wiki_pages`
--

CREATE TABLE `mo_wiki_pages` (
  `id` bigint NOT NULL,
  `subwikiid` bigint NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'title',
  `cachedcontent` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `timerendered` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `pageviews` bigint NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores wiki pages';

-- --------------------------------------------------------

--
-- Table structure for table `mo_wiki_subwikis`
--

CREATE TABLE `mo_wiki_subwikis` (
  `id` bigint NOT NULL,
  `wikiid` bigint NOT NULL DEFAULT '0',
  `groupid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores subwiki instances';

-- --------------------------------------------------------

--
-- Table structure for table `mo_wiki_synonyms`
--

CREATE TABLE `mo_wiki_synonyms` (
  `id` bigint NOT NULL,
  `subwikiid` bigint NOT NULL DEFAULT '0',
  `pageid` bigint NOT NULL DEFAULT '0',
  `pagesynonym` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pagesynonym'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores wiki pages synonyms';

-- --------------------------------------------------------

--
-- Table structure for table `mo_wiki_versions`
--

CREATE TABLE `mo_wiki_versions` (
  `id` bigint NOT NULL,
  `pageid` bigint NOT NULL DEFAULT '0',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contentformat` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'creole',
  `version` mediumint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores wiki page history';

-- --------------------------------------------------------

--
-- Table structure for table `mo_wordpress_data`
--

CREATE TABLE `mo_wordpress_data` (
  `id` int NOT NULL,
  `product_id` varchar(200) DEFAULT NULL,
  `course_id` varchar(200) DEFAULT NULL,
  `createdtime` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_wordpress_data`
--

INSERT INTO `mo_wordpress_data` (`id`, `product_id`, `course_id`, `createdtime`) VALUES
(9, '102', '62', 1625212140);

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshop`
--

CREATE TABLE `mo_workshop` (
  `id` bigint NOT NULL,
  `course` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `instructauthors` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `instructauthorsformat` smallint NOT NULL DEFAULT '0',
  `instructreviewers` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `instructreviewersformat` smallint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL,
  `phase` smallint DEFAULT '0',
  `useexamples` tinyint DEFAULT '0',
  `usepeerassessment` tinyint DEFAULT '0',
  `useselfassessment` tinyint DEFAULT '0',
  `grade` decimal(10,5) DEFAULT '80.00000',
  `gradinggrade` decimal(10,5) DEFAULT '20.00000',
  `strategy` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `evaluation` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gradedecimals` smallint DEFAULT '0',
  `submissiontypetext` tinyint(1) NOT NULL DEFAULT '1',
  `submissiontypefile` tinyint(1) NOT NULL DEFAULT '1',
  `nattachments` smallint DEFAULT '1',
  `submissionfiletypes` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `latesubmissions` tinyint DEFAULT '0',
  `maxbytes` bigint DEFAULT '100000',
  `examplesmode` smallint DEFAULT '0',
  `submissionstart` bigint DEFAULT '0',
  `submissionend` bigint DEFAULT '0',
  `assessmentstart` bigint DEFAULT '0',
  `assessmentend` bigint DEFAULT '0',
  `phaseswitchassessment` tinyint NOT NULL DEFAULT '0',
  `conclusion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `conclusionformat` smallint NOT NULL DEFAULT '1',
  `overallfeedbackmode` smallint DEFAULT '1',
  `overallfeedbackfiles` smallint DEFAULT '0',
  `overallfeedbackfiletypes` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `overallfeedbackmaxbytes` bigint DEFAULT '100000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='This table keeps information about the module instances and ';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshopallocation_scheduled`
--

CREATE TABLE `mo_workshopallocation_scheduled` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `submissionend` bigint NOT NULL,
  `timeallocated` bigint DEFAULT NULL,
  `settings` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `resultstatus` bigint DEFAULT NULL,
  `resultmessage` varchar(1333) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultlog` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores the allocation settings for the scheduled allocator';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshopeval_best_settings`
--

CREATE TABLE `mo_workshopeval_best_settings` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `comparison` smallint DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Settings for the grading evaluation subplugin Comparison wit';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshopform_accumulative`
--

CREATE TABLE `mo_workshopform_accumulative` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `sort` bigint DEFAULT '0',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionformat` smallint DEFAULT '0',
  `grade` bigint NOT NULL,
  `weight` mediumint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='The assessment dimensions definitions of Accumulative gradin';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshopform_comments`
--

CREATE TABLE `mo_workshopform_comments` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `sort` bigint DEFAULT '0',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionformat` smallint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='The assessment dimensions definitions of Comments strategy f';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshopform_numerrors`
--

CREATE TABLE `mo_workshopform_numerrors` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `sort` bigint DEFAULT '0',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionformat` smallint DEFAULT '0',
  `descriptiontrust` bigint DEFAULT NULL,
  `grade0` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` mediumint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='The assessment dimensions definitions of Number of errors gr';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshopform_numerrors_map`
--

CREATE TABLE `mo_workshopform_numerrors_map` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `nonegative` bigint NOT NULL,
  `grade` decimal(10,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='This maps the number of errors to a percentual grade for sub';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshopform_rubric`
--

CREATE TABLE `mo_workshopform_rubric` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `sort` bigint DEFAULT '0',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionformat` smallint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='The assessment dimensions definitions of Rubric grading stra';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshopform_rubric_config`
--

CREATE TABLE `mo_workshopform_rubric_config` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `layout` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'list'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Configuration table for the Rubric grading strategy';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshopform_rubric_levels`
--

CREATE TABLE `mo_workshopform_rubric_levels` (
  `id` bigint NOT NULL,
  `dimensionid` bigint NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  `definition` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `definitionformat` smallint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='The definition of rubric rating scales';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshop_aggregations`
--

CREATE TABLE `mo_workshop_aggregations` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `timegraded` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Aggregated grades for assessment are stored here. The aggreg';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshop_assessments`
--

CREATE TABLE `mo_workshop_assessments` (
  `id` bigint NOT NULL,
  `submissionid` bigint NOT NULL,
  `reviewerid` bigint NOT NULL,
  `weight` bigint NOT NULL DEFAULT '1',
  `timecreated` bigint DEFAULT '0',
  `timemodified` bigint DEFAULT '0',
  `grade` decimal(10,5) DEFAULT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `gradinggradeover` decimal(10,5) DEFAULT NULL,
  `gradinggradeoverby` bigint DEFAULT NULL,
  `feedbackauthor` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `feedbackauthorformat` smallint DEFAULT '0',
  `feedbackauthorattachment` smallint DEFAULT '0',
  `feedbackreviewer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `feedbackreviewerformat` smallint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Info about the made assessment and automatically calculated ';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshop_grades`
--

CREATE TABLE `mo_workshop_grades` (
  `id` bigint NOT NULL,
  `assessmentid` bigint NOT NULL,
  `strategy` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimensionid` bigint NOT NULL,
  `grade` decimal(10,5) DEFAULT NULL,
  `peercomment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `peercommentformat` smallint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='How the reviewers filled-up the grading forms, given grades ';

-- --------------------------------------------------------

--
-- Table structure for table `mo_workshop_submissions`
--

CREATE TABLE `mo_workshop_submissions` (
  `id` bigint NOT NULL,
  `workshopid` bigint NOT NULL,
  `example` tinyint DEFAULT '0',
  `authorid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contentformat` smallint NOT NULL DEFAULT '0',
  `contenttrust` smallint NOT NULL DEFAULT '0',
  `attachment` tinyint DEFAULT '0',
  `grade` decimal(10,5) DEFAULT NULL,
  `gradeover` decimal(10,5) DEFAULT NULL,
  `gradeoverby` bigint DEFAULT NULL,
  `feedbackauthor` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `feedbackauthorformat` smallint DEFAULT '0',
  `timegraded` bigint DEFAULT NULL,
  `published` tinyint DEFAULT '0',
  `late` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Info about the submission and the aggregation of the grade f';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mo_upgrade_log`
--
ALTER TABLE `mo_upgrade_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_upgrlog_tim_ix` (`timemodified`),
  ADD KEY `mo_upgrlog_typtim_ix` (`type`,`timemodified`),
  ADD KEY `mo_upgrlog_use_ix` (`userid`);

--
-- Indexes for table `mo_url`
--
ALTER TABLE `mo_url`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_url_cou_ix` (`course`);

--
-- Indexes for table `mo_user`
--
ALTER TABLE `mo_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_user_mneuse_uix` (`mnethostid`,`username`),
  ADD KEY `mo_user_del_ix` (`deleted`),
  ADD KEY `mo_user_con_ix` (`confirmed`),
  ADD KEY `mo_user_fir_ix` (`firstname`),
  ADD KEY `mo_user_las_ix` (`lastname`),
  ADD KEY `mo_user_cit_ix` (`city`),
  ADD KEY `mo_user_cou_ix` (`country`),
  ADD KEY `mo_user_las2_ix` (`lastaccess`),
  ADD KEY `mo_user_ema_ix` (`email`),
  ADD KEY `mo_user_aut_ix` (`auth`),
  ADD KEY `mo_user_idn_ix` (`idnumber`),
  ADD KEY `mo_user_fir2_ix` (`firstnamephonetic`),
  ADD KEY `mo_user_las3_ix` (`lastnamephonetic`),
  ADD KEY `mo_user_mid_ix` (`middlename`),
  ADD KEY `mo_user_alt_ix` (`alternatename`);

--
-- Indexes for table `mo_user_devices`
--
ALTER TABLE `mo_user_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_userdevi_pususe_uix` (`pushid`,`userid`),
  ADD KEY `mo_userdevi_uuiuse_ix` (`uuid`,`userid`),
  ADD KEY `mo_userdevi_use_ix` (`userid`);

--
-- Indexes for table `mo_user_enrolments`
--
ALTER TABLE `mo_user_enrolments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_userenro_enruse_uix` (`enrolid`,`userid`),
  ADD KEY `mo_userenro_enr_ix` (`enrolid`),
  ADD KEY `mo_userenro_use_ix` (`userid`),
  ADD KEY `mo_userenro_mod_ix` (`modifierid`);

--
-- Indexes for table `mo_user_info_category`
--
ALTER TABLE `mo_user_info_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_user_info_data`
--
ALTER TABLE `mo_user_info_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_userinfodata_usefie_uix` (`userid`,`fieldid`);

--
-- Indexes for table `mo_user_info_field`
--
ALTER TABLE `mo_user_info_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_user_lastaccess`
--
ALTER TABLE `mo_user_lastaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_userlast_usecou_uix` (`userid`,`courseid`),
  ADD KEY `mo_userlast_use_ix` (`userid`),
  ADD KEY `mo_userlast_cou_ix` (`courseid`);

--
-- Indexes for table `mo_user_password_history`
--
ALTER TABLE `mo_user_password_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_userpasshist_use_ix` (`userid`);

--
-- Indexes for table `mo_user_password_resets`
--
ALTER TABLE `mo_user_password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_userpassrese_use_ix` (`userid`);

--
-- Indexes for table `mo_user_preferences`
--
ALTER TABLE `mo_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_userpref_usenam_uix` (`userid`,`name`);

--
-- Indexes for table `mo_user_private_key`
--
ALTER TABLE `mo_user_private_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_userprivkey_scrval_ix` (`script`,`value`),
  ADD KEY `mo_userprivkey_use_ix` (`userid`);

--
-- Indexes for table `mo_wiki`
--
ALTER TABLE `mo_wiki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_wiki_cou_ix` (`course`);

--
-- Indexes for table `mo_wiki_links`
--
ALTER TABLE `mo_wiki_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_wikilink_fro_ix` (`frompageid`),
  ADD KEY `mo_wikilink_sub_ix` (`subwikiid`);

--
-- Indexes for table `mo_wiki_locks`
--
ALTER TABLE `mo_wiki_locks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_wiki_pages`
--
ALTER TABLE `mo_wiki_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_wikipage_subtituse_uix` (`subwikiid`,`title`,`userid`),
  ADD KEY `mo_wikipage_sub_ix` (`subwikiid`);

--
-- Indexes for table `mo_wiki_subwikis`
--
ALTER TABLE `mo_wiki_subwikis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_wikisubw_wikgrouse_uix` (`wikiid`,`groupid`,`userid`),
  ADD KEY `mo_wikisubw_wik_ix` (`wikiid`);

--
-- Indexes for table `mo_wiki_synonyms`
--
ALTER TABLE `mo_wiki_synonyms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_wikisyno_pagpag_uix` (`pageid`,`pagesynonym`);

--
-- Indexes for table `mo_wiki_versions`
--
ALTER TABLE `mo_wiki_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_wikivers_pag_ix` (`pageid`);

--
-- Indexes for table `mo_wordpress_data`
--
ALTER TABLE `mo_wordpress_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_workshop`
--
ALTER TABLE `mo_workshop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_work_cou_ix` (`course`);

--
-- Indexes for table `mo_workshopallocation_scheduled`
--
ALTER TABLE `mo_workshopallocation_scheduled`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_worksche_wor_uix` (`workshopid`);

--
-- Indexes for table `mo_workshopeval_best_settings`
--
ALTER TABLE `mo_workshopeval_best_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_workbestsett_wor_uix` (`workshopid`);

--
-- Indexes for table `mo_workshopform_accumulative`
--
ALTER TABLE `mo_workshopform_accumulative`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_workaccu_wor_ix` (`workshopid`);

--
-- Indexes for table `mo_workshopform_comments`
--
ALTER TABLE `mo_workshopform_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_workcomm_wor_ix` (`workshopid`);

--
-- Indexes for table `mo_workshopform_numerrors`
--
ALTER TABLE `mo_workshopform_numerrors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_worknume_wor_ix` (`workshopid`);

--
-- Indexes for table `mo_workshopform_numerrors_map`
--
ALTER TABLE `mo_workshopform_numerrors_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_worknumemap_wornon_uix` (`workshopid`,`nonegative`),
  ADD KEY `mo_worknumemap_wor_ix` (`workshopid`);

--
-- Indexes for table `mo_workshopform_rubric`
--
ALTER TABLE `mo_workshopform_rubric`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_workrubr_wor_ix` (`workshopid`);

--
-- Indexes for table `mo_workshopform_rubric_config`
--
ALTER TABLE `mo_workshopform_rubric_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_workrubrconf_wor_uix` (`workshopid`);

--
-- Indexes for table `mo_workshopform_rubric_levels`
--
ALTER TABLE `mo_workshopform_rubric_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_workrubrleve_dim_ix` (`dimensionid`);

--
-- Indexes for table `mo_workshop_aggregations`
--
ALTER TABLE `mo_workshop_aggregations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_workaggr_woruse_uix` (`workshopid`,`userid`),
  ADD KEY `mo_workaggr_wor_ix` (`workshopid`),
  ADD KEY `mo_workaggr_use_ix` (`userid`);

--
-- Indexes for table `mo_workshop_assessments`
--
ALTER TABLE `mo_workshop_assessments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_workasse_sub_ix` (`submissionid`),
  ADD KEY `mo_workasse_gra_ix` (`gradinggradeoverby`),
  ADD KEY `mo_workasse_rev_ix` (`reviewerid`);

--
-- Indexes for table `mo_workshop_grades`
--
ALTER TABLE `mo_workshop_grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_workgrad_assstrdim_uix` (`assessmentid`,`strategy`,`dimensionid`),
  ADD KEY `mo_workgrad_ass_ix` (`assessmentid`);

--
-- Indexes for table `mo_workshop_submissions`
--
ALTER TABLE `mo_workshop_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_worksubm_wor_ix` (`workshopid`),
  ADD KEY `mo_worksubm_gra_ix` (`gradeoverby`),
  ADD KEY `mo_worksubm_aut_ix` (`authorid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mo_upgrade_log`
--
ALTER TABLE `mo_upgrade_log`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2553;

--
-- AUTO_INCREMENT for table `mo_url`
--
ALTER TABLE `mo_url`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_user`
--
ALTER TABLE `mo_user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `mo_user_devices`
--
ALTER TABLE `mo_user_devices`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_user_enrolments`
--
ALTER TABLE `mo_user_enrolments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `mo_user_info_category`
--
ALTER TABLE `mo_user_info_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mo_user_info_data`
--
ALTER TABLE `mo_user_info_data`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_user_info_field`
--
ALTER TABLE `mo_user_info_field`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_user_lastaccess`
--
ALTER TABLE `mo_user_lastaccess`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `mo_user_password_history`
--
ALTER TABLE `mo_user_password_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_user_password_resets`
--
ALTER TABLE `mo_user_password_resets`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mo_user_preferences`
--
ALTER TABLE `mo_user_preferences`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `mo_user_private_key`
--
ALTER TABLE `mo_user_private_key`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mo_wiki`
--
ALTER TABLE `mo_wiki`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_wiki_links`
--
ALTER TABLE `mo_wiki_links`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_wiki_locks`
--
ALTER TABLE `mo_wiki_locks`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_wiki_pages`
--
ALTER TABLE `mo_wiki_pages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_wiki_subwikis`
--
ALTER TABLE `mo_wiki_subwikis`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_wiki_synonyms`
--
ALTER TABLE `mo_wiki_synonyms`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_wiki_versions`
--
ALTER TABLE `mo_wiki_versions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_wordpress_data`
--
ALTER TABLE `mo_wordpress_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mo_workshop`
--
ALTER TABLE `mo_workshop`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshopallocation_scheduled`
--
ALTER TABLE `mo_workshopallocation_scheduled`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshopeval_best_settings`
--
ALTER TABLE `mo_workshopeval_best_settings`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshopform_accumulative`
--
ALTER TABLE `mo_workshopform_accumulative`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshopform_comments`
--
ALTER TABLE `mo_workshopform_comments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshopform_numerrors`
--
ALTER TABLE `mo_workshopform_numerrors`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshopform_numerrors_map`
--
ALTER TABLE `mo_workshopform_numerrors_map`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshopform_rubric`
--
ALTER TABLE `mo_workshopform_rubric`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshopform_rubric_config`
--
ALTER TABLE `mo_workshopform_rubric_config`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshopform_rubric_levels`
--
ALTER TABLE `mo_workshopform_rubric_levels`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshop_aggregations`
--
ALTER TABLE `mo_workshop_aggregations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshop_assessments`
--
ALTER TABLE `mo_workshop_assessments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshop_grades`
--
ALTER TABLE `mo_workshop_grades`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_workshop_submissions`
--
ALTER TABLE `mo_workshop_submissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
