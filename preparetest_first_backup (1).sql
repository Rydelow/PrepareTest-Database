-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2021 at 06:25 AM
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
-- Table structure for table `mo_analytics_indicator_calc`
--

CREATE TABLE `mo_analytics_indicator_calc` (
  `id` bigint NOT NULL,
  `starttime` bigint NOT NULL,
  `endtime` bigint NOT NULL,
  `contextid` bigint NOT NULL,
  `sampleorigin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sampleid` bigint NOT NULL,
  `indicator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` decimal(10,2) DEFAULT NULL,
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stored indicator calculations';

-- --------------------------------------------------------

--
-- Table structure for table `mo_analytics_models`
--

CREATE TABLE `mo_analytics_models` (
  `id` bigint NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `trained` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `indicators` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timesplitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `predictionsprocessor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` bigint NOT NULL,
  `contextids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint DEFAULT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Analytic models.';

--
-- Dumping data for table `mo_analytics_models`
--

INSERT INTO `mo_analytics_models` (`id`, `enabled`, `trained`, `name`, `target`, `indicators`, `timesplitting`, `predictionsprocessor`, `version`, `contextids`, `timecreated`, `timemodified`, `usermodified`) VALUES
(1, 0, 0, NULL, '\\core_course\\analytics\\target\\course_dropout', '[\"\\\\core\\\\analytics\\\\indicator\\\\any_access_after_end\",\"\\\\core\\\\analytics\\\\indicator\\\\any_access_before_start\",\"\\\\core\\\\analytics\\\\indicator\\\\any_write_action_in_course\",\"\\\\core\\\\analytics\\\\indicator\\\\read_actions\",\"\\\\core_course\\\\analytics\\\\indicator\\\\completion_enabled\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_cognitive_depth\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_social_breadth\",\"\\\\mod_assign\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_assign\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\social_breadth\"]', NULL, NULL, 1599457751, NULL, 1599457751, 1599457751, 0),
(2, 1, 1, NULL, '\\core_course\\analytics\\target\\no_teaching', '[\"\\\\core_course\\\\analytics\\\\indicator\\\\no_teacher\",\"\\\\core_course\\\\analytics\\\\indicator\\\\no_student\"]', '\\core\\analytics\\time_splitting\\single_range', NULL, 1599457751, NULL, 1599457751, 1599457751, 0),
(3, 1, 1, NULL, '\\core_user\\analytics\\target\\upcoming_activities_due', '[\"\\\\core_course\\\\analytics\\\\indicator\\\\activities_due\"]', '\\core\\analytics\\time_splitting\\upcoming_week', NULL, 1599457751, NULL, 1599457751, 1599457751, 0),
(4, 1, 1, NULL, '\\core_course\\analytics\\target\\no_access_since_course_start', '[\"\\\\core\\\\analytics\\\\indicator\\\\any_course_access\"]', '\\core\\analytics\\time_splitting\\one_month_after_start', NULL, 1599457751, NULL, 1599457751, 1599457751, 0),
(5, 1, 1, NULL, '\\core_course\\analytics\\target\\no_recent_accesses', '[\"\\\\core\\\\analytics\\\\indicator\\\\any_course_access\"]', '\\core\\analytics\\time_splitting\\past_month', NULL, 1599457751, NULL, 1599457751, 1599457751, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mo_analytics_models_log`
--

CREATE TABLE `mo_analytics_models_log` (
  `id` bigint NOT NULL,
  `modelid` bigint NOT NULL,
  `version` bigint NOT NULL,
  `evaluationmode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `indicators` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timesplitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dir` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint NOT NULL,
  `usermodified` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Analytic models changes during evaluation.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_analytics_predictions`
--

CREATE TABLE `mo_analytics_predictions` (
  `id` bigint NOT NULL,
  `modelid` bigint NOT NULL,
  `contextid` bigint NOT NULL,
  `sampleid` bigint NOT NULL,
  `rangeindex` mediumint NOT NULL,
  `prediction` decimal(10,2) NOT NULL,
  `predictionscore` decimal(10,5) NOT NULL,
  `calculations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timestart` bigint DEFAULT NULL,
  `timeend` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Predictions';

-- --------------------------------------------------------

--
-- Table structure for table `mo_analytics_prediction_actions`
--

CREATE TABLE `mo_analytics_prediction_actions` (
  `id` bigint NOT NULL,
  `predictionid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `actionname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Register of user actions over predictions.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_analytics_predict_samples`
--

CREATE TABLE `mo_analytics_predict_samples` (
  `id` bigint NOT NULL,
  `modelid` bigint NOT NULL,
  `analysableid` bigint NOT NULL,
  `timesplitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rangeindex` bigint NOT NULL,
  `sampleids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Samples already used for predictions.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_analytics_train_samples`
--

CREATE TABLE `mo_analytics_train_samples` (
  `id` bigint NOT NULL,
  `modelid` bigint NOT NULL,
  `analysableid` bigint NOT NULL,
  `timesplitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sampleids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Samples used for training';

-- --------------------------------------------------------

--
-- Table structure for table `mo_analytics_used_analysables`
--

CREATE TABLE `mo_analytics_used_analysables` (
  `id` bigint NOT NULL,
  `modelid` bigint NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `analysableid` bigint NOT NULL,
  `firstanalysis` bigint NOT NULL,
  `timeanalysed` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of analysables used by each model';

-- --------------------------------------------------------

--
-- Table structure for table `mo_analytics_used_files`
--

CREATE TABLE `mo_analytics_used_files` (
  `id` bigint NOT NULL,
  `modelid` bigint NOT NULL DEFAULT '0',
  `fileid` bigint NOT NULL DEFAULT '0',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Files that have already been used for training and predictio';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assign`
--

CREATE TABLE `mo_assign` (
  `id` bigint NOT NULL,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `alwaysshowdescription` tinyint NOT NULL DEFAULT '0',
  `nosubmissions` tinyint NOT NULL DEFAULT '0',
  `submissiondrafts` tinyint NOT NULL DEFAULT '0',
  `sendnotifications` tinyint NOT NULL DEFAULT '0',
  `sendlatenotifications` tinyint NOT NULL DEFAULT '0',
  `duedate` bigint NOT NULL DEFAULT '0',
  `allowsubmissionsfromdate` bigint NOT NULL DEFAULT '0',
  `grade` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `requiresubmissionstatement` tinyint NOT NULL DEFAULT '0',
  `completionsubmit` tinyint NOT NULL DEFAULT '0',
  `cutoffdate` bigint NOT NULL DEFAULT '0',
  `gradingduedate` bigint NOT NULL DEFAULT '0',
  `teamsubmission` tinyint NOT NULL DEFAULT '0',
  `requireallteammemberssubmit` tinyint NOT NULL DEFAULT '0',
  `teamsubmissiongroupingid` bigint NOT NULL DEFAULT '0',
  `blindmarking` tinyint NOT NULL DEFAULT '0',
  `hidegrader` tinyint NOT NULL DEFAULT '0',
  `revealidentities` tinyint NOT NULL DEFAULT '0',
  `attemptreopenmethod` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `maxattempts` mediumint NOT NULL DEFAULT '-1',
  `markingworkflow` tinyint NOT NULL DEFAULT '0',
  `markingallocation` tinyint NOT NULL DEFAULT '0',
  `sendstudentnotifications` tinyint NOT NULL DEFAULT '1',
  `preventsubmissionnotingroup` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table saves information about an instance of mod_assign';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignfeedback_comments`
--

CREATE TABLE `mo_assignfeedback_comments` (
  `id` bigint NOT NULL,
  `assignment` bigint NOT NULL DEFAULT '0',
  `grade` bigint NOT NULL DEFAULT '0',
  `commenttext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `commentformat` smallint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Text feedback for submitted assignments';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignfeedback_editpdf_annot`
--

CREATE TABLE `mo_assignfeedback_editpdf_annot` (
  `id` bigint NOT NULL,
  `gradeid` bigint NOT NULL DEFAULT '0',
  `pageno` bigint NOT NULL DEFAULT '0',
  `x` bigint DEFAULT '0',
  `y` bigint DEFAULT '0',
  `endx` bigint DEFAULT '0',
  `endy` bigint DEFAULT '0',
  `path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'line',
  `colour` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'black',
  `draft` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='stores annotations added to pdfs submitted by students';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignfeedback_editpdf_cmnt`
--

CREATE TABLE `mo_assignfeedback_editpdf_cmnt` (
  `id` bigint NOT NULL,
  `gradeid` bigint NOT NULL DEFAULT '0',
  `x` bigint DEFAULT '0',
  `y` bigint DEFAULT '0',
  `width` bigint DEFAULT '120',
  `rawtext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pageno` bigint NOT NULL DEFAULT '0',
  `colour` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'black',
  `draft` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores comments added to pdfs';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignfeedback_editpdf_queue`
--

CREATE TABLE `mo_assignfeedback_editpdf_queue` (
  `id` bigint NOT NULL,
  `submissionid` bigint NOT NULL,
  `submissionattempt` bigint NOT NULL,
  `attemptedconversions` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Queue for processing.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignfeedback_editpdf_quick`
--

CREATE TABLE `mo_assignfeedback_editpdf_quick` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `rawtext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` bigint NOT NULL DEFAULT '120',
  `colour` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'yellow'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores teacher specified quicklist comments';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignfeedback_editpdf_rot`
--

CREATE TABLE `mo_assignfeedback_editpdf_rot` (
  `id` bigint NOT NULL,
  `gradeid` bigint NOT NULL DEFAULT '0',
  `pageno` bigint NOT NULL DEFAULT '0',
  `pathnamehash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isrotated` tinyint(1) NOT NULL DEFAULT '0',
  `degree` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores rotation information of a page.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignfeedback_file`
--

CREATE TABLE `mo_assignfeedback_file` (
  `id` bigint NOT NULL,
  `assignment` bigint NOT NULL DEFAULT '0',
  `grade` bigint NOT NULL DEFAULT '0',
  `numfiles` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores info about the number of files submitted by a student';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignment`
--

CREATE TABLE `mo_assignment` (
  `id` bigint NOT NULL,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `assignmenttype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `resubmit` tinyint NOT NULL DEFAULT '0',
  `preventlate` tinyint NOT NULL DEFAULT '0',
  `emailteachers` tinyint NOT NULL DEFAULT '0',
  `var1` bigint DEFAULT '0',
  `var2` bigint DEFAULT '0',
  `var3` bigint DEFAULT '0',
  `var4` bigint DEFAULT '0',
  `var5` bigint DEFAULT '0',
  `maxbytes` bigint NOT NULL DEFAULT '100000',
  `timedue` bigint NOT NULL DEFAULT '0',
  `timeavailable` bigint NOT NULL DEFAULT '0',
  `grade` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Defines assignments';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignment_submissions`
--

CREATE TABLE `mo_assignment_submissions` (
  `id` bigint NOT NULL,
  `assignment` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `numfiles` bigint NOT NULL DEFAULT '0',
  `data1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `data2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `grade` bigint NOT NULL DEFAULT '0',
  `submissioncomment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` smallint NOT NULL DEFAULT '0',
  `teacher` bigint NOT NULL DEFAULT '0',
  `timemarked` bigint NOT NULL DEFAULT '0',
  `mailed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Info about submitted assignments';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignment_upgrade`
--

CREATE TABLE `mo_assignment_upgrade` (
  `id` bigint NOT NULL,
  `oldcmid` bigint NOT NULL DEFAULT '0',
  `oldinstance` bigint NOT NULL DEFAULT '0',
  `newcmid` bigint NOT NULL DEFAULT '0',
  `newinstance` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Info about upgraded assignments';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignsubmission_file`
--

CREATE TABLE `mo_assignsubmission_file` (
  `id` bigint NOT NULL,
  `assignment` bigint NOT NULL DEFAULT '0',
  `submission` bigint NOT NULL DEFAULT '0',
  `numfiles` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Info about file submissions for assignments';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assignsubmission_onlinetext`
--

CREATE TABLE `mo_assignsubmission_onlinetext` (
  `id` bigint NOT NULL,
  `assignment` bigint NOT NULL DEFAULT '0',
  `submission` bigint NOT NULL DEFAULT '0',
  `onlinetext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `onlineformat` smallint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Info about onlinetext submission';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assign_grades`
--

CREATE TABLE `mo_assign_grades` (
  `id` bigint NOT NULL,
  `assignment` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `grader` bigint NOT NULL DEFAULT '0',
  `grade` decimal(10,5) DEFAULT '0.00000',
  `attemptnumber` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Grading information about a single assignment submission.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assign_overrides`
--

CREATE TABLE `mo_assign_overrides` (
  `id` bigint NOT NULL,
  `assignid` bigint NOT NULL DEFAULT '0',
  `groupid` bigint DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  `sortorder` bigint DEFAULT NULL,
  `allowsubmissionsfromdate` bigint DEFAULT NULL,
  `duedate` bigint DEFAULT NULL,
  `cutoffdate` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The overrides to assign settings.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assign_plugin_config`
--

CREATE TABLE `mo_assign_plugin_config` (
  `id` bigint NOT NULL,
  `assignment` bigint NOT NULL DEFAULT '0',
  `plugin` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subtype` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Config data for an instance of a plugin in an assignment.';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assign_submission`
--

CREATE TABLE `mo_assign_submission` (
  `id` bigint NOT NULL,
  `assignment` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupid` bigint NOT NULL DEFAULT '0',
  `attemptnumber` bigint NOT NULL DEFAULT '0',
  `latest` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table keeps information about student interactions with';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assign_user_flags`
--

CREATE TABLE `mo_assign_user_flags` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `assignment` bigint NOT NULL DEFAULT '0',
  `locked` bigint NOT NULL DEFAULT '0',
  `mailed` smallint NOT NULL DEFAULT '0',
  `extensionduedate` bigint NOT NULL DEFAULT '0',
  `workflowstate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allocatedmarker` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of flags that can be set for a single user in a single ';

-- --------------------------------------------------------

--
-- Table structure for table `mo_assign_user_mapping`
--

CREATE TABLE `mo_assign_user_mapping` (
  `id` bigint NOT NULL,
  `assignment` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Map an assignment specific id number to a user';

-- --------------------------------------------------------

--
-- Table structure for table `mo_auth_oauth2_linked_login`
--

CREATE TABLE `mo_auth_oauth2_linked_login` (
  `id` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `issuerid` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `confirmtoken` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmtokenexpires` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Accounts linked to a users Moodle account.';

--
-- Dumping data for table `mo_auth_oauth2_linked_login`
--

INSERT INTO `mo_auth_oauth2_linked_login` (`id`, `timecreated`, `timemodified`, `usermodified`, `userid`, `issuerid`, `username`, `email`, `confirmtoken`, `confirmtokenexpires`) VALUES
(1, 1623995002, 1623995002, 0, 77, 3, 'kirandeep.arora08@gmail.com', 'kirandeep.arora08@gmail.com', '', 0),
(2, 1624001569, 1624001770, 0, 76, 2, 'userdemo367@gmail.com', 'userdemo367@gmail.com', '', 0),
(5, 1629043396, 1629043396, 0, 87, 2, 'hanudondapati@gmail.com', 'hanudondapati@gmail.com', '', 0),
(6, 1629043405, 1629043405, 0, 88, 2, 'sruthibodepudi@gmail.com', 'sruthibodepudi@gmail.com', '', 0),
(7, 1629204404, 1629204404, 0, 89, 2, 'rajkmm2@gmail.com', 'rajkmm2@gmail.com', '', 0),
(8, 1631022230, 1631022230, 0, 93, 2, 'raju.cr021@gmail.com', 'raju.cr021@gmail.com', '', 0),
(9, 1632367737, 1632367737, 0, 95, 2, 'dasdip179@gmail.com', 'dasdip179@gmail.com', '', 0),
(10, 1632370619, 1632370619, 0, 96, 2, 'nayaksanjay06145@gmail.com', 'nayaksanjay06145@gmail.com', '', 0),
(11, 1632371037, 1632371037, 0, 97, 2, 'goyalatul6263@gmail.com', 'goyalatul6263@gmail.com', '', 0),
(12, 1632405098, 1632405098, 1, 98, 2, 'vanishree9964@gmail.com', 'vanishree9964@gmail.com', '', 0),
(13, 1632813683, 1632813683, 1, 100, 2, 'bhargavim498@gmail.com', 'bhargavim498@gmail.com', '', 0),
(15, 1633491594, 1633491594, 0, 104, 2, 'rajivranjan012345678@gmail.com', 'rajivranjan012345678@gmail.com', '', 0),
(16, 1633569883, 1633569883, 0, 105, 2, 'mogilishettyswetha123@gmail.com', 'mogilishettyswetha123@gmail.com', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mo_backup_controllers`
--

CREATE TABLE `mo_backup_controllers` (
  `id` bigint NOT NULL,
  `backupid` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `operation` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'backup',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint NOT NULL,
  `format` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `interactive` smallint NOT NULL,
  `purpose` smallint NOT NULL,
  `userid` bigint NOT NULL,
  `status` smallint NOT NULL,
  `execution` smallint NOT NULL,
  `executiontime` bigint NOT NULL,
  `checksum` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `progress` decimal(15,14) NOT NULL DEFAULT '0.00000000000000',
  `controller` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='To store the backup_controllers as they are used';

--
-- Dumping data for table `mo_backup_controllers`
--

INSERT INTO `mo_backup_controllers` (`id`, `backupid`, `operation`, `type`, `itemid`, `format`, `interactive`, `purpose`, `userid`, `status`, `execution`, `executiontime`, `checksum`, `timecreated`, `timemodified`, `progress`, `controller`) VALUES
(1, 'fb464aa7b2cbd9363480996463e72e54', 'backup', 'activity', 9, 'moodle2', 0, 50, 2, 1000, 1, 0, 'c5e2f1fe86992a03965cb3e6aac99cef', 1599971719, 1599971720, '0.00000000000000', ''),
(2, '0bf96dc8d305fb1ad06e1a9be1f5948d', 'backup', 'course', 10, 'moodle2', 0, 50, 2, 1000, 1, 0, '97007af0fcc2acd2f8b431e74bdb98b5', 1607740336, 1607740336, '0.00000000000000', ''),
(3, '8d0fd399136b84631867806d5674aeb7', 'backup', 'course', 9, 'moodle2', 0, 50, 2, 1000, 1, 0, '4c5344da7a292091286a6991f3b2bb5b', 1607740354, 1607740355, '0.00000000000000', ''),
(4, 'f98055fcb4811137e95f9d13728c8927', 'backup', 'course', 11, 'moodle2', 0, 50, 2, 1000, 1, 0, '5df3185ad5201b6af126c7d096b94d0f', 1608288740, 1608288741, '0.00000000000000', ''),
(5, '4c8ec8994b8227948f5dfbd9f48a14dc', 'backup', 'course', 7, 'moodle2', 0, 50, 2, 1000, 1, 0, '006099c2a6649a735ea8d37ba5f38aba', 1608288772, 1608288773, '0.00000000000000', ''),
(6, '94864b13b97ebfe070f378b581bfb042', 'backup', 'course', 4, 'moodle2', 0, 50, 2, 1000, 1, 0, 'b44d4963cc0f83e5244836bc6b346969', 1608614277, 1608614279, '0.00000000000000', ''),
(7, '77ecfe4105f10d5e89238fb0f62100d0', 'backup', 'course', 6, 'moodle2', 0, 50, 2, 1000, 1, 0, '4f65683c8477a20108d0f5b9e3dd9d84', 1608614377, 1608614380, '0.00000000000000', ''),
(8, '48840a01c478d8d09d5263e8a6bdd47a', 'backup', 'course', 8, 'moodle2', 0, 50, 2, 1000, 1, 0, 'ffa68fee5d14f9361f2d0b77fe25b875', 1608614419, 1608614419, '0.00000000000000', ''),
(9, 'c318e354f8b01eec3e00f835c494330f', 'backup', 'course', 1, 'moodle2', 1, 10, 2, 500, 1, 0, '5b856139fbcd67c2830e618affc2ee46', 1608716188, 0, '0.00000000000000', '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OiIAKgBkZXBlbmRlbmNpZXMiO2E6MTp7czoxNjoiZm9ydW1fMV91c2VyaW5mbyI7cjoyMjk7fXM6MTQ6IgAqAGRlcGVuZGVudG9uIjthOjI6e3M6NToidXNlcnMiO086NDE6InNldHRpbmdfZGVwZW5kZW5jeV9kaXNhYmxlZGlmX25vdF9jaGVja2VkIjo1OntzOjg6IgAqAHZhbHVlIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjo1MDtzOjE5OiIAKgBkZXBlbmRlbnRzZXR0aW5nIjtyOjIzMTtzOjE1OiIAKgBkZWZhdWx0dmFsdWUiO2I6MDtzOjEyOiIAKgBsYXN0dmFsdWUiO2k6MTt9czoxODoic2VjdGlvbl8xX2luY2x1ZGVkIjtPOjQxOiJzZXR0aW5nX2RlcGVuZGVuY3lfZGlzYWJsZWRpZl9ub3RfY2hlY2tlZCI6NTp7czo4OiIAKgB2YWx1ZSI7YjowO3M6MTA6IgAqAHNldHRpbmciO086MzE6ImJhY2t1cF9zZWN0aW9uX2luY2x1ZGVkX3NldHRpbmciOjExOntzOjg6IgAqAGxldmVsIjtpOjk7czo3OiIAKgBuYW1lIjtzOjE4OiJzZWN0aW9uXzFfaW5jbHVkZWQiO3M6ODoiACoAdmFsdWUiO2k6MTtzOjE2OiIAKgB1bmxvY2tlZHZhbHVlIjtpOjE7czo4OiIAKgB2dHlwZSI7czo0OiJib29sIjtzOjEzOiIAKgB2aXNpYmlsaXR5IjtpOjE7czo5OiIAKgBzdGF0dXMiO2k6MztzOjE1OiIAKgBkZXBlbmRlbmNpZXMiO2E6Mjp7czoxODoic2VjdGlvbl8xX3VzZXJpbmZvIjtyOjI0ODtzOjE2OiJmb3J1bV8xX2luY2x1ZGVkIjtPOjQxOiJzZXR0aW5nX2RlcGVuZGVuY3lfZGlzYWJsZWRpZl9ub3RfY2hlY2tlZCI6NTp7czo4OiIAKgB2YWx1ZSI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6MjUwO3M6MTk6IgAqAGRlcGVuZGVudHNldHRpbmciO3I6MjAxO3M6MTU6IgAqAGRlZmF1bHR2YWx1ZSI7YjowO3M6MTI6IgAqAGxhc3R2YWx1ZSI7aToxO319czoxNDoiACoAZGVwZW5kZW50b24iO2E6MDp7fXM6MTI6IgAqAHVpc2V0dGluZyI7TzoyNjoiYmFja3VwX3NldHRpbmdfdWlfY2hlY2tib3giOjk6e3M6NzoiACoAdHlwZSI7aToxMDtzOjEzOiIAKgBjaGFuZ2VhYmxlIjtiOjE7czo3OiIAKgB0ZXh0IjtOO3M6MTA6IgAqAG9wdGlvbnMiO2E6MDp7fXM6NzoiACoAbmFtZSI7czoyNjoic2VjdGlvbl9zZWN0aW9uXzFfaW5jbHVkZWQiO3M6ODoiACoAbGFiZWwiO3M6NDoiU2l0ZSI7czoxMzoiACoAYXR0cmlidXRlcyI7YTowOnt9czo3OiIAKgBpY29uIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjoyNTA7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6MTk6IgAqAGRlcGVuZGVudHNldHRpbmciO3I6MjMxO3M6MTU6IgAqAGRlZmF1bHR2YWx1ZSI7YjowO3M6MTI6IgAqAGxhc3R2YWx1ZSI7aToxO319czoxMjoiACoAdWlzZXR0aW5nIjtPOjI2OiJiYWNrdXBfc2V0dGluZ191aV9jaGVja2JveCI6OTp7czo3OiIAKgB0eXBlIjtpOjEwO3M6MTM6IgAqAGNoYW5nZWFibGUiO2I6MTtzOjc6IgAqAHRleHQiO047czoxMDoiACoAb3B0aW9ucyI7YTowOnt9czo3OiIAKgBuYW1lIjtzOjI2OiJzZWN0aW9uX3NlY3Rpb25fMV91c2VyaW5mbyI7czo4OiIAKgBsYWJlbCI7czo5OiJVc2VyIGRhdGEiO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6MDp7fXM6NzoiACoAaWNvbiI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6MjMxO31zOjc6IgAqAGhlbHAiO2E6MDp7fX1zOjE5OiIAKgBkZXBlbmRlbnRzZXR0aW5nIjtyOjIxMztzOjE1OiIAKgBkZWZhdWx0dmFsdWUiO2I6MDtzOjEyOiIAKgBsYXN0dmFsdWUiO2k6MTt9czoxNjoiZm9ydW1fMV9pbmNsdWRlZCI7cjoyMTA7fXM6MTI6IgAqAHVpc2V0dGluZyI7TzoyNjoiYmFja3VwX3NldHRpbmdfdWlfY2hlY2tib3giOjk6e3M6NzoiACoAdHlwZSI7aToxMDtzOjEzOiIAKgBjaGFuZ2VhYmxlIjtiOjE7czo3OiIAKgB0ZXh0IjtOO3M6MTA6IgAqAG9wdGlvbnMiO2E6MDp7fXM6NzoiACoAbmFtZSI7czoyNToiYWN0aXZpdHlfZm9ydW1fMV91c2VyaW5mbyI7czo4OiIAKgBsYWJlbCI7czoxOiItIjtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjA6e31zOjc6IgAqAGljb24iO2I6MDtzOjEwOiIAKgBzZXR0aW5nIjtyOjIxMzt9czo3OiIAKgBoZWxwIjthOjA6e319czoxNToiACoAZGVmYXVsdHZhbHVlIjtiOjA7czoxMjoiACoAbGFzdHZhbHVlIjtpOjE7fX1zOjE0OiIAKgBkZXBlbmRlbnRvbiI7YToyOntzOjEwOiJhY3Rpdml0aWVzIjtyOjE5ODtzOjE4OiJzZWN0aW9uXzFfaW5jbHVkZWQiO3I6MjYwO31zOjEyOiIAKgB1aXNldHRpbmciO086MjY6ImJhY2t1cF9zZXR0aW5nX3VpX2NoZWNrYm94Ijo5OntzOjc6IgAqAHR5cGUiO2k6MTA7czoxMzoiACoAY2hhbmdlYWJsZSI7YjoxO3M6NzoiACoAdGV4dCI7TjtzOjEwOiIAKgBvcHRpb25zIjthOjA6e31zOjc6IgAqAG5hbWUiO3M6MjU6ImFjdGl2aXR5X2ZvcnVtXzFfaW5jbHVkZWQiO3M6ODoiACoAbGFiZWwiO3M6MTY6ImZvcnVtXzFfaW5jbHVkZWQiO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6MDp7fXM6NzoiACoAaWNvbiI7TzoxMDoiaW1hZ2VfaWNvbiI6Mzp7czozOiJwaXgiO3M6NDoiaWNvbiI7czo5OiJjb21wb25lbnQiO3M6NToiZm9ydW0iO3M6MTA6ImF0dHJpYnV0ZXMiO2E6Mzp7czo1OiJjbGFzcyI7czoxOToiaWNvbmxhcmdlIGljb24tcG9zdCI7czozOiJhbHQiO3M6NToiRm9ydW0iO3M6NToidGl0bGUiO3M6NToiRm9ydW0iO319czoxMDoiACoAc2V0dGluZyI7cjoyMDE7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6MTU6IgAqAGRlZmF1bHR2YWx1ZSI7YjowO3M6MTI6IgAqAGxhc3R2YWx1ZSI7aToxO319czoxNDoiACoAZGVwZW5kZW50b24iO2E6MDp7fXM6MTI6IgAqAHVpc2V0dGluZyI7TzoyNjoiYmFja3VwX3NldHRpbmdfdWlfY2hlY2tib3giOjk6e3M6NzoiACoAdHlwZSI7aToxMDtzOjEzOiIAKgBjaGFuZ2VhYmxlIjtiOjE7czo3OiIAKgB0ZXh0IjtOO3M6MTA6IgAqAG9wdGlvbnMiO2E6MDp7fXM6NzoiACoAbmFtZSI7czoxNToicm9vdF9hY3Rpdml0aWVzIjtzOjg6IgAqAGxhYmVsIjtzOjMyOiJJbmNsdWRlIGFjdGl2aXRpZXMgYW5kIHJlc291cmNlcyI7czoxMzoiACoAYXR0cmlidXRlcyI7YTowOnt9czo3OiIAKgBpY29uIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjoxNTU7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6MTk6IgAqAGRlcGVuZGVudHNldHRpbmciO3I6MTQzO3M6MTU6IgAqAGRlZmF1bHR2YWx1ZSI7YjowO3M6MTI6IgAqAGxhc3R2YWx1ZSI7aToxO31zOjU6InVzZXJzIjtyOjE0MDt9czoxMjoiACoAdWlzZXR0aW5nIjtPOjI2OiJiYWNrdXBfc2V0dGluZ191aV9jaGVja2JveCI6OTp7czo3OiIAKgB0eXBlIjtpOjEwO3M6MTM6IgAqAGNoYW5nZWFibGUiO2I6MTtzOjc6IgAqAHRleHQiO047czoxMDoiACoAb3B0aW9ucyI7YTowOnt9czo3OiIAKgBuYW1lIjtzOjExOiJyb290X2JhZGdlcyI7czo4OiIAKgBsYWJlbCI7czoxNDoiSW5jbHVkZSBiYWRnZXMiO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6MDp7fXM6NzoiACoAaWNvbiI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6MTQzO31zOjc6IgAqAGhlbHAiO2E6MDp7fX1zOjE1OiIAKgBkZWZhdWx0dmFsdWUiO2I6MDtzOjEyOiIAKgBsYXN0dmFsdWUiO2k6MTt9czoxNToidXNlcnNjb21wbGV0aW9uIjtPOjQxOiJzZXR0aW5nX2RlcGVuZGVuY3lfZGlzYWJsZWRpZl9ub3RfY2hlY2tlZCI6NTp7czo4OiIAKgB2YWx1ZSI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6NTA7czoxOToiACoAZGVwZW5kZW50c2V0dGluZyI7TzozMDoiYmFja3VwX3VzZXJzY29tcGxldGlvbl9zZXR0aW5nIjoxMTp7czo4OiIAKgBsZXZlbCI7aToxO3M6NzoiACoAbmFtZSI7czoxNToidXNlcnNjb21wbGV0aW9uIjtzOjg6IgAqAHZhbHVlIjtpOjE7czoxNjoiACoAdW5sb2NrZWR2YWx1ZSI7aToxO3M6ODoiACoAdnR5cGUiO3M6NDoiYm9vbCI7czoxMzoiACoAdmlzaWJpbGl0eSI7aToxO3M6OToiACoAc3RhdHVzIjtpOjM7czoxNToiACoAZGVwZW5kZW5jaWVzIjthOjA6e31zOjE0OiIAKgBkZXBlbmRlbnRvbiI7YToxOntzOjU6InVzZXJzIjtyOjM2MDt9czoxMjoiACoAdWlzZXR0aW5nIjtPOjI2OiJiYWNrdXBfc2V0dGluZ191aV9jaGVja2JveCI6OTp7czo3OiIAKgB0eXBlIjtpOjEwO3M6MTM6IgAqAGNoYW5nZWFibGUiO2I6MTtzOjc6IgAqAHRleHQiO047czoxMDoiACoAb3B0aW9ucyI7YTowOnt9czo3OiIAKgBuYW1lIjtzOjIwOiJyb290X3VzZXJzY29tcGxldGlvbiI7czo4OiIAKgBsYWJlbCI7czozMToiSW5jbHVkZSB1c2VyIGNvbXBsZXRpb24gZGV0YWlscyI7czoxMzoiACoAYXR0cmlidXRlcyI7YTowOnt9czo3OiIAKgBpY29uIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjozNjM7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6MTU6IgAqAGRlZmF1bHR2YWx1ZSI7YjowO3M6MTI6IgAqAGxhc3R2YWx1ZSI7aToxO31zOjQ6ImxvZ3MiO086NDE6InNldHRpbmdfZGVwZW5kZW5jeV9kaXNhYmxlZGlmX25vdF9jaGVja2VkIjo1OntzOjg6IgAqAHZhbHVlIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjo1MDtzOjE5OiIAKgBkZXBlbmRlbnRzZXR0aW5nIjtPOjE5OiJiYWNrdXBfbG9nc19zZXR0aW5nIjoxMTp7czo4OiIAKgBsZXZlbCI7aToxO3M6NzoiACoAbmFtZSI7czo0OiJsb2dzIjtzOjg6IgAqAHZhbHVlIjtpOjA7czoxNjoiACoAdW5sb2NrZWR2YWx1ZSI7aToxO3M6ODoiACoAdnR5cGUiO3M6NDoiYm9vbCI7czoxMzoiACoAdmlzaWJpbGl0eSI7aToxO3M6OToiACoAc3RhdHVzIjtpOjM7czoxNToiACoAZGVwZW5kZW5jaWVzIjthOjA6e31zOjE0OiIAKgBkZXBlbmRlbnRvbiI7YToxOntzOjU6InVzZXJzIjtyOjM4Nzt9czoxMjoiACoAdWlzZXR0aW5nIjtPOjI2OiJiYWNrdXBfc2V0dGluZ191aV9jaGVja2JveCI6OTp7czo3OiIAKgB0eXBlIjtpOjEwO3M6MTM6IgAqAGNoYW5nZWFibGUiO2I6MTtzOjc6IgAqAHRleHQiO047czoxMDoiACoAb3B0aW9ucyI7YTowOnt9czo3OiIAKgBuYW1lIjtzOjk6InJvb3RfbG9ncyI7czo4OiIAKgBsYWJlbCI7czoxOToiSW5jbHVkZSBjb3Vyc2UgbG9ncyI7czoxMzoiACoAYXR0cmlidXRlcyI7YTowOnt9czo3OiIAKgBpY29uIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjozOTA7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6MTU6IgAqAGRlZmF1bHR2YWx1ZSI7YjowO3M6MTI6IgAqAGxhc3R2YWx1ZSI7aToxO31zOjE1OiJncmFkZV9oaXN0b3JpZXMiO3I6MTc4O3M6MTg6InNlY3Rpb25fMV91c2VyaW5mbyI7cjoyNDI7czoxNjoiZm9ydW1fMV91c2VyaW5mbyI7cjoyMjM7czoxODoic2VjdGlvbl8yX3VzZXJpbmZvIjtPOjQxOiJzZXR0aW5nX2RlcGVuZGVuY3lfZGlzYWJsZWRpZl9ub3RfY2hlY2tlZCI6NTp7czo4OiIAKgB2YWx1ZSI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6NTA7czoxOToiACoAZGVwZW5kZW50c2V0dGluZyI7TzozMToiYmFja3VwX3NlY3Rpb25fdXNlcmluZm9fc2V0dGluZyI6MTE6e3M6ODoiACoAbGV2ZWwiO2k6OTtzOjc6IgAqAG5hbWUiO3M6MTg6InNlY3Rpb25fMl91c2VyaW5mbyI7czo4OiIAKgB2YWx1ZSI7aToxO3M6MTY6IgAqAHVubG9ja2VkdmFsdWUiO2k6MTtzOjg6IgAqAHZ0eXBlIjtzOjQ6ImJvb2wiO3M6MTM6IgAqAHZpc2liaWxpdHkiO2k6MTtzOjk6IgAqAHN0YXR1cyI7aTozO3M6MTU6IgAqAGRlcGVuZGVuY2llcyI7YTowOnt9czoxNDoiACoAZGVwZW5kZW50b24iO2E6Mjp7czo1OiJ1c2VycyI7cjo0MTc7czoxODoic2VjdGlvbl8yX2luY2x1ZGVkIjtPOjQxOiJzZXR0aW5nX2RlcGVuZGVuY3lfZGlzYWJsZWRpZl9ub3RfY2hlY2tlZCI6NTp7czo4OiIAKgB2YWx1ZSI7YjowO3M6MTA6IgAqAHNldHRpbmciO086MzE6ImJhY2t1cF9zZWN0aW9uX2luY2x1ZGVkX3NldHRpbmciOjExOntzOjg6IgAqAGxldmVsIjtpOjk7czo3OiIAKgBuYW1lIjtzOjE4OiJzZWN0aW9uXzJfaW5jbHVkZWQiO3M6ODoiACoAdmFsdWUiO2k6MTtzOjE2OiIAKgB1bmxvY2tlZHZhbHVlIjtpOjE7czo4OiIAKgB2dHlwZSI7czo0OiJib29sIjtzOjEzOiIAKgB2aXNpYmlsaXR5IjtpOjE7czo5OiIAKgBzdGF0dXMiO2k6MztzOjE1OiIAKgBkZXBlbmRlbmNpZXMiO2E6MTp7czoxODoic2VjdGlvbl8yX3VzZXJpbmZvIjtyOjQzMTt9czoxNDoiACoAZGVwZW5kZW50b24iO2E6MDp7fXM6MTI6IgAqAHVpc2V0dGluZyI7TzoyNjoiYmFja3VwX3NldHRpbmdfdWlfY2hlY2tib3giOjk6e3M6NzoiACoAdHlwZSI7aToxMDtzOjEzOiIAKgBjaGFuZ2VhYmxlIjtiOjE7czo3OiIAKgB0ZXh0IjtOO3M6MTA6IgAqAG9wdGlvbnMiO2E6MDp7fXM6NzoiACoAbmFtZSI7czoyNjoic2VjdGlvbl9zZWN0aW9uXzJfaW5jbHVkZWQiO3M6ODoiACoAbGFiZWwiO3M6NDoiU2l0ZSI7czoxMzoiACoAYXR0cmlidXRlcyI7YTowOnt9czo3OiIAKgBpY29uIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjo0MzM7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6MTk6IgAqAGRlcGVuZGVudHNldHRpbmciO3I6NDIwO3M6MTU6IgAqAGRlZmF1bHR2YWx1ZSI7YjowO3M6MTI6IgAqAGxhc3R2YWx1ZSI7aToxO319czoxMjoiACoAdWlzZXR0aW5nIjtPOjI2OiJiYWNrdXBfc2V0dGluZ191aV9jaGVja2JveCI6OTp7czo3OiIAKgB0eXBlIjtpOjEwO3M6MTM6IgAqAGNoYW5nZWFibGUiO2I6MTtzOjc6IgAqAHRleHQiO047czoxMDoiACoAb3B0aW9ucyI7YTowOnt9czo3OiIAKgBuYW1lIjtzOjI2OiJzZWN0aW9uX3NlY3Rpb25fMl91c2VyaW5mbyI7czo4OiIAKgBsYWJlbCI7czo5OiJVc2VyIGRhdGEiO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6MDp7fXM6NzoiACoAaWNvbiI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6NDIwO31zOjc6IgAqAGhlbHAiO2E6MDp7fX1zOjE1OiIAKgBkZWZhdWx0dmFsdWUiO2I6MDtzOjEyOiIAKgBsYXN0dmFsdWUiO2k6MTt9fXM6MTQ6IgAqAGRlcGVuZGVudG9uIjthOjE6e3M6NzoiaW1zY2MxMSI7cjo0Nzt9czoxMjoiACoAdWlzZXR0aW5nIjtPOjI2OiJiYWNrdXBfc2V0dGluZ191aV9jaGVja2JveCI6OTp7czo3OiIAKgB0eXBlIjtpOjEwO3M6MTM6IgAqAGNoYW5nZWFibGUiO2I6MTtzOjc6IgAqAHRleHQiO047czoxMDoiACoAb3B0aW9ucyI7YTowOnt9czo3OiIAKgBuYW1lIjtzOjEwOiJyb290X3VzZXJzIjtzOjg6IgAqAGxhYmVsIjtzOjIyOiJJbmNsdWRlIGVucm9sbGVkIHVzZXJzIjtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjA6e31zOjc6IgAqAGljb24iO2I6MDtzOjEwOiIAKgBzZXR0aW5nIjtyOjUwO31zOjc6IgAqAGhlbHAiO2E6MDp7fX1zOjE1OiIAKgBkZWZhdWx0dmFsdWUiO2I6MDtzOjEyOiIAKgBsYXN0dmFsdWUiO2k6MTt9czo2OiJibG9ja3MiO086Mzc6InNldHRpbmdfZGVwZW5kZW5jeV9kaXNhYmxlZGlmX2NoZWNrZWQiOjU6e3M6ODoiACoAdmFsdWUiO2I6MTtzOjEwOiIAKgBzZXR0aW5nIjtyOjM4O3M6MTk6IgAqAGRlcGVuZGVudHNldHRpbmciO086MjI6ImJhY2t1cF9nZW5lcmljX3NldHRpbmciOjExOntzOjg6IgAqAGxldmVsIjtpOjE7czo3OiIAKgBuYW1lIjtzOjY6ImJsb2NrcyI7czo4OiIAKgB2YWx1ZSI7aToxO3M6MTY6IgAqAHVubG9ja2VkdmFsdWUiO2k6MTtzOjg6IgAqAHZ0eXBlIjtzOjQ6ImJvb2wiO3M6MTM6IgAqAHZpc2liaWxpdHkiO2k6MTtzOjk6IgAqAHN0YXR1cyI7aTozO3M6MTU6IgAqAGRlcGVuZGVuY2llcyI7YTowOnt9czoxNDoiACoAZGVwZW5kZW50b24iO2E6MTp7czo3OiJpbXNjYzExIjtyOjQ4Njt9czoxMjoiACoAdWlzZXR0aW5nIjtPOjI2OiJiYWNrdXBfc2V0dGluZ191aV9jaGVja2JveCI6OTp7czo3OiIAKgB0eXBlIjtpOjEwO3M6MTM6IgAqAGNoYW5nZWFibGUiO2I6MTtzOjc6IgAqAHRleHQiO047czoxMDoiACoAb3B0aW9ucyI7YTowOnt9czo3OiIAKgBuYW1lIjtzOjExOiJyb290X2Jsb2NrcyI7czo4OiIAKgBsYWJlbCI7czoxNDoiSW5jbHVkZSBibG9ja3MiO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6MDp7fXM6NzoiACoAaWNvbiI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6NDg5O31zOjc6IgAqAGhlbHAiO2E6MDp7fX1zOjE1OiIAKgBkZWZhdWx0dmFsdWUiO2I6MDtzOjEyOiIAKgBsYXN0dmFsdWUiO2k6MTt9czo1OiJmaWxlcyI7TzozNzoic2V0dGluZ19kZXBlbmRlbmN5X2Rpc2FibGVkaWZfY2hlY2tlZCI6NTp7czo4OiIAKgB2YWx1ZSI7YjoxO3M6MTA6IgAqAHNldHRpbmciO3I6Mzg7czoxOToiACoAZGVwZW5kZW50c2V0dGluZyI7TzoyMjoiYmFja3VwX2dlbmVyaWNfc2V0dGluZyI6MTE6e3M6ODoiACoAbGV2ZWwiO2k6MTtzOjc6IgAqAG5hbWUiO3M6NToiZmlsZXMiO3M6ODoiACoAdmFsdWUiO2k6MTtzOjE2OiIAKgB1bmxvY2tlZHZhbHVlIjtpOjE7czo4OiIAKgB2dHlwZSI7czo0OiJib29sIjtzOjEzOiIAKgB2aXNpYmlsaXR5IjtpOjE7czo5OiIAKgBzdGF0dXMiO2k6MztzOjE1OiIAKgBkZXBlbmRlbmNpZXMiO2E6MDp7fXM6MTQ6IgAqAGRlcGVuZGVudG9uIjthOjE6e3M6NzoiaW1zY2MxMSI7cjo1MTM7fXM6MTI6IgAqAHVpc2V0dGluZyI7TzoyNjoiYmFja3VwX3NldHRpbmdfdWlfY2hlY2tib3giOjk6e3M6NzoiACoAdHlwZSI7aToxMDtzOjEzOiIAKgBjaGFuZ2VhYmxlIjtiOjE7czo3OiIAKgB0ZXh0IjtOO3M6MTA6IgAqAG9wdGlvbnMiO2E6MDp7fXM6NzoiACoAbmFtZSI7czoxMDoicm9vdF9maWxlcyI7czo4OiIAKgBsYWJlbCI7czoxMzoiSW5jbHVkZSBmaWxlcyI7czoxMzoiACoAYXR0cmlidXRlcyI7YTowOnt9czo3OiIAKgBpY29uIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjo1MTY7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6MTU6IgAqAGRlZmF1bHR2YWx1ZSI7YjowO3M6MTI6IgAqAGxhc3R2YWx1ZSI7aToxO31zOjc6ImZpbHRlcnMiO086Mzc6InNldHRpbmdfZGVwZW5kZW5jeV9kaXNhYmxlZGlmX2NoZWNrZWQiOjU6e3M6ODoiACoAdmFsdWUiO2I6MTtzOjEwOiIAKgBzZXR0aW5nIjtyOjM4O3M6MTk6IgAqAGRlcGVuZGVudHNldHRpbmciO086MjI6ImJhY2t1cF9nZW5lcmljX3NldHRpbmciOjExOntzOjg6IgAqAGxldmVsIjtpOjE7czo3OiIAKgBuYW1lIjtzOjc6ImZpbHRlcnMiO3M6ODoiACoAdmFsdWUiO2k6MTtzOjE2OiIAKgB1bmxvY2tlZHZhbHVlIjtpOjE7czo4OiIAKgB2dHlwZSI7czo0OiJib29sIjtzOjEzOiIAKgB2aXNpYmlsaXR5IjtpOjE7czo5OiIAKgBzdGF0dXMiO2k6MztzOjE1OiIAKgBkZXBlbmRlbmNpZXMiO2E6MDp7fXM6MTQ6IgAqAGRlcGVuZGVudG9uIjthOjE6e3M6NzoiaW1zY2MxMSI7cjo1NDA7fXM6MTI6IgAqAHVpc2V0dGluZyI7TzoyNjoiYmFja3VwX3NldHRpbmdfdWlfY2hlY2tib3giOjk6e3M6NzoiACoAdHlwZSI7aToxMDtzOjEzOiIAKgBjaGFuZ2VhYmxlIjtiOjE7czo3OiIAKgB0ZXh0IjtOO3M6MTA6IgAqAG9wdGlvbnMiO2E6MDp7fXM6NzoiACoAbmFtZSI7czoxMjoicm9vdF9maWx0ZXJzIjtzOjg6IgAqAGxhYmVsIjtzOjE1OiJJbmNsdWRlIGZpbHRlcnMiO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6MDp7fXM6NzoiACoAaWNvbiI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6NTQzO31zOjc6IgAqAGhlbHAiO2E6MDp7fX1zOjE1OiIAKgBkZWZhdWx0dmFsdWUiO2I6MDtzOjEyOiIAKgBsYXN0dmFsdWUiO2k6MTt9fXM6MTQ6IgAqAGRlcGVuZGVudG9uIjthOjA6e31zOjEyOiIAKgB1aXNldHRpbmciO086MjY6ImJhY2t1cF9zZXR0aW5nX3VpX2NoZWNrYm94Ijo5OntzOjc6IgAqAHR5cGUiO2k6MTA7czoxMzoiACoAY2hhbmdlYWJsZSI7YjoxO3M6NzoiACoAdGV4dCI7TjtzOjEwOiIAKgBvcHRpb25zIjthOjA6e31zOjc6IgAqAG5hbWUiO3M6MTI6InJvb3RfaW1zY2MxMSI7czo4OiIAKgBsYWJlbCI7czoyNDoiSU1TIENvbW1vbiBDYXJ0cmlkZ2UgMS4xIjtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjA6e31zOjc6IgAqAGljb24iO2I6MDtzOjEwOiIAKgBzZXR0aW5nIjtyOjM4O31zOjc6IgAqAGhlbHAiO2E6MDp7fX1zOjU6InVzZXJzIjtyOjUwO3M6OToiYW5vbnltaXplIjtyOjYyO3M6MTY6InJvbGVfYXNzaWdubWVudHMiO3I6ODk7czoxMDoiYWN0aXZpdGllcyI7cjoxNTU7czo2OiJibG9ja3MiO3I6NDg5O3M6NToiZmlsZXMiO3I6NTE2O3M6NzoiZmlsdGVycyI7cjo1NDM7czo4OiJjb21tZW50cyI7cjoxMTY7czo2OiJiYWRnZXMiO3I6MTQzO3M6MTQ6ImNhbGVuZGFyZXZlbnRzIjtPOjI5OiJiYWNrdXBfY2FsZW5kYXJldmVudHNfc2V0dGluZyI6MTE6e3M6ODoiACoAbGV2ZWwiO2k6MTtzOjc6IgAqAG5hbWUiO3M6MTQ6ImNhbGVuZGFyZXZlbnRzIjtzOjg6IgAqAHZhbHVlIjtpOjE7czoxNjoiACoAdW5sb2NrZWR2YWx1ZSI7aToxO3M6ODoiACoAdnR5cGUiO3M6NDoiYm9vbCI7czoxMzoiACoAdmlzaWJpbGl0eSI7aToxO3M6OToiACoAc3RhdHVzIjtpOjM7czoxNToiACoAZGVwZW5kZW5jaWVzIjthOjA6e31zOjE0OiIAKgBkZXBlbmRlbnRvbiI7YTowOnt9czoxMjoiACoAdWlzZXR0aW5nIjtPOjI2OiJiYWNrdXBfc2V0dGluZ191aV9jaGVja2JveCI6OTp7czo3OiIAKgB0eXBlIjtpOjEwO3M6MTM6IgAqAGNoYW5nZWFibGUiO2I6MTtzOjc6IgAqAHRleHQiO047czoxMDoiACoAb3B0aW9ucyI7YTowOnt9czo3OiIAKgBuYW1lIjtzOjE5OiJyb290X2NhbGVuZGFyZXZlbnRzIjtzOjg6IgAqAGxhYmVsIjtzOjIzOiJJbmNsdWRlIGNhbGVuZGFyIGV2ZW50cyI7czoxMzoiACoAYXR0cmlidXRlcyI7YTowOnt9czo3OiIAKgBpY29uIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjo1ODg7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6MTU6InVzZXJzY29tcGxldGlvbiI7cjozNjM7czo0OiJsb2dzIjtyOjM5MDtzOjE1OiJncmFkZV9oaXN0b3JpZXMiO3I6MTY4O3M6MTI6InF1ZXN0aW9uYmFuayI7TzoyMjoiYmFja3VwX2dlbmVyaWNfc2V0dGluZyI6MTE6e3M6ODoiACoAbGV2ZWwiO2k6MTtzOjc6IgAqAG5hbWUiO3M6MTI6InF1ZXN0aW9uYmFuayI7czo4OiIAKgB2YWx1ZSI7aToxO3M6MTY6IgAqAHVubG9ja2VkdmFsdWUiO2k6MTtzOjg6IgAqAHZ0eXBlIjtzOjQ6ImJvb2wiO3M6MTM6IgAqAHZpc2liaWxpdHkiO2k6MTtzOjk6IgAqAHN0YXR1cyI7aTozO3M6MTU6IgAqAGRlcGVuZGVuY2llcyI7YTowOnt9czoxNDoiACoAZGVwZW5kZW50b24iO2E6MDp7fXM6MTI6IgAqAHVpc2V0dGluZyI7TzoyNjoiYmFja3VwX3NldHRpbmdfdWlfY2hlY2tib3giOjk6e3M6NzoiACoAdHlwZSI7aToxMDtzOjEzOiIAKgBjaGFuZ2VhYmxlIjtiOjE7czo3OiIAKgB0ZXh0IjtOO3M6MTA6IgAqAG9wdGlvbnMiO2E6MDp7fXM6NzoiACoAbmFtZSI7czoxNzoicm9vdF9xdWVzdGlvbmJhbmsiO3M6ODoiACoAbGFiZWwiO3M6MjE6IkluY2x1ZGUgcXVlc3Rpb24gYmFuayI7czoxMzoiACoAYXR0cmlidXRlcyI7YTowOnt9czo3OiIAKgBpY29uIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjo2MTI7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6NjoiZ3JvdXBzIjtPOjIxOiJiYWNrdXBfZ3JvdXBzX3NldHRpbmciOjExOntzOjg6IgAqAGxldmVsIjtpOjE7czo3OiIAKgBuYW1lIjtzOjY6Imdyb3VwcyI7czo4OiIAKgB2YWx1ZSI7aToxO3M6MTY6IgAqAHVubG9ja2VkdmFsdWUiO2k6MTtzOjg6IgAqAHZ0eXBlIjtzOjQ6ImJvb2wiO3M6MTM6IgAqAHZpc2liaWxpdHkiO2k6MTtzOjk6IgAqAHN0YXR1cyI7aTozO3M6MTU6IgAqAGRlcGVuZGVuY2llcyI7YTowOnt9czoxNDoiACoAZGVwZW5kZW50b24iO2E6MDp7fXM6MTI6IgAqAHVpc2V0dGluZyI7TzoyNjoiYmFja3VwX3NldHRpbmdfdWlfY2hlY2tib3giOjk6e3M6NzoiACoAdHlwZSI7aToxMDtzOjEzOiIAKgBjaGFuZ2VhYmxlIjtiOjE7czo3OiIAKgB0ZXh0IjtOO3M6MTA6IgAqAG9wdGlvbnMiO2E6MDp7fXM6NzoiACoAbmFtZSI7czoxMToicm9vdF9ncm91cHMiO3M6ODoiACoAbGFiZWwiO3M6Mjg6IkluY2x1ZGUgZ3JvdXBzIGFuZCBncm91cGluZ3MiO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6MDp7fXM6NzoiACoAaWNvbiI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6NjMzO31zOjc6IgAqAGhlbHAiO2E6MDp7fX1zOjEyOiJjb21wZXRlbmNpZXMiO086Mjc6ImJhY2t1cF9jb21wZXRlbmNpZXNfc2V0dGluZyI6MTE6e3M6ODoiACoAbGV2ZWwiO2k6MTtzOjc6IgAqAG5hbWUiO3M6MTI6ImNvbXBldGVuY2llcyI7czo4OiIAKgB2YWx1ZSI7aToxO3M6MTY6IgAqAHVubG9ja2VkdmFsdWUiO2k6MTtzOjg6IgAqAHZ0eXBlIjtzOjQ6ImJvb2wiO3M6MTM6IgAqAHZpc2liaWxpdHkiO2k6MTtzOjk6IgAqAHN0YXR1cyI7aTozO3M6MTU6IgAqAGRlcGVuZGVuY2llcyI7YTowOnt9czoxNDoiACoAZGVwZW5kZW50b24iO2E6MDp7fXM6MTI6IgAqAHVpc2V0dGluZyI7TzoyNjoiYmFja3VwX3NldHRpbmdfdWlfY2hlY2tib3giOjk6e3M6NzoiACoAdHlwZSI7aToxMDtzOjEzOiIAKgBjaGFuZ2VhYmxlIjtiOjE7czo3OiIAKgB0ZXh0IjtOO3M6MTA6IgAqAG9wdGlvbnMiO2E6MDp7fXM6NzoiACoAbmFtZSI7czoxNzoicm9vdF9jb21wZXRlbmNpZXMiO3M6ODoiACoAbGFiZWwiO3M6MjA6IkluY2x1ZGUgY29tcGV0ZW5jaWVzIjtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjA6e31zOjc6IgAqAGljb24iO2I6MDtzOjEwOiIAKgBzZXR0aW5nIjtyOjY1NDt9czo3OiIAKgBoZWxwIjthOjA6e319czoxMToiY3VzdG9tZmllbGQiO086MjY6ImJhY2t1cF9jdXN0b21maWVsZF9zZXR0aW5nIjoxMTp7czo4OiIAKgBsZXZlbCI7aToxO3M6NzoiACoAbmFtZSI7czoxMToiY3VzdG9tZmllbGQiO3M6ODoiACoAdmFsdWUiO2k6MTtzOjE2OiIAKgB1bmxvY2tlZHZhbHVlIjtpOjE7czo4OiIAKgB2dHlwZSI7czo0OiJib29sIjtzOjEzOiIAKgB2aXNpYmlsaXR5IjtpOjE7czo5OiIAKgBzdGF0dXMiO2k6MztzOjE1OiIAKgBkZXBlbmRlbmNpZXMiO2E6MDp7fXM6MTQ6IgAqAGRlcGVuZGVudG9uIjthOjA6e31zOjEyOiIAKgB1aXNldHRpbmciO086MjY6ImJhY2t1cF9zZXR0aW5nX3VpX2NoZWNrYm94Ijo5OntzOjc6IgAqAHR5cGUiO2k6MTA7czoxMzoiACoAY2hhbmdlYWJsZSI7YjoxO3M6NzoiACoAdGV4dCI7TjtzOjEwOiIAKgBvcHRpb25zIjthOjA6e31zOjc6IgAqAG5hbWUiO3M6MTY6InJvb3RfY3VzdG9tZmllbGQiO3M6ODoiACoAbGFiZWwiO3M6MjE6IkluY2x1ZGUgY3VzdG9tIGZpZWxkcyI7czoxMzoiACoAYXR0cmlidXRlcyI7YTowOnt9czo3OiIAKgBpY29uIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjo2NzU7fXM6NzoiACoAaGVscCI7YTowOnt9fXM6MTg6InNlY3Rpb25fMV9pbmNsdWRlZCI7cjoyNTA7czoxODoic2VjdGlvbl8xX3VzZXJpbmZvIjtyOjIzMTtzOjE2OiJmb3J1bV8xX2luY2x1ZGVkIjtyOjIwMTtzOjE2OiJmb3J1bV8xX3VzZXJpbmZvIjtyOjIxMztzOjE4OiJzZWN0aW9uXzJfaW5jbHVkZWQiO3I6NDMzO3M6MTg6InNlY3Rpb25fMl91c2VyaW5mbyI7cjo0MjA7fXM6ODoiACoAdGFza3MiO2E6MTE6e2k6MDtPOjE2OiJiYWNrdXBfcm9vdF90YXNrIjo2OntzOjc6IgAqAG5hbWUiO3M6OToicm9vdF90YXNrIjtzOjc6IgAqAHBsYW4iO3I6MTI7czoxMToiACoAc2V0dGluZ3MiO2E6MTk6e2k6MDtyOjE4O2k6MTtyOjM4O2k6MjtyOjUwO2k6MztyOjYyO2k6NDtyOjg5O2k6NTtyOjE1NTtpOjY7cjo0ODk7aTo3O3I6NTE2O2k6ODtyOjU0MztpOjk7cjoxMTY7aToxMDtyOjE0MztpOjExO3I6NTg4O2k6MTI7cjozNjM7aToxMztyOjM5MDtpOjE0O3I6MTY4O2k6MTU7cjo2MTI7aToxNjtyOjYzMztpOjE3O3I6NjU0O2k6MTg7cjo2NzU7fXM6ODoiACoAc3RlcHMiO2E6MDp7fXM6ODoiACoAYnVpbHQiO2I6MDtzOjExOiIAKgBleGVjdXRlZCI7YjowO31pOjE7TzoxODoiYmFja3VwX2NvdXJzZV90YXNrIjo4OntzOjExOiIAKgBjb3Vyc2VpZCI7aToxO3M6MTI6IgAqAGNvbnRleHRpZCI7aToyO3M6NzoiACoAbmFtZSI7czo0OiJIb21lIjtzOjc6IgAqAHBsYW4iO3I6MTI7czoxMToiACoAc2V0dGluZ3MiO2E6MDp7fXM6ODoiACoAc3RlcHMiO2E6MDp7fXM6ODoiACoAYnVpbHQiO2I6MDtzOjExOiIAKgBleGVjdXRlZCI7YjowO31pOjI7TzoxOToiYmFja3VwX3NlY3Rpb25fdGFzayI6Nzp7czoxMjoiACoAc2VjdGlvbmlkIjtzOjE6IjEiO3M6NzoiACoAbmFtZSI7czoxOiIwIjtzOjc6IgAqAHBsYW4iO3I6MTI7czoxMToiACoAc2V0dGluZ3MiO2E6Mjp7aTowO3I6MjUwO2k6MTtyOjIzMTt9czo4OiIAKgBzdGVwcyI7YTowOnt9czo4OiIAKgBidWlsdCI7YjowO3M6MTE6IgAqAGV4ZWN1dGVkIjtiOjA7fWk6MztPOjI2OiJiYWNrdXBfZm9ydW1fYWN0aXZpdHlfdGFzayI6MTE6e3M6MTE6IgAqAG1vZHVsZWlkIjtzOjE6IjEiO3M6MTI6IgAqAHNlY3Rpb25pZCI7czoxOiIxIjtzOjEzOiIAKgBtb2R1bGVuYW1lIjtzOjU6ImZvcnVtIjtzOjEzOiIAKgBhY3Rpdml0eWlkIjtzOjE6IjEiO3M6MTI6IgAqAGNvbnRleHRpZCI7aToyNTtzOjc6IgAqAG5hbWUiO3M6MTg6IlNpdGUgYW5ub3VuY2VtZW50cyI7czo3OiIAKgBwbGFuIjtyOjEyO3M6MTE6IgAqAHNldHRpbmdzIjthOjI6e2k6MDtyOjIwMTtpOjE7cjoyMTM7fXM6ODoiACoAc3RlcHMiO2E6MDp7fXM6ODoiACoAYnVpbHQiO2I6MDtzOjExOiIAKgBleGVjdXRlZCI7YjowO31pOjQ7TzoxOToiYmFja3VwX3NlY3Rpb25fdGFzayI6Nzp7czoxMjoiACoAc2VjdGlvbmlkIjtzOjE6IjIiO3M6NzoiACoAbmFtZSI7czoxOiIxIjtzOjc6IgAqAHBsYW4iO3I6MTI7czoxMToiACoAc2V0dGluZ3MiO2E6Mjp7aTowO3I6NDMzO2k6MTtyOjQyMDt9czo4OiIAKgBzdGVwcyI7YTowOnt9czo4OiIAKgBidWlsdCI7YjowO3M6MTE6IgAqAGV4ZWN1dGVkIjtiOjA7fWk6NTtPOjI1OiJiYWNrdXBfZGVmYXVsdF9ibG9ja190YXNrIjoxMjp7czoxMDoiACoAYmxvY2tpZCI7czoyOiI2NyI7czoxMjoiACoAYmxvY2tuYW1lIjtzOjg6ImNvbW1lbnRzIjtzOjEyOiIAKgBjb250ZXh0aWQiO2k6MTA3O3M6MTE6IgAqAG1vZHVsZWlkIjtOO3M6MTM6IgAqAG1vZHVsZW5hbWUiO047czoxODoiACoAcGFyZW50Y29udGV4dGlkIjtOO3M6NzoiACoAbmFtZSI7czo4OiJjb21tZW50cyI7czo3OiIAKgBwbGFuIjtyOjEyO3M6MTE6IgAqAHNldHRpbmdzIjthOjA6e31zOjg6IgAqAHN0ZXBzIjthOjA6e31zOjg6IgAqAGJ1aWx0IjtiOjA7czoxMToiACoAZXhlY3V0ZWQiO2I6MDt9aTo2O086MjU6ImJhY2t1cF9kZWZhdWx0X2Jsb2NrX3Rhc2siOjEyOntzOjEwOiIAKgBibG9ja2lkIjtzOjI6IjY4IjtzOjEyOiIAKgBibG9ja25hbWUiO3M6MTQ6ImNhbGVuZGFyX21vbnRoIjtzOjEyOiIAKgBjb250ZXh0aWQiO2k6MTA4O3M6MTE6IgAqAG1vZHVsZWlkIjtOO3M6MTM6IgAqAG1vZHVsZW5hbWUiO047czoxODoiACoAcGFyZW50Y29udGV4dGlkIjtOO3M6NzoiACoAbmFtZSI7czoxNDoiY2FsZW5kYXJfbW9udGgiO3M6NzoiACoAcGxhbiI7cjoxMjtzOjExOiIAKgBzZXR0aW5ncyI7YTowOnt9czo4OiIAKgBzdGVwcyI7YTowOnt9czo4OiIAKgBidWlsdCI7YjowO3M6MTE6IgAqAGV4ZWN1dGVkIjtiOjA7fWk6NztPOjIyOiJiYWNrdXBfaHRtbF9ibG9ja190YXNrIjoxMjp7czoxMDoiACoAYmxvY2tpZCI7czoyOiI3MiI7czoxMjoiACoAYmxvY2tuYW1lIjtzOjQ6Imh0bWwiO3M6MTI6IgAqAGNvbnRleHRpZCI7aToxMTI7czoxMToiACoAbW9kdWxlaWQiO047czoxMzoiACoAbW9kdWxlbmFtZSI7TjtzOjE4OiIAKgBwYXJlbnRjb250ZXh0aWQiO047czo3OiIAKgBuYW1lIjtzOjQ6Imh0bWwiO3M6NzoiACoAcGxhbiI7cjoxMjtzOjExOiIAKgBzZXR0aW5ncyI7YTowOnt9czo4OiIAKgBzdGVwcyI7YTowOnt9czo4OiIAKgBidWlsdCI7YjowO3M6MTE6IgAqAGV4ZWN1dGVkIjtiOjA7fWk6ODtPOjIyOiJiYWNrdXBfaHRtbF9ibG9ja190YXNrIjoxMjp7czoxMDoiACoAYmxvY2tpZCI7czoyOiI3MyI7czoxMjoiACoAYmxvY2tuYW1lIjtzOjQ6Imh0bWwiO3M6MTI6IgAqAGNvbnRleHRpZCI7aToxMTM7czoxMToiACoAbW9kdWxlaWQiO047czoxMzoiACoAbW9kdWxlbmFtZSI7TjtzOjE4OiIAKgBwYXJlbnRjb250ZXh0aWQiO047czo3OiIAKgBuYW1lIjtzOjQ6Imh0bWwiO3M6NzoiACoAcGxhbiI7cjoxMjtzOjExOiIAKgBzZXR0aW5ncyI7YTowOnt9czo4OiIAKgBzdGVwcyI7YTowOnt9czo4OiIAKgBidWlsdCI7YjowO3M6MTE6IgAqAGV4ZWN1dGVkIjtiOjA7fWk6OTtPOjI1OiJiYWNrdXBfZGVmYXVsdF9ibG9ja190YXNrIjoxMjp7czoxMDoiACoAYmxvY2tpZCI7czoyOiI5MiI7czoxMjoiACoAYmxvY2tuYW1lIjtzOjE0OiJjdXN0b21ob21lcGFnZSI7czoxMjoiACoAY29udGV4dGlkIjtpOjEzNDtzOjExOiIAKgBtb2R1bGVpZCI7TjtzOjEzOiIAKgBtb2R1bGVuYW1lIjtOO3M6MTg6IgAqAHBhcmVudGNvbnRleHRpZCI7TjtzOjc6IgAqAG5hbWUiO3M6MTQ6ImN1c3RvbWhvbWVwYWdlIjtzOjc6IgAqAHBsYW4iO3I6MTI7czoxMToiACoAc2V0dGluZ3MiO2E6MDp7fXM6ODoiACoAc3RlcHMiO2E6MDp7fXM6ODoiACoAYnVpbHQiO2I6MDtzOjExOiIAKgBleGVjdXRlZCI7YjowO31pOjEwO086MTc6ImJhY2t1cF9maW5hbF90YXNrIjo2OntzOjc6IgAqAG5hbWUiO3M6MTA6ImZpbmFsX3Rhc2siO3M6NzoiACoAcGxhbiI7cjoxMjtzOjExOiIAKgBzZXR0aW5ncyI7YTowOnt9czo4OiIAKgBzdGVwcyI7YTowOnt9czo4OiIAKgBidWlsdCI7YjowO3M6MTE6IgAqAGV4ZWN1dGVkIjtiOjA7fX1zOjEwOiIAKgByZXN1bHRzIjthOjA6e31zOjg6IgAqAGJ1aWx0IjtiOjE7fXM6MTU6IgAqAGluY2x1ZGVmaWxlcyI7aToxO3M6MTI6IgAqAGV4ZWN1dGlvbiI7aToxO3M6MTY6IgAqAGV4ZWN1dGlvbnRpbWUiO2k6MDtzOjE0OiIAKgBkZXN0aW5hdGlvbiI7TjtzOjExOiIAKgBjaGVja3N1bSI7czozMjoiNWI4NTYxMzlmYmNkNjdjMjgzMGU2MThhZmZjMmVlNDYiO3M6MTE6IgAqAHByb2dyZXNzIjtPOjI5OiJjb3JlXHByb2dyZXNzXGRpc3BsYXlfaWZfc2xvdyI6MTQ6e3M6NToiACoAaWQiO047czoxMDoiACoAaGVhZGluZyI7czoyNToiUHJlcGFyaW5nIHRvIGRpc3BsYXkgcGFnZSI7czoxMjoiACoAc3RhcnR0aW1lIjtpOjE2MDg3MTYxOTI7czoyNjoiAGNvcmVccHJvZ3Jlc3NcZGlzcGxheQBiYXIiO047czoxMzoiACoAbGFzdHdpYmJsZSI7TjtzOjE1OiIAKgBjdXJyZW50c3RhdGUiO2k6MDtzOjEyOiIAKgBkaXJlY3Rpb24iO2k6MTtzOjE1OiIAKgBkaXNwbGF5bmFtZXMiO2I6MDtzOjE5OiIAKgBsYXN0cHJvZ3Jlc3N0aW1lIjtOO3M6ODoiACoAY291bnQiO047czoxNToiACoAZGVzY3JpcHRpb25zIjthOjA6e31zOjg6IgAqAG1heGVzIjthOjA6e31zOjExOiIAKgBjdXJyZW50cyI7YTowOnt9czoxNToiACoAcGFyZW50Y291bnRzIjthOjA6e319czo5OiIAKgBsb2dnZXIiO086MTY6ImVycm9yX2xvZ19sb2dnZXIiOjQ6e3M6ODoiACoAbGV2ZWwiO2k6MzA7czoxMToiACoAc2hvd2RhdGUiO2I6MDtzOjEyOiIAKgBzaG93bGV2ZWwiO2I6MDtzOjc6IgAqAG5leHQiO086MTE6ImZpbGVfbG9nZ2VyIjo1OntzOjg6IgAqAGxldmVsIjtpOjMwO3M6MTE6IgAqAHNob3dkYXRlIjtiOjE7czoxMjoiACoAc2hvd2xldmVsIjtiOjE7czo3OiIAKgBuZXh0IjtPOjE1OiJkYXRhYmFzZV9sb2dnZXIiOjk6e3M6MTA6IgAqAGRhdGVjb2wiO3M6MTE6InRpbWVjcmVhdGVkIjtzOjExOiIAKgBsZXZlbGNvbCI7czo4OiJsb2dsZXZlbCI7czoxMzoiACoAbWVzc2FnZWNvbCI7czo3OiJtZXNzYWdlIjtzOjExOiIAKgBsb2d0YWJsZSI7czoxMToiYmFja3VwX2xvZ3MiO3M6MTA6IgAqAGNvbHVtbnMiO2E6MTp7czo4OiJiYWNrdXBpZCI7czozMjoiYzMxOGUzNTRmOGIwMWVlYzNlMDBmODM1YzQ5NDMzMGYiO31zOjg6IgAqAGxldmVsIjtpOjMwO3M6MTE6IgAqAHNob3dkYXRlIjtiOjE7czoxMjoiACoAc2hvd2xldmVsIjtiOjE7czo3OiIAKgBuZXh0IjtOO31zOjExOiIAKgBmdWxscGF0aCI7czoxMDE6Ii9ob21lL2VpcmU5ZDJ0dTVwci9wdWJsaWNfaHRtbC8uaHR5NzVwd3JqbmxhM3kuZGF0YS90ZW1wL2JhY2t1cC8vYzMxOGUzNTRmOGIwMWVlYzNlMDBmODM1YzQ5NDMzMGYubG9nIjt9fX0='),
(10, 'eda9cb3125ab9986d673ed98688dcb68', 'backup', 'course', 1, 'moodle2', 1, 10, 2, 1000, 1, 0, '32491c0d8978693e495ac55bbb579726', 1608716196, 1608716242, '0.00000000000000', ''),
(11, 'df6bf6cf67a4fbf68db038d04e01734d', 'backup', 'course', 42, 'moodle2', 0, 50, 2, 1000, 1, 0, 'e340735619518731221ec376eeaade12', 1612421104, 1612421105, '0.00000000000000', ''),
(12, 'bb4a994aebdb161d01eeaeb90cc9c2ce', 'backup', 'course', 56, 'moodle2', 0, 50, 2, 1000, 1, 0, '4b137f3b0072c35847fe3724dc40584e', 1615800748, 1615800749, '0.00000000000000', ''),
(13, 'cb20467a5558a6ce22674fd44c724f71', 'backup', 'course', 36, 'moodle2', 0, 50, 2, 1000, 1, 0, 'c98e6d2dcb7a57ec0f9ab3ab5951f3dc', 1616398180, 1616398184, '0.00000000000000', ''),
(14, 'd1e2845322e13a2035c2eed230980fc3', 'backup', 'course', 16, 'moodle2', 0, 50, 2, 1000, 1, 0, '11296d76678ce571708af0f9e8b9e195', 1616398207, 1616398208, '0.00000000000000', ''),
(15, '9cb93d6776596361e1bfe1f64048b3e4', 'backup', 'course', 35, 'moodle2', 0, 50, 2, 1000, 1, 0, 'f5f048929127f615d1110f5f53e3a547', 1616398286, 1616398286, '0.00000000000000', ''),
(16, '09fae34d04c9c1c10a758abc665e3724', 'backup', 'course', 34, 'moodle2', 0, 50, 2, 1000, 1, 0, '4b40a76a5dffb189ffe0af7832c7494c', 1616398309, 1616398309, '0.00000000000000', ''),
(17, '37de43bc03a8c1310121e9a2c58a7fdf', 'backup', 'course', 13, 'moodle2', 0, 50, 2, 1000, 1, 0, 'fc709e5473981fb93e4096dc4aaa8e7e', 1616398359, 1616398370, '0.00000000000000', ''),
(18, '5467797e5b0cfcf2987e1cf1c3b8740d', 'backup', 'course', 33, 'moodle2', 0, 50, 2, 1000, 1, 0, 'e32c3849ca76e0ffe763f38341158d36', 1616398405, 1616398406, '0.00000000000000', ''),
(19, 'db681bba6622798d402bf370fa0a12df', 'backup', 'course', 32, 'moodle2', 0, 50, 2, 1000, 1, 0, '7e3170b8bd18ac1399bbb26792c8423c', 1616398425, 1616398426, '0.00000000000000', ''),
(20, '3f29cdfb4f84f517f4cd2ee148822c7e', 'backup', 'course', 31, 'moodle2', 0, 50, 2, 1000, 1, 0, 'dc1a955e3a6a84988aa38d45fcd73a7e', 1616398462, 1616398462, '0.00000000000000', ''),
(21, '81bc0c04486d78f5d1d10ed19fbf1d3a', 'backup', 'course', 30, 'moodle2', 0, 50, 2, 1000, 1, 0, '30fb43bc69627d42a501c35fea4a9af7', 1616398490, 1616398490, '0.00000000000000', ''),
(22, '5dc710edd4070a443ced8bf3e0741ce5', 'backup', 'course', 29, 'moodle2', 0, 50, 2, 1000, 1, 0, 'd8ab5a409c8dcd6c16dfe507d60c52c3', 1616398507, 1616398507, '0.00000000000000', ''),
(23, '44d52ca40ef81b9f36238135335a439f', 'backup', 'course', 28, 'moodle2', 0, 50, 2, 1000, 1, 0, '619dcf2c9f166fa0a9b34a2b32981597', 1616398518, 1616398518, '0.00000000000000', ''),
(24, '7370b8964e44a4402fc7c4cabcd0890e', 'backup', 'course', 27, 'moodle2', 0, 50, 2, 1000, 1, 0, '8654ab87b9b09af4e135b9ed3158098e', 1616398533, 1616398534, '0.00000000000000', ''),
(25, 'e00446189400ee8fcce128504f59bd77', 'backup', 'course', 26, 'moodle2', 0, 50, 2, 1000, 1, 0, 'a0f81c2e5f74ed606a9db20b4cc4ba6c', 1616398546, 1616398546, '0.00000000000000', ''),
(26, 'b7742123249221a8fd75858f5406633b', 'backup', 'course', 25, 'moodle2', 0, 50, 2, 1000, 1, 0, 'daffc1f27c1a086b9e1094f92d599afc', 1616398557, 1616398557, '0.00000000000000', ''),
(27, '21901e58e1a1a7db90d6d256ffbc5b6b', 'backup', 'course', 24, 'moodle2', 0, 50, 2, 1000, 1, 0, '05066b1c28d4ac3f61c7bfca2a22010d', 1616398568, 1616398570, '0.00000000000000', ''),
(28, '86b69d043d610af30cdf9a7189369956', 'backup', 'course', 23, 'moodle2', 0, 50, 2, 1000, 1, 0, '5ac05b0ff85f1038c61aab1f733573c4', 1616398581, 1616398583, '0.00000000000000', ''),
(29, '184e52622e80661b59aadb825a53757a', 'backup', 'course', 22, 'moodle2', 0, 50, 2, 1000, 1, 0, 'd5f071b7d2b66718abcab220f2388f83', 1616398593, 1616398596, '0.00000000000000', ''),
(30, '0c39b2a87a25681740e070fdd0a7ce25', 'backup', 'course', 21, 'moodle2', 0, 50, 2, 1000, 1, 0, '9f0c15c29550a5e021a2868fea76ffa1', 1616398608, 1616398611, '0.00000000000000', ''),
(31, '8f9d630aeca50a6b516aa357d1ea42ac', 'backup', 'course', 20, 'moodle2', 0, 50, 2, 1000, 1, 0, '297c9b244b509f64ee9b2b3244a325c6', 1616398621, 1616398621, '0.00000000000000', ''),
(32, '47acbd290888f67959b5e65e82b0b642', 'backup', 'course', 19, 'moodle2', 0, 50, 2, 1000, 1, 0, 'd49ed77ab9cd997b349b73c01b0fe762', 1616398635, 1616398638, '0.00000000000000', ''),
(33, '52e4e3ec5379d8c48f8300aa661ff478', 'backup', 'course', 18, 'moodle2', 0, 50, 2, 1000, 1, 0, 'd30ded4eec582e82bf5fd5d38199b4bc', 1616398658, 1616398658, '0.00000000000000', ''),
(34, '5e1bee87b5417b483e473d10dfeb0c41', 'backup', 'course', 17, 'moodle2', 0, 50, 2, 1000, 1, 0, '14872b2e7670b46ab59aa0a42caeb202', 1616398669, 1616398671, '0.00000000000000', ''),
(35, '4bcc8eedb92cc8a8b0e0b8261549b237', 'backup', 'course', 15, 'moodle2', 0, 50, 2, 1000, 1, 0, 'b6269d6eea6e6bb06ddf68cf6df483ab', 1616398683, 1616398683, '0.00000000000000', ''),
(36, 'ea3d6733f339c32d903034f788794812', 'backup', 'course', 14, 'moodle2', 0, 50, 2, 1000, 1, 0, '0f68fc906c2cd7ebe86da51cb28f9bef', 1616398694, 1616398695, '0.00000000000000', ''),
(37, 'e87f1b4149fe71793f4acca4adfb0a96', 'backup', 'course', 12, 'moodle2', 0, 50, 2, 1000, 1, 0, 'd8259e8f8ed32f5f6a78d035be2d1a91', 1616398706, 1616398707, '0.00000000000000', ''),
(38, '6147239792c71cdbc1275ef09fa5fd11', 'backup', 'course', 5, 'moodle2', 0, 50, 2, 1000, 1, 0, 'dd5a9a6a6270012fadea3139c5065ba4', 1616398719, 1616398725, '0.00000000000000', ''),
(39, '4b4cca251cdb3bd48dd1cd965f2fde3b', 'backup', 'course', 3, 'moodle2', 0, 50, 2, 1000, 1, 0, '43d5e425e7dae52020f459f54cbee2f2', 1616398735, 1616398739, '0.00000000000000', ''),
(40, '59f9e499474ecea5fa6aacf3ed8f2ff6', 'backup', 'course', 2, 'moodle2', 0, 50, 2, 1000, 1, 0, '08a37deaeb40a0cf1bd0c011fb2a4b23', 1616398817, 1616398844, '0.00000000000000', ''),
(41, '31f95f85fad19210f42ef4daa4c5a0a7', 'backup', 'course', 39, 'moodle2', 0, 50, 2, 1000, 1, 0, '8f54b2a94b3932685a0d1fd04cc2a5f1', 1617951616, 1617951620, '0.00000000000000', ''),
(42, 'cd1175e73141f3338dd295782d37268a', 'backup', 'course', 38, 'moodle2', 0, 50, 2, 1000, 1, 0, 'fdc2219a8977af153bfbe609f6558708', 1617953068, 1617953091, '0.00000000000000', ''),
(43, 'a2a6e8ed71092eb38c4cf07fefe60290', 'backup', 'course', 70, 'moodle2', 0, 50, 2, 1000, 1, 0, '5e0b610db4ca0fc764db97c7f7554516', 1618644921, 1618644921, '0.00000000000000', ''),
(44, '3f8c95172e797731420410c611f7d9ce', 'backup', 'course', 71, 'moodle2', 0, 50, 2, 1000, 1, 0, 'efd44b37df6bb7fff7456d2f7ebf7a3e', 1618645319, 1618645319, '0.00000000000000', ''),
(45, 'b017087943e57899a93c22619f8c1603', 'backup', 'course', 76, 'moodle2', 0, 50, 2, 1000, 1, 0, '15981a4e3f5726f1364b856ac3df5a44', 1620998430, 1620998430, '0.00000000000000', ''),
(46, 'a326a769bfc1190c755f3d73ba8431fa', 'backup', 'course', 46, 'moodle2', 0, 50, 2, 1000, 1, 0, '9dbcfab97877ee3651f24ef658437eec', 1625211352, 1625211352, '0.00000000000000', ''),
(47, '13c1f7a8fa379c3f4a2e40310117215c', 'backup', 'course', 51, 'moodle2', 0, 50, 2, 1000, 1, 0, 'e337d91ce55617891b1926f9f8376bc2', 1625212782, 1625212782, '0.00000000000000', ''),
(48, '9a85efe36b6e43a74c86196afbc3f337', 'backup', 'course', 48, 'moodle2', 0, 50, 2, 1000, 1, 0, '3d6244a5fa7030b1519ff725ad6b40c7', 1625217833, 1625217833, '0.00000000000000', ''),
(49, '56d6be6142cd3f6546e9271e1001b82d', 'backup', 'course', 49, 'moodle2', 0, 50, 2, 1000, 1, 0, '8f71daec701456829435af9b2e8af3b9', 1625221196, 1625221197, '0.00000000000000', ''),
(50, 'eaa1f0eb48246486e6f92bec73b864a5', 'backup', 'course', 45, 'moodle2', 0, 50, 2, 1000, 1, 0, '4a095b60e01baa0a718dd45dedf7609e', 1625221216, 1625221216, '0.00000000000000', '');
INSERT INTO `mo_backup_controllers` (`id`, `backupid`, `operation`, `type`, `itemid`, `format`, `interactive`, `purpose`, `userid`, `status`, `execution`, `executiontime`, `checksum`, `timecreated`, `timemodified`, `progress`, `controller`) VALUES
(51, '32808a29abb5170920de3db83cc3da86', 'backup', 'activity', 394, 'moodle2', 1, 10, 2, 500, 1, 0, '8b545e75cb12605a4733814362ff4447', 1625318426, 0, '0.00000000000000', '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'),
(52, '8941e7f19d24810e55ab0f392a4b8dad', 'backup', 'course', 81, 'moodle2', 0, 50, 2, 1000, 1, 0, 'a91e78a8f9a99809147f3ce6a85907ea', 1625471297, 1625471297, '0.00000000000000', '');
INSERT INTO `mo_backup_controllers` (`id`, `backupid`, `operation`, `type`, `itemid`, `format`, `interactive`, `purpose`, `userid`, `status`, `execution`, `executiontime`, `checksum`, `timecreated`, `timemodified`, `progress`, `controller`) VALUES
(53, '7e430df703db3b09f97d0f961b3b601b', 'backup', 'course', 1, 'moodle2', 1, 10, 2, 500, 1, 0, '4f6dcc1be3a6dfbde0bf62f3091f60da', 1625825141, 0, '0.00000000000000', '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ZXBlbmRlbmNpZXMiO2E6MTp7czoxNjoiZm9ydW1fMV91c2VyaW5mbyI7cjoyMzA7fXM6MTQ6IgAqAGRlcGVuZGVudG9uIjthOjI6e3M6NToidXNlcnMiO086NDE6InNldHRpbmdfZGVwZW5kZW5jeV9kaXNhYmxlZGlmX25vdF9jaGVja2VkIjo1OntzOjg6IgAqAHZhbHVlIjtiOjA7czoxMDoiACoAc2V0dGluZyI7cjo1MTtzOjE5OiIAKgBkZXBlbmRlbnRzZXR0aW5nIjtyOjIzMjtzOjE1OiIAKgBkZWZhdWx0dmFsdWUiO2I6MDtzOjEyOiIAKgBsYXN0dmFsdWUiO2k6MTt9czoxODoic2VjdGlvbl8xX2luY2x1ZGVkIjtPOjQxOiJzZXR0aW5nX2RlcGVuZGVuY3lfZGlzYWJsZWRpZl9ub3RfY2hlY2tlZCI6NTp7czo4OiIAKgB2YWx1ZSI7YjowO3M6MTA6IgAqAHNldHRpbmciO086MzE6ImJhY2t1cF9zZWN0aW9uX2luY2x1ZGVkX3NldHRpbmciOjExOntzOjg6IgAqAGxldmVsIjtpOjk7czo3OiIAKgBuYW1lIjtzOjE4OiJzZWN0aW9uXzFfaW5jbHVkZWQiO3M6ODoiACoAdmFsdWUiO2k6MTtzOjE2OiIAKgB1bmxvY2tlZHZhbHVlIjtpOjE7czo4OiIAKgB2dHlwZSI7czo0OiJib29sIjtzOjEzOiIAKgB2aXNpYmlsaXR5IjtpOjE7czo5OiIAKgBzdGF0dXMiO2k6MztzOjE1OiIAKgBkZXBlbmRlbmNpZXMiO2E6Mjp7czoxODoic2VjdGlvbl8xX3VzZXJpbmZvIjtyOjI0OTtzOjE2OiJmb3J1bV8xX2luY2x1ZGVkIjtPOjQxOiJzZXR0aW5nX2RlcGVuZGVuY3lfZGlzYWJsZWRpZl9ub3RfY2hlY2tlZCI6NTp7czo4OiIAKgB2YWx1ZSI7YjowO3M6MTA6IgAqAHNldHRpbmciO3I6MjUxO3M6MTk6IgAqAGRlcGVuZGVudHNldHRpbmciO3I6MjAyO3M6MTU6IgAqAGRlZmF1bHR2YWx1ZSI7YjowO3M6MTI6IgAqAGxhc3R2YWx1ZSI7aToxO319czoxNDoiACoAZGVwZW5kZW50b24iO2E6MDp7fXM6MTI6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'),
(54, 'b9f1a7fa3c8152ad9439bb397ee614fe', 'backup', 'course', 50, 'moodle2', 0, 50, 2, 1000, 1, 0, '8af935b949f7ac60cce871c940d966e7', 1625828804, 1625828804, '0.00000000000000', ''),
(55, '31e5b3d29f8a82083e01784a82c25318', 'backup', 'course', 37, 'moodle2', 0, 50, 2, 1000, 1, 0, '91cd191ff538285acc1a8dcb6e9dcd5e', 1625916556, 1625916556, '0.00000000000000', ''),
(56, '633a22d38f46b402dca884c513c55ecc', 'backup', 'course', 47, 'moodle2', 0, 50, 2, 1000, 1, 0, 'be1d5670c1955bcf638892ea6db65321', 1625916727, 1625916728, '0.00000000000000', ''),
(57, '33f80dd5ad593f88984edb6b7fba9d62', 'backup', 'course', 52, 'moodle2', 0, 50, 2, 1000, 1, 0, '635891f12a35fd1f73568edb819bfb3c', 1625916908, 1625916908, '0.00000000000000', ''),
(58, '8909786af0d1b72ce3ea65642ee6ad24', 'backup', 'course', 83, 'moodle2', 0, 50, 2, 1000, 1, 0, 'bcda78e22df194ea521b91de64dc213a', 1625917246, 1625917246, '0.00000000000000', ''),
(59, '3127728cba429718e9e3fae54cf5ca12', 'backup', 'course', 86, 'moodle2', 0, 50, 2, 1000, 1, 0, '31ce524300988ce5d6fedc117f8b32d4', 1626164510, 1626164510, '0.00000000000000', ''),
(60, 'eb905e2a9604b5615b76fc67e30abeac', 'backup', 'course', 61, 'moodle2', 0, 50, 2, 1000, 1, 0, '9b74ca984e80602a873a249a9a33e4da', 1628253352, 1628253353, '0.00000000000000', ''),
(61, 'eda93888d928ec6fa6846120dc13314d', 'backup', 'course', 88, 'moodle2', 0, 50, 2, 1000, 1, 0, 'c60d1ed921540c574f5cf7e258e523be', 1628766738, 1628766738, '0.00000000000000', ''),
(62, 'e661dd00ce64478f679d1545105ebdd6', 'backup', 'course', 92, 'moodle2', 0, 50, 2, 1000, 1, 0, '1ef62bc8a60553dcc5216cf567043ee7', 1630574095, 1630574096, '0.00000000000000', ''),
(63, '977136ae11d2bc593916bdeacab5a820', 'backup', 'course', 95, 'moodle2', 0, 50, 2, 1000, 1, 0, 'e771e58d804dd05b7a3ee281e5172e8b', 1630579336, 1630579336, '0.00000000000000', ''),
(64, 'ae6d57baf329f3c5757c366d79344c06', 'backup', 'course', 89, 'moodle2', 0, 50, 2, 1000, 1, 0, 'f7579a1dce217174317d5cdcbb6e4ce2', 1631007208, 1631007208, '0.00000000000000', ''),
(65, 'fc966dc1e2dffdc1a090e3cf31ab2771', 'backup', 'course', 90, 'moodle2', 0, 50, 2, 1000, 1, 0, '27681f1ced723d4fc460538585faf992', 1631007220, 1631007220, '0.00000000000000', ''),
(66, 'dbfd9506d138c09a6384d7786efea84f', 'backup', 'course', 87, 'moodle2', 0, 50, 2, 1000, 1, 0, '1e69510877ff0f33743d7c0fb6acc9ec', 1631007236, 1631007236, '0.00000000000000', ''),
(67, '641d3fe12765736893b4d05a620948f7', 'backup', 'course', 91, 'moodle2', 0, 50, 2, 1000, 1, 0, '3bada8eda657192f553c2b5e8b1c03af', 1631007247, 1631007247, '0.00000000000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `mo_backup_courses`
--

CREATE TABLE `mo_backup_courses` (
  `id` bigint NOT NULL,
  `courseid` bigint NOT NULL DEFAULT '0',
  `laststarttime` bigint NOT NULL DEFAULT '0',
  `lastendtime` bigint NOT NULL DEFAULT '0',
  `laststatus` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '5',
  `nextstarttime` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='To store every course backup status';

-- --------------------------------------------------------

--
-- Table structure for table `mo_backup_logs`
--

CREATE TABLE `mo_backup_logs` (
  `id` bigint NOT NULL,
  `backupid` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `loglevel` smallint NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timecreated` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='To store all the logs from backup and restore operations (by';

--
-- Dumping data for table `mo_backup_logs`
--

INSERT INTO `mo_backup_logs` (`id`, `backupid`, `loglevel`, `message`, `timecreated`) VALUES
(1, 'a326a769bfc1190c755f3d73ba8431fa', 40, 'instantiating backup controller a326a769bfc1190c755f3d73ba8431fa', 1625211351),
(2, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'setting controller status to 100', 1625211352),
(3, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'loading controller plan', 1625211352),
(4, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'setting controller status to 300', 1625211352),
(5, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'applying plan defaults', 1625211352),
(6, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'setting controller status to 400', 1625211352),
(7, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'setting file inclusion to ', 1625211352),
(8, 'a326a769bfc1190c755f3d73ba8431fa', 40, 'checking plan security', 1625211352),
(9, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'setting controller status to 700', 1625211352),
(10, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'saving controller to db', 1625211352),
(11, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'calculating controller checksum 1511fca720a4bdd71f5400f9fe468ced', 1625211352),
(12, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'loading controller from db', 1625211352),
(13, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'setting file inclusion to 1', 1625211352),
(14, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'setting controller status to 800', 1625211352),
(15, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'saving controller to db', 1625211352),
(16, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'calculating controller checksum 9dbcfab97877ee3651f24ef658437eec', 1625211352),
(17, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'loading controller from db', 1625211352),
(18, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'setting controller status to 1000', 1625211352),
(19, 'a326a769bfc1190c755f3d73ba8431fa', 50, 'saving controller to db', 1625211352),
(20, '13c1f7a8fa379c3f4a2e40310117215c', 40, 'instantiating backup controller 13c1f7a8fa379c3f4a2e40310117215c', 1625212781),
(21, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'setting controller status to 100', 1625212781),
(22, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'loading controller plan', 1625212781),
(23, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'setting controller status to 300', 1625212781),
(24, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'applying plan defaults', 1625212781),
(25, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'setting controller status to 400', 1625212781),
(26, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'setting file inclusion to ', 1625212781),
(27, '13c1f7a8fa379c3f4a2e40310117215c', 40, 'checking plan security', 1625212781),
(28, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'setting controller status to 700', 1625212782),
(29, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'saving controller to db', 1625212782),
(30, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'calculating controller checksum f3602521d80754074fea003964b75cfe', 1625212782),
(31, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'loading controller from db', 1625212782),
(32, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'setting file inclusion to 1', 1625212782),
(33, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'setting controller status to 800', 1625212782),
(34, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'saving controller to db', 1625212782),
(35, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'calculating controller checksum e337d91ce55617891b1926f9f8376bc2', 1625212782),
(36, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'loading controller from db', 1625212782),
(37, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'setting controller status to 1000', 1625212782),
(38, '13c1f7a8fa379c3f4a2e40310117215c', 50, 'saving controller to db', 1625212782),
(39, '9a85efe36b6e43a74c86196afbc3f337', 40, 'instantiating backup controller 9a85efe36b6e43a74c86196afbc3f337', 1625217833),
(40, '9a85efe36b6e43a74c86196afbc3f337', 50, 'setting controller status to 100', 1625217833),
(41, '9a85efe36b6e43a74c86196afbc3f337', 50, 'loading controller plan', 1625217833),
(42, '9a85efe36b6e43a74c86196afbc3f337', 50, 'setting controller status to 300', 1625217833),
(43, '9a85efe36b6e43a74c86196afbc3f337', 50, 'applying plan defaults', 1625217833),
(44, '9a85efe36b6e43a74c86196afbc3f337', 50, 'setting controller status to 400', 1625217833),
(45, '9a85efe36b6e43a74c86196afbc3f337', 50, 'setting file inclusion to ', 1625217833),
(46, '9a85efe36b6e43a74c86196afbc3f337', 40, 'checking plan security', 1625217833),
(47, '9a85efe36b6e43a74c86196afbc3f337', 50, 'setting controller status to 700', 1625217833),
(48, '9a85efe36b6e43a74c86196afbc3f337', 50, 'saving controller to db', 1625217833),
(49, '9a85efe36b6e43a74c86196afbc3f337', 50, 'calculating controller checksum 713f2aaf3c7a3fb91d4a2f7d1fd101f5', 1625217833),
(50, '9a85efe36b6e43a74c86196afbc3f337', 50, 'loading controller from db', 1625217833),
(51, '9a85efe36b6e43a74c86196afbc3f337', 50, 'setting file inclusion to 1', 1625217833),
(52, '9a85efe36b6e43a74c86196afbc3f337', 50, 'setting controller status to 800', 1625217833),
(53, '9a85efe36b6e43a74c86196afbc3f337', 50, 'saving controller to db', 1625217833),
(54, '9a85efe36b6e43a74c86196afbc3f337', 50, 'calculating controller checksum 3d6244a5fa7030b1519ff725ad6b40c7', 1625217833),
(55, '9a85efe36b6e43a74c86196afbc3f337', 50, 'loading controller from db', 1625217833),
(56, '9a85efe36b6e43a74c86196afbc3f337', 50, 'setting controller status to 1000', 1625217833),
(57, '9a85efe36b6e43a74c86196afbc3f337', 50, 'saving controller to db', 1625217833),
(58, '56d6be6142cd3f6546e9271e1001b82d', 40, 'instantiating backup controller 56d6be6142cd3f6546e9271e1001b82d', 1625221196),
(59, '56d6be6142cd3f6546e9271e1001b82d', 50, 'setting controller status to 100', 1625221196),
(60, '56d6be6142cd3f6546e9271e1001b82d', 50, 'loading controller plan', 1625221196),
(61, '56d6be6142cd3f6546e9271e1001b82d', 50, 'setting controller status to 300', 1625221196),
(62, '56d6be6142cd3f6546e9271e1001b82d', 50, 'applying plan defaults', 1625221196),
(63, '56d6be6142cd3f6546e9271e1001b82d', 50, 'setting controller status to 400', 1625221196),
(64, '56d6be6142cd3f6546e9271e1001b82d', 50, 'setting file inclusion to ', 1625221196),
(65, '56d6be6142cd3f6546e9271e1001b82d', 40, 'checking plan security', 1625221196),
(66, '56d6be6142cd3f6546e9271e1001b82d', 50, 'setting controller status to 700', 1625221196),
(67, '56d6be6142cd3f6546e9271e1001b82d', 50, 'saving controller to db', 1625221196),
(68, '56d6be6142cd3f6546e9271e1001b82d', 50, 'calculating controller checksum 95dc97013a4fb3e90904196841f59417', 1625221196),
(69, '56d6be6142cd3f6546e9271e1001b82d', 50, 'loading controller from db', 1625221196),
(70, '56d6be6142cd3f6546e9271e1001b82d', 50, 'setting file inclusion to 1', 1625221196),
(71, '56d6be6142cd3f6546e9271e1001b82d', 50, 'setting controller status to 800', 1625221196),
(72, '56d6be6142cd3f6546e9271e1001b82d', 50, 'saving controller to db', 1625221196),
(73, '56d6be6142cd3f6546e9271e1001b82d', 50, 'calculating controller checksum 8f71daec701456829435af9b2e8af3b9', 1625221196),
(74, '56d6be6142cd3f6546e9271e1001b82d', 50, 'loading controller from db', 1625221196),
(75, '56d6be6142cd3f6546e9271e1001b82d', 50, 'setting controller status to 1000', 1625221197),
(76, '56d6be6142cd3f6546e9271e1001b82d', 50, 'saving controller to db', 1625221197),
(77, 'eaa1f0eb48246486e6f92bec73b864a5', 40, 'instantiating backup controller eaa1f0eb48246486e6f92bec73b864a5', 1625221216),
(78, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'setting controller status to 100', 1625221216),
(79, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'loading controller plan', 1625221216),
(80, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'setting controller status to 300', 1625221216),
(81, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'applying plan defaults', 1625221216),
(82, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'setting controller status to 400', 1625221216),
(83, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'setting file inclusion to ', 1625221216),
(84, 'eaa1f0eb48246486e6f92bec73b864a5', 40, 'checking plan security', 1625221216),
(85, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'setting controller status to 700', 1625221216),
(86, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'saving controller to db', 1625221216),
(87, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'calculating controller checksum fd1ffda84408850ee23b257e622c8022', 1625221216),
(88, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'loading controller from db', 1625221216),
(89, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'setting file inclusion to 1', 1625221216),
(90, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'setting controller status to 800', 1625221216),
(91, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'saving controller to db', 1625221216),
(92, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'calculating controller checksum 4a095b60e01baa0a718dd45dedf7609e', 1625221216),
(93, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'loading controller from db', 1625221216),
(94, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'setting controller status to 1000', 1625221216),
(95, 'eaa1f0eb48246486e6f92bec73b864a5', 50, 'saving controller to db', 1625221216),
(96, '32808a29abb5170920de3db83cc3da86', 40, 'instantiating backup controller 32808a29abb5170920de3db83cc3da86', 1625318426),
(97, '32808a29abb5170920de3db83cc3da86', 50, 'setting controller status to 100', 1625318426),
(98, '32808a29abb5170920de3db83cc3da86', 50, 'loading controller plan', 1625318426),
(99, '32808a29abb5170920de3db83cc3da86', 50, 'setting controller status to 300', 1625318426),
(100, '32808a29abb5170920de3db83cc3da86', 50, 'applying plan defaults', 1625318426),
(101, '32808a29abb5170920de3db83cc3da86', 50, 'setting controller status to 400', 1625318426),
(102, '32808a29abb5170920de3db83cc3da86', 50, 'setting file inclusion to ', 1625318426),
(103, '32808a29abb5170920de3db83cc3da86', 40, 'checking plan security', 1625318426),
(104, '32808a29abb5170920de3db83cc3da86', 50, 'setting controller status to 500', 1625318426),
(105, '32808a29abb5170920de3db83cc3da86', 40, 'checking plan security', 1625318426),
(106, '32808a29abb5170920de3db83cc3da86', 40, 'checking plan security', 1625318426),
(107, '32808a29abb5170920de3db83cc3da86', 40, 'checking plan security', 1625318426),
(108, '32808a29abb5170920de3db83cc3da86', 50, 'saving controller to db', 1625318426),
(109, '32808a29abb5170920de3db83cc3da86', 50, 'calculating controller checksum 8b545e75cb12605a4733814362ff4447', 1625318426),
(110, '8941e7f19d24810e55ab0f392a4b8dad', 40, 'instantiating backup controller 8941e7f19d24810e55ab0f392a4b8dad', 1625471297),
(111, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'setting controller status to 100', 1625471297),
(112, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'loading controller plan', 1625471297),
(113, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'setting controller status to 300', 1625471297),
(114, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'applying plan defaults', 1625471297),
(115, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'setting controller status to 400', 1625471297),
(116, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'setting file inclusion to ', 1625471297),
(117, '8941e7f19d24810e55ab0f392a4b8dad', 40, 'checking plan security', 1625471297),
(118, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'setting controller status to 700', 1625471297),
(119, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'saving controller to db', 1625471297),
(120, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'calculating controller checksum c59a5c227cd845c8819077a9db2bbd98', 1625471297),
(121, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'loading controller from db', 1625471297),
(122, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'setting file inclusion to 1', 1625471297),
(123, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'setting controller status to 800', 1625471297),
(124, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'saving controller to db', 1625471297),
(125, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'calculating controller checksum a91e78a8f9a99809147f3ce6a85907ea', 1625471297),
(126, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'loading controller from db', 1625471297),
(127, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'setting controller status to 1000', 1625471297),
(128, '8941e7f19d24810e55ab0f392a4b8dad', 50, 'saving controller to db', 1625471297),
(129, '7e430df703db3b09f97d0f961b3b601b', 40, 'instantiating backup controller 7e430df703db3b09f97d0f961b3b601b', 1625825141),
(130, '7e430df703db3b09f97d0f961b3b601b', 50, 'setting controller status to 100', 1625825141),
(131, '7e430df703db3b09f97d0f961b3b601b', 50, 'loading controller plan', 1625825141),
(132, '7e430df703db3b09f97d0f961b3b601b', 50, 'setting controller status to 300', 1625825141),
(133, '7e430df703db3b09f97d0f961b3b601b', 50, 'applying plan defaults', 1625825141),
(134, '7e430df703db3b09f97d0f961b3b601b', 50, 'setting controller status to 400', 1625825141),
(135, '7e430df703db3b09f97d0f961b3b601b', 50, 'setting file inclusion to ', 1625825141),
(136, '7e430df703db3b09f97d0f961b3b601b', 40, 'checking plan security', 1625825141),
(137, '7e430df703db3b09f97d0f961b3b601b', 50, 'setting controller status to 500', 1625825141),
(138, '7e430df703db3b09f97d0f961b3b601b', 40, 'checking plan security', 1625825141),
(139, '7e430df703db3b09f97d0f961b3b601b', 40, 'checking plan security', 1625825141),
(140, '7e430df703db3b09f97d0f961b3b601b', 40, 'checking plan security', 1625825141),
(141, '7e430df703db3b09f97d0f961b3b601b', 50, 'saving controller to db', 1625825141),
(142, '7e430df703db3b09f97d0f961b3b601b', 50, 'calculating controller checksum 4f6dcc1be3a6dfbde0bf62f3091f60da', 1625825141),
(143, 'b9f1a7fa3c8152ad9439bb397ee614fe', 40, 'instantiating backup controller b9f1a7fa3c8152ad9439bb397ee614fe', 1625828804),
(144, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'setting controller status to 100', 1625828804),
(145, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'loading controller plan', 1625828804),
(146, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'setting controller status to 300', 1625828804),
(147, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'applying plan defaults', 1625828804),
(148, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'setting controller status to 400', 1625828804),
(149, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'setting file inclusion to ', 1625828804),
(150, 'b9f1a7fa3c8152ad9439bb397ee614fe', 40, 'checking plan security', 1625828804),
(151, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'setting controller status to 700', 1625828804),
(152, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'saving controller to db', 1625828804),
(153, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'calculating controller checksum f52da0784a5b08cf17ad88eff82f2b65', 1625828804),
(154, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'loading controller from db', 1625828804),
(155, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'setting file inclusion to 1', 1625828804),
(156, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'setting controller status to 800', 1625828804),
(157, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'saving controller to db', 1625828804),
(158, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'calculating controller checksum 8af935b949f7ac60cce871c940d966e7', 1625828804),
(159, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'loading controller from db', 1625828804),
(160, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'setting controller status to 1000', 1625828804),
(161, 'b9f1a7fa3c8152ad9439bb397ee614fe', 50, 'saving controller to db', 1625828804),
(162, '31e5b3d29f8a82083e01784a82c25318', 40, 'instantiating backup controller 31e5b3d29f8a82083e01784a82c25318', 1625916556),
(163, '31e5b3d29f8a82083e01784a82c25318', 50, 'setting controller status to 100', 1625916556),
(164, '31e5b3d29f8a82083e01784a82c25318', 50, 'loading controller plan', 1625916556),
(165, '31e5b3d29f8a82083e01784a82c25318', 50, 'setting controller status to 300', 1625916556),
(166, '31e5b3d29f8a82083e01784a82c25318', 50, 'applying plan defaults', 1625916556),
(167, '31e5b3d29f8a82083e01784a82c25318', 50, 'setting controller status to 400', 1625916556),
(168, '31e5b3d29f8a82083e01784a82c25318', 50, 'setting file inclusion to ', 1625916556),
(169, '31e5b3d29f8a82083e01784a82c25318', 40, 'checking plan security', 1625916556),
(170, '31e5b3d29f8a82083e01784a82c25318', 50, 'setting controller status to 700', 1625916556),
(171, '31e5b3d29f8a82083e01784a82c25318', 50, 'saving controller to db', 1625916556),
(172, '31e5b3d29f8a82083e01784a82c25318', 50, 'calculating controller checksum eb9ed7f750abd51c6e08b826f7222e9d', 1625916556),
(173, '31e5b3d29f8a82083e01784a82c25318', 50, 'loading controller from db', 1625916556),
(174, '31e5b3d29f8a82083e01784a82c25318', 50, 'setting file inclusion to 1', 1625916556),
(175, '31e5b3d29f8a82083e01784a82c25318', 50, 'setting controller status to 800', 1625916556),
(176, '31e5b3d29f8a82083e01784a82c25318', 50, 'saving controller to db', 1625916556),
(177, '31e5b3d29f8a82083e01784a82c25318', 50, 'calculating controller checksum 91cd191ff538285acc1a8dcb6e9dcd5e', 1625916556),
(178, '31e5b3d29f8a82083e01784a82c25318', 50, 'loading controller from db', 1625916556),
(179, '31e5b3d29f8a82083e01784a82c25318', 50, 'setting controller status to 1000', 1625916556),
(180, '31e5b3d29f8a82083e01784a82c25318', 50, 'saving controller to db', 1625916556),
(181, '633a22d38f46b402dca884c513c55ecc', 40, 'instantiating backup controller 633a22d38f46b402dca884c513c55ecc', 1625916727),
(182, '633a22d38f46b402dca884c513c55ecc', 50, 'setting controller status to 100', 1625916727),
(183, '633a22d38f46b402dca884c513c55ecc', 50, 'loading controller plan', 1625916727),
(184, '633a22d38f46b402dca884c513c55ecc', 50, 'setting controller status to 300', 1625916727),
(185, '633a22d38f46b402dca884c513c55ecc', 50, 'applying plan defaults', 1625916727),
(186, '633a22d38f46b402dca884c513c55ecc', 50, 'setting controller status to 400', 1625916727),
(187, '633a22d38f46b402dca884c513c55ecc', 50, 'setting file inclusion to ', 1625916727),
(188, '633a22d38f46b402dca884c513c55ecc', 40, 'checking plan security', 1625916727),
(189, '633a22d38f46b402dca884c513c55ecc', 50, 'setting controller status to 700', 1625916727),
(190, '633a22d38f46b402dca884c513c55ecc', 50, 'saving controller to db', 1625916727),
(191, '633a22d38f46b402dca884c513c55ecc', 50, 'calculating controller checksum df6baa89d8df9c62053205a2191216f3', 1625916727),
(192, '633a22d38f46b402dca884c513c55ecc', 50, 'loading controller from db', 1625916727),
(193, '633a22d38f46b402dca884c513c55ecc', 50, 'setting file inclusion to 1', 1625916727),
(194, '633a22d38f46b402dca884c513c55ecc', 50, 'setting controller status to 800', 1625916727),
(195, '633a22d38f46b402dca884c513c55ecc', 50, 'saving controller to db', 1625916727),
(196, '633a22d38f46b402dca884c513c55ecc', 50, 'calculating controller checksum be1d5670c1955bcf638892ea6db65321', 1625916727),
(197, '633a22d38f46b402dca884c513c55ecc', 50, 'loading controller from db', 1625916727),
(198, '633a22d38f46b402dca884c513c55ecc', 50, 'setting controller status to 1000', 1625916728),
(199, '633a22d38f46b402dca884c513c55ecc', 50, 'saving controller to db', 1625916728),
(200, '33f80dd5ad593f88984edb6b7fba9d62', 40, 'instantiating backup controller 33f80dd5ad593f88984edb6b7fba9d62', 1625916908),
(201, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'setting controller status to 100', 1625916908),
(202, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'loading controller plan', 1625916908),
(203, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'setting controller status to 300', 1625916908),
(204, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'applying plan defaults', 1625916908),
(205, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'setting controller status to 400', 1625916908),
(206, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'setting file inclusion to ', 1625916908),
(207, '33f80dd5ad593f88984edb6b7fba9d62', 40, 'checking plan security', 1625916908),
(208, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'setting controller status to 700', 1625916908),
(209, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'saving controller to db', 1625916908),
(210, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'calculating controller checksum 14d43a4b7d44a6c9ca7c1d2aa04380d5', 1625916908),
(211, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'loading controller from db', 1625916908),
(212, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'setting file inclusion to 1', 1625916908),
(213, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'setting controller status to 800', 1625916908),
(214, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'saving controller to db', 1625916908),
(215, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'calculating controller checksum 635891f12a35fd1f73568edb819bfb3c', 1625916908),
(216, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'loading controller from db', 1625916908),
(217, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'setting controller status to 1000', 1625916908),
(218, '33f80dd5ad593f88984edb6b7fba9d62', 50, 'saving controller to db', 1625916908),
(219, '8909786af0d1b72ce3ea65642ee6ad24', 40, 'instantiating backup controller 8909786af0d1b72ce3ea65642ee6ad24', 1625917245),
(220, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'setting controller status to 100', 1625917246),
(221, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'loading controller plan', 1625917246),
(222, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'setting controller status to 300', 1625917246),
(223, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'applying plan defaults', 1625917246),
(224, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'setting controller status to 400', 1625917246),
(225, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'setting file inclusion to ', 1625917246),
(226, '8909786af0d1b72ce3ea65642ee6ad24', 40, 'checking plan security', 1625917246),
(227, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'setting controller status to 700', 1625917246),
(228, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'saving controller to db', 1625917246),
(229, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'calculating controller checksum 01796517e23e8499ee688ebd2ad7ce50', 1625917246),
(230, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'loading controller from db', 1625917246),
(231, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'setting file inclusion to 1', 1625917246),
(232, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'setting controller status to 800', 1625917246),
(233, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'saving controller to db', 1625917246),
(234, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'calculating controller checksum bcda78e22df194ea521b91de64dc213a', 1625917246),
(235, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'loading controller from db', 1625917246),
(236, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'setting controller status to 1000', 1625917246),
(237, '8909786af0d1b72ce3ea65642ee6ad24', 50, 'saving controller to db', 1625917246),
(238, '3127728cba429718e9e3fae54cf5ca12', 40, 'instantiating backup controller 3127728cba429718e9e3fae54cf5ca12', 1626164509),
(239, '3127728cba429718e9e3fae54cf5ca12', 50, 'setting controller status to 100', 1626164509),
(240, '3127728cba429718e9e3fae54cf5ca12', 50, 'loading controller plan', 1626164509),
(241, '3127728cba429718e9e3fae54cf5ca12', 50, 'setting controller status to 300', 1626164510),
(242, '3127728cba429718e9e3fae54cf5ca12', 50, 'applying plan defaults', 1626164510),
(243, '3127728cba429718e9e3fae54cf5ca12', 50, 'setting controller status to 400', 1626164510),
(244, '3127728cba429718e9e3fae54cf5ca12', 50, 'setting file inclusion to ', 1626164510),
(245, '3127728cba429718e9e3fae54cf5ca12', 40, 'checking plan security', 1626164510),
(246, '3127728cba429718e9e3fae54cf5ca12', 50, 'setting controller status to 700', 1626164510),
(247, '3127728cba429718e9e3fae54cf5ca12', 50, 'saving controller to db', 1626164510),
(248, '3127728cba429718e9e3fae54cf5ca12', 50, 'calculating controller checksum 7de7322f99e4e0fba57f0c1c9f3edbe6', 1626164510),
(249, '3127728cba429718e9e3fae54cf5ca12', 50, 'loading controller from db', 1626164510),
(250, '3127728cba429718e9e3fae54cf5ca12', 50, 'setting file inclusion to 1', 1626164510),
(251, '3127728cba429718e9e3fae54cf5ca12', 50, 'setting controller status to 800', 1626164510),
(252, '3127728cba429718e9e3fae54cf5ca12', 50, 'saving controller to db', 1626164510),
(253, '3127728cba429718e9e3fae54cf5ca12', 50, 'calculating controller checksum 31ce524300988ce5d6fedc117f8b32d4', 1626164510),
(254, '3127728cba429718e9e3fae54cf5ca12', 50, 'loading controller from db', 1626164510),
(255, '3127728cba429718e9e3fae54cf5ca12', 50, 'setting controller status to 1000', 1626164510),
(256, '3127728cba429718e9e3fae54cf5ca12', 50, 'saving controller to db', 1626164510),
(257, 'eb905e2a9604b5615b76fc67e30abeac', 40, 'instantiating backup controller eb905e2a9604b5615b76fc67e30abeac', 1628253352),
(258, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'setting controller status to 100', 1628253352),
(259, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'loading controller plan', 1628253352),
(260, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'setting controller status to 300', 1628253352),
(261, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'applying plan defaults', 1628253352),
(262, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'setting controller status to 400', 1628253352),
(263, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'setting file inclusion to ', 1628253352),
(264, 'eb905e2a9604b5615b76fc67e30abeac', 40, 'checking plan security', 1628253352),
(265, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'setting controller status to 700', 1628253352),
(266, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'saving controller to db', 1628253352),
(267, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'calculating controller checksum 813e62b0af8076f6bba3c0f47f8e3e4e', 1628253352),
(268, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'loading controller from db', 1628253352),
(269, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'setting file inclusion to 1', 1628253352),
(270, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'setting controller status to 800', 1628253352),
(271, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'saving controller to db', 1628253352),
(272, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'calculating controller checksum 9b74ca984e80602a873a249a9a33e4da', 1628253352),
(273, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'loading controller from db', 1628253352),
(274, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'setting controller status to 1000', 1628253353),
(275, 'eb905e2a9604b5615b76fc67e30abeac', 50, 'saving controller to db', 1628253353);

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge`
--

CREATE TABLE `mo_badge` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `usercreated` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `issuername` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `issuerurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `issuercontact` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiredate` bigint DEFAULT NULL,
  `expireperiod` bigint DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `courseid` bigint DEFAULT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `messagesubject` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `attachment` tinyint(1) NOT NULL DEFAULT '1',
  `notification` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `nextcron` bigint DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageauthorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageauthoremail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageauthorurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagecaption` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines badge';

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_alignment`
--

CREATE TABLE `mo_badge_alignment` (
  `id` bigint NOT NULL,
  `badgeid` bigint NOT NULL DEFAULT '0',
  `targetname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `targeturl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `targetdescription` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `targetframework` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines alignment for badges';

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_backpack`
--

CREATE TABLE `mo_badge_backpack` (
  `id` bigint NOT NULL,
  `userid` bigint NOT NULL DEFAULT '0',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backpackuid` bigint NOT NULL,
  `autosync` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `externalbackpackid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines settings for connecting external backpack';

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_backpack_oauth2`
--

CREATE TABLE `mo_badge_backpack_oauth2` (
  `id` bigint NOT NULL,
  `usermodified` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL,
  `issuerid` bigint NOT NULL,
  `externalbackpackid` bigint NOT NULL,
  `token` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `refreshtoken` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expires` bigint DEFAULT NULL,
  `scope` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_criteria`
--

CREATE TABLE `mo_badge_criteria` (
  `id` bigint NOT NULL,
  `badgeid` bigint NOT NULL DEFAULT '0',
  `criteriatype` bigint DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT '1',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines criteria for issuing badges';

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_criteria_met`
--

CREATE TABLE `mo_badge_criteria_met` (
  `id` bigint NOT NULL,
  `issuedid` bigint DEFAULT NULL,
  `critid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `datemet` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines criteria that were met for an issued badge';

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_criteria_param`
--

CREATE TABLE `mo_badge_criteria_param` (
  `id` bigint NOT NULL,
  `critid` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines parameters for badges criteria';

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_endorsement`
--

CREATE TABLE `mo_badge_endorsement` (
  `id` bigint NOT NULL,
  `badgeid` bigint NOT NULL DEFAULT '0',
  `issuername` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `issuerurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `issueremail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `claimid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `claimcomment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dateissued` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines endorsement for badge';

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_external`
--

CREATE TABLE `mo_badge_external` (
  `id` bigint NOT NULL,
  `backpackid` bigint NOT NULL,
  `collectionid` bigint NOT NULL,
  `entityid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `assertion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Setting for external badges display';

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_external_backpack`
--

CREATE TABLE `mo_badge_external_backpack` (
  `id` bigint NOT NULL,
  `backpackapiurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backpackweburl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `apiversion` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1.0',
  `sortorder` bigint NOT NULL DEFAULT '0',
  `oauth2_issuerid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines settings for site level backpacks that a user can co';

--
-- Dumping data for table `mo_badge_external_backpack`
--

INSERT INTO `mo_badge_external_backpack` (`id`, `backpackapiurl`, `backpackweburl`, `apiversion`, `sortorder`, `oauth2_issuerid`) VALUES
(2, 'https://api.badgr.io/v2', 'https://badgr.io', '2', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_external_identifier`
--

CREATE TABLE `mo_badge_external_identifier` (
  `id` bigint NOT NULL,
  `sitebackpackid` bigint NOT NULL,
  `internalid` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `externalid` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Setting for external badges mappings';

-- --------------------------------------------------------

--
-- Table structure for table `mo_badge_issued`
--

CREATE TABLE `mo_badge_issued` (
  `id` bigint NOT NULL,
  `badgeid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `uniquehash` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dateissued` bigint NOT NULL DEFAULT '0',
  `dateexpire` bigint DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `issuernotified` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Defines issued badges';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mo_analytics_indicator_calc`
--
ALTER TABLE `mo_analytics_indicator_calc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_analindicalc_staendcon_ix` (`starttime`,`endtime`,`contextid`),
  ADD KEY `mo_analindicalc_con_ix` (`contextid`);

--
-- Indexes for table `mo_analytics_models`
--
ALTER TABLE `mo_analytics_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_analmode_enatra_ix` (`enabled`,`trained`);

--
-- Indexes for table `mo_analytics_models_log`
--
ALTER TABLE `mo_analytics_models_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_analmodelog_mod_ix` (`modelid`);

--
-- Indexes for table `mo_analytics_predictions`
--
ALTER TABLE `mo_analytics_predictions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_analpred_modcon_ix` (`modelid`,`contextid`),
  ADD KEY `mo_analpred_mod_ix` (`modelid`),
  ADD KEY `mo_analpred_con_ix` (`contextid`);

--
-- Indexes for table `mo_analytics_prediction_actions`
--
ALTER TABLE `mo_analytics_prediction_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_analpredacti_preuseact_ix` (`predictionid`,`userid`,`actionname`(191)),
  ADD KEY `mo_analpredacti_pre_ix` (`predictionid`),
  ADD KEY `mo_analpredacti_use_ix` (`userid`);

--
-- Indexes for table `mo_analytics_predict_samples`
--
ALTER TABLE `mo_analytics_predict_samples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_analpredsamp_modanatimra_ix` (`modelid`,`analysableid`,`timesplitting`(191),`rangeindex`),
  ADD KEY `mo_analpredsamp_mod_ix` (`modelid`);

--
-- Indexes for table `mo_analytics_train_samples`
--
ALTER TABLE `mo_analytics_train_samples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_analtraisamp_modanatim_ix` (`modelid`,`analysableid`,`timesplitting`(191)),
  ADD KEY `mo_analtraisamp_mod_ix` (`modelid`);

--
-- Indexes for table `mo_analytics_used_analysables`
--
ALTER TABLE `mo_analytics_used_analysables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_analusedanal_modact_ix` (`modelid`,`action`),
  ADD KEY `mo_analusedanal_ana_ix` (`analysableid`),
  ADD KEY `mo_analusedanal_mod_ix` (`modelid`);

--
-- Indexes for table `mo_analytics_used_files`
--
ALTER TABLE `mo_analytics_used_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_analusedfile_modactfil_ix` (`modelid`,`action`,`fileid`),
  ADD KEY `mo_analusedfile_mod_ix` (`modelid`),
  ADD KEY `mo_analusedfile_fil_ix` (`fileid`);

--
-- Indexes for table `mo_assign`
--
ALTER TABLE `mo_assign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assi_cou_ix` (`course`),
  ADD KEY `mo_assi_tea_ix` (`teamsubmissiongroupingid`);

--
-- Indexes for table `mo_assignfeedback_comments`
--
ALTER TABLE `mo_assignfeedback_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assicomm_ass_ix` (`assignment`),
  ADD KEY `mo_assicomm_gra_ix` (`grade`);

--
-- Indexes for table `mo_assignfeedback_editpdf_annot`
--
ALTER TABLE `mo_assignfeedback_editpdf_annot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assieditanno_grapag_ix` (`gradeid`,`pageno`),
  ADD KEY `mo_assieditanno_gra_ix` (`gradeid`);

--
-- Indexes for table `mo_assignfeedback_editpdf_cmnt`
--
ALTER TABLE `mo_assignfeedback_editpdf_cmnt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assieditcmnt_grapag_ix` (`gradeid`,`pageno`),
  ADD KEY `mo_assieditcmnt_gra_ix` (`gradeid`);

--
-- Indexes for table `mo_assignfeedback_editpdf_queue`
--
ALTER TABLE `mo_assignfeedback_editpdf_queue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_assieditqueu_subsub_uix` (`submissionid`,`submissionattempt`);

--
-- Indexes for table `mo_assignfeedback_editpdf_quick`
--
ALTER TABLE `mo_assignfeedback_editpdf_quick`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assieditquic_use_ix` (`userid`);

--
-- Indexes for table `mo_assignfeedback_editpdf_rot`
--
ALTER TABLE `mo_assignfeedback_editpdf_rot`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_assieditrot_grapag_uix` (`gradeid`,`pageno`),
  ADD KEY `mo_assieditrot_gra_ix` (`gradeid`);

--
-- Indexes for table `mo_assignfeedback_file`
--
ALTER TABLE `mo_assignfeedback_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assifile_ass2_ix` (`assignment`),
  ADD KEY `mo_assifile_gra_ix` (`grade`);

--
-- Indexes for table `mo_assignment`
--
ALTER TABLE `mo_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assi_cou2_ix` (`course`);

--
-- Indexes for table `mo_assignment_submissions`
--
ALTER TABLE `mo_assignment_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assisubm_use2_ix` (`userid`),
  ADD KEY `mo_assisubm_mai_ix` (`mailed`),
  ADD KEY `mo_assisubm_tim_ix` (`timemarked`),
  ADD KEY `mo_assisubm_ass2_ix` (`assignment`);

--
-- Indexes for table `mo_assignment_upgrade`
--
ALTER TABLE `mo_assignment_upgrade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assiupgr_old_ix` (`oldcmid`),
  ADD KEY `mo_assiupgr_old2_ix` (`oldinstance`);

--
-- Indexes for table `mo_assignsubmission_file`
--
ALTER TABLE `mo_assignsubmission_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assifile_ass_ix` (`assignment`),
  ADD KEY `mo_assifile_sub_ix` (`submission`);

--
-- Indexes for table `mo_assignsubmission_onlinetext`
--
ALTER TABLE `mo_assignsubmission_onlinetext`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assionli_ass_ix` (`assignment`),
  ADD KEY `mo_assionli_sub_ix` (`submission`);

--
-- Indexes for table `mo_assign_grades`
--
ALTER TABLE `mo_assign_grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_assigrad_assuseatt_uix` (`assignment`,`userid`,`attemptnumber`),
  ADD KEY `mo_assigrad_use_ix` (`userid`),
  ADD KEY `mo_assigrad_att_ix` (`attemptnumber`),
  ADD KEY `mo_assigrad_ass_ix` (`assignment`);

--
-- Indexes for table `mo_assign_overrides`
--
ALTER TABLE `mo_assign_overrides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assiover_ass_ix` (`assignid`),
  ADD KEY `mo_assiover_gro_ix` (`groupid`),
  ADD KEY `mo_assiover_use_ix` (`userid`);

--
-- Indexes for table `mo_assign_plugin_config`
--
ALTER TABLE `mo_assign_plugin_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assiplugconf_plu_ix` (`plugin`),
  ADD KEY `mo_assiplugconf_sub_ix` (`subtype`),
  ADD KEY `mo_assiplugconf_nam_ix` (`name`),
  ADD KEY `mo_assiplugconf_ass_ix` (`assignment`);

--
-- Indexes for table `mo_assign_submission`
--
ALTER TABLE `mo_assign_submission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_assisubm_assusegroatt_uix` (`assignment`,`userid`,`groupid`,`attemptnumber`),
  ADD KEY `mo_assisubm_use_ix` (`userid`),
  ADD KEY `mo_assisubm_att_ix` (`attemptnumber`),
  ADD KEY `mo_assisubm_assusegrolat_ix` (`assignment`,`userid`,`groupid`,`latest`),
  ADD KEY `mo_assisubm_ass_ix` (`assignment`);

--
-- Indexes for table `mo_assign_user_flags`
--
ALTER TABLE `mo_assign_user_flags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assiuserflag_mai_ix` (`mailed`),
  ADD KEY `mo_assiuserflag_use_ix` (`userid`),
  ADD KEY `mo_assiuserflag_ass_ix` (`assignment`);

--
-- Indexes for table `mo_assign_user_mapping`
--
ALTER TABLE `mo_assign_user_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_assiusermapp_ass_ix` (`assignment`),
  ADD KEY `mo_assiusermapp_use_ix` (`userid`);

--
-- Indexes for table `mo_auth_oauth2_linked_login`
--
ALTER TABLE `mo_auth_oauth2_linked_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_authoautlinklogi_useiss_uix` (`userid`,`issuerid`,`username`),
  ADD KEY `mo_authoautlinklogi_issuse_ix` (`issuerid`,`username`),
  ADD KEY `mo_authoautlinklogi_use_ix` (`usermodified`),
  ADD KEY `mo_authoautlinklogi_use2_ix` (`userid`),
  ADD KEY `mo_authoautlinklogi_iss_ix` (`issuerid`);

--
-- Indexes for table `mo_backup_controllers`
--
ALTER TABLE `mo_backup_controllers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_backcont_bac_uix` (`backupid`),
  ADD KEY `mo_backcont_typite_ix` (`type`,`itemid`),
  ADD KEY `mo_backcont_useite_ix` (`userid`,`itemid`),
  ADD KEY `mo_backcont_use_ix` (`userid`);

--
-- Indexes for table `mo_backup_courses`
--
ALTER TABLE `mo_backup_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_backcour_cou_uix` (`courseid`);

--
-- Indexes for table `mo_backup_logs`
--
ALTER TABLE `mo_backup_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_backlogs_bacid_uix` (`backupid`,`id`),
  ADD KEY `mo_backlogs_bac_ix` (`backupid`);

--
-- Indexes for table `mo_badge`
--
ALTER TABLE `mo_badge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_badg_typ_ix` (`type`),
  ADD KEY `mo_badg_cou_ix` (`courseid`),
  ADD KEY `mo_badg_use_ix` (`usermodified`),
  ADD KEY `mo_badg_use2_ix` (`usercreated`);

--
-- Indexes for table `mo_badge_alignment`
--
ALTER TABLE `mo_badge_alignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_badgalig_bad_ix` (`badgeid`);

--
-- Indexes for table `mo_badge_backpack`
--
ALTER TABLE `mo_badge_backpack`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_badgback_useext_uix` (`userid`,`externalbackpackid`),
  ADD KEY `mo_badgback_use_ix` (`userid`),
  ADD KEY `mo_badgback_ext_ix` (`externalbackpackid`);

--
-- Indexes for table `mo_badge_backpack_oauth2`
--
ALTER TABLE `mo_badge_backpack_oauth2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_badgbackoaut_use_ix` (`usermodified`),
  ADD KEY `mo_badgbackoaut_use2_ix` (`userid`),
  ADD KEY `mo_badgbackoaut_iss_ix` (`issuerid`),
  ADD KEY `mo_badgbackoaut_ext_ix` (`externalbackpackid`);

--
-- Indexes for table `mo_badge_criteria`
--
ALTER TABLE `mo_badge_criteria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_badgcrit_badcri_uix` (`badgeid`,`criteriatype`),
  ADD KEY `mo_badgcrit_cri_ix` (`criteriatype`),
  ADD KEY `mo_badgcrit_bad_ix` (`badgeid`);

--
-- Indexes for table `mo_badge_criteria_met`
--
ALTER TABLE `mo_badge_criteria_met`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_badgcritmet_cri_ix` (`critid`),
  ADD KEY `mo_badgcritmet_use_ix` (`userid`),
  ADD KEY `mo_badgcritmet_iss_ix` (`issuedid`);

--
-- Indexes for table `mo_badge_criteria_param`
--
ALTER TABLE `mo_badge_criteria_param`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_badgcritpara_cri_ix` (`critid`);

--
-- Indexes for table `mo_badge_endorsement`
--
ALTER TABLE `mo_badge_endorsement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_badgendo_bad_ix` (`badgeid`);

--
-- Indexes for table `mo_badge_external`
--
ALTER TABLE `mo_badge_external`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mo_badgexte_bac_ix` (`backpackid`);

--
-- Indexes for table `mo_badge_external_backpack`
--
ALTER TABLE `mo_badge_external_backpack`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_badgexteback_bac_uix` (`backpackapiurl`),
  ADD UNIQUE KEY `mo_badgexteback_bac2_uix` (`backpackweburl`),
  ADD KEY `mo_badgexteback_oau_ix` (`oauth2_issuerid`);

--
-- Indexes for table `mo_badge_external_identifier`
--
ALTER TABLE `mo_badge_external_identifier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_badgexteiden_sitintextt_uix` (`sitebackpackid`,`internalid`,`externalid`,`type`),
  ADD KEY `mo_badgexteiden_sit_ix` (`sitebackpackid`);

--
-- Indexes for table `mo_badge_issued`
--
ALTER TABLE `mo_badge_issued`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mo_badgissu_baduse_uix` (`badgeid`,`userid`),
  ADD KEY `mo_badgissu_bad_ix` (`badgeid`),
  ADD KEY `mo_badgissu_use_ix` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mo_analytics_indicator_calc`
--
ALTER TABLE `mo_analytics_indicator_calc`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_analytics_models`
--
ALTER TABLE `mo_analytics_models`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mo_analytics_models_log`
--
ALTER TABLE `mo_analytics_models_log`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_analytics_predictions`
--
ALTER TABLE `mo_analytics_predictions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_analytics_prediction_actions`
--
ALTER TABLE `mo_analytics_prediction_actions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_analytics_predict_samples`
--
ALTER TABLE `mo_analytics_predict_samples`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_analytics_train_samples`
--
ALTER TABLE `mo_analytics_train_samples`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_analytics_used_analysables`
--
ALTER TABLE `mo_analytics_used_analysables`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_analytics_used_files`
--
ALTER TABLE `mo_analytics_used_files`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assign`
--
ALTER TABLE `mo_assign`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignfeedback_comments`
--
ALTER TABLE `mo_assignfeedback_comments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignfeedback_editpdf_annot`
--
ALTER TABLE `mo_assignfeedback_editpdf_annot`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignfeedback_editpdf_cmnt`
--
ALTER TABLE `mo_assignfeedback_editpdf_cmnt`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignfeedback_editpdf_queue`
--
ALTER TABLE `mo_assignfeedback_editpdf_queue`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignfeedback_editpdf_quick`
--
ALTER TABLE `mo_assignfeedback_editpdf_quick`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignfeedback_editpdf_rot`
--
ALTER TABLE `mo_assignfeedback_editpdf_rot`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignfeedback_file`
--
ALTER TABLE `mo_assignfeedback_file`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignment`
--
ALTER TABLE `mo_assignment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignment_submissions`
--
ALTER TABLE `mo_assignment_submissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignment_upgrade`
--
ALTER TABLE `mo_assignment_upgrade`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignsubmission_file`
--
ALTER TABLE `mo_assignsubmission_file`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assignsubmission_onlinetext`
--
ALTER TABLE `mo_assignsubmission_onlinetext`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assign_grades`
--
ALTER TABLE `mo_assign_grades`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assign_overrides`
--
ALTER TABLE `mo_assign_overrides`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assign_plugin_config`
--
ALTER TABLE `mo_assign_plugin_config`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assign_submission`
--
ALTER TABLE `mo_assign_submission`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assign_user_flags`
--
ALTER TABLE `mo_assign_user_flags`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_assign_user_mapping`
--
ALTER TABLE `mo_assign_user_mapping`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_auth_oauth2_linked_login`
--
ALTER TABLE `mo_auth_oauth2_linked_login`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mo_backup_controllers`
--
ALTER TABLE `mo_backup_controllers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `mo_backup_courses`
--
ALTER TABLE `mo_backup_courses`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_backup_logs`
--
ALTER TABLE `mo_backup_logs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `mo_badge`
--
ALTER TABLE `mo_badge`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_alignment`
--
ALTER TABLE `mo_badge_alignment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_backpack`
--
ALTER TABLE `mo_badge_backpack`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_backpack_oauth2`
--
ALTER TABLE `mo_badge_backpack_oauth2`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_criteria`
--
ALTER TABLE `mo_badge_criteria`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_criteria_met`
--
ALTER TABLE `mo_badge_criteria_met`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_criteria_param`
--
ALTER TABLE `mo_badge_criteria_param`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_endorsement`
--
ALTER TABLE `mo_badge_endorsement`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_external`
--
ALTER TABLE `mo_badge_external`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_external_backpack`
--
ALTER TABLE `mo_badge_external_backpack`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mo_badge_external_identifier`
--
ALTER TABLE `mo_badge_external_identifier`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mo_badge_issued`
--
ALTER TABLE `mo_badge_issued`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
