-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2021 at 06:45 AM
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
-- Table structure for table `mo_ltiservice_gradebookservices`
--

CREATE TABLE `mo_ltiservice_gradebookservices` (
  `id` bigint NOT NULL,
  `gradeitemid` bigint NOT NULL,
  `courseid` bigint NOT NULL,
  `toolproxyid` bigint DEFAULT NULL,
  `typeid` bigint DEFAULT NULL,
  `baseurl` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ltilinkid` bigint DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `resourceid` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='This file records the grade items created by the LTI Gradebo';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message`
--

CREATE TABLE `mo_message` (
  `id` bigint NOT NULL,
  `useridfrom` bigint NOT NULL DEFAULT '0',
  `useridto` bigint NOT NULL DEFAULT '0',
  `subject` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fullmessage` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fullmessageformat` smallint DEFAULT '0',
  `fullmessagehtml` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `smallmessage` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `notification` tinyint(1) DEFAULT '0',
  `contexturl` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contexturlname` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timeuserfromdeleted` bigint NOT NULL DEFAULT '0',
  `timeusertodeleted` bigint NOT NULL DEFAULT '0',
  `component` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `eventtype` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customdata` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores all unread messages';

-- --------------------------------------------------------

--
-- Table structure for table `mo_messageinbound_datakeys`
--

CREATE TABLE `mo_messageinbound_datakeys` (
  `id` bigint NOT NULL,
  `handler` bigint NOT NULL,
  `datavalue` bigint NOT NULL,
  `datakey` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `expires` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Inbound Message data item secret keys.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_messageinbound_handlers`
--

CREATE TABLE `mo_messageinbound_handlers` (
  `id` bigint NOT NULL,
  `component` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defaultexpiration` bigint NOT NULL DEFAULT '86400',
  `validateaddress` tinyint(1) NOT NULL DEFAULT '1',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Inbound Message Handler definitions.';

--
-- Dumping data for table `mo_messageinbound_handlers`
--

INSERT INTO `mo_messageinbound_handlers` (`id`, `component`, `classname`, `defaultexpiration`, `validateaddress`, `enabled`) VALUES
(1, 'core', '\\core\\message\\inbound\\private_files_handler', 0, 1, 0),
(2, 'mod_forum', '\\mod_forum\\message\\inbound\\reply_handler', 604800, 1, 0),
(3, 'tool_messageinbound', '\\tool_messageinbound\\message\\inbound\\invalid_recipient_handler', 604800, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_messageinbound_messagelist`
--

CREATE TABLE `mo_messageinbound_messagelist` (
  `id` bigint NOT NULL,
  `messageid` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `userid` bigint NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='A list of message IDs for existing replies';

-- --------------------------------------------------------

--
-- Table structure for table `mo_messages`
--

CREATE TABLE `mo_messages` (
  `id` bigint NOT NULL,
  `useridfrom` bigint NOT NULL,
  `conversationid` bigint NOT NULL,
  `subject` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fullmessage` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fullmessageformat` tinyint(1) NOT NULL DEFAULT '0',
  `fullmessagehtml` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `smallmessage` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timecreated` bigint NOT NULL,
  `fullmessagetrust` tinyint NOT NULL DEFAULT '0',
  `customdata` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores all messages';

--
-- Dumping data for table `mo_messages`
--

INSERT INTO `mo_messages` (`id`, `useridfrom`, `conversationid`, `subject`, `fullmessage`, `fullmessageformat`, `fullmessagehtml`, `smallmessage`, `timecreated`, `fullmessagetrust`, `customdata`) VALUES
(1, 2, 2, 'New message from Site Owner', 'Hi RSP', 0, '', 'Hi RSP', 1600875987, 0, '{\"notificationiconurl\":\"http:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1600184169\\/u\\/f1\",\"actionbuttons\":{\"send\":\"Send\"},\"placeholders\":{\"send\":\"Write a message...\"},\"courseid\":1}'),
(2, 2, 5, 'New message from Site Owner', 'I noticed that you have not accessed any course for the last 7 days. Please explain.', 0, '', 'I noticed that you have not accessed any course for the last 7 days. Please explain.', 1610461538, 0, '{\"notificationiconurl\":\"http:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1607631445\\/u\\/f1\",\"actionbuttons\":{\"send\":\"Send\"},\"placeholders\":{\"send\":\"Write a message...\"},\"courseid\":1}'),
(3, 2, 6, 'New message from Site Owner', 'BigBlueButtonBN LIVE INTERACTION ON WAVE OPTICS [1] has been Added.\n\nDetails:		Title:		 Live interaction on Wave optics		Description:				Start\ndate:		 Today at 11:40 AM		End date:		 Today at 12:00 PM		Added by:		 Site\nOwner\n\n-------------------------\nThis automatic notification message was sent by Site Owner from the course\n1st year 1st Semester CIVIL.\n\n\nLinks:\n------\n[1] http://preparetest.com/mod/bigbluebuttonbn/view.php?id=117\n', 1, '<p>BigBlueButtonBN <b><a href=\"http://preparetest.com/mod/bigbluebuttonbn/view.php?id=117\">Live interaction on  Wave optics</a></b> has been Added.</p>\n<p>Details:\n<table border=\"0\" style=\"margin: 5px 0 0 20px\"><tbody>\n<tr><td style=\"font-weight:bold;color:#555;\">Title: </td><td>\nLive interaction on  Wave optics</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Description: </td><td>\n</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Start date: </td><td>\nToday at 11:40 AM</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">End date: </td><td>\nToday at 12:00 PM</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Added by: </td><td>\nSite Owner</td></tr></tbody></table></p>\n<p><hr/><br/>This automatic notification message was sent by Site Owner from the course 1st year 1st Semester  CIVIL.</p>', '<p>BigBlueButtonBN <b><a href=\"http://preparetest.com/mod/bigbluebuttonbn/view.php?id=117\">Live interaction on  Wave optics</a></b> has been Added.</p>\n<p>Details:\n<table border=\"0\" style=\"margin: 5px 0 0 20px\"><tbody>\n<tr><td style=\"font-weight:bold;color:#555;\">Title: </td><td>\nLive interaction on  Wave optics</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Description: </td><td>\n</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Start date: </td><td>\nToday at 11:40 AM</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">End date: </td><td>\nToday at 12:00 PM</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Added by: </td><td>\nSite Owner</td></tr></tbody></table></p>\n<p><hr/><br/>This automatic notification message was sent by Site Owner from the course 1st year 1st Semester  CIVIL.</p>', 1610518061, 0, '{\"notificationiconurl\":\"http:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1607631445\\/u\\/f1\",\"actionbuttons\":{\"send\":\"Send\"},\"placeholders\":{\"send\":\"Write a message...\"},\"courseid\":1}'),
(4, 2, 7, 'New message from Site Owner', 'BigBlueButtonBN LIVE INTERACTION ON WAVE OPTICS [1] has been Added.\n\nDetails:		Title:		 Live interaction on Wave optics		Description:				Start\ndate:		 Today at 11:40 AM		End date:		 Today at 12:00 PM		Added by:		 Site\nOwner\n\n-------------------------\nThis automatic notification message was sent by Site Owner from the course\n1st year 1st Semester CIVIL.\n\n\nLinks:\n------\n[1] http://preparetest.com/mod/bigbluebuttonbn/view.php?id=117\n', 1, '<p>BigBlueButtonBN <b><a href=\"http://preparetest.com/mod/bigbluebuttonbn/view.php?id=117\">Live interaction on  Wave optics</a></b> has been Added.</p>\n<p>Details:\n<table border=\"0\" style=\"margin: 5px 0 0 20px\"><tbody>\n<tr><td style=\"font-weight:bold;color:#555;\">Title: </td><td>\nLive interaction on  Wave optics</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Description: </td><td>\n</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Start date: </td><td>\nToday at 11:40 AM</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">End date: </td><td>\nToday at 12:00 PM</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Added by: </td><td>\nSite Owner</td></tr></tbody></table></p>\n<p><hr/><br/>This automatic notification message was sent by Site Owner from the course 1st year 1st Semester  CIVIL.</p>', '<p>BigBlueButtonBN <b><a href=\"http://preparetest.com/mod/bigbluebuttonbn/view.php?id=117\">Live interaction on  Wave optics</a></b> has been Added.</p>\n<p>Details:\n<table border=\"0\" style=\"margin: 5px 0 0 20px\"><tbody>\n<tr><td style=\"font-weight:bold;color:#555;\">Title: </td><td>\nLive interaction on  Wave optics</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Description: </td><td>\n</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Start date: </td><td>\nToday at 11:40 AM</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">End date: </td><td>\nToday at 12:00 PM</td></tr>\n<tr><td style=\"font-weight:bold;color:#555;\">Added by: </td><td>\nSite Owner</td></tr></tbody></table></p>\n<p><hr/><br/>This automatic notification message was sent by Site Owner from the course 1st year 1st Semester  CIVIL.</p>', 1610518061, 0, '{\"notificationiconurl\":\"http:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1607631445\\/u\\/f1\",\"actionbuttons\":{\"send\":\"Send\"},\"placeholders\":{\"send\":\"Write a message...\"},\"courseid\":1}');

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_airnotifier_devices`
--

CREATE TABLE `mo_message_airnotifier_devices` (
  `id` bigint NOT NULL,
  `userdeviceid` bigint NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Store information about the devices registered in Airnotifie';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_contacts`
--

CREATE TABLE `mo_message_contacts` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `contactid` bigint NOT NULL,
  `timecreated` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Maintains lists of contacts between users';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_contact_requests`
--

CREATE TABLE `mo_message_contact_requests` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `requesteduserid` bigint NOT NULL,
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Maintains list of contact requests between users';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_conversations`
--

CREATE TABLE `mo_message_conversations` (
  `id` bigint NOT NULL,
  `type` bigint NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `convhash` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemid` bigint DEFAULT NULL,
  `contextid` bigint DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL,
  `timemodified` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores all message conversations';

--
-- Dumping data for table `mo_message_conversations`
--

INSERT INTO `mo_message_conversations` (`id`, `type`, `name`, `convhash`, `component`, `itemtype`, `itemid`, `contextid`, `enabled`, `timecreated`, `timemodified`) VALUES
(1, 3, NULL, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', NULL, NULL, NULL, NULL, 1, 1600875237, 1600875237),
(2, 1, NULL, 'dc96e81ba1fed17303ecbdde961527148f5a5bd3', NULL, NULL, NULL, NULL, 1, 1600875987, 1600875987),
(3, 3, NULL, 'c1dfd96eea8cc2b62785275bca38ac261256e278', NULL, NULL, NULL, NULL, 1, 1601026137, 1601026137),
(4, 3, NULL, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', NULL, NULL, NULL, NULL, 1, 1607404992, 1607404992),
(5, 1, NULL, '5176f39ca6d99b0e4acdf7b866bcb5613448a437', NULL, NULL, NULL, NULL, 1, 1610461538, 1610461538),
(6, 1, NULL, '6c2c3840c615802c24e181363691464819a253dc', NULL, NULL, NULL, NULL, 1, 1610518061, 1610518061),
(7, 1, NULL, 'ece679e711d2ddb21764264018196bffe34090fc', NULL, NULL, NULL, NULL, 1, 1610518061, 1610518061),
(8, 3, NULL, '0716d9708d321ffb6a00818614779e779925365c', NULL, NULL, NULL, NULL, 1, 1610523182, 1610523182),
(9, 3, NULL, '4d134bc072212ace2df385dae143139da74ec0ef', NULL, NULL, NULL, NULL, 1, 1610553942, 1610553942),
(10, 3, NULL, '80e28a51cbc26fa4bd34938c5e593b36146f5e0c', NULL, NULL, NULL, NULL, 1, 1621495725, 1621495725);

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_conversation_actions`
--

CREATE TABLE `mo_message_conversation_actions` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `conversationid` bigint NOT NULL,
  `action` bigint NOT NULL,
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores all per-user actions on individual conversations';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_conversation_members`
--

CREATE TABLE `mo_message_conversation_members` (
  `id` bigint NOT NULL,
  `conversationid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores all members in a conversations';

--
-- Dumping data for table `mo_message_conversation_members`
--

INSERT INTO `mo_message_conversation_members` (`id`, `conversationid`, `userid`, `timecreated`) VALUES
(1, 1, 5, 1600875237),
(2, 2, 2, 1600875987),
(3, 2, 5, 1600875987),
(4, 3, 6, 1601026137),
(5, 4, 2, 1607404992),
(6, 5, 2, 1610461538),
(7, 5, 24, 1610461538),
(8, 6, 2, 1610518061),
(9, 6, 17, 1610518061),
(10, 7, 2, 1610518061),
(11, 7, 20, 1610518061),
(12, 8, 17, 1610523182),
(13, 9, 24, 1610553942),
(14, 10, 54, 1621495725);

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_email_messages`
--

CREATE TABLE `mo_message_email_messages` (
  `id` bigint NOT NULL,
  `useridto` bigint NOT NULL,
  `conversationid` bigint NOT NULL,
  `messageid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Keeps track of what emails to send in an email digest';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_popup`
--

CREATE TABLE `mo_message_popup` (
  `id` bigint NOT NULL,
  `messageid` bigint NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Keep state of notifications for the popup message processor';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_popup_notifications`
--

CREATE TABLE `mo_message_popup_notifications` (
  `id` bigint NOT NULL,
  `notificationid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='List of notifications to display in the message output popup';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_processors`
--

CREATE TABLE `mo_message_processors` (
  `id` bigint NOT NULL,
  `name` varchar(166) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='List of message output plugins';

--
-- Dumping data for table `mo_message_processors`
--

INSERT INTO `mo_message_processors` (`id`, `name`, `enabled`) VALUES
(1, 'airnotifier', 0),
(2, 'email', 1),
(3, 'jabber', 1),
(4, 'popup', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_providers`
--

CREATE TABLE `mo_message_providers` (
  `id` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `capability` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='This table stores the message providers (modules and core sy';

--
-- Dumping data for table `mo_message_providers`
--

INSERT INTO `mo_message_providers` (`id`, `name`, `component`, `capability`) VALUES
(1, 'notices', 'moodle', 'moodle/site:config'),
(2, 'errors', 'moodle', 'moodle/site:config'),
(3, 'availableupdate', 'moodle', 'moodle/site:config'),
(4, 'instantmessage', 'moodle', NULL),
(5, 'backup', 'moodle', 'moodle/site:config'),
(6, 'courserequested', 'moodle', 'moodle/site:approvecourse'),
(7, 'courserequestapproved', 'moodle', 'moodle/course:request'),
(8, 'courserequestrejected', 'moodle', 'moodle/course:request'),
(9, 'badgerecipientnotice', 'moodle', 'moodle/badges:earnbadge'),
(10, 'badgecreatornotice', 'moodle', NULL),
(11, 'competencyplancomment', 'moodle', NULL),
(12, 'competencyusercompcomment', 'moodle', NULL),
(13, 'insights', 'moodle', NULL),
(14, 'messagecontactrequests', 'moodle', NULL),
(15, 'asyncbackupnotification', 'moodle', NULL),
(16, 'gradenotifications', 'moodle', NULL),
(17, 'assign_notification', 'mod_assign', NULL),
(18, 'assignment_updates', 'mod_assignment', NULL),
(19, 'submission', 'mod_feedback', NULL),
(20, 'message', 'mod_feedback', NULL),
(21, 'posts', 'mod_forum', NULL),
(22, 'digests', 'mod_forum', NULL),
(23, 'graded_essay', 'mod_lesson', NULL),
(24, 'submission', 'mod_quiz', 'mod/quiz:emailnotifysubmission'),
(25, 'confirmation', 'mod_quiz', 'mod/quiz:emailconfirmsubmission'),
(26, 'attempt_overdue', 'mod_quiz', 'mod/quiz:emailwarnoverdue'),
(27, 'flatfile_enrolment', 'enrol_flatfile', NULL),
(28, 'imsenterprise_enrolment', 'enrol_imsenterprise', NULL),
(29, 'expiry_notification', 'enrol_manual', NULL),
(30, 'paypal_enrolment', 'enrol_paypal', NULL),
(31, 'expiry_notification', 'enrol_self', NULL),
(32, 'contactdataprotectionofficer', 'tool_dataprivacy', 'tool/dataprivacy:managedatarequests'),
(33, 'datarequestprocessingresults', 'tool_dataprivacy', NULL),
(34, 'notifyexceptions', 'tool_dataprivacy', 'tool/dataprivacy:managedatarequests'),
(35, 'invalidrecipienthandler', 'tool_messageinbound', NULL),
(36, 'messageprocessingerror', 'tool_messageinbound', NULL),
(37, 'messageprocessingsuccess', 'tool_messageinbound', NULL),
(38, 'notification', 'tool_monitor', 'tool/monitor:subscribe'),
(39, 'submission', 'mod_hvp', 'mod/hvp:emailnotifysubmission'),
(40, 'confirmation', 'mod_hvp', 'mod/hvp:emailconfirmsubmission'),
(41, 'coursecompleted', 'moodle', NULL),
(42, 'infected', 'moodle', 'moodle/site:config');

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_read`
--

CREATE TABLE `mo_message_read` (
  `id` bigint NOT NULL,
  `useridfrom` bigint NOT NULL DEFAULT '0',
  `useridto` bigint NOT NULL DEFAULT '0',
  `subject` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fullmessage` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fullmessageformat` smallint DEFAULT '0',
  `fullmessagehtml` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `smallmessage` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `notification` tinyint(1) DEFAULT '0',
  `contexturl` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contexturlname` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timeread` bigint NOT NULL DEFAULT '0',
  `timeuserfromdeleted` bigint NOT NULL DEFAULT '0',
  `timeusertodeleted` bigint NOT NULL DEFAULT '0',
  `component` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `eventtype` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores all messages that have been read';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_users_blocked`
--

CREATE TABLE `mo_message_users_blocked` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `blockeduserid` bigint NOT NULL,
  `timecreated` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Maintains lists of blocked users';

-- --------------------------------------------------------

--
-- Table structure for table `mo_message_user_actions`
--

CREATE TABLE `mo_message_user_actions` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `messageid` bigint NOT NULL,
  `action` bigint NOT NULL,
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores all per-user actions on individual messages';

--
-- Dumping data for table `mo_message_user_actions`
--

INSERT INTO `mo_message_user_actions` (`id`, `userid`, `messageid`, `action`, `timecreated`) VALUES
(1, 17, 3, 1, 1610524076);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mo_ltiservice_gradebookservices`
--
ALTER TABLE `mo_ltiservice_gradebookservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_ltisgrad_lti_ix` (`ltilinkid`),
  ADD KEY `mo_ltisgrad_gracou_ix` (`gradeitemid`,`courseid`);

--
-- Indexes for table `mo_message`
--
ALTER TABLE `mo_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_mess_useusetimtim_ix` (`useridfrom`,`useridto`,`timeuserfromdeleted`,`timeusertodeleted`),
  ADD KEY `mo_mess_usetimnot_ix` (`useridfrom`,`timeuserfromdeleted`,`notification`),
  ADD KEY `mo_mess_usetimnot2_ix` (`useridto`,`timeusertodeleted`,`notification`);

--
-- Indexes for table `mo_messageinbound_datakeys`
--
ALTER TABLE `mo_messageinbound_datakeys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_messdata_handat_uix` (`handler`,`datavalue`),
  ADD KEY `mo_messdata_han_ix` (`handler`);

--
-- Indexes for table `mo_messageinbound_handlers`
--
ALTER TABLE `mo_messageinbound_handlers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_messhand_cla_uix` (`classname`);

--
-- Indexes for table `mo_messageinbound_messagelist`
--
ALTER TABLE `mo_messageinbound_messagelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_messmess_use_ix` (`userid`);

--
-- Indexes for table `mo_messages`
--
ALTER TABLE `mo_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_mess_contim_ix` (`conversationid`,`timecreated`),
  ADD KEY `mo_mess_use_ix` (`useridfrom`),
  ADD KEY `mo_mess_con_ix` (`conversationid`);

--
-- Indexes for table `mo_message_airnotifier_devices`
--
ALTER TABLE `mo_message_airnotifier_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_messairndevi_use_uix` (`userdeviceid`);

--
-- Indexes for table `mo_message_contacts`
--
ALTER TABLE `mo_message_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_messcont_usecon_uix` (`userid`,`contactid`),
  ADD KEY `mo_messcont_use_ix` (`userid`),
  ADD KEY `mo_messcont_con_ix` (`contactid`);

--
-- Indexes for table `mo_message_contact_requests`
--
ALTER TABLE `mo_message_contact_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_messcontrequ_usereq_uix` (`userid`,`requesteduserid`),
  ADD KEY `mo_messcontrequ_use_ix` (`userid`),
  ADD KEY `mo_messcontrequ_req_ix` (`requesteduserid`);

--
-- Indexes for table `mo_message_conversations`
--
ALTER TABLE `mo_message_conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_messconv_typ_ix` (`type`),
  ADD KEY `mo_messconv_con_ix` (`convhash`),
  ADD KEY `mo_messconv_comiteitecon_ix` (`component`,`itemtype`,`itemid`,`contextid`),
  ADD KEY `mo_messconv_con2_ix` (`contextid`);

--
-- Indexes for table `mo_message_conversation_actions`
--
ALTER TABLE `mo_message_conversation_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_messconvacti_use_ix` (`userid`),
  ADD KEY `mo_messconvacti_con_ix` (`conversationid`);

--
-- Indexes for table `mo_message_conversation_members`
--
ALTER TABLE `mo_message_conversation_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_messconvmemb_con_ix` (`conversationid`),
  ADD KEY `mo_messconvmemb_use_ix` (`userid`);

--
-- Indexes for table `mo_message_email_messages`
--
ALTER TABLE `mo_message_email_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_messemaimess_use_ix` (`useridto`),
  ADD KEY `mo_messemaimess_con_ix` (`conversationid`),
  ADD KEY `mo_messemaimess_mes_ix` (`messageid`);

--
-- Indexes for table `mo_message_popup`
--
ALTER TABLE `mo_message_popup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_messpopu_mesisr_uix` (`messageid`,`isread`),
  ADD KEY `mo_messpopu_isr_ix` (`isread`);

--
-- Indexes for table `mo_message_popup_notifications`
--
ALTER TABLE `mo_message_popup_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_messpopunoti_not_ix` (`notificationid`);

--
-- Indexes for table `mo_message_processors`
--
ALTER TABLE `mo_message_processors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_message_providers`
--
ALTER TABLE `mo_message_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_messprov_comnam_uix` (`component`,`name`);

--
-- Indexes for table `mo_message_read`
--
ALTER TABLE `mo_message_read`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_messread_useusetimtim_ix` (`useridfrom`,`useridto`,`timeuserfromdeleted`,`timeusertodeleted`),
  ADD KEY `mo_messread_nottim_ix` (`notification`,`timeread`),
  ADD KEY `mo_messread_usetimnot_ix` (`useridfrom`,`timeuserfromdeleted`,`notification`),
  ADD KEY `mo_messread_usetimnot2_ix` (`useridto`,`timeusertodeleted`,`notification`);

--
-- Indexes for table `mo_message_users_blocked`
--
ALTER TABLE `mo_message_users_blocked`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_messuserbloc_useblo_uix` (`userid`,`blockeduserid`),
  ADD KEY `mo_messuserbloc_use_ix` (`userid`),
  ADD KEY `mo_messuserbloc_blo_ix` (`blockeduserid`);

--
-- Indexes for table `mo_message_user_actions`
--
ALTER TABLE `mo_message_user_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_messuseracti_usemesact_uix` (`userid`,`messageid`,`action`),
  ADD KEY `mo_messuseracti_use_ix` (`userid`),
  ADD KEY `mo_messuseracti_mes_ix` (`messageid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mo_ltiservice_gradebookservices`
--
ALTER TABLE `mo_ltiservice_gradebookservices`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message`
--
ALTER TABLE `mo_message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_messageinbound_datakeys`
--
ALTER TABLE `mo_messageinbound_datakeys`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_messageinbound_handlers`
--
ALTER TABLE `mo_messageinbound_handlers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mo_messageinbound_messagelist`
--
ALTER TABLE `mo_messageinbound_messagelist`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_messages`
--
ALTER TABLE `mo_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mo_message_airnotifier_devices`
--
ALTER TABLE `mo_message_airnotifier_devices`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message_contacts`
--
ALTER TABLE `mo_message_contacts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message_contact_requests`
--
ALTER TABLE `mo_message_contact_requests`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message_conversations`
--
ALTER TABLE `mo_message_conversations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mo_message_conversation_actions`
--
ALTER TABLE `mo_message_conversation_actions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message_conversation_members`
--
ALTER TABLE `mo_message_conversation_members`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mo_message_email_messages`
--
ALTER TABLE `mo_message_email_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message_popup`
--
ALTER TABLE `mo_message_popup`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message_popup_notifications`
--
ALTER TABLE `mo_message_popup_notifications`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message_processors`
--
ALTER TABLE `mo_message_processors`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mo_message_providers`
--
ALTER TABLE `mo_message_providers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `mo_message_read`
--
ALTER TABLE `mo_message_read`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message_users_blocked`
--
ALTER TABLE `mo_message_users_blocked`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_message_user_actions`
--
ALTER TABLE `mo_message_user_actions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
