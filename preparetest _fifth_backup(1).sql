-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2021 at 06:48 AM
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
-- Table structure for table `mo_mnetservice_enrol_courses`
--

CREATE TABLE `mo_mnetservice_enrol_courses` (
  `id` bigint NOT NULL,
  `hostid` bigint NOT NULL,
  `remoteid` bigint NOT NULL,
  `categoryid` bigint NOT NULL,
  `categoryname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` bigint NOT NULL DEFAULT '0',
  `fullname` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `summaryformat` smallint DEFAULT '0',
  `startdate` bigint NOT NULL,
  `roleid` bigint NOT NULL,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Caches the information fetched via XML-RPC about courses on ';

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnetservice_enrol_enrolments`
--

CREATE TABLE `mo_mnetservice_enrol_enrolments` (
  `id` bigint NOT NULL,
  `hostid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `remotecourseid` bigint NOT NULL,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enroltime` bigint NOT NULL DEFAULT '0',
  `enroltype` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Caches the information about enrolments of our local users i';

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_application`
--

CREATE TABLE `mo_mnet_application` (
  `id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xmlrpc_server_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sso_land_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sso_jump_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Information about applications on remote hosts';

--
-- Dumping data for table `mo_mnet_application`
--

INSERT INTO `mo_mnet_application` (`id`, `name`, `display_name`, `xmlrpc_server_url`, `sso_land_url`, `sso_jump_url`) VALUES
(1, 'moodle', 'Moodle', '/mnet/xmlrpc/server.php', '/auth/mnet/land.php', '/auth/mnet/jump.php'),
(2, 'mahara', 'Mahara', '/api/xmlrpc/server.php', '/auth/xmlrpc/land.php', '/auth/xmlrpc/jump.php');

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_host`
--

CREATE TABLE `mo_mnet_host` (
  `id` bigint NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `wwwroot` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public_key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `public_key_expires` bigint NOT NULL DEFAULT '0',
  `transport` tinyint NOT NULL DEFAULT '0',
  `portno` mediumint NOT NULL DEFAULT '0',
  `last_connect_time` bigint NOT NULL DEFAULT '0',
  `last_log_id` bigint NOT NULL DEFAULT '0',
  `force_theme` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `applicationid` bigint NOT NULL DEFAULT '1',
  `sslverification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Information about the local and remote hosts for RPC';

--
-- Dumping data for table `mo_mnet_host`
--

INSERT INTO `mo_mnet_host` (`id`, `deleted`, `wwwroot`, `ip_address`, `name`, `public_key`, `public_key_expires`, `transport`, `portno`, `last_connect_time`, `last_log_id`, `force_theme`, `theme`, `applicationid`, `sslverification`) VALUES
(1, 0, 'http://preparetest.com', '166.62.27.168', '', '', 0, 0, 0, 0, 0, 0, NULL, 1, 0),
(2, 0, '', '', 'All Hosts', '', 0, 0, 0, 0, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_host2service`
--

CREATE TABLE `mo_mnet_host2service` (
  `id` bigint NOT NULL,
  `hostid` bigint NOT NULL DEFAULT '0',
  `serviceid` bigint NOT NULL DEFAULT '0',
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Information about the services for a given host';

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_log`
--

CREATE TABLE `mo_mnet_log` (
  `id` bigint NOT NULL,
  `hostid` bigint NOT NULL DEFAULT '0',
  `remoteid` bigint NOT NULL DEFAULT '0',
  `time` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `course` bigint NOT NULL DEFAULT '0',
  `coursename` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cmid` bigint NOT NULL DEFAULT '0',
  `action` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Store session data from users migrating to other sites';

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_remote_rpc`
--

CREATE TABLE `mo_mnet_remote_rpc` (
  `id` bigint NOT NULL,
  `functionname` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugintype` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pluginname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='This table describes functions that might be called remotely';

--
-- Dumping data for table `mo_mnet_remote_rpc`
--

INSERT INTO `mo_mnet_remote_rpc` (`id`, `functionname`, `xmlrpcpath`, `plugintype`, `pluginname`, `enabled`) VALUES
(1, 'user_authorise', 'auth/mnet/auth.php/user_authorise', 'auth', 'mnet', 1),
(2, 'keepalive_server', 'auth/mnet/auth.php/keepalive_server', 'auth', 'mnet', 1),
(3, 'kill_children', 'auth/mnet/auth.php/kill_children', 'auth', 'mnet', 1),
(4, 'refresh_log', 'auth/mnet/auth.php/refresh_log', 'auth', 'mnet', 1),
(5, 'fetch_user_image', 'auth/mnet/auth.php/fetch_user_image', 'auth', 'mnet', 1),
(6, 'fetch_theme_info', 'auth/mnet/auth.php/fetch_theme_info', 'auth', 'mnet', 1),
(7, 'update_enrolments', 'auth/mnet/auth.php/update_enrolments', 'auth', 'mnet', 1),
(8, 'keepalive_client', 'auth/mnet/auth.php/keepalive_client', 'auth', 'mnet', 1),
(9, 'kill_child', 'auth/mnet/auth.php/kill_child', 'auth', 'mnet', 1),
(10, 'available_courses', 'enrol/mnet/enrol.php/available_courses', 'enrol', 'mnet', 1),
(11, 'user_enrolments', 'enrol/mnet/enrol.php/user_enrolments', 'enrol', 'mnet', 1),
(12, 'enrol_user', 'enrol/mnet/enrol.php/enrol_user', 'enrol', 'mnet', 1),
(13, 'unenrol_user', 'enrol/mnet/enrol.php/unenrol_user', 'enrol', 'mnet', 1),
(14, 'course_enrolments', 'enrol/mnet/enrol.php/course_enrolments', 'enrol', 'mnet', 1),
(15, 'send_content_intent', 'portfolio/mahara/lib.php/send_content_intent', 'portfolio', 'mahara', 1),
(16, 'send_content_ready', 'portfolio/mahara/lib.php/send_content_ready', 'portfolio', 'mahara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_remote_service2rpc`
--

CREATE TABLE `mo_mnet_remote_service2rpc` (
  `id` bigint NOT NULL,
  `serviceid` bigint NOT NULL DEFAULT '0',
  `rpcid` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Group functions or methods under a service';

--
-- Dumping data for table `mo_mnet_remote_service2rpc`
--

INSERT INTO `mo_mnet_remote_service2rpc` (`id`, `serviceid`, `rpcid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 8),
(9, 2, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 4, 15),
(16, 4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_rpc`
--

CREATE TABLE `mo_mnet_rpc` (
  `id` bigint NOT NULL,
  `functionname` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugintype` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pluginname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `help` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `classname` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `static` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Functions or methods that we may publish or subscribe to';

--
-- Dumping data for table `mo_mnet_rpc`
--

INSERT INTO `mo_mnet_rpc` (`id`, `functionname`, `xmlrpcpath`, `plugintype`, `pluginname`, `enabled`, `help`, `profile`, `filename`, `classname`, `static`) VALUES
(1, 'user_authorise', 'auth/mnet/auth.php/user_authorise', 'auth', 'mnet', 1, 'Return user data for the provided token, compare with user_agent string.', 'a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:37:\"The unique ID provided by remotehost.\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:18:\"User Agent string.\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:44:\"$userdata Array of user info for remote host\";}}', 'auth.php', 'auth_plugin_mnet', 0),
(2, 'keepalive_server', 'auth/mnet/auth.php/keepalive_server', 'auth', 'mnet', 1, 'Receives an array of usernames from a remote machine and prods their\nsessions to keep them alive', 'a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}', 'auth.php', 'auth_plugin_mnet', 0),
(3, 'kill_children', 'auth/mnet/auth.php/kill_children', 'auth', 'mnet', 1, 'The IdP uses this function to kill child sessions on other hosts', 'a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:35:\"SHA1 hash of user agent to look for\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"A plaintext report of what has happened\";}}', 'auth.php', 'auth_plugin_mnet', 0),
(4, 'refresh_log', 'auth/mnet/auth.php/refresh_log', 'auth', 'mnet', 1, 'Receives an array of log entries from an SP and adds them to the mnet_log\ntable', 'a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}', 'auth.php', 'auth_plugin_mnet', 0),
(5, 'fetch_user_image', 'auth/mnet/auth.php/fetch_user_image', 'auth', 'mnet', 1, 'Returns the user\'s profile image info\nIf the user exists and has a profile picture, the returned array will contain keys:\nf1          - the content of the default 100x100px image\nf1_mimetype - the mimetype of the f1 file\nf2          - the content of the 35x35px variant of the image\nf2_mimetype - the mimetype of the f2 file\nThe mimetype information was added in Moodle 2.0. In Moodle 1.x, images are always jpegs.', 'a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:18:\"The id of the user\";}}s:6:\"return\";a:2:{s:4:\"type\";s:11:\"false|array\";s:11:\"description\";s:84:\"false if user not found, empty array if no picture exists, array with data otherwise\";}}', 'auth.php', 'auth_plugin_mnet', 0),
(6, 'fetch_theme_info', 'auth/mnet/auth.php/fetch_theme_info', 'auth', 'mnet', 1, 'Returns the theme information and logo url as strings.', 'a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:14:\"The theme info\";}}', 'auth.php', 'auth_plugin_mnet', 0),
(7, 'update_enrolments', 'auth/mnet/auth.php/update_enrolments', 'auth', 'mnet', 1, 'Invoke this function _on_ the IDP to update it with enrolment info local to\nthe SP right after calling user_authorise()\nNormally called by the SP after calling user_authorise()', 'a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:12:\"The username\";}i:1;a:3:{s:4:\"name\";s:7:\"courses\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:75:\"Assoc array of courses following the structure of mnetservice_enrol_courses\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:0:\"\";}}', 'auth.php', 'auth_plugin_mnet', 0),
(8, 'keepalive_client', 'auth/mnet/auth.php/keepalive_client', 'auth', 'mnet', 1, 'Poll the IdP server to let it know that a user it has authenticated is still\nonline', 'a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}', 'auth.php', 'auth_plugin_mnet', 0),
(9, 'kill_child', 'auth/mnet/auth.php/kill_child', 'auth', 'mnet', 1, 'When the IdP requests that child sessions are terminated,\nthis function will be called on each of the child hosts. The machine that\ncalls the function (over xmlrpc) provides us with the mnethostid we need.', 'a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:35:\"SHA1 hash of user agent to look for\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:15:\"True on success\";}}', 'auth.php', 'auth_plugin_mnet', 0),
(10, 'available_courses', 'enrol/mnet/enrol.php/available_courses', 'enrol', 'mnet', 1, 'Returns list of courses that we offer to the caller for remote enrolment of their users\nSince Moodle 2.0, courses are made available for MNet peers by creating an instance\nof enrol_mnet plugin for the course. Hidden courses are not returned. If there are two\ninstances - one specific for the host and one for \'All hosts\', the setting of the specific\none is used. The id of the peer is kept in customint1, no other custom fields are used.', 'a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(11, 'user_enrolments', 'enrol/mnet/enrol.php/user_enrolments', 'enrol', 'mnet', 1, 'This method has never been implemented in Moodle MNet API', 'a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:11:\"empty array\";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(12, 'enrol_user', 'enrol/mnet/enrol.php/enrol_user', 'enrol', 'mnet', 1, 'Enrol remote user to our course\nIf we do not have local record for the remote user in our database,\nit gets created here.', 'a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"userdata\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:43:\"user details {@see mnet_fields_to_import()}\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:19:\"our local course id\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:69:\"true if the enrolment has been successful, throws exception otherwise\";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(13, 'unenrol_user', 'enrol/mnet/enrol.php/unenrol_user', 'enrol', 'mnet', 1, 'Unenrol remote user from our course\nOnly users enrolled via enrol_mnet plugin can be unenrolled remotely. If the\nremote user is enrolled into the local course via some other enrol plugin\n(enrol_manual for example), the remote host can\'t touch such enrolment. Please\ndo not report this behaviour as bug, it is a feature ;-)', 'a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:18:\"of the remote user\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:19:\"of our local course\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:71:\"true if the unenrolment has been successful, throws exception otherwise\";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(14, 'course_enrolments', 'enrol/mnet/enrol.php/course_enrolments', 'enrol', 'mnet', 1, 'Returns a list of users from the client server who are enrolled in our course\nSuitable instance of enrol_mnet must be created in the course. This method will not\nreturn any information about the enrolments in courses that are not available for\nremote enrolment, even if their users are enrolled into them via other plugin\n(note the difference from {@link self::user_enrolments()}).\nThis method will return enrolment information for users from hosts regardless\nthe enrolment plugin. It does not matter if the user was enrolled remotely by\ntheir admin or locally. Once the course is available for remote enrolments, we\nwill tell them everything about their users.\nIn Moodle 1.x the returned array used to be indexed by username. The side effect\nof MDL-19219 fix is that we do not need to use such index and therefore we can\nreturn all enrolment records. MNet clients 1.x will only use the last record for\nthe student, if she is enrolled via multiple plugins.', 'a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:16:\"ID of our course\";}i:1;a:3:{s:4:\"name\";s:5:\"roles\";s:4:\"type\";s:12:\"string|array\";s:11:\"description\";s:58:\"comma separated list of role shortnames (or array of them)\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(15, 'fetch_file', 'portfolio/mahara/lib.php/fetch_file', 'portfolio', 'mahara', 1, 'xmlrpc (mnet) function to get the file.\nreads in the file and returns it base_64 encoded\nso that it can be enrypted by mnet.', 'a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:56:\"the token recieved previously during send_content_intent\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}', 'lib.php', 'portfolio_plugin_mahara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_service`
--

CREATE TABLE `mo_mnet_service` (
  `id` bigint NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `apiversion` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `offer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='A service is a group of functions';

--
-- Dumping data for table `mo_mnet_service`
--

INSERT INTO `mo_mnet_service` (`id`, `name`, `description`, `apiversion`, `offer`) VALUES
(1, 'sso_idp', '', '1', 1),
(2, 'sso_sp', '', '1', 1),
(3, 'mnet_enrol', '', '1', 1),
(4, 'pf', '', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_service2rpc`
--

CREATE TABLE `mo_mnet_service2rpc` (
  `id` bigint NOT NULL,
  `serviceid` bigint NOT NULL DEFAULT '0',
  `rpcid` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Group functions or methods under a service';

--
-- Dumping data for table `mo_mnet_service2rpc`
--

INSERT INTO `mo_mnet_service2rpc` (`id`, `serviceid`, `rpcid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 8),
(9, 2, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_session`
--

CREATE TABLE `mo_mnet_session` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mnethostid` bigint NOT NULL DEFAULT '0',
  `useragent` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirm_timeout` bigint NOT NULL DEFAULT '0',
  `session_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Store session data from users migrating to other sites';

-- --------------------------------------------------------

--
-- Table structure for table `mo_mnet_sso_access_control`
--

CREATE TABLE `mo_mnet_sso_access_control` (
  `id` bigint NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mnet_host_id` bigint NOT NULL DEFAULT '0',
  `accessctrl` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'allow'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Users by host permitted (or not) to login from a remote prov';

-- --------------------------------------------------------

--
-- Table structure for table `mo_modules`
--

CREATE TABLE `mo_modules` (
  `id` bigint NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cron` bigint NOT NULL DEFAULT '0',
  `lastcron` bigint NOT NULL DEFAULT '0',
  `search` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='modules available in the site';

--
-- Dumping data for table `mo_modules`
--

INSERT INTO `mo_modules` (`id`, `name`, `cron`, `lastcron`, `search`, `visible`) VALUES
(1, 'assign', 0, 0, '', 1),
(2, 'assignment', 60, 0, '', 0),
(3, 'book', 0, 0, '', 1),
(4, 'chat', 0, 0, '', 1),
(5, 'choice', 0, 0, '', 1),
(6, 'data', 0, 0, '', 1),
(7, 'feedback', 0, 0, '', 1),
(8, 'folder', 0, 0, '', 1),
(9, 'forum', 0, 0, '', 1),
(10, 'glossary', 0, 0, '', 1),
(11, 'imscp', 0, 0, '', 1),
(12, 'label', 0, 0, '', 1),
(13, 'lesson', 0, 0, '', 1),
(14, 'lti', 0, 0, '', 1),
(15, 'page', 0, 0, '', 1),
(16, 'quiz', 0, 0, '', 1),
(17, 'resource', 0, 0, '', 1),
(18, 'scorm', 0, 0, '', 1),
(19, 'survey', 0, 0, '', 1),
(20, 'url', 0, 0, '', 1),
(21, 'wiki', 0, 0, '', 1),
(22, 'workshop', 0, 0, '', 1),
(23, 'bigbluebuttonbn', 0, 0, '', 1),
(24, 'hvp', 0, 0, '', 1),
(25, 'h5pactivity', 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_my_pages`
--

CREATE TABLE `mo_my_pages` (
  `id` bigint NOT NULL,
  `userid` bigint DEFAULT '0',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '1',
  `sortorder` mediumint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Extra user pages for the My Moodle system';

--
-- Dumping data for table `mo_my_pages`
--

INSERT INTO `mo_my_pages` (`id`, `userid`, `name`, `private`, `sortorder`) VALUES
(1, NULL, '__default', 0, 0),
(2, NULL, '__default', 1, 0),
(5, 2, '__default', 0, 0),
(7, 4, '__default', 0, 0),
(8, 4, '__default', 1, 0),
(9, 3, '__default', 1, 0),
(10, 5, '__default', 1, 0),
(11, 6, '__default', 1, 0),
(12, 2, '__default', 1, 0),
(13, 8, '__default', 1, 0),
(14, 9, '__default', 1, 0),
(15, 10, '__default', 0, 0),
(18, 24, '__default', 0, 0),
(20, 7, '__default', 1, 0),
(21, 54, '__default', 0, 0),
(23, 68, '__default', 0, 0),
(24, 73, '__default', 0, 0),
(25, 76, '__default', 0, 0),
(26, 77, '__default', 1, 0),
(27, 70, '__default', 1, 0),
(28, 83, '__default', 0, 0),
(29, 83, '__default', 1, 0),
(30, 69, '__default', 0, 0),
(31, 93, '__default', 0, 0),
(32, 71, '__default', 0, 0),
(33, 92, '__default', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mo_notifications`
--

CREATE TABLE `mo_notifications` (
  `id` bigint NOT NULL,
  `useridfrom` bigint NOT NULL,
  `useridto` bigint NOT NULL,
  `subject` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fullmessage` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fullmessageformat` tinyint(1) NOT NULL DEFAULT '0',
  `fullmessagehtml` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `smallmessage` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `component` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `eventtype` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contexturl` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contexturlname` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timeread` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `customdata` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores all notifications';

--
-- Dumping data for table `mo_notifications`
--

INSERT INTO `mo_notifications` (`id`, `useridfrom`, `useridto`, `subject`, `fullmessage`, `fullmessageformat`, `fullmessagehtml`, `smallmessage`, `component`, `eventtype`, `contexturl`, `contexturlname`, `timeread`, `timecreated`, `customdata`) VALUES
(1, 73, 69, 'swetha mogilishetty has completed CS & IT', 'Hi B.sandeep kumar,\n\nswetha mogilishetty has completed \'CS & IT\' (https://preparetest.com/mod/quiz/view.php?id=413) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=50.', 2, '', 'swetha mogilishetty has completed CS & IT. See https://preparetest.com/mod/quiz/review.php?attempt=50', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=50', 'CS & IT', NULL, 1628678842, '{\"cmid\":\"413\",\"instance\":\"233\",\"attemptid\":\"50\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/b15f872fabfc7390da1c57f81aaac495\\/754\\/user\\/icon\\/lambda\\/f1?rev=180367\",\"courseid\":\"85\"}'),
(2, 73, 68, 'swetha mogilishetty has completed CS & IT', 'Hi Sandeep Bodepudi,\n\nswetha mogilishetty has completed \'CS & IT\' (https://preparetest.com/mod/quiz/view.php?id=413) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=50.', 2, '', 'swetha mogilishetty has completed CS & IT. See https://preparetest.com/mod/quiz/review.php?attempt=50', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=50', 'CS & IT', NULL, 1628678843, '{\"cmid\":\"413\",\"instance\":\"233\",\"attemptid\":\"50\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/ab5958ef151f8fb3e25a5d6b1d16e0c4\\/754\\/user\\/icon\\/lambda\\/f1?rev=180367\",\"courseid\":\"85\"}'),
(3, 73, 69, 'swetha mogilishetty has completed Aerospace Engineering', 'Hi B.sandeep kumar,\n\nswetha mogilishetty has completed \'Aerospace Engineering\' (https://preparetest.com/mod/quiz/view.php?id=403) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=53.', 2, '', 'swetha mogilishetty has completed Aerospace Engineering. See https://preparetest.com/mod/quiz/review.php?attempt=53', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=53', 'Aerospace Engineering', NULL, 1628768893, '{\"cmid\":\"403\",\"instance\":\"226\",\"attemptid\":\"53\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/b15f872fabfc7390da1c57f81aaac495\\/754\\/user\\/icon\\/lambda\\/f1?rev=180367\",\"courseid\":\"85\"}'),
(4, 73, 68, 'swetha mogilishetty has completed Aerospace Engineering', 'Hi Sandeep Bodepudi,\n\nswetha mogilishetty has completed \'Aerospace Engineering\' (https://preparetest.com/mod/quiz/view.php?id=403) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=53.', 2, '', 'swetha mogilishetty has completed Aerospace Engineering. See https://preparetest.com/mod/quiz/review.php?attempt=53', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=53', 'Aerospace Engineering', NULL, 1628768894, '{\"cmid\":\"403\",\"instance\":\"226\",\"attemptid\":\"53\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/ab5958ef151f8fb3e25a5d6b1d16e0c4\\/754\\/user\\/icon\\/lambda\\/f1?rev=180367\",\"courseid\":\"85\"}'),
(5, 83, 68, 'lds demo has completed test on quiz heading', 'Hi Sandeep Bodepudi,\n\nlds demo has completed \'test on quiz heading\' (https://preparetest.com/mod/quiz/view.php?id=437) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=59.', 2, '', 'lds demo has completed test on quiz heading. See https://preparetest.com/mod/quiz/review.php?attempt=59', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=59', 'test on quiz heading', NULL, 1628834899, '{\"cmid\":\"437\",\"instance\":\"255\",\"attemptid\":\"59\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(6, 83, 69, 'lds demo has completed test on quiz heading', 'Hi B.sandeep kumar,\n\nlds demo has completed \'test on quiz heading\' (https://preparetest.com/mod/quiz/view.php?id=437) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=59.', 2, '', 'lds demo has completed test on quiz heading. See https://preparetest.com/mod/quiz/review.php?attempt=59', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=59', 'test on quiz heading', NULL, 1628834899, '{\"cmid\":\"437\",\"instance\":\"255\",\"attemptid\":\"59\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(7, 83, 68, 'lds demo has completed new test', 'Hi Sandeep Bodepudi,\n\nlds demo has completed \'new test\' (https://preparetest.com/mod/quiz/view.php?id=438) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=62.', 2, '', 'lds demo has completed new test. See https://preparetest.com/mod/quiz/review.php?attempt=62', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=62', 'new test', NULL, 1628854539, '{\"cmid\":\"438\",\"instance\":\"256\",\"attemptid\":\"62\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(8, 83, 69, 'lds demo has completed new test', 'Hi B.sandeep kumar,\n\nlds demo has completed \'new test\' (https://preparetest.com/mod/quiz/view.php?id=438) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=62.', 2, '', 'lds demo has completed new test. See https://preparetest.com/mod/quiz/review.php?attempt=62', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=62', 'new test', NULL, 1628854539, '{\"cmid\":\"438\",\"instance\":\"256\",\"attemptid\":\"62\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(9, 83, 68, 'lds demo has completed new new new', 'Hi Sandeep Bodepudi,\n\nlds demo has completed \'new new new\' (https://preparetest.com/mod/quiz/view.php?id=439) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=63.', 2, '', 'lds demo has completed new new new. See https://preparetest.com/mod/quiz/review.php?attempt=63', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=63', 'new new new', NULL, 1628855702, '{\"cmid\":\"439\",\"instance\":\"257\",\"attemptid\":\"63\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(10, 83, 69, 'lds demo has completed new new new', 'Hi B.sandeep kumar,\n\nlds demo has completed \'new new new\' (https://preparetest.com/mod/quiz/view.php?id=439) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=63.', 2, '', 'lds demo has completed new new new. See https://preparetest.com/mod/quiz/review.php?attempt=63', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=63', 'new new new', NULL, 1628855702, '{\"cmid\":\"439\",\"instance\":\"257\",\"attemptid\":\"63\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(11, 83, 68, 'lds demo has completed 1', 'Hi Sandeep Bodepudi,\n\nlds demo has completed \'1\' (https://preparetest.com/mod/quiz/view.php?id=440) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=64.', 2, '', 'lds demo has completed 1. See https://preparetest.com/mod/quiz/review.php?attempt=64', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=64', '1', NULL, 1628858177, '{\"cmid\":\"440\",\"instance\":\"258\",\"attemptid\":\"64\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(12, 83, 69, 'lds demo has completed 1', 'Hi B.sandeep kumar,\n\nlds demo has completed \'1\' (https://preparetest.com/mod/quiz/view.php?id=440) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=64.', 2, '', 'lds demo has completed 1. See https://preparetest.com/mod/quiz/review.php?attempt=64', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=64', '1', NULL, 1628858177, '{\"cmid\":\"440\",\"instance\":\"258\",\"attemptid\":\"64\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(13, 83, 68, 'lds demo has completed last', 'Hi Sandeep Bodepudi,\n\nlds demo has completed \'last\' (https://preparetest.com/mod/quiz/view.php?id=442) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=65.', 2, '', 'lds demo has completed last. See https://preparetest.com/mod/quiz/review.php?attempt=65', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=65', 'last', NULL, 1628861301, '{\"cmid\":\"442\",\"instance\":\"260\",\"attemptid\":\"65\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(14, 83, 69, 'lds demo has completed last', 'Hi B.sandeep kumar,\n\nlds demo has completed \'last\' (https://preparetest.com/mod/quiz/view.php?id=442) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=65.', 2, '', 'lds demo has completed last. See https://preparetest.com/mod/quiz/review.php?attempt=65', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=65', 'last', NULL, 1628861302, '{\"cmid\":\"442\",\"instance\":\"260\",\"attemptid\":\"65\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1628745146\\/u\\/f1\",\"courseid\":\"89\"}'),
(15, 83, 69, 'lds demo has completed new new new', 'Hi B.sandeep kumar,\n\nlds demo has completed \'new new new\' (https://preparetest.com/mod/quiz/view.php?id=439) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=66.', 2, '', 'lds demo has completed new new new. See https://preparetest.com/mod/quiz/review.php?attempt=66', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=66', 'new new new', NULL, 1629200892, '{\"cmid\":\"439\",\"instance\":\"257\",\"attemptid\":\"66\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"89\"}'),
(16, 83, 68, 'lds demo has completed new new new', 'Hi Sandeep Bodepudi,\n\nlds demo has completed \'new new new\' (https://preparetest.com/mod/quiz/view.php?id=439) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=66.', 2, '', 'lds demo has completed new new new. See https://preparetest.com/mod/quiz/review.php?attempt=66', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=66', 'new new new', NULL, 1629200893, '{\"cmid\":\"439\",\"instance\":\"257\",\"attemptid\":\"66\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"89\"}'),
(17, 83, 69, 'lds demo has completed test on quiz heading', 'Hi B.sandeep kumar,\n\nlds demo has completed \'test on quiz heading\' (https://preparetest.com/mod/quiz/view.php?id=437) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=67.', 2, '', 'lds demo has completed test on quiz heading. See https://preparetest.com/mod/quiz/review.php?attempt=67', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=67', 'test on quiz heading', NULL, 1629201932, '{\"cmid\":\"437\",\"instance\":\"255\",\"attemptid\":\"67\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"89\"}'),
(18, 83, 68, 'lds demo has completed test on quiz heading', 'Hi Sandeep Bodepudi,\n\nlds demo has completed \'test on quiz heading\' (https://preparetest.com/mod/quiz/view.php?id=437) in course \'dev\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=67.', 2, '', 'lds demo has completed test on quiz heading. See https://preparetest.com/mod/quiz/review.php?attempt=67', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=67', 'test on quiz heading', NULL, 1629201932, '{\"cmid\":\"437\",\"instance\":\"255\",\"attemptid\":\"67\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"89\"}'),
(19, 89, 69, 'RAJA P has completed Practice Paper-1', 'Hi B.sandeep kumar,\n\nRAJA P has completed \'Practice Paper-1\' (https://preparetest.com/mod/quiz/view.php?id=266) in course \'  Practice Papers \'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=71.', 2, '', 'RAJA P has completed Practice Paper-1. See https://preparetest.com/mod/quiz/review.php?attempt=71', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=71', 'Practice Paper-1', NULL, 1629205647, '{\"cmid\":\"266\",\"instance\":\"106\",\"attemptid\":\"71\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/b15f872fabfc7390da1c57f81aaac495\\/868\\/user\\/icon\\/lambda\\/f1?rev=184565\",\"courseid\":\"66\"}'),
(20, 89, 68, 'RAJA P has completed Practice Paper-1', 'Hi Sandeep Bodepudi,\n\nRAJA P has completed \'Practice Paper-1\' (https://preparetest.com/mod/quiz/view.php?id=266) in course \'  Practice Papers \'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=71.', 2, '', 'RAJA P has completed Practice Paper-1. See https://preparetest.com/mod/quiz/review.php?attempt=71', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=71', 'Practice Paper-1', NULL, 1629205647, '{\"cmid\":\"266\",\"instance\":\"106\",\"attemptid\":\"71\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/ab5958ef151f8fb3e25a5d6b1d16e0c4\\/868\\/user\\/icon\\/lambda\\/f1?rev=184565\",\"courseid\":\"66\"}'),
(21, 73, 69, 'swetha mogilishetty has completed Aerospace Engineering', 'Hi B.sandeep kumar,\n\nswetha mogilishetty has completed \'Aerospace Engineering\' (https://preparetest.com/mod/quiz/view.php?id=425) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=68.', 2, '', 'swetha mogilishetty has completed Aerospace Engineering. See https://preparetest.com/mod/quiz/review.php?attempt=68', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=68', 'Aerospace Engineering', NULL, 1629270351, '{\"cmid\":\"425\",\"instance\":\"245\",\"attemptid\":\"68\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/b15f872fabfc7390da1c57f81aaac495\\/754\\/user\\/icon\\/lambda\\/f1?rev=180367\",\"courseid\":\"85\"}'),
(22, 73, 68, 'swetha mogilishetty has completed Aerospace Engineering', 'Hi Sandeep Bodepudi,\n\nswetha mogilishetty has completed \'Aerospace Engineering\' (https://preparetest.com/mod/quiz/view.php?id=425) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=68.', 2, '', 'swetha mogilishetty has completed Aerospace Engineering. See https://preparetest.com/mod/quiz/review.php?attempt=68', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=68', 'Aerospace Engineering', NULL, 1629270351, '{\"cmid\":\"425\",\"instance\":\"245\",\"attemptid\":\"68\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/ab5958ef151f8fb3e25a5d6b1d16e0c4\\/754\\/user\\/icon\\/lambda\\/f1?rev=180367\",\"courseid\":\"85\"}'),
(23, 73, 69, 'swetha mogilishetty has completed Bio-Technology', 'Hi B.sandeep kumar,\n\nswetha mogilishetty has completed \'Bio-Technology\' (https://preparetest.com/mod/quiz/view.php?id=428) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=73.', 2, '', 'swetha mogilishetty has completed Bio-Technology. See https://preparetest.com/mod/quiz/review.php?attempt=73', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=73', 'Bio-Technology', NULL, 1629272426, '{\"cmid\":\"428\",\"instance\":\"248\",\"attemptid\":\"73\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/b15f872fabfc7390da1c57f81aaac495\\/754\\/user\\/icon\\/lambda\\/f1?rev=180367\",\"courseid\":\"85\"}'),
(24, 73, 68, 'swetha mogilishetty has completed Bio-Technology', 'Hi Sandeep Bodepudi,\n\nswetha mogilishetty has completed \'Bio-Technology\' (https://preparetest.com/mod/quiz/view.php?id=428) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=73.', 2, '', 'swetha mogilishetty has completed Bio-Technology. See https://preparetest.com/mod/quiz/review.php?attempt=73', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=73', 'Bio-Technology', NULL, 1629272427, '{\"cmid\":\"428\",\"instance\":\"248\",\"attemptid\":\"73\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/ab5958ef151f8fb3e25a5d6b1d16e0c4\\/754\\/user\\/icon\\/lambda\\/f1?rev=180367\",\"courseid\":\"85\"}'),
(25, 92, 69, 'test user has completed test1', 'Hi B.sandeep kumar,\n\ntest user has completed \'test1\' (https://preparetest.com/mod/quiz/view.php?id=452) in course \'testcourse\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=78.', 2, '', 'test user has completed test1. See https://preparetest.com/mod/quiz/review.php?attempt=78', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=78', 'test1', NULL, 1630130307, '{\"cmid\":\"452\",\"instance\":\"266\",\"attemptid\":\"78\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"90\"}'),
(26, 92, 68, 'test user has completed test1', 'Hi Sandeep Bodepudi,\n\ntest user has completed \'test1\' (https://preparetest.com/mod/quiz/view.php?id=452) in course \'testcourse\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=78.', 2, '', 'test user has completed test1. See https://preparetest.com/mod/quiz/review.php?attempt=78', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=78', 'test1', NULL, 1630130307, '{\"cmid\":\"452\",\"instance\":\"266\",\"attemptid\":\"78\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"90\"}'),
(27, 92, 69, 'test user has completed test3', 'Hi B.sandeep kumar,\n\ntest user has completed \'test3\' (https://preparetest.com/mod/quiz/view.php?id=453) in course \'testcourse\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=79.', 2, '', 'test user has completed test3. See https://preparetest.com/mod/quiz/review.php?attempt=79', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=79', 'test3', NULL, 1630130492, '{\"cmid\":\"453\",\"instance\":\"267\",\"attemptid\":\"79\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"90\"}'),
(28, 92, 68, 'test user has completed test3', 'Hi Sandeep Bodepudi,\n\ntest user has completed \'test3\' (https://preparetest.com/mod/quiz/view.php?id=453) in course \'testcourse\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=79.', 2, '', 'test user has completed test3. See https://preparetest.com/mod/quiz/review.php?attempt=79', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=79', 'test3', NULL, 1630130493, '{\"cmid\":\"453\",\"instance\":\"267\",\"attemptid\":\"79\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"90\"}'),
(29, 92, 69, 'test user has completed Quize1', 'Hi B.sandeep kumar,\n\ntest user has completed \'Quize1\' (https://preparetest.com/mod/quiz/view.php?id=449) in course \'testcourse\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=82.', 2, '', 'test user has completed Quize1. See https://preparetest.com/mod/quiz/review.php?attempt=82', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=82', 'Quize1', NULL, 1630132493, '{\"cmid\":\"449\",\"instance\":\"263\",\"attemptid\":\"82\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"90\"}'),
(30, 92, 68, 'test user has completed Quize1', 'Hi Sandeep Bodepudi,\n\ntest user has completed \'Quize1\' (https://preparetest.com/mod/quiz/view.php?id=449) in course \'testcourse\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=82.', 2, '', 'test user has completed Quize1. See https://preparetest.com/mod/quiz/review.php?attempt=82', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=82', 'Quize1', NULL, 1630132493, '{\"cmid\":\"449\",\"instance\":\"263\",\"attemptid\":\"82\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1629192276\\/u\\/f1\",\"courseid\":\"90\"}'),
(31, 93, 69, 'JATOTHU RAJUNAIK has completed Geo-Engg. & Geo-Informatics (GG)', 'Hi B.sandeep kumar,\n\nJATOTHU RAJUNAIK has completed \'Geo-Engg. & Geo-Informatics (GG)\' (https://preparetest.com/mod/quiz/view.php?id=418) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=99.', 2, '', 'JATOTHU RAJUNAIK has completed Geo-Engg. & Geo-Informatics (GG). See https://preparetest.com/mod/quiz/review.php?attempt=99', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=99', 'Geo-Engg. & Geo-Informatics (GG)', NULL, 1631023748, '{\"cmid\":\"418\",\"instance\":\"238\",\"attemptid\":\"99\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/b15f872fabfc7390da1c57f81aaac495\\/950\\/user\\/icon\\/lambda\\/f1?rev=187655\",\"courseid\":\"85\"}'),
(32, 93, 68, 'JATOTHU RAJUNAIK has completed Geo-Engg. & Geo-Informatics (GG)', 'Hi Sandeep Bodepudi,\n\nJATOTHU RAJUNAIK has completed \'Geo-Engg. & Geo-Informatics (GG)\' (https://preparetest.com/mod/quiz/view.php?id=418) in course \'Previous year  papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=99.', 2, '', 'JATOTHU RAJUNAIK has completed Geo-Engg. & Geo-Informatics (GG). See https://preparetest.com/mod/quiz/review.php?attempt=99', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=99', 'Geo-Engg. & Geo-Informatics (GG)', NULL, 1631023748, '{\"cmid\":\"418\",\"instance\":\"238\",\"attemptid\":\"99\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/ab5958ef151f8fb3e25a5d6b1d16e0c4\\/950\\/user\\/icon\\/lambda\\/f1?rev=187655\",\"courseid\":\"85\"}'),
(33, 99, 69, 'mogilishetty swetha has completed Practice paper - I', 'Hi B.sandeep kumar,\n\nmogilishetty swetha has completed \'Practice paper - I\' (https://preparetest.com/mod/quiz/view.php?id=511) in course \'Practice Papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=101.', 2, '', 'mogilishetty swetha has completed Practice paper - I. See https://preparetest.com/mod/quiz/review.php?attempt=101', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=101', 'Practice paper - I', NULL, 1632813659, '{\"cmid\":\"511\",\"instance\":\"281\",\"attemptid\":\"101\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1631879683\\/u\\/f1\",\"courseid\":\"98\"}'),
(34, 99, 68, 'mogilishetty swetha has completed Practice paper - I', 'Hi Sandeep Bodepudi,\n\nmogilishetty swetha has completed \'Practice paper - I\' (https://preparetest.com/mod/quiz/view.php?id=511) in course \'Practice Papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=101.', 2, '', 'mogilishetty swetha has completed Practice paper - I. See https://preparetest.com/mod/quiz/review.php?attempt=101', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=101', 'Practice paper - I', NULL, 1632813659, '{\"cmid\":\"511\",\"instance\":\"281\",\"attemptid\":\"101\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1631879683\\/u\\/f1\",\"courseid\":\"98\"}'),
(35, 100, 69, 'M bhargavi has completed Practice Paper- VII', 'Hi B.sandeep kumar,\n\nM bhargavi has completed \'Practice Paper- VII\' (https://preparetest.com/mod/quiz/view.php?id=517) in course \'Practice Papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=102.', 2, '', 'M bhargavi has completed Practice Paper- VII. See https://preparetest.com/mod/quiz/review.php?attempt=102', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=102', 'Practice Paper- VII', NULL, 1632814640, '{\"cmid\":\"517\",\"instance\":\"287\",\"attemptid\":\"102\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/b15f872fabfc7390da1c57f81aaac495\\/984\\/user\\/icon\\/lambda\\/f1?rev=200267\",\"courseid\":\"98\"}'),
(36, 100, 68, 'M bhargavi has completed Practice Paper- VII', 'Hi Sandeep Bodepudi,\n\nM bhargavi has completed \'Practice Paper- VII\' (https://preparetest.com/mod/quiz/view.php?id=517) in course \'Practice Papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=102.', 2, '', 'M bhargavi has completed Practice Paper- VII. See https://preparetest.com/mod/quiz/review.php?attempt=102', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=102', 'Practice Paper- VII', NULL, 1632814640, '{\"cmid\":\"517\",\"instance\":\"287\",\"attemptid\":\"102\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/tokenpluginfile.php\\/ab5958ef151f8fb3e25a5d6b1d16e0c4\\/984\\/user\\/icon\\/lambda\\/f1?rev=200267\",\"courseid\":\"98\"}'),
(37, 101, 69, 'mogilishetty swetha has completed Practice paper - I', 'Hi B.sandeep kumar,\n\nmogilishetty swetha has completed \'Practice paper - I\' (https://preparetest.com/mod/quiz/view.php?id=511) in course \'Practice Papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=103.', 2, '', 'mogilishetty swetha has completed Practice paper - I. See https://preparetest.com/mod/quiz/review.php?attempt=103', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=103', 'Practice paper - I', NULL, 1632814712, '{\"cmid\":\"511\",\"instance\":\"281\",\"attemptid\":\"103\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1631879683\\/u\\/f1\",\"courseid\":\"98\"}'),
(38, 101, 68, 'mogilishetty swetha has completed Practice paper - I', 'Hi Sandeep Bodepudi,\n\nmogilishetty swetha has completed \'Practice paper - I\' (https://preparetest.com/mod/quiz/view.php?id=511) in course \'Practice Papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=103.', 2, '', 'mogilishetty swetha has completed Practice paper - I. See https://preparetest.com/mod/quiz/review.php?attempt=103', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=103', 'Practice paper - I', NULL, 1632814712, '{\"cmid\":\"511\",\"instance\":\"281\",\"attemptid\":\"103\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1631879683\\/u\\/f1\",\"courseid\":\"98\"}'),
(39, 102, 69, 'Aarthi Javvaji has completed Practice Paper- VII', 'Hi B.sandeep kumar,\n\nAarthi Javvaji has completed \'Practice Paper- VII\' (https://preparetest.com/mod/quiz/view.php?id=517) in course \'Practice Papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=104.', 2, '', 'Aarthi Javvaji has completed Practice Paper- VII. See https://preparetest.com/mod/quiz/review.php?attempt=104', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=104', 'Practice Paper- VII', NULL, 1633160585, '{\"cmid\":\"517\",\"instance\":\"287\",\"attemptid\":\"104\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1633119727\\/u\\/f1\",\"courseid\":\"98\"}'),
(40, 102, 68, 'Aarthi Javvaji has completed Practice Paper- VII', 'Hi Sandeep Bodepudi,\n\nAarthi Javvaji has completed \'Practice Paper- VII\' (https://preparetest.com/mod/quiz/view.php?id=517) in course \'Practice Papers\'.\n\nYou can review this attempt at https://preparetest.com/mod/quiz/review.php?attempt=104.', 2, '', 'Aarthi Javvaji has completed Practice Paper- VII. See https://preparetest.com/mod/quiz/review.php?attempt=104', 'mod_quiz', 'submission', 'https://preparetest.com/mod/quiz/review.php?attempt=104', 'Practice Paper- VII', NULL, 1633160585, '{\"cmid\":\"517\",\"instance\":\"287\",\"attemptid\":\"104\",\"notificationiconurl\":\"https:\\/\\/preparetest.com\\/theme\\/image.php\\/lambda\\/core\\/1633119727\\/u\\/f1\",\"courseid\":\"98\"}');

-- --------------------------------------------------------

--
-- Table structure for table `mo_oauth2_access_token`
--

CREATE TABLE `mo_oauth2_access_token` (
  `id` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `issuerid` bigint NOT NULL,
  `token` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expires` bigint NOT NULL,
  `scope` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores access tokens for system accounts in order to be able';

-- --------------------------------------------------------

--
-- Table structure for table `mo_oauth2_endpoint`
--

CREATE TABLE `mo_oauth2_endpoint` (
  `id` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `issuerid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Describes the named endpoint for an oauth2 service.';

--
-- Dumping data for table `mo_oauth2_endpoint`
--

INSERT INTO `mo_oauth2_endpoint` (`id`, `timecreated`, `timemodified`, `usermodified`, `name`, `url`, `issuerid`) VALUES
(4, 1623925575, 1623925575, 2, 'discovery_endpoint', 'https://accounts.google.com/.well-known/openid-configuration', 2),
(26, 1623994949, 1623994949, 2, 'authorization_endpoint', 'https://www.facebook.com/v2.12/dialog/oauth', 3),
(27, 1623994949, 1623994949, 2, 'token_endpoint', 'https://graph.facebook.com/v2.12/oauth/access_token', 3),
(28, 1623994949, 1623994949, 2, 'userinfo_endpoint', 'https://graph.facebook.com/v2.12/me?fields=id,first_name,last_name,link,picture.type(large),name,email', 3),
(32, 1624001540, 1624001540, 2, 'authorization_endpoint', 'https://accounts.google.com/o/oauth2/v2/auth', 2),
(33, 1624001540, 1624001540, 2, 'device_authorization_endpoint', 'https://oauth2.googleapis.com/device/code', 2),
(34, 1624001540, 1624001540, 2, 'token_endpoint', 'https://oauth2.googleapis.com/token', 2),
(35, 1624001540, 1624001540, 2, 'userinfo_endpoint', 'https://openidconnect.googleapis.com/v1/userinfo', 2),
(36, 1624001540, 1624001540, 2, 'revocation_endpoint', 'https://oauth2.googleapis.com/revoke', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mo_oauth2_issuer`
--

CREATE TABLE `mo_oauth2_issuer` (
  `id` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `baseurl` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clientid` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clientsecret` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loginscopes` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loginscopesoffline` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loginparams` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loginparamsoffline` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alloweddomains` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scopessupported` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `enabled` tinyint NOT NULL DEFAULT '1',
  `showonloginpage` tinyint NOT NULL DEFAULT '1',
  `basicauth` tinyint NOT NULL DEFAULT '0',
  `sortorder` bigint NOT NULL,
  `requireconfirmation` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Details for an oauth 2 connect identity issuer.';

--
-- Dumping data for table `mo_oauth2_issuer`
--

INSERT INTO `mo_oauth2_issuer` (`id`, `timecreated`, `timemodified`, `usermodified`, `name`, `image`, `baseurl`, `clientid`, `clientsecret`, `loginscopes`, `loginscopesoffline`, `loginparams`, `loginparamsoffline`, `alloweddomains`, `scopessupported`, `enabled`, `showonloginpage`, `basicauth`, `sortorder`, `requireconfirmation`) VALUES
(2, 1623925575, 1624001540, 2, 'Google', 'https://accounts.google.com/favicon.ico', 'https://accounts.google.com/', '817342654248-s4nuf381cso2tr8m661mguoqr88jl16b.apps.googleusercontent.com', '_dwQOAlt4KZxT6T6EZtovp6a', 'openid profile email', 'openid profile email', '', 'access_type=offline&prompt=consent', '', 'openid email profile', 1, 1, 0, 1, 1),
(3, 1623994949, 1623994949, 2, 'Facebook', 'https://facebookbrand.com/wp-content/uploads/2016/05/flogo_rgb_hex-brc-site-250.png', 'https://www.facebook.com/', '552264632448366', 'a309c74a017c52ee0fd2eb97ae2122b6', 'public_profile email', 'public_profile email', '', '', '', NULL, 1, 1, 0, 2, 1),
(8, 1624103784, 1624103784, 2, 'instagram', 'https://www.instagram.com/favicon.ico', '', '930986007749884', 'ac5924bfaee2872652af5307ad2dbbdf', 'openid profile email', 'openid profile email', '', '', '', NULL, 1, 0, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_oauth2_refresh_token`
--

CREATE TABLE `mo_oauth2_refresh_token` (
  `id` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `issuerid` bigint NOT NULL,
  `token` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scopehash` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mo_oauth2_system_account`
--

CREATE TABLE `mo_oauth2_system_account` (
  `id` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `issuerid` bigint NOT NULL,
  `refreshtoken` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `grantedscopes` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `username` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stored details used to get an access token as a system user ';

--
-- Dumping data for table `mo_oauth2_system_account`
--

INSERT INTO `mo_oauth2_system_account` (`id`, `timecreated`, `timemodified`, `usermodified`, `issuerid`, `refreshtoken`, `grantedscopes`, `email`, `username`) VALUES
(2, 1623937296, 1623937296, 2, 2, '1//0dOcz66S-5VH0CgYIARAAGA0SNwF-L9IrwYuWnFyzxRlAjyqVihmnsGezaPSpJzqEhipTrS3C3C6A4BGx-w1Js1yUSQ9NK5IfmMw', 'openid profile email', 'userdemo367@gmail.com', 'userdemo367@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mo_oauth2_user_field_mapping`
--

CREATE TABLE `mo_oauth2_user_field_mapping` (
  `id` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `issuerid` bigint NOT NULL,
  `externalfield` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `internalfield` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Mapping of oauth user fields to moodle fields.';

--
-- Dumping data for table `mo_oauth2_user_field_mapping`
--

INSERT INTO `mo_oauth2_user_field_mapping` (`id`, `timemodified`, `timecreated`, `usermodified`, `issuerid`, `externalfield`, `internalfield`) VALUES
(87, 1623994845, 1623994845, 2, 1, 'given_name', 'firstname'),
(88, 1623994845, 1623994845, 2, 1, 'middle_name', 'middlename'),
(89, 1623994845, 1623994845, 2, 1, 'family_name', 'lastname'),
(90, 1623994845, 1623994845, 2, 1, 'email', 'email'),
(91, 1623994845, 1623994845, 2, 1, 'website', 'url'),
(92, 1623994845, 1623994845, 2, 1, 'nickname', 'alternatename'),
(93, 1623994845, 1623994845, 2, 1, 'picture', 'picture'),
(94, 1623994845, 1623994845, 2, 1, 'address', 'address'),
(95, 1623994845, 1623994845, 2, 1, 'phone', 'phone1'),
(96, 1623994845, 1623994845, 2, 1, 'locale', 'lang'),
(97, 1623994949, 1623994949, 2, 3, 'name', 'alternatename'),
(98, 1623994949, 1623994949, 2, 3, 'last_name', 'lastname'),
(99, 1623994949, 1623994949, 2, 3, 'email', 'email'),
(100, 1623994949, 1623994949, 2, 3, 'first_name', 'firstname'),
(101, 1623994949, 1623994949, 2, 3, 'picture-data-url', 'picture'),
(102, 1623994949, 1623994949, 2, 3, 'link', 'url'),
(103, 1623998247, 1623998247, 2, 4, 'name', 'alternatename'),
(104, 1623998247, 1623998247, 2, 4, 'last_name', 'lastname'),
(105, 1623998247, 1623998247, 2, 4, 'email', 'email'),
(106, 1623998247, 1623998247, 2, 4, 'first_name', 'firstname'),
(107, 1623998247, 1623998247, 2, 4, 'picture-data-url', 'picture'),
(108, 1623998247, 1623998247, 2, 4, 'link', 'url'),
(109, 1624001540, 1624001540, 2, 2, 'given_name', 'firstname'),
(110, 1624001540, 1624001540, 2, 2, 'middle_name', 'middlename'),
(111, 1624001540, 1624001540, 2, 2, 'family_name', 'lastname'),
(112, 1624001540, 1624001540, 2, 2, 'email', 'email'),
(113, 1624001540, 1624001540, 2, 2, 'website', 'url'),
(114, 1624001540, 1624001540, 2, 2, 'nickname', 'alternatename'),
(115, 1624001540, 1624001540, 2, 2, 'picture', 'picture'),
(116, 1624001540, 1624001540, 2, 2, 'address', 'address'),
(117, 1624001540, 1624001540, 2, 2, 'phone', 'phone1'),
(118, 1624001540, 1624001540, 2, 2, 'locale', 'lang'),
(125, 1624004816, 1624004816, 2, 5, 'given_name', 'firstname'),
(126, 1624004816, 1624004816, 2, 5, 'middle_name', 'middlename'),
(127, 1624004816, 1624004816, 2, 5, 'family_name', 'lastname'),
(128, 1624004816, 1624004816, 2, 5, 'email', 'email'),
(129, 1624004816, 1624004816, 2, 5, 'website', 'url'),
(130, 1624004816, 1624004816, 2, 5, 'nickname', 'alternatename'),
(131, 1624004816, 1624004816, 2, 5, 'picture', 'picture'),
(132, 1624004816, 1624004816, 2, 5, 'address', 'address'),
(133, 1624004816, 1624004816, 2, 5, 'phone', 'phone1'),
(134, 1624004816, 1624004816, 2, 5, 'locale', 'lang'),
(135, 1624005380, 1624005380, 2, 6, 'name', 'alternatename'),
(136, 1624005380, 1624005380, 2, 6, 'last_name', 'lastname'),
(137, 1624005380, 1624005380, 2, 6, 'email', 'email'),
(138, 1624005380, 1624005380, 2, 6, 'first_name', 'firstname'),
(139, 1624005380, 1624005380, 2, 6, 'picture-data-url', 'picture'),
(140, 1624005380, 1624005380, 2, 6, 'link', 'url'),
(161, 1624094790, 1624094790, 2, 7, 'given_name', 'firstname'),
(162, 1624094790, 1624094790, 2, 7, 'middle_name', 'middlename'),
(163, 1624094790, 1624094790, 2, 7, 'family_name', 'lastname'),
(164, 1624094790, 1624094790, 2, 7, 'email', 'email'),
(165, 1624094790, 1624094790, 2, 7, 'website', 'url'),
(166, 1624094790, 1624094790, 2, 7, 'nickname', 'alternatename'),
(167, 1624094790, 1624094790, 2, 7, 'picture', 'picture'),
(168, 1624094790, 1624094790, 2, 7, 'address', 'address'),
(169, 1624094790, 1624094790, 2, 7, 'phone', 'phone1'),
(170, 1624094790, 1624094790, 2, 7, 'locale', 'lang');

-- --------------------------------------------------------

--
-- Table structure for table `mo_page`
--

CREATE TABLE `mo_page` (
  `id` bigint NOT NULL,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contentformat` smallint NOT NULL DEFAULT '0',
  `legacyfiles` smallint NOT NULL DEFAULT '0',
  `legacyfileslast` bigint DEFAULT NULL,
  `display` smallint NOT NULL DEFAULT '0',
  `displayoptions` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `revision` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Each record is one page and its config data';

--
-- Dumping data for table `mo_page`
--

INSERT INTO `mo_page` (`id`, `course`, `name`, `intro`, `introformat`, `content`, `contentformat`, `legacyfiles`, `legacyfileslast`, `display`, `displayoptions`, `revision`, `timemodified`) VALUES
(1, 93, ' Mechanical Engineering - 2018 Paper -II', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%286%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631003586),
(2, 93, 'General Engineering - (Paper - II) Mechanical Engineering 2017 Paper ', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 3, 1630916609),
(3, 93, ' Mechanical Engineering - 2017  Paper -II', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"></p><p><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br><p><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 3, 1631004010),
(4, 93, 'Mechanical Engineering -2016  Paper -II', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><p><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 3, 1631004963),
(5, 93, ' Mechanical Engineering - 2015  Paper -II', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631004986),
(6, 93, 'Mechanical Engineering -2014  Paper -II', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631005001),
(7, 93, 'Mechanical Engineering -2013  Paper -II', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631005013),
(8, 93, ' Mechanical- Engineering 2012  Paper -II', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631005022),
(9, 93, ' Mechanical- Engineering - 2011  Paper -II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631005044),
(10, 93, ' Mechanical Engineering - 2010  Paper -II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631005055),
(11, 93, 'Mechanical Engineering 2009  Paper -II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631005065),
(12, 93, 'Mechanical Engineering -2008  Paper -II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631005078),
(13, 93, '  Mechanical Engineering -2007  Paper -II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631005091),
(14, 94, 'Electrical Engineering (Paper - II) 2017 Question Paper ', '', 1, '&nbsp;<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p>&nbsp;<img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p>&nbsp;<img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1630932374),
(15, 94, ' Electrical  Engineering (Paper -II) 2016 Question Paper', '', 1, '<p><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%286%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p>&nbsp;<img src=\"@@PLUGINFILE@@/image%20%287%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p>&nbsp; &nbsp;<img src=\"@@PLUGINFILE@@/image%20%288%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1630932522),
(16, 94, ' Electrical Engineering (Paper -II) 2015 Question Paper', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p>&nbsp;<img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1630933366),
(17, 94, ' Electrical Engineering (Paper -II) 2014 Question Paper', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p>&nbsp;<img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631002903),
(18, 96, 'Civil Engineering 2018 Paper - II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%286%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%287%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%289%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%288%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%2810%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%2811%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%2812%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%2813%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%2814%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 1, 1630929000),
(19, 94, ' Electrical Engineering (Paper -II) 2013 Question Paper', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631002971),
(20, 94, ' Electrical Engineering (Paper -II) 2012  Question Paper', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631003019),
(21, 94, ' Electrical Engineering (Paper -II) 2011  Question Paper', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631003057),
(22, 96, 'Civil Engineering 2017 Paper- II', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%286%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%288%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"></p><p><img src=\"@@PLUGINFILE@@/image%20%287%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%289%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 3, 1630932234),
(23, 94, ' Electrical Engineering (Paper -II) 2010 Question Paper', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631003096),
(24, 94, ' Electrical Engineering (Paper -II) 2009  Question Paper', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\">&nbsp;<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631003161),
(25, 96, 'Civil Engineering 2016 Paper-II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%286%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%288%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%289%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 3, 1630932365),
(26, 94, ' Electrical Engineering (Paper -II) 2008  Question Paper', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\">&nbsp;<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631003220),
(27, 94, ' Electrical Engineering (Paper -II) 2007  Question Paper', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631003380),
(28, 96, 'Civil Engineering 2015 Paper - II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 1, 1630929963),
(29, 96, 'Civil Engineering 2014 Paper - II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 1, 1630930060),
(30, 96, 'Civil Engineering 2013 Paper- II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%286%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%287%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%288%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631004360),
(31, 96, 'Civil Engineering 2012 Paper - II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"></p><div><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></div><div><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></div><div><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></div><div><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></div><div><img src=\"@@PLUGINFILE@@/image%20%286%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></div><div><img src=\"@@PLUGINFILE@@/image%20%287%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></div><div><img src=\"@@PLUGINFILE@@/image%20%288%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></div><br><p></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631004865),
(32, 96, 'Civil Engineering 2011 Paper - II', '', 1, '<img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><p><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p><img src=\"@@PLUGINFILE@@/image%20%286%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1631005081),
(33, 96, 'Civil Engineering 2010 Paper - II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 2, 1630930704),
(34, 96, 'Civil Engineering 2009 Paper - II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 1, 1630930820),
(35, 96, 'Civil Engineering 2008 Paper -II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%284%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%285%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 1, 1630931039),
(36, 96, 'Civil Engineering 2007 Paper- II', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 1, 1630931136),
(37, 96, '123', '', 1, '<p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%281%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%282%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><img src=\"@@PLUGINFILE@@/image%20%283%29.png\" alt=\"\" role=\"presentation\" class=\"img-fluid\"><br></p>', 1, 0, NULL, 5, 'a:3:{s:12:\"printheading\";s:1:\"1\";s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}', 1, 1630931575);

-- --------------------------------------------------------

--
-- Table structure for table `mo_paygw_paypal`
--

CREATE TABLE `mo_paygw_paypal` (
  `id` bigint NOT NULL,
  `paymentid` bigint NOT NULL,
  `pp_orderid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'The ID of the order in PayPal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores PayPal related information';

-- --------------------------------------------------------

--
-- Table structure for table `mo_payments`
--

CREATE TABLE `mo_payments` (
  `id` bigint NOT NULL,
  `component` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paymentarea` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `amount` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accountid` bigint NOT NULL,
  `gateway` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mo_payment_accounts`
--

CREATE TABLE `mo_payment_accounts` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contextid` bigint NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint DEFAULT NULL,
  `timemodified` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mo_payment_accounts`
--

INSERT INTO `mo_payment_accounts` (`id`, `name`, `idnumber`, `contextid`, `enabled`, `archived`, `timecreated`, `timemodified`) VALUES
(1, 'Paypal Account', 'PrepareTest', 1, 1, 0, 1618542524, 1618575837);

-- --------------------------------------------------------

--
-- Table structure for table `mo_payment_gateways`
--

CREATE TABLE `mo_payment_gateways` (
  `id` bigint NOT NULL,
  `accountid` bigint NOT NULL,
  `gateway` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `config` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mo_payment_gateways`
--

INSERT INTO `mo_payment_gateways` (`id`, `accountid`, `gateway`, `enabled`, `config`, `timecreated`, `timemodified`) VALUES
(1, 1, 'paypal', 1, '{\"brandname\":\"PrepareTest\",\"clientid\":\"hanudondapati@gmail.com\",\"secret\":\"D0ndapat!23\",\"environment\":\"live\"}', 1618542579, 1618620157);

-- --------------------------------------------------------

--
-- Table structure for table `mo_portfolio_instance`
--

CREATE TABLE `mo_portfolio_instance` (
  `id` bigint NOT NULL,
  `plugin` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='base table (not including config data) for instances of port';

-- --------------------------------------------------------

--
-- Table structure for table `mo_portfolio_instance_config`
--

CREATE TABLE `mo_portfolio_instance_config` (
  `id` bigint NOT NULL,
  `instance` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='config for portfolio plugin instances';

-- --------------------------------------------------------

--
-- Table structure for table `mo_portfolio_instance_user`
--

CREATE TABLE `mo_portfolio_instance_user` (
  `id` bigint NOT NULL,
  `instance` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='user data for portfolio instances.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_portfolio_log`
--

CREATE TABLE `mo_portfolio_log` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `time` bigint NOT NULL,
  `portfolio` bigint NOT NULL,
  `caller_class` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caller_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caller_component` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller_sha1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tempdataid` bigint NOT NULL DEFAULT '0',
  `returnurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `continueurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='log of portfolio transfers (used to later check for duplicat';

-- --------------------------------------------------------

--
-- Table structure for table `mo_portfolio_mahara_queue`
--

CREATE TABLE `mo_portfolio_mahara_queue` (
  `id` bigint NOT NULL,
  `transferid` bigint NOT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='maps mahara tokens to transfer ids';

-- --------------------------------------------------------

--
-- Table structure for table `mo_portfolio_tempdata`
--

CREATE TABLE `mo_portfolio_tempdata` (
  `id` bigint NOT NULL,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `expirytime` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `instance` bigint DEFAULT '0',
  `queued` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='stores temporary data for portfolio exports. the id of this ';

-- --------------------------------------------------------

--
-- Table structure for table `mo_post`
--

CREATE TABLE `mo_post` (
  `id` bigint NOT NULL,
  `module` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint NOT NULL DEFAULT '0',
  `courseid` bigint NOT NULL DEFAULT '0',
  `groupid` bigint NOT NULL DEFAULT '0',
  `moduleid` bigint NOT NULL DEFAULT '0',
  `coursemoduleid` bigint NOT NULL DEFAULT '0',
  `subject` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `uniquehash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rating` bigint NOT NULL DEFAULT '0',
  `format` bigint NOT NULL DEFAULT '0',
  `summaryformat` tinyint NOT NULL DEFAULT '0',
  `attachment` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `publishstate` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `lastmodified` bigint NOT NULL DEFAULT '0',
  `created` bigint NOT NULL DEFAULT '0',
  `usermodified` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Generic post table to hold data blog entries etc in differen';

-- --------------------------------------------------------

--
-- Table structure for table `mo_profiling`
--

CREATE TABLE `mo_profiling` (
  `id` bigint NOT NULL,
  `runid` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `totalexecutiontime` bigint NOT NULL,
  `totalcputime` bigint NOT NULL,
  `totalcalls` bigint NOT NULL,
  `totalmemory` bigint NOT NULL,
  `runreference` tinyint NOT NULL DEFAULT '0',
  `runcomment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Stores the results of all the profiling runs';

-- --------------------------------------------------------

--
-- Table structure for table `mo_qtype_ddimageortext`
--

CREATE TABLE `mo_qtype_ddimageortext` (
  `id` bigint NOT NULL,
  `questionid` bigint NOT NULL DEFAULT '0',
  `shuffleanswers` smallint NOT NULL DEFAULT '1',
  `correctfeedback` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines drag and drop (text or images onto a background imag';

--
-- Dumping data for table `mo_qtype_ddimageortext`
--

INSERT INTO `mo_qtype_ddimageortext` (`id`, `questionid`, `shuffleanswers`, `correctfeedback`, `correctfeedbackformat`, `partiallycorrectfeedback`, `partiallycorrectfeedbackformat`, `incorrectfeedback`, `incorrectfeedbackformat`, `shownumcorrect`) VALUES
(1, 33, 0, 'Your answer is correct.', 1, 'Your answer is partially correct.', 1, 'Your answer is incorrect.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_qtype_ddimageortext_drags`
--

CREATE TABLE `mo_qtype_ddimageortext_drags` (
  `id` bigint NOT NULL,
  `questionid` bigint NOT NULL DEFAULT '0',
  `no` bigint NOT NULL DEFAULT '0',
  `draggroup` bigint NOT NULL DEFAULT '0',
  `infinite` smallint NOT NULL DEFAULT '0',
  `label` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Images to drag. Actual file names are not stored here we use';

--
-- Dumping data for table `mo_qtype_ddimageortext_drags`
--

INSERT INTO `mo_qtype_ddimageortext_drags` (`id`, `questionid`, `no`, `draggroup`, `infinite`, `label`) VALUES
(1, 33, 1, 1, 0, ''),
(2, 33, 2, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mo_qtype_ddimageortext_drops`
--

CREATE TABLE `mo_qtype_ddimageortext_drops` (
  `id` bigint NOT NULL,
  `questionid` bigint NOT NULL DEFAULT '0',
  `no` bigint NOT NULL DEFAULT '0',
  `xleft` bigint NOT NULL DEFAULT '0',
  `ytop` bigint NOT NULL DEFAULT '0',
  `choice` bigint NOT NULL DEFAULT '0',
  `label` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Drop boxes';

-- --------------------------------------------------------

--
-- Table structure for table `mo_qtype_ddmarker`
--

CREATE TABLE `mo_qtype_ddmarker` (
  `id` bigint NOT NULL,
  `questionid` bigint NOT NULL DEFAULT '0',
  `shuffleanswers` smallint NOT NULL DEFAULT '1',
  `correctfeedback` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint NOT NULL DEFAULT '0',
  `showmisplaced` smallint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines drag and drop (text or images onto a background imag';

-- --------------------------------------------------------

--
-- Table structure for table `mo_qtype_ddmarker_drags`
--

CREATE TABLE `mo_qtype_ddmarker_drags` (
  `id` bigint NOT NULL,
  `questionid` bigint NOT NULL DEFAULT '0',
  `no` bigint NOT NULL DEFAULT '0',
  `label` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `infinite` smallint NOT NULL DEFAULT '0',
  `noofdrags` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Labels for markers to drag.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_qtype_ddmarker_drops`
--

CREATE TABLE `mo_qtype_ddmarker_drops` (
  `id` bigint NOT NULL,
  `questionid` bigint NOT NULL DEFAULT '0',
  `no` bigint NOT NULL DEFAULT '0',
  `shape` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coords` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `choice` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='drop regions';

-- --------------------------------------------------------

--
-- Table structure for table `mo_qtype_essay_options`
--

CREATE TABLE `mo_qtype_essay_options` (
  `id` bigint NOT NULL,
  `questionid` bigint NOT NULL,
  `responseformat` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'editor',
  `responserequired` tinyint NOT NULL DEFAULT '1',
  `responsefieldlines` smallint NOT NULL DEFAULT '15',
  `attachments` smallint NOT NULL DEFAULT '0',
  `attachmentsrequired` smallint NOT NULL DEFAULT '0',
  `graderinfo` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `graderinfoformat` smallint NOT NULL DEFAULT '0',
  `responsetemplate` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `responsetemplateformat` smallint NOT NULL DEFAULT '0',
  `maxbytes` bigint NOT NULL DEFAULT '0',
  `filetypeslist` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Extra options for essay questions.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_qtype_match_options`
--

CREATE TABLE `mo_qtype_match_options` (
  `id` bigint NOT NULL,
  `questionid` bigint NOT NULL DEFAULT '0',
  `shuffleanswers` smallint NOT NULL DEFAULT '1',
  `correctfeedback` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines the question-type specific options for matching ques';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mo_mnetservice_enrol_courses`
--
ALTER TABLE `mo_mnetservice_enrol_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_mnetenrocour_hosrem_uix` (`hostid`,`remoteid`);

--
-- Indexes for table `mo_mnetservice_enrol_enrolments`
--
ALTER TABLE `mo_mnetservice_enrol_enrolments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_mnetenroenro_use_ix` (`userid`),
  ADD KEY `mo_mnetenroenro_hos_ix` (`hostid`);

--
-- Indexes for table `mo_mnet_application`
--
ALTER TABLE `mo_mnet_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_mnet_host`
--
ALTER TABLE `mo_mnet_host`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_mnethost_app_ix` (`applicationid`);

--
-- Indexes for table `mo_mnet_host2service`
--
ALTER TABLE `mo_mnet_host2service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_mnethost_hosser_uix` (`hostid`,`serviceid`);

--
-- Indexes for table `mo_mnet_log`
--
ALTER TABLE `mo_mnet_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_mnetlog_hosusecou_ix` (`hostid`,`userid`,`course`);

--
-- Indexes for table `mo_mnet_remote_rpc`
--
ALTER TABLE `mo_mnet_remote_rpc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_mnet_remote_service2rpc`
--
ALTER TABLE `mo_mnet_remote_service2rpc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_mnetremoserv_rpcser_uix` (`rpcid`,`serviceid`);

--
-- Indexes for table `mo_mnet_rpc`
--
ALTER TABLE `mo_mnet_rpc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_mnetrpc_enaxml_ix` (`enabled`,`xmlrpcpath`);

--
-- Indexes for table `mo_mnet_service`
--
ALTER TABLE `mo_mnet_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_mnet_service2rpc`
--
ALTER TABLE `mo_mnet_service2rpc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_mnetserv_rpcser_uix` (`rpcid`,`serviceid`);

--
-- Indexes for table `mo_mnet_session`
--
ALTER TABLE `mo_mnet_session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_mnetsess_tok_uix` (`token`);

--
-- Indexes for table `mo_mnet_sso_access_control`
--
ALTER TABLE `mo_mnet_sso_access_control`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_mnetssoaccecont_mneuse_uix` (`mnet_host_id`,`username`);

--
-- Indexes for table `mo_modules`
--
ALTER TABLE `mo_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_modu_nam_ix` (`name`);

--
-- Indexes for table `mo_my_pages`
--
ALTER TABLE `mo_my_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_mypage_usepri_ix` (`userid`,`private`);

--
-- Indexes for table `mo_notifications`
--
ALTER TABLE `mo_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_noti_use_ix` (`useridfrom`),
  ADD KEY `mo_noti_use2_ix` (`useridto`);

--
-- Indexes for table `mo_oauth2_access_token`
--
ALTER TABLE `mo_oauth2_access_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_oautaccetoke_iss_uix` (`issuerid`);

--
-- Indexes for table `mo_oauth2_endpoint`
--
ALTER TABLE `mo_oauth2_endpoint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_oautendp_iss_ix` (`issuerid`);

--
-- Indexes for table `mo_oauth2_issuer`
--
ALTER TABLE `mo_oauth2_issuer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_oauth2_refresh_token`
--
ALTER TABLE `mo_oauth2_refresh_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_oautrefrtoke_useisssco_uix` (`userid`,`issuerid`,`scopehash`),
  ADD KEY `mo_oautrefrtoke_iss_ix` (`issuerid`),
  ADD KEY `mo_oautrefrtoke_use_ix` (`userid`);

--
-- Indexes for table `mo_oauth2_system_account`
--
ALTER TABLE `mo_oauth2_system_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_oautsystacco_iss_uix` (`issuerid`);

--
-- Indexes for table `mo_oauth2_user_field_mapping`
--
ALTER TABLE `mo_oauth2_user_field_mapping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_oautuserfielmapp_issint_uix` (`issuerid`,`internalfield`),
  ADD KEY `mo_oautuserfielmapp_iss_ix` (`issuerid`);

--
-- Indexes for table `mo_page`
--
ALTER TABLE `mo_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_page_cou_ix` (`course`);

--
-- Indexes for table `mo_paygw_paypal`
--
ALTER TABLE `mo_paygw_paypal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_paygpayp_pay_uix` (`paymentid`);

--
-- Indexes for table `mo_payments`
--
ALTER TABLE `mo_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_paym_gat_ix` (`gateway`),
  ADD KEY `mo_paym_compayite_ix` (`component`,`paymentarea`,`itemid`),
  ADD KEY `mo_paym_use_ix` (`userid`),
  ADD KEY `mo_paym_acc_ix` (`accountid`);

--
-- Indexes for table `mo_payment_accounts`
--
ALTER TABLE `mo_payment_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_payment_gateways`
--
ALTER TABLE `mo_payment_gateways`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_paymgate_acc_ix` (`accountid`);

--
-- Indexes for table `mo_portfolio_instance`
--
ALTER TABLE `mo_portfolio_instance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_portfolio_instance_config`
--
ALTER TABLE `mo_portfolio_instance_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_portinstconf_nam_ix` (`name`),
  ADD KEY `mo_portinstconf_ins_ix` (`instance`);

--
-- Indexes for table `mo_portfolio_instance_user`
--
ALTER TABLE `mo_portfolio_instance_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_portinstuser_ins_ix` (`instance`),
  ADD KEY `mo_portinstuser_use_ix` (`userid`);

--
-- Indexes for table `mo_portfolio_log`
--
ALTER TABLE `mo_portfolio_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_portlog_use_ix` (`userid`),
  ADD KEY `mo_portlog_por_ix` (`portfolio`);

--
-- Indexes for table `mo_portfolio_mahara_queue`
--
ALTER TABLE `mo_portfolio_mahara_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_portmahaqueu_tok_ix` (`token`),
  ADD KEY `mo_portmahaqueu_tra_ix` (`transferid`);

--
-- Indexes for table `mo_portfolio_tempdata`
--
ALTER TABLE `mo_portfolio_tempdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_porttemp_use_ix` (`userid`),
  ADD KEY `mo_porttemp_ins_ix` (`instance`);

--
-- Indexes for table `mo_post`
--
ALTER TABLE `mo_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_post_iduse_uix` (`id`,`userid`),
  ADD KEY `mo_post_las_ix` (`lastmodified`),
  ADD KEY `mo_post_mod_ix` (`module`),
  ADD KEY `mo_post_sub_ix` (`subject`),
  ADD KEY `mo_post_use_ix` (`usermodified`);

--
-- Indexes for table `mo_profiling`
--
ALTER TABLE `mo_profiling`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_prof_run_uix` (`runid`),
  ADD KEY `mo_prof_urlrun_ix` (`url`,`runreference`),
  ADD KEY `mo_prof_timrun_ix` (`timecreated`,`runreference`);

--
-- Indexes for table `mo_qtype_ddimageortext`
--
ALTER TABLE `mo_qtype_ddimageortext`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_qtypddim_que_ix` (`questionid`);

--
-- Indexes for table `mo_qtype_ddimageortext_drags`
--
ALTER TABLE `mo_qtype_ddimageortext_drags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_qtypddimdrag_que_ix` (`questionid`);

--
-- Indexes for table `mo_qtype_ddimageortext_drops`
--
ALTER TABLE `mo_qtype_ddimageortext_drops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_qtypddimdrop_que_ix` (`questionid`);

--
-- Indexes for table `mo_qtype_ddmarker`
--
ALTER TABLE `mo_qtype_ddmarker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_qtypddma_que_ix` (`questionid`);

--
-- Indexes for table `mo_qtype_ddmarker_drags`
--
ALTER TABLE `mo_qtype_ddmarker_drags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_qtypddmadrag_que_ix` (`questionid`);

--
-- Indexes for table `mo_qtype_ddmarker_drops`
--
ALTER TABLE `mo_qtype_ddmarker_drops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_qtypddmadrop_que_ix` (`questionid`);

--
-- Indexes for table `mo_qtype_essay_options`
--
ALTER TABLE `mo_qtype_essay_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_qtypessaopti_que_uix` (`questionid`);

--
-- Indexes for table `mo_qtype_match_options`
--
ALTER TABLE `mo_qtype_match_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_qtypmatcopti_que_uix` (`questionid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mo_mnetservice_enrol_courses`
--
ALTER TABLE `mo_mnetservice_enrol_courses`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_mnetservice_enrol_enrolments`
--
ALTER TABLE `mo_mnetservice_enrol_enrolments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_mnet_application`
--
ALTER TABLE `mo_mnet_application`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mo_mnet_host`
--
ALTER TABLE `mo_mnet_host`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mo_mnet_host2service`
--
ALTER TABLE `mo_mnet_host2service`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_mnet_log`
--
ALTER TABLE `mo_mnet_log`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_mnet_remote_rpc`
--
ALTER TABLE `mo_mnet_remote_rpc`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mo_mnet_remote_service2rpc`
--
ALTER TABLE `mo_mnet_remote_service2rpc`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mo_mnet_rpc`
--
ALTER TABLE `mo_mnet_rpc`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mo_mnet_service`
--
ALTER TABLE `mo_mnet_service`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mo_mnet_service2rpc`
--
ALTER TABLE `mo_mnet_service2rpc`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mo_mnet_session`
--
ALTER TABLE `mo_mnet_session`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_mnet_sso_access_control`
--
ALTER TABLE `mo_mnet_sso_access_control`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_modules`
--
ALTER TABLE `mo_modules`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mo_my_pages`
--
ALTER TABLE `mo_my_pages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `mo_notifications`
--
ALTER TABLE `mo_notifications`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `mo_oauth2_access_token`
--
ALTER TABLE `mo_oauth2_access_token`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mo_oauth2_endpoint`
--
ALTER TABLE `mo_oauth2_endpoint`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `mo_oauth2_issuer`
--
ALTER TABLE `mo_oauth2_issuer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mo_oauth2_refresh_token`
--
ALTER TABLE `mo_oauth2_refresh_token`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_oauth2_system_account`
--
ALTER TABLE `mo_oauth2_system_account`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mo_oauth2_user_field_mapping`
--
ALTER TABLE `mo_oauth2_user_field_mapping`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `mo_page`
--
ALTER TABLE `mo_page`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `mo_paygw_paypal`
--
ALTER TABLE `mo_paygw_paypal`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_payments`
--
ALTER TABLE `mo_payments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_payment_accounts`
--
ALTER TABLE `mo_payment_accounts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mo_payment_gateways`
--
ALTER TABLE `mo_payment_gateways`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mo_portfolio_instance`
--
ALTER TABLE `mo_portfolio_instance`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_portfolio_instance_config`
--
ALTER TABLE `mo_portfolio_instance_config`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_portfolio_instance_user`
--
ALTER TABLE `mo_portfolio_instance_user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_portfolio_log`
--
ALTER TABLE `mo_portfolio_log`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_portfolio_mahara_queue`
--
ALTER TABLE `mo_portfolio_mahara_queue`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_portfolio_tempdata`
--
ALTER TABLE `mo_portfolio_tempdata`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_post`
--
ALTER TABLE `mo_post`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_profiling`
--
ALTER TABLE `mo_profiling`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_qtype_ddimageortext`
--
ALTER TABLE `mo_qtype_ddimageortext`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mo_qtype_ddimageortext_drags`
--
ALTER TABLE `mo_qtype_ddimageortext_drags`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mo_qtype_ddimageortext_drops`
--
ALTER TABLE `mo_qtype_ddimageortext_drops`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_qtype_ddmarker`
--
ALTER TABLE `mo_qtype_ddmarker`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_qtype_ddmarker_drags`
--
ALTER TABLE `mo_qtype_ddmarker_drags`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_qtype_ddmarker_drops`
--
ALTER TABLE `mo_qtype_ddmarker_drops`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_qtype_essay_options`
--
ALTER TABLE `mo_qtype_essay_options`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_qtype_match_options`
--
ALTER TABLE `mo_qtype_match_options`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
