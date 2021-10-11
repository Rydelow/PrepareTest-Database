-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2021 at 07:00 AM
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
-- Table structure for table `mo_repository_instance_config`
--

CREATE TABLE `mo_repository_instance_config` (
  `id` bigint NOT NULL,
  `instanceid` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='The config for intances';

-- --------------------------------------------------------

--
-- Table structure for table `mo_repository_onedrive_access`
--

CREATE TABLE `mo_repository_onedrive_access` (
  `id` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `permissionid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='List of temporary access grants.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_resource`
--

CREATE TABLE `mo_resource` (
  `id` bigint NOT NULL,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `tobemigrated` smallint NOT NULL DEFAULT '0',
  `legacyfiles` smallint NOT NULL DEFAULT '0',
  `legacyfileslast` bigint DEFAULT NULL,
  `display` smallint NOT NULL DEFAULT '0',
  `displayoptions` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `filterfiles` smallint NOT NULL DEFAULT '0',
  `revision` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Each record is one resource and its config data';

-- --------------------------------------------------------

--
-- Table structure for table `mo_resource_old`
--

CREATE TABLE `mo_resource_old` (
  `id` bigint NOT NULL,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reference` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `alltext` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `popup` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `options` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `oldid` bigint NOT NULL,
  `cmid` bigint DEFAULT NULL,
  `newmodule` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint DEFAULT NULL,
  `migrated` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='backup of all old resource instances from 1.9';

-- --------------------------------------------------------

--
-- Table structure for table `mo_role`
--

CREATE TABLE `mo_role` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` bigint NOT NULL DEFAULT '0',
  `archetype` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='moodle roles';

--
-- Dumping data for table `mo_role`
--

INSERT INTO `mo_role` (`id`, `name`, `shortname`, `description`, `sortorder`, `archetype`) VALUES
(1, '', 'manager', '', 1, 'manager'),
(2, '', 'coursecreator', '', 2, 'coursecreator'),
(3, '', 'editingteacher', '', 3, 'editingteacher'),
(4, '', 'teacher', '', 4, 'teacher'),
(5, '', 'student', '', 5, 'student'),
(6, '', 'guest', '', 6, 'guest'),
(7, '', 'user', '', 7, 'user'),
(8, '', 'frontpage', '', 8, 'frontpage');

-- --------------------------------------------------------

--
-- Table structure for table `mo_role_allow_assign`
--

CREATE TABLE `mo_role_allow_assign` (
  `id` bigint NOT NULL,
  `roleid` bigint NOT NULL DEFAULT '0',
  `allowassign` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='this defines what role can assign what role';

--
-- Dumping data for table `mo_role_allow_assign`
--

INSERT INTO `mo_role_allow_assign` (`id`, `roleid`, `allowassign`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 3, 4),
(7, 3, 5),
(8, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mo_role_allow_override`
--

CREATE TABLE `mo_role_allow_override` (
  `id` bigint NOT NULL,
  `roleid` bigint NOT NULL DEFAULT '0',
  `allowoverride` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='this defines what role can override what role';

--
-- Dumping data for table `mo_role_allow_override`
--

INSERT INTO `mo_role_allow_override` (`id`, `roleid`, `allowoverride`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 3, 4),
(10, 3, 5),
(11, 3, 6),
(12, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mo_role_allow_switch`
--

CREATE TABLE `mo_role_allow_switch` (
  `id` bigint NOT NULL,
  `roleid` bigint NOT NULL,
  `allowswitch` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='This table stores which which other roles a user is allowed ';

--
-- Dumping data for table `mo_role_allow_switch`
--

INSERT INTO `mo_role_allow_switch` (`id`, `roleid`, `allowswitch`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 1, 5),
(4, 1, 6),
(5, 3, 4),
(6, 3, 5),
(7, 3, 6),
(8, 4, 5),
(9, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mo_role_allow_view`
--

CREATE TABLE `mo_role_allow_view` (
  `id` bigint NOT NULL,
  `roleid` bigint NOT NULL,
  `allowview` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='This table stores which which other roles a user is allowed ';

--
-- Dumping data for table `mo_role_allow_view`
--

INSERT INTO `mo_role_allow_view` (`id`, `roleid`, `allowview`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 2),
(10, 2, 3),
(11, 2, 4),
(12, 2, 5),
(13, 3, 2),
(14, 3, 3),
(15, 3, 4),
(16, 3, 5),
(17, 4, 2),
(18, 4, 3),
(19, 4, 4),
(20, 4, 5),
(21, 5, 2),
(22, 5, 3),
(23, 5, 4),
(24, 5, 5),
(25, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mo_role_assignments`
--

CREATE TABLE `mo_role_assignments` (
  `id` bigint NOT NULL,
  `roleid` bigint NOT NULL DEFAULT '0',
  `contextid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `modifierid` bigint NOT NULL DEFAULT '0',
  `component` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint NOT NULL DEFAULT '0',
  `sortorder` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='assigning roles in different context';

--
-- Dumping data for table `mo_role_assignments`
--

INSERT INTO `mo_role_assignments` (`id`, `roleid`, `contextid`, `userid`, `timemodified`, `modifierid`, `component`, `itemid`, `sortorder`) VALUES
(3, 5, 392, 43, 1621320972, 2, '', 0, 0),
(4, 5, 392, 45, 1621322094, 2, '', 0, 0),
(5, 5, 392, 46, 1621322159, 2, '', 0, 0),
(6, 5, 392, 47, 1621322277, 2, '', 0, 0),
(7, 5, 392, 48, 1621323458, 0, '', 0, 0),
(10, 5, 381, 49, 1621324974, 0, '', 0, 0),
(11, 5, 392, 51, 1621405907, 0, '', 0, 0),
(12, 5, 381, 7, 1621414046, 0, '', 0, 0),
(13, 5, 392, 58, 1621414316, 0, '', 0, 0),
(14, 5, 381, 60, 1621415447, 0, '', 0, 0),
(15, 5, 381, 61, 1621416268, 0, '', 0, 0),
(16, 5, 381, 62, 1621416405, 0, '', 0, 0),
(17, 5, 381, 63, 1621418070, 0, '', 0, 0),
(18, 5, 381, 64, 1621420467, 0, '', 0, 0),
(19, 5, 381, 65, 1621420553, 61, '', 0, 0),
(27, 3, 2, 68, 1621705644, 2, '', 0, 0),
(28, 3, 627, 68, 1621706051, 2, '', 0, 0),
(29, 2, 1, 68, 1621708265, 2, '', 0, 0),
(30, 2, 26, 68, 1621709469, 2, '', 0, 0),
(31, 2, 26, 69, 1621709473, 2, '', 0, 0),
(32, 3, 1, 68, 1621745521, 2, '', 0, 0),
(33, 3, 1, 69, 1621745530, 2, '', 0, 0),
(40, 3, 361, 68, 1621746631, 2, '', 0, 0),
(41, 3, 361, 69, 1621746634, 2, '', 0, 0),
(52, 3, 431, 68, 1621746858, 2, '', 0, 0),
(53, 3, 431, 69, 1621746862, 2, '', 0, 0),
(56, 3, 453, 68, 1621746913, 2, '', 0, 0),
(57, 3, 453, 69, 1621746916, 2, '', 0, 0),
(60, 3, 446, 68, 1621746958, 2, '', 0, 0),
(61, 3, 446, 69, 1621746962, 2, '', 0, 0),
(62, 3, 514, 68, 1621746983, 2, '', 0, 0),
(63, 3, 514, 69, 1621746987, 2, '', 0, 0),
(66, 3, 613, 68, 1621747034, 2, '', 0, 0),
(67, 3, 613, 69, 1621747038, 2, '', 0, 0),
(68, 3, 627, 69, 1621747063, 2, '', 0, 0),
(77, 5, 800, 83, 1628661105, 2, '', 0, 0),
(83, 5, 800, 1, 1628880686, 1, '', 0, 0),
(84, 5, 532, 2, 1628926383, 2, '', 0, 0),
(85, 5, 532, 1, 1628929361, 1, '', 0, 0),
(86, 5, 800, 88, 1629043498, 88, '', 0, 0),
(87, 5, 800, 87, 1629043540, 87, '', 0, 0),
(88, 5, 560, 89, 1629204549, 89, '', 0, 0),
(90, 5, 560, 68, 1629205061, 68, '', 0, 0),
(91, 5, 800, 2, 1629271355, 2, '', 0, 0),
(93, 5, 479, 68, 1629952615, 68, '', 0, 0),
(96, 5, 389, 2, 1631010423, 2, '', 0, 0),
(97, 5, 800, 93, 1631022415, 93, '', 0, 0),
(98, 5, 954, 2, 1632226463, 2, '', 0, 0),
(99, 5, 954, 87, 1632230252, 87, '', 0, 0),
(100, 5, 954, 1, 1632395173, 1, '', 0, 0),
(102, 5, 954, 100, 1632813927, 100, '', 0, 0),
(104, 5, 954, 102, 1632827673, 102, '', 0, 0),
(105, 5, 988, 67, 1632852284, 2, '', 0, 0),
(106, 5, 988, 83, 1632852284, 2, '', 0, 0),
(107, 5, 954, 75, 1632987098, 75, '', 0, 0),
(108, 5, 954, 68, 1633083675, 68, '', 0, 0),
(109, 5, 975, 102, 1633083902, 102, '', 0, 0),
(110, 5, 975, 75, 1633158607, 75, '', 0, 0),
(111, 5, 800, 102, 1633159941, 102, '', 0, 0),
(112, 5, 975, 1, 1633352725, 1, '', 0, 0),
(113, 5, 479, 75, 1633416181, 75, '', 0, 0),
(114, 5, 800, 92, 1633429267, 92, '', 0, 0),
(115, 5, 573, 92, 1633430029, 92, '', 0, 0),
(116, 5, 895, 92, 1633430093, 92, '', 0, 0),
(117, 5, 975, 92, 1633430111, 92, '', 0, 0),
(118, 5, 975, 68, 1633496179, 68, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mo_role_capabilities`
--

CREATE TABLE `mo_role_capabilities` (
  `id` bigint NOT NULL,
  `contextid` bigint NOT NULL DEFAULT '0',
  `roleid` bigint NOT NULL DEFAULT '0',
  `capability` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `permission` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `modifierid` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='permission has to be signed, overriding a capability for a p';

--
-- Dumping data for table `mo_role_capabilities`
--

INSERT INTO `mo_role_capabilities` (`id`, `contextid`, `roleid`, `capability`, `permission`, `timemodified`, `modifierid`) VALUES
(1, 1, 1, 'moodle/site:configview', 1, 1599457746, 0),
(2, 1, 2, 'moodle/site:configview', 1, 1599457746, 0),
(3, 1, 1, 'moodle/site:readallmessages', 1, 1599457746, 0),
(4, 1, 3, 'moodle/site:readallmessages', 1, 1599457746, 0),
(5, 1, 1, 'moodle/site:manageallmessaging', 1, 1599457746, 0),
(6, 1, 1, 'moodle/site:deleteanymessage', 1, 1599457746, 0),
(7, 1, 1, 'moodle/site:sendmessage', 1, 1599457746, 0),
(8, 1, 7, 'moodle/site:sendmessage', 1, 1599457746, 0),
(9, 1, 7, 'moodle/site:deleteownmessage', 1, 1599457746, 0),
(10, 1, 1, 'moodle/site:approvecourse', 1, 1599457746, 0),
(11, 1, 3, 'moodle/backup:backupcourse', 1, 1599457746, 0),
(12, 1, 1, 'moodle/backup:backupcourse', 1, 1599457746, 0),
(13, 1, 3, 'moodle/backup:backupsection', 1, 1599457746, 0),
(14, 1, 1, 'moodle/backup:backupsection', 1, 1599457746, 0),
(15, 1, 3, 'moodle/backup:backupactivity', 1, 1599457746, 0),
(16, 1, 1, 'moodle/backup:backupactivity', 1, 1599457746, 0),
(17, 1, 3, 'moodle/backup:backuptargetimport', 1, 1599457746, 0),
(18, 1, 1, 'moodle/backup:backuptargetimport', 1, 1599457746, 0),
(19, 1, 3, 'moodle/backup:downloadfile', 1, 1599457746, 0),
(20, 1, 1, 'moodle/backup:downloadfile', 1, 1599457746, 0),
(21, 1, 3, 'moodle/backup:configure', 1, 1599457746, 0),
(22, 1, 1, 'moodle/backup:configure', 1, 1599457746, 0),
(23, 1, 1, 'moodle/backup:userinfo', 1, 1599457746, 0),
(24, 1, 1, 'moodle/backup:anonymise', 1, 1599457747, 0),
(25, 1, 3, 'moodle/restore:restorecourse', 1, 1599457747, 0),
(26, 1, 1, 'moodle/restore:restorecourse', 1, 1599457747, 0),
(27, 1, 3, 'moodle/restore:restoresection', 1, 1599457747, 0),
(28, 1, 1, 'moodle/restore:restoresection', 1, 1599457747, 0),
(29, 1, 3, 'moodle/restore:restoreactivity', 1, 1599457747, 0),
(30, 1, 1, 'moodle/restore:restoreactivity', 1, 1599457747, 0),
(31, 1, 3, 'moodle/restore:viewautomatedfilearea', 1, 1599457747, 0),
(32, 1, 1, 'moodle/restore:viewautomatedfilearea', 1, 1599457747, 0),
(33, 1, 3, 'moodle/restore:restoretargetimport', 1, 1599457747, 0),
(34, 1, 1, 'moodle/restore:restoretargetimport', 1, 1599457747, 0),
(35, 1, 3, 'moodle/restore:uploadfile', 1, 1599457747, 0),
(36, 1, 1, 'moodle/restore:uploadfile', 1, 1599457747, 0),
(37, 1, 3, 'moodle/restore:configure', 1, 1599457747, 0),
(38, 1, 1, 'moodle/restore:configure', 1, 1599457747, 0),
(39, 1, 2, 'moodle/restore:rolldates', 1, 1599457747, 0),
(40, 1, 1, 'moodle/restore:rolldates', 1, 1599457747, 0),
(41, 1, 1, 'moodle/restore:userinfo', 1, 1599457747, 0),
(42, 1, 1, 'moodle/restore:createuser', 1, 1599457747, 0),
(43, 1, 3, 'moodle/site:manageblocks', 1, 1599457747, 0),
(44, 1, 1, 'moodle/site:manageblocks', 1, 1599457747, 0),
(45, 1, 3, 'moodle/site:accessallgroups', 1, 1599457747, 0),
(46, 1, 1, 'moodle/site:accessallgroups', 1, 1599457747, 0),
(47, 1, 4, 'moodle/site:viewfullnames', 1, 1599457747, 0),
(48, 1, 3, 'moodle/site:viewfullnames', 1, 1599457747, 0),
(49, 1, 1, 'moodle/site:viewfullnames', 1, 1599457747, 0),
(50, 1, 4, 'moodle/site:viewuseridentity', 1, 1599457747, 0),
(51, 1, 3, 'moodle/site:viewuseridentity', 1, 1599457747, 0),
(52, 1, 1, 'moodle/site:viewuseridentity', 1, 1599457747, 0),
(53, 1, 4, 'moodle/site:viewreports', 1, 1599457747, 0),
(54, 1, 3, 'moodle/site:viewreports', 1, 1599457747, 0),
(55, 1, 1, 'moodle/site:viewreports', 1, 1599457747, 0),
(56, 1, 3, 'moodle/site:trustcontent', 1, 1599457747, 0),
(57, 1, 1, 'moodle/site:trustcontent', 1, 1599457747, 0),
(58, 1, 1, 'moodle/site:uploadusers', 1, 1599457747, 0),
(59, 1, 3, 'moodle/filter:manage', 1, 1599457747, 0),
(60, 1, 1, 'moodle/filter:manage', 1, 1599457747, 0),
(61, 1, 1, 'moodle/user:create', 1, 1599457747, 0),
(62, 1, 1, 'moodle/user:delete', 1, 1599457747, 0),
(63, 1, 1, 'moodle/user:update', 1, 1599457747, 0),
(64, 1, 6, 'moodle/user:viewdetails', 1, 1599457747, 0),
(65, 1, 5, 'moodle/user:viewdetails', 1, 1599457747, 0),
(66, 1, 4, 'moodle/user:viewdetails', 1, 1599457747, 0),
(67, 1, 3, 'moodle/user:viewdetails', 1, 1599457747, 0),
(68, 1, 1, 'moodle/user:viewdetails', 1, 1599457747, 0),
(69, 1, 1, 'moodle/user:viewalldetails', 1, 1599457747, 0),
(70, 1, 1, 'moodle/user:viewlastip', 1, 1599457747, 0),
(71, 1, 4, 'moodle/user:viewhiddendetails', 1, 1599457747, 0),
(72, 1, 3, 'moodle/user:viewhiddendetails', 1, 1599457747, 0),
(73, 1, 1, 'moodle/user:viewhiddendetails', 1, 1599457747, 0),
(74, 1, 1, 'moodle/user:loginas', 1, 1599457747, 0),
(75, 1, 1, 'moodle/user:managesyspages', 1, 1599457747, 0),
(76, 1, 7, 'moodle/user:manageownblocks', 1, 1599457747, 0),
(77, 1, 7, 'moodle/user:manageownfiles', 1, 1599457747, 0),
(78, 1, 1, 'moodle/my:configsyspages', 1, 1599457747, 0),
(79, 1, 3, 'moodle/role:assign', 1, 1599457747, 0),
(80, 1, 1, 'moodle/role:assign', 1, 1599457747, 0),
(81, 1, 4, 'moodle/role:review', 1, 1599457747, 0),
(82, 1, 3, 'moodle/role:review', 1, 1599457747, 0),
(83, 1, 1, 'moodle/role:review', 1, 1599457747, 0),
(84, 1, 1, 'moodle/role:override', 1, 1599457747, 0),
(85, 1, 3, 'moodle/role:safeoverride', 1, 1599457747, 0),
(86, 1, 1, 'moodle/role:manage', 1, 1599457747, 0),
(87, 1, 3, 'moodle/role:switchroles', 1, 1599457747, 0),
(88, 1, 1, 'moodle/role:switchroles', 1, 1599457747, 0),
(89, 1, 1, 'moodle/category:manage', 1, 1599457747, 0),
(90, 1, 6, 'moodle/category:viewcourselist', 1, 1599457747, 0),
(91, 1, 7, 'moodle/category:viewcourselist', 1, 1599457747, 0),
(92, 1, 2, 'moodle/category:viewhiddencategories', 1, 1599457747, 0),
(93, 1, 1, 'moodle/category:viewhiddencategories', 1, 1599457747, 0),
(94, 1, 1, 'moodle/cohort:manage', 1, 1599457747, 0),
(95, 1, 1, 'moodle/cohort:assign', 1, 1599457747, 0),
(96, 1, 3, 'moodle/cohort:view', 1, 1599457747, 0),
(97, 1, 1, 'moodle/cohort:view', 1, 1599457747, 0),
(98, 1, 2, 'moodle/course:create', 1, 1599457747, 0),
(99, 1, 1, 'moodle/course:create', 1, 1599457747, 0),
(100, 1, 3, 'moodle/course:creategroupconversations', 1, 1599457747, 0),
(101, 1, 1, 'moodle/course:creategroupconversations', 1, 1599457747, 0),
(102, 1, 1, 'moodle/course:delete', 1, 1599457747, 0),
(103, 1, 3, 'moodle/course:update', 1, 1599457747, 0),
(104, 1, 1, 'moodle/course:update', 1, 1599457747, 0),
(105, 1, 1, 'moodle/course:view', 1, 1599457747, 0),
(106, 1, 3, 'moodle/course:enrolreview', 1, 1599457747, 0),
(107, 1, 1, 'moodle/course:enrolreview', 1, 1599457747, 0),
(108, 1, 3, 'moodle/course:enrolconfig', 1, 1599457747, 0),
(109, 1, 1, 'moodle/course:enrolconfig', 1, 1599457747, 0),
(110, 1, 3, 'moodle/course:reviewotherusers', 1, 1599457747, 0),
(111, 1, 1, 'moodle/course:reviewotherusers', 1, 1599457747, 0),
(112, 1, 4, 'moodle/course:bulkmessaging', 1, 1599457747, 0),
(113, 1, 3, 'moodle/course:bulkmessaging', 1, 1599457747, 0),
(114, 1, 1, 'moodle/course:bulkmessaging', 1, 1599457747, 0),
(115, 1, 4, 'moodle/course:viewhiddenuserfields', 1, 1599457747, 0),
(116, 1, 3, 'moodle/course:viewhiddenuserfields', 1, 1599457747, 0),
(117, 1, 1, 'moodle/course:viewhiddenuserfields', 1, 1599457747, 0),
(118, 1, 2, 'moodle/course:viewhiddencourses', 1, 1599457747, 0),
(119, 1, 4, 'moodle/course:viewhiddencourses', 1, 1599457747, 0),
(120, 1, 3, 'moodle/course:viewhiddencourses', 1, 1599457747, 0),
(121, 1, 1, 'moodle/course:viewhiddencourses', 1, 1599457747, 0),
(122, 1, 3, 'moodle/course:visibility', 1, 1599457747, 0),
(123, 1, 1, 'moodle/course:visibility', 1, 1599457747, 0),
(124, 1, 3, 'moodle/course:managefiles', 1, 1599457747, 0),
(125, 1, 1, 'moodle/course:managefiles', 1, 1599457747, 0),
(126, 1, 1, 'moodle/course:ignoreavailabilityrestrictions', 1, 1599457747, 0),
(127, 1, 2, 'moodle/course:ignoreavailabilityrestrictions', 1, 1599457747, 0),
(128, 1, 3, 'moodle/course:ignoreavailabilityrestrictions', 1, 1599457747, 0),
(129, 1, 4, 'moodle/course:ignoreavailabilityrestrictions', 1, 1599457747, 0),
(130, 1, 3, 'moodle/course:manageactivities', 1, 1599457747, 0),
(131, 1, 1, 'moodle/course:manageactivities', 1, 1599457747, 0),
(132, 1, 3, 'moodle/course:activityvisibility', 1, 1599457747, 0),
(133, 1, 1, 'moodle/course:activityvisibility', 1, 1599457747, 0),
(134, 1, 4, 'moodle/course:viewhiddenactivities', 1, 1599457747, 0),
(135, 1, 3, 'moodle/course:viewhiddenactivities', 1, 1599457747, 0),
(136, 1, 1, 'moodle/course:viewhiddenactivities', 1, 1599457747, 0),
(137, 1, 5, 'moodle/course:viewparticipants', 1, 1599457747, 0),
(138, 1, 4, 'moodle/course:viewparticipants', 1, 1599457747, 0),
(139, 1, 3, 'moodle/course:viewparticipants', 1, 1599457747, 0),
(140, 1, 1, 'moodle/course:viewparticipants', 1, 1599457747, 0),
(141, 1, 3, 'moodle/course:changefullname', 1, 1599457747, 0),
(142, 1, 1, 'moodle/course:changefullname', 1, 1599457747, 0),
(143, 1, 3, 'moodle/course:changeshortname', 1, 1599457747, 0),
(144, 1, 1, 'moodle/course:changeshortname', 1, 1599457747, 0),
(145, 1, 1, 'moodle/course:changelockedcustomfields', 1, 1599457747, 0),
(146, 1, 3, 'moodle/course:renameroles', 1, 1599457747, 0),
(147, 1, 1, 'moodle/course:renameroles', 1, 1599457747, 0),
(148, 1, 3, 'moodle/course:changeidnumber', 1, 1599457747, 0),
(149, 1, 1, 'moodle/course:changeidnumber', 1, 1599457747, 0),
(150, 1, 3, 'moodle/course:changecategory', 1, 1599457747, 0),
(151, 1, 1, 'moodle/course:changecategory', 1, 1599457747, 0),
(152, 1, 3, 'moodle/course:changesummary', 1, 1599457747, 0),
(153, 1, 1, 'moodle/course:changesummary', 1, 1599457747, 0),
(154, 1, 3, 'moodle/course:setforcedlanguage', 1, 1599457747, 0),
(155, 1, 1, 'moodle/course:setforcedlanguage', 1, 1599457747, 0),
(156, 1, 1, 'moodle/site:viewparticipants', 1, 1599457747, 0),
(157, 1, 5, 'moodle/course:isincompletionreports', 1, 1599457747, 0),
(158, 1, 5, 'moodle/course:viewscales', 1, 1599457747, 0),
(159, 1, 4, 'moodle/course:viewscales', 1, 1599457747, 0),
(160, 1, 3, 'moodle/course:viewscales', 1, 1599457747, 0),
(161, 1, 1, 'moodle/course:viewscales', 1, 1599457747, 0),
(162, 1, 3, 'moodle/course:managescales', 1, 1599457747, 0),
(163, 1, 1, 'moodle/course:managescales', 1, 1599457747, 0),
(164, 1, 3, 'moodle/course:managegroups', 1, 1599457747, 0),
(165, 1, 1, 'moodle/course:managegroups', 1, 1599457747, 0),
(166, 1, 3, 'moodle/course:reset', 1, 1599457747, 0),
(167, 1, 1, 'moodle/course:reset', 1, 1599457747, 0),
(168, 1, 3, 'moodle/course:viewsuspendedusers', 1, 1599457747, 0),
(169, 1, 1, 'moodle/course:viewsuspendedusers', 1, 1599457747, 0),
(170, 1, 1, 'moodle/course:tag', 1, 1599457747, 0),
(171, 1, 3, 'moodle/course:tag', 1, 1599457747, 0),
(172, 1, 6, 'moodle/blog:view', 1, 1599457747, 0),
(173, 1, 7, 'moodle/blog:view', 1, 1599457747, 0),
(174, 1, 5, 'moodle/blog:view', 1, 1599457747, 0),
(175, 1, 4, 'moodle/blog:view', 1, 1599457747, 0),
(176, 1, 3, 'moodle/blog:view', 1, 1599457747, 0),
(177, 1, 1, 'moodle/blog:view', 1, 1599457747, 0),
(178, 1, 6, 'moodle/blog:search', 1, 1599457747, 0),
(179, 1, 7, 'moodle/blog:search', 1, 1599457747, 0),
(180, 1, 5, 'moodle/blog:search', 1, 1599457747, 0),
(181, 1, 4, 'moodle/blog:search', 1, 1599457747, 0),
(182, 1, 3, 'moodle/blog:search', 1, 1599457747, 0),
(183, 1, 1, 'moodle/blog:search', 1, 1599457747, 0),
(184, 1, 1, 'moodle/blog:viewdrafts', 1, 1599457747, 0),
(185, 1, 7, 'moodle/blog:create', 1, 1599457747, 0),
(186, 1, 1, 'moodle/blog:create', 1, 1599457747, 0),
(187, 1, 4, 'moodle/blog:manageentries', 1, 1599457747, 0),
(188, 1, 3, 'moodle/blog:manageentries', 1, 1599457747, 0),
(189, 1, 1, 'moodle/blog:manageentries', 1, 1599457747, 0),
(190, 1, 5, 'moodle/blog:manageexternal', 1, 1599457747, 0),
(191, 1, 7, 'moodle/blog:manageexternal', 1, 1599457747, 0),
(192, 1, 4, 'moodle/blog:manageexternal', 1, 1599457747, 0),
(193, 1, 3, 'moodle/blog:manageexternal', 1, 1599457747, 0),
(194, 1, 1, 'moodle/blog:manageexternal', 1, 1599457747, 0),
(195, 1, 7, 'moodle/calendar:manageownentries', 1, 1599457747, 0),
(196, 1, 1, 'moodle/calendar:manageownentries', 1, 1599457747, 0),
(197, 1, 4, 'moodle/calendar:managegroupentries', 1, 1599457747, 0),
(198, 1, 3, 'moodle/calendar:managegroupentries', 1, 1599457747, 0),
(199, 1, 1, 'moodle/calendar:managegroupentries', 1, 1599457747, 0),
(200, 1, 4, 'moodle/calendar:manageentries', 1, 1599457747, 0),
(201, 1, 3, 'moodle/calendar:manageentries', 1, 1599457747, 0),
(202, 1, 1, 'moodle/calendar:manageentries', 1, 1599457747, 0),
(203, 1, 1, 'moodle/user:editprofile', 1, 1599457747, 0),
(204, 1, 6, 'moodle/user:editownprofile', -1000, 1599457747, 0),
(205, 1, 7, 'moodle/user:editownprofile', 1, 1599457747, 0),
(206, 1, 1, 'moodle/user:editownprofile', 1, 1599457747, 0),
(207, 1, 6, 'moodle/user:changeownpassword', -1000, 1599457747, 0),
(208, 1, 7, 'moodle/user:changeownpassword', 1, 1599457747, 0),
(209, 1, 1, 'moodle/user:changeownpassword', 1, 1599457747, 0),
(210, 1, 5, 'moodle/user:readuserposts', 1, 1599457747, 0),
(211, 1, 4, 'moodle/user:readuserposts', 1, 1599457747, 0),
(212, 1, 3, 'moodle/user:readuserposts', 1, 1599457747, 0),
(213, 1, 1, 'moodle/user:readuserposts', 1, 1599457747, 0),
(214, 1, 5, 'moodle/user:readuserblogs', 1, 1599457747, 0),
(215, 1, 4, 'moodle/user:readuserblogs', 1, 1599457748, 0),
(216, 1, 3, 'moodle/user:readuserblogs', 1, 1599457748, 0),
(217, 1, 1, 'moodle/user:readuserblogs', 1, 1599457748, 0),
(218, 1, 1, 'moodle/user:editmessageprofile', 1, 1599457748, 0),
(219, 1, 6, 'moodle/user:editownmessageprofile', -1000, 1599457748, 0),
(220, 1, 7, 'moodle/user:editownmessageprofile', 1, 1599457748, 0),
(221, 1, 1, 'moodle/user:editownmessageprofile', 1, 1599457748, 0),
(222, 1, 3, 'moodle/question:managecategory', 1, 1599457748, 0),
(223, 1, 1, 'moodle/question:managecategory', 1, 1599457748, 0),
(224, 1, 3, 'moodle/question:add', 1, 1599457748, 0),
(225, 1, 1, 'moodle/question:add', 1, 1599457748, 0),
(226, 1, 3, 'moodle/question:editmine', 1, 1599457748, 0),
(227, 1, 1, 'moodle/question:editmine', 1, 1599457748, 0),
(228, 1, 3, 'moodle/question:editall', 1, 1599457748, 0),
(229, 1, 1, 'moodle/question:editall', 1, 1599457748, 0),
(230, 1, 3, 'moodle/question:viewmine', 1, 1599457748, 0),
(231, 1, 1, 'moodle/question:viewmine', 1, 1599457748, 0),
(232, 1, 3, 'moodle/question:viewall', 1, 1599457748, 0),
(233, 1, 1, 'moodle/question:viewall', 1, 1599457748, 0),
(234, 1, 3, 'moodle/question:usemine', 1, 1599457748, 0),
(235, 1, 1, 'moodle/question:usemine', 1, 1599457748, 0),
(236, 1, 3, 'moodle/question:useall', 1, 1599457748, 0),
(237, 1, 1, 'moodle/question:useall', 1, 1599457748, 0),
(238, 1, 3, 'moodle/question:movemine', 1, 1599457748, 0),
(239, 1, 1, 'moodle/question:movemine', 1, 1599457748, 0),
(240, 1, 3, 'moodle/question:moveall', 1, 1599457748, 0),
(241, 1, 1, 'moodle/question:moveall', 1, 1599457748, 0),
(242, 1, 1, 'moodle/question:config', 1, 1599457748, 0),
(243, 1, 5, 'moodle/question:flag', 1, 1599457748, 0),
(244, 1, 4, 'moodle/question:flag', 1, 1599457748, 0),
(245, 1, 3, 'moodle/question:flag', 1, 1599457748, 0),
(246, 1, 1, 'moodle/question:flag', 1, 1599457748, 0),
(247, 1, 3, 'moodle/question:tagmine', 1, 1599457748, 0),
(248, 1, 1, 'moodle/question:tagmine', 1, 1599457748, 0),
(249, 1, 3, 'moodle/question:tagall', 1, 1599457748, 0),
(250, 1, 1, 'moodle/question:tagall', 1, 1599457748, 0),
(251, 1, 4, 'moodle/site:doclinks', 1, 1599457748, 0),
(252, 1, 3, 'moodle/site:doclinks', 1, 1599457748, 0),
(253, 1, 1, 'moodle/site:doclinks', 1, 1599457748, 0),
(254, 1, 3, 'moodle/course:sectionvisibility', 1, 1599457748, 0),
(255, 1, 1, 'moodle/course:sectionvisibility', 1, 1599457748, 0),
(256, 1, 3, 'moodle/course:useremail', 1, 1599457748, 0),
(257, 1, 1, 'moodle/course:useremail', 1, 1599457748, 0),
(258, 1, 3, 'moodle/course:viewhiddensections', 1, 1599457748, 0),
(259, 1, 1, 'moodle/course:viewhiddensections', 1, 1599457748, 0),
(260, 1, 3, 'moodle/course:setcurrentsection', 1, 1599457748, 0),
(261, 1, 1, 'moodle/course:setcurrentsection', 1, 1599457748, 0),
(262, 1, 3, 'moodle/course:movesections', 1, 1599457748, 0),
(263, 1, 1, 'moodle/course:movesections', 1, 1599457748, 0),
(264, 1, 4, 'moodle/grade:viewall', 1, 1599457748, 0),
(265, 1, 3, 'moodle/grade:viewall', 1, 1599457748, 0),
(266, 1, 1, 'moodle/grade:viewall', 1, 1599457748, 0),
(267, 1, 5, 'moodle/grade:view', 1, 1599457748, 0),
(268, 1, 4, 'moodle/grade:viewhidden', 1, 1599457748, 0),
(269, 1, 3, 'moodle/grade:viewhidden', 1, 1599457748, 0),
(270, 1, 1, 'moodle/grade:viewhidden', 1, 1599457748, 0),
(271, 1, 3, 'moodle/grade:import', 1, 1599457748, 0),
(272, 1, 1, 'moodle/grade:import', 1, 1599457748, 0),
(273, 1, 4, 'moodle/grade:export', 1, 1599457748, 0),
(274, 1, 3, 'moodle/grade:export', 1, 1599457748, 0),
(275, 1, 1, 'moodle/grade:export', 1, 1599457748, 0),
(276, 1, 3, 'moodle/grade:manage', 1, 1599457748, 0),
(277, 1, 1, 'moodle/grade:manage', 1, 1599457748, 0),
(278, 1, 3, 'moodle/grade:edit', 1, 1599457748, 0),
(279, 1, 1, 'moodle/grade:edit', 1, 1599457748, 0),
(280, 1, 3, 'moodle/grade:managegradingforms', 1, 1599457748, 0),
(281, 1, 1, 'moodle/grade:managegradingforms', 1, 1599457748, 0),
(282, 1, 1, 'moodle/grade:sharegradingforms', 1, 1599457748, 0),
(283, 1, 1, 'moodle/grade:managesharedforms', 1, 1599457748, 0),
(284, 1, 3, 'moodle/grade:manageoutcomes', 1, 1599457748, 0),
(285, 1, 1, 'moodle/grade:manageoutcomes', 1, 1599457748, 0),
(286, 1, 3, 'moodle/grade:manageletters', 1, 1599457748, 0),
(287, 1, 1, 'moodle/grade:manageletters', 1, 1599457748, 0),
(288, 1, 3, 'moodle/grade:hide', 1, 1599457748, 0),
(289, 1, 1, 'moodle/grade:hide', 1, 1599457748, 0),
(290, 1, 3, 'moodle/grade:lock', 1, 1599457748, 0),
(291, 1, 1, 'moodle/grade:lock', 1, 1599457748, 0),
(292, 1, 3, 'moodle/grade:unlock', 1, 1599457748, 0),
(293, 1, 1, 'moodle/grade:unlock', 1, 1599457748, 0),
(294, 1, 7, 'moodle/my:manageblocks', 1, 1599457748, 0),
(295, 1, 4, 'moodle/notes:view', 1, 1599457748, 0),
(296, 1, 3, 'moodle/notes:view', 1, 1599457748, 0),
(297, 1, 1, 'moodle/notes:view', 1, 1599457748, 0),
(298, 1, 4, 'moodle/notes:manage', 1, 1599457748, 0),
(299, 1, 3, 'moodle/notes:manage', 1, 1599457748, 0),
(300, 1, 1, 'moodle/notes:manage', 1, 1599457748, 0),
(301, 1, 1, 'moodle/tag:manage', 1, 1599457748, 0),
(302, 1, 1, 'moodle/tag:edit', 1, 1599457748, 0),
(303, 1, 7, 'moodle/tag:flag', 1, 1599457748, 0),
(304, 1, 4, 'moodle/tag:editblocks', 1, 1599457748, 0),
(305, 1, 3, 'moodle/tag:editblocks', 1, 1599457748, 0),
(306, 1, 1, 'moodle/tag:editblocks', 1, 1599457748, 0),
(307, 1, 6, 'moodle/block:view', 1, 1599457748, 0),
(308, 1, 7, 'moodle/block:view', 1, 1599457748, 0),
(309, 1, 5, 'moodle/block:view', 1, 1599457748, 0),
(310, 1, 4, 'moodle/block:view', 1, 1599457748, 0),
(311, 1, 3, 'moodle/block:view', 1, 1599457748, 0),
(312, 1, 3, 'moodle/block:edit', 1, 1599457748, 0),
(313, 1, 1, 'moodle/block:edit', 1, 1599457748, 0),
(314, 1, 7, 'moodle/portfolio:export', 1, 1599457748, 0),
(315, 1, 5, 'moodle/portfolio:export', 1, 1599457748, 0),
(316, 1, 4, 'moodle/portfolio:export', 1, 1599457748, 0),
(317, 1, 3, 'moodle/portfolio:export', 1, 1599457748, 0),
(318, 1, 8, 'moodle/comment:view', 1, 1599457748, 0),
(319, 1, 6, 'moodle/comment:view', 1, 1599457748, 0),
(320, 1, 7, 'moodle/comment:view', 1, 1599457748, 0),
(321, 1, 5, 'moodle/comment:view', 1, 1599457748, 0),
(322, 1, 4, 'moodle/comment:view', 1, 1599457748, 0),
(323, 1, 3, 'moodle/comment:view', 1, 1599457748, 0),
(324, 1, 1, 'moodle/comment:view', 1, 1599457748, 0),
(325, 1, 7, 'moodle/comment:post', 1, 1599457748, 0),
(326, 1, 5, 'moodle/comment:post', 1, 1599457748, 0),
(327, 1, 4, 'moodle/comment:post', 1, 1599457748, 0),
(328, 1, 3, 'moodle/comment:post', 1, 1599457748, 0),
(329, 1, 1, 'moodle/comment:post', 1, 1599457748, 0),
(330, 1, 3, 'moodle/comment:delete', 1, 1599457748, 0),
(331, 1, 1, 'moodle/comment:delete', 1, 1599457748, 0),
(332, 1, 1, 'moodle/webservice:createtoken', 1, 1599457748, 0),
(333, 1, 7, 'moodle/webservice:createmobiletoken', 1, 1599457748, 0),
(334, 1, 7, 'moodle/rating:view', 1, 1599457748, 0),
(335, 1, 5, 'moodle/rating:view', 1, 1599457748, 0),
(336, 1, 4, 'moodle/rating:view', 1, 1599457748, 0),
(337, 1, 3, 'moodle/rating:view', 1, 1599457748, 0),
(338, 1, 1, 'moodle/rating:view', 1, 1599457748, 0),
(339, 1, 7, 'moodle/rating:viewany', 1, 1599457748, 0),
(340, 1, 5, 'moodle/rating:viewany', 1, 1599457748, 0),
(341, 1, 4, 'moodle/rating:viewany', 1, 1599457748, 0),
(342, 1, 3, 'moodle/rating:viewany', 1, 1599457748, 0),
(343, 1, 1, 'moodle/rating:viewany', 1, 1599457748, 0),
(344, 1, 7, 'moodle/rating:viewall', 1, 1599457748, 0),
(345, 1, 5, 'moodle/rating:viewall', 1, 1599457748, 0),
(346, 1, 4, 'moodle/rating:viewall', 1, 1599457748, 0),
(347, 1, 3, 'moodle/rating:viewall', 1, 1599457748, 0),
(348, 1, 1, 'moodle/rating:viewall', 1, 1599457748, 0),
(349, 1, 7, 'moodle/rating:rate', 1, 1599457748, 0),
(350, 1, 5, 'moodle/rating:rate', 1, 1599457748, 0),
(351, 1, 4, 'moodle/rating:rate', 1, 1599457748, 0),
(352, 1, 3, 'moodle/rating:rate', 1, 1599457748, 0),
(353, 1, 1, 'moodle/rating:rate', 1, 1599457748, 0),
(354, 1, 4, 'moodle/course:markcomplete', 1, 1599457748, 0),
(355, 1, 3, 'moodle/course:markcomplete', 1, 1599457748, 0),
(356, 1, 1, 'moodle/course:markcomplete', 1, 1599457748, 0),
(357, 1, 4, 'moodle/course:overridecompletion', 1, 1599457748, 0),
(358, 1, 3, 'moodle/course:overridecompletion', 1, 1599457749, 0),
(359, 1, 1, 'moodle/course:overridecompletion', 1, 1599457749, 0),
(360, 1, 1, 'moodle/badges:manageglobalsettings', 1, 1599457749, 0),
(361, 1, 7, 'moodle/badges:viewbadges', 1, 1599457749, 0),
(362, 1, 7, 'moodle/badges:manageownbadges', 1, 1599457749, 0),
(363, 1, 7, 'moodle/badges:viewotherbadges', 1, 1599457749, 0),
(364, 1, 7, 'moodle/badges:earnbadge', 1, 1599457749, 0),
(365, 1, 1, 'moodle/badges:createbadge', 1, 1599457749, 0),
(366, 1, 3, 'moodle/badges:createbadge', 1, 1599457749, 0),
(367, 1, 1, 'moodle/badges:deletebadge', 1, 1599457749, 0),
(368, 1, 3, 'moodle/badges:deletebadge', 1, 1599457749, 0),
(369, 1, 1, 'moodle/badges:configuredetails', 1, 1599457749, 0),
(370, 1, 3, 'moodle/badges:configuredetails', 1, 1599457749, 0),
(371, 1, 1, 'moodle/badges:configurecriteria', 1, 1599457749, 0),
(372, 1, 3, 'moodle/badges:configurecriteria', 1, 1599457749, 0),
(373, 1, 1, 'moodle/badges:configuremessages', 1, 1599457749, 0),
(374, 1, 3, 'moodle/badges:configuremessages', 1, 1599457749, 0),
(375, 1, 1, 'moodle/badges:awardbadge', 1, 1599457749, 0),
(376, 1, 4, 'moodle/badges:awardbadge', 1, 1599457749, 0),
(377, 1, 3, 'moodle/badges:awardbadge', 1, 1599457749, 0),
(378, 1, 1, 'moodle/badges:revokebadge', 1, 1599457749, 0),
(379, 1, 4, 'moodle/badges:revokebadge', 1, 1599457749, 0),
(380, 1, 3, 'moodle/badges:revokebadge', 1, 1599457749, 0),
(381, 1, 1, 'moodle/badges:viewawarded', 1, 1599457749, 0),
(382, 1, 4, 'moodle/badges:viewawarded', 1, 1599457749, 0),
(383, 1, 3, 'moodle/badges:viewawarded', 1, 1599457749, 0),
(384, 1, 6, 'moodle/search:query', 1, 1599457749, 0),
(385, 1, 7, 'moodle/search:query', 1, 1599457749, 0),
(386, 1, 5, 'moodle/search:query', 1, 1599457749, 0),
(387, 1, 4, 'moodle/search:query', 1, 1599457749, 0),
(388, 1, 3, 'moodle/search:query', 1, 1599457749, 0),
(389, 1, 1, 'moodle/search:query', 1, 1599457749, 0),
(390, 1, 1, 'moodle/competency:competencymanage', 1, 1599457749, 0),
(391, 1, 7, 'moodle/competency:competencyview', 1, 1599457749, 0),
(392, 1, 3, 'moodle/competency:competencygrade', 1, 1599457749, 0),
(393, 1, 4, 'moodle/competency:competencygrade', 1, 1599457749, 0),
(394, 1, 1, 'moodle/competency:competencygrade', 1, 1599457749, 0),
(395, 1, 3, 'moodle/competency:coursecompetencymanage', 1, 1599457749, 0),
(396, 1, 1, 'moodle/competency:coursecompetencymanage', 1, 1599457749, 0),
(397, 1, 1, 'moodle/competency:coursecompetencyconfigure', 1, 1599457749, 0),
(398, 1, 5, 'moodle/competency:coursecompetencygradable', 1, 1599457749, 0),
(399, 1, 7, 'moodle/competency:coursecompetencyview', 1, 1599457749, 0),
(400, 1, 1, 'moodle/competency:planmanage', 1, 1599457749, 0),
(401, 1, 1, 'moodle/competency:planmanagedraft', 1, 1599457749, 0),
(402, 1, 1, 'moodle/competency:planview', 1, 1599457749, 0),
(403, 1, 1, 'moodle/competency:planviewdraft', 1, 1599457749, 0),
(404, 1, 7, 'moodle/competency:planviewown', 1, 1599457749, 0),
(405, 1, 1, 'moodle/competency:planrequestreview', 1, 1599457749, 0),
(406, 1, 7, 'moodle/competency:planrequestreviewown', 1, 1599457749, 0),
(407, 1, 1, 'moodle/competency:planreview', 1, 1599457749, 0),
(408, 1, 1, 'moodle/competency:plancomment', 1, 1599457749, 0),
(409, 1, 7, 'moodle/competency:plancommentown', 1, 1599457749, 0),
(410, 1, 1, 'moodle/competency:usercompetencyview', 1, 1599457749, 0),
(411, 1, 3, 'moodle/competency:usercompetencyview', 1, 1599457749, 0),
(412, 1, 4, 'moodle/competency:usercompetencyview', 1, 1599457749, 0),
(413, 1, 1, 'moodle/competency:usercompetencyrequestreview', 1, 1599457749, 0),
(414, 1, 7, 'moodle/competency:usercompetencyrequestreviewown', 1, 1599457749, 0),
(415, 1, 1, 'moodle/competency:usercompetencyreview', 1, 1599457749, 0),
(416, 1, 1, 'moodle/competency:usercompetencycomment', 1, 1599457749, 0),
(417, 1, 7, 'moodle/competency:usercompetencycommentown', 1, 1599457749, 0),
(418, 1, 1, 'moodle/competency:templatemanage', 1, 1599457749, 0),
(419, 1, 4, 'moodle/analytics:listinsights', 1, 1599457749, 0),
(420, 1, 3, 'moodle/analytics:listinsights', 1, 1599457749, 0),
(421, 1, 1, 'moodle/analytics:listinsights', 1, 1599457749, 0),
(422, 1, 1, 'moodle/analytics:managemodels', 1, 1599457749, 0),
(423, 1, 1, 'moodle/competency:templateview', 1, 1599457749, 0),
(424, 1, 1, 'moodle/competency:userevidencemanage', 1, 1599457749, 0),
(425, 1, 7, 'moodle/competency:userevidencemanageown', 1, 1599457749, 0),
(426, 1, 1, 'moodle/competency:userevidenceview', 1, 1599457749, 0),
(427, 1, 4, 'moodle/site:messageanyuser', 1, 1599457749, 0),
(428, 1, 3, 'moodle/site:messageanyuser', 1, 1599457749, 0),
(429, 1, 1, 'moodle/site:messageanyuser', 1, 1599457749, 0),
(430, 1, 7, 'moodle/course:togglecompletion', 1, 1599457749, 0),
(431, 1, 7, 'moodle/analytics:listowninsights', 1, 1599457749, 0),
(432, 1, 3, 'moodle/h5p:setdisplayoptions', 1, 1599457749, 0),
(433, 1, 1, 'moodle/h5p:deploy', 1, 1599457749, 0),
(434, 1, 3, 'moodle/h5p:deploy', 1, 1599457749, 0),
(435, 1, 1, 'moodle/h5p:updatelibraries', 1, 1599457749, 0),
(436, 1, 6, 'mod/assign:view', 1, 1599457772, 0),
(437, 1, 5, 'mod/assign:view', 1, 1599457772, 0),
(438, 1, 4, 'mod/assign:view', 1, 1599457772, 0),
(439, 1, 3, 'mod/assign:view', 1, 1599457772, 0),
(440, 1, 1, 'mod/assign:view', 1, 1599457772, 0),
(441, 1, 5, 'mod/assign:submit', 1, 1599457772, 0),
(442, 1, 4, 'mod/assign:grade', 1, 1599457772, 0),
(443, 1, 3, 'mod/assign:grade', 1, 1599457772, 0),
(444, 1, 1, 'mod/assign:grade', 1, 1599457772, 0),
(445, 1, 4, 'mod/assign:exportownsubmission', 1, 1599457772, 0),
(446, 1, 3, 'mod/assign:exportownsubmission', 1, 1599457772, 0),
(447, 1, 1, 'mod/assign:exportownsubmission', 1, 1599457772, 0),
(448, 1, 5, 'mod/assign:exportownsubmission', 1, 1599457772, 0),
(449, 1, 3, 'mod/assign:addinstance', 1, 1599457772, 0),
(450, 1, 1, 'mod/assign:addinstance', 1, 1599457772, 0),
(451, 1, 4, 'mod/assign:grantextension', 1, 1599457772, 0),
(452, 1, 3, 'mod/assign:grantextension', 1, 1599457772, 0),
(453, 1, 1, 'mod/assign:grantextension', 1, 1599457772, 0),
(454, 1, 3, 'mod/assign:revealidentities', 1, 1599457772, 0),
(455, 1, 1, 'mod/assign:revealidentities', 1, 1599457772, 0),
(456, 1, 3, 'mod/assign:reviewgrades', 1, 1599457772, 0),
(457, 1, 1, 'mod/assign:reviewgrades', 1, 1599457772, 0),
(458, 1, 3, 'mod/assign:releasegrades', 1, 1599457772, 0),
(459, 1, 1, 'mod/assign:releasegrades', 1, 1599457772, 0),
(460, 1, 3, 'mod/assign:managegrades', 1, 1599457772, 0),
(461, 1, 1, 'mod/assign:managegrades', 1, 1599457772, 0),
(462, 1, 3, 'mod/assign:manageallocations', 1, 1599457772, 0),
(463, 1, 1, 'mod/assign:manageallocations', 1, 1599457772, 0),
(464, 1, 3, 'mod/assign:viewgrades', 1, 1599457772, 0),
(465, 1, 1, 'mod/assign:viewgrades', 1, 1599457772, 0),
(466, 1, 4, 'mod/assign:viewgrades', 1, 1599457772, 0),
(467, 1, 1, 'mod/assign:viewblinddetails', 1, 1599457772, 0),
(468, 1, 4, 'mod/assign:receivegradernotifications', 1, 1599457772, 0),
(469, 1, 3, 'mod/assign:receivegradernotifications', 1, 1599457772, 0),
(470, 1, 1, 'mod/assign:receivegradernotifications', 1, 1599457772, 0),
(471, 1, 3, 'mod/assign:manageoverrides', 1, 1599457772, 0),
(472, 1, 1, 'mod/assign:manageoverrides', 1, 1599457772, 0),
(473, 1, 4, 'mod/assign:showhiddengrader', 1, 1599457772, 0),
(474, 1, 3, 'mod/assign:showhiddengrader', 1, 1599457772, 0),
(475, 1, 1, 'mod/assign:showhiddengrader', 1, 1599457772, 0),
(476, 1, 6, 'mod/assignment:view', 1, 1599457773, 0),
(477, 1, 5, 'mod/assignment:view', 1, 1599457773, 0),
(478, 1, 4, 'mod/assignment:view', 1, 1599457773, 0),
(479, 1, 3, 'mod/assignment:view', 1, 1599457773, 0),
(480, 1, 1, 'mod/assignment:view', 1, 1599457773, 0),
(481, 1, 3, 'mod/assignment:addinstance', 1, 1599457773, 0),
(482, 1, 1, 'mod/assignment:addinstance', 1, 1599457773, 0),
(483, 1, 5, 'mod/assignment:submit', 1, 1599457773, 0),
(484, 1, 4, 'mod/assignment:grade', 1, 1599457773, 0),
(485, 1, 3, 'mod/assignment:grade', 1, 1599457773, 0),
(486, 1, 1, 'mod/assignment:grade', 1, 1599457773, 0),
(487, 1, 4, 'mod/assignment:exportownsubmission', 1, 1599457773, 0),
(488, 1, 3, 'mod/assignment:exportownsubmission', 1, 1599457773, 0),
(489, 1, 1, 'mod/assignment:exportownsubmission', 1, 1599457773, 0),
(490, 1, 5, 'mod/assignment:exportownsubmission', 1, 1599457773, 0),
(491, 1, 3, 'mod/book:addinstance', 1, 1599457773, 0),
(492, 1, 1, 'mod/book:addinstance', 1, 1599457773, 0),
(493, 1, 6, 'mod/book:read', 1, 1599457773, 0),
(494, 1, 8, 'mod/book:read', 1, 1599457773, 0),
(495, 1, 5, 'mod/book:read', 1, 1599457773, 0),
(496, 1, 4, 'mod/book:read', 1, 1599457773, 0),
(497, 1, 3, 'mod/book:read', 1, 1599457773, 0),
(498, 1, 1, 'mod/book:read', 1, 1599457773, 0),
(499, 1, 4, 'mod/book:viewhiddenchapters', 1, 1599457773, 0),
(500, 1, 3, 'mod/book:viewhiddenchapters', 1, 1599457773, 0),
(501, 1, 1, 'mod/book:viewhiddenchapters', 1, 1599457773, 0),
(502, 1, 3, 'mod/book:edit', 1, 1599457773, 0),
(503, 1, 1, 'mod/book:edit', 1, 1599457773, 0),
(504, 1, 3, 'mod/chat:addinstance', 1, 1599457773, 0),
(505, 1, 1, 'mod/chat:addinstance', 1, 1599457773, 0),
(506, 1, 5, 'mod/chat:chat', 1, 1599457773, 0),
(507, 1, 4, 'mod/chat:chat', 1, 1599457773, 0),
(508, 1, 3, 'mod/chat:chat', 1, 1599457773, 0),
(509, 1, 1, 'mod/chat:chat', 1, 1599457773, 0),
(510, 1, 5, 'mod/chat:readlog', 1, 1599457773, 0),
(511, 1, 4, 'mod/chat:readlog', 1, 1599457773, 0),
(512, 1, 3, 'mod/chat:readlog', 1, 1599457773, 0),
(513, 1, 1, 'mod/chat:readlog', 1, 1599457773, 0),
(514, 1, 4, 'mod/chat:deletelog', 1, 1599457773, 0),
(515, 1, 3, 'mod/chat:deletelog', 1, 1599457773, 0),
(516, 1, 1, 'mod/chat:deletelog', 1, 1599457773, 0),
(517, 1, 4, 'mod/chat:exportparticipatedsession', 1, 1599457773, 0),
(518, 1, 3, 'mod/chat:exportparticipatedsession', 1, 1599457773, 0),
(519, 1, 1, 'mod/chat:exportparticipatedsession', 1, 1599457773, 0),
(520, 1, 4, 'mod/chat:exportsession', 1, 1599457773, 0),
(521, 1, 3, 'mod/chat:exportsession', 1, 1599457773, 0),
(522, 1, 1, 'mod/chat:exportsession', 1, 1599457773, 0),
(523, 1, 7, 'mod/chat:view', 1, 1599457773, 0),
(524, 1, 6, 'mod/chat:view', 1, 1599457773, 0),
(525, 1, 3, 'mod/choice:addinstance', 1, 1599457773, 0),
(526, 1, 1, 'mod/choice:addinstance', 1, 1599457773, 0),
(527, 1, 5, 'mod/choice:choose', 1, 1599457773, 0),
(528, 1, 4, 'mod/choice:choose', 1, 1599457774, 0),
(529, 1, 3, 'mod/choice:choose', 1, 1599457774, 0),
(530, 1, 4, 'mod/choice:readresponses', 1, 1599457774, 0),
(531, 1, 3, 'mod/choice:readresponses', 1, 1599457774, 0),
(532, 1, 1, 'mod/choice:readresponses', 1, 1599457774, 0),
(533, 1, 4, 'mod/choice:deleteresponses', 1, 1599457774, 0),
(534, 1, 3, 'mod/choice:deleteresponses', 1, 1599457774, 0),
(535, 1, 1, 'mod/choice:deleteresponses', 1, 1599457774, 0),
(536, 1, 4, 'mod/choice:downloadresponses', 1, 1599457774, 0),
(537, 1, 3, 'mod/choice:downloadresponses', 1, 1599457774, 0),
(538, 1, 1, 'mod/choice:downloadresponses', 1, 1599457774, 0),
(539, 1, 7, 'mod/choice:view', 1, 1599457774, 0),
(540, 1, 6, 'mod/choice:view', 1, 1599457774, 0),
(541, 1, 3, 'mod/data:addinstance', 1, 1599457775, 0),
(542, 1, 1, 'mod/data:addinstance', 1, 1599457775, 0),
(543, 1, 8, 'mod/data:viewentry', 1, 1599457775, 0),
(544, 1, 6, 'mod/data:viewentry', 1, 1599457775, 0),
(545, 1, 5, 'mod/data:viewentry', 1, 1599457775, 0),
(546, 1, 4, 'mod/data:viewentry', 1, 1599457775, 0),
(547, 1, 3, 'mod/data:viewentry', 1, 1599457775, 0),
(548, 1, 1, 'mod/data:viewentry', 1, 1599457775, 0),
(549, 1, 5, 'mod/data:writeentry', 1, 1599457775, 0),
(550, 1, 4, 'mod/data:writeentry', 1, 1599457775, 0),
(551, 1, 3, 'mod/data:writeentry', 1, 1599457775, 0),
(552, 1, 1, 'mod/data:writeentry', 1, 1599457775, 0),
(553, 1, 5, 'mod/data:comment', 1, 1599457775, 0),
(554, 1, 4, 'mod/data:comment', 1, 1599457775, 0),
(555, 1, 3, 'mod/data:comment', 1, 1599457775, 0),
(556, 1, 1, 'mod/data:comment', 1, 1599457775, 0),
(557, 1, 4, 'mod/data:rate', 1, 1599457775, 0),
(558, 1, 3, 'mod/data:rate', 1, 1599457775, 0),
(559, 1, 1, 'mod/data:rate', 1, 1599457776, 0),
(560, 1, 4, 'mod/data:viewrating', 1, 1599457776, 0),
(561, 1, 3, 'mod/data:viewrating', 1, 1599457776, 0),
(562, 1, 1, 'mod/data:viewrating', 1, 1599457776, 0),
(563, 1, 4, 'mod/data:viewanyrating', 1, 1599457776, 0),
(564, 1, 3, 'mod/data:viewanyrating', 1, 1599457776, 0),
(565, 1, 1, 'mod/data:viewanyrating', 1, 1599457776, 0),
(566, 1, 4, 'mod/data:viewallratings', 1, 1599457776, 0),
(567, 1, 3, 'mod/data:viewallratings', 1, 1599457776, 0),
(568, 1, 1, 'mod/data:viewallratings', 1, 1599457776, 0),
(569, 1, 4, 'mod/data:approve', 1, 1599457776, 0),
(570, 1, 3, 'mod/data:approve', 1, 1599457776, 0),
(571, 1, 1, 'mod/data:approve', 1, 1599457776, 0),
(572, 1, 4, 'mod/data:manageentries', 1, 1599457776, 0),
(573, 1, 3, 'mod/data:manageentries', 1, 1599457776, 0),
(574, 1, 1, 'mod/data:manageentries', 1, 1599457776, 0),
(575, 1, 4, 'mod/data:managecomments', 1, 1599457776, 0),
(576, 1, 3, 'mod/data:managecomments', 1, 1599457776, 0),
(577, 1, 1, 'mod/data:managecomments', 1, 1599457776, 0),
(578, 1, 3, 'mod/data:managetemplates', 1, 1599457776, 0),
(579, 1, 1, 'mod/data:managetemplates', 1, 1599457776, 0),
(580, 1, 4, 'mod/data:viewalluserpresets', 1, 1599457776, 0),
(581, 1, 3, 'mod/data:viewalluserpresets', 1, 1599457776, 0),
(582, 1, 1, 'mod/data:viewalluserpresets', 1, 1599457776, 0),
(583, 1, 1, 'mod/data:manageuserpresets', 1, 1599457776, 0),
(584, 1, 1, 'mod/data:exportentry', 1, 1599457776, 0),
(585, 1, 4, 'mod/data:exportentry', 1, 1599457776, 0),
(586, 1, 3, 'mod/data:exportentry', 1, 1599457776, 0),
(587, 1, 1, 'mod/data:exportownentry', 1, 1599457776, 0),
(588, 1, 4, 'mod/data:exportownentry', 1, 1599457776, 0),
(589, 1, 3, 'mod/data:exportownentry', 1, 1599457776, 0),
(590, 1, 5, 'mod/data:exportownentry', 1, 1599457776, 0),
(591, 1, 1, 'mod/data:exportallentries', 1, 1599457776, 0),
(592, 1, 4, 'mod/data:exportallentries', 1, 1599457777, 0),
(593, 1, 3, 'mod/data:exportallentries', 1, 1599457777, 0),
(594, 1, 1, 'mod/data:exportuserinfo', 1, 1599457777, 0),
(595, 1, 4, 'mod/data:exportuserinfo', 1, 1599457777, 0),
(596, 1, 3, 'mod/data:exportuserinfo', 1, 1599457777, 0),
(597, 1, 6, 'mod/data:view', 1, 1599457777, 0),
(598, 1, 5, 'mod/data:view', 1, 1599457777, 0),
(599, 1, 4, 'mod/data:view', 1, 1599457777, 0),
(600, 1, 3, 'mod/data:view', 1, 1599457777, 0),
(601, 1, 1, 'mod/data:view', 1, 1599457777, 0),
(602, 1, 3, 'mod/feedback:addinstance', 1, 1599457778, 0),
(603, 1, 1, 'mod/feedback:addinstance', 1, 1599457778, 0),
(604, 1, 6, 'mod/feedback:view', 1, 1599457778, 0),
(605, 1, 8, 'mod/feedback:view', 1, 1599457778, 0),
(606, 1, 5, 'mod/feedback:view', 1, 1599457778, 0),
(607, 1, 4, 'mod/feedback:view', 1, 1599457778, 0),
(608, 1, 3, 'mod/feedback:view', 1, 1599457778, 0),
(609, 1, 1, 'mod/feedback:view', 1, 1599457778, 0),
(610, 1, 8, 'mod/feedback:complete', 1, 1599457778, 0),
(611, 1, 5, 'mod/feedback:complete', 1, 1599457778, 0),
(612, 1, 5, 'mod/feedback:viewanalysepage', 1, 1599457778, 0),
(613, 1, 3, 'mod/feedback:viewanalysepage', 1, 1599457778, 0),
(614, 1, 1, 'mod/feedback:viewanalysepage', 1, 1599457778, 0),
(615, 1, 3, 'mod/feedback:deletesubmissions', 1, 1599457778, 0),
(616, 1, 1, 'mod/feedback:deletesubmissions', 1, 1599457778, 0),
(617, 1, 1, 'mod/feedback:mapcourse', 1, 1599457778, 0),
(618, 1, 3, 'mod/feedback:edititems', 1, 1599457778, 0),
(619, 1, 1, 'mod/feedback:edititems', 1, 1599457778, 0),
(620, 1, 3, 'mod/feedback:createprivatetemplate', 1, 1599457778, 0),
(621, 1, 1, 'mod/feedback:createprivatetemplate', 1, 1599457778, 0),
(622, 1, 3, 'mod/feedback:createpublictemplate', 1, 1599457778, 0),
(623, 1, 1, 'mod/feedback:createpublictemplate', 1, 1599457778, 0),
(624, 1, 3, 'mod/feedback:deletetemplate', 1, 1599457778, 0),
(625, 1, 1, 'mod/feedback:deletetemplate', 1, 1599457778, 0),
(626, 1, 4, 'mod/feedback:viewreports', 1, 1599457778, 0),
(627, 1, 3, 'mod/feedback:viewreports', 1, 1599457778, 0),
(628, 1, 1, 'mod/feedback:viewreports', 1, 1599457778, 0),
(629, 1, 4, 'mod/feedback:receivemail', 1, 1599457778, 0),
(630, 1, 3, 'mod/feedback:receivemail', 1, 1599457778, 0),
(631, 1, 3, 'mod/folder:addinstance', 1, 1599457779, 0),
(632, 1, 1, 'mod/folder:addinstance', 1, 1599457779, 0),
(633, 1, 6, 'mod/folder:view', 1, 1599457779, 0),
(634, 1, 7, 'mod/folder:view', 1, 1599457779, 0),
(635, 1, 3, 'mod/folder:managefiles', 1, 1599457779, 0),
(636, 1, 3, 'mod/forum:addinstance', 1, 1599457779, 0),
(637, 1, 1, 'mod/forum:addinstance', 1, 1599457779, 0),
(638, 1, 8, 'mod/forum:viewdiscussion', 1, 1599457779, 0),
(639, 1, 6, 'mod/forum:viewdiscussion', 1, 1599457779, 0),
(640, 1, 5, 'mod/forum:viewdiscussion', 1, 1599457779, 0),
(641, 1, 4, 'mod/forum:viewdiscussion', 1, 1599457779, 0),
(642, 1, 3, 'mod/forum:viewdiscussion', 1, 1599457779, 0),
(643, 1, 1, 'mod/forum:viewdiscussion', 1, 1599457779, 0),
(644, 1, 4, 'mod/forum:viewhiddentimedposts', 1, 1599457779, 0),
(645, 1, 3, 'mod/forum:viewhiddentimedposts', 1, 1599457779, 0),
(646, 1, 1, 'mod/forum:viewhiddentimedposts', 1, 1599457779, 0),
(647, 1, 5, 'mod/forum:startdiscussion', 1, 1599457779, 0),
(648, 1, 4, 'mod/forum:startdiscussion', 1, 1599457779, 0),
(649, 1, 3, 'mod/forum:startdiscussion', 1, 1599457779, 0),
(650, 1, 1, 'mod/forum:startdiscussion', 1, 1599457779, 0),
(651, 1, 5, 'mod/forum:replypost', 1, 1599457779, 0),
(652, 1, 4, 'mod/forum:replypost', 1, 1599457779, 0),
(653, 1, 3, 'mod/forum:replypost', 1, 1599457779, 0),
(654, 1, 1, 'mod/forum:replypost', 1, 1599457779, 0),
(655, 1, 4, 'mod/forum:addnews', 1, 1599457779, 0),
(656, 1, 3, 'mod/forum:addnews', 1, 1599457779, 0),
(657, 1, 1, 'mod/forum:addnews', 1, 1599457779, 0),
(658, 1, 4, 'mod/forum:replynews', 1, 1599457779, 0),
(659, 1, 3, 'mod/forum:replynews', 1, 1599457779, 0),
(660, 1, 1, 'mod/forum:replynews', 1, 1599457779, 0),
(661, 1, 5, 'mod/forum:viewrating', 1, 1599457779, 0),
(662, 1, 4, 'mod/forum:viewrating', 1, 1599457779, 0),
(663, 1, 3, 'mod/forum:viewrating', 1, 1599457779, 0),
(664, 1, 1, 'mod/forum:viewrating', 1, 1599457779, 0),
(665, 1, 4, 'mod/forum:viewanyrating', 1, 1599457779, 0),
(666, 1, 3, 'mod/forum:viewanyrating', 1, 1599457779, 0),
(667, 1, 1, 'mod/forum:viewanyrating', 1, 1599457779, 0),
(668, 1, 4, 'mod/forum:viewallratings', 1, 1599457779, 0),
(669, 1, 3, 'mod/forum:viewallratings', 1, 1599457779, 0),
(670, 1, 1, 'mod/forum:viewallratings', 1, 1599457779, 0),
(671, 1, 4, 'mod/forum:rate', 1, 1599457779, 0),
(672, 1, 3, 'mod/forum:rate', 1, 1599457779, 0),
(673, 1, 1, 'mod/forum:rate', 1, 1599457779, 0),
(674, 1, 4, 'mod/forum:postprivatereply', 1, 1599457779, 0),
(675, 1, 3, 'mod/forum:postprivatereply', 1, 1599457779, 0),
(676, 1, 1, 'mod/forum:postprivatereply', 1, 1599457779, 0),
(677, 1, 4, 'mod/forum:readprivatereplies', 1, 1599457779, 0),
(678, 1, 3, 'mod/forum:readprivatereplies', 1, 1599457779, 0),
(679, 1, 1, 'mod/forum:readprivatereplies', 1, 1599457779, 0),
(680, 1, 5, 'mod/forum:createattachment', 1, 1599457779, 0),
(681, 1, 4, 'mod/forum:createattachment', 1, 1599457779, 0),
(682, 1, 3, 'mod/forum:createattachment', 1, 1599457779, 0),
(683, 1, 1, 'mod/forum:createattachment', 1, 1599457779, 0),
(684, 1, 5, 'mod/forum:deleteownpost', 1, 1599457779, 0),
(685, 1, 4, 'mod/forum:deleteownpost', 1, 1599457779, 0),
(686, 1, 3, 'mod/forum:deleteownpost', 1, 1599457779, 0),
(687, 1, 1, 'mod/forum:deleteownpost', 1, 1599457779, 0),
(688, 1, 4, 'mod/forum:deleteanypost', 1, 1599457779, 0),
(689, 1, 3, 'mod/forum:deleteanypost', 1, 1599457779, 0),
(690, 1, 1, 'mod/forum:deleteanypost', 1, 1599457779, 0),
(691, 1, 4, 'mod/forum:splitdiscussions', 1, 1599457779, 0),
(692, 1, 3, 'mod/forum:splitdiscussions', 1, 1599457779, 0),
(693, 1, 1, 'mod/forum:splitdiscussions', 1, 1599457779, 0),
(694, 1, 4, 'mod/forum:movediscussions', 1, 1599457779, 0),
(695, 1, 3, 'mod/forum:movediscussions', 1, 1599457779, 0),
(696, 1, 1, 'mod/forum:movediscussions', 1, 1599457779, 0),
(697, 1, 4, 'mod/forum:pindiscussions', 1, 1599457779, 0),
(698, 1, 3, 'mod/forum:pindiscussions', 1, 1599457779, 0),
(699, 1, 1, 'mod/forum:pindiscussions', 1, 1599457779, 0),
(700, 1, 4, 'mod/forum:editanypost', 1, 1599457779, 0),
(701, 1, 3, 'mod/forum:editanypost', 1, 1599457779, 0),
(702, 1, 1, 'mod/forum:editanypost', 1, 1599457779, 0),
(703, 1, 4, 'mod/forum:viewqandawithoutposting', 1, 1599457779, 0),
(704, 1, 3, 'mod/forum:viewqandawithoutposting', 1, 1599457779, 0),
(705, 1, 1, 'mod/forum:viewqandawithoutposting', 1, 1599457779, 0),
(706, 1, 4, 'mod/forum:viewsubscribers', 1, 1599457779, 0),
(707, 1, 3, 'mod/forum:viewsubscribers', 1, 1599457779, 0),
(708, 1, 1, 'mod/forum:viewsubscribers', 1, 1599457779, 0),
(709, 1, 4, 'mod/forum:managesubscriptions', 1, 1599457779, 0),
(710, 1, 3, 'mod/forum:managesubscriptions', 1, 1599457779, 0),
(711, 1, 1, 'mod/forum:managesubscriptions', 1, 1599457780, 0),
(712, 1, 4, 'mod/forum:postwithoutthrottling', 1, 1599457780, 0),
(713, 1, 3, 'mod/forum:postwithoutthrottling', 1, 1599457780, 0),
(714, 1, 1, 'mod/forum:postwithoutthrottling', 1, 1599457780, 0),
(715, 1, 4, 'mod/forum:exportdiscussion', 1, 1599457780, 0),
(716, 1, 3, 'mod/forum:exportdiscussion', 1, 1599457780, 0),
(717, 1, 1, 'mod/forum:exportdiscussion', 1, 1599457780, 0),
(718, 1, 4, 'mod/forum:exportforum', 1, 1599457780, 0),
(719, 1, 3, 'mod/forum:exportforum', 1, 1599457780, 0),
(720, 1, 1, 'mod/forum:exportforum', 1, 1599457780, 0),
(721, 1, 4, 'mod/forum:exportpost', 1, 1599457780, 0),
(722, 1, 3, 'mod/forum:exportpost', 1, 1599457780, 0),
(723, 1, 1, 'mod/forum:exportpost', 1, 1599457780, 0),
(724, 1, 4, 'mod/forum:exportownpost', 1, 1599457780, 0),
(725, 1, 3, 'mod/forum:exportownpost', 1, 1599457780, 0),
(726, 1, 1, 'mod/forum:exportownpost', 1, 1599457780, 0),
(727, 1, 5, 'mod/forum:exportownpost', 1, 1599457780, 0),
(728, 1, 4, 'mod/forum:addquestion', 1, 1599457780, 0),
(729, 1, 3, 'mod/forum:addquestion', 1, 1599457780, 0),
(730, 1, 1, 'mod/forum:addquestion', 1, 1599457780, 0),
(731, 1, 5, 'mod/forum:allowforcesubscribe', 1, 1599457780, 0),
(732, 1, 4, 'mod/forum:allowforcesubscribe', 1, 1599457780, 0),
(733, 1, 3, 'mod/forum:allowforcesubscribe', 1, 1599457780, 0),
(734, 1, 8, 'mod/forum:allowforcesubscribe', 1, 1599457780, 0),
(735, 1, 4, 'mod/forum:canposttomygroups', 1, 1599457780, 0),
(736, 1, 3, 'mod/forum:canposttomygroups', 1, 1599457780, 0),
(737, 1, 1, 'mod/forum:canposttomygroups', 1, 1599457780, 0),
(738, 1, 4, 'mod/forum:canoverridediscussionlock', 1, 1599457780, 0),
(739, 1, 3, 'mod/forum:canoverridediscussionlock', 1, 1599457780, 0),
(740, 1, 1, 'mod/forum:canoverridediscussionlock', 1, 1599457780, 0),
(741, 1, 4, 'mod/forum:canoverridecutoff', 1, 1599457780, 0),
(742, 1, 3, 'mod/forum:canoverridecutoff', 1, 1599457780, 0),
(743, 1, 1, 'mod/forum:canoverridecutoff', 1, 1599457780, 0),
(744, 1, 7, 'mod/forum:cantogglefavourite', 1, 1599457780, 0),
(745, 1, 4, 'mod/forum:grade', 1, 1599457780, 0),
(746, 1, 3, 'mod/forum:grade', 1, 1599457780, 0),
(747, 1, 1, 'mod/forum:grade', 1, 1599457780, 0),
(748, 1, 3, 'mod/glossary:addinstance', 1, 1599457780, 0),
(749, 1, 1, 'mod/glossary:addinstance', 1, 1599457780, 0),
(750, 1, 8, 'mod/glossary:view', 1, 1599457780, 0),
(751, 1, 6, 'mod/glossary:view', 1, 1599457780, 0),
(752, 1, 5, 'mod/glossary:view', 1, 1599457780, 0),
(753, 1, 4, 'mod/glossary:view', 1, 1599457780, 0),
(754, 1, 3, 'mod/glossary:view', 1, 1599457780, 0),
(755, 1, 1, 'mod/glossary:view', 1, 1599457780, 0),
(756, 1, 5, 'mod/glossary:write', 1, 1599457780, 0),
(757, 1, 4, 'mod/glossary:write', 1, 1599457780, 0),
(758, 1, 3, 'mod/glossary:write', 1, 1599457780, 0),
(759, 1, 1, 'mod/glossary:write', 1, 1599457780, 0),
(760, 1, 4, 'mod/glossary:manageentries', 1, 1599457780, 0),
(761, 1, 3, 'mod/glossary:manageentries', 1, 1599457780, 0),
(762, 1, 1, 'mod/glossary:manageentries', 1, 1599457780, 0),
(763, 1, 4, 'mod/glossary:managecategories', 1, 1599457780, 0),
(764, 1, 3, 'mod/glossary:managecategories', 1, 1599457780, 0),
(765, 1, 1, 'mod/glossary:managecategories', 1, 1599457780, 0),
(766, 1, 5, 'mod/glossary:comment', 1, 1599457780, 0),
(767, 1, 4, 'mod/glossary:comment', 1, 1599457780, 0),
(768, 1, 3, 'mod/glossary:comment', 1, 1599457780, 0),
(769, 1, 1, 'mod/glossary:comment', 1, 1599457780, 0),
(770, 1, 4, 'mod/glossary:managecomments', 1, 1599457780, 0),
(771, 1, 3, 'mod/glossary:managecomments', 1, 1599457780, 0),
(772, 1, 1, 'mod/glossary:managecomments', 1, 1599457780, 0),
(773, 1, 4, 'mod/glossary:import', 1, 1599457780, 0),
(774, 1, 3, 'mod/glossary:import', 1, 1599457780, 0),
(775, 1, 1, 'mod/glossary:import', 1, 1599457780, 0),
(776, 1, 4, 'mod/glossary:export', 1, 1599457781, 0),
(777, 1, 3, 'mod/glossary:export', 1, 1599457781, 0),
(778, 1, 1, 'mod/glossary:export', 1, 1599457781, 0),
(779, 1, 4, 'mod/glossary:approve', 1, 1599457781, 0),
(780, 1, 3, 'mod/glossary:approve', 1, 1599457781, 0),
(781, 1, 1, 'mod/glossary:approve', 1, 1599457781, 0),
(782, 1, 4, 'mod/glossary:rate', 1, 1599457781, 0),
(783, 1, 3, 'mod/glossary:rate', 1, 1599457781, 0),
(784, 1, 1, 'mod/glossary:rate', 1, 1599457781, 0),
(785, 1, 4, 'mod/glossary:viewrating', 1, 1599457781, 0),
(786, 1, 3, 'mod/glossary:viewrating', 1, 1599457781, 0),
(787, 1, 1, 'mod/glossary:viewrating', 1, 1599457781, 0),
(788, 1, 4, 'mod/glossary:viewanyrating', 1, 1599457781, 0),
(789, 1, 3, 'mod/glossary:viewanyrating', 1, 1599457781, 0),
(790, 1, 1, 'mod/glossary:viewanyrating', 1, 1599457781, 0),
(791, 1, 4, 'mod/glossary:viewallratings', 1, 1599457781, 0),
(792, 1, 3, 'mod/glossary:viewallratings', 1, 1599457781, 0),
(793, 1, 1, 'mod/glossary:viewallratings', 1, 1599457781, 0),
(794, 1, 4, 'mod/glossary:exportentry', 1, 1599457781, 0),
(795, 1, 3, 'mod/glossary:exportentry', 1, 1599457781, 0),
(796, 1, 1, 'mod/glossary:exportentry', 1, 1599457781, 0),
(797, 1, 4, 'mod/glossary:exportownentry', 1, 1599457781, 0),
(798, 1, 3, 'mod/glossary:exportownentry', 1, 1599457781, 0),
(799, 1, 1, 'mod/glossary:exportownentry', 1, 1599457781, 0),
(800, 1, 5, 'mod/glossary:exportownentry', 1, 1599457781, 0),
(801, 1, 6, 'mod/imscp:view', 1, 1599457781, 0),
(802, 1, 7, 'mod/imscp:view', 1, 1599457781, 0),
(803, 1, 3, 'mod/imscp:addinstance', 1, 1599457781, 0),
(804, 1, 1, 'mod/imscp:addinstance', 1, 1599457781, 0),
(805, 1, 3, 'mod/label:addinstance', 1, 1599457781, 0),
(806, 1, 1, 'mod/label:addinstance', 1, 1599457781, 0),
(807, 1, 7, 'mod/label:view', 1, 1599457781, 0),
(808, 1, 6, 'mod/label:view', 1, 1599457781, 0),
(809, 1, 3, 'mod/lesson:addinstance', 1, 1599457782, 0),
(810, 1, 1, 'mod/lesson:addinstance', 1, 1599457782, 0),
(811, 1, 3, 'mod/lesson:edit', 1, 1599457782, 0),
(812, 1, 1, 'mod/lesson:edit', 1, 1599457782, 0),
(813, 1, 4, 'mod/lesson:grade', 1, 1599457782, 0),
(814, 1, 3, 'mod/lesson:grade', 1, 1599457782, 0),
(815, 1, 1, 'mod/lesson:grade', 1, 1599457782, 0),
(816, 1, 4, 'mod/lesson:viewreports', 1, 1599457782, 0),
(817, 1, 3, 'mod/lesson:viewreports', 1, 1599457782, 0),
(818, 1, 1, 'mod/lesson:viewreports', 1, 1599457782, 0),
(819, 1, 4, 'mod/lesson:manage', 1, 1599457782, 0),
(820, 1, 3, 'mod/lesson:manage', 1, 1599457782, 0),
(821, 1, 1, 'mod/lesson:manage', 1, 1599457782, 0),
(822, 1, 3, 'mod/lesson:manageoverrides', 1, 1599457782, 0),
(823, 1, 1, 'mod/lesson:manageoverrides', 1, 1599457782, 0),
(824, 1, 7, 'mod/lesson:view', 1, 1599457782, 0),
(825, 1, 6, 'mod/lesson:view', 1, 1599457782, 0),
(826, 1, 5, 'mod/lti:view', 1, 1599457783, 0),
(827, 1, 4, 'mod/lti:view', 1, 1599457783, 0),
(828, 1, 3, 'mod/lti:view', 1, 1599457783, 0),
(829, 1, 1, 'mod/lti:view', 1, 1599457783, 0),
(830, 1, 3, 'mod/lti:addinstance', 1, 1599457783, 0),
(831, 1, 1, 'mod/lti:addinstance', 1, 1599457783, 0),
(832, 1, 4, 'mod/lti:manage', 1, 1599457783, 0),
(833, 1, 3, 'mod/lti:manage', 1, 1599457783, 0),
(834, 1, 1, 'mod/lti:manage', 1, 1599457783, 0),
(835, 1, 3, 'mod/lti:addcoursetool', 1, 1599457783, 0),
(836, 1, 1, 'mod/lti:addcoursetool', 1, 1599457783, 0),
(837, 1, 3, 'mod/lti:requesttooladd', 1, 1599457783, 0),
(838, 1, 1, 'mod/lti:requesttooladd', 1, 1599457783, 0),
(839, 1, 6, 'mod/page:view', 1, 1599457783, 0),
(840, 1, 7, 'mod/page:view', 1, 1599457783, 0),
(841, 1, 3, 'mod/page:addinstance', 1, 1599457783, 0),
(842, 1, 1, 'mod/page:addinstance', 1, 1599457783, 0),
(843, 1, 6, 'mod/quiz:view', 1, 1599457783, 0),
(844, 1, 5, 'mod/quiz:view', 1, 1599457783, 0),
(845, 1, 4, 'mod/quiz:view', 1, 1599457783, 0),
(846, 1, 3, 'mod/quiz:view', 1, 1599457783, 0),
(847, 1, 1, 'mod/quiz:view', 1, 1599457783, 0),
(848, 1, 3, 'mod/quiz:addinstance', 1, 1599457783, 0),
(849, 1, 1, 'mod/quiz:addinstance', 1, 1599457783, 0),
(850, 1, 5, 'mod/quiz:attempt', 1, 1599457783, 0),
(851, 1, 5, 'mod/quiz:reviewmyattempts', 1, 1599457783, 0),
(852, 1, 3, 'mod/quiz:manage', 1, 1599457783, 0),
(853, 1, 1, 'mod/quiz:manage', 1, 1599457783, 0),
(854, 1, 3, 'mod/quiz:manageoverrides', 1, 1599457783, 0),
(855, 1, 1, 'mod/quiz:manageoverrides', 1, 1599457783, 0),
(856, 1, 4, 'mod/quiz:preview', 1, 1599457783, 0),
(857, 1, 3, 'mod/quiz:preview', 1, 1599457783, 0),
(858, 1, 1, 'mod/quiz:preview', 1, 1599457783, 0),
(859, 1, 4, 'mod/quiz:grade', 1, 1599457783, 0),
(860, 1, 3, 'mod/quiz:grade', 1, 1599457783, 0),
(861, 1, 1, 'mod/quiz:grade', 1, 1599457783, 0),
(862, 1, 4, 'mod/quiz:regrade', 1, 1599457783, 0),
(863, 1, 3, 'mod/quiz:regrade', 1, 1599457783, 0),
(864, 1, 1, 'mod/quiz:regrade', 1, 1599457783, 0),
(865, 1, 4, 'mod/quiz:viewreports', 1, 1599457783, 0),
(866, 1, 3, 'mod/quiz:viewreports', 1, 1599457783, 0),
(867, 1, 1, 'mod/quiz:viewreports', 1, 1599457783, 0),
(868, 1, 3, 'mod/quiz:deleteattempts', 1, 1599457783, 0),
(869, 1, 1, 'mod/quiz:deleteattempts', 1, 1599457783, 0),
(870, 1, 6, 'mod/resource:view', 1, 1599457784, 0),
(871, 1, 7, 'mod/resource:view', 1, 1599457784, 0),
(872, 1, 3, 'mod/resource:addinstance', 1, 1599457784, 0),
(873, 1, 1, 'mod/resource:addinstance', 1, 1599457784, 0),
(874, 1, 3, 'mod/scorm:addinstance', 1, 1599457785, 0),
(875, 1, 1, 'mod/scorm:addinstance', 1, 1599457785, 0),
(876, 1, 4, 'mod/scorm:viewreport', 1, 1599457785, 0),
(877, 1, 3, 'mod/scorm:viewreport', 1, 1599457785, 0),
(878, 1, 1, 'mod/scorm:viewreport', 1, 1599457785, 0),
(879, 1, 5, 'mod/scorm:skipview', 1, 1599457785, 0),
(880, 1, 5, 'mod/scorm:savetrack', 1, 1599457785, 0),
(881, 1, 4, 'mod/scorm:savetrack', 1, 1599457785, 0),
(882, 1, 3, 'mod/scorm:savetrack', 1, 1599457785, 0),
(883, 1, 1, 'mod/scorm:savetrack', 1, 1599457785, 0),
(884, 1, 5, 'mod/scorm:viewscores', 1, 1599457785, 0);
INSERT INTO `mo_role_capabilities` (`id`, `contextid`, `roleid`, `capability`, `permission`, `timemodified`, `modifierid`) VALUES
(885, 1, 4, 'mod/scorm:viewscores', 1, 1599457785, 0),
(886, 1, 3, 'mod/scorm:viewscores', 1, 1599457785, 0),
(887, 1, 1, 'mod/scorm:viewscores', 1, 1599457785, 0),
(888, 1, 4, 'mod/scorm:deleteresponses', 1, 1599457785, 0),
(889, 1, 3, 'mod/scorm:deleteresponses', 1, 1599457785, 0),
(890, 1, 1, 'mod/scorm:deleteresponses', 1, 1599457785, 0),
(891, 1, 3, 'mod/survey:addinstance', 1, 1599457786, 0),
(892, 1, 1, 'mod/survey:addinstance', 1, 1599457786, 0),
(893, 1, 5, 'mod/survey:participate', 1, 1599457786, 0),
(894, 1, 4, 'mod/survey:participate', 1, 1599457786, 0),
(895, 1, 3, 'mod/survey:participate', 1, 1599457786, 0),
(896, 1, 1, 'mod/survey:participate', 1, 1599457786, 0),
(897, 1, 4, 'mod/survey:readresponses', 1, 1599457786, 0),
(898, 1, 3, 'mod/survey:readresponses', 1, 1599457786, 0),
(899, 1, 1, 'mod/survey:readresponses', 1, 1599457786, 0),
(900, 1, 4, 'mod/survey:download', 1, 1599457786, 0),
(901, 1, 3, 'mod/survey:download', 1, 1599457786, 0),
(902, 1, 1, 'mod/survey:download', 1, 1599457786, 0),
(903, 1, 6, 'mod/url:view', 1, 1599457786, 0),
(904, 1, 7, 'mod/url:view', 1, 1599457786, 0),
(905, 1, 3, 'mod/url:addinstance', 1, 1599457786, 0),
(906, 1, 1, 'mod/url:addinstance', 1, 1599457786, 0),
(907, 1, 3, 'mod/wiki:addinstance', 1, 1599457786, 0),
(908, 1, 1, 'mod/wiki:addinstance', 1, 1599457786, 0),
(909, 1, 6, 'mod/wiki:viewpage', 1, 1599457786, 0),
(910, 1, 8, 'mod/wiki:viewpage', 1, 1599457786, 0),
(911, 1, 5, 'mod/wiki:viewpage', 1, 1599457786, 0),
(912, 1, 4, 'mod/wiki:viewpage', 1, 1599457786, 0),
(913, 1, 3, 'mod/wiki:viewpage', 1, 1599457786, 0),
(914, 1, 1, 'mod/wiki:viewpage', 1, 1599457786, 0),
(915, 1, 5, 'mod/wiki:editpage', 1, 1599457786, 0),
(916, 1, 4, 'mod/wiki:editpage', 1, 1599457786, 0),
(917, 1, 3, 'mod/wiki:editpage', 1, 1599457786, 0),
(918, 1, 1, 'mod/wiki:editpage', 1, 1599457786, 0),
(919, 1, 5, 'mod/wiki:createpage', 1, 1599457786, 0),
(920, 1, 4, 'mod/wiki:createpage', 1, 1599457786, 0),
(921, 1, 3, 'mod/wiki:createpage', 1, 1599457786, 0),
(922, 1, 1, 'mod/wiki:createpage', 1, 1599457786, 0),
(923, 1, 5, 'mod/wiki:viewcomment', 1, 1599457786, 0),
(924, 1, 4, 'mod/wiki:viewcomment', 1, 1599457786, 0),
(925, 1, 3, 'mod/wiki:viewcomment', 1, 1599457786, 0),
(926, 1, 1, 'mod/wiki:viewcomment', 1, 1599457786, 0),
(927, 1, 5, 'mod/wiki:editcomment', 1, 1599457786, 0),
(928, 1, 4, 'mod/wiki:editcomment', 1, 1599457786, 0),
(929, 1, 3, 'mod/wiki:editcomment', 1, 1599457786, 0),
(930, 1, 1, 'mod/wiki:editcomment', 1, 1599457786, 0),
(931, 1, 4, 'mod/wiki:managecomment', 1, 1599457786, 0),
(932, 1, 3, 'mod/wiki:managecomment', 1, 1599457786, 0),
(933, 1, 1, 'mod/wiki:managecomment', 1, 1599457786, 0),
(934, 1, 4, 'mod/wiki:managefiles', 1, 1599457786, 0),
(935, 1, 3, 'mod/wiki:managefiles', 1, 1599457786, 0),
(936, 1, 1, 'mod/wiki:managefiles', 1, 1599457786, 0),
(937, 1, 4, 'mod/wiki:overridelock', 1, 1599457786, 0),
(938, 1, 3, 'mod/wiki:overridelock', 1, 1599457786, 0),
(939, 1, 1, 'mod/wiki:overridelock', 1, 1599457786, 0),
(940, 1, 4, 'mod/wiki:managewiki', 1, 1599457787, 0),
(941, 1, 3, 'mod/wiki:managewiki', 1, 1599457787, 0),
(942, 1, 1, 'mod/wiki:managewiki', 1, 1599457787, 0),
(943, 1, 6, 'mod/workshop:view', 1, 1599457787, 0),
(944, 1, 5, 'mod/workshop:view', 1, 1599457787, 0),
(945, 1, 4, 'mod/workshop:view', 1, 1599457787, 0),
(946, 1, 3, 'mod/workshop:view', 1, 1599457787, 0),
(947, 1, 1, 'mod/workshop:view', 1, 1599457787, 0),
(948, 1, 3, 'mod/workshop:addinstance', 1, 1599457787, 0),
(949, 1, 1, 'mod/workshop:addinstance', 1, 1599457787, 0),
(950, 1, 4, 'mod/workshop:switchphase', 1, 1599457787, 0),
(951, 1, 3, 'mod/workshop:switchphase', 1, 1599457787, 0),
(952, 1, 1, 'mod/workshop:switchphase', 1, 1599457787, 0),
(953, 1, 3, 'mod/workshop:editdimensions', 1, 1599457787, 0),
(954, 1, 1, 'mod/workshop:editdimensions', 1, 1599457787, 0),
(955, 1, 5, 'mod/workshop:submit', 1, 1599457787, 0),
(956, 1, 5, 'mod/workshop:peerassess', 1, 1599457787, 0),
(957, 1, 4, 'mod/workshop:manageexamples', 1, 1599457787, 0),
(958, 1, 3, 'mod/workshop:manageexamples', 1, 1599457787, 0),
(959, 1, 1, 'mod/workshop:manageexamples', 1, 1599457787, 0),
(960, 1, 4, 'mod/workshop:allocate', 1, 1599457787, 0),
(961, 1, 3, 'mod/workshop:allocate', 1, 1599457787, 0),
(962, 1, 1, 'mod/workshop:allocate', 1, 1599457787, 0),
(963, 1, 4, 'mod/workshop:publishsubmissions', 1, 1599457787, 0),
(964, 1, 3, 'mod/workshop:publishsubmissions', 1, 1599457787, 0),
(965, 1, 1, 'mod/workshop:publishsubmissions', 1, 1599457787, 0),
(966, 1, 5, 'mod/workshop:viewauthornames', 1, 1599457787, 0),
(967, 1, 4, 'mod/workshop:viewauthornames', 1, 1599457787, 0),
(968, 1, 3, 'mod/workshop:viewauthornames', 1, 1599457787, 0),
(969, 1, 1, 'mod/workshop:viewauthornames', 1, 1599457787, 0),
(970, 1, 4, 'mod/workshop:viewreviewernames', 1, 1599457787, 0),
(971, 1, 3, 'mod/workshop:viewreviewernames', 1, 1599457787, 0),
(972, 1, 1, 'mod/workshop:viewreviewernames', 1, 1599457787, 0),
(973, 1, 4, 'mod/workshop:viewallsubmissions', 1, 1599457787, 0),
(974, 1, 3, 'mod/workshop:viewallsubmissions', 1, 1599457787, 0),
(975, 1, 1, 'mod/workshop:viewallsubmissions', 1, 1599457787, 0),
(976, 1, 5, 'mod/workshop:viewpublishedsubmissions', 1, 1599457787, 0),
(977, 1, 4, 'mod/workshop:viewpublishedsubmissions', 1, 1599457788, 0),
(978, 1, 3, 'mod/workshop:viewpublishedsubmissions', 1, 1599457788, 0),
(979, 1, 1, 'mod/workshop:viewpublishedsubmissions', 1, 1599457788, 0),
(980, 1, 5, 'mod/workshop:viewauthorpublished', 1, 1599457788, 0),
(981, 1, 4, 'mod/workshop:viewauthorpublished', 1, 1599457788, 0),
(982, 1, 3, 'mod/workshop:viewauthorpublished', 1, 1599457788, 0),
(983, 1, 1, 'mod/workshop:viewauthorpublished', 1, 1599457788, 0),
(984, 1, 4, 'mod/workshop:viewallassessments', 1, 1599457788, 0),
(985, 1, 3, 'mod/workshop:viewallassessments', 1, 1599457788, 0),
(986, 1, 1, 'mod/workshop:viewallassessments', 1, 1599457788, 0),
(987, 1, 4, 'mod/workshop:overridegrades', 1, 1599457788, 0),
(988, 1, 3, 'mod/workshop:overridegrades', 1, 1599457788, 0),
(989, 1, 1, 'mod/workshop:overridegrades', 1, 1599457788, 0),
(990, 1, 4, 'mod/workshop:ignoredeadlines', 1, 1599457788, 0),
(991, 1, 3, 'mod/workshop:ignoredeadlines', 1, 1599457788, 0),
(992, 1, 1, 'mod/workshop:ignoredeadlines', 1, 1599457788, 0),
(993, 1, 4, 'mod/workshop:deletesubmissions', 1, 1599457788, 0),
(994, 1, 3, 'mod/workshop:deletesubmissions', 1, 1599457788, 0),
(995, 1, 1, 'mod/workshop:deletesubmissions', 1, 1599457788, 0),
(996, 1, 1, 'mod/workshop:exportsubmissions', 1, 1599457788, 0),
(997, 1, 4, 'mod/workshop:exportsubmissions', 1, 1599457788, 0),
(998, 1, 3, 'mod/workshop:exportsubmissions', 1, 1599457788, 0),
(999, 1, 5, 'mod/workshop:exportsubmissions', 1, 1599457788, 0),
(1000, 1, 7, 'auth/oauth2:managelinkedlogins', 1, 1599457791, 0),
(1001, 1, 1, 'enrol/category:config', 1, 1599457791, 0),
(1002, 1, 3, 'enrol/category:config', 1, 1599457791, 0),
(1003, 1, 3, 'enrol/cohort:config', 1, 1599457792, 0),
(1004, 1, 1, 'enrol/cohort:config', 1, 1599457792, 0),
(1005, 1, 1, 'enrol/cohort:unenrol', 1, 1599457792, 0),
(1006, 1, 1, 'enrol/database:unenrol', 1, 1599457792, 0),
(1007, 1, 1, 'enrol/database:config', 1, 1599457792, 0),
(1008, 1, 3, 'enrol/database:config', 1, 1599457792, 0),
(1009, 1, 1, 'enrol/guest:config', 1, 1599457792, 0),
(1010, 1, 3, 'enrol/guest:config', 1, 1599457792, 0),
(1011, 1, 1, 'enrol/imsenterprise:config', 1, 1599457792, 0),
(1012, 1, 3, 'enrol/imsenterprise:config', 1, 1599457792, 0),
(1013, 1, 1, 'enrol/ldap:manage', 1, 1599457792, 0),
(1014, 1, 1, 'enrol/lti:config', 1, 1599457792, 0),
(1015, 1, 3, 'enrol/lti:config', 1, 1599457792, 0),
(1016, 1, 1, 'enrol/lti:unenrol', 1, 1599457792, 0),
(1017, 1, 3, 'enrol/lti:unenrol', 1, 1599457792, 0),
(1018, 1, 1, 'enrol/manual:config', 1, 1599457792, 0),
(1019, 1, 1, 'enrol/manual:enrol', 1, 1599457792, 0),
(1020, 1, 3, 'enrol/manual:enrol', 1, 1599457792, 0),
(1021, 1, 1, 'enrol/manual:manage', 1, 1599457792, 0),
(1022, 1, 3, 'enrol/manual:manage', 1, 1599457792, 0),
(1023, 1, 1, 'enrol/manual:unenrol', 1, 1599457792, 0),
(1024, 1, 3, 'enrol/manual:unenrol', 1, 1599457792, 0),
(1025, 1, 1, 'enrol/meta:config', 1, 1599457792, 0),
(1026, 1, 3, 'enrol/meta:config', 1, 1599457792, 0),
(1027, 1, 1, 'enrol/meta:selectaslinked', 1, 1599457792, 0),
(1028, 1, 1, 'enrol/meta:unenrol', 1, 1599457792, 0),
(1029, 1, 1, 'enrol/mnet:config', 1, 1599457792, 0),
(1030, 1, 3, 'enrol/mnet:config', 1, 1599457792, 0),
(1031, 1, 1, 'enrol/paypal:config', 1, 1599457793, 0),
(1032, 1, 1, 'enrol/paypal:manage', 1, 1599457793, 0),
(1033, 1, 3, 'enrol/paypal:manage', 1, 1599457793, 0),
(1034, 1, 1, 'enrol/paypal:unenrol', 1, 1599457793, 0),
(1035, 1, 3, 'enrol/self:config', 1, 1599457793, 0),
(1036, 1, 1, 'enrol/self:config', 1, 1599457793, 0),
(1037, 1, 3, 'enrol/self:manage', 1, 1599457793, 0),
(1038, 1, 1, 'enrol/self:manage', 1, 1599457793, 0),
(1039, 1, 5, 'enrol/self:unenrolself', 1, 1599457793, 0),
(1040, 1, 3, 'enrol/self:unenrol', 1, 1599457793, 0),
(1041, 1, 1, 'enrol/self:unenrol', 1, 1599457793, 0),
(1042, 1, 7, 'message/airnotifier:managedevice', 1, 1599457793, 0),
(1043, 1, 3, 'block/activity_modules:addinstance', 1, 1599457794, 0),
(1044, 1, 1, 'block/activity_modules:addinstance', 1, 1599457794, 0),
(1045, 1, 3, 'block/activity_results:addinstance', 1, 1599457794, 0),
(1046, 1, 1, 'block/activity_results:addinstance', 1, 1599457794, 0),
(1047, 1, 7, 'block/admin_bookmarks:myaddinstance', 1, 1599457794, 0),
(1048, 1, 3, 'block/admin_bookmarks:addinstance', 1, 1599457794, 0),
(1049, 1, 1, 'block/admin_bookmarks:addinstance', 1, 1599457794, 0),
(1050, 1, 3, 'block/badges:addinstance', 1, 1599457794, 0),
(1051, 1, 1, 'block/badges:addinstance', 1, 1599457794, 0),
(1052, 1, 7, 'block/badges:myaddinstance', 1, 1599457794, 0),
(1053, 1, 3, 'block/blog_menu:addinstance', 1, 1599457794, 0),
(1054, 1, 1, 'block/blog_menu:addinstance', 1, 1599457794, 0),
(1055, 1, 3, 'block/blog_recent:addinstance', 1, 1599457795, 0),
(1056, 1, 1, 'block/blog_recent:addinstance', 1, 1599457795, 0),
(1057, 1, 3, 'block/blog_tags:addinstance', 1, 1599457795, 0),
(1058, 1, 1, 'block/blog_tags:addinstance', 1, 1599457795, 0),
(1059, 1, 7, 'block/calendar_month:myaddinstance', 1, 1599457795, 0),
(1060, 1, 3, 'block/calendar_month:addinstance', 1, 1599457795, 0),
(1061, 1, 1, 'block/calendar_month:addinstance', 1, 1599457795, 0),
(1062, 1, 7, 'block/calendar_upcoming:myaddinstance', 1, 1599457796, 0),
(1063, 1, 3, 'block/calendar_upcoming:addinstance', 1, 1599457796, 0),
(1064, 1, 1, 'block/calendar_upcoming:addinstance', 1, 1599457796, 0),
(1065, 1, 7, 'block/comments:myaddinstance', 1, 1599457796, 0),
(1066, 1, 3, 'block/comments:addinstance', 1, 1599457796, 0),
(1067, 1, 1, 'block/comments:addinstance', 1, 1599457796, 0),
(1068, 1, 3, 'block/completionstatus:addinstance', 1, 1599457796, 0),
(1069, 1, 1, 'block/completionstatus:addinstance', 1, 1599457796, 0),
(1070, 1, 7, 'block/course_list:myaddinstance', 1, 1599457796, 0),
(1071, 1, 3, 'block/course_list:addinstance', 1, 1599457797, 0),
(1072, 1, 1, 'block/course_list:addinstance', 1, 1599457797, 0),
(1073, 1, 3, 'block/course_summary:addinstance', 1, 1599457797, 0),
(1074, 1, 1, 'block/course_summary:addinstance', 1, 1599457797, 0),
(1075, 1, 3, 'block/feedback:addinstance', 1, 1599457798, 0),
(1076, 1, 1, 'block/feedback:addinstance', 1, 1599457798, 0),
(1077, 1, 7, 'block/globalsearch:myaddinstance', 1, 1599457799, 0),
(1078, 1, 3, 'block/globalsearch:addinstance', 1, 1599457799, 0),
(1079, 1, 1, 'block/globalsearch:addinstance', 1, 1599457799, 0),
(1080, 1, 7, 'block/glossary_random:myaddinstance', 1, 1599457799, 0),
(1081, 1, 3, 'block/glossary_random:addinstance', 1, 1599457799, 0),
(1082, 1, 1, 'block/glossary_random:addinstance', 1, 1599457799, 0),
(1083, 1, 7, 'block/html:myaddinstance', 1, 1599457799, 0),
(1084, 1, 3, 'block/html:addinstance', 1, 1599457799, 0),
(1085, 1, 1, 'block/html:addinstance', 1, 1599457799, 0),
(1086, 1, 3, 'block/login:addinstance', 1, 1599457800, 0),
(1087, 1, 1, 'block/login:addinstance', 1, 1599457800, 0),
(1088, 1, 3, 'block/lp:addinstance', 1, 1599457800, 0),
(1089, 1, 1, 'block/lp:addinstance', 1, 1599457800, 0),
(1090, 1, 7, 'block/lp:myaddinstance', 1, 1599457800, 0),
(1091, 1, 7, 'block/mentees:myaddinstance', 1, 1599457800, 0),
(1092, 1, 3, 'block/mentees:addinstance', 1, 1599457800, 0),
(1093, 1, 1, 'block/mentees:addinstance', 1, 1599457800, 0),
(1094, 1, 7, 'block/mnet_hosts:myaddinstance', 1, 1599457800, 0),
(1095, 1, 3, 'block/mnet_hosts:addinstance', 1, 1599457800, 0),
(1096, 1, 1, 'block/mnet_hosts:addinstance', 1, 1599457801, 0),
(1097, 1, 7, 'block/myoverview:myaddinstance', 1, 1599457801, 0),
(1098, 1, 7, 'block/myprofile:myaddinstance', 1, 1599457801, 0),
(1099, 1, 3, 'block/myprofile:addinstance', 1, 1599457801, 0),
(1100, 1, 1, 'block/myprofile:addinstance', 1, 1599457801, 0),
(1101, 1, 7, 'block/navigation:myaddinstance', 1, 1599457802, 0),
(1102, 1, 3, 'block/navigation:addinstance', 1, 1599457802, 0),
(1103, 1, 1, 'block/navigation:addinstance', 1, 1599457802, 0),
(1104, 1, 7, 'block/news_items:myaddinstance', 1, 1599457803, 0),
(1105, 1, 3, 'block/news_items:addinstance', 1, 1599457803, 0),
(1106, 1, 1, 'block/news_items:addinstance', 1, 1599457803, 0),
(1107, 1, 7, 'block/online_users:myaddinstance', 1, 1599457803, 0),
(1108, 1, 3, 'block/online_users:addinstance', 1, 1599457803, 0),
(1109, 1, 1, 'block/online_users:addinstance', 1, 1599457803, 0),
(1110, 1, 7, 'block/online_users:viewlist', 1, 1599457803, 0),
(1111, 1, 6, 'block/online_users:viewlist', 1, 1599457803, 0),
(1112, 1, 5, 'block/online_users:viewlist', 1, 1599457803, 0),
(1113, 1, 4, 'block/online_users:viewlist', 1, 1599457803, 0),
(1114, 1, 3, 'block/online_users:viewlist', 1, 1599457803, 0),
(1115, 1, 1, 'block/online_users:viewlist', 1, 1599457803, 0),
(1116, 1, 7, 'block/private_files:myaddinstance', 1, 1599457803, 0),
(1117, 1, 3, 'block/private_files:addinstance', 1, 1599457803, 0),
(1118, 1, 1, 'block/private_files:addinstance', 1, 1599457803, 0),
(1119, 1, 3, 'block/quiz_results:addinstance', 1, 1599457804, 0),
(1120, 1, 1, 'block/quiz_results:addinstance', 1, 1599457804, 0),
(1121, 1, 3, 'block/recent_activity:addinstance', 1, 1599457804, 0),
(1122, 1, 1, 'block/recent_activity:addinstance', 1, 1599457804, 0),
(1123, 1, 7, 'block/recent_activity:viewaddupdatemodule', 1, 1599457804, 0),
(1124, 1, 7, 'block/recent_activity:viewdeletemodule', 1, 1599457804, 0),
(1125, 1, 7, 'block/recentlyaccessedcourses:myaddinstance', 1, 1599457804, 0),
(1126, 1, 7, 'block/recentlyaccesseditems:myaddinstance', 1, 1599457804, 0),
(1127, 1, 7, 'block/rss_client:myaddinstance', 1, 1599457805, 0),
(1128, 1, 3, 'block/rss_client:addinstance', 1, 1599457805, 0),
(1129, 1, 1, 'block/rss_client:addinstance', 1, 1599457805, 0),
(1130, 1, 4, 'block/rss_client:manageownfeeds', 1, 1599457805, 0),
(1131, 1, 3, 'block/rss_client:manageownfeeds', 1, 1599457805, 0),
(1132, 1, 1, 'block/rss_client:manageownfeeds', 1, 1599457805, 0),
(1133, 1, 1, 'block/rss_client:manageanyfeeds', 1, 1599457805, 0),
(1134, 1, 3, 'block/search_forums:addinstance', 1, 1599457805, 0),
(1135, 1, 1, 'block/search_forums:addinstance', 1, 1599457805, 0),
(1136, 1, 3, 'block/section_links:addinstance', 1, 1599457805, 0),
(1137, 1, 1, 'block/section_links:addinstance', 1, 1599457805, 0),
(1138, 1, 3, 'block/selfcompletion:addinstance', 1, 1599457806, 0),
(1139, 1, 1, 'block/selfcompletion:addinstance', 1, 1599457806, 0),
(1140, 1, 7, 'block/settings:myaddinstance', 1, 1599457806, 0),
(1141, 1, 3, 'block/settings:addinstance', 1, 1599457806, 0),
(1142, 1, 1, 'block/settings:addinstance', 1, 1599457806, 0),
(1143, 1, 3, 'block/site_main_menu:addinstance', 1, 1599457806, 0),
(1144, 1, 1, 'block/site_main_menu:addinstance', 1, 1599457806, 0),
(1145, 1, 3, 'block/social_activities:addinstance', 1, 1599457806, 0),
(1146, 1, 1, 'block/social_activities:addinstance', 1, 1599457806, 0),
(1147, 1, 7, 'block/starredcourses:myaddinstance', 1, 1599457807, 0),
(1148, 1, 3, 'block/tag_flickr:addinstance', 1, 1599457807, 0),
(1149, 1, 1, 'block/tag_flickr:addinstance', 1, 1599457807, 0),
(1150, 1, 3, 'block/tag_youtube:addinstance', 1, 1599457807, 0),
(1151, 1, 1, 'block/tag_youtube:addinstance', 1, 1599457807, 0),
(1152, 1, 7, 'block/tags:myaddinstance', 1, 1599457807, 0),
(1153, 1, 3, 'block/tags:addinstance', 1, 1599457807, 0),
(1154, 1, 1, 'block/tags:addinstance', 1, 1599457807, 0),
(1155, 1, 7, 'block/timeline:myaddinstance', 1, 1599457807, 0),
(1156, 1, 4, 'report/completion:view', 1, 1599457822, 0),
(1157, 1, 3, 'report/completion:view', 1, 1599457822, 0),
(1158, 1, 1, 'report/completion:view', 1, 1599457822, 0),
(1159, 1, 4, 'report/courseoverview:view', 1, 1599457823, 0),
(1160, 1, 3, 'report/courseoverview:view', 1, 1599457823, 0),
(1161, 1, 1, 'report/courseoverview:view', 1, 1599457823, 0),
(1162, 1, 4, 'report/log:view', 1, 1599457823, 0),
(1163, 1, 3, 'report/log:view', 1, 1599457823, 0),
(1164, 1, 1, 'report/log:view', 1, 1599457823, 0),
(1165, 1, 4, 'report/log:viewtoday', 1, 1599457824, 0),
(1166, 1, 3, 'report/log:viewtoday', 1, 1599457824, 0),
(1167, 1, 1, 'report/log:viewtoday', 1, 1599457824, 0),
(1168, 1, 4, 'report/loglive:view', 1, 1599457824, 0),
(1169, 1, 3, 'report/loglive:view', 1, 1599457824, 0),
(1170, 1, 1, 'report/loglive:view', 1, 1599457824, 0),
(1171, 1, 4, 'report/outline:view', 1, 1599457824, 0),
(1172, 1, 3, 'report/outline:view', 1, 1599457824, 0),
(1173, 1, 1, 'report/outline:view', 1, 1599457824, 0),
(1174, 1, 4, 'report/outline:viewuserreport', 1, 1599457824, 0),
(1175, 1, 3, 'report/outline:viewuserreport', 1, 1599457824, 0),
(1176, 1, 1, 'report/outline:viewuserreport', 1, 1599457824, 0),
(1177, 1, 4, 'report/participation:view', 1, 1599457824, 0),
(1178, 1, 3, 'report/participation:view', 1, 1599457824, 0),
(1179, 1, 1, 'report/participation:view', 1, 1599457824, 0),
(1180, 1, 1, 'report/performance:view', 1, 1599457825, 0),
(1181, 1, 4, 'report/progress:view', 1, 1599457825, 0),
(1182, 1, 3, 'report/progress:view', 1, 1599457825, 0),
(1183, 1, 1, 'report/progress:view', 1, 1599457825, 0),
(1184, 1, 1, 'report/security:view', 1, 1599457826, 0),
(1185, 1, 4, 'report/stats:view', 1, 1599457826, 0),
(1186, 1, 3, 'report/stats:view', 1, 1599457826, 0),
(1187, 1, 1, 'report/stats:view', 1, 1599457826, 0),
(1188, 1, 6, 'report/usersessions:manageownsessions', -1000, 1599457827, 0),
(1189, 1, 7, 'report/usersessions:manageownsessions', 1, 1599457827, 0),
(1190, 1, 1, 'report/usersessions:manageownsessions', 1, 1599457827, 0),
(1191, 1, 4, 'gradeexport/ods:view', 1, 1599457827, 0),
(1192, 1, 3, 'gradeexport/ods:view', 1, 1599457827, 0),
(1193, 1, 1, 'gradeexport/ods:view', 1, 1599457827, 0),
(1194, 1, 1, 'gradeexport/ods:publish', 1, 1599457827, 0),
(1195, 1, 4, 'gradeexport/txt:view', 1, 1599457827, 0),
(1196, 1, 3, 'gradeexport/txt:view', 1, 1599457827, 0),
(1197, 1, 1, 'gradeexport/txt:view', 1, 1599457827, 0),
(1198, 1, 1, 'gradeexport/txt:publish', 1, 1599457827, 0),
(1199, 1, 4, 'gradeexport/xls:view', 1, 1599457828, 0),
(1200, 1, 3, 'gradeexport/xls:view', 1, 1599457828, 0),
(1201, 1, 1, 'gradeexport/xls:view', 1, 1599457828, 0),
(1202, 1, 1, 'gradeexport/xls:publish', 1, 1599457828, 0),
(1203, 1, 4, 'gradeexport/xml:view', 1, 1599457828, 0),
(1204, 1, 3, 'gradeexport/xml:view', 1, 1599457828, 0),
(1205, 1, 1, 'gradeexport/xml:view', 1, 1599457828, 0),
(1206, 1, 1, 'gradeexport/xml:publish', 1, 1599457828, 0),
(1207, 1, 3, 'gradeimport/csv:view', 1, 1599457828, 0),
(1208, 1, 1, 'gradeimport/csv:view', 1, 1599457828, 0),
(1209, 1, 3, 'gradeimport/direct:view', 1, 1599457828, 0),
(1210, 1, 1, 'gradeimport/direct:view', 1, 1599457829, 0),
(1211, 1, 3, 'gradeimport/xml:view', 1, 1599457829, 0),
(1212, 1, 1, 'gradeimport/xml:view', 1, 1599457829, 0),
(1213, 1, 1, 'gradeimport/xml:publish', 1, 1599457829, 0),
(1214, 1, 4, 'gradereport/grader:view', 1, 1599457829, 0),
(1215, 1, 3, 'gradereport/grader:view', 1, 1599457829, 0),
(1216, 1, 1, 'gradereport/grader:view', 1, 1599457829, 0),
(1217, 1, 4, 'gradereport/history:view', 1, 1599457829, 0),
(1218, 1, 3, 'gradereport/history:view', 1, 1599457829, 0),
(1219, 1, 1, 'gradereport/history:view', 1, 1599457829, 0),
(1220, 1, 4, 'gradereport/outcomes:view', 1, 1599457829, 0),
(1221, 1, 3, 'gradereport/outcomes:view', 1, 1599457829, 0),
(1222, 1, 1, 'gradereport/outcomes:view', 1, 1599457829, 0),
(1223, 1, 7, 'gradereport/overview:view', 1, 1599457830, 0),
(1224, 1, 3, 'gradereport/singleview:view', 1, 1599457830, 0),
(1225, 1, 1, 'gradereport/singleview:view', 1, 1599457830, 0),
(1226, 1, 5, 'gradereport/user:view', 1, 1599457831, 0),
(1227, 1, 4, 'gradereport/user:view', 1, 1599457831, 0),
(1228, 1, 3, 'gradereport/user:view', 1, 1599457831, 0),
(1229, 1, 1, 'gradereport/user:view', 1, 1599457831, 0),
(1230, 1, 7, 'repository/areafiles:view', 1, 1599457833, 0),
(1231, 1, 7, 'repository/boxnet:view', 1, 1599457833, 0),
(1232, 1, 2, 'repository/coursefiles:view', 1, 1599457834, 0),
(1233, 1, 4, 'repository/coursefiles:view', 1, 1599457834, 0),
(1234, 1, 3, 'repository/coursefiles:view', 1, 1599457834, 0),
(1235, 1, 1, 'repository/coursefiles:view', 1, 1599457834, 0),
(1236, 1, 7, 'repository/dropbox:view', 1, 1599457834, 0),
(1237, 1, 7, 'repository/equella:view', 1, 1599457834, 0),
(1238, 1, 2, 'repository/filesystem:view', 1, 1599457834, 0),
(1239, 1, 4, 'repository/filesystem:view', 1, 1599457834, 0),
(1240, 1, 3, 'repository/filesystem:view', 1, 1599457835, 0),
(1241, 1, 1, 'repository/filesystem:view', 1, 1599457835, 0),
(1242, 1, 7, 'repository/flickr:view', 1, 1599457835, 0),
(1243, 1, 7, 'repository/flickr_public:view', 1, 1599457835, 0),
(1244, 1, 7, 'repository/googledocs:view', 1, 1599457835, 0),
(1245, 1, 2, 'repository/local:view', 1, 1599457835, 0),
(1246, 1, 4, 'repository/local:view', 1, 1599457835, 0),
(1247, 1, 3, 'repository/local:view', 1, 1599457835, 0),
(1248, 1, 1, 'repository/local:view', 1, 1599457835, 0),
(1249, 1, 7, 'repository/merlot:view', 1, 1599457835, 0),
(1250, 1, 7, 'repository/nextcloud:view', 1, 1599457836, 0),
(1251, 1, 7, 'repository/onedrive:view', 1, 1599457836, 0),
(1252, 1, 7, 'repository/picasa:view', 1, 1599457836, 0),
(1253, 1, 7, 'repository/recent:view', 1, 1599457836, 0),
(1254, 1, 7, 'repository/s3:view', 1, 1599457836, 0),
(1255, 1, 7, 'repository/skydrive:view', 1, 1599457837, 0),
(1256, 1, 7, 'repository/upload:view', 1, 1599457837, 0),
(1257, 1, 7, 'repository/url:view', 1, 1599457837, 0),
(1258, 1, 7, 'repository/user:view', 1, 1599457838, 0),
(1259, 1, 2, 'repository/webdav:view', 1, 1599457838, 0),
(1260, 1, 4, 'repository/webdav:view', 1, 1599457838, 0),
(1261, 1, 3, 'repository/webdav:view', 1, 1599457838, 0),
(1262, 1, 1, 'repository/webdav:view', 1, 1599457838, 0),
(1263, 1, 7, 'repository/wikimedia:view', 1, 1599457838, 0),
(1264, 1, 7, 'repository/youtube:view', 1, 1599457839, 0),
(1265, 1, 1, 'tool/customlang:view', 1, 1599457846, 0),
(1266, 1, 1, 'tool/customlang:edit', 1, 1599457846, 0),
(1267, 1, 7, 'tool/dataprivacy:downloadownrequest', 1, 1599457846, 0),
(1268, 1, 7, 'tool/dataprivacy:requestdelete', 1, 1599457846, 0),
(1269, 1, 1, 'tool/lpmigrate:frameworksmigrate', 1, 1599457848, 0),
(1270, 1, 4, 'tool/monitor:subscribe', 1, 1599457848, 0),
(1271, 1, 3, 'tool/monitor:subscribe', 1, 1599457848, 0),
(1272, 1, 1, 'tool/monitor:subscribe', 1, 1599457848, 0),
(1273, 1, 4, 'tool/monitor:managerules', 1, 1599457848, 0),
(1274, 1, 3, 'tool/monitor:managerules', 1, 1599457848, 0),
(1275, 1, 1, 'tool/monitor:managerules', 1, 1599457848, 0),
(1276, 1, 1, 'tool/monitor:managetool', 1, 1599457848, 0),
(1277, 1, 7, 'tool/policy:accept', 1, 1599457849, 0),
(1278, 1, 1, 'tool/policy:managedocs', 1, 1599457849, 0),
(1279, 1, 1, 'tool/policy:viewacceptances', 1, 1599457849, 0),
(1280, 1, 3, 'tool/recyclebin:deleteitems', 1, 1599457850, 0),
(1281, 1, 1, 'tool/recyclebin:deleteitems', 1, 1599457850, 0),
(1282, 1, 3, 'tool/recyclebin:restoreitems', 1, 1599457850, 0),
(1283, 1, 1, 'tool/recyclebin:restoreitems', 1, 1599457850, 0),
(1284, 1, 4, 'tool/recyclebin:viewitems', 1, 1599457850, 0),
(1285, 1, 3, 'tool/recyclebin:viewitems', 1, 1599457850, 0),
(1286, 1, 1, 'tool/recyclebin:viewitems', 1, 1599457850, 0),
(1287, 1, 1, 'tool/uploaduser:uploaduserpictures', 1, 1599457851, 0),
(1288, 1, 1, 'tool/usertours:managetours', 1, 1599457853, 0),
(1289, 1, 3, 'booktool/importhtml:import', 1, 1599457860, 0),
(1290, 1, 1, 'booktool/importhtml:import', 1, 1599457860, 0),
(1291, 1, 6, 'booktool/print:print', 1, 1599457860, 0),
(1292, 1, 8, 'booktool/print:print', 1, 1599457860, 0),
(1293, 1, 5, 'booktool/print:print', 1, 1599457860, 0),
(1294, 1, 4, 'booktool/print:print', 1, 1599457860, 0),
(1295, 1, 3, 'booktool/print:print', 1, 1599457860, 0),
(1296, 1, 1, 'booktool/print:print', 1, 1599457860, 0),
(1297, 1, 4, 'forumreport/summary:view', 1, 1599457862, 0),
(1298, 1, 3, 'forumreport/summary:view', 1, 1599457862, 0),
(1299, 1, 1, 'forumreport/summary:view', 1, 1599457862, 0),
(1300, 1, 4, 'forumreport/summary:viewall', 1, 1599457862, 0),
(1301, 1, 3, 'forumreport/summary:viewall', 1, 1599457862, 0),
(1302, 1, 1, 'forumreport/summary:viewall', 1, 1599457862, 0),
(1303, 1, 4, 'quiz/grading:viewstudentnames', 1, 1599457864, 0),
(1304, 1, 3, 'quiz/grading:viewstudentnames', 1, 1599457864, 0),
(1305, 1, 1, 'quiz/grading:viewstudentnames', 1, 1599457864, 0),
(1306, 1, 4, 'quiz/grading:viewidnumber', 1, 1599457864, 0),
(1307, 1, 3, 'quiz/grading:viewidnumber', 1, 1599457864, 0),
(1308, 1, 1, 'quiz/grading:viewidnumber', 1, 1599457864, 0),
(1309, 1, 4, 'quiz/statistics:view', 1, 1599457864, 0),
(1310, 1, 3, 'quiz/statistics:view', 1, 1599457864, 0),
(1311, 1, 1, 'quiz/statistics:view', 1, 1599457864, 0),
(1312, 1, 3, 'atto/h5p:addembed', 1, 1599457874, 0),
(1313, 1, 7, 'atto/recordrtc:recordaudio', 1, 1599457875, 0),
(1314, 1, 7, 'atto/recordrtc:recordvideo', 1, 1599457875, 0),
(1315, 1, 3, 'mod/bigbluebuttonbn:addinstance', 1, 1600006722, 2),
(1316, 1, 1, 'mod/bigbluebuttonbn:addinstance', 1, 1600006723, 2),
(1317, 1, 1, 'mod/bigbluebuttonbn:join', 1, 1600006723, 2),
(1318, 1, 3, 'mod/bigbluebuttonbn:join', 1, 1600006723, 2),
(1319, 1, 4, 'mod/bigbluebuttonbn:join', 1, 1600006723, 2),
(1320, 1, 5, 'mod/bigbluebuttonbn:join', 1, 1600006723, 2),
(1321, 1, 6, 'mod/bigbluebuttonbn:join', 1, 1600006723, 2),
(1322, 1, 1, 'mod/bigbluebuttonbn:managerecordings', 1, 1600006723, 2),
(1323, 1, 3, 'mod/bigbluebuttonbn:managerecordings', 1, 1600006723, 2),
(1324, 1, 4, 'mod/bigbluebuttonbn:managerecordings', 1, 1600006723, 2),
(1325, 1, 5, 'mod/bigbluebuttonbn:view', 1, 1600006723, 2),
(1326, 1, 4, 'mod/bigbluebuttonbn:view', 1, 1600006723, 2),
(1327, 1, 3, 'mod/bigbluebuttonbn:view', 1, 1600006723, 2),
(1328, 1, 1, 'mod/bigbluebuttonbn:view', 1, 1600006723, 2),
(1329, 1, 1, 'mod/bigbluebuttonbn:meeting', 1, 1600006724, 2),
(1330, 1, 3, 'mod/bigbluebuttonbn:meeting', 1, 1600006724, 2),
(1331, 1, 1, 'mod/bigbluebuttonbn:recording', 1, 1600006724, 2),
(1332, 1, 3, 'mod/bigbluebuttonbn:recording', 1, 1600006724, 2),
(1333, 106, 6, 'moodle/block:view', -1000, 1600014761, 2),
(1334, 1, 5, 'enrol/category:synchronised', 1, 1610073330, 2),
(1335, 1, 7, 'block/theme_selector:myaddinstance', 1, 1612244626, 2),
(1336, 1, 3, 'block/theme_selector:addinstance', 1, 1612244626, 2),
(1337, 1, 1, 'block/theme_selector:addinstance', 1, 1612244626, 2),
(1338, 1, 1, 'mod/hvp:view', 1, 1612245958, 2),
(1339, 1, 3, 'mod/hvp:view', 1, 1612245958, 2),
(1340, 1, 4, 'mod/hvp:view', 1, 1612245958, 2),
(1341, 1, 5, 'mod/hvp:view', 1, 1612245959, 2),
(1342, 1, 6, 'mod/hvp:view', 1, 1612245959, 2),
(1343, 1, 3, 'mod/hvp:addinstance', 1, 1612245959, 2),
(1344, 1, 1, 'mod/hvp:addinstance', 1, 1612245959, 2),
(1345, 1, 3, 'mod/hvp:manage', 1, 1612245959, 2),
(1346, 1, 1, 'mod/hvp:manage', 1, 1612245959, 2),
(1347, 1, 1, 'mod/hvp:getexport', 1, 1612245959, 2),
(1348, 1, 3, 'mod/hvp:getexport', 1, 1612245959, 2),
(1349, 1, 4, 'mod/hvp:getexport', 1, 1612245959, 2),
(1350, 1, 1, 'mod/hvp:getembedcode', 1, 1612245959, 2),
(1351, 1, 3, 'mod/hvp:getembedcode', 1, 1612245959, 2),
(1352, 1, 4, 'mod/hvp:getembedcode', 1, 1612245959, 2),
(1353, 1, 5, 'mod/hvp:saveresults', 1, 1612245959, 2),
(1354, 1, 1, 'mod/hvp:savecontentuserdata', 1, 1612245959, 2),
(1355, 1, 3, 'mod/hvp:savecontentuserdata', 1, 1612245959, 2),
(1356, 1, 4, 'mod/hvp:savecontentuserdata', 1, 1612245959, 2),
(1357, 1, 5, 'mod/hvp:savecontentuserdata', 1, 1612245959, 2),
(1358, 1, 5, 'mod/hvp:viewresults', 1, 1612245959, 2),
(1359, 1, 1, 'mod/hvp:viewallresults', 1, 1612245959, 2),
(1360, 1, 3, 'mod/hvp:viewallresults', 1, 1612245959, 2),
(1361, 1, 4, 'mod/hvp:viewallresults', 1, 1612245959, 2),
(1362, 1, 1, 'mod/hvp:restrictlibraries', 1, 1612245959, 2),
(1363, 1, 1, 'mod/hvp:userestrictedlibraries', 1, 1612245959, 2),
(1364, 1, 1, 'mod/hvp:updatelibraries', 1, 1612245959, 2),
(1365, 1, 1, 'mod/hvp:getcachedassets', 1, 1612245959, 2),
(1366, 1, 3, 'mod/hvp:getcachedassets', 1, 1612245959, 2),
(1367, 1, 4, 'mod/hvp:getcachedassets', 1, 1612245959, 2),
(1368, 1, 5, 'mod/hvp:getcachedassets', 1, 1612245959, 2),
(1369, 1, 7, 'mod/hvp:getcachedassets', 1, 1612245959, 2),
(1370, 1, 6, 'mod/hvp:getcachedassets', 1, 1612245959, 2),
(1371, 1, 1, 'mod/hvp:installrecommendedh5plibraries', 1, 1612245959, 2),
(1372, 1, 7, 'moodle/site:senderrormessage', 1, 1618472233, 2),
(1373, 1, 1, 'moodle/site:viewanonymousevents', 1, 1618472233, 2),
(1374, 1, 1, 'moodle/course:recommendactivity', 1, 1618472233, 2),
(1375, 1, 1, 'moodle/contentbank:access', 1, 1618472233, 2),
(1376, 1, 2, 'moodle/contentbank:access', 1, 1618472233, 2),
(1377, 1, 3, 'moodle/contentbank:access', 1, 1618472233, 2),
(1378, 1, 1, 'moodle/contentbank:upload', 1, 1618472233, 2),
(1379, 1, 2, 'moodle/contentbank:upload', 1, 1618472233, 2),
(1380, 1, 3, 'moodle/contentbank:upload', 1, 1618472233, 2),
(1381, 1, 1, 'moodle/contentbank:deleteanycontent', 1, 1618472233, 2),
(1382, 1, 2, 'moodle/contentbank:deleteanycontent', 1, 1618472233, 2),
(1383, 1, 7, 'moodle/contentbank:deleteowncontent', 1, 1618472233, 2),
(1384, 1, 1, 'moodle/contentbank:manageanycontent', 1, 1618472233, 2),
(1385, 1, 2, 'moodle/contentbank:manageanycontent', 1, 1618472233, 2),
(1386, 1, 1, 'moodle/contentbank:manageowncontent', 1, 1618472233, 2),
(1387, 1, 2, 'moodle/contentbank:manageowncontent', 1, 1618472233, 2),
(1388, 1, 3, 'moodle/contentbank:manageowncontent', 1, 1618472233, 2),
(1389, 1, 1, 'moodle/contentbank:useeditor', 1, 1618472233, 2),
(1390, 1, 2, 'moodle/contentbank:useeditor', 1, 1618472233, 2),
(1391, 1, 3, 'moodle/contentbank:useeditor', 1, 1618472233, 2),
(1392, 1, 1, 'moodle/contentbank:downloadcontent', 1, 1618472233, 2),
(1393, 1, 2, 'moodle/contentbank:downloadcontent', 1, 1618472233, 2),
(1394, 1, 3, 'moodle/contentbank:downloadcontent', 1, 1618472233, 2),
(1395, 1, 5, 'moodle/course:downloadcoursecontent', 1, 1618472233, 2),
(1396, 1, 4, 'moodle/course:downloadcoursecontent', 1, 1618472233, 2),
(1397, 1, 3, 'moodle/course:downloadcoursecontent', 1, 1618472233, 2),
(1398, 1, 1, 'moodle/course:downloadcoursecontent', 1, 1618472233, 2),
(1399, 1, 3, 'moodle/course:configuredownloadcontent', 1, 1618472233, 2),
(1400, 1, 1, 'moodle/course:configuredownloadcontent', 1, 1618472233, 2),
(1401, 1, 6, 'mod/h5pactivity:view', 1, 1618472240, 2),
(1402, 1, 5, 'mod/h5pactivity:view', 1, 1618472240, 2),
(1403, 1, 4, 'mod/h5pactivity:view', 1, 1618472240, 2),
(1404, 1, 3, 'mod/h5pactivity:view', 1, 1618472240, 2),
(1405, 1, 1, 'mod/h5pactivity:view', 1, 1618472240, 2),
(1406, 1, 3, 'mod/h5pactivity:addinstance', 1, 1618472240, 2),
(1407, 1, 1, 'mod/h5pactivity:addinstance', 1, 1618472240, 2),
(1408, 1, 5, 'mod/h5pactivity:submit', 1, 1618472240, 2),
(1409, 1, 3, 'mod/h5pactivity:reviewattempts', 1, 1618472240, 2),
(1410, 1, 1, 'mod/h5pactivity:reviewattempts', 1, 1618472240, 2),
(1411, 1, 3, 'mod/lti:addpreconfiguredinstance', 1, 1618472240, 2),
(1412, 1, 1, 'mod/lti:addpreconfiguredinstance', 1, 1618472240, 2),
(1413, 1, 3, 'mod/lti:addmanualinstance', 1, 1618472241, 2),
(1414, 1, 1, 'mod/lti:addmanualinstance', 1, 1618472241, 2),
(1415, 1, 1, 'enrol/fee:config', 1, 1618472243, 2),
(1416, 1, 1, 'enrol/fee:manage', 1, 1618472243, 2),
(1417, 1, 3, 'enrol/fee:manage', 1, 1618472243, 2),
(1418, 1, 1, 'enrol/fee:unenrol', 1, 1618472243, 2),
(1419, 1, 7, 'enrol/self:enrolself', 1, 1618472244, 2),
(1420, 1, 1, 'report/status:view', 1, 1618472253, 2),
(1421, 1, 2, 'repository/contentbank:view', 1, 1618472254, 2),
(1422, 1, 3, 'repository/contentbank:view', 1, 1618472254, 2),
(1423, 1, 1, 'repository/contentbank:view', 1, 1618472254, 2),
(1424, 1, 2, 'repository/contentbank:accesscoursecontent', 1, 1618472254, 2),
(1425, 1, 3, 'repository/contentbank:accesscoursecontent', 1, 1618472255, 2),
(1426, 1, 1, 'repository/contentbank:accesscoursecontent', 1, 1618472255, 2),
(1427, 1, 2, 'repository/contentbank:accesscoursecategorycontent', 1, 1618472255, 2),
(1428, 1, 1, 'repository/contentbank:accesscoursecategorycontent', 1, 1618472255, 2),
(1429, 1, 7, 'repository/contentbank:accessgeneralcontent', 1, 1618472255, 2),
(1430, 1, 1, 'tool/customlang:export', 1, 1618472258, 2),
(1431, 1, 1, 'contenttype/h5p:access', 1, 1618472262, 2),
(1432, 1, 2, 'contenttype/h5p:access', 1, 1618472262, 2),
(1433, 1, 3, 'contenttype/h5p:access', 1, 1618472262, 2),
(1434, 1, 1, 'contenttype/h5p:upload', 1, 1618472262, 2),
(1435, 1, 2, 'contenttype/h5p:upload', 1, 1618472262, 2),
(1436, 1, 3, 'contenttype/h5p:upload', 1, 1618472262, 2),
(1437, 1, 1, 'contenttype/h5p:useeditor', 1, 1618472262, 2),
(1438, 1, 2, 'contenttype/h5p:useeditor', 1, 1618472262, 2),
(1439, 1, 3, 'contenttype/h5p:useeditor', 1, 1618472262, 2),
(1440, 1, 1, 'quizaccess/seb:managetemplates', 1, 1618472266, 2),
(1441, 1, 1, 'quizaccess/seb:bypassseb', 1, 1618472266, 2),
(1442, 1, 3, 'quizaccess/seb:bypassseb', 1, 1618472266, 2),
(1443, 1, 1, 'quizaccess/seb:manage_seb_requiresafeexambrowser', 1, 1618472266, 2),
(1444, 1, 3, 'quizaccess/seb:manage_seb_requiresafeexambrowser', 1, 1618472266, 2),
(1445, 1, 1, 'quizaccess/seb:manage_seb_templateid', 1, 1618472266, 2),
(1446, 1, 3, 'quizaccess/seb:manage_seb_templateid', 1, 1618472266, 2),
(1447, 1, 1, 'quizaccess/seb:manage_filemanager_sebconfigfile', 1, 1618472266, 2),
(1448, 1, 3, 'quizaccess/seb:manage_filemanager_sebconfigfile', 1, 1618472266, 2),
(1449, 1, 1, 'quizaccess/seb:manage_seb_showsebdownloadlink', 1, 1618472266, 2),
(1450, 1, 3, 'quizaccess/seb:manage_seb_showsebdownloadlink', 1, 1618472266, 2),
(1451, 1, 1, 'quizaccess/seb:manage_seb_allowedbrowserexamkeys', 1, 1618472266, 2),
(1452, 1, 3, 'quizaccess/seb:manage_seb_allowedbrowserexamkeys', 1, 1618472266, 2),
(1453, 1, 1, 'quizaccess/seb:manage_seb_linkquitseb', 1, 1618472266, 2),
(1454, 1, 3, 'quizaccess/seb:manage_seb_linkquitseb', 1, 1618472266, 2),
(1455, 1, 1, 'quizaccess/seb:manage_seb_userconfirmquit', 1, 1618472266, 2),
(1456, 1, 3, 'quizaccess/seb:manage_seb_userconfirmquit', 1, 1618472266, 2),
(1457, 1, 1, 'quizaccess/seb:manage_seb_allowuserquitseb', 1, 1618472266, 2),
(1458, 1, 3, 'quizaccess/seb:manage_seb_allowuserquitseb', 1, 1618472266, 2),
(1459, 1, 1, 'quizaccess/seb:manage_seb_quitpassword', 1, 1618472266, 2),
(1460, 1, 3, 'quizaccess/seb:manage_seb_quitpassword', 1, 1618472266, 2),
(1461, 1, 1, 'quizaccess/seb:manage_seb_allowreloadinexam', 1, 1618472266, 2),
(1462, 1, 3, 'quizaccess/seb:manage_seb_allowreloadinexam', 1, 1618472266, 2),
(1463, 1, 1, 'quizaccess/seb:manage_seb_showsebtaskbar', 1, 1618472266, 2),
(1464, 1, 3, 'quizaccess/seb:manage_seb_showsebtaskbar', 1, 1618472266, 2),
(1465, 1, 1, 'quizaccess/seb:manage_seb_showreloadbutton', 1, 1618472266, 2),
(1466, 1, 3, 'quizaccess/seb:manage_seb_showreloadbutton', 1, 1618472266, 2),
(1467, 1, 1, 'quizaccess/seb:manage_seb_showtime', 1, 1618472266, 2),
(1468, 1, 3, 'quizaccess/seb:manage_seb_showtime', 1, 1618472266, 2),
(1469, 1, 1, 'quizaccess/seb:manage_seb_showkeyboardlayout', 1, 1618472266, 2),
(1470, 1, 3, 'quizaccess/seb:manage_seb_showkeyboardlayout', 1, 1618472266, 2),
(1471, 1, 1, 'quizaccess/seb:manage_seb_showwificontrol', 1, 1618472266, 2),
(1472, 1, 3, 'quizaccess/seb:manage_seb_showwificontrol', 1, 1618472266, 2),
(1473, 1, 1, 'quizaccess/seb:manage_seb_enableaudiocontrol', 1, 1618472266, 2),
(1474, 1, 3, 'quizaccess/seb:manage_seb_enableaudiocontrol', 1, 1618472267, 2),
(1475, 1, 1, 'quizaccess/seb:manage_seb_muteonstartup', 1, 1618472267, 2),
(1476, 1, 3, 'quizaccess/seb:manage_seb_muteonstartup', 1, 1618472267, 2),
(1477, 1, 1, 'quizaccess/seb:manage_seb_allowspellchecking', 1, 1618472267, 2),
(1478, 1, 3, 'quizaccess/seb:manage_seb_allowspellchecking', 1, 1618472267, 2),
(1479, 1, 1, 'quizaccess/seb:manage_seb_activateurlfiltering', 1, 1618472267, 2),
(1480, 1, 3, 'quizaccess/seb:manage_seb_activateurlfiltering', 1, 1618472267, 2),
(1481, 1, 1, 'quizaccess/seb:manage_seb_filterembeddedcontent', 1, 1618472267, 2),
(1482, 1, 3, 'quizaccess/seb:manage_seb_filterembeddedcontent', 1, 1618472267, 2),
(1483, 1, 1, 'quizaccess/seb:manage_seb_expressionsallowed', 1, 1618472267, 2),
(1484, 1, 3, 'quizaccess/seb:manage_seb_expressionsallowed', 1, 1618472267, 2),
(1485, 1, 1, 'quizaccess/seb:manage_seb_regexallowed', 1, 1618472267, 2),
(1486, 1, 3, 'quizaccess/seb:manage_seb_regexallowed', 1, 1618472267, 2),
(1487, 1, 1, 'quizaccess/seb:manage_seb_expressionsblocked', 1, 1618472267, 2),
(1488, 1, 3, 'quizaccess/seb:manage_seb_expressionsblocked', 1, 1618472267, 2),
(1489, 1, 1, 'quizaccess/seb:manage_seb_regexblocked', 1, 1618472267, 2),
(1490, 1, 3, 'quizaccess/seb:manage_seb_regexblocked', 1, 1618472267, 2),
(1491, 134, 6, 'moodle/block:view', -1, 1619065548, 2),
(1492, 134, 5, 'moodle/block:view', -1, 1619065553, 2),
(1493, 134, 3, 'moodle/block:view', -1, 1619065556, 2),
(1494, 134, 4, 'moodle/block:view', -1, 1619065560, 2),
(1495, 134, 7, 'moodle/block:view', -1, 1621325745, 2),
(1496, 627, 3, 'moodle/category:manage', 1, 1621706075, 2),
(1497, 627, 3, 'moodle/category:viewcourselist', 1, 1621706083, 2),
(1498, 627, 3, 'moodle/category:viewhiddencategories', 1, 1621706090, 2),
(1499, 627, 3, 'moodle/course:create', 1, 1621706100, 2),
(1500, 1, 2, 'block/admin_bookmarks:myaddinstance', 1, 1621708230, 2),
(1501, 1, 2, 'block/calendar_upcoming:myaddinstance', 1, 1621708230, 2),
(1502, 1, 2, 'block/settings:myaddinstance', 1, 1621708230, 2),
(1503, 1, 2, 'enrol/category:synchronised', 1, 1621708230, 2),
(1504, 1, 2, 'moodle/category:manage', 1, 1621708230, 2),
(1505, 1, 2, 'moodle/category:viewcourselist', 1, 1621708230, 2),
(1506, 1, 2, 'enrol/category:config', 1, 1621708230, 2),
(1507, 1, 2, 'mod/assign:addinstance', 1, 1621708230, 2),
(1508, 1, 2, 'mod/assignment:addinstance', 1, 1621708230, 2),
(1509, 1, 2, 'mod/bigbluebuttonbn:addinstance', 1, 1621708231, 2),
(1510, 1, 2, 'mod/book:addinstance', 1, 1621708231, 2),
(1511, 1, 2, 'mod/chat:addinstance', 1, 1621708231, 2),
(1512, 1, 2, 'mod/choice:addinstance', 1, 1621708231, 2),
(1513, 1, 2, 'mod/data:addinstance', 1, 1621708231, 2),
(1514, 1, 2, 'mod/feedback:addinstance', 1, 1621708231, 2),
(1515, 1, 2, 'mod/folder:addinstance', 1, 1621708231, 2),
(1516, 1, 2, 'mod/forum:addinstance', 1, 1621708231, 2),
(1517, 1, 2, 'mod/glossary:addinstance', 1, 1621708231, 2),
(1518, 1, 2, 'mod/h5pactivity:addinstance', 1, 1621708231, 2),
(1519, 1, 2, 'mod/hvp:addinstance', 1, 1621708231, 2),
(1520, 1, 2, 'mod/hvp:installrecommendedh5plibraries', 1, 1621708231, 2),
(1521, 1, 2, 'mod/hvp:userestrictedlibraries', 1, 1621708231, 2),
(1522, 1, 2, 'mod/imscp:addinstance', 1, 1621708231, 2),
(1523, 1, 2, 'mod/label:addinstance', 1, 1621708231, 2),
(1524, 1, 2, 'mod/lesson:addinstance', 1, 1621708231, 2),
(1525, 1, 2, 'mod/lti:addcoursetool', 1, 1621708231, 2),
(1526, 1, 2, 'mod/lti:addinstance', 1, 1621708231, 2),
(1527, 1, 2, 'mod/lti:addmanualinstance', 1, 1621708231, 2),
(1528, 1, 2, 'mod/lti:addpreconfiguredinstance', 1, 1621708231, 2),
(1529, 1, 2, 'mod/lti:requesttooladd', 1, 1621708231, 2),
(1530, 1, 2, 'mod/page:addinstance', 1, 1621708231, 2),
(1531, 1, 2, 'mod/quiz:addinstance', 1, 1621708231, 2),
(1532, 1, 2, 'mod/resource:addinstance', 1, 1621708231, 2),
(1533, 1, 2, 'mod/scorm:addinstance', 1, 1621708231, 2),
(1534, 1, 2, 'mod/survey:addinstance', 1, 1621708231, 2),
(1535, 1, 2, 'mod/wiki:addinstance', 1, 1621708231, 2),
(1536, 1, 2, 'mod/workshop:addinstance', 1, 1621708231, 2),
(1537, 1, 3, 'block/admin_bookmarks:myaddinstance', 1, 1621745382, 2),
(1538, 1, 3, 'block/calendar_month:myaddinstance', 1, 1621745382, 2),
(1539, 1, 3, 'block/calendar_upcoming:myaddinstance', 1, 1621745382, 2),
(1540, 1, 3, 'block/course_list:myaddinstance', 1, 1621745382, 2),
(1541, 1, 3, 'block/glossary_random:myaddinstance', 1, 1621745382, 2),
(1542, 1, 3, 'block/navigation:myaddinstance', 1, 1621745382, 2),
(1543, 1, 3, 'block/news_items:myaddinstance', 1, 1621745382, 2),
(1544, 1, 3, 'block/settings:myaddinstance', 1, 1621745382, 2),
(1545, 1, 3, 'enrol/category:synchronised', 1, 1621745382, 2),
(1546, 1, 3, 'moodle/site:sendmessage', 1, 1621745382, 2),
(1547, 1, 3, 'moodle/user:create', 1, 1621745382, 2),
(1548, 1, 3, 'moodle/category:manage', 1, 1621745382, 2),
(1549, 1, 3, 'moodle/category:viewcourselist', 1, 1621745382, 2),
(1550, 1, 3, 'moodle/course:create', 1, 1621745382, 2),
(1551, 1, 3, 'mod/page:view', 1, 1621745382, 2),
(1552, 1, 3, 'mod/quiz:attempt', 1, 1621745382, 2),
(1553, 1, 3, 'mod/quiz:emailconfirmsubmission', 1, 1621745382, 2),
(1554, 1, 3, 'mod/quiz:emailnotifysubmission', 1, 1621745382, 2),
(1555, 1, 3, 'mod/quiz:emailwarnoverdue', 1, 1621745382, 2),
(1556, 1, 3, 'mod/resource:view', 1, 1621745382, 2),
(1557, 1, 7, 'block/coursesearchlang:myaddinstance', 1, 1628002593, 2),
(1558, 1, 3, 'block/coursesearchlang:addinstance', 1, 1628002593, 2),
(1559, 1, 1, 'block/coursesearchlang:addinstance', 1, 1628002593, 2),
(1560, 26, 5, 'moodle/block:view', -1, 1628150022, 2),
(1561, 26, 6, 'moodle/block:view', -1, 1628150028, 2),
(1563, 27, 7, 'moodle/block:view', -1, 1628836700, 2),
(1564, 979, 6, 'moodle/category:viewcourselist', -1000, 1632814932, 2),
(1566, 979, 6, 'block/recent_activity:viewaddupdatemodule', -1, 1632815128, 2),
(1567, 979, 6, 'block/recent_activity:viewdeletemodule', -1, 1632815138, 2),
(1568, 979, 6, 'mod/page:addinstance', -1, 1632815223, 2),
(1569, 979, 6, 'mod/quiz:addinstance', 1, 1632815216, 2),
(1571, 995, 6, 'mod/quiz:attempt', 1, 1632976421, 2),
(1572, 995, 6, 'moodle/question:useall', -1, 1632976721, 2),
(1573, 993, 6, 'mod/quiz:attempt', 1, 1632994006, 2),
(1574, 993, 6, 'mod/page:view', -1, 1632994020, 2),
(1575, 619, 6, 'mod/quiz:attempt', 1, 1633106210, 2),
(1576, 619, 6, 'mod/quiz:preview', 1, 1633106584, 2),
(1577, 613, 6, 'mod/quiz:attempt', 1, 1633107466, 2),
(1578, 613, 6, 'mod/quiz:preview', 1, 1633107729, 2),
(1579, 1, 6, 'mod/quiz:attempt', 1, 1633349983, 2),
(1582, 1, 6, 'mod/quiz:reviewmyattempts', 1, 1633351651, 2),
(1584, 1, 6, 'moodle/role:safeoverride', 1, 1633353088, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mo_role_context_levels`
--

CREATE TABLE `mo_role_context_levels` (
  `id` bigint NOT NULL,
  `roleid` bigint NOT NULL,
  `contextlevel` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Lists which roles can be assigned at which context levels. T';

--
-- Dumping data for table `mo_role_context_levels`
--

INSERT INTO `mo_role_context_levels` (`id`, `roleid`, `contextlevel`) VALUES
(37, 1, 10),
(27, 2, 10),
(35, 3, 10),
(36, 3, 30),
(38, 1, 40),
(28, 2, 40),
(32, 3, 40),
(21, 5, 40),
(39, 1, 50),
(29, 2, 50),
(33, 3, 50),
(8, 4, 50),
(22, 5, 50),
(30, 2, 70),
(34, 3, 70),
(9, 4, 70),
(23, 5, 70),
(31, 2, 80);

-- --------------------------------------------------------

--
-- Table structure for table `mo_role_names`
--

CREATE TABLE `mo_role_names` (
  `id` bigint NOT NULL,
  `roleid` bigint NOT NULL DEFAULT '0',
  `contextid` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='role names in native strings';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scale`
--

CREATE TABLE `mo_scale` (
  `id` bigint NOT NULL,
  `courseid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scale` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriptionformat` tinyint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines grading scales';

--
-- Dumping data for table `mo_scale`
--

INSERT INTO `mo_scale` (`id`, `courseid`, `userid`, `name`, `scale`, `description`, `descriptionformat`, `timemodified`) VALUES
(1, 0, 0, 'Separate and Connected ways of knowing', 'Mostly separate knowing,Separate and connected,Mostly connected knowing', 'The scale based on the theory of separate and connected knowing. This theory describes two different ways that we can evaluate and learn about the things we see and hear.<ul><li><strong>Separate knowers</strong> remain as objective as possible without including feelings and emotions. In a discussion with other people, they like to defend their own ideas, using logic to find holes in opponent\'s ideas.</li><li><strong>Connected knowers</strong> are more sensitive to other people. They are skilled at empathy and tend to listen and ask questions until they feel they can connect and \"understand things from their point of view\". They learn by trying to share the experiences that led to the knowledge they find in other people.</li></ul>', 0, 1599457749),
(2, 0, 0, 'Default competence scale', 'Not yet competent,Competent', 'A binary rating scale that provides no further information beyond whether someone has demonstrated proficiency or not.', 0, 1599457749);

-- --------------------------------------------------------

--
-- Table structure for table `mo_scale_history`
--

CREATE TABLE `mo_scale_history` (
  `id` bigint NOT NULL,
  `action` bigint NOT NULL DEFAULT '0',
  `oldid` bigint NOT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `timemodified` bigint DEFAULT NULL,
  `loggeduser` bigint DEFAULT NULL,
  `courseid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scale` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='History table';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm`
--

CREATE TABLE `mo_scorm` (
  `id` bigint NOT NULL,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scormtype` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local',
  `reference` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `version` varchar(9) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `maxgrade` double NOT NULL DEFAULT '0',
  `grademethod` tinyint NOT NULL DEFAULT '0',
  `whatgrade` bigint NOT NULL DEFAULT '0',
  `maxattempt` bigint NOT NULL DEFAULT '1',
  `forcecompleted` tinyint(1) NOT NULL DEFAULT '0',
  `forcenewattempt` tinyint(1) NOT NULL DEFAULT '0',
  `lastattemptlock` tinyint(1) NOT NULL DEFAULT '0',
  `masteryoverride` tinyint(1) NOT NULL DEFAULT '1',
  `displayattemptstatus` tinyint(1) NOT NULL DEFAULT '1',
  `displaycoursestructure` tinyint(1) NOT NULL DEFAULT '0',
  `updatefreq` tinyint(1) NOT NULL DEFAULT '0',
  `sha1hash` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `md5hash` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `revision` bigint NOT NULL DEFAULT '0',
  `launch` bigint NOT NULL DEFAULT '0',
  `skipview` tinyint(1) NOT NULL DEFAULT '1',
  `hidebrowse` tinyint(1) NOT NULL DEFAULT '0',
  `hidetoc` tinyint(1) NOT NULL DEFAULT '0',
  `nav` tinyint(1) NOT NULL DEFAULT '1',
  `navpositionleft` bigint DEFAULT '-100',
  `navpositiontop` bigint DEFAULT '-100',
  `auto` tinyint(1) NOT NULL DEFAULT '0',
  `popup` tinyint(1) NOT NULL DEFAULT '0',
  `options` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` bigint NOT NULL DEFAULT '100',
  `height` bigint NOT NULL DEFAULT '600',
  `timeopen` bigint NOT NULL DEFAULT '0',
  `timeclose` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `completionstatusrequired` tinyint(1) DEFAULT NULL,
  `completionscorerequired` bigint DEFAULT NULL,
  `completionstatusallscos` tinyint(1) DEFAULT NULL,
  `displayactivityname` smallint NOT NULL DEFAULT '1',
  `autocommit` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='each table is one SCORM module and its configuration';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_aicc_session`
--

CREATE TABLE `mo_scorm_aicc_session` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `scormid` bigint NOT NULL DEFAULT '0',
  `hacpsession` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scoid` bigint DEFAULT '0',
  `scormmode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `scormstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` bigint DEFAULT NULL,
  `lessonstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sessiontime` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Used by AICC HACP to store session information';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_scoes`
--

CREATE TABLE `mo_scorm_scoes` (
  `id` bigint NOT NULL,
  `scorm` bigint NOT NULL DEFAULT '0',
  `manifest` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `identifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `launch` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scormtype` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='each SCO part of the SCORM module';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_scoes_data`
--

CREATE TABLE `mo_scorm_scoes_data` (
  `id` bigint NOT NULL,
  `scoid` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Contains variable data get from packages';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_scoes_track`
--

CREATE TABLE `mo_scorm_scoes_track` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `scormid` bigint NOT NULL DEFAULT '0',
  `scoid` bigint NOT NULL DEFAULT '0',
  `attempt` bigint NOT NULL DEFAULT '1',
  `element` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='to track SCOes';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_seq_mapinfo`
--

CREATE TABLE `mo_scorm_seq_mapinfo` (
  `id` bigint NOT NULL,
  `scoid` bigint NOT NULL DEFAULT '0',
  `objectiveid` bigint NOT NULL DEFAULT '0',
  `targetobjectiveid` bigint NOT NULL DEFAULT '0',
  `readsatisfiedstatus` tinyint(1) NOT NULL DEFAULT '1',
  `readnormalizedmeasure` tinyint(1) NOT NULL DEFAULT '1',
  `writesatisfiedstatus` tinyint(1) NOT NULL DEFAULT '0',
  `writenormalizedmeasure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 objective mapinfo description';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_seq_objective`
--

CREATE TABLE `mo_scorm_seq_objective` (
  `id` bigint NOT NULL,
  `scoid` bigint NOT NULL DEFAULT '0',
  `primaryobj` tinyint(1) NOT NULL DEFAULT '0',
  `objectiveid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `satisfiedbymeasure` tinyint(1) NOT NULL DEFAULT '1',
  `minnormalizedmeasure` float(11,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 objective description';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_seq_rolluprule`
--

CREATE TABLE `mo_scorm_seq_rolluprule` (
  `id` bigint NOT NULL,
  `scoid` bigint NOT NULL DEFAULT '0',
  `childactivityset` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `minimumcount` bigint NOT NULL DEFAULT '0',
  `minimumpercent` float(11,4) NOT NULL DEFAULT '0.0000',
  `conditioncombination` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `action` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 sequencing rule';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_seq_rolluprulecond`
--

CREATE TABLE `mo_scorm_seq_rolluprulecond` (
  `id` bigint NOT NULL,
  `scoid` bigint NOT NULL DEFAULT '0',
  `rollupruleid` bigint NOT NULL DEFAULT '0',
  `operator` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'noOp',
  `cond` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 sequencing rule';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_seq_rulecond`
--

CREATE TABLE `mo_scorm_seq_rulecond` (
  `id` bigint NOT NULL,
  `scoid` bigint NOT NULL DEFAULT '0',
  `ruleconditionsid` bigint NOT NULL DEFAULT '0',
  `refrencedobjective` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `measurethreshold` float(11,4) NOT NULL DEFAULT '0.0000',
  `operator` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'noOp',
  `cond` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'always'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 rule condition';

-- --------------------------------------------------------

--
-- Table structure for table `mo_scorm_seq_ruleconds`
--

CREATE TABLE `mo_scorm_seq_ruleconds` (
  `id` bigint NOT NULL,
  `scoid` bigint NOT NULL DEFAULT '0',
  `conditioncombination` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `ruletype` tinyint NOT NULL DEFAULT '0',
  `action` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 rule conditions';

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_categories`
--

CREATE TABLE `mo_searchda_categories` (
  `id` int NOT NULL,
  `title` text,
  `status` int DEFAULT '0',
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL,
  `contents` text,
  `iconfiletype` text,
  `icon_file` text,
  `classname` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_categories`
--

INSERT INTO `mo_searchda_categories` (`id`, `title`, `status`, `createdtime`, `modifiedtime`, `contents`, `iconfiletype`, `icon_file`, `classname`) VALUES
(3, 'TS PGCET', 0, 1626250452, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '975609717', ''),
(4, ' Engineering Entrance', 0, 1626252169, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '705331577', ''),
(5, ' Teaching', 0, 1626252444, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '363277169', ''),
(6, ' Law, Arts, Commerce', 0, 1626252485, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '77541840', ''),
(7, ' Civil Services', 1, 1626252533, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '860020775', ''),
(8, ' Management', 1, 1626252822, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '158155064', ''),
(10, ' Government Exams', 0, 1626253010, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '25809696', ''),
(11, ' SSC', 0, 1626253054, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '494151171', ''),
(12, ' Medical', 0, 1626253087, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '102704914', ''),
(13, ' Computer Inform Technology', 1, 1626253148, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '873738960', ''),
(14, ' Graduate Engineering', 1, 1626253357, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '192413164', ''),
(15, ' Railway', 1, 1626253394, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '730087140', ''),
(16, ' PSUs &amp; Research', 1, 1626253684, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '513825860', ''),
(17, ' Finance', 1, 1626253728, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '337110355', ''),
(18, ' Insurance', 1, 1626253923, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '986938425', ''),
(19, ' School Level - All India', 1, 1626253970, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '770280803', ''),
(20, ' School Level - State Boards', 1, 1626254033, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '334810176', ''),
(21, ' Foreign Education', 1, 1626254086, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '823263890', ''),
(22, ' Skill, Aptitude and Language Test', 1, 1626254125, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '95376409', ''),
(23, ' Designing', 1, 1626254163, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '610352875', ''),
(24, ' IT Placement Papers', 1, 1626254209, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '6852794', ''),
(25, ' License', 1, 1626254246, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '382220679', ''),
(26, ' Others', 1, 1626254284, NULL, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 'svg', '963867726', ''),
(34, 'Test Lds Course Category', 0, 1632906948, NULL, 'a:2:{s:4:\"text\";s:379:\"<p dir=\"ltr\" style=\"text-align: left;\">loreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsumloreum Ipsum</p>\";s:6:\"format\";s:1:\"1\";}', 'svg', '999860468', '');

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_ca_quiz`
--

CREATE TABLE `mo_searchda_ca_quiz` (
  `id` int NOT NULL,
  `thid` int DEFAULT NULL,
  `quizcategories` int DEFAULT NULL,
  `quiz_type` int DEFAULT '0',
  `title` text,
  `duedate` bigint DEFAULT NULL,
  `question` text,
  `qmark` text,
  `mark` text,
  `qumark` text,
  `minute` text,
  `qminute` text,
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL,
  `status` int DEFAULT '0',
  `postid` int DEFAULT NULL,
  `moodleurl` text,
  `price` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_ca_quiz`
--

INSERT INTO `mo_searchda_ca_quiz` (`id`, `thid`, `quizcategories`, `quiz_type`, `title`, `duedate`, `question`, `qmark`, `mark`, `qumark`, `minute`, `qminute`, `createdtime`, `modifiedtime`, `status`, `postid`, `moodleurl`, `price`) VALUES
(2, 3, 2, 0, 'UP Police ASI Confidential Exam - Quiz', 1627623120, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627623142, NULL, 0, 160, '', '100'),
(4, 3, 1, 0, 'UP Police ASI Confidential Exam - Quiz', 0, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627625034, NULL, 0, 162, '', '100'),
(6, 3, 1, 1, 'UP Police ASI Confidential Exam - Quiz', 1627630560, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627630617, NULL, 0, 165, '', '111'),
(7, 3, 2, 1, 'UP Police ASI Confidential Exam - Quiz', 1627630860, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627630892, NULL, 0, 166, '', '222'),
(15, 13, 5, 1, 'Practice Paper II', 1628156400, 'Question', '50', 'Marks', '50', 'Minute', '50', 1628156517, 1628169891, 0, 194, 'https://preparetest.com/mod/quiz/view.php?id=215', ''),
(17, 12, 11, 1, 'Practice Papers Exam - Quiz', 1628156940, 'Question', '80', 'Marks', '80', 'Minute', '90', 1628157080, 1628157914, 0, 197, 'https://preparetest.com/mod/quiz/view.php?id=282&forceview=1', ''),
(18, 12, 12, 1, 'Practice Papers Exam - Quiz', 1628157240, 'Question', '80', 'Marks', '80', 'Minute', '90', 1628157339, 1628158062, 0, 199, 'https://preparetest.com/mod/quiz/view.php?id=287&forceview=1', ''),
(19, 12, 6, 1, 'Practice Papers Exam - Quiz', 1628157360, 'Question', '80', 'Marks', '80', 'Minute', '90', 1628157481, 1628233998, 0, 200, 'https://preparetest.com/mod/quiz/view.php?id=277', ''),
(20, 12, 8, 1, 'Practice Papers Exam - Quiz', 1628157540, 'Question', '80', 'Marks', '80', 'Minute', '90', 1628157630, NULL, 0, 201, 'https://preparetest.com/mod/quiz/view.php?id=279', ''),
(21, 33, 13, 1, 'Maths Paper Exam - Quiz', 1628159160, 'Question', '50', 'Marks', '50', 'Minute', '60', 1628159411, NULL, 0, 205, 'https://preparetest.com/mod/quiz/view.php?id=270', ''),
(22, 33, 14, 1, 'Maths Paper Exam - Quiz', 1628159400, 'Question', '50', 'Marks', '50', 'Minute', '60', 1628159525, NULL, 0, 206, 'https://preparetest.com/mod/quiz/view.php?id=272&forceview=1', ''),
(23, 35, 15, 1, 'Chemistry Exam - Quiz', 1628159940, 'Question', '50', 'Marks', '50', 'Minute', '60', 1628160076, NULL, 0, 208, 'https://preparetest.com/mod/quiz/view.php?id=264', ''),
(24, 34, 17, 1, 'Physics paper Exam - Quiz', 1628160780, 'Question', '50', 'Marks', '50', 'Minute', '60', 1628160995, NULL, 0, 215, 'https://preparetest.com/mod/quiz/view.php?id=236', ''),
(25, 34, 18, 1, 'Physics paper Exam - Quiz', 0, 'Question', '50', 'Marks', '50', 'Minute', '50', 1628161211, NULL, 0, 218, 'https://preparetest.com/mod/quiz/view.php?id=236', ''),
(26, 34, 19, 1, 'Physics paper Exam - Quiz', 1628161200, 'Question', '47', 'Marks', '47', 'Minute', '50', 1628161474, NULL, 0, 221, 'https://preparetest.com/mod/quiz/view.php?id=259', ''),
(29, 13, 7, 1, 'Practice Papers Exam - Quiz', 1628169960, 'Question', '50', 'Marks', '50', 'Minute', '50', 1628170127, NULL, 0, 225, 'https://preparetest.com/mod/quiz/view.php?id=220', ''),
(30, 13, 9, 1, 'Practice Papers Exam - Quiz', 1628170140, 'Question', '50', 'Marks', '50', 'Minute', '50', 1628170202, NULL, 0, 226, 'https://preparetest.com/mod/quiz/view.php?id=221', ''),
(32, 13, 4, 1, 'Practice Papers Exam - Quiz', 1628170320, 'Question', '50', 'Marks', '50', 'Minute', '50', 1628170387, 1628170553, 0, 228, 'https://preparetest.com/mod/quiz/view.php?id=224', ''),
(34, 13, 10, 1, 'Practice Papers Exam - Quiz', 1628170440, 'Question', '50', 'Marks', '50', 'Minute', '50', 1628170492, NULL, 0, 230, 'https://preparetest.com/mod/quiz/view.php?id=224', ''),
(35, 11, 20, 1, 'Previous Papers Exam - Quiz', 1628170860, 'Question', '180', 'Marks', '180', 'Minute', '180', 1628170966, NULL, 0, 231, 'https://preparetest.com/mod/quiz/view.php?id=200', ''),
(36, 11, 21, 1, 'Previous Papers Exam - Quiz', 1628170920, 'Question', '177', 'Marks', '177', 'Minute', '180', 1628171058, NULL, 0, 232, 'https://preparetest.com/mod/quiz/view.php?id=199', ''),
(37, 11, 22, 1, 'Previous Papers Exam - Quiz', 1628171040, 'Question', '180', 'Marks', '180', 'Minute', '180', 1628171154, NULL, 0, 233, 'https://preparetest.com/mod/quiz/view.php?id=201', ''),
(40, 44, 24, 1, 'Practice Paper - 2 Exam - Quiz', 1628242800, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628242961, 1628243003, 0, 257, 'https://preparetest.com/mod/quiz/view.php?id=323&forceview=1', ''),
(41, 44, 25, 1, 'Practice  Paper Exam - Quiz', 1628243040, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628243108, NULL, 0, 259, 'https://preparetest.com/mod/quiz/view.php?id=326&forceview=1', ''),
(42, 44, 26, 1, 'Practice Paper  Exam - Quiz', 1628243160, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628243213, NULL, 0, 261, 'https://preparetest.com/mod/quiz/view.php?id=331&forceview=1', ''),
(43, 44, 27, 1, 'Practice Papers  Exam - Quiz', 1628243220, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628243299, NULL, 0, 263, 'https://preparetest.com/mod/quiz/view.php?id=338&forceview=1', ''),
(44, 44, 28, 1, 'Practice Paper  Exam - Quiz', 1628243340, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628243414, NULL, 0, 265, 'https://preparetest.com/mod/quiz/view.php?id=343&forceview=1', ''),
(45, 44, 29, 1, 'Practice Papers  Exam - Quiz', 1628243460, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628243539, NULL, 0, 267, 'https://preparetest.com/mod/quiz/view.php?id=343&forceview=1', ''),
(46, 44, 30, 1, 'Practice Papers  Exam - Quiz', 1628243520, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628243637, 1628243666, 0, 268, 'https://preparetest.com/mod/quiz/view.php?id=347&forceview=1', ''),
(48, 45, 32, 1, 'Practice Paper 2', 1628244180, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628244426, NULL, 0, 270, 'https://preparetest.com/mod/quiz/view.php?id=335', ''),
(49, 46, 40, 1, 'Practice paper - 1 - Quiz', 1628245560, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628245633, NULL, 0, 271, 'https://preparetest.com/mod/quiz/view.php?id=317', ''),
(50, 43, 38, 1, 'Practice paper 1', 1628245560, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628245684, 1628245731, 0, 272, 'https://preparetest.com/mod/quiz/view.php?id=266', ''),
(51, 46, 41, 1, 'Practice paper -2  Quiz', 1628245620, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628245686, NULL, 0, 273, 'https://preparetest.com/mod/quiz/view.php?id=323&forceview=1', ''),
(52, 46, 43, 1, 'Practice paper - 3 - Quiz', 1628245680, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628245733, NULL, 0, 274, 'https://preparetest.com/mod/quiz/view.php?id=326&forceview=1', ''),
(54, 46, 44, 1, 'Practice paper - 4 Exam - Quiz', 1628245800, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628245853, NULL, 0, 276, 'https://preparetest.com/mod/quiz/view.php?id=331&forceview=1', ''),
(55, 43, 39, 1, 'Practice paper', 1628245740, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628245859, NULL, 0, 277, 'https://preparetest.com/mod/quiz/view.php?id=335', ''),
(56, 46, 46, 1, 'Practice paper -5 - Quiz', 1628245860, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628245897, NULL, 0, 278, 'https://preparetest.com/mod/quiz/view.php?id=338&forceview=1', ''),
(57, 46, 49, 1, 'Practice paper - 6 Quiz', 1628245860, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628245955, NULL, 0, 279, 'https://preparetest.com/mod/quiz/view.php?id=343&forceview=1', ''),
(58, 43, 42, 1, 'PRACTICE PAPER', 1628245860, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628245979, NULL, 0, 280, 'https://preparetest.com/mod/quiz/view.php?id=348', ''),
(59, 46, 52, 1, 'Practice paper -8  Quiz', 1628245920, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628246008, 1628246121, 0, 281, 'https://preparetest.com/mod/quiz/view.php?id=350&forceview=1', ''),
(60, 46, 51, 1, 'Practice paper -7  Quiz', 1628246040, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628246091, NULL, 0, 282, 'https://preparetest.com/mod/quiz/view.php?id=347&forceview=1', ''),
(61, 43, 45, 1, 'PRACTICE PAPER', 1628245980, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628246109, NULL, 0, 283, 'https://preparetest.com/mod/quiz/edit.php?cmid=357', ''),
(62, 43, 47, 1, 'PRACTICE PAPERS ', 1628246100, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628246230, NULL, 0, 284, 'https://preparetest.com/mod/quiz/view.php?id=360', ''),
(63, 43, 48, 1, 'PRACTICE PAPER', 1628246220, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628246317, NULL, 0, 285, 'https://preparetest.com/mod/quiz/view.php?id=367', ''),
(64, 43, 50, 1, 'PRACTICE PAPER', 1628246280, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628246455, NULL, 0, 286, 'https://preparetest.com/mod/quiz/view.php?id=374', ''),
(65, 49, 53, 1, 'Practice paper - 1', 1628247900, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628248172, NULL, 0, 302, 'https://preparetest.com/mod/quiz/view.php?id=384', ''),
(66, 49, 54, 1, 'Practice Paper -2', 1628248140, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628248305, NULL, 0, 303, 'https://preparetest.com/mod/quiz/view.php?id=385', ''),
(67, 49, 54, 1, 'Practice Paper -3', 1628248140, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628248466, NULL, 0, 304, 'https://preparetest.com/mod/quiz/view.php?id=388', ''),
(68, 49, 54, 1, 'Practice Paper -4', 1628248140, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628248581, NULL, 0, 305, 'https://preparetest.com/mod/quiz/view.php?id=390', ''),
(69, 50, 57, 1, 'Practice Paper -  1 Exam - Quiz', 1628248500, 'Question', '200', 'Marks', '200', 'Minute', '180', 1628248621, 1628248878, 0, 306, 'https://preparetest.com/mod/quiz/view.php?id=379', ''),
(70, 50, 58, 1, 'Practice Paper - 2 Exam - Quiz', 0, 'Question', '200', 'Marks', '200', 'Minute', '180', 1628248948, NULL, 0, 307, 'https://preparetest.com/mod/quiz/view.php?id=386', ''),
(71, 50, 59, 1, 'Practice Paper - 3 Exam - Quiz', 1628248920, 'Question', '200', 'Marks', '200', 'Minute', '180', 1628249086, NULL, 0, 308, 'https://preparetest.com/mod/quiz/view.php?id=389&forceview=1', ''),
(72, 50, 60, 1, 'Practice Paper - 4 Exam - Quiz', 1628249100, 'Question', '80', 'Marks', '80', 'Minute', '90', 1628249254, NULL, 0, 309, 'https://preparetest.com/mod/quiz/edit.php?cmid=391', ''),
(73, 52, 62, 0, 'Test Dev Exam - Quiz one', 1628510460, 'Question', '20', 'Marks', '20', 'Minute', '20', 1628510498, NULL, 0, 314, '', '22'),
(74, 52, 62, 1, 'last demo', 1628839080, 'Question', '20', 'Marks', '20', 'Minute', '20', 1628510595, 1628839178, 0, 315, 'https://preparetest.com/mod/quiz/view.php?id=437', '2'),
(80, 54, 63, 1, 'Mechanical Engineering -  1 ( Paper - I )Exam - Quiz', 0, 'Question', '100', 'Marks', '100', 'Minute', '90', 1630755532, 1630915252, 0, 355, 'https://preparetest.com/mod/quiz/view.php?id=461&forceview=1', ''),
(81, 54, 63, 0, 'Mechanical Engineering - 2 (Paper - I)  Exam - Quiz', 0, 'Question', '100', 'Marks', '100', 'Minute', '90', 1630755588, 1630915220, 0, 356, 'https://preparetest.com/mod/quiz/view.php?id=464&forceview=1', ''),
(82, 54, 64, 0, 'Mechanical Engineering - 1  (Paper - I ) Exam - Quiz', 1630755600, 'Question', '100', 'Marks', '100', 'Minute', '90', 1630755688, 1630915282, 0, 357, 'https://preparetest.com/mod/quiz/view.php?id=463', ''),
(85, 51, 66, 1, '20.Current Electricity', 1631008380, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631008470, 1631008977, 0, 360, 'https://preparetest.com/mod/quiz/view.php?id=319', ''),
(86, 51, 66, 1, '19. Ray Optics and Optical Instruments', 1631008440, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631008525, 1631008965, 0, 361, 'https://preparetest.com/mod/quiz/view.php?id=318&forceview=1', ''),
(87, 51, 66, 1, '18.Dual Nature of Radiation and Matter', 1631008500, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631008627, 1631008952, 0, 362, 'https://preparetest.com/mod/quiz/view.php?id=316', ''),
(88, 51, 66, 1, '17. Thermal Properties of Matter', 1631008620, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631008698, 1631008939, 0, 363, 'https://preparetest.com/mod/quiz/view.php?id=314&forceview=1', ''),
(89, 51, 66, 1, '16.Oscillations', 1631008740, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631008832, 1631008926, 0, 364, 'https://preparetest.com/mod/quiz/view.php?id=310&forceview=1', ''),
(90, 51, 66, 1, '15.Kinetic Theory of Gases and Radiation', 1631008800, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631008886, 1631008909, 0, 365, 'https://preparetest.com/mod/quiz/view.php?id=307&forceview=1', ''),
(91, 51, 66, 1, ' 14.Thermodynamics', 1631008980, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631009027, NULL, 0, 366, 'https://preparetest.com/mod/quiz/view.php?id=305&forceview=1', ''),
(92, 51, 66, 1, '13.Nuclei', 1631008980, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631009072, 1631009097, 0, 367, 'https://preparetest.com/mod/quiz/view.php?id=302&forceview=1', ''),
(93, 51, 66, 1, '12.Atoms', 1631009100, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631009149, 1631009167, 0, 368, 'https://preparetest.com/mod/quiz/view.php?id=301&forceview=1', ''),
(94, 51, 66, 1, '11.Systems of Particles and Rotational Motion', 0, 'Questions', '30', 'Marks', '30', 'Minute', '30', 1631009208, NULL, 0, 369, 'https://preparetest.com/mod/quiz/view.php?id=296&forceview=1', ''),
(95, 51, 66, 1, '10.Alternating Current', 1631009160, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631009264, NULL, 0, 370, 'https://preparetest.com/mod/quiz/view.php?id=295&forceview=1', ''),
(96, 51, 66, 1, '9.Mechanical Properties of Fluids', 1631009220, 'Questions', '30', 'Marks', '30', 'Minute', '30', 1631009314, NULL, 0, 371, 'https://preparetest.com/mod/quiz/view.php?id=291&forceview=1', ''),
(97, 51, 66, 1, '8.Gravitation', 1631009340, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631009414, NULL, 0, 372, 'https://preparetest.com/mod/quiz/view.php?id=290', ''),
(98, 51, 66, 1, '7. Electric Charges and Fields', 1631009400, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631009470, NULL, 0, 373, 'https://preparetest.com/mod/quiz/view.php?id=288&forceview=1', ''),
(99, 51, 66, 1, '6.Wave Optics.', 1631009460, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631009524, NULL, 0, 374, 'https://preparetest.com/mod/quiz/view.php?id=285&forceview=1', ''),
(100, 51, 66, 1, '5.Work, Energy and Power', 1631009520, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631009575, NULL, 0, 375, 'https://preparetest.com/mod/quiz/view.php?id=283&forceview=1', ''),
(101, 51, 66, 1, '4.Laws of Motion', 1631009580, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631009622, NULL, 0, 376, 'https://preparetest.com/mod/quiz/view.php?id=281&forceview=1', ''),
(102, 51, 66, 1, '3.Motion in a Plane', 1631009640, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631009689, NULL, 0, 377, 'https://preparetest.com/mod/quiz/view.php?id=280&forceview=1', ''),
(103, 51, 66, 1, '2. Motion in A Straight Line', 1631009640, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631009733, NULL, 0, 378, 'https://preparetest.com/mod/quiz/view.php?id=278&forceview=1', ''),
(104, 51, 66, 1, '1. Units and Measurement', 1631009700, 'Questions', '50', 'Marks', '50', 'Minute', '50', 1631009786, 1631011510, 0, 379, 'https://preparetest.com/mod/quiz/view.php?id=273&forceview=1', ''),
(105, 51, 67, 1, '15.Chemical Kinetics', 1631009820, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631009887, NULL, 0, 380, 'https://preparetest.com/mod/quiz/view.php?id=376', ''),
(106, 51, 67, 1, '14.Electrochemistry', 1631009880, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631009944, NULL, 0, 381, 'https://preparetest.com/mod/quiz/view.php?id=375&forceview=1', ''),
(107, 51, 67, 1, '13. Solutions', 1631009940, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631009977, 1631010109, 0, 382, 'https://preparetest.com/mod/quiz/view.php?id=366&forceview=1', ''),
(109, 51, 67, 1, '12.The Solid State', 1631010000, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010068, NULL, 0, 384, 'https://preparetest.com/mod/quiz/view.php?id=365&forceview=1', ''),
(110, 51, 67, 1, '11. Environmental Chemistry', 1631010060, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010163, NULL, 0, 385, 'https://preparetest.com/mod/quiz/view.php?id=363&forceview=1', ''),
(111, 51, 67, 1, '10.Hydrocarbons', 1631010120, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010207, NULL, 0, 386, 'https://preparetest.com/mod/quiz/view.php?id=362&forceview=1', ''),
(112, 51, 67, 1, '9.Organic Chemistry - Some Basic Principles And Techniques', 1631010180, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010253, NULL, 0, 387, 'https://preparetest.com/mod/quiz/view.php?id=325&forceview=1', ''),
(113, 51, 67, 1, '8.Hydrogen', 1631010240, 'Questions', '10', 'Marks', '10', 'Minutes', '10', 1631010305, NULL, 0, 388, 'https://preparetest.com/mod/quiz/view.php?id=312&forceview=1', ''),
(114, 51, 67, 1, '7.Redox reactions', 1631010300, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010353, NULL, 0, 389, 'https://preparetest.com/mod/quiz/view.php?id=309&forceview=1', ''),
(116, 51, 67, 1, '6.Thermodynamics', 1631010420, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010480, NULL, 0, 391, 'https://preparetest.com/mod/quiz/view.php?id=304&forceview=1', ''),
(117, 51, 67, 1, '5.States of Matter', 1631010480, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010526, NULL, 0, 392, 'https://preparetest.com/mod/quiz/view.php?id=299&forceview=1', ''),
(118, 51, 67, 1, '4.Chemical Bonding & Molecular Structure', 1631010480, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010577, NULL, 0, 393, 'https://preparetest.com/mod/quiz/view.php?id=293&forceview=1', ''),
(119, 51, 67, 1, '3.Classification of Elements and Periodicity', 1631010540, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010621, NULL, 0, 394, 'https://preparetest.com/mod/quiz/view.php?id=289&forceview=1', ''),
(120, 51, 67, 1, '2. Structure of Atom', 1631010600, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010685, NULL, 0, 395, 'https://preparetest.com/mod/quiz/view.php?id=286&forceview=1', ''),
(121, 51, 67, 1, '1. Some Basic Concepts of Chemistry', 1631010660, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631010733, NULL, 0, 396, 'https://preparetest.com/mod/quiz/view.php?id=284', ''),
(122, 51, 68, 1, '22. Strategies for Enhancement in food production', 1631088840, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631088934, NULL, 0, 397, 'https://preparetest.com/mod/quiz/view.php?id=313', ''),
(123, 51, 68, 1, '21. Molecular Basis of Inheritance', 1631088900, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631089037, NULL, 0, 398, 'https://preparetest.com/mod/quiz/view.php?id=311', ''),
(124, 51, 68, 1, '20. Principle of Inheritance and Variation', 1631089020, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631089100, NULL, 0, 399, 'https://preparetest.com/mod/quiz/view.php?id=306&forceview=1', ''),
(125, 51, 68, 1, '19. Sexual Reproduction in Flowering Plants', 1631089080, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631089158, NULL, 0, 400, 'https://preparetest.com/mod/quiz/view.php?id=303&forceview=1', ''),
(126, 51, 68, 1, '18. Reproduction in Organisms', 1631089140, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631089239, NULL, 0, 401, 'https://preparetest.com/mod/quiz/view.php?id=300&forceview=1', ''),
(127, 51, 68, 1, '17. Plant Growth and Development', 1631089200, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631089294, NULL, 0, 402, 'https://preparetest.com/mod/quiz/view.php?id=298&forceview=1', ''),
(128, 51, 68, 1, '16. Respiration in Plants', 1631089260, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631089352, NULL, 0, 403, 'https://preparetest.com/mod/quiz/view.php?id=294&forceview=1', ''),
(129, 51, 68, 1, '15. Photosynthesis in higher plants', 1631089320, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631089453, NULL, 0, 404, 'https://preparetest.com/mod/quiz/view.php?id=292', ''),
(130, 51, 68, 1, '14. Mineral Nutrition', 1631089440, 'Questions', '30', 'Marks', '30', 'Minutes', '30', 1631089526, NULL, 0, 405, 'https://preparetest.com/mod/quiz/view.php?id=255&forceview=1', ''),
(131, 51, 68, 1, '13. Transport in Plants', 1631089500, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631089603, NULL, 0, 406, 'https://preparetest.com/mod/quiz/view.php?id=251&forceview=1', ''),
(132, 51, 68, 1, '12. Cell Cycle and Cell Division', 1631089560, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631089661, NULL, 0, 407, 'https://preparetest.com/mod/quiz/view.php?id=249&forceview=1', ''),
(133, 51, 68, 1, '11. Cell : Unit of life', 1631089680, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631089725, NULL, 0, 408, 'https://preparetest.com/mod/quiz/view.php?id=247&forceview=1', ''),
(134, 51, 68, 1, '10. Anatomy of Flowering Plants', 1631089680, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631089779, NULL, 0, 409, 'https://preparetest.com/mod/quiz/view.php?id=245&forceview=1', ''),
(135, 51, 68, 1, ' 9. Morphology of Flowering Plants', 1631089740, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631089829, NULL, 0, 410, 'https://preparetest.com/mod/quiz/view.php?id=243&forceview=1', ''),
(136, 51, 68, 1, ' 8. Plant Kingdom', 1631089800, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631089883, NULL, 0, 411, 'https://preparetest.com/mod/quiz/view.php?id=242&forceview=1', ''),
(137, 51, 68, 1, ' 7. Biological Classification', 1631089860, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631089936, NULL, 0, 412, 'https://preparetest.com/mod/quiz/view.php?id=241&forceview=1', ''),
(138, 51, 68, 1, '6. The Living World', 1631089920, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631089987, NULL, 0, 413, 'https://preparetest.com/mod/quiz/view.php?id=237&forceview=1', ''),
(139, 51, 68, 1, ' 5. Environmental Issues', 1631089980, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631090042, NULL, 0, 414, 'https://preparetest.com/mod/quiz/view.php?id=231&forceview=1', ''),
(140, 51, 68, 1, '4. Biodiversity and Conservation', 1631090040, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631090115, NULL, 0, 415, 'https://preparetest.com/mod/quiz/view.php?id=229', ''),
(141, 51, 68, 1, '3. Ecosystem', 1631090100, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631090164, NULL, 0, 416, 'https://preparetest.com/mod/quiz/view.php?id=226&forceview=1', ''),
(142, 51, 68, 1, '2. Organism and Population', 1631090160, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631090214, NULL, 0, 417, 'https://preparetest.com/mod/quiz/view.php?id=223&forceview=1', ''),
(143, 51, 68, 1, '1. Microbes in Human Welfare', 1631090220, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631090323, NULL, 0, 418, 'https://preparetest.com/mod/quiz/view.php?id=203&forceview=1', ''),
(144, 51, 69, 1, '16.Biotechnology and its applications', 1631090460, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631090549, NULL, 0, 419, 'https://preparetest.com/mod/quiz/view.php?id=271', ''),
(145, 51, 69, 1, '15.Biotechnology : Principles and Processes', 1631090520, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631090605, NULL, 0, 420, 'https://preparetest.com/mod/quiz/view.php?id=267&forceview=1', ''),
(146, 51, 69, 1, '14.Human Health and Disease', 1631090640, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631090774, NULL, 0, 421, 'https://preparetest.com/mod/quiz/view.php?id=261&forceview=1', ''),
(147, 51, 69, 1, '13.Evolution', 1631090880, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631091093, NULL, 0, 422, 'https://preparetest.com/mod/quiz/view.php?id=260&forceview=1', ''),
(148, 51, 69, 1, ' 12.Reproductive Health', 1631091060, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631091142, NULL, 0, 423, 'https://preparetest.com/mod/quiz/view.php?id=258&forceview=1', ''),
(149, 51, 69, 1, '11.Human Reproduction', 1631091120, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631091200, NULL, 0, 424, 'https://preparetest.com/mod/quiz/view.php?id=238&forceview=1', ''),
(150, 51, 69, 1, '10.Chemical Coordination and Integration', 1631091180, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631091247, NULL, 0, 425, 'https://preparetest.com/mod/quiz/view.php?id=257&forceview=1', ''),
(151, 51, 69, 1, '9.Neural Control and Coordination', 1631091240, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631091307, NULL, 0, 426, 'https://preparetest.com/mod/quiz/view.php?id=254&forceview=1', ''),
(152, 51, 69, 1, '8.Locomotion of Movement', 1631092980, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631093076, NULL, 0, 427, 'https://preparetest.com/mod/quiz/view.php?id=252&forceview=1', ''),
(153, 51, 69, 1, '7.Excretory Products and their Elimination', 1631093040, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631093125, NULL, 0, 428, 'https://preparetest.com/mod/quiz/view.php?id=250&forceview=1', ''),
(154, 51, 69, 1, '6.Body Fluids and Circulation', 1631093100, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631093184, NULL, 0, 429, 'https://preparetest.com/mod/quiz/view.php?id=248&forceview=1', ''),
(155, 51, 69, 1, '5.Breathing and Exchange of Gases', 1631093160, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631093262, 1631093296, 0, 430, 'https://preparetest.com/mod/quiz/view.php?id=248&forceview=1', ''),
(156, 51, 69, 1, '4.Digestion and Absorption', 1631093280, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631093367, NULL, 0, 431, 'https://preparetest.com/mod/quiz/view.php?id=230&forceview=1', ''),
(157, 51, 69, 1, ' 3.Biomolecules', 1631093340, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631093431, NULL, 0, 432, 'https://preparetest.com/mod/quiz/view.php?id=244&forceview=1', ''),
(158, 51, 69, 1, '2.Structural organization in animals', 1631093400, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631093488, NULL, 0, 433, 'https://preparetest.com/mod/quiz/view.php?id=204&forceview=1', ''),
(159, 51, 69, 1, '1.Animal Kingdom', 1631093460, 'Questions', '50', 'Marks', '50', 'Minutes', '50', 1631093546, NULL, 0, 434, 'https://preparetest.com/mod/quiz/view.php?id=202&forceview=1', ''),
(164, 60, 73, 0, 'IBPS Office Assistant Practice Paper - I  Exam - Quiz', 1632313440, 'Questions', '100', 'Marks', '125', 'Minutes', '90', 1632313512, 1633007639, 0, 440, 'https://preparetest.com/mod/quiz/view.php?id=511', '250'),
(165, 60, 74, 0, 'IBPS Office Assistant Practice Paper - II Exam - Quiz', 1632313500, 'Questions', '100', 'Marks', '125', 'Minutes', '90', 1632313564, 1633007677, 0, 441, 'https://preparetest.com/mod/quiz/view.php?id=512&forceview=1', '250'),
(166, 60, 75, 0, 'IBPS Office Assistant Practice Paper - III Exam - Quiz', 1632313560, 'Questions', '100', 'Marks', '125', 'Minutes', '90', 1632313612, 1633007702, 0, 442, 'https://preparetest.com/mod/quiz/view.php?id=513&forceview=1', '250'),
(167, 60, 76, 1, 'IBPS Office Assistant Practice Paper - IV Exam - Quiz', 1632313620, 'Questions', '100', 'Marks', '125', 'Minutes', '90', 1632313710, 1632468025, 0, 443, 'https://preparetest.com/mod/quiz/view.php?id=514&forceview=1', ''),
(168, 60, 77, 1, 'IBPS Office Assistant Practice Paper - V  Exam - Quiz', 1632313680, 'Questions', '100', 'Marks', '125', 'Minutes', '90', 1632313764, 1632468050, 0, 444, 'https://preparetest.com/mod/quiz/view.php?id=515&forceview=1', ''),
(169, 60, 78, 1, 'IBPS Office Assistant Practice Papers - VI Exam - Quiz', 1632313740, 'Questions', '100', 'Marks', '125', 'Minutes', '90', 1632313845, 1632468086, 0, 445, 'https://preparetest.com/mod/quiz/view.php?id=516&forceview=1', ''),
(171, 62, 82, 0, 'Circle Seating Arrangement', 1633594680, 'Questions', '20', 'Marks', '20', 'Minutes', '15', 1633594720, 1633594832, 0, 462, '', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_complte_payment`
--

CREATE TABLE `mo_searchda_complte_payment` (
  `id` int NOT NULL,
  `userid` int DEFAULT NULL,
  `base` varchar(200) DEFAULT NULL,
  `baseid` varchar(200) DEFAULT NULL,
  `postid` varchar(200) DEFAULT NULL,
  `payment_type` varchar(200) DEFAULT NULL,
  `createdtime` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_complte_payment`
--

INSERT INTO `mo_searchda_complte_payment` (`id`, `userid`, `base`, `baseid`, `postid`, `payment_type`, `createdtime`) VALUES
(17, 2, 'searchda_ca_quiz', '75', '330', 'free', 1628752911),
(18, 2, 'searchda_quiz', '41', '180', 'free', 1628753449),
(19, 68, 'searchda_quiz', '41', '180', 'payment', 1628769527),
(20, 2, 'searchda_testpaper_quiz', '17', '313', 'free', 1628756778),
(21, 73, 'searchda_quiz', '41', '180', 'free', 1628756970),
(24, 73, 'searchda_quiz', '50', '195', 'free', 1628760730),
(25, 73, 'searchda_ca_quiz', '19', '200', 'free', 1628761194),
(26, 73, 'searchda_quiz', '47', '187', 'free', 1628761329),
(28, 69, 'searchda_quiz', '41', '180', 'free', 1628769093),
(29, 73, 'searchda_quiz', '62', '216', 'free', 1628769854),
(30, 69, 'searchda_quiz', '50', '195', 'free', 1628770852),
(32, 83, 'searchda_quiz', '113', '322', 'free', 1628849005),
(34, 83, 'searchda_quiz', '120', '341', 'payment', 1628855775),
(35, 83, 'searchda_ca_quiz', '76', '345', 'free', 1628857601),
(36, 83, 'searchda_testpaper_quiz', '18', '347', 'free', 1628860565),
(37, 1, 'searchda_quiz', '41', '180', 'free', 1628880686),
(38, 2, 'searchda_quiz', '92', '266', 'free', 1628926383),
(39, 2, 'searchda_quiz', '86', '254', 'free', 1628927823),
(40, 1, 'searchda_quiz', '86', '254', 'free', 1628929361),
(41, 88, 'searchda_quiz', '41', '180', 'free', 1629043498),
(42, 87, 'searchda_quiz', '41', '180', 'free', 1629043540),
(43, 89, 'searchda_ca_quiz', '50', '272', 'free', 1629204549),
(44, 73, 'searchda_ca_quiz', '50', '272', 'free', 1629204850),
(45, 68, 'searchda_ca_quiz', '50', '272', 'free', 1629205061),
(46, 73, 'searchda_ca_quiz', '55', '277', 'free', 1629205288),
(47, 73, 'searchda_quiz', '57', '210', 'free', 1629270524),
(48, 2, 'searchda_quiz', '45', '184', 'free', 1629271355),
(49, 73, 'searchda_quiz', '65', '220', 'free', 1629272238),
(50, 73, 'searchda_quiz', '45', '184', 'free', 1629276201),
(51, 2, 'searchda_ca_quiz', '77', '346', 'free', 1629377198),
(52, 68, 'searchda_ca_quiz', '35', '231', 'free', 1629952615),
(53, 2, 'searchda_ca_quiz', '115', '390', 'free', 1631010423),
(54, 93, 'searchda_quiz', '55', '207', 'free', 1631022415),
(55, 2, 'searchda_ca_quiz', '163', '439', 'free', 1632226463),
(56, 87, 'searchda_ca_quiz', '162', '438', 'free', 1632230252),
(57, 1, 'searchda_ca_quiz', '164', '440', 'free', 1632395173),
(58, 1, 'searchda_quiz', '130', '450', 'free', 1632576448),
(59, 87, 'searchda_quiz', '129', '449', 'free', 1632611975),
(60, 1, 'searchda_ca_quiz', '165', '441', 'free', 1632632730),
(61, 1, 'searchda_quiz', '129', '449', 'free', 1632639120),
(62, 99, 'searchda_ca_quiz', '164', '440', 'free', 1632813541),
(63, 100, 'searchda_quiz', '129', '449', 'free', 1632813927),
(64, 101, 'searchda_ca_quiz', '164', '440', 'free', 1632814585),
(65, 102, 'searchda_quiz', '129', '449', 'free', 1632827673),
(66, 1, 'searchda_ca_quiz', '169', '445', 'free', 1632828881),
(67, 100, 'searchda_ca_quiz', '169', '445', 'free', 1632828935),
(68, 75, 'searchda_quiz', '129', '449', 'free', 1632987098),
(69, 2, 'searchda_quiz', '129', '449', 'free', 1632987754),
(70, 1, 'searchda_quiz', '131', '451', 'free', 1632992363),
(71, 87, 'searchda_ca_quiz', '165', '441', 'free', 1633007641),
(72, 68, 'searchda_quiz', '130', '450', 'payment', 1633083675),
(73, 102, 'searchda_quiz', '132', '453', 'free', 1633083902),
(74, 75, 'searchda_quiz', '132', '453', 'free', 1633158607),
(75, 102, 'searchda_quiz', '41', '180', 'free', 1633159941),
(76, 1, 'searchda_quiz', '132', '453', 'free', 1633352725),
(77, 1, 'searchda_ca_quiz', '170', '458', 'free', 1633415528),
(78, 75, 'searchda_ca_quiz', '35', '231', 'free', 1633416181),
(79, 92, 'searchda_quiz', '41', '180', 'free', 1633429267),
(80, 92, 'searchda_quiz', '62', '216', 'free', 1633429799),
(81, 92, 'searchda_ca_quiz', '19', '200', 'free', 1633430029),
(82, 92, 'searchda_ca_quiz', '81', '356', 'free', 1633430093),
(83, 92, 'searchda_quiz', '132', '453', 'free', 1633430111),
(84, 68, 'searchda_quiz', '132', '453', 'free', 1633496179);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_general`
--

CREATE TABLE `mo_searchda_general` (
  `id` int NOT NULL,
  `postid` int DEFAULT NULL,
  `tablebase` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `tableid` int DEFAULT NULL,
  `section_number` text,
  `no_of_question` text,
  `maximam_marks` text,
  `nagative_marks` text,
  `positive_marks` text,
  `status` int DEFAULT '0',
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_general`
--

INSERT INTO `mo_searchda_general` (`id`, `postid`, `tablebase`, `tableid`, `section_number`, `no_of_question`, `maximam_marks`, `nagative_marks`, `positive_marks`, `status`, `createdtime`, `modifiedtime`) VALUES
(7, 139, 'searchda_quiz', 33, 'Section Number', 'No Of Question', 'Maximam Marks', 'Nagative Marks', 'Positive Markssss', 0, 1627986703, 1628484526),
(8, 141, 'searchda_quiz', 35, 'Section Number', 'No Of Question', 'Maximam Marks', 'Nagative Marks', 'Positive Marksssss', 0, 1628059002, 1628059886),
(9, 313, 'searchda_testpaper_quiz', 17, 'Section Number', 'No Of Question', 'Maximam Marks', 'Nagative Marks', 'Positive Marksssss', 0, 1628510330, NULL),
(10, 180, 'searchda_quiz', 41, 'Section Name', 'No Of Question', 'maximum marks', 'negative marks', 'positive marks', 0, 1628760463, 1628768194),
(11, 231, 'searchda_ca_quiz', 35, 'Section Name', 'No. of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628841384, 1628841470),
(12, 232, 'searchda_ca_quiz', 36, 'Section Name ', 'No. of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628842245, NULL),
(13, 233, 'searchda_ca_quiz', 37, 'Section Name ', 'No. of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628843708, NULL),
(14, 290, 'searchda_quiz', 96, 'Section Name', 'No. of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628856590, NULL),
(15, 266, 'searchda_quiz', 92, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628926204, NULL),
(16, 264, 'searchda_quiz', 91, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628927426, NULL),
(17, 254, 'searchda_quiz', 86, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628927702, NULL),
(18, 258, 'searchda_quiz', 88, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628927901, NULL),
(19, 260, 'searchda_quiz', 89, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628928334, NULL),
(20, 262, 'searchda_quiz', 90, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628928640, NULL),
(21, 297, 'searchda_quiz', 103, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628929738, NULL),
(22, 294, 'searchda_quiz', 100, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628936103, NULL),
(23, 289, 'searchda_quiz', 95, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628936492, NULL),
(24, 299, 'searchda_quiz', 105, 'Section Name', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1628937192, NULL),
(25, 184, 'searchda_quiz', 45, 'Serial Number', 'No Of Question', 'Maximam Marks', 'Nagative Marks', 'Positive Marks', 0, 1629271324, 1629271381),
(26, 437, 'searchda_ca_quiz', 161, 'Section Number', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632209140, 1632210574),
(27, 439, 'searchda_ca_quiz', 163, 'Section Number', 'No of Questions', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632223473, 1632224841),
(28, 438, 'searchda_ca_quiz', 162, 'Section Number', 'No Of Question', 'Maximam Marks', 'Nagative Marks', 'Positive Marks', 0, 1632226049, NULL),
(29, 440, 'searchda_ca_quiz', 164, 'Category', 'No of Questions', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632386385, 1632478520),
(30, 441, 'searchda_ca_quiz', 165, 'Category', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632479014, NULL),
(31, 442, 'searchda_ca_quiz', 166, 'Category', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632479273, NULL),
(32, 443, 'searchda_ca_quiz', 167, 'Category', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632479580, NULL),
(33, 444, 'searchda_ca_quiz', 168, 'Category', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632480175, NULL),
(34, 445, 'searchda_ca_quiz', 169, 'Category', 'No of Questions', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632480670, NULL),
(35, 449, 'searchda_quiz', 129, 'Category', 'No of Questions', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632481594, NULL),
(36, 450, 'searchda_quiz', 130, 'Category', 'No of Questions', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1632481906, NULL),
(37, 453, 'searchda_quiz', 132, 'Category', 'No.Of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1633083012, 1633091445),
(38, 456, 'searchda_quiz', 133, 'Category', 'No Of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1633091494, NULL),
(39, 459, 'searchda_quiz', 134, 'Category', 'No of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1633416704, NULL),
(40, 460, 'searchda_quiz', 135, 'Category', 'No Of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1633503940, 1633504011),
(41, 461, 'searchda_quiz', 136, 'Category', 'No Of Question', 'Maximum Marks', 'Negative Marks', 'Positive Marks', 0, 1633505043, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_general_exam`
--

CREATE TABLE `mo_searchda_general_exam` (
  `id` int NOT NULL,
  `postid` int DEFAULT NULL,
  `tablebase` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `tableid` int DEFAULT NULL,
  `section_number` text,
  `no_of_question` text,
  `maximam_marks` text,
  `nagative_marks` text,
  `positive_marks` text,
  `status` int DEFAULT '0',
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_general_exam`
--

INSERT INTO `mo_searchda_general_exam` (`id`, `postid`, `tablebase`, `tableid`, `section_number`, `no_of_question`, `maximam_marks`, `nagative_marks`, `positive_marks`, `status`, `createdtime`, `modifiedtime`) VALUES
(1, 139, 'searchda_quiz', 33, '10', '9', '8', '7', '6', 1, 1628485018, 1628485662),
(3, 313, 'searchda_testpaper_quiz', 17, '111', '222', '33', '22', '11', 0, 1628510362, NULL),
(4, 180, 'searchda_quiz', 41, 'mathematics', '10', '10', '-', '10', 0, 1628760695, 1628768232),
(5, 180, 'searchda_quiz', 41, 'Aerospace Engineering ', '110', '110', ' -', '110', 0, 1628760819, 1628768262),
(6, 231, 'searchda_ca_quiz', 35, 'Physics Section -A', '35', '140', '1', '4', 0, 1628841521, 1628841614),
(7, 231, 'searchda_ca_quiz', 35, 'Physics Section -B', '10', '40', '1', '4', 0, 1628841568, NULL),
(8, 231, 'searchda_ca_quiz', 35, 'Chemistry section - A', '35', '140', '1', '4', 0, 1628841683, NULL),
(9, 231, 'searchda_ca_quiz', 35, 'Chemistry section - B', '10', '40', '1', '4', 0, 1628841721, 1628841937),
(10, 231, 'searchda_ca_quiz', 35, 'Botany section -A', '35', '140', '1', '4', 0, 1628841787, NULL),
(11, 231, 'searchda_ca_quiz', 35, 'Botany section - B', '10', '40', '1', '4', 0, 1628841823, NULL),
(12, 231, 'searchda_ca_quiz', 35, 'Zoology Section - A', '35', '140', '1', '4', 0, 1628841893, NULL),
(13, 231, 'searchda_ca_quiz', 35, 'Zoology Section - B', '10', '40', '1', '4', 0, 1628841921, NULL),
(14, 232, 'searchda_ca_quiz', 36, 'Physics Section -A', '35', '140', '1', '4', 0, 1628842289, NULL),
(15, 232, 'searchda_ca_quiz', 36, 'Physics Section --B', '10', '40', '1', '4', 0, 1628842338, NULL),
(16, 232, 'searchda_ca_quiz', 36, 'Chemistry Section - A', '35', '140', '1', '4', 0, 1628842401, 1628844312),
(17, 232, 'searchda_ca_quiz', 36, 'Chemistry Section - B', '10', '40', '1', '4', 0, 1628842439, 1628844322),
(18, 232, 'searchda_ca_quiz', 36, 'Botany Section - A', '35', '140', '1', '4', 0, 1628842474, 1628844331),
(19, 232, 'searchda_ca_quiz', 36, 'Botany Section- B', '10', '40', '1', '4', 0, 1628842503, 1628844339),
(20, 232, 'searchda_ca_quiz', 36, 'Zoology Section - A', '35', '140', '1', '4', 0, 1628842537, 1628844347),
(21, 232, 'searchda_ca_quiz', 36, 'Zoology Section - B', '10', '40', '1', '4', 0, 1628842571, 1628844357),
(22, 233, 'searchda_ca_quiz', 37, 'Physics Section - A', '35', '140', '1', '4', 0, 1628843758, 1628844033),
(23, 233, 'searchda_ca_quiz', 37, 'Physics Section - B', '10', '40', '1', '4', 0, 1628843795, 1628844063),
(24, 233, 'searchda_ca_quiz', 37, 'Chemistry Section - A', '35', '140', '1', '4', 0, 1628843839, 1628844072),
(25, 233, 'searchda_ca_quiz', 37, 'Chemistry Section  - B', '10', '40', '1', '4', 0, 1628843901, 1628844081),
(26, 233, 'searchda_ca_quiz', 37, 'Botany Section- A', '35', '140', '1', '4', 0, 1628843932, 1628844089),
(27, 233, 'searchda_ca_quiz', 37, 'Botany Section- B', '10', '40', '1', '4', 0, 1628843955, 1628844097),
(28, 233, 'searchda_ca_quiz', 37, 'Zoology Section - A', '35', '140', '1', '4', 0, 1628843986, 1628844105),
(29, 233, 'searchda_ca_quiz', 37, 'Zoology Section - B', '10', '40', '1', '4', 0, 1628844016, 1628844119),
(30, 290, 'searchda_quiz', 96, 'Physics', '40', '160', '-', '4', 0, 1628856639, NULL),
(31, 290, 'searchda_quiz', 96, 'Chemistry', '40', '160', '-', '4', 0, 1628856677, NULL),
(32, 290, 'searchda_quiz', 96, 'Zoology', '40', '160', '-', '4', 0, 1628856727, NULL),
(33, 290, 'searchda_quiz', 96, 'Botany', '40', '160', '-', '4', 0, 1628856809, NULL),
(34, 266, 'searchda_quiz', 92, 'Current Affairs', '30', '30', '-', '1', 0, 1628926283, NULL),
(35, 266, 'searchda_quiz', 92, 'General Knowledge and Mental Ability', '30', '30', '-', '1', 0, 1628926316, NULL),
(36, 266, 'searchda_quiz', 92, 'Aptitude for the Study of Law', '60', '60', '-', '1', 0, 1628926373, NULL),
(37, 264, 'searchda_quiz', 91, 'General Knowledge and Mental Ability', '30', '30', '-', '1', 0, 1628927473, NULL),
(38, 264, 'searchda_quiz', 91, 'Current Affairs', '30', '30', '-', '1', 0, 1628927494, NULL),
(39, 264, 'searchda_quiz', 91, 'Aptitude for the Study of Law', '60', '60', '-', '1', 0, 1628927518, NULL),
(40, 254, 'searchda_quiz', 86, 'General Knowledge and Mental Ability', '30', '30', '-', '1', 0, 1628927726, NULL),
(41, 254, 'searchda_quiz', 86, 'Current Affairs', '30', '30', '-', '1', 0, 1628927743, NULL),
(42, 254, 'searchda_quiz', 86, 'Aptitude for the Study of Law', '60', '60', '-', '1', 0, 1628927768, NULL),
(43, 258, 'searchda_quiz', 88, 'General Knowledge and Mental Ability	', '30', '30', '-', '1', 0, 1628927924, NULL),
(44, 258, 'searchda_quiz', 88, 'Current Affairs', '30', '30', '-', '1', 0, 1628927943, NULL),
(45, 258, 'searchda_quiz', 88, 'Aptitude for the Study of Law', '60', '60', '-', '1', 0, 1628927966, NULL),
(46, 260, 'searchda_quiz', 89, 'General Knowledge and Mental Ability', '30', '30', '-', '1', 0, 1628928358, NULL),
(47, 260, 'searchda_quiz', 89, 'Current Affairs', '30', '30', '-', '1', 0, 1628928381, NULL),
(48, 260, 'searchda_quiz', 89, 'Aptitude for the Study of Law', '60', '60', '-', '1', 0, 1628928404, NULL),
(49, 262, 'searchda_quiz', 90, 'General Knowledge and Mental Ability', '30', '30', '-', '1', 0, 1628928664, NULL),
(50, 262, 'searchda_quiz', 90, 'Current Affairs', '30', '30', '-', '1', 0, 1628928687, NULL),
(51, 262, 'searchda_quiz', 90, 'Aptitude for the Study of Law', '60', '60', '-', '1', 0, 1628928711, NULL),
(52, 297, 'searchda_quiz', 103, 'General Knowledge and Current Affairs', '30', '30', '-', '1', 0, 1628929787, NULL),
(53, 297, 'searchda_quiz', 103, 'Mental Ability', '30', '30', '-', '1', 0, 1628929814, NULL),
(54, 297, 'searchda_quiz', 103, 'Legal Aptitude', '30', '60', '-', '1', 0, 1628929850, NULL),
(55, 294, 'searchda_quiz', 100, 'General Knowledge and Mental Ability', '30', '30', '-', '1', 0, 1628936162, NULL),
(56, 294, 'searchda_quiz', 100, 'Current Affairs', '30', '30', '-', '1', 0, 1628936222, NULL),
(57, 294, 'searchda_quiz', 100, 'Aptitude for Study of Law', '60', '60', '-', '1 ', 0, 1628936277, NULL),
(58, 289, 'searchda_quiz', 95, 'General Knowledge and Mental Ability', '30', '30', '-', '1', 0, 1628936522, NULL),
(59, 289, 'searchda_quiz', 95, 'Current Affairs', '30', '30', '-', '1', 0, 1628936561, NULL),
(60, 289, 'searchda_quiz', 95, 'Aptitude for Study of Law', '60', '60', '-', '1', 0, 1628936595, NULL),
(61, 299, 'searchda_quiz', 105, 'General Knowledge and Mental Ability', '30', '30', '-', '1', 0, 1628939539, NULL),
(62, 299, 'searchda_quiz', 105, 'Current Affairs', '30', '30', '-', '1', 0, 1628939574, NULL),
(63, 299, 'searchda_quiz', 105, 'Aptitude for Study of Law', '60', '60', '-', '1', 0, 1628939608, NULL),
(64, 439, 'searchda_ca_quiz', 163, ' English', '1-30', '20', '0.25', '1.25', 0, 1632224773, 1632226429),
(65, 439, 'searchda_ca_quiz', 163, 'Quantitative Aptitude', '31-65', '40', '0.25', '1.25', 0, 1632224903, 1632226420),
(66, 437, 'searchda_ca_quiz', 161, 'Quantitative Aptitude', '1-35', '40', '0.25', '1.25', 0, 1632225644, NULL),
(67, 437, 'searchda_ca_quiz', 161, ' REASONING', '36-70', '40', '0.25', '1.25', 0, 1632225737, NULL),
(68, 437, 'searchda_ca_quiz', 161, 'English Language', '71-100', '20', '0.25', '1.25', 0, 1632225806, NULL),
(69, 438, 'searchda_ca_quiz', 162, 'REASONING', '1-35', '40', '0.25', '1.25', 0, 1632226095, NULL),
(70, 438, 'searchda_ca_quiz', 162, 'Quantitative Aptitude', '36-70', '40', '0.25', '1.25', 0, 1632226133, 1632226184),
(71, 438, 'searchda_ca_quiz', 162, ' English Language', '71-100', '20', '0.25', '1.25', 0, 1632226168, NULL),
(72, 439, 'searchda_ca_quiz', 163, 'REASONING', '66-100', '40', '0.25', '1.25', 0, 1632226457, NULL),
(73, 440, 'searchda_ca_quiz', 164, 'Quantitative Aptitude', '(1-35) ', '40', '-2.5', '1.25', 0, 1632386467, 1632478898),
(74, 440, 'searchda_ca_quiz', 164, 'Reasoning', '(36-70)', '42', '-2.5', '1.25', 0, 1632478357, 1632478607),
(75, 440, 'searchda_ca_quiz', 164, 'English Language', '(71-100)', '38', '-2.5', '1.25', 0, 1632478438, 1632478937),
(76, 441, 'searchda_ca_quiz', 165, 'Reasoning', '(1-35)', '43', '-2.5', '1.25', 0, 1632479062, 1632479101),
(77, 441, 'searchda_ca_quiz', 165, 'Quantitative Aptitude', '(36-70)', '42', '-2.5', '1.25', 0, 1632479163, NULL),
(78, 441, 'searchda_ca_quiz', 165, 'English Language', '(71-100) ', '36', '-2.5', '1.25', 0, 1632479221, NULL),
(79, 442, 'searchda_ca_quiz', 166, 'English', '(1-30)', '37', '-2.5', '1.25', 0, 1632479329, NULL),
(80, 442, 'searchda_ca_quiz', 166, 'Quantitative Aptitude ', '(31-65)', '42', '-2.5', '1.25', 0, 1632479380, NULL),
(81, 442, 'searchda_ca_quiz', 166, 'Reasoning', '(66-100) ', '42', '-2.5', '1.25', 0, 1632479433, NULL),
(82, 443, 'searchda_ca_quiz', 167, 'English Language', '(1-30)', '37', '-2.5', '1.25', 0, 1632479633, NULL),
(83, 443, 'searchda_ca_quiz', 167, 'Quantitative Aptitude', '(36-70)', '42', '-2.5', '1.25', 0, 1632479817, NULL),
(84, 443, 'searchda_ca_quiz', 167, 'Reasoning', '(71-100) ', '36', '-2.5', '1.25', 0, 1632480034, NULL),
(85, 444, 'searchda_ca_quiz', 168, 'English ', '(1-30)', '37', '-2.5', '1.25', 0, 1632480304, NULL),
(86, 444, 'searchda_ca_quiz', 168, 'Quantitative Aptitude', '(31-65)', '42', '-2.5', '1.25', 0, 1632480445, NULL),
(87, 444, 'searchda_ca_quiz', 168, 'Reasoning', '(66-100)', '42', '-2.5', '1.25', 0, 1632480493, NULL),
(88, 445, 'searchda_ca_quiz', 169, 'English', '(1-30)', '37', '-2.5', '1.25', 0, 1632480766, NULL),
(89, 445, 'searchda_ca_quiz', 169, 'Quantitative Aptitude', ' (31-65)', '42', '-2.5', '1.25', 0, 1632480810, NULL),
(90, 445, 'searchda_ca_quiz', 169, 'Reasoning', '(66-100)', '42', '-2.5', '1.25', 0, 1632480851, NULL),
(91, 449, 'searchda_quiz', 129, 'English', '(1-30)', '37', '-2.5', '1.25', 0, 1632481707, NULL),
(92, 449, 'searchda_quiz', 129, 'Quantitative Aptitude', '(31-65)', '42', '-2.5', '1.25', 0, 1632481769, NULL),
(93, 449, 'searchda_quiz', 129, 'Reasoning', '(66-100)', '42', '-2.5', '1.25', 0, 1632481827, NULL),
(94, 450, 'searchda_quiz', 130, 'English Language', '(1-30)', '37', '-2.5', '1.25', 0, 1632482000, NULL),
(95, 450, 'searchda_quiz', 130, 'Quantitative Aptitude', '(31-65)', '33', '-2.5', '1.25', 0, 1632482084, NULL),
(96, 450, 'searchda_quiz', 130, 'Reasoning', ' (66-100)', '42', '-2.5', '1.25', 0, 1632482129, NULL),
(97, 453, 'searchda_quiz', 132, 'Reasoning Ability', '1-50', '60', '0.30', '1.2', 0, 1633083091, NULL),
(98, 453, 'searchda_quiz', 132, 'Quantitative aptitude', '51-100', '50', '0.25', '1', 0, 1633083166, NULL),
(99, 453, 'searchda_quiz', 132, 'English Language', '40', '40', '0.25', '1', 0, 1633083217, NULL),
(100, 456, 'searchda_quiz', 133, 'Reasoning Ability', '1-50', '60', '0.30', '1.20', 0, 1633091587, 1633091892),
(101, 456, 'searchda_quiz', 133, 'Quantitative Aptitude', '51-100', '60', '0.25', '1', 0, 1633091644, 1633091847),
(102, 456, 'searchda_quiz', 133, 'English Language', '101-140', '40', '0.25', '1', 0, 1633091714, 1633091905),
(103, 456, 'searchda_quiz', 133, 'General Awareness', '141-190', '50', '0.25', '1', 0, 1633091823, NULL),
(104, 459, 'searchda_quiz', 134, 'Quantitative Aptitude', '1 - 50', '50', '0.25', '1', 0, 1633416762, NULL),
(105, 459, 'searchda_quiz', 134, 'Reasoning Ability', '51-100', '50', '0.30', '1.20', 0, 1633416848, NULL),
(106, 459, 'searchda_quiz', 134, 'General Awareness', '101-150', '50', '0.25', '1', 0, 1633416900, 1633416934),
(107, 460, 'searchda_quiz', 135, 'Reasoning', '1 - 50', '50', '0.30', '1.20', 0, 1633503998, 1633504023),
(108, 460, 'searchda_quiz', 135, 'Quantitative aptitude', '51-100', '50', '0.25', '1', 0, 1633504098, 1633504133),
(109, 460, 'searchda_quiz', 135, 'English', '101-150', '50', '0.25', '1', 0, 1633504166, NULL),
(110, 461, 'searchda_quiz', 136, 'Reasoning Ability ', '1-40', '40', '0.30', '1', 0, 1633505096, 1633505556),
(111, 461, 'searchda_quiz', 136, 'Quantitative Aptitude ', '41-80', '40', '0.25', '1', 0, 1633505130, 1633505260),
(112, 461, 'searchda_quiz', 136, 'English Language', '81-120', '40', '0.25', '1', 0, 1633505320, NULL),
(113, 461, 'searchda_quiz', 136, 'Computer Knowledge', '121 -160', '40', '0.30', '1.20', 0, 1633505464, 1633505480),
(114, 461, 'searchda_quiz', 136, 'General Awarness', '161-200', '40', '0.25', '1', 0, 1633505532, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_general_instruction`
--

CREATE TABLE `mo_searchda_general_instruction` (
  `id` int NOT NULL,
  `title` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_general_instruction`
--

INSERT INTO `mo_searchda_general_instruction` (`id`, `title`) VALUES
(1, 'a:2:{s:4:\"text\";s:57:\"<p dir=\"ltr\" style=\"text-align: left;\"></p><p></p><p></p>\";s:6:\"format\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_header`
--

CREATE TABLE `mo_searchda_header` (
  `id` int NOT NULL,
  `thid` varchar(200) DEFAULT NULL,
  `titleone` varchar(200) DEFAULT NULL,
  `digitone` varchar(200) DEFAULT NULL,
  `titletwo` varchar(200) DEFAULT NULL,
  `digittwo` varchar(200) DEFAULT NULL,
  `titlethree` varchar(200) DEFAULT NULL,
  `digitthree` varchar(200) DEFAULT NULL,
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_header`
--

INSERT INTO `mo_searchda_header` (`id`, `thid`, `titleone`, `digitone`, `titletwo`, `digittwo`, `titlethree`, `digitthree`, `createdtime`, `modifiedtime`) VALUES
(3, '3', 'Tests and Quizzes', '4299', 'Tests Taken', '1112', 'Students Section', '332', 1626859646, 1628150648);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_headerbottom`
--

CREATE TABLE `mo_searchda_headerbottom` (
  `id` int NOT NULL,
  `thid` int DEFAULT NULL,
  `title` text,
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_headerbottom`
--

INSERT INTO `mo_searchda_headerbottom` (`id`, `thid`, `title`, `createdtime`, `modifiedtime`) VALUES
(1, 3, 'Previous Year Papers', NULL, 1628084321),
(3, 4, 'Previous Year Papers', NULL, 1628771796),
(4, 25, 'Previous Year Papers', NULL, 1628250507),
(5, 6, 'Previous Year Papers', NULL, NULL),
(6, 22, 'Previous Year Papers', NULL, NULL),
(7, 23, 'Previous Year Papers', NULL, NULL),
(8, 24, 'Previous Year Papers', NULL, NULL),
(9, 27, 'Previous Year Papers', NULL, NULL),
(10, 29, 'Previous Year Papers', NULL, NULL),
(11, 30, 'Previous Year Papers', NULL, NULL),
(12, 31, 'Previous Year Papers', NULL, NULL),
(13, 36, 'Previous Year Papers', NULL, NULL),
(14, 37, 'Previous Year Papers', NULL, NULL),
(15, 39, 'Previous Year Papers', NULL, NULL),
(16, 38, 'Previous Year Papers', NULL, NULL),
(17, 40, 'Previous Year Papers', NULL, NULL),
(18, 41, 'Previous Year Papers', NULL, NULL),
(19, 42, 'Previous Year Papers', NULL, NULL),
(20, 60, 'Free IBPS Mock Tests', NULL, 1632449706),
(21, 62, 'IBPS Previous Year Papers', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_instruction`
--

CREATE TABLE `mo_searchda_instruction` (
  `id` int NOT NULL,
  `title` longtext,
  `postid` varchar(200) DEFAULT NULL,
  `tablebase` varchar(200) DEFAULT NULL,
  `tableid` varchar(200) DEFAULT NULL,
  `timemodified` bigint DEFAULT NULL,
  `createdtime` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_instruction`
--

INSERT INTO `mo_searchda_instruction` (`id`, `title`, `postid`, `tablebase`, `tableid`, `timemodified`, `createdtime`) VALUES
(7, 'a:2:{s:4:\"text\";s:834:\"<p>1.&nbsp;The duration of the examination is 120&nbsp; min<br></p>\r\n\r\n							<p><span>2.</span>&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p>\r\n							<p><span>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</span></p><p><span>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</span></p>\";s:6:\"format\";s:1:\"1\";}', '321', 'searchda_quiz', '112', 1629189608, 1629189429),
(8, 'a:2:{s:4:\"text\";s:834:\"<p>1.&nbsp;The duration of the examination is 120&nbsp; min<br></p>\r\n\r\n							<p><span>2.</span>&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p>\r\n							<p><span>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</span></p><p><span>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</span></p>\";s:6:\"format\";s:1:\"1\";}', '322', 'searchda_quiz', '113', NULL, 1629191806),
(9, 'a:2:{s:4:\"text\";s:1079:\"<p dir=\"ltr\" style=\"text-align: left;\"><strong><u>Please read the following instructions carefully</u></strong></p><p dir=\"ltr\" style=\"text-align: left;\"><strong><u><br></u></strong></p><p dir=\"ltr\" style=\"text-align: left;\"><span><span style=\"\"><p style=\"\">1.&nbsp;The duration of the examination is 120&nbsp; min<br></p><p style=\"\">2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p style=\"\">3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p style=\"\">4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></span></span></p>\";s:6:\"format\";s:1:\"1\";}', '184', 'searchda_quiz', '45', 1629271279, 1629271116),
(10, 'a:2:{s:4:\"text\";s:825:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is&nbsp; 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '437', 'searchda_ca_quiz', '161', 1632209075, 1632209038),
(11, 'a:2:{s:4:\"text\";s:825:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is&nbsp; 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '438', 'searchda_ca_quiz', '162', NULL, 1632222264),
(12, 'a:2:{s:4:\"text\";s:825:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is&nbsp; 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '439', 'searchda_ca_quiz', '163', NULL, 1632222292),
(13, 'a:2:{s:4:\"text\";s:958:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br><p></p><div><div>your Answer has been Correct</div><div>your Answer has been Correct</div><div>your Answer has been Correct</div></div><br></p>\";s:6:\"format\";s:1:\"1\";}', '440', 'searchda_ca_quiz', '164', 1632803430, 1632386357),
(14, 'a:2:{s:4:\"text\";s:819:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '441', 'searchda_ca_quiz', '165', 1632388006, 1632386657),
(15, 'a:2:{s:4:\"text\";s:819:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '442', 'searchda_ca_quiz', '166', 1632388022, 1632386682),
(16, 'a:2:{s:4:\"text\";s:819:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '443', 'searchda_ca_quiz', '167', 1632388037, 1632386701),
(17, 'a:2:{s:4:\"text\";s:819:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '444', 'searchda_ca_quiz', '168', 1632388065, 1632386727),
(18, 'a:2:{s:4:\"text\";s:819:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '445', 'searchda_ca_quiz', '169', 1632388128, 1632386774),
(19, 'a:2:{s:4:\"text\";s:840:\"<p dir=\"ltr\" style=\"text-align: left;\"><h5>General Instructions</h5><p>The duration of the examination is 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '449', 'searchda_quiz', '129', 1632986970, 1632471078),
(20, 'a:2:{s:4:\"text\";s:823:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 90 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br><br></p>\";s:6:\"format\";s:1:\"1\";}', '450', 'searchda_quiz', '130', NULL, 1632471097),
(21, 'a:2:{s:4:\"text\";s:822:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 160&nbsp; min<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '453', 'searchda_quiz', '132', NULL, 1633082923),
(22, 'a:2:{s:4:\"text\";s:826:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 160&nbsp; Minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '456', 'searchda_quiz', '133', NULL, 1633091400),
(23, 'a:2:{s:4:\"text\";s:826:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 160&nbsp; minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '458', 'searchda_ca_quiz', '170', NULL, 1633352575),
(24, 'a:2:{s:4:\"text\";s:820:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 160 minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '459', 'searchda_quiz', '134', NULL, 1633416655),
(25, 'a:2:{s:4:\"text\";s:826:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 160&nbsp; minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '460', 'searchda_quiz', '135', NULL, 1633503902),
(26, 'a:2:{s:4:\"text\";s:826:\"<p dir=\"ltr\" style=\"text-align: left;\"><p>1.&nbsp;The duration of the examination is 160&nbsp; minutes<br></p><p>2.&nbsp;your clock will be set at the server the count down timer at the top right top corner of the screen will display the remaining time available for you to complete the examination when the timer reaches zero, the examination will end by it self. you need not terminate the examination or submit your paper.</p><p>3. The question palette displayed on the right side of screen will show the status of each question using one of the following symbols :&nbsp;</p><p>4. However, this exam will be conducted with sectional timing, you need a complete a given section in the mentioned time you will be able to proceed to the next section unless you finish the current section in its allotted time frame</p><br></p>\";s:6:\"format\";s:1:\"1\";}', '461', 'searchda_quiz', '136', NULL, 1633505020);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_in_term`
--

CREATE TABLE `mo_searchda_in_term` (
  `id` int NOT NULL,
  `title` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_in_term`
--

INSERT INTO `mo_searchda_in_term` (`id`, `title`) VALUES
(1, 'a:2:{s:4:\"text\";s:524:\"<p dir=\"ltr\" style=\"text-align: left;\">I have and understood the instructions. All computer hardware allotted to me are in proper working condition i declare that i am not in possession of /not carrying any prohibited gadget like mobile phone ,Bluetooth devices etc. ./any prohibited material with me into the examination hall I agree that in case of not adhering to the instructions ,I shall to be debarred from this Test and /or to a disciplinary action, which may include ban from future Tests/Examination&nbsp;&nbsp;</p>\";s:6:\"format\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_quiz`
--

CREATE TABLE `mo_searchda_quiz` (
  `id` int NOT NULL,
  `thid` int DEFAULT NULL,
  `title` text,
  `quiz_type` int DEFAULT '0',
  `duedate` bigint DEFAULT NULL,
  `question` text,
  `qmark` text,
  `mark` text,
  `qumark` text,
  `minute` text,
  `qminute` text,
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL,
  `status` int DEFAULT '0',
  `postid` int DEFAULT NULL,
  `moodleurl` text,
  `price` text,
  `offer` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_quiz`
--

INSERT INTO `mo_searchda_quiz` (`id`, `thid`, `title`, `quiz_type`, `duedate`, `question`, `qmark`, `mark`, `qumark`, `minute`, `qminute`, `createdtime`, `modifiedtime`, `status`, `postid`, `moodleurl`, `price`, `offer`) VALUES
(33, 3, '2020 Previous year paper', 0, 1628057880, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627366746, 1628084425, 0, 139, '', '1', 'Offer'),
(35, 3, 'UP Police ASI Confidential Exam - Quiz 5', 0, 1612937940, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627366819, 1627878006, 1, 141, '', '2', NULL),
(36, 3, 'UP Police ASI Confidential Exam - Quiz', 0, 0, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627371890, 1627881205, 0, 142, '', '12', 'Offer'),
(38, 3, 'UP Police ASI Confidential Exam - Quiz', 0, 0, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627561622, 1627879687, 0, 159, '', '', NULL),
(39, 3, 'UP Police ASI Confidential Exam - Quiz', 0, 1627881120, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627881133, 1627881172, 0, 178, '', '343', 'Offer'),
(40, 3, 'Food Technology Exam - Quiz', 0, 0, 'Question', '20', 'Marks', '20', 'Minute', '', 1628150845, NULL, 0, 179, 'https://preparetest.com/mod/quiz/view.php?id=417', '', ''),
(41, 4, 'Aerospace Engineering(AS) 2020 Exam - Quiz', 1, 1628151300, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628151449, 1629532910, 0, 180, 'https://preparetest.com/mod/quiz/view.php?id=403', '', ''),
(45, 6, 'Architecture & Planning (AR) 2020 Exam - Quiz', 0, 1628153820, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628153879, 1628161133, 0, 184, 'https://preparetest.com/mod/quiz/view.php?id=405', '', ''),
(46, 22, 'Bio-Medical Engineering (BM) 2020 Exam - Quiz', 0, 1628154000, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628154030, 1630142301, 0, 185, 'https://preparetest.com/mod/quiz/view.php?id=409', '', ''),
(47, 23, 'Bio-Technology (BT) 2020 Exam - Quiz', 0, 1628154060, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628154145, 1628161394, 0, 187, 'https://preparetest.com/mod/quiz/view.php?id=410', '', ''),
(48, 24, 'Chemical Engineering (CH) 2020 Exam - Quiz', 0, 1628156040, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628156140, 1630142442, 0, 192, 'https://preparetest.com/mod/quiz/view.php?id=411', '', ''),
(49, 25, 'Civil Engineering. (CE) Exam - Quiz', 0, 1628156280, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628156348, 1630142408, 0, 193, 'https://preparetest.com/mod/quiz/view.php?id=412', '', ''),
(50, 27, 'CS & IT 2020  Exam - Quiz', 0, 1628156820, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628156899, 1628249988, 0, 195, 'https://preparetest.com/mod/quiz/view.php?id=413', '', ''),
(51, 28, 'Electronics & Communication Engg. (EC) Exam - Quiz', 0, 1628157000, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628157092, NULL, 0, 198, 'https://preparetest.com/mod/quiz/view.php?id=415', '', ''),
(52, 29, 'Electronics & Communication Engineering (EC) Exam - Quiz', 0, 1628158020, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628158155, 1630142527, 0, 202, 'https://preparetest.com/mod/quiz/view.php?id=415', '', ''),
(53, 30, 'Environmental Management Exam - Quiz', 0, 1628158380, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628158423, NULL, 0, 203, 'https://preparetest.com/mod/quiz/view.php?id=416', '', ''),
(54, 31, 'Food Technology Exam - Quiz', 0, 1628158860, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628158967, NULL, 0, 204, 'https://preparetest.com/mod/quiz/view.php?id=417', '', ''),
(55, 36, 'Geo-Engg. & Geo-Informatics (GG) Exam - Quiz', 0, 1628160000, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628160076, NULL, 0, 207, 'https://preparetest.com/mod/quiz/view.php?id=418', '', ''),
(56, 37, 'Instrumentation Engineering Exam - Quiz', 0, 1628160120, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628160186, 1630142565, 0, 209, 'https://preparetest.com/mod/quiz/view.php?id=419', '', ''),
(57, 38, 'Mechanica lEngineeringExam - Quiz', 0, 1628160240, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628160273, 1630142633, 0, 210, 'https://preparetest.com/mod/quiz/view.php?id=420', '', ''),
(58, 39, 'Nano-Technology Exam - Quiz', 0, 1628160480, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628160522, NULL, 0, 211, 'https://preparetest.com/mod/quiz/view.php?id=421', '', ''),
(59, 40, 'Pharmacy 2020  Exam - Quiz', 0, 1628160600, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628160644, 1628251405, 0, 212, 'https://preparetest.com/mod/quiz/view.php?id=422', '', ''),
(60, 41, 'Mining Engg 2020 Exam - Quiz', 0, 1628160660, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628160742, 1628251471, 0, 213, 'https://preparetest.com/mod/quiz/view.php?id=423', '', ''),
(61, 42, 'Textile Engineering 2020 Exam - Quiz', 0, 1628160780, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628160856, 1630142720, 0, 214, 'https://preparetest.com/mod/quiz/view.php?id=424', '', ''),
(62, 4, 'Aerospace Engineering (AS) 2019 Exam - Quiz', 0, 1628161020, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628161081, NULL, 0, 216, 'https://preparetest.com/mod/quiz/view.php?id=425', '', ''),
(63, 6, 'Architecture & Planning (AR) 2019Exam - Quiz', 0, 1628161080, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628161178, NULL, 0, 217, 'https://preparetest.com/mod/quiz/view.php?id=426', '', ''),
(64, 22, 'Bio-Medical Engineering (BM) 2019 Exam - Quiz', 0, 1628161200, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628161280, 1630142317, 0, 219, 'https://preparetest.com/mod/quiz/view.php?id=427', '', ''),
(65, 23, 'Bio-Technology (BT) 2019 Exam - Quiz', 0, 1628161320, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628161378, NULL, 0, 220, 'https://preparetest.com/mod/quiz/view.php?id=428', '', ''),
(66, 24, 'Chemical Engineering (CH) 2019 Exam - Quiz', 0, 1628161500, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628161565, 1630142456, 0, 222, 'https://preparetest.com/mod/quiz/view.php?id=429', '', ''),
(72, 44, 'TSTET 2017  year Paper - 1- Quiz', 0, 1628240220, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628240346, NULL, 0, 239, 'https://preparetest.com/mod/quiz/view.php?id=364', '', ''),
(73, 44, 'TS TET 2017 Year Paper - 2- Quiz', 0, 1628240340, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628240467, 1628240532, 0, 240, 'https://preparetest.com/mod/quiz/view.php?id=368', '', ''),
(75, 44, 'TS TET 2014 Year Paper-1- Quiz', 0, 1628240520, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628240624, NULL, 0, 242, 'https://preparetest.com/mod/quiz/view.php?id=371', '', ''),
(76, 44, 'TS TET 2014 Year Paper - 2 - Quiz', 0, 1628240640, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628240738, NULL, 0, 243, 'https://preparetest.com/mod/quiz/view.php?id=382', '', ''),
(77, 44, 'TS TET 2012 Year Paper -1- Quiz', 0, 1628240700, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628240935, NULL, 0, 244, 'https://preparetest.com/mod/quiz/view.php?id=356', '', ''),
(83, 44, 'TS TET 2012 Year Paper -2- Quiz', 0, 1628241900, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628241973, NULL, 0, 250, 'https://preparetest.com/mod/quiz/view.php?id=359', '', ''),
(84, 44, 'TSTET 2011 year Paper - 1 - Quiz', 0, 1628241960, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628242033, NULL, 0, 251, 'https://preparetest.com/mod/quiz/view.php?id=356', '', ''),
(86, 45, 'LAWCET 2018 3 YEAR PAPER', 0, 1628242440, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628242620, 1628243514, 0, 254, 'https://preparetest.com/mod/quiz/view.php?id=240', '', ''),
(87, 45, 'LAWCET 2018 5 YEAR PAPER', 0, 1628242620, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628242783, NULL, 0, 256, 'https://preparetest.com/mod/quiz/view.php?id=329', '', ''),
(88, 45, 'LAWCET 2016 3 YEAR PAPER', 0, 1628242800, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628243042, NULL, 0, 258, 'https://preparetest.com/mod/quiz/view.php?id=339', '', ''),
(89, 45, 'LAWCET 2015 5 YEAR PAPER', 0, 1628243040, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628243138, NULL, 0, 260, 'https://preparetest.com/mod/quiz/view.php?id=336', '', ''),
(90, 45, 'LAWCET 2014 3 YEAR PAPER', 0, 1628243100, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628243267, NULL, 0, 262, 'https://preparetest.com/mod/quiz/view.php?id=351', '', ''),
(91, 45, 'LAWCET 2013 3 YEAR PAPER', 0, 1628243280, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628243379, NULL, 0, 264, 'https://preparetest.com/mod/quiz/view.php?id=345', '', ''),
(92, 45, 'LAWCET 2012 PAPER', 0, 1628243340, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628243489, NULL, 0, 266, 'https://preparetest.com/mod/quiz/view.php?id=342', '', ''),
(94, 47, '2017 year  Question Paper', 0, 1628246820, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628246879, NULL, 0, 288, 'https://preparetest.com/mod/quiz/view.php?id=353&forceview=1', '', ''),
(95, 48, 'LAWCET 3 Years (2019) Question Paper', 0, 1628246700, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628246941, NULL, 0, 289, 'https://preparetest.com/mod/quiz/view.php?id=228', '', ''),
(96, 47, '2016 Question paper  ', 0, 1628246880, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628246958, NULL, 0, 290, 'https://preparetest.com/mod/quiz/view.php?id=349&forceview=1', '', ''),
(97, 47, '2015 Question Paper', 0, 1628246940, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628247020, NULL, 0, 291, 'https://preparetest.com/mod/quiz/view.php?id=340&forceview=1', '', ''),
(98, 47, '2014 Question Paper', 0, 1628247000, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628247083, NULL, 0, 292, 'https://preparetest.com/mod/quiz/view.php?id=333&forceview=1', '', ''),
(99, 47, '2013 Question Paper', 0, 1628247060, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628247123, NULL, 0, 293, 'https://preparetest.com/mod/quiz/view.php?id=328&forceview=1', '', ''),
(100, 48, 'LAWCET 5 Years (2020) Question Paper', 0, 1628247000, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628247163, NULL, 0, 294, 'https://preparetest.com/mod/quiz/view.php?id=381', '', ''),
(101, 47, '2012 Question paper', 0, 1628247120, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628247168, NULL, 0, 295, 'https://preparetest.com/mod/quiz/view.php?id=324&forceview=1', '', ''),
(102, 47, '2011 Question Paper', 0, 1628247120, 'Question', '150', 'Marks', '150', 'Minute', '150', 1628247220, NULL, 0, 296, 'https://preparetest.com/mod/quiz/view.php?id=322&forceview=1', '', ''),
(103, 48, 'LAWCET 3 Years (2020) Question Paper', 0, 1628247120, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628247332, NULL, 0, 297, 'https://preparetest.com/mod/quiz/view.php?id=380', '', ''),
(104, 48, 'LAWCET 5 Years (2019) Question Paper', 0, 1628247300, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628247449, NULL, 0, 298, 'https://preparetest.com/mod/quiz/view.php?id=232', '', ''),
(105, 48, 'LAWCET 5 Years (2018) Question Paper', 0, 1628247480, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628247595, NULL, 0, 299, 'https://preparetest.com/mod/quiz/view.php?id=246', '', ''),
(106, 48, 'LAWCET 3 Years (2016) Question Paper', 0, 1628247600, 'Question', '120', 'Marks', '120', 'Minute', '90', 1628247713, NULL, 0, 300, 'https://preparetest.com/mod/quiz/view.php?id=253', '', ''),
(107, 15, 'Chemistry Exam - Quiz', 0, 1628247900, 'Question', '50', 'Marks', '50', 'Minute', '50', 1628248027, NULL, 0, 301, 'https://preparetest.com/mod/quiz/edit.php?cmid=284', '', ''),
(108, 27, 'CS & IT 2019 Exam - Quiz', 0, 1628249940, 'Question', '120', 'Marks', '120', 'Minute', '120', 1628250045, NULL, 0, 310, 'https://preparetest.com/mod/quiz/view.php?id=431', '', ''),
(129, 60, 'IBPS Office Assistant Practice Paper  Exam - Practice Test - 1', 1, 1632467760, 'Questions', '90', 'Marks', '125', 'Minutes', '90', 1632467893, 1633083171, 0, 449, 'https://preparetest.com/mod/quiz/view.php?id=517&forceview=1', '', 'Free Test'),
(130, 60, 'IBPS Office Assistant Practice Papers Exam - Practice Test -2', 0, 1632470880, 'Questions', '100', 'Marks', '125', 'Minutes', '90', 1632470945, 1633083220, 0, 450, 'https://preparetest.com/mod/quiz/view.php?id=518&forceview=1', '5', ''),
(131, 60, 'IBPS Office Assistant Practice Papers Exam - Practice Test -3', 0, 1632917700, 'Question', '100', 'Marks', '125', 'Minutes', '90', 1632917804, 1633083275, 0, 451, 'https://preparetest.com/mod/quiz/view.php?id=519', '250', ''),
(132, 62, 'IBPS Clerk Previous Year Paper  2019  ', 1, 1633082520, 'Questions', '140', 'Marks', '150', 'Minutes', '160', 1633082708, 1633082788, 0, 453, 'https://preparetest.com/mod/quiz/view.php?id=523', '', 'Free Test'),
(133, 62, 'IBPS Clerk Previous Year Paper 2018', 0, 1633091280, 'Questions', '140', 'Marks', '150', 'Minutes', '160', 1633091342, 1633091994, 0, 456, 'https://preparetest.com/mod/quiz/view.php?id=524', '50', ''),
(134, 62, 'IBPS Clerk Previous Year Paper 2017 Exam - Quiz', 0, 1633416300, 'Questions', '150', 'Marks', '150', 'Minutes', '160', 1633416421, 1633416551, 0, 459, 'https://preparetest.com/mod/quiz/view.php?id=529', '50', ''),
(135, 62, 'IBPS Clerk Previous Year Paper 2016  Exam - Quiz', 0, 1633440960, 'Questions', '140', 'Marks', '150', 'Minutes', '160', 1633441069, 1633441172, 0, 460, 'https://preparetest.com/mod/quiz/view.php?id=535', '50', ''),
(136, 62, 'IBPS Clerk Previous Year Paper 2015 Exam - Quiz', 0, 1633441200, 'Questions', '200', 'Marks', '200', 'Minutes', '160', 1633441376, 1633441478, 0, 461, 'https://preparetest.com/mod/quiz/view.php?id=533', '50', '');

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_quiz_section_ca`
--

CREATE TABLE `mo_searchda_quiz_section_ca` (
  `id` int NOT NULL,
  `thid` int DEFAULT NULL,
  `quizcategories` int DEFAULT NULL,
  `title` text,
  `freetext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `testpaper` text,
  `status` int DEFAULT '0',
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_quiz_section_ca`
--

INSERT INTO `mo_searchda_quiz_section_ca` (`id`, `thid`, `quizcategories`, `title`, `freetext`, `testpaper`, `status`, `createdtime`, `modifiedtime`) VALUES
(1, 3, 1, 'test one', '', '2 Test Paper', 0, 1627634473, 1627636297),
(2, 3, 1, 'test', '1 Free Test', '2 Test Paper', 0, 1627636273, NULL),
(7, 52, 62, 'Mil', '1 Free Test', '8 Test Paper', 0, 1628510642, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_secondc`
--

CREATE TABLE `mo_searchda_secondc` (
  `id` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `status` int DEFAULT '0',
  `contents` longtext,
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL,
  `categoriesid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_secondc`
--

INSERT INTO `mo_searchda_secondc` (`id`, `title`, `status`, `contents`, `createdtime`, `modifiedtime`, `categoriesid`) VALUES
(18, 'Previous Year Papers', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1626420597, NULL, 3),
(24, 'TS TET ', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1626420802, NULL, 5),
(26, 'Title test', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1626761803, NULL, 28),
(29, 'Practice Papers', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628152503, NULL, 30),
(30, 'Previous papers', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628152535, NULL, 30),
(31, 'Chemistry', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628152624, NULL, 30),
(32, 'Physics', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628152659, NULL, 30),
(33, 'Botany', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628152689, NULL, 30),
(34, 'Zoology', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628152714, NULL, 30),
(39, 'AP EAMCET', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628153231, NULL, 4),
(40, 'NEET', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628153236, NULL, 12),
(41, 'TS Lawcet', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628237827, NULL, 6),
(42, 'JIPMER', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628246531, NULL, 12),
(43, 'AP Lawcet', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1628246545, NULL, 6),
(45, 'SSC JE', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1630674426, NULL, 11),
(49, 'IBPS Office Assistant Practice Papers', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1632312736, NULL, 10),
(50, 'IBPS Clerk Previous Year Papers', 0, 'a:2:{s:4:\"text\";s:0:\"\";s:6:\"format\";s:1:\"1\";}', 1633082279, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_sub_quiz`
--

CREATE TABLE `mo_searchda_sub_quiz` (
  `id` int NOT NULL,
  `thid` int DEFAULT NULL,
  `quizcategories` int DEFAULT NULL,
  `quiz_type` int DEFAULT '0',
  `title` text,
  `duedate` bigint DEFAULT NULL,
  `question` text,
  `qmark` text,
  `mark` text,
  `qumark` text,
  `minute` text,
  `qminute` text,
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL,
  `status` int DEFAULT '0',
  `postid` int DEFAULT NULL,
  `moodleurl` text,
  `price` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_sub_quiz`
--

INSERT INTO `mo_searchda_sub_quiz` (`id`, `thid`, `quizcategories`, `quiz_type`, `title`, `duedate`, `question`, `qmark`, `mark`, `qumark`, `minute`, `qminute`, `createdtime`, `modifiedtime`, `status`, `postid`, `moodleurl`, `price`) VALUES
(1, 3, 2, 0, 'UP Police ASI Confidential Exam - Quiz', 0, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627376119, NULL, 0, 158, 'sss', '11');

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_test`
--

CREATE TABLE `mo_searchda_test` (
  `id` int NOT NULL,
  `thid` int DEFAULT NULL,
  `title` text,
  `status` int DEFAULT '0',
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_test`
--

INSERT INTO `mo_searchda_test` (`id`, `thid`, `title`, `status`, `createdtime`, `modifiedtime`) VALUES
(1, 3, 'Practice papers', 0, NULL, 1628084653),
(2, 3, 'Mock Tests Two', 0, NULL, NULL),
(4, 13, 'Practice Paper-I', 0, NULL, 1628153696),
(5, 13, 'Practice Papers-II', 0, NULL, NULL),
(6, 12, 'Test -1', 0, NULL, 1628153827),
(7, 13, 'Practice Paper-III', 0, NULL, NULL),
(8, 12, 'Test -2', 0, NULL, 1628157541),
(9, 13, 'Practice Paper-IV', 0, NULL, NULL),
(10, 13, 'Practice Paper-V', 0, NULL, NULL),
(11, 12, 'Test -3', 0, NULL, 1628156969),
(12, 12, 'Test -4', 0, NULL, NULL),
(13, 33, 'Set -1', 0, NULL, 1628159206),
(14, 33, 'Set -2', 0, NULL, NULL),
(15, 35, 'Set -1', 0, NULL, NULL),
(16, 35, 'Set -2', 0, NULL, NULL),
(17, 34, 'Set -1', 0, NULL, NULL),
(18, 34, 'Set -2', 0, NULL, NULL),
(19, 34, 'Set -3', 0, NULL, NULL),
(20, 11, 'NEET 2020 EXAM  PAPER', 0, NULL, NULL),
(21, 11, 'NEET 2019 EXAM PAPER', 0, NULL, NULL),
(22, 11, 'NEET 2018 EXAM PAPER', 0, NULL, NULL),
(23, 44, '', 0, NULL, 1628247391),
(24, 44, '', 0, NULL, 1628247400),
(25, 44, '', 0, NULL, 1628247410),
(26, 44, '', 0, NULL, 1628247417),
(27, 44, '', 0, NULL, 1628247425),
(28, 44, '', 0, NULL, 1628247432),
(29, 44, '', 0, NULL, 1628247441),
(30, 44, '', 0, NULL, 1628247451),
(31, 45, '', 0, NULL, 1628244793),
(32, 45, '', 0, NULL, 1628244812),
(33, 45, '', 0, NULL, 1628244825),
(34, 45, '', 1, NULL, 1628245090),
(35, 45, '', 0, NULL, 1628244877),
(36, 45, '', 0, NULL, 1628244893),
(37, 45, '', 0, NULL, 1628244906),
(38, 43, 'Practice Paper -1', 0, NULL, 1628245447),
(39, 43, 'Practice Paper -2', 0, NULL, NULL),
(40, 46, 'Practice Paper -1', 0, NULL, NULL),
(41, 46, 'Practice Paper - 2', 0, NULL, NULL),
(42, 43, 'Practice Paper -3', 0, NULL, 1628245509),
(43, 46, 'Practice Paper -3', 0, NULL, NULL),
(44, 46, 'Practice Paper -4', 0, NULL, NULL),
(45, 43, 'Practice Paper -4', 0, NULL, NULL),
(46, 46, 'Practice Paper - 5', 0, NULL, 1628245546),
(47, 43, 'Practice Paper -5', 0, NULL, NULL),
(48, 43, 'Practice Paper -6', 0, NULL, NULL),
(49, 46, 'Practice Paper -6', 0, NULL, NULL),
(50, 43, 'Practice Paper -7', 0, NULL, NULL),
(51, 46, 'Practice Paper -7', 0, NULL, 1628246043),
(52, 46, 'Practice Paper -8', 0, NULL, NULL),
(53, 49, 'Practice Paper -1', 0, NULL, NULL),
(54, 49, 'Practice Paper -2', 0, NULL, NULL),
(55, 49, 'Practice Paper -3', 0, NULL, NULL),
(56, 49, 'Practice Paper -4', 0, NULL, NULL),
(57, 50, 'Practice Paper - 1', 0, NULL, 1628248726),
(58, 50, 'Practice Paper - 2', 0, NULL, NULL),
(59, 50, 'Practice Paper -3', 0, NULL, NULL),
(60, 50, 'Practice Paper - 4', 0, NULL, NULL),
(61, 52, 'test exam', 0, NULL, 1628492653),
(62, 52, 'New testst demo', 0, NULL, NULL),
(63, 54, 'Mechanical Engineering', 0, NULL, 1630755030),
(64, 54, 'Electrical Engineering', 0, NULL, NULL),
(65, 54, 'Civil Engineering', 0, NULL, NULL),
(66, 51, 'Physics', 0, NULL, 1631093853),
(67, 51, 'Chemistry', 0, NULL, NULL),
(68, 51, 'Botany', 0, NULL, NULL),
(69, 51, 'Zoology', 0, NULL, NULL),
(70, 57, 'Test', 0, NULL, 1632295553),
(71, 57, 'Practice Papers', 0, NULL, 1632222398),
(72, 59, 'Practice Papers', 0, NULL, NULL),
(73, 60, 'Practice Paper - I', 0, NULL, 1632313325),
(74, 60, 'Practice Paper- II', 0, NULL, 1632313336),
(75, 60, 'Practice Paper- III', 0, NULL, NULL),
(76, 60, 'Practice Paper- IV', 0, NULL, NULL),
(77, 60, 'Practice Paper- V', 0, NULL, 1632313424),
(78, 60, 'Practice Paper- VI', 0, NULL, NULL),
(82, 62, 'Reasoning Aptitude', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_testcomeing`
--

CREATE TABLE `mo_searchda_testcomeing` (
  `id` int NOT NULL,
  `title` text,
  `status` int DEFAULT '0',
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL,
  `thid` int DEFAULT NULL,
  `quizcategories` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_testcomeing`
--

INSERT INTO `mo_searchda_testcomeing` (`id`, `title`, `status`, `createdtime`, `modifiedtime`, `thid`, `quizcategories`) VALUES
(1, 'More Tests are Comming Soon', 0, 1627888165, NULL, 3, 2),
(2, 'commmm', 0, 1628510701, NULL, 52, 61);

-- --------------------------------------------------------

--
-- Table structure for table `mo_searchda_testpaper_quiz`
--

CREATE TABLE `mo_searchda_testpaper_quiz` (
  `id` int NOT NULL,
  `thid` int DEFAULT NULL,
  `quizcategories` int DEFAULT NULL,
  `testpaperid` int DEFAULT NULL,
  `quiz_type` int DEFAULT '0',
  `title` text,
  `duedate` bigint DEFAULT NULL,
  `question` text,
  `qmark` text,
  `mark` text,
  `qumark` text,
  `minute` text,
  `qminute` text,
  `createdtime` bigint DEFAULT NULL,
  `modifiedtime` bigint DEFAULT NULL,
  `status` int DEFAULT '0',
  `postid` int DEFAULT NULL,
  `moodleurl` text,
  `price` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mo_searchda_testpaper_quiz`
--

INSERT INTO `mo_searchda_testpaper_quiz` (`id`, `thid`, `quizcategories`, `testpaperid`, `quiz_type`, `title`, `duedate`, `question`, `qmark`, `mark`, `qumark`, `minute`, `qminute`, `createdtime`, `modifiedtime`, `status`, `postid`, `moodleurl`, `price`) VALUES
(9, 3, 1, 2, 1, 'UP Police ASI Confidential Exam - Quiz test', 1627644480, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627644554, NULL, 0, 168, '', '111'),
(10, 3, 1, 1, 1, 'UP Police ASI Confidential Exam - Quiz', 1627645620, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627645656, NULL, 1, 169, '', '444'),
(11, 3, 1, 1, 0, 'UP Police ASI Confidential Exam - Quiz test', 1627645620, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627645672, NULL, 0, 170, '', '333'),
(16, 3, 3, 5, 1, 'UP Police ASI Confidential Exam - Quiz', 1627730820, 'Question', '20', 'Marks', '20', 'Minute', '20', 1627730883, NULL, 0, 177, '', '343');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mo_repository_instance_config`
--
ALTER TABLE `mo_repository_instance_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_repository_onedrive_access`
--
ALTER TABLE `mo_repository_onedrive_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_repoonedacce_use_ix` (`usermodified`);

--
-- Indexes for table `mo_resource`
--
ALTER TABLE `mo_resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_reso_cou_ix` (`course`);

--
-- Indexes for table `mo_resource_old`
--
ALTER TABLE `mo_resource_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_resoold_old_uix` (`oldid`),
  ADD KEY `mo_resoold_cmi_ix` (`cmid`);

--
-- Indexes for table `mo_role`
--
ALTER TABLE `mo_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_role_sor_uix` (`sortorder`),
  ADD UNIQUE KEY `mo_role_sho_uix` (`shortname`);

--
-- Indexes for table `mo_role_allow_assign`
--
ALTER TABLE `mo_role_allow_assign`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_rolealloassi_rolall_uix` (`roleid`,`allowassign`),
  ADD KEY `mo_rolealloassi_rol_ix` (`roleid`),
  ADD KEY `mo_rolealloassi_all_ix` (`allowassign`);

--
-- Indexes for table `mo_role_allow_override`
--
ALTER TABLE `mo_role_allow_override`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_rolealloover_rolall_uix` (`roleid`,`allowoverride`),
  ADD KEY `mo_rolealloover_rol_ix` (`roleid`),
  ADD KEY `mo_rolealloover_all_ix` (`allowoverride`);

--
-- Indexes for table `mo_role_allow_switch`
--
ALTER TABLE `mo_role_allow_switch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_rolealloswit_rolall_uix` (`roleid`,`allowswitch`),
  ADD KEY `mo_rolealloswit_rol_ix` (`roleid`),
  ADD KEY `mo_rolealloswit_all_ix` (`allowswitch`);

--
-- Indexes for table `mo_role_allow_view`
--
ALTER TABLE `mo_role_allow_view`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_rolealloview_rolall_uix` (`roleid`,`allowview`),
  ADD KEY `mo_rolealloview_rol_ix` (`roleid`),
  ADD KEY `mo_rolealloview_all_ix` (`allowview`);

--
-- Indexes for table `mo_role_assignments`
--
ALTER TABLE `mo_role_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_roleassi_sor_ix` (`sortorder`),
  ADD KEY `mo_roleassi_rolcon_ix` (`roleid`,`contextid`),
  ADD KEY `mo_roleassi_useconrol_ix` (`userid`,`contextid`,`roleid`),
  ADD KEY `mo_roleassi_comiteuse_ix` (`component`,`itemid`,`userid`),
  ADD KEY `mo_roleassi_rol_ix` (`roleid`),
  ADD KEY `mo_roleassi_con_ix` (`contextid`),
  ADD KEY `mo_roleassi_use_ix` (`userid`);

--
-- Indexes for table `mo_role_capabilities`
--
ALTER TABLE `mo_role_capabilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_rolecapa_rolconcap_uix` (`roleid`,`contextid`,`capability`),
  ADD KEY `mo_rolecapa_rol_ix` (`roleid`),
  ADD KEY `mo_rolecapa_con_ix` (`contextid`),
  ADD KEY `mo_rolecapa_mod_ix` (`modifierid`),
  ADD KEY `mo_rolecapa_cap_ix` (`capability`);

--
-- Indexes for table `mo_role_context_levels`
--
ALTER TABLE `mo_role_context_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_rolecontleve_conrol_uix` (`contextlevel`,`roleid`),
  ADD KEY `mo_rolecontleve_rol_ix` (`roleid`);

--
-- Indexes for table `mo_role_names`
--
ALTER TABLE `mo_role_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_rolename_rolcon_uix` (`roleid`,`contextid`),
  ADD KEY `mo_rolename_rol_ix` (`roleid`),
  ADD KEY `mo_rolename_con_ix` (`contextid`);

--
-- Indexes for table `mo_scale`
--
ALTER TABLE `mo_scale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_scal_cou_ix` (`courseid`);

--
-- Indexes for table `mo_scale_history`
--
ALTER TABLE `mo_scale_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_scalhist_act_ix` (`action`),
  ADD KEY `mo_scalhist_tim_ix` (`timemodified`),
  ADD KEY `mo_scalhist_old_ix` (`oldid`),
  ADD KEY `mo_scalhist_cou_ix` (`courseid`),
  ADD KEY `mo_scalhist_log_ix` (`loggeduser`);

--
-- Indexes for table `mo_scorm`
--
ALTER TABLE `mo_scorm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_scor_cou_ix` (`course`);

--
-- Indexes for table `mo_scorm_aicc_session`
--
ALTER TABLE `mo_scorm_aicc_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_scoraiccsess_sco_ix` (`scormid`),
  ADD KEY `mo_scoraiccsess_use_ix` (`userid`);

--
-- Indexes for table `mo_scorm_scoes`
--
ALTER TABLE `mo_scorm_scoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_scorscoe_sco_ix` (`scorm`);

--
-- Indexes for table `mo_scorm_scoes_data`
--
ALTER TABLE `mo_scorm_scoes_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_scorscoedata_sco_ix` (`scoid`);

--
-- Indexes for table `mo_scorm_scoes_track`
--
ALTER TABLE `mo_scorm_scoes_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_scorscoetrac_usescoscoa_uix` (`userid`,`scormid`,`scoid`,`attempt`,`element`),
  ADD KEY `mo_scorscoetrac_use_ix` (`userid`),
  ADD KEY `mo_scorscoetrac_sco_ix` (`scormid`),
  ADD KEY `mo_scorscoetrac_sco2_ix` (`scoid`);

--
-- Indexes for table `mo_scorm_seq_mapinfo`
--
ALTER TABLE `mo_scorm_seq_mapinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_scorseqmapi_scoidobj_uix` (`scoid`,`id`,`objectiveid`),
  ADD KEY `mo_scorseqmapi_sco_ix` (`scoid`),
  ADD KEY `mo_scorseqmapi_obj_ix` (`objectiveid`);

--
-- Indexes for table `mo_scorm_seq_objective`
--
ALTER TABLE `mo_scorm_seq_objective`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_scorseqobje_scoid_uix` (`scoid`,`id`),
  ADD KEY `mo_scorseqobje_sco_ix` (`scoid`);

--
-- Indexes for table `mo_scorm_seq_rolluprule`
--
ALTER TABLE `mo_scorm_seq_rolluprule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_scorseqroll_scoid_uix` (`scoid`,`id`),
  ADD KEY `mo_scorseqroll_sco_ix` (`scoid`);

--
-- Indexes for table `mo_scorm_seq_rolluprulecond`
--
ALTER TABLE `mo_scorm_seq_rolluprulecond`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_scorseqroll_scorolid_uix` (`scoid`,`rollupruleid`,`id`),
  ADD KEY `mo_scorseqroll_sco2_ix` (`scoid`),
  ADD KEY `mo_scorseqroll_rol_ix` (`rollupruleid`);

--
-- Indexes for table `mo_scorm_seq_rulecond`
--
ALTER TABLE `mo_scorm_seq_rulecond`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_scorseqrule_idscorul_uix` (`id`,`scoid`,`ruleconditionsid`),
  ADD KEY `mo_scorseqrule_sco2_ix` (`scoid`),
  ADD KEY `mo_scorseqrule_rul_ix` (`ruleconditionsid`);

--
-- Indexes for table `mo_scorm_seq_ruleconds`
--
ALTER TABLE `mo_scorm_seq_ruleconds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_scorseqrule_scoid_uix` (`scoid`,`id`),
  ADD KEY `mo_scorseqrule_sco_ix` (`scoid`);

--
-- Indexes for table `mo_searchda_categories`
--
ALTER TABLE `mo_searchda_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_ca_quiz`
--
ALTER TABLE `mo_searchda_ca_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_complte_payment`
--
ALTER TABLE `mo_searchda_complte_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_general`
--
ALTER TABLE `mo_searchda_general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_general_exam`
--
ALTER TABLE `mo_searchda_general_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_general_instruction`
--
ALTER TABLE `mo_searchda_general_instruction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_header`
--
ALTER TABLE `mo_searchda_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_headerbottom`
--
ALTER TABLE `mo_searchda_headerbottom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_instruction`
--
ALTER TABLE `mo_searchda_instruction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_in_term`
--
ALTER TABLE `mo_searchda_in_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_quiz`
--
ALTER TABLE `mo_searchda_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_quiz_section_ca`
--
ALTER TABLE `mo_searchda_quiz_section_ca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_secondc`
--
ALTER TABLE `mo_searchda_secondc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_sub_quiz`
--
ALTER TABLE `mo_searchda_sub_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_test`
--
ALTER TABLE `mo_searchda_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_testcomeing`
--
ALTER TABLE `mo_searchda_testcomeing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_searchda_testpaper_quiz`
--
ALTER TABLE `mo_searchda_testpaper_quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mo_repository_instance_config`
--
ALTER TABLE `mo_repository_instance_config`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_repository_onedrive_access`
--
ALTER TABLE `mo_repository_onedrive_access`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_resource`
--
ALTER TABLE `mo_resource`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mo_resource_old`
--
ALTER TABLE `mo_resource_old`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_role`
--
ALTER TABLE `mo_role`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mo_role_allow_assign`
--
ALTER TABLE `mo_role_allow_assign`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mo_role_allow_override`
--
ALTER TABLE `mo_role_allow_override`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mo_role_allow_switch`
--
ALTER TABLE `mo_role_allow_switch`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mo_role_allow_view`
--
ALTER TABLE `mo_role_allow_view`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mo_role_assignments`
--
ALTER TABLE `mo_role_assignments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `mo_role_capabilities`
--
ALTER TABLE `mo_role_capabilities`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1589;

--
-- AUTO_INCREMENT for table `mo_role_context_levels`
--
ALTER TABLE `mo_role_context_levels`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `mo_role_names`
--
ALTER TABLE `mo_role_names`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mo_scale`
--
ALTER TABLE `mo_scale`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mo_scale_history`
--
ALTER TABLE `mo_scale_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm`
--
ALTER TABLE `mo_scorm`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_aicc_session`
--
ALTER TABLE `mo_scorm_aicc_session`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_scoes`
--
ALTER TABLE `mo_scorm_scoes`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_scoes_data`
--
ALTER TABLE `mo_scorm_scoes_data`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_scoes_track`
--
ALTER TABLE `mo_scorm_scoes_track`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_seq_mapinfo`
--
ALTER TABLE `mo_scorm_seq_mapinfo`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_seq_objective`
--
ALTER TABLE `mo_scorm_seq_objective`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_seq_rolluprule`
--
ALTER TABLE `mo_scorm_seq_rolluprule`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_seq_rolluprulecond`
--
ALTER TABLE `mo_scorm_seq_rolluprulecond`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_seq_rulecond`
--
ALTER TABLE `mo_scorm_seq_rulecond`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_scorm_seq_ruleconds`
--
ALTER TABLE `mo_scorm_seq_ruleconds`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_searchda_categories`
--
ALTER TABLE `mo_searchda_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mo_searchda_ca_quiz`
--
ALTER TABLE `mo_searchda_ca_quiz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `mo_searchda_complte_payment`
--
ALTER TABLE `mo_searchda_complte_payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `mo_searchda_general`
--
ALTER TABLE `mo_searchda_general`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `mo_searchda_general_exam`
--
ALTER TABLE `mo_searchda_general_exam`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `mo_searchda_general_instruction`
--
ALTER TABLE `mo_searchda_general_instruction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mo_searchda_header`
--
ALTER TABLE `mo_searchda_header`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mo_searchda_headerbottom`
--
ALTER TABLE `mo_searchda_headerbottom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mo_searchda_instruction`
--
ALTER TABLE `mo_searchda_instruction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `mo_searchda_in_term`
--
ALTER TABLE `mo_searchda_in_term`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mo_searchda_quiz`
--
ALTER TABLE `mo_searchda_quiz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `mo_searchda_quiz_section_ca`
--
ALTER TABLE `mo_searchda_quiz_section_ca`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mo_searchda_secondc`
--
ALTER TABLE `mo_searchda_secondc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `mo_searchda_sub_quiz`
--
ALTER TABLE `mo_searchda_sub_quiz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mo_searchda_test`
--
ALTER TABLE `mo_searchda_test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `mo_searchda_testcomeing`
--
ALTER TABLE `mo_searchda_testcomeing`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mo_searchda_testpaper_quiz`
--
ALTER TABLE `mo_searchda_testpaper_quiz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
