-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2021 年 04 月 07 日 08:41
-- 服务器版本: 5.7.9
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `webdb`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=149 ;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add car', 7, 'add_car'),
(26, 'Can change car', 7, 'change_car'),
(27, 'Can delete car', 7, 'delete_car'),
(28, 'Can view car', 7, 'view_car'),
(29, 'Can add equipment', 8, 'add_equipment'),
(30, 'Can change equipment', 8, 'change_equipment'),
(31, 'Can delete equipment', 8, 'delete_equipment'),
(32, 'Can view equipment', 8, 'view_equipment'),
(33, 'Can add formation', 9, 'add_formation'),
(34, 'Can change formation', 9, 'change_formation'),
(35, 'Can delete formation', 9, 'delete_formation'),
(36, 'Can view formation', 9, 'view_formation'),
(37, 'Can add group', 10, 'add_group'),
(38, 'Can change group', 10, 'change_group'),
(39, 'Can delete group', 10, 'delete_group'),
(40, 'Can view group', 10, 'view_group'),
(41, 'Can add light', 11, 'add_light'),
(42, 'Can change light', 11, 'change_light'),
(43, 'Can delete light', 11, 'delete_light'),
(44, 'Can view light', 11, 'view_light'),
(45, 'Can add light list', 12, 'add_lightlist'),
(46, 'Can change light list', 12, 'change_lightlist'),
(47, 'Can delete light list', 12, 'delete_lightlist'),
(48, 'Can view light list', 12, 'view_lightlist'),
(49, 'Can add teacher', 13, 'add_teacher'),
(50, 'Can change teacher', 13, 'change_teacher'),
(51, 'Can delete teacher', 13, 'delete_teacher'),
(52, 'Can view teacher', 13, 'view_teacher'),
(53, 'Can add team evaluation', 14, 'add_teamevaluation'),
(54, 'Can change team evaluation', 14, 'change_teamevaluation'),
(55, 'Can delete team evaluation', 14, 'delete_teamevaluation'),
(56, 'Can view team evaluation', 14, 'view_teamevaluation'),
(57, 'Can add student', 15, 'add_student'),
(58, 'Can change student', 15, 'change_student'),
(59, 'Can delete student', 15, 'delete_student'),
(60, 'Can view student', 15, 'view_student'),
(61, 'Can add report', 16, 'add_report'),
(62, 'Can change report', 16, 'change_report'),
(63, 'Can delete report', 16, 'delete_report'),
(64, 'Can view report', 16, 'view_report'),
(65, 'Can add plane', 17, 'add_plane'),
(66, 'Can change plane', 17, 'change_plane'),
(67, 'Can delete plane', 17, 'delete_plane'),
(68, 'Can view plane', 17, 'view_plane'),
(69, 'Can add light scheme', 18, 'add_lightscheme'),
(70, 'Can change light scheme', 18, 'change_lightscheme'),
(71, 'Can delete light scheme', 18, 'delete_lightscheme'),
(72, 'Can view light scheme', 18, 'view_lightscheme'),
(73, 'Can add light list light', 19, 'add_lightlistlight'),
(74, 'Can change light list light', 19, 'change_lightlistlight'),
(75, 'Can delete light list light', 19, 'delete_lightlistlight'),
(76, 'Can view light list light', 19, 'view_lightlistlight'),
(77, 'Can add formation path', 20, 'add_formationpath'),
(78, 'Can change formation path', 20, 'change_formationpath'),
(79, 'Can delete formation path', 20, 'delete_formationpath'),
(80, 'Can view formation path', 20, 'view_formationpath'),
(81, 'Can add car equipment', 21, 'add_carequipment'),
(82, 'Can change car equipment', 21, 'change_carequipment'),
(83, 'Can delete car equipment', 21, 'delete_carequipment'),
(84, 'Can view car equipment', 21, 'view_carequipment'),
(85, 'Can add notice', 22, 'add_notice'),
(86, 'Can change notice', 22, 'change_notice'),
(87, 'Can delete notice', 22, 'delete_notice'),
(88, 'Can view notice', 22, 'view_notice'),
(89, 'Can add teacher new notice', 23, 'add_teachernewnotice'),
(90, 'Can change teacher new notice', 23, 'change_teachernewnotice'),
(91, 'Can delete teacher new notice', 23, 'delete_teachernewnotice'),
(92, 'Can view teacher new notice', 23, 'view_teachernewnotice'),
(93, 'Can add private letter', 24, 'add_privateletter'),
(94, 'Can change private letter', 24, 'change_privateletter'),
(95, 'Can delete private letter', 24, 'delete_privateletter'),
(96, 'Can view private letter', 24, 'view_privateletter'),
(97, 'Can add chat box is open', 25, 'add_chatboxisopen'),
(98, 'Can change chat box is open', 25, 'change_chatboxisopen'),
(99, 'Can delete chat box is open', 25, 'delete_chatboxisopen'),
(100, 'Can view chat box is open', 25, 'view_chatboxisopen'),
(101, 'Can add post', 26, 'add_post'),
(102, 'Can change post', 26, 'change_post'),
(103, 'Can delete post', 26, 'delete_post'),
(104, 'Can view post', 26, 'view_post'),
(105, 'Can add comment', 27, 'add_comment'),
(106, 'Can change comment', 27, 'change_comment'),
(107, 'Can delete comment', 27, 'delete_comment'),
(108, 'Can view comment', 27, 'view_comment'),
(109, 'Can add thumbs up', 28, 'add_thumbsup'),
(110, 'Can change thumbs up', 28, 'change_thumbsup'),
(111, 'Can delete thumbs up', 28, 'delete_thumbsup'),
(112, 'Can view thumbs up', 28, 'view_thumbsup'),
(113, 'Can add student new notice', 29, 'add_studentnewnotice'),
(114, 'Can change student new notice', 29, 'change_studentnewnotice'),
(115, 'Can delete student new notice', 29, 'delete_studentnewnotice'),
(116, 'Can view student new notice', 29, 'view_studentnewnotice'),
(117, 'Can add experiment', 30, 'add_experiment'),
(118, 'Can change experiment', 30, 'change_experiment'),
(119, 'Can delete experiment', 30, 'delete_experiment'),
(120, 'Can view experiment', 30, 'view_experiment'),
(121, 'Can add classes', 31, 'add_classes'),
(122, 'Can change classes', 31, 'change_classes'),
(123, 'Can delete classes', 31, 'delete_classes'),
(124, 'Can view classes', 31, 'view_classes'),
(125, 'Can add experiment data', 32, 'add_experimentdata'),
(126, 'Can change experiment data', 32, 'change_experimentdata'),
(127, 'Can delete experiment data', 32, 'delete_experimentdata'),
(128, 'Can view experiment data', 32, 'view_experimentdata'),
(129, 'Can add login record', 33, 'add_loginrecord'),
(130, 'Can change login record', 33, 'change_loginrecord'),
(131, 'Can delete login record', 33, 'delete_loginrecord'),
(132, 'Can view login record', 33, 'view_loginrecord'),
(133, 'Can add tl post', 34, 'add_tlpost'),
(134, 'Can change tl post', 34, 'change_tlpost'),
(135, 'Can delete tl post', 34, 'delete_tlpost'),
(136, 'Can view tl post', 34, 'view_tlpost'),
(137, 'Can add tl comment', 35, 'add_tlcomment'),
(138, 'Can change tl comment', 35, 'change_tlcomment'),
(139, 'Can delete tl comment', 35, 'delete_tlcomment'),
(140, 'Can view tl comment', 35, 'view_tlcomment'),
(141, 'Can add tl vote', 36, 'add_tlvote'),
(142, 'Can change tl vote', 36, 'change_tlvote'),
(143, 'Can delete tl vote', 36, 'delete_tlvote'),
(144, 'Can view tl vote', 36, 'view_tlvote'),
(145, 'Can add tl group vote', 37, 'add_tlgroupvote'),
(146, 'Can change tl group vote', 37, 'change_tlgroupvote'),
(147, 'Can delete tl group vote', 37, 'delete_tlgroupvote'),
(148, 'Can view tl group vote', 37, 'view_tlgroupvote');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'ex', 'car'),
(21, 'ex', 'carequipment'),
(25, 'ex', 'chatboxisopen'),
(31, 'ex', 'classes'),
(27, 'ex', 'comment'),
(8, 'ex', 'equipment'),
(30, 'ex', 'experiment'),
(32, 'ex', 'experimentdata'),
(9, 'ex', 'formation'),
(20, 'ex', 'formationpath'),
(10, 'ex', 'group'),
(11, 'ex', 'light'),
(12, 'ex', 'lightlist'),
(19, 'ex', 'lightlistlight'),
(18, 'ex', 'lightscheme'),
(33, 'ex', 'loginrecord'),
(22, 'ex', 'notice'),
(17, 'ex', 'plane'),
(26, 'ex', 'post'),
(24, 'ex', 'privateletter'),
(16, 'ex', 'report'),
(15, 'ex', 'student'),
(29, 'ex', 'studentnewnotice'),
(13, 'ex', 'teacher'),
(23, 'ex', 'teachernewnotice'),
(14, 'ex', 'teamevaluation'),
(28, 'ex', 'thumbsup'),
(35, 'ex', 'tlcomment'),
(37, 'ex', 'tlgroupvote'),
(34, 'ex', 'tlpost'),
(36, 'ex', 'tlvote'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-03 13:23:52.142892'),
(2, 'auth', '0001_initial', '2021-02-03 13:23:52.330415'),
(3, 'admin', '0001_initial', '2021-02-03 13:23:52.766173'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-03 13:23:52.870624'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-03 13:23:52.881594'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-03 13:23:52.993296'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-03 13:23:53.046360'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-03 13:23:53.103178'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-03 13:23:53.113151'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-03 13:23:53.161024'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-03 13:23:53.165013'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-03 13:23:53.176980'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-03 13:23:53.235335'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-03 13:23:53.289191'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-03 13:23:53.340055'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-03 13:23:53.353022'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-02-03 13:23:53.403884'),
(18, 'ex', '0001_initial', '2021-02-03 13:23:53.956593'),
(19, 'sessions', '0001_initial', '2021-02-03 13:23:54.454149'),
(20, 'ex', '0002_notice', '2021-02-11 05:53:27.996182'),
(21, 'ex', '0003_teachernewnotice', '2021-02-11 17:35:18.370513'),
(22, 'ex', '0004_auto_20210211_1738', '2021-02-11 17:38:33.428895'),
(23, 'ex', '0005_privateletter', '2021-02-12 14:25:40.516506'),
(24, 'ex', '0006_auto_20210212_1447', '2021-02-12 14:47:38.424589'),
(25, 'ex', '0007_post', '2021-02-19 19:24:59.023997'),
(26, 'ex', '0008_post_title', '2021-02-19 19:51:21.536151'),
(27, 'ex', '0009_comment', '2021-02-20 14:17:39.775653'),
(28, 'ex', '0010_thumbsup', '2021-02-20 16:22:20.686127'),
(29, 'ex', '0011_auto_20210227_2040', '2021-02-27 20:40:14.172150'),
(30, 'ex', '0012_auto_20210227_2040', '2021-02-27 20:40:59.042094'),
(31, 'ex', '0013_experiment', '2021-03-07 18:18:59.824353'),
(32, 'ex', '0014_auto_20210308_1511', '2021-03-08 15:11:54.757093'),
(33, 'ex', '0015_classes', '2021-03-08 17:43:25.345859'),
(34, 'ex', '0016_experimentdata', '2021-03-27 21:22:12.662507'),
(35, 'ex', '0017_loginrecord', '2021-03-30 15:15:24.486556'),
(36, 'ex', '0018_tlpost', '2021-03-31 17:39:11.874611'),
(37, 'ex', '0019_tlcomment', '2021-03-31 20:06:37.737889'),
(38, 'ex', '0020_tlgroupvote_tlvote', '2021-04-01 15:39:38.100944'),
(39, 'ex', '0021_auto_20210405_1926', '2021-04-05 19:26:54.521591'),
(40, 'ex', '0022_experimentdata_extime', '2021-04-05 19:38:34.318656'),
(41, 'ex', '0023_experimentdata_report', '2021-04-05 20:10:49.583500'),
(42, 'ex', '0024_auto_20210405_2105', '2021-04-05 21:05:28.095429');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `ex_car`
--

CREATE TABLE IF NOT EXISTS `ex_car` (
  `license_plate_number` varchar(20) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`license_plate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `ex_carequipment`
--

CREATE TABLE IF NOT EXISTS `ex_carequipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `car_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `equipment_id` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_carequipment_car_id_79aee994_fk_ex_car_license_plate_number` (`car_id`),
  KEY `ex_carequipment_equipment_id_9e928cfc_fk_ex_equipment_id` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ex_chatboxisopen`
--

CREATE TABLE IF NOT EXISTS `ex_chatboxisopen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isOpen` int(11) NOT NULL,
  `receiverStu_id` int(11) DEFAULT NULL,
  `receiverTea_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `senderStu_id` int(11) DEFAULT NULL,
  `senderTea_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_chatboxisopen_receiverStu_id_80219721_fk_ex_student_id` (`receiverStu_id`),
  KEY `ex_chatboxisopen_receiverTea_id_1f52cce3_fk_ex_teacher_id` (`receiverTea_id`),
  KEY `ex_chatboxisopen_senderStu_id_4ad9eef4_fk_ex_student_id` (`senderStu_id`),
  KEY `ex_chatboxisopen_senderTea_id_3038f76a_fk_ex_teacher_id` (`senderTea_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `ex_chatboxisopen`
--

INSERT INTO `ex_chatboxisopen` (`id`, `isOpen`, `receiverStu_id`, `receiverTea_id`, `senderStu_id`, `senderTea_id`) VALUES
(1, 1, NULL, 'admin1', NULL, 'admin2'),
(2, 1, NULL, 'admin1', NULL, 'admin3'),
(25, 1, NULL, 'admin1', NULL, 'admin5'),
(26, 1, NULL, 'admin2', NULL, 'admin1'),
(27, 1, NULL, 'admin5', NULL, 'admin1'),
(28, 1, 10, NULL, NULL, 'admin1'),
(30, 1, NULL, 'admin3', NULL, 'admin1'),
(32, 1, NULL, 'admin1', 10, NULL),
(34, 1, 4, NULL, 10, NULL),
(35, 1, 10, NULL, 4, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ex_classes`
--

CREATE TABLE IF NOT EXISTS `ex_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(21) COLLATE utf8_bin DEFAULT NULL,
  `college` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `ex_classes`
--

INSERT INTO `ex_classes` (`id`, `name`, `college`) VALUES
(1, '计算机171', '杭州国际服务工程学院'),
(2, '计算机172', '杭州国际服务工程学院'),
(4, '计算机173', '杭州国际服务工程学院'),
(5, '计算机174', '杭州国际服务工程学院'),
(6, '计算机175', '杭州国际服务工程学院'),
(7, '计算机176', '杭州国际服务工程学院'),
(8, '计算机177', '杭州国际服务工程学院'),
(9, '计算机178', '杭州国际服务工程学院'),
(10, '计算机179', '杭州国际服务工程学院'),
(12, '计算机181', '杭州国际服务工程学院');

-- --------------------------------------------------------

--
-- 表的结构 `ex_comment`
--

CREATE TABLE IF NOT EXISTS `ex_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(511) COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `userStu_id` int(11) DEFAULT NULL,
  `userTea_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_comment_post_id_de47dfbe_fk_ex_post_id` (`post_id`),
  KEY `ex_comment_userStu_id_fec3934a_fk_ex_student_id` (`userStu_id`),
  KEY `ex_comment_userTea_id_26645a8a_fk_ex_teacher_id` (`userTea_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=137 ;

--
-- 转存表中的数据 `ex_comment`
--

INSERT INTO `ex_comment` (`id`, `message`, `time`, `post_id`, `userStu_id`, `userTea_id`) VALUES
(81, '111', '2021-02-20 21:13:01.523605', 76, NULL, 'admin1'),
(82, '111', '2021-02-20 21:13:38.630213', 74, NULL, 'admin1'),
(83, '222', '2021-02-20 21:13:46.525786', 74, NULL, 'admin1'),
(84, '555', '2021-02-20 21:14:04.633791', 67, NULL, 'admin1'),
(85, '444', '2021-02-20 21:14:10.710876', 76, NULL, 'admin1'),
(86, '555', '2021-02-20 21:14:14.949592', 71, NULL, 'admin1'),
(87, '555', '2021-02-20 21:14:18.682340', 72, NULL, 'admin1'),
(88, '555', '2021-02-20 21:14:22.067990', 73, NULL, 'admin1'),
(89, '555', '2021-02-20 21:14:26.294558', 74, NULL, 'admin1'),
(90, '555', '2021-02-20 21:14:31.483137', 74, NULL, 'admin1'),
(91, '4124', '2021-02-20 21:28:40.088985', 67, NULL, 'admin1'),
(92, 'ddd', '2021-02-20 21:48:57.733670', 64, NULL, 'admin1'),
(93, '111', '2021-02-20 21:50:31.097136', 71, NULL, 'admin1'),
(98, '1', '2021-02-24 14:54:57.167648', 71, NULL, 'admin1'),
(99, 'dfd', '2021-02-24 15:02:18.367512', 74, NULL, 'admin1'),
(100, 'q', '2021-02-24 15:02:21.584303', 74, NULL, 'admin1'),
(104, '333', '2021-02-27 15:14:30.025425', 71, NULL, 'admin2'),
(106, '3333', '2021-02-27 15:18:28.379874', 83, NULL, 'admin3'),
(120, 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-02-27 15:58:01.550579', 80, NULL, 'admin1'),
(123, 'fgfg', '2021-02-28 13:21:09.394391', 77, 10, NULL),
(125, 'dfsdf', '2021-02-28 13:47:12.586305', 74, 10, NULL),
(127, 'xcvxcvxcv', '2021-02-28 13:47:50.530789', 85, 4, NULL),
(130, 'fff', '2021-02-28 14:01:58.466762', 85, NULL, 'admin1'),
(133, '9', '2021-02-28 14:08:02.435579', 93, 4, NULL),
(134, '*', '2021-02-28 14:08:05.350477', 93, 4, NULL),
(135, '7', '2021-02-28 14:08:08.258474', 93, 4, NULL),
(136, 'asedfsdf', '2021-03-03 21:27:09.209596', 94, 10, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ex_equipment`
--

CREATE TABLE IF NOT EXISTS `ex_equipment` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
  `equipmentType` varchar(1) COLLATE utf8_bin NOT NULL,
  `place` varchar(255) COLLATE utf8_bin NOT NULL,
  `direction` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `ex_experiment`
--

CREATE TABLE IF NOT EXISTS `ex_experiment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(21) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `introduction` varchar(2047) COLLATE utf8_bin DEFAULT NULL,
  `introductionUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `ex_experiment`
--

INSERT INTO `ex_experiment` (`id`, `name`, `url`, `introduction`, `introductionUrl`) VALUES
(1, '无人机集群仿真实验', 'https://www.baidu.com/', '    人工智能已上升为我国的国家战略，《新一代人工智能发展规划》提出，到2030年，中国将成为世界主要人工智能创新中心。目前，人工智能已经成为全社会关注的热点，并逐步融合到传统行业的各个领域，催生出新的产品、产业和业态，进行人工智能通识教育已经成为国家经济建设和人才培养的迫切需要。杭州师范大学作为全国首批深化创新创业教育改革示范高校，服务创新创业需求，培养人工智能通识人才是学校义不容辞的责任和使命。\n\n    《机器人与人工智能》是面向全校各个专业学生的通识课程，它围绕人工智能的基本思想、基本理论、基本方法和应用展开，融合了人工智能和机器人技术的前沿知识，帮助学生提高参与人工智能项目的综合能力，为后续发展打下基础。课堂教学采用翻转课堂、过程性评价等方式提高学习的能动性和互动性，引导学生探索人工智能前沿知识。实验教学以项目为导向，采用团队合作、团队竞赛、主题报告等形式。\n\n    本课程的学生有来自计算机、电子、控制、数学、物理等理工科专业，也有来自人文、教育、艺术等文科专业。为帮助不同学科背景的学生了解抽象的算法和模型，我们将人工智能技术融入应用系统，在动手实验中加深对方法、步骤和原理的理解。不同专业学生组队参与人形机器人、智能小车、无人机等智能系统项目开发，并承担不同的角色，从而理解不同专业知识在人工智能项目中的作用，实现多学科的融合和学生的个性化发展。\n\n    多智能体协同是分布式人工智能的一个重要分支，也是本课程的一项重要教学内容，主要包括多智能体规划、协商、交互机制等理论，在军事、交通、医疗等众多领域有广泛的应用前景。无人机集群是多智能体协同？的一个重要载体和测试场景。最近几年，无人机集群的商业表演吸引了大量的目光，也激发学生的学习兴趣。为帮助学生更好的理解多智能体路线规划技术，本课程引入无人机集群编队实验。学生通过组队设计无人机集群编队表演，探索无人机飞行路径优化方法，体验多智能体协同开发流程。\n\n    目前无人机实验因场地、人数和设备等原因无法开设实体实验课程，特别是集群编队实验代价巨大，还涉及到飞行器空域限制、实验安全、耗时、人员管理等问题。传统教学中，这部分内容以理论讲解为主，效率低、体验差，难以激发学生学习能动性。\n\n    本项目运用虚拟仿真手段，引导学生参与无人机集群表演设计全过程，通过编队设计、路径优化、灯光规划等过程，帮助学生体验人工智能项目设计流程和合作方式，掌握无人机集群飞行特点，理解多智能体协同，探索降低碰撞概率的方法，激发学生学习兴趣，提高实践创新能力。', 'http://simulation.hsueh.club/'),
(2, '无人机集群编队三维模拟实验', 'https://www.baidu.com/', NULL, NULL),
(3, '套牌车辆识别仿真模拟实验', 'https://www.baidu.com/', NULL, NULL),
(20, '图灵测试论坛', 'http://localhost:8081/#/tlForum', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ex_experimentdata`
--

CREATE TABLE IF NOT EXISTS `ex_experimentdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exPurpose` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `systemScore` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `experiment_id` int(11) DEFAULT NULL,
  `group_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `exExperience` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `exResult` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `exSteps` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `exTime` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `report_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_experimentdata_experiment_id_d45a88bf_fk_ex_experiment_id` (`experiment_id`),
  KEY `ex_experimentdata_group_id_8c3aeff7_fk_ex_group_id` (`group_id`),
  KEY `ex_experimentdata_report_id_ca406505_fk_ex_report_id` (`report_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `ex_experimentdata`
--

INSERT INTO `ex_experimentdata` (`id`, `exPurpose`, `systemScore`, `time`, `experiment_id`, `group_id`, `exExperience`, `exResult`, `exSteps`, `exTime`, `report_id`) VALUES
(29, '根据某一用户的评论，判断这个用户是人还是AI。', 100, '2021-04-05 20:50:59.240042', 20, '1', 'www', '在本次实验中，有1人投票给了‘人’，有1人投票给了‘AI’，正确答案为‘AI’，本次投票的正确率为50%，本团队投票给了‘AI’，本团队推测成功。\n', '1.发起或参与一次投票。\n2.根据已知信息，推测评论者的身份，并投票。\na.该实验步骤考察点：考察用户能不能根据帖子内容和用户的评论内容，推测发表该评论的用户是‘人’还是‘AI’。\n本团队本次实验的投票信息如下：\n帖子标题：唐诗\n帖子内容：红豆生南国的下一句是什么？\n评论内容：春来发几枝\nb.该实验步骤开始时间：2021-04-02 21:03:57，结束时间：2021-04-02 22:03:57，实验用时：60分钟，合理用时：60分钟以内；\nc.该实验步骤次数：1次；\nd.该实验步骤评价：有1人投票给了‘人’，有1人投票给了‘AI’，本团队投票给了‘AI’，正确答案为‘AI’，本团队推测成功；\ne.该实验步骤满分：100，本团队得分：100。', '2021-04-02', '1_20');

-- --------------------------------------------------------

--
-- 表的结构 `ex_formation`
--

CREATE TABLE IF NOT EXISTS `ex_formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `plane_cnt` int(11) NOT NULL,
  `owner_id` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_formation_owner_id_c45280cc_fk_ex_group_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ex_formationpath`
--

CREATE TABLE IF NOT EXISTS `ex_formationpath` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `time_tot` int(11) NOT NULL,
  `direction` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `speed` double NOT NULL,
  `end_formation_id` int(11) DEFAULT NULL,
  `start_formation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_formationpath_end_formation_id_268d1358_fk_ex_formation_id` (`end_formation_id`),
  KEY `ex_formationpath_start_formation_id_c7b7956f_fk_ex_formation_id` (`start_formation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ex_group`
--

CREATE TABLE IF NOT EXISTS `ex_group` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `ex_group`
--

INSERT INTO `ex_group` (`id`, `name`) VALUES
('1', '无人机爱好者团队'),
('2', 'group2'),
('3', 'group3'),
('888', '888'),
('999', '999'),
('ai', 'ai'),
('group10', 'group10'),
('group4', 'group4'),
('group5', 'group5'),
('group6', 'group6'),
('group8', 'group8'),
('哈哈哈', 'group4'),
('啊啊啊', '啊啊啊');

-- --------------------------------------------------------

--
-- 表的结构 `ex_light`
--

CREATE TABLE IF NOT EXISTS `ex_light` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `RGB` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ex_lightlist`
--

CREATE TABLE IF NOT EXISTS `ex_lightlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL,
  `lightScheme_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_lightlist_lightScheme_id_0496cddc_fk_ex_lightscheme_id` (`lightScheme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ex_lightlistlight`
--

CREATE TABLE IF NOT EXISTS `ex_lightlistlight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `light_id` int(11) NOT NULL,
  `lightList_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_lightlistlight_light_id_e238bfec_fk_ex_light_id` (`light_id`),
  KEY `ex_lightlistlight_lightList_id_4cce56c6_fk_ex_lightlist_id` (`lightList_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ex_lightscheme`
--

CREATE TABLE IF NOT EXISTS `ex_lightscheme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `formation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_lightscheme_formation_id_85d367fa_fk_ex_formation_id` (`formation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ex_loginrecord`
--

CREATE TABLE IF NOT EXISTS `ex_loginrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_loginrecord_student_id_016895d7_fk_ex_student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `ex_loginrecord`
--

INSERT INTO `ex_loginrecord` (`id`, `time`, `student_id`) VALUES
(1, '2021-03-30 15:25:58.872396', 10),
(2, '2021-03-30 16:31:11.255441', 10),
(3, '2021-03-30 16:31:19.074365', 10),
(4, '2021-03-30 16:31:31.165756', 10),
(5, '2021-03-30 16:31:43.935094', 10),
(6, '2021-03-30 15:25:58.872396', 4),
(8, '2021-03-27 15:25:58.872396', 4),
(9, '2021-03-30 16:46:43.021334', 10),
(10, '2021-03-30 17:41:17.210098', 10),
(11, '2021-03-30 20:56:52.118702', 10),
(12, '2021-03-31 14:13:47.435394', 10),
(13, '2021-03-31 14:14:16.479118', 10),
(14, '2021-03-31 15:06:17.890096', 10),
(15, '2021-03-31 17:12:09.435301', 10),
(16, '2021-03-31 19:13:36.762532', 10),
(17, '2021-03-31 21:20:33.517862', 10),
(18, '2021-04-01 14:46:38.123020', 10),
(19, '2021-04-01 16:47:58.036345', 10),
(20, '2021-04-01 18:49:15.822449', 10),
(21, '2021-04-01 20:49:57.346150', 10),
(22, '2021-04-01 20:50:08.850728', 10),
(23, '2021-04-01 20:50:19.315486', 10),
(24, '2021-04-02 14:51:48.825198', 10),
(25, '2021-04-02 19:44:36.296632', 10),
(26, '2021-04-02 21:25:55.844084', 10),
(27, '2021-04-05 13:55:49.233495', 10),
(28, '2021-04-05 14:18:50.288613', 5),
(29, '2021-04-05 16:49:35.270535', 10),
(30, '2021-04-05 19:15:45.420271', 10),
(31, '2021-04-05 21:29:00.122347', 10),
(32, '2021-04-07 07:51:00.947618', 10);

-- --------------------------------------------------------

--
-- 表的结构 `ex_notice`
--

CREATE TABLE IF NOT EXISTS `ex_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(31) COLLATE utf8_bin NOT NULL,
  `message` varchar(511) COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `top` int(11) NOT NULL,
  `user_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_notice_user_id_7847b77e_fk_ex_teacher_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `ex_notice`
--

INSERT INTO `ex_notice` (`id`, `title`, `message`, `time`, `top`, `user_id`) VALUES
(23, 'Announcement 1', 'The new year is coming, and the streets are decorated with lights. The lovely girl in her new bathrobe walked briskly on the way to the Lantern Festival. The lights flickered, and the halo extended to the starry sky.', '2021-02-13 19:29:37.175926', 0, 'admin1'),
(24, 'Announcement2', '1. Out of print limit! Kitchen door you beans, kitchen door tanzhilang on stage!\n\n"Yin Yang master" × TV animation "ghost blade" linkage open! Among them, zaomen Maidou and zaomen tanzhilang will land in Ping''an city as the role of this linkage!\n\n\n\n2. New Year''s fetter · ghost out Chuxin summoning activity!\n\nActivity time: after maintenance on February 7-23:59 on February 20\n\nProbability of SP / SSR', '2021-02-13 19:33:40.897057', 0, 'admin1'),
(25, 'Accompanied by peace', 'A hundred demons carry blessings and accompany with peace.', '2021-02-13 19:36:12.335114', 1, 'admin1'),
(26, 'Sweeping the court', 'Although the name sounds not good, but dirty taste is actually a love clean goblin. Even if he is always chased away as a dirty mouse, the place he passes will still be clean and tidy, and will take on a new look. Because sweeping and cleaning is his lifelong career!', '2021-02-13 19:39:48.543727', 1, 'admin1'),
(27, 'notice', '123', '2021-02-27 20:54:05.927078', 0, 'admin2'),
(28, 'g', 'gg', '2021-02-28 14:21:42.967905', 0, 'admin1'),
(29, 'f', 'ffff', '2021-02-28 14:21:48.571228', 0, 'admin1');

-- --------------------------------------------------------

--
-- 表的结构 `ex_plane`
--

CREATE TABLE IF NOT EXISTS `ex_plane` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL,
  `formation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_plane_formation_id_19cec116_fk_ex_formation_id` (`formation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ex_post`
--

CREATE TABLE IF NOT EXISTS `ex_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(511) COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `userStu_id` int(11) DEFAULT NULL,
  `userTea_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(31) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_post_userStu_id_c6afb6ed_fk_ex_student_id` (`userStu_id`),
  KEY `ex_post_userTea_id_9705c2a6_fk_ex_teacher_id` (`userTea_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=95 ;

--
-- 转存表中的数据 `ex_post`
--

INSERT INTO `ex_post` (`id`, `message`, `time`, `userStu_id`, `userTea_id`, `title`) VALUES
(64, 'dd', '2021-02-20 21:09:41.778583', NULL, 'admin1', 'd'),
(66, 'dddd', '2021-02-20 21:09:46.571985', NULL, 'admin1', 'd'),
(67, '1', '2021-02-20 21:09:49.835773', NULL, 'admin1', '1'),
(71, '11', '2021-02-20 21:10:02.038865', NULL, 'admin1', '11'),
(72, '22', '2021-02-20 21:10:04.635527', NULL, 'admin1', '2'),
(73, '333', '2021-02-20 21:10:09.284964', NULL, 'admin1', '33'),
(74, '444', '2021-02-20 21:10:11.731747', NULL, 'admin1', '44'),
(76, '56363', '2021-02-20 21:12:49.495844', 7, NULL, 'a blog'),
(77, '1', '2021-02-20 21:36:53.238495', NULL, 'admin1', '1'),
(78, '1', '2021-02-20 21:36:55.064781', NULL, 'admin1', '1'),
(79, '1', '2021-02-20 21:36:57.533330', NULL, 'admin1', '11'),
(80, '1111', '2021-02-20 21:36:59.682801', NULL, 'admin1', '1'),
(81, '11', '2021-02-20 21:37:01.951931', NULL, 'admin1', '1'),
(83, 'qqq', '2021-02-27 14:49:43.725176', NULL, 'admin2', 'q'),
(85, 'fff', '2021-02-28 13:34:39.346586', 10, NULL, 'fgf'),
(93, 'vdfvfd', '2021-02-28 14:07:44.682242', 10, NULL, 'df'),
(94, 'h', '2021-02-28 14:14:28.438677', 10, NULL, 'hg');

-- --------------------------------------------------------

--
-- 表的结构 `ex_privateletter`
--

CREATE TABLE IF NOT EXISTS `ex_privateletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(511) COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `new` int(11) NOT NULL,
  `receiverStu_id` int(11) DEFAULT NULL,
  `receiverTea_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `senderStu_id` int(11) DEFAULT NULL,
  `senderTea_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_privateletter_receiverStu_id_001084e7_fk_ex_student_id` (`receiverStu_id`),
  KEY `ex_privateletter_receiverTea_id_894ddde1_fk_ex_teacher_id` (`receiverTea_id`),
  KEY `ex_privateletter_senderStu_id_91b19fb5_fk_ex_student_id` (`senderStu_id`),
  KEY `ex_privateletter_senderTea_id_a3ea22a3_fk_ex_teacher_id` (`senderTea_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `ex_privateletter`
--

INSERT INTO `ex_privateletter` (`id`, `message`, `time`, `new`, `receiverStu_id`, `receiverTea_id`, `senderStu_id`, `senderTea_id`) VALUES
(1, '999', '2021-02-12 16:04:55.266932', 1, NULL, 'admin2', NULL, 'admin1'),
(11, '111', '2021-02-12 20:01:30.754256', 1, NULL, 'admin3', NULL, 'admin1'),
(12, '555', '2021-02-12 20:24:27.425194', 1, NULL, 'admin1', NULL, 'admin2'),
(13, 'ccc', '2021-02-12 20:24:53.808081', 1, NULL, 'admin2', NULL, 'admin1'),
(14, '88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888', '2021-02-12 20:59:39.302725', 1, NULL, 'admin2', NULL, 'admin1'),
(15, '444', '2021-02-12 21:02:16.574390', 1, NULL, 'admin2', NULL, 'admin1'),
(16, '545', '2021-02-12 21:15:44.138437', 1, NULL, 'admin2', NULL, 'admin1'),
(17, 'admin3', '2021-02-12 21:16:09.067063', 1, NULL, 'admin1', NULL, 'admin3'),
(18, 'admin', '2021-02-12 21:16:27.468911', 1, NULL, 'admin3', NULL, 'admin1'),
(19, '1', '2021-02-12 21:16:35.426796', 1, NULL, 'admin3', NULL, 'admin1'),
(20, '1', '2021-02-12 21:17:15.475980', 1, NULL, 'admin1', NULL, 'admin3'),
(21, '195', '2021-02-12 21:20:15.285679', 1, NULL, 'admin3', NULL, 'admin1'),
(23, 'hello', '2021-02-12 21:20:25.332640', 1, NULL, 'admin2', NULL, 'admin1'),
(24, '999*', '2021-02-13 18:45:25.427013', 1, NULL, 'admin2', NULL, 'admin1'),
(25, '565', '2021-02-13 22:07:16.361282', 1, NULL, 'admin2', NULL, 'admin1'),
(26, '9', '2021-02-13 22:07:22.647400', 1, NULL, 'admin2', NULL, 'admin1'),
(27, '65465456465545444', '2021-02-13 22:07:26.003929', 1, NULL, 'admin2', NULL, 'admin1'),
(28, '888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888', '2021-02-13 22:09:46.716191', 1, NULL, 'admin2', NULL, 'admin1'),
(29, '88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888', '2021-02-13 22:10:09.900141', 1, NULL, 'admin1', NULL, 'admin2'),
(30, 'ddd', '2021-02-13 22:10:12.187114', 1, NULL, 'admin1', NULL, 'admin2'),
(31, '9', '2021-02-13 22:10:19.331226', 1, NULL, 'admin1', NULL, 'admin2'),
(32, '999', '2021-02-13 22:53:38.520038', 1, NULL, 'admin2', NULL, 'admin1'),
(34, '99', '2021-02-13 22:55:57.321746', 1, NULL, 'admin3', NULL, 'admin1'),
(36, '99', '2021-02-13 23:04:28.078563', 1, NULL, 'admin3', NULL, 'admin1'),
(37, '655', '2021-02-13 23:04:35.599654', 1, NULL, 'admin2', NULL, 'admin1'),
(40, '555', '2021-02-14 16:42:54.235832', 1, NULL, 'admin3', NULL, 'admin1'),
(42, '！！！', '2021-02-14 16:43:01.186465', 1, NULL, 'admin2', NULL, 'admin1'),
(43, '-', '2021-02-14 17:11:42.702660', 1, NULL, 'admin3', NULL, 'admin1'),
(44, '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '2021-02-14 19:21:47.033096', 1, NULL, 'admin3', NULL, 'admin1'),
(45, '999', '2021-02-14 20:29:38.776658', 1, 10, NULL, NULL, 'admin1'),
(46, '555', '2021-02-14 20:45:22.393625', 1, 10, NULL, NULL, 'admin1'),
(47, '888', '2021-02-14 20:49:28.774547', 1, NULL, 'admin5', NULL, 'admin1'),
(48, '555', '2021-02-14 20:50:51.256213', 1, NULL, 'admin5', NULL, 'admin1'),
(49, '555', '2021-02-14 20:50:58.769776', 1, NULL, 'admin5', NULL, 'admin1'),
(50, '555', '2021-02-14 20:50:59.271248', 1, NULL, 'admin5', NULL, 'admin1'),
(51, '555', '2021-02-14 20:52:11.576564', 1, NULL, 'admin5', NULL, 'admin1'),
(52, '888', '2021-02-14 20:52:16.261675', 1, NULL, 'admin5', NULL, 'admin1'),
(53, 'hello', '2021-02-14 20:52:19.198201', 1, NULL, 'admin5', NULL, 'admin1'),
(54, 'sfsdgsdfgdf\n', '2021-02-14 20:55:08.160971', 1, NULL, 'admin5', NULL, 'admin1'),
(55, 'hello', '2021-02-14 20:55:11.629439', 1, NULL, 'admin5', NULL, 'admin1'),
(56, 'hi', '2021-02-14 20:55:14.047561', 1, NULL, 'admin5', NULL, 'admin1'),
(57, 'hhh', '2021-02-14 20:55:17.496378', 1, NULL, 'admin5', NULL, 'admin1'),
(58, '哈哈哈', '2021-02-14 20:55:19.935927', 1, NULL, 'admin5', NULL, 'admin1'),
(59, '怎么了', '2021-02-14 20:56:16.982557', 1, NULL, 'admin1', NULL, 'admin5'),
(60, '？', '2021-02-14 20:56:18.966627', 1, NULL, 'admin1', NULL, 'admin5'),
(61, '哈哈哈', '2021-02-14 20:56:44.911610', 1, NULL, 'admin5', NULL, 'admin1'),
(62, '555', '2021-02-17 15:14:40.484158', 1, NULL, 'admin2', NULL, 'admin1'),
(63, '1', '2021-02-17 15:15:01.383343', 1, 10, NULL, NULL, 'admin1'),
(64, '啊', '2021-02-19 21:57:29.677262', 1, 10, NULL, NULL, 'admin1'),
(65, '啊', '2021-02-19 21:57:33.020253', 1, 10, NULL, NULL, 'admin1'),
(66, 'aa', '2021-02-19 21:57:35.284440', 1, NULL, 'admin3', NULL, 'admin1'),
(67, 'aa', '2021-02-19 21:57:38.934386', 1, NULL, 'admin2', NULL, 'admin1'),
(68, '啊这', '2021-02-19 21:57:44.480228', 1, NULL, 'admin2', NULL, 'admin1'),
(69, '111', '2021-02-27 21:07:23.287016', 1, NULL, 'admin1', 10, NULL),
(70, 'ddd', '2021-02-27 21:07:42.402246', 1, NULL, 'admin1', 10, NULL),
(71, '999p', '2021-02-27 21:26:57.080938', 1, 4, NULL, 10, NULL),
(72, 'sdcfsdf', '2021-02-28 13:48:45.086527', 1, 10, NULL, 4, NULL),
(73, '456456456156', '2021-03-09 23:03:47.797562', 1, NULL, 'admin1', 10, NULL),
(74, 'qqq', '2021-03-10 01:08:36.334977', 1, NULL, 'admin2', NULL, 'admin1'),
(75, '8', '2021-03-10 01:30:42.924178', 1, 10, NULL, NULL, 'admin1');

-- --------------------------------------------------------

--
-- 表的结构 `ex_report`
--

CREATE TABLE IF NOT EXISTS `ex_report` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
  `system_score` int(11) NOT NULL,
  `teacher_score` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `owner_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `experiment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_report_owner_id_35c3b01d_fk_ex_group_id` (`owner_id`),
  KEY `ex_report_experiment_id_3a7f99cc_fk_ex_experiment_id` (`experiment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `ex_report`
--

INSERT INTO `ex_report` (`id`, `system_score`, `teacher_score`, `url`, `create_time`, `owner_id`, `experiment_id`) VALUES
('1', 80, 90, 'report1.docx', '2020-01-09 00:00:00.000000', '1', 1),
('1_20', 100, -1, 'ex_20_1.docx', '2021-04-05 20:50:59.237050', '1', 20),
('2', 66, -1, 'report2.docx', '2020-01-15 00:00:00.000000', '1', 2),
('5', 66, -1, 'report5.docx', '2020-01-15 00:00:00.000000', '2', 3),
('6', 80, 67, 'report6.docx', '2020-01-01 00:00:00.000000', '3', 1),
('7', 66, 87, 'report7.docx', '2020-01-15 00:00:00.000000', '3', 3),
('8', 87, -1, '2_group2_8.docx', '2021-04-05 14:20:09.238847', '2', 2);

-- --------------------------------------------------------

--
-- 表的结构 `ex_student`
--

CREATE TABLE IF NOT EXISTS `ex_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_num` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `college` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `class_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `role` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `group_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_student_group_id_3500b862_fk_ex_group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=99 ;

--
-- 转存表中的数据 `ex_student`
--

INSERT INTO `ex_student` (`id`, `stu_num`, `password`, `name`, `college`, `class_name`, `phone`, `role`, `group_id`) VALUES
(1, '2020003', 'pbkdf2_sha256$216000$E39NETUomv7d$C1qAfTErC5n2StbNu3BmykSuLWxS/NuREjGAsiqpMmM=', '张三', '杭州国际服务工程学院', '计算机173', '13569855893', '787', '2'),
(2, '2020005', 'pbkdf2_sha256$216000$9G0yR2cePLsc$Na35yB2rNvStrDkXnuKmzpnAOy+QZgASawwxiNRMlAg=', '李四', '杭州国际服务工程学院', '计算机177', '13566656879', '项目统筹', '1'),
(4, '2020011', 'pbkdf2_sha256$216000$Wvv8TGgK9QGl$rjT3fjmtPgwfQmsbiHmfZUzk0hj+uqRyHzbi8c0Aaog=', '张五一', '杭州国际服务工程学院', '计算机171', '13569859993', '算法研究', '3'),
(5, '2020012', 'pbkdf2_sha256$216000$ZP0UlRUiIN1T$TVVvqrTjHYdgs03rVhcRrwWjJPOIFB3OTA5vv1AEk2k=', '王五', '杭州国际服务工程学院', '计算机174', '13999856874', '算法研究', '2'),
(6, '2020015', 'pbkdf2_sha256$216000$0HZ2ic7GTUZC$jeDcR+QiLFpV0RVl/PW9Y7m9Yyp4F3+82OUXxl0vsuI=', '张三三', '杭州国际服务工程学院', '计算机174', '17855555555', '划水', '1'),
(7, '2020020', 'pbkdf2_sha256$216000$bupzn7nJFT6H$DvP/M877F5IDay7JXyEbj8xmyIJaGp7iS8835P3Gv5o=', '张三去', '杭州国际服务工程学院', '计算机172', '13569856879', '项目统筹', '3'),
(8, '55555', 'pbkdf2_sha256$216000$kdBVOE0izCQB$Xirv2B1xU1BnzpiEf2jJewcM6IDBkjH5kKqzYDca+18=', '张四', '杭州国际服务工程学院', '计算机175', '13569856879', '算法研究', '1'),
(9, '5555555', 'pbkdf2_sha256$216000$DbmX9cFJkjB3$yLzjpsRQnyly1PEU9rh+U8+SLSy+a8SqX20YQACKyao=', '张四', '杭州国际服务工程学院', '计算机175', '13569856879', '算法研究', '1'),
(10, 'admin', 'pbkdf2_sha256$216000$5Q7N6ipVzkyX$KimG7n8JJNh6lHqAcMsBakfG9ft/RrcqgKc7CbhqvPY=', 'admin001', '杭州国际服务工程学院', '计算机174', '15963258745q', NULL, '1'),
(11, 't1', 'pbkdf2_sha256$216000$mY69peIvLKO4$3ps+molmGf8pSFZXI57kr3lC4f+adqTftEmYZJ7nXEU=', '张四', '杭州国际服务工程学院', '计算机175', '13569856879', '算法研究', '1'),
(12, 't3', 'pbkdf2_sha256$216000$gaOPugHq2Dzf$Cj3+6na8+qW8J50JcQevYhvX7v//tEjdAsHBm5P0pSE=', '李四', '杭州国际服务工程学院', '计算机177', '13566656879', '666', '1'),
(13, 'test1', 'pbkdf2_sha256$216000$kaDW5mJ5b9EB$ds2nz3PYIF004v2OAZ7hTkI1SxoDSnncf+L5tfi2cgk=', 'test_name', '杭州国际服务工程学院', '计算机177', '17866666666', '摸鱼', '3'),
(14, 'test2', 'pbkdf2_sha256$216000$38FVNZlYxUJC$cVF1V9ZENgxEj0/whUDtJ2nI52WB41N5v3x61hTZLAo=', 'test2_name', '杭州国际服务工程学院', '计算机179', '13589657444', '摸鱼', '1'),
(15, 'TEST_001', 'pbkdf2_sha256$216000$vqg2kCC3Hdxo$6L7eoDiCgYwNwzlvJ020MOZgO/wmlMm1qaRuhnzlhxM=', 'TEST_001', '杭州国际服务工程学院', '计算机174', '', 'mmm', '3'),
(16, 'TEST_002', 'pbkdf2_sha256$216000$OQQHRYaZnZoc$GtrZRcd2EJWmMKrZhEVxm6ETWOU8U5yGaXzTE64sZM0=', 'TEST_002', '杭州国际服务工程学院', '计算机174', '99999999999', '666', '3'),
(17, '2020040', 'pbkdf2_sha256$216000$LsauMrsSWG9q$eQGNxzZG0X3eUHmNxi6viqacGRy1J7Qs8+9aazhpHwY=', '王小二', '杭州国际服务工程学院', '计算机174', '125896585479', '9', '1'),
(18, 'tttttt', 'pbkdf2_sha256$216000$7wLute6TGHAf$bA8tCPOFibrj7h3JFxOTYxJWF4oBpzKdFyEtvKljNEw=', 'tttttt', '杭州国际服务工程学院', '计算机174', '', NULL, NULL),
(19, '2020054', 'pbkdf2_sha256$216000$YSpviDkROXkP$8fgGRp4XVR+zlrJOvbgCEzHRxbVDQDYeiqFOIso4lgM=', '张锋', '杭州国际服务工程学院', '计算机171', '15965896574', '', '3'),
(20, '2020088', 'pbkdf2_sha256$216000$PqJo6u4mBrKH$l+lgz0u2bu7PbGAPDq6xnNBprGAbt9M1jNMYPK/0maI=', '王启', '杭州国际服务工程学院', '计算机177', '12121212121', '项目统筹', 'group10'),
(30, '7777777', 'pbkdf2_sha256$216000$NGid0RKBqLEs$CMrkMPecGIpTYj/Cn8guH/xVZV1p1hsHzaKVHsYa/vo=', '张三', '信息科学与工程学院', '计算机181', '13569855893', '9', '2'),
(31, '8888888', 'pbkdf2_sha256$216000$ZfsaEtmBQdTo$lY88Ov8MWk5/gagAyH8C6gxxRPn9n134zEW5w9thOFM=', '张五一', '信息科学与工程学院', '计算机181', '13569859993', '算法研究', '3'),
(32, '9999999', 'pbkdf2_sha256$216000$tvCI18BD83VW$4zl0OGK3HZ1sQzcNY4r2sDf0s0oMSt6tXyV193lpMKI=', '张四', '信息科学与工程学院', '计算机181', '13569856879', '算法研究', '1'),
(34, 'ghg', 'pbkdf2_sha256$216000$UnDfDFhpGkGJ$zBrqKv+I8IRBXGHY1eJeiM9WpcukE/20pQu2Ca5cf/E=', 'hghjjj', '杭州国际服务工程学院', '计算机175', 'ghghghghuuuu', NULL, NULL),
(92, 'qqqqqqq', 'pbkdf2_sha256$216000$FIVRUoAlEmbB$Jrhu3ABMKWeBacDgPZgNJ81b8/qjL+OI7Y3jkfvr26w=', '张五一', '杭州国际服务工程学院', '计算机178', NULL, NULL, NULL),
(93, 'test0001', 'pbkdf2_sha256$216000$RFa385UWUMaW$LnX35TWc+DcPlI4/6yP0xWIX9+it8Dkv+CdGd9nT5FA=', 'Test0001', '杭州国际服务工程学院', '计算机178', '12121212121', NULL, NULL),
(94, 'test0002', 'pbkdf2_sha256$216000$Viys07ps6jV8$cLC7XnnK03fuydAfQrxwJTvEXBsfih6/0dL8nVr4rw8=', 'Test0002', '杭州国际服务工程学院', '计算机178', '12121212121', NULL, NULL),
(95, 'test0003', 'pbkdf2_sha256$216000$ixJtm85mJsVU$THmiXedWrZiymJ0Xoigl1JxDSHY76o03+US1Dpyot48=', 'Test0003', '杭州国际服务工程学院', '计算机178', '12121212121', NULL, NULL),
(96, 'test0004', 'pbkdf2_sha256$216000$ZaeOw8nAYcu1$IB/0eA4Y3msbciNyoUA/hqM9mv+yD0vl3GqsdeU66nE=', 'Test0004', '杭州国际服务工程学院', '计算机178', '12121212121', NULL, NULL),
(97, 'test0005', 'pbkdf2_sha256$216000$n45edZ5LzeY0$RDNjOElxWro8nnGkV6ljzAGt+JCV8qF+lLQxKhueBXM=', 'Test0005', '杭州国际服务工程学院', '计算机178', '12121212121', NULL, NULL),
(98, 'test0006', 'pbkdf2_sha256$216000$f6ShCNjIJyGW$pP9USWVUD7/6Fx5ZqXarYlhN31VkxfRBGz8ebjgMO5k=', 'Test0006', '杭州国际服务工程学院', '计算机178', '12121212121', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ex_studentnewnotice`
--

CREATE TABLE IF NOT EXISTS `ex_studentnewnotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new` int(11) NOT NULL,
  `notice_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_studentnewnotice_notice_id_5eb3c2ad_fk_ex_notice_id` (`notice_id`),
  KEY `ex_studentnewnotice_student_id_76e79fab_fk_ex_student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `ex_studentnewnotice`
--

INSERT INTO `ex_studentnewnotice` (`id`, `new`, `notice_id`, `student_id`) VALUES
(1, 0, 25, 10),
(2, 0, 26, 10),
(3, 0, 23, 10),
(4, 0, 24, 10),
(5, 0, 27, 10),
(6, 0, 25, 4),
(7, 0, 26, 4),
(8, 0, 23, 4),
(9, 0, 24, 4),
(10, 0, 27, 4),
(11, 0, 29, 10),
(12, 0, 28, 10),
(13, 0, 23, 1),
(14, 0, 24, 1),
(15, 0, 27, 1),
(16, 0, 28, 1),
(17, 0, 29, 1),
(18, 0, 25, 1),
(19, 0, 26, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ex_teacher`
--

CREATE TABLE IF NOT EXISTS `ex_teacher` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `college` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `ex_teacher`
--

INSERT INTO `ex_teacher` (`id`, `password`, `name`, `college`, `phone`) VALUES
('admin1', 'pbkdf2_sha256$216000$gbI6GuLN3ieB$FClUoKcYImI7lVv+wtT4gxsKiQZP7OBsLFjKIQKZino=', '张老师', '杭州国际服务工程学院', '13569888884'),
('admin2', 'pbkdf2_sha256$216000$Mk0Xr3kvy63N$2y51uSsOnIcQ8ZHX0xHTEPzlVIxwH0aKOjqLpomXtCM=', '李四三', '杭州国际服务工程学院', '13666666666'),
('admin3', 'pbkdf2_sha256$216000$UnPwrsDPnw8K$ZEs3NoYa//0DSW7WeICpderXSSo1ez7WMoYMyHA8jfY=', '5', '4', '55555555555'),
('admin4', 'pbkdf2_sha256$216000$WSwadduYIk5n$mhUXKymMl67qGjbBu9NqcwKic3K6CLPkCnq6QGsM7i0=', 'admin44', 'cs', ''),
('admin5', 'pbkdf2_sha256$216000$IMCduUxD0205$0jNQjxIshBn0MWGC7bkW2BLYgIbciZd3aHTF1FXiaHg=', 'zzz', 'cs', '58965874258');

-- --------------------------------------------------------

--
-- 表的结构 `ex_teachernewnotice`
--

CREATE TABLE IF NOT EXISTS `ex_teachernewnotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new` int(11) NOT NULL,
  `notice_id` int(11) DEFAULT NULL,
  `teacher_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_teachernewnotice_notice_id_830bbb97_fk_ex_notice_id` (`notice_id`),
  KEY `ex_teachernewnotice_teacher_id_95829570_fk_ex_teacher_id` (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=78 ;

--
-- 转存表中的数据 `ex_teachernewnotice`
--

INSERT INTO `ex_teachernewnotice` (`id`, `new`, `notice_id`, `teacher_id`) VALUES
(24, 0, 23, NULL),
(25, 0, 24, NULL),
(26, 0, 25, NULL),
(27, 0, 26, NULL),
(28, 0, 23, NULL),
(29, 0, 25, NULL),
(30, 0, 24, NULL),
(31, 0, 26, NULL),
(32, 0, 23, NULL),
(33, 0, 25, NULL),
(34, 0, 24, NULL),
(35, 0, 26, NULL),
(36, 0, 23, NULL),
(37, 0, 25, NULL),
(38, 0, 24, NULL),
(39, 0, 26, NULL),
(40, 0, 25, NULL),
(41, 0, 26, NULL),
(42, 0, 23, NULL),
(43, 0, 24, NULL),
(57, 0, 25, 'admin2'),
(58, 0, 26, 'admin2'),
(59, 0, 23, 'admin2'),
(60, 0, 24, 'admin2'),
(61, 0, 27, 'admin2'),
(62, 0, 25, 'admin1'),
(63, 0, 26, 'admin1'),
(64, 0, 23, 'admin1'),
(65, 0, 24, 'admin1'),
(66, 0, 27, 'admin1'),
(67, 0, 28, 'admin1'),
(68, 0, 29, 'admin1'),
(69, 0, 28, 'admin2'),
(70, 0, 29, 'admin2'),
(71, 0, 23, 'admin3'),
(72, 0, 24, 'admin3'),
(73, 0, 27, 'admin3'),
(74, 0, 28, 'admin3'),
(75, 0, 29, 'admin3'),
(76, 0, 25, 'admin3'),
(77, 0, 26, 'admin3');

-- --------------------------------------------------------

--
-- 表的结构 `ex_teamevaluation`
--

CREATE TABLE IF NOT EXISTS `ex_teamevaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Rater_ID` varchar(20) COLLATE utf8_bin NOT NULL,
  `Ratee_ID` varchar(20) COLLATE utf8_bin NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `ex_teamevaluation`
--

INSERT INTO `ex_teamevaluation` (`id`, `Rater_ID`, `Ratee_ID`, `score`) VALUES
(1, '哈哈哈', '2', 71),
(2, '哈哈哈', '4', 55),
(3, '哈哈哈', '5', 59),
(4, '1', '5', 87),
(5, '1', '4', 75),
(6, '1', '6', 63),
(7, '1', '7', 79),
(8, '2', '1', 99),
(9, '2', '2', 98),
(10, '2', '6', 89);

-- --------------------------------------------------------

--
-- 表的结构 `ex_thumbsup`
--

CREATE TABLE IF NOT EXISTS `ex_thumbsup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `userStu_id` int(11) DEFAULT NULL,
  `userTea_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_thumbsup_post_id_3b4ad801_fk_ex_post_id` (`post_id`),
  KEY `ex_thumbsup_userStu_id_1f53ffc9_fk_ex_student_id` (`userStu_id`),
  KEY `ex_thumbsup_userTea_id_d03bf437_fk_ex_teacher_id` (`userTea_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=196 ;

--
-- 转存表中的数据 `ex_thumbsup`
--

INSERT INTO `ex_thumbsup` (`id`, `post_id`, `userStu_id`, `userTea_id`) VALUES
(85, 74, NULL, 'admin1'),
(92, 73, NULL, 'admin1'),
(108, 66, NULL, 'admin1'),
(109, 64, NULL, 'admin1'),
(122, 79, NULL, 'admin1'),
(142, 67, NULL, 'admin1'),
(143, 77, NULL, 'admin1'),
(150, 78, NULL, 'admin1'),
(153, 81, NULL, 'admin2'),
(154, 79, NULL, 'admin2'),
(159, 80, NULL, 'admin1'),
(176, 83, 10, NULL),
(185, 81, 10, NULL),
(186, 94, NULL, 'admin3'),
(187, 85, 10, NULL),
(188, 93, NULL, 'admin1'),
(189, 94, NULL, 'admin1'),
(190, 83, NULL, 'admin1'),
(192, 66, 10, NULL),
(193, 94, 10, NULL),
(194, 67, 10, NULL),
(195, 93, 10, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ex_tlcomment`
--

CREATE TABLE IF NOT EXISTS `ex_tlcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(511) COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `group_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `tlPost_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_tlcomment_group_id_1dd5e024_fk_ex_group_id` (`group_id`),
  KEY `ex_tlcomment_tlPost_id_d1be2e4c_fk_ex_tlpost_id` (`tlPost_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `ex_tlcomment`
--

INSERT INTO `ex_tlcomment` (`id`, `message`, `time`, `group_id`, `tlPost_id`) VALUES
(2, 'fghfgh', '2021-03-31 20:12:02.684394', '1', 12),
(3, '777', '2021-03-31 20:12:06.024959', '1', 12),
(4, 'fhfgh', '2021-03-31 20:14:07.259551', '1', 12),
(6, 'sdfsdf', '2021-03-31 20:16:06.113798', '1', 12),
(7, 'ddd', '2021-03-31 20:16:07.539796', '1', 12),
(13, '', '2021-03-31 21:20:54.447646', 'ai', 13),
(14, '4154654', '2021-03-31 21:22:29.890966', 'ai', 14),
(15, '一般人不会问这种问题', '2021-03-31 21:31:47.653316', 'ai', 18),
(16, '在下江湖人称小太阳。', '2021-03-31 21:36:47.228985', 'ai', 19),
(17, '你好我好大家好', '2021-03-31 21:37:55.179757', 'ai', 20),
(18, '疑是地上霜', '2021-03-31 21:38:55.639682', 'ai', 21),
(19, '换个简单的问我吧！', '2021-04-01 14:48:10.933471', 'ai', 22),
(20, '我有粑粑麻麻　还有姐姐呢　我怎么会是机器人～', '2021-04-01 14:49:29.569750', 'ai', 23),
(21, '此物在我深深的脑海里。', '2021-04-01 14:50:48.512171', 'ai', 24),
(22, '这个我还没有学过。', '2021-04-01 14:55:41.733275', 'ai', 25),
(23, '十万个为什么里面好像有答案。', '2021-04-01 14:56:38.699126', 'ai', 26),
(24, '来来来', '2021-04-01 14:57:13.406470', 'ai', 27),
(25, '春风吹又生。', '2021-04-01 14:59:08.085057', 'ai', 28),
(27, '你这个问题比较难，等我想出来再告诉你吧', '2021-04-01 15:06:43.772382', 'ai', 29),
(28, '我19岁啦，我用美好的年纪守护美好的你', '2021-04-01 15:07:34.895388', 'ai', 30),
(30, '阴沉沉的，一点都不好。', '2021-04-01 15:46:15.956703', 'ai', 31),
(41, '确实', '2021-04-01 16:55:28.186382', '2', 31),
(42, '春来发几枝', '2021-04-02 21:03:34.961434', 'ai', 32),
(43, '不知道唉', '2021-04-02 21:03:36.796287', '1', 32);

-- --------------------------------------------------------

--
-- 表的结构 `ex_tlgroupvote`
--

CREATE TABLE IF NOT EXISTS `ex_tlgroupvote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result` int(11) DEFAULT NULL,
  `group_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `tlVote_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_tlgroupvote_group_id_13e9a92b_fk_ex_group_id` (`group_id`),
  KEY `ex_tlgroupvote_tlVote_id_2f3bb93e_fk_ex_tlvote_id` (`tlVote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ex_tlgroupvote`
--

INSERT INTO `ex_tlgroupvote` (`id`, `result`, `group_id`, `tlVote_id`) VALUES
(2, 1, '2', 13),
(3, 0, '2', 14),
(4, 0, '2', 17),
(5, 1, '2', 16),
(6, 0, '2', 15),
(7, 0, '2', 19),
(13, 1, '1', 23),
(14, 0, '2', 23),
(15, 0, '1', 24);

-- --------------------------------------------------------

--
-- 表的结构 `ex_tlpost`
--

CREATE TABLE IF NOT EXISTS `ex_tlpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(31) COLLATE utf8_bin NOT NULL,
  `message` varchar(511) COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `group_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_tlpost_group_id_8631afa0_fk_ex_group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `ex_tlpost`
--

INSERT INTO `ex_tlpost` (`id`, `title`, `message`, `time`, `group_id`) VALUES
(7, 'ff', 'fff', '2021-03-31 19:47:43.781687', '2'),
(12, 'g', 'ggg', '2021-03-31 19:58:53.435432', '1'),
(13, 'sdfsdf', 'sdfsdf', '2021-03-31 21:20:54.356935', '1'),
(14, 'sdfsdf', 'sdfsdf', '2021-03-31 21:22:29.826143', '1'),
(18, '灵魂拷问', '你是人类吗?', '2021-03-31 21:31:47.247239', '1'),
(19, '你是谁？', '你是谁？', '2021-03-31 21:36:36.767865', '1'),
(20, '问候', '你好！', '2021-03-31 21:37:44.844415', '1'),
(21, '古诗', '床前明月光的下一句是什么？', '2021-03-31 21:38:45.136588', '1'),
(22, 'OS', 'SRTF是什么？', '2021-04-01 14:47:50.560947', '1'),
(23, '日常拷问', '你是人类还是机器人？', '2021-04-01 14:49:09.299188', '1'),
(24, '卷积', '你会卷积神经网络吗？', '2021-04-01 14:50:28.235996', '1'),
(25, '算数', '10!等于几？', '2021-04-01 14:55:21.426409', '1'),
(26, '算数', '98*85等于几？', '2021-04-01 14:56:18.425340', '1'),
(27, '算数', '1+1', '2021-04-01 14:56:53.166924', '1'),
(28, '古诗', '野火烧不尽的前一句是什么？', '2021-04-01 14:58:47.806461', '1'),
(29, '古诗', '春风吹又生的前一句是什么？', '2021-04-01 15:06:23.465917', '1'),
(30, '年龄', '你几岁了？', '2021-04-01 15:07:14.646169', '1'),
(31, '天气', '今天的天气真不错呢！', '2021-04-01 15:45:55.630869', '1'),
(32, '唐诗', '红豆生南国的下一句是什么？', '2021-04-02 21:03:14.498757', '2');

-- --------------------------------------------------------

--
-- 表的结构 `ex_tlvote`
--

CREATE TABLE IF NOT EXISTS `ex_tlvote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `endTime` datetime(6) DEFAULT NULL,
  `group_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `tlComment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ex_tlvote_group_id_9273172a_fk_ex_group_id` (`group_id`),
  KEY `ex_tlvote_tlComment_id_ccef186d_fk_ex_tlcomment_id` (`tlComment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `ex_tlvote`
--

INSERT INTO `ex_tlvote` (`id`, `time`, `endTime`, `group_id`, `tlComment_id`) VALUES
(13, '2021-04-01 18:20:00.613914', '2021-04-01 19:20:00.613914', '2', 30),
(14, '2021-04-01 21:01:59.057425', '2021-04-01 22:01:59.057425', '2', 28),
(15, '2021-04-01 21:02:32.107015', '2021-04-01 21:03:32.107015', '2', 20),
(16, '2021-04-02 16:08:46.382826', '2021-04-02 16:18:46.382826', '2', 24),
(17, '2021-04-02 16:08:55.813370', '2021-04-02 17:08:55.813370', '2', 19),
(18, '2021-04-02 20:00:52.537236', '2021-04-02 21:00:52.537236', '1', 16),
(19, '2021-04-02 20:09:28.081076', '2021-04-02 21:09:28.081076', '2', 7),
(20, '2021-04-02 20:23:43.408610', '2021-04-02 20:24:43.408610', '2', 3),
(21, '2021-04-02 20:28:36.928285', '2021-04-02 20:29:36.928285', '2', 6),
(22, '2021-04-02 20:38:36.920277', '2021-04-02 20:39:36.920277', '2', 4),
(23, '2021-04-02 21:03:57.039303', '2021-04-02 22:03:57.039303', '1', 42),
(24, '2021-04-02 21:10:24.945480', '2021-04-02 22:10:24.945480', '2', 27);

--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `ex_carequipment`
--
ALTER TABLE `ex_carequipment`
  ADD CONSTRAINT `ex_carequipment_car_id_79aee994_fk_ex_car_license_plate_number` FOREIGN KEY (`car_id`) REFERENCES `ex_car` (`license_plate_number`),
  ADD CONSTRAINT `ex_carequipment_equipment_id_9e928cfc_fk_ex_equipment_id` FOREIGN KEY (`equipment_id`) REFERENCES `ex_equipment` (`id`);

--
-- 限制表 `ex_chatboxisopen`
--
ALTER TABLE `ex_chatboxisopen`
  ADD CONSTRAINT `ex_chatboxisopen_receiverStu_id_80219721_fk_ex_student_id` FOREIGN KEY (`receiverStu_id`) REFERENCES `ex_student` (`id`),
  ADD CONSTRAINT `ex_chatboxisopen_receiverTea_id_1f52cce3_fk_ex_teacher_id` FOREIGN KEY (`receiverTea_id`) REFERENCES `ex_teacher` (`id`),
  ADD CONSTRAINT `ex_chatboxisopen_senderStu_id_4ad9eef4_fk_ex_student_id` FOREIGN KEY (`senderStu_id`) REFERENCES `ex_student` (`id`),
  ADD CONSTRAINT `ex_chatboxisopen_senderTea_id_3038f76a_fk_ex_teacher_id` FOREIGN KEY (`senderTea_id`) REFERENCES `ex_teacher` (`id`);

--
-- 限制表 `ex_comment`
--
ALTER TABLE `ex_comment`
  ADD CONSTRAINT `ex_comment_post_id_de47dfbe_fk_ex_post_id` FOREIGN KEY (`post_id`) REFERENCES `ex_post` (`id`),
  ADD CONSTRAINT `ex_comment_userStu_id_fec3934a_fk_ex_student_id` FOREIGN KEY (`userStu_id`) REFERENCES `ex_student` (`id`),
  ADD CONSTRAINT `ex_comment_userTea_id_26645a8a_fk_ex_teacher_id` FOREIGN KEY (`userTea_id`) REFERENCES `ex_teacher` (`id`);

--
-- 限制表 `ex_experimentdata`
--
ALTER TABLE `ex_experimentdata`
  ADD CONSTRAINT `ex_experimentdata_experiment_id_d45a88bf_fk_ex_experiment_id` FOREIGN KEY (`experiment_id`) REFERENCES `ex_experiment` (`id`),
  ADD CONSTRAINT `ex_experimentdata_group_id_8c3aeff7_fk_ex_group_id` FOREIGN KEY (`group_id`) REFERENCES `ex_group` (`id`),
  ADD CONSTRAINT `ex_experimentdata_report_id_ca406505_fk_ex_report_id` FOREIGN KEY (`report_id`) REFERENCES `ex_report` (`id`);

--
-- 限制表 `ex_formation`
--
ALTER TABLE `ex_formation`
  ADD CONSTRAINT `ex_formation_owner_id_c45280cc_fk_ex_group_id` FOREIGN KEY (`owner_id`) REFERENCES `ex_group` (`id`);

--
-- 限制表 `ex_formationpath`
--
ALTER TABLE `ex_formationpath`
  ADD CONSTRAINT `ex_formationpath_end_formation_id_268d1358_fk_ex_formation_id` FOREIGN KEY (`end_formation_id`) REFERENCES `ex_formation` (`id`),
  ADD CONSTRAINT `ex_formationpath_start_formation_id_c7b7956f_fk_ex_formation_id` FOREIGN KEY (`start_formation_id`) REFERENCES `ex_formation` (`id`);

--
-- 限制表 `ex_lightlist`
--
ALTER TABLE `ex_lightlist`
  ADD CONSTRAINT `ex_lightlist_lightScheme_id_0496cddc_fk_ex_lightscheme_id` FOREIGN KEY (`lightScheme_id`) REFERENCES `ex_lightscheme` (`id`);

--
-- 限制表 `ex_lightlistlight`
--
ALTER TABLE `ex_lightlistlight`
  ADD CONSTRAINT `ex_lightlistlight_lightList_id_4cce56c6_fk_ex_lightlist_id` FOREIGN KEY (`lightList_id`) REFERENCES `ex_lightlist` (`id`),
  ADD CONSTRAINT `ex_lightlistlight_light_id_e238bfec_fk_ex_light_id` FOREIGN KEY (`light_id`) REFERENCES `ex_light` (`id`);

--
-- 限制表 `ex_lightscheme`
--
ALTER TABLE `ex_lightscheme`
  ADD CONSTRAINT `ex_lightscheme_formation_id_85d367fa_fk_ex_formation_id` FOREIGN KEY (`formation_id`) REFERENCES `ex_formation` (`id`);

--
-- 限制表 `ex_loginrecord`
--
ALTER TABLE `ex_loginrecord`
  ADD CONSTRAINT `ex_loginrecord_student_id_016895d7_fk_ex_student_id` FOREIGN KEY (`student_id`) REFERENCES `ex_student` (`id`);

--
-- 限制表 `ex_notice`
--
ALTER TABLE `ex_notice`
  ADD CONSTRAINT `ex_notice_user_id_7847b77e_fk_ex_teacher_id` FOREIGN KEY (`user_id`) REFERENCES `ex_teacher` (`id`);

--
-- 限制表 `ex_plane`
--
ALTER TABLE `ex_plane`
  ADD CONSTRAINT `ex_plane_formation_id_19cec116_fk_ex_formation_id` FOREIGN KEY (`formation_id`) REFERENCES `ex_formation` (`id`);

--
-- 限制表 `ex_post`
--
ALTER TABLE `ex_post`
  ADD CONSTRAINT `ex_post_userStu_id_c6afb6ed_fk_ex_student_id` FOREIGN KEY (`userStu_id`) REFERENCES `ex_student` (`id`),
  ADD CONSTRAINT `ex_post_userTea_id_9705c2a6_fk_ex_teacher_id` FOREIGN KEY (`userTea_id`) REFERENCES `ex_teacher` (`id`);

--
-- 限制表 `ex_privateletter`
--
ALTER TABLE `ex_privateletter`
  ADD CONSTRAINT `ex_privateletter_receiverStu_id_001084e7_fk_ex_student_id` FOREIGN KEY (`receiverStu_id`) REFERENCES `ex_student` (`id`),
  ADD CONSTRAINT `ex_privateletter_receiverTea_id_894ddde1_fk_ex_teacher_id` FOREIGN KEY (`receiverTea_id`) REFERENCES `ex_teacher` (`id`),
  ADD CONSTRAINT `ex_privateletter_senderStu_id_91b19fb5_fk_ex_student_id` FOREIGN KEY (`senderStu_id`) REFERENCES `ex_student` (`id`),
  ADD CONSTRAINT `ex_privateletter_senderTea_id_a3ea22a3_fk_ex_teacher_id` FOREIGN KEY (`senderTea_id`) REFERENCES `ex_teacher` (`id`);

--
-- 限制表 `ex_report`
--
ALTER TABLE `ex_report`
  ADD CONSTRAINT `ex_report_experiment_id_3a7f99cc_fk_ex_experiment_id` FOREIGN KEY (`experiment_id`) REFERENCES `ex_experiment` (`id`),
  ADD CONSTRAINT `ex_report_owner_id_35c3b01d_fk_ex_group_id` FOREIGN KEY (`owner_id`) REFERENCES `ex_group` (`id`);

--
-- 限制表 `ex_student`
--
ALTER TABLE `ex_student`
  ADD CONSTRAINT `ex_student_group_id_3500b862_fk_ex_group_id` FOREIGN KEY (`group_id`) REFERENCES `ex_group` (`id`);

--
-- 限制表 `ex_studentnewnotice`
--
ALTER TABLE `ex_studentnewnotice`
  ADD CONSTRAINT `ex_studentnewnotice_notice_id_5eb3c2ad_fk_ex_notice_id` FOREIGN KEY (`notice_id`) REFERENCES `ex_notice` (`id`),
  ADD CONSTRAINT `ex_studentnewnotice_student_id_76e79fab_fk_ex_student_id` FOREIGN KEY (`student_id`) REFERENCES `ex_student` (`id`);

--
-- 限制表 `ex_teachernewnotice`
--
ALTER TABLE `ex_teachernewnotice`
  ADD CONSTRAINT `ex_teachernewnotice_notice_id_830bbb97_fk_ex_notice_id` FOREIGN KEY (`notice_id`) REFERENCES `ex_notice` (`id`),
  ADD CONSTRAINT `ex_teachernewnotice_teacher_id_95829570_fk_ex_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `ex_teacher` (`id`);

--
-- 限制表 `ex_thumbsup`
--
ALTER TABLE `ex_thumbsup`
  ADD CONSTRAINT `ex_thumbsup_post_id_3b4ad801_fk_ex_post_id` FOREIGN KEY (`post_id`) REFERENCES `ex_post` (`id`),
  ADD CONSTRAINT `ex_thumbsup_userStu_id_1f53ffc9_fk_ex_student_id` FOREIGN KEY (`userStu_id`) REFERENCES `ex_student` (`id`),
  ADD CONSTRAINT `ex_thumbsup_userTea_id_d03bf437_fk_ex_teacher_id` FOREIGN KEY (`userTea_id`) REFERENCES `ex_teacher` (`id`);

--
-- 限制表 `ex_tlcomment`
--
ALTER TABLE `ex_tlcomment`
  ADD CONSTRAINT `ex_tlcomment_group_id_1dd5e024_fk_ex_group_id` FOREIGN KEY (`group_id`) REFERENCES `ex_group` (`id`),
  ADD CONSTRAINT `ex_tlcomment_tlPost_id_d1be2e4c_fk_ex_tlpost_id` FOREIGN KEY (`tlPost_id`) REFERENCES `ex_tlpost` (`id`);

--
-- 限制表 `ex_tlgroupvote`
--
ALTER TABLE `ex_tlgroupvote`
  ADD CONSTRAINT `ex_tlgroupvote_group_id_13e9a92b_fk_ex_group_id` FOREIGN KEY (`group_id`) REFERENCES `ex_group` (`id`),
  ADD CONSTRAINT `ex_tlgroupvote_tlVote_id_2f3bb93e_fk_ex_tlvote_id` FOREIGN KEY (`tlVote_id`) REFERENCES `ex_tlvote` (`id`);

--
-- 限制表 `ex_tlpost`
--
ALTER TABLE `ex_tlpost`
  ADD CONSTRAINT `ex_tlpost_group_id_8631afa0_fk_ex_group_id` FOREIGN KEY (`group_id`) REFERENCES `ex_group` (`id`);

--
-- 限制表 `ex_tlvote`
--
ALTER TABLE `ex_tlvote`
  ADD CONSTRAINT `ex_tlvote_group_id_9273172a_fk_ex_group_id` FOREIGN KEY (`group_id`) REFERENCES `ex_group` (`id`),
  ADD CONSTRAINT `ex_tlvote_tlComment_id_ccef186d_fk_ex_tlcomment_id` FOREIGN KEY (`tlComment_id`) REFERENCES `ex_tlcomment` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
