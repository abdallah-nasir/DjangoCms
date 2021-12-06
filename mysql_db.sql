-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 06, 2021 at 03:06 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangocms`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can use Structure mode', 1, 'use_structure'),
(2, 'Can change page', 2, 'change_page'),
(3, 'Can add site', 3, 'add_site'),
(4, 'Can change site', 3, 'change_site'),
(5, 'Can delete site', 3, 'delete_site'),
(6, 'Can view site', 3, 'view_site'),
(7, 'Can add log entry', 4, 'add_logentry'),
(8, 'Can change log entry', 4, 'change_logentry'),
(9, 'Can delete log entry', 4, 'delete_logentry'),
(10, 'Can view log entry', 4, 'view_logentry'),
(11, 'Can add permission', 5, 'add_permission'),
(12, 'Can change permission', 5, 'change_permission'),
(13, 'Can delete permission', 5, 'delete_permission'),
(14, 'Can view permission', 5, 'view_permission'),
(15, 'Can add group', 6, 'add_group'),
(16, 'Can change group', 6, 'change_group'),
(17, 'Can delete group', 6, 'delete_group'),
(18, 'Can view group', 6, 'view_group'),
(19, 'Can add user', 7, 'add_user'),
(20, 'Can change user', 7, 'change_user'),
(21, 'Can delete user', 7, 'delete_user'),
(22, 'Can view user', 7, 'view_user'),
(23, 'Can add content type', 8, 'add_contenttype'),
(24, 'Can change content type', 8, 'change_contenttype'),
(25, 'Can delete content type', 8, 'delete_contenttype'),
(26, 'Can view content type', 8, 'view_contenttype'),
(27, 'Can add session', 9, 'add_session'),
(28, 'Can change session', 9, 'change_session'),
(29, 'Can delete session', 9, 'delete_session'),
(30, 'Can view session', 9, 'view_session'),
(31, 'Can add cms plugin', 10, 'add_cmsplugin'),
(32, 'Can change cms plugin', 10, 'change_cmsplugin'),
(33, 'Can delete cms plugin', 10, 'delete_cmsplugin'),
(34, 'Can view cms plugin', 10, 'view_cmsplugin'),
(35, 'Can add alias plugin model', 11, 'add_aliaspluginmodel'),
(36, 'Can change alias plugin model', 11, 'change_aliaspluginmodel'),
(37, 'Can delete alias plugin model', 11, 'delete_aliaspluginmodel'),
(38, 'Can view alias plugin model', 11, 'view_aliaspluginmodel'),
(39, 'Can add Page global permission', 12, 'add_globalpagepermission'),
(40, 'Can change Page global permission', 12, 'change_globalpagepermission'),
(41, 'Can delete Page global permission', 12, 'delete_globalpagepermission'),
(42, 'Can view Page global permission', 12, 'view_globalpagepermission'),
(43, 'Can add page', 2, 'add_page'),
(44, 'Can delete page', 2, 'delete_page'),
(45, 'Can view page', 2, 'view_page'),
(46, 'Can publish page', 2, 'publish_page'),
(47, 'Can edit static placeholders', 2, 'edit_static_placeholder'),
(48, 'Can add Page permission', 13, 'add_pagepermission'),
(49, 'Can change Page permission', 13, 'change_pagepermission'),
(50, 'Can delete Page permission', 13, 'delete_pagepermission'),
(51, 'Can view Page permission', 13, 'view_pagepermission'),
(52, 'Can add User (page)', 14, 'add_pageuser'),
(53, 'Can change User (page)', 14, 'change_pageuser'),
(54, 'Can delete User (page)', 14, 'delete_pageuser'),
(55, 'Can view User (page)', 14, 'view_pageuser'),
(56, 'Can add User group (page)', 15, 'add_pageusergroup'),
(57, 'Can change User group (page)', 15, 'change_pageusergroup'),
(58, 'Can delete User group (page)', 15, 'delete_pageusergroup'),
(59, 'Can view User group (page)', 15, 'view_pageusergroup'),
(60, 'Can add placeholder', 1, 'add_placeholder'),
(61, 'Can change placeholder', 1, 'change_placeholder'),
(62, 'Can delete placeholder', 1, 'delete_placeholder'),
(63, 'Can view placeholder', 1, 'view_placeholder'),
(64, 'Can add placeholder reference', 16, 'add_placeholderreference'),
(65, 'Can change placeholder reference', 16, 'change_placeholderreference'),
(66, 'Can delete placeholder reference', 16, 'delete_placeholderreference'),
(67, 'Can view placeholder reference', 16, 'view_placeholderreference'),
(68, 'Can add static placeholder', 17, 'add_staticplaceholder'),
(69, 'Can change static placeholder', 17, 'change_staticplaceholder'),
(70, 'Can delete static placeholder', 17, 'delete_staticplaceholder'),
(71, 'Can view static placeholder', 17, 'view_staticplaceholder'),
(72, 'Can add title', 18, 'add_title'),
(73, 'Can change title', 18, 'change_title'),
(74, 'Can delete title', 18, 'delete_title'),
(75, 'Can view title', 18, 'view_title'),
(76, 'Can add user setting', 19, 'add_usersettings'),
(77, 'Can change user setting', 19, 'change_usersettings'),
(78, 'Can delete user setting', 19, 'delete_usersettings'),
(79, 'Can view user setting', 19, 'view_usersettings'),
(80, 'Can add urlconf revision', 20, 'add_urlconfrevision'),
(81, 'Can change urlconf revision', 20, 'change_urlconfrevision'),
(82, 'Can delete urlconf revision', 20, 'delete_urlconfrevision'),
(83, 'Can view urlconf revision', 20, 'view_urlconfrevision'),
(84, 'Can add cache key', 23, 'add_cachekey'),
(85, 'Can change cache key', 23, 'change_cachekey'),
(86, 'Can delete cache key', 23, 'delete_cachekey'),
(87, 'Can view cache key', 23, 'view_cachekey'),
(88, 'Can add clipboard', 24, 'add_clipboard'),
(89, 'Can change clipboard', 24, 'change_clipboard'),
(90, 'Can delete clipboard', 24, 'delete_clipboard'),
(91, 'Can view clipboard', 24, 'view_clipboard'),
(92, 'Can add clipboard item', 25, 'add_clipboarditem'),
(93, 'Can change clipboard item', 25, 'change_clipboarditem'),
(94, 'Can delete clipboard item', 25, 'delete_clipboarditem'),
(95, 'Can view clipboard item', 25, 'view_clipboarditem'),
(96, 'Can add file', 26, 'add_file'),
(97, 'Can change file', 26, 'change_file'),
(98, 'Can delete file', 26, 'delete_file'),
(99, 'Can view file', 26, 'view_file'),
(100, 'Can add Folder', 27, 'add_folder'),
(101, 'Can change Folder', 27, 'change_folder'),
(102, 'Can delete Folder', 27, 'delete_folder'),
(103, 'Can view Folder', 27, 'view_folder'),
(104, 'Can use directory listing', 27, 'can_use_directory_listing'),
(105, 'Can add folder permission', 28, 'add_folderpermission'),
(106, 'Can change folder permission', 28, 'change_folderpermission'),
(107, 'Can delete folder permission', 28, 'delete_folderpermission'),
(108, 'Can view folder permission', 28, 'view_folderpermission'),
(109, 'Can add image', 29, 'add_image'),
(110, 'Can change image', 29, 'change_image'),
(111, 'Can delete image', 29, 'delete_image'),
(112, 'Can view image', 29, 'view_image'),
(113, 'Can add thumbnail option', 30, 'add_thumbnailoption'),
(114, 'Can change thumbnail option', 30, 'change_thumbnailoption'),
(115, 'Can delete thumbnail option', 30, 'delete_thumbnailoption'),
(116, 'Can view thumbnail option', 30, 'view_thumbnailoption'),
(117, 'Can add source', 31, 'add_source'),
(118, 'Can change source', 31, 'change_source'),
(119, 'Can delete source', 31, 'delete_source'),
(120, 'Can view source', 31, 'view_source'),
(121, 'Can add thumbnail', 32, 'add_thumbnail'),
(122, 'Can change thumbnail', 32, 'change_thumbnail'),
(123, 'Can delete thumbnail', 32, 'delete_thumbnail'),
(124, 'Can view thumbnail', 32, 'view_thumbnail'),
(125, 'Can add thumbnail dimensions', 33, 'add_thumbnaildimensions'),
(126, 'Can change thumbnail dimensions', 33, 'change_thumbnaildimensions'),
(127, 'Can delete thumbnail dimensions', 33, 'delete_thumbnaildimensions'),
(128, 'Can view thumbnail dimensions', 33, 'view_thumbnaildimensions'),
(129, 'Can add text', 34, 'add_text'),
(130, 'Can change text', 34, 'change_text'),
(131, 'Can delete text', 34, 'delete_text'),
(132, 'Can view text', 34, 'view_text'),
(133, 'Can add link', 35, 'add_link'),
(134, 'Can change link', 35, 'change_link'),
(135, 'Can delete link', 35, 'delete_link'),
(136, 'Can view link', 35, 'view_link'),
(137, 'Can add file', 36, 'add_file'),
(138, 'Can change file', 36, 'change_file'),
(139, 'Can delete file', 36, 'delete_file'),
(140, 'Can view file', 36, 'view_file'),
(141, 'Can add folder', 37, 'add_folder'),
(142, 'Can change folder', 37, 'change_folder'),
(143, 'Can delete folder', 37, 'delete_folder'),
(144, 'Can view folder', 37, 'view_folder'),
(145, 'Can add picture', 38, 'add_picture'),
(146, 'Can change picture', 38, 'change_picture'),
(147, 'Can delete picture', 38, 'delete_picture'),
(148, 'Can view picture', 38, 'view_picture'),
(149, 'Can add video player', 39, 'add_videoplayer'),
(150, 'Can change video player', 39, 'change_videoplayer'),
(151, 'Can delete video player', 39, 'delete_videoplayer'),
(152, 'Can view video player', 39, 'view_videoplayer'),
(153, 'Can add video source', 40, 'add_videosource'),
(154, 'Can change video source', 40, 'change_videosource'),
(155, 'Can delete video source', 40, 'delete_videosource'),
(156, 'Can view video source', 40, 'view_videosource'),
(157, 'Can add video track', 41, 'add_videotrack'),
(158, 'Can change video track', 41, 'change_videotrack'),
(159, 'Can delete video track', 41, 'delete_videotrack'),
(160, 'Can view video track', 41, 'view_videotrack'),
(161, 'Can add google map', 42, 'add_googlemap'),
(162, 'Can change google map', 42, 'change_googlemap'),
(163, 'Can delete google map', 42, 'delete_googlemap'),
(164, 'Can view google map', 42, 'view_googlemap'),
(165, 'Can add google map marker', 43, 'add_googlemapmarker'),
(166, 'Can change google map marker', 43, 'change_googlemapmarker'),
(167, 'Can delete google map marker', 43, 'delete_googlemapmarker'),
(168, 'Can view google map marker', 43, 'view_googlemapmarker'),
(169, 'Can add google map route', 44, 'add_googlemaproute'),
(170, 'Can change google map route', 44, 'change_googlemaproute'),
(171, 'Can delete google map route', 44, 'delete_googlemaproute'),
(172, 'Can view google map route', 44, 'view_googlemaproute'),
(173, 'Can add Snippet', 45, 'add_snippet'),
(174, 'Can change Snippet', 45, 'change_snippet'),
(175, 'Can delete Snippet', 45, 'delete_snippet'),
(176, 'Can view Snippet', 45, 'view_snippet'),
(177, 'Can add Snippet Ptr', 46, 'add_snippetptr'),
(178, 'Can change Snippet Ptr', 46, 'change_snippetptr'),
(179, 'Can delete Snippet Ptr', 46, 'delete_snippetptr'),
(180, 'Can view Snippet Ptr', 46, 'view_snippetptr'),
(181, 'Can add style', 47, 'add_style'),
(182, 'Can change style', 47, 'change_style'),
(183, 'Can delete style', 47, 'delete_style'),
(184, 'Can view style', 47, 'view_style'),
(185, 'Can add icon', 48, 'add_icon'),
(186, 'Can change icon', 48, 'change_icon'),
(187, 'Can delete icon', 48, 'delete_icon'),
(188, 'Can view icon', 48, 'view_icon'),
(189, 'Can add bootstrap4 alerts', 49, 'add_bootstrap4alerts'),
(190, 'Can change bootstrap4 alerts', 49, 'change_bootstrap4alerts'),
(191, 'Can delete bootstrap4 alerts', 49, 'delete_bootstrap4alerts'),
(192, 'Can view bootstrap4 alerts', 49, 'view_bootstrap4alerts'),
(193, 'Can add bootstrap4 badge', 50, 'add_bootstrap4badge'),
(194, 'Can change bootstrap4 badge', 50, 'change_bootstrap4badge'),
(195, 'Can delete bootstrap4 badge', 50, 'delete_bootstrap4badge'),
(196, 'Can view bootstrap4 badge', 50, 'view_bootstrap4badge'),
(197, 'Can add bootstrap4 card', 51, 'add_bootstrap4card'),
(198, 'Can change bootstrap4 card', 51, 'change_bootstrap4card'),
(199, 'Can delete bootstrap4 card', 51, 'delete_bootstrap4card'),
(200, 'Can view bootstrap4 card', 51, 'view_bootstrap4card'),
(201, 'Can add bootstrap4 card inner', 52, 'add_bootstrap4cardinner'),
(202, 'Can change bootstrap4 card inner', 52, 'change_bootstrap4cardinner'),
(203, 'Can delete bootstrap4 card inner', 52, 'delete_bootstrap4cardinner'),
(204, 'Can view bootstrap4 card inner', 52, 'view_bootstrap4cardinner'),
(205, 'Can add bootstrap4 carousel', 53, 'add_bootstrap4carousel'),
(206, 'Can change bootstrap4 carousel', 53, 'change_bootstrap4carousel'),
(207, 'Can delete bootstrap4 carousel', 53, 'delete_bootstrap4carousel'),
(208, 'Can view bootstrap4 carousel', 53, 'view_bootstrap4carousel'),
(209, 'Can add bootstrap4 carousel slide', 54, 'add_bootstrap4carouselslide'),
(210, 'Can change bootstrap4 carousel slide', 54, 'change_bootstrap4carouselslide'),
(211, 'Can delete bootstrap4 carousel slide', 54, 'delete_bootstrap4carouselslide'),
(212, 'Can view bootstrap4 carousel slide', 54, 'view_bootstrap4carouselslide'),
(213, 'Can add bootstrap4 collapse', 55, 'add_bootstrap4collapse'),
(214, 'Can change bootstrap4 collapse', 55, 'change_bootstrap4collapse'),
(215, 'Can delete bootstrap4 collapse', 55, 'delete_bootstrap4collapse'),
(216, 'Can view bootstrap4 collapse', 55, 'view_bootstrap4collapse'),
(217, 'Can add bootstrap4 collapse container', 56, 'add_bootstrap4collapsecontainer'),
(218, 'Can change bootstrap4 collapse container', 56, 'change_bootstrap4collapsecontainer'),
(219, 'Can delete bootstrap4 collapse container', 56, 'delete_bootstrap4collapsecontainer'),
(220, 'Can view bootstrap4 collapse container', 56, 'view_bootstrap4collapsecontainer'),
(221, 'Can add bootstrap4 collapse trigger', 57, 'add_bootstrap4collapsetrigger'),
(222, 'Can change bootstrap4 collapse trigger', 57, 'change_bootstrap4collapsetrigger'),
(223, 'Can delete bootstrap4 collapse trigger', 57, 'delete_bootstrap4collapsetrigger'),
(224, 'Can view bootstrap4 collapse trigger', 57, 'view_bootstrap4collapsetrigger'),
(225, 'Can add bootstrap4 blockquote', 58, 'add_bootstrap4blockquote'),
(226, 'Can change bootstrap4 blockquote', 58, 'change_bootstrap4blockquote'),
(227, 'Can delete bootstrap4 blockquote', 58, 'delete_bootstrap4blockquote'),
(228, 'Can view bootstrap4 blockquote', 58, 'view_bootstrap4blockquote'),
(229, 'Can add bootstrap4 code', 59, 'add_bootstrap4code'),
(230, 'Can change bootstrap4 code', 59, 'change_bootstrap4code'),
(231, 'Can delete bootstrap4 code', 59, 'delete_bootstrap4code'),
(232, 'Can view bootstrap4 code', 59, 'view_bootstrap4code'),
(233, 'Can add bootstrap4 figure', 60, 'add_bootstrap4figure'),
(234, 'Can change bootstrap4 figure', 60, 'change_bootstrap4figure'),
(235, 'Can delete bootstrap4 figure', 60, 'delete_bootstrap4figure'),
(236, 'Can view bootstrap4 figure', 60, 'view_bootstrap4figure'),
(237, 'Can add bootstrap4 grid column', 61, 'add_bootstrap4gridcolumn'),
(238, 'Can change bootstrap4 grid column', 61, 'change_bootstrap4gridcolumn'),
(239, 'Can delete bootstrap4 grid column', 61, 'delete_bootstrap4gridcolumn'),
(240, 'Can view bootstrap4 grid column', 61, 'view_bootstrap4gridcolumn'),
(241, 'Can add bootstrap4 grid container', 62, 'add_bootstrap4gridcontainer'),
(242, 'Can change bootstrap4 grid container', 62, 'change_bootstrap4gridcontainer'),
(243, 'Can delete bootstrap4 grid container', 62, 'delete_bootstrap4gridcontainer'),
(244, 'Can view bootstrap4 grid container', 62, 'view_bootstrap4gridcontainer'),
(245, 'Can add bootstrap4 grid row', 63, 'add_bootstrap4gridrow'),
(246, 'Can change bootstrap4 grid row', 63, 'change_bootstrap4gridrow'),
(247, 'Can delete bootstrap4 grid row', 63, 'delete_bootstrap4gridrow'),
(248, 'Can view bootstrap4 grid row', 63, 'view_bootstrap4gridrow'),
(249, 'Can add bootstrap4 jumbotron', 64, 'add_bootstrap4jumbotron'),
(250, 'Can change bootstrap4 jumbotron', 64, 'change_bootstrap4jumbotron'),
(251, 'Can delete bootstrap4 jumbotron', 64, 'delete_bootstrap4jumbotron'),
(252, 'Can view bootstrap4 jumbotron', 64, 'view_bootstrap4jumbotron'),
(253, 'Can add bootstrap4 link', 65, 'add_bootstrap4link'),
(254, 'Can change bootstrap4 link', 65, 'change_bootstrap4link'),
(255, 'Can delete bootstrap4 link', 65, 'delete_bootstrap4link'),
(256, 'Can view bootstrap4 link', 65, 'view_bootstrap4link'),
(257, 'Can add bootstrap4 list group', 66, 'add_bootstrap4listgroup'),
(258, 'Can change bootstrap4 list group', 66, 'change_bootstrap4listgroup'),
(259, 'Can delete bootstrap4 list group', 66, 'delete_bootstrap4listgroup'),
(260, 'Can view bootstrap4 list group', 66, 'view_bootstrap4listgroup'),
(261, 'Can add bootstrap4 list group item', 67, 'add_bootstrap4listgroupitem'),
(262, 'Can change bootstrap4 list group item', 67, 'change_bootstrap4listgroupitem'),
(263, 'Can delete bootstrap4 list group item', 67, 'delete_bootstrap4listgroupitem'),
(264, 'Can view bootstrap4 list group item', 67, 'view_bootstrap4listgroupitem'),
(265, 'Can add bootstrap4 media', 68, 'add_bootstrap4media'),
(266, 'Can change bootstrap4 media', 68, 'change_bootstrap4media'),
(267, 'Can delete bootstrap4 media', 68, 'delete_bootstrap4media'),
(268, 'Can view bootstrap4 media', 68, 'view_bootstrap4media'),
(269, 'Can add bootstrap4 media body', 69, 'add_bootstrap4mediabody'),
(270, 'Can change bootstrap4 media body', 69, 'change_bootstrap4mediabody'),
(271, 'Can delete bootstrap4 media body', 69, 'delete_bootstrap4mediabody'),
(272, 'Can view bootstrap4 media body', 69, 'view_bootstrap4mediabody'),
(273, 'Can add bootstrap4 picture', 70, 'add_bootstrap4picture'),
(274, 'Can change bootstrap4 picture', 70, 'change_bootstrap4picture'),
(275, 'Can delete bootstrap4 picture', 70, 'delete_bootstrap4picture'),
(276, 'Can view bootstrap4 picture', 70, 'view_bootstrap4picture'),
(277, 'Can add bootstrap4 tab', 71, 'add_bootstrap4tab'),
(278, 'Can change bootstrap4 tab', 71, 'change_bootstrap4tab'),
(279, 'Can delete bootstrap4 tab', 71, 'delete_bootstrap4tab'),
(280, 'Can view bootstrap4 tab', 71, 'view_bootstrap4tab'),
(281, 'Can add bootstrap4 tab item', 72, 'add_bootstrap4tabitem'),
(282, 'Can change bootstrap4 tab item', 72, 'change_bootstrap4tabitem'),
(283, 'Can delete bootstrap4 tab item', 72, 'delete_bootstrap4tabitem'),
(284, 'Can view bootstrap4 tab item', 72, 'view_bootstrap4tabitem'),
(285, 'Can add bootstrap4 spacing', 73, 'add_bootstrap4spacing'),
(286, 'Can change bootstrap4 spacing', 73, 'change_bootstrap4spacing'),
(287, 'Can delete bootstrap4 spacing', 73, 'delete_bootstrap4spacing'),
(288, 'Can view bootstrap4 spacing', 73, 'view_bootstrap4spacing');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$vEQwN4HexcBp$xD/6ZQW7+DS13/MQ1xuEpXtyEdy0T2q3me94mKphbY0=', '2021-12-06 13:59:07.892595', 1, 'abdallah', '', '', 'abdallah.nasir@ymail.com', 1, 1, '2021-12-04 23:25:47.471000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_alerts_bootstrap4alerts`
--

CREATE TABLE `bootstrap4_alerts_bootstrap4alerts` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `alert_context` varchar(255) NOT NULL,
  `alert_dismissable` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_badge_bootstrap4badge`
--

CREATE TABLE `bootstrap4_badge_bootstrap4badge` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `badge_text` varchar(255) NOT NULL,
  `badge_context` varchar(255) NOT NULL,
  `badge_pills` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_card_bootstrap4card`
--

CREATE TABLE `bootstrap4_card_bootstrap4card` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_context` varchar(255) NOT NULL,
  `card_alignment` varchar(255) NOT NULL,
  `card_outline` tinyint(1) NOT NULL,
  `card_text_color` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bootstrap4_card_bootstrap4card`
--

INSERT INTO `bootstrap4_card_bootstrap4card` (`cmsplugin_ptr_id`, `card_type`, `card_context`, `card_alignment`, `card_outline`, `card_text_color`, `tag_type`, `attributes`) VALUES
(14, 'card', 'secondary', '', 1, 'dark', 'div', '{}'),
(242, 'card', 'secondary', '', 1, 'dark', 'div', '{}'),
(249, 'card', 'secondary', '', 1, 'dark', 'div', '{}'),
(938, 'card', 'secondary', '', 1, 'dark', 'div', '{}'),
(946, 'card', 'secondary', '', 1, 'dark', 'div', '{}'),
(954, 'card', 'secondary', '', 1, 'dark', 'div', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_card_bootstrap4cardinner`
--

CREATE TABLE `bootstrap4_card_bootstrap4cardinner` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `inner_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bootstrap4_card_bootstrap4cardinner`
--

INSERT INTO `bootstrap4_card_bootstrap4cardinner` (`cmsplugin_ptr_id`, `inner_type`, `tag_type`, `attributes`) VALUES
(16, 'card-header', 'div', '{}'),
(20, 'card-body', 'div', '{}'),
(243, 'card-header', 'div', '{}'),
(245, 'card-body', 'div', '{}'),
(250, 'card-header', 'div', '{}'),
(252, 'card-body', 'div', '{}'),
(939, 'card-header', 'div', '{}'),
(941, 'card-body', 'div', '{}'),
(947, 'card-header', 'div', '{}'),
(949, 'card-body', 'div', '{}'),
(955, 'card-header', 'div', '{}'),
(957, 'card-body', 'div', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carousel`
--

CREATE TABLE `bootstrap4_carousel_bootstrap4carousel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `carousel_interval` int(11) NOT NULL,
  `carousel_controls` tinyint(1) NOT NULL,
  `carousel_indicators` tinyint(1) NOT NULL,
  `carousel_keyboard` tinyint(1) NOT NULL,
  `carousel_pause` varchar(255) NOT NULL,
  `carousel_ride` varchar(255) NOT NULL,
  `carousel_wrap` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `carousel_aspect_ratio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bootstrap4_carousel_bootstrap4carousel`
--

INSERT INTO `bootstrap4_carousel_bootstrap4carousel` (`cmsplugin_ptr_id`, `template`, `carousel_interval`, `carousel_controls`, `carousel_indicators`, `carousel_keyboard`, `carousel_pause`, `carousel_ride`, `carousel_wrap`, `tag_type`, `attributes`, `carousel_aspect_ratio`) VALUES
(80, 'default', 5000, 1, 1, 1, 'hover', 'carousel', 1, 'div', '{}', '21x9'),
(119, 'default', 5000, 1, 1, 1, 'hover', 'carousel', 1, 'div', '{}', '21x9'),
(963, 'default', 5000, 1, 1, 1, 'hover', 'carousel', 1, 'div', '{}', '21x9');

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carouselslide`
--

CREATE TABLE `bootstrap4_carousel_bootstrap4carouselslide` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `carousel_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `carousel_image_id` int(11) DEFAULT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `file_link_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bootstrap4_carousel_bootstrap4carouselslide`
--

INSERT INTO `bootstrap4_carousel_bootstrap4carouselslide` (`template`, `name`, `external_link`, `anchor`, `mailto`, `phone`, `target`, `attributes`, `cmsplugin_ptr_id`, `carousel_content`, `tag_type`, `carousel_image_id`, `internal_link_id`, `file_link_id`) VALUES
('default', '', '', '', '', '', '', '{}', 81, '', 'div', 4, NULL, NULL),
('default', '', '', '', '', '', '', '{}', 82, '', 'div', 5, NULL, NULL),
('default', '', '', '', '', '', '', '{}', 83, '', 'div', 6, NULL, NULL),
('default', '', '', '', '', '', '', '{}', 120, '', 'div', 5, NULL, NULL),
('default', '', '', '', '', '', '', '{}', 175, '<h2>Cards made to suit your lifestyle and all your banking needs. Apply today to take advantage of Boubyan’s latest offers and services.</h2>\n\n<h2> </h2>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>', 'div', 10, NULL, NULL),
('default', '', '', '', '', '', '', '{}', 964, '', 'div', 4, NULL, NULL),
('default', '', '', '', '', '', '', '{}', 965, '', 'div', 5, NULL, NULL),
('default', '', '', '', '', '', '', '{}', 966, '', 'div', 6, NULL, NULL),
('default', '', '', '', '', '', '', '{}', 967, '<h2>Cards made to suit your lifestyle and all your banking needs. Apply today to take advantage of Boubyan’s latest offers and services.</h2>\n\n<h2> </h2>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>', 'div', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapse`
--

CREATE TABLE `bootstrap4_collapse_bootstrap4collapse` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `siblings` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--

CREATE TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--

CREATE TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_content_bootstrap4blockquote`
--

CREATE TABLE `bootstrap4_content_bootstrap4blockquote` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `quote_content` longtext NOT NULL,
  `quote_origin` longtext NOT NULL,
  `quote_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_content_bootstrap4code`
--

CREATE TABLE `bootstrap4_content_bootstrap4code` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `code_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_content_bootstrap4figure`
--

CREATE TABLE `bootstrap4_content_bootstrap4figure` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `figure_caption` varchar(255) NOT NULL,
  `figure_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcolumn`
--

CREATE TABLE `bootstrap4_grid_bootstrap4gridcolumn` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `column_type` varchar(255) NOT NULL,
  `column_alignment` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `xs_col` int(11) DEFAULT NULL,
  `xs_order` int(11) DEFAULT NULL,
  `xs_ml` tinyint(1) NOT NULL,
  `xs_mr` tinyint(1) NOT NULL,
  `sm_col` int(11) DEFAULT NULL,
  `sm_order` int(11) DEFAULT NULL,
  `sm_ml` tinyint(1) NOT NULL,
  `sm_mr` tinyint(1) NOT NULL,
  `md_col` int(11) DEFAULT NULL,
  `md_order` int(11) DEFAULT NULL,
  `md_ml` tinyint(1) NOT NULL,
  `md_mr` tinyint(1) NOT NULL,
  `lg_col` int(11) DEFAULT NULL,
  `lg_order` int(11) DEFAULT NULL,
  `lg_ml` tinyint(1) NOT NULL,
  `lg_mr` tinyint(1) NOT NULL,
  `xl_col` int(11) DEFAULT NULL,
  `xl_order` int(11) DEFAULT NULL,
  `xl_ml` tinyint(1) NOT NULL,
  `xl_mr` tinyint(1) NOT NULL,
  `lg_offset` int(11) DEFAULT NULL,
  `md_offset` int(11) DEFAULT NULL,
  `sm_offset` int(11) DEFAULT NULL,
  `xl_offset` int(11) DEFAULT NULL,
  `xs_offset` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridcolumn`
--

INSERT INTO `bootstrap4_grid_bootstrap4gridcolumn` (`cmsplugin_ptr_id`, `column_type`, `column_alignment`, `tag_type`, `attributes`, `xs_col`, `xs_order`, `xs_ml`, `xs_mr`, `sm_col`, `sm_order`, `sm_ml`, `sm_mr`, `md_col`, `md_order`, `md_ml`, `md_mr`, `lg_col`, `lg_order`, `lg_ml`, `lg_mr`, `xl_col`, `xl_order`, `xl_ml`, `xl_mr`, `lg_offset`, `md_offset`, `sm_offset`, `xl_offset`, `xs_offset`) VALUES
(4, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 4, 5, 2, 4, 2),
(8, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 4, 4, 2, 4, 2),
(11, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(79, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(97, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(98, 'col', 'align-self-start', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(110, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(112, 'col', 'align-self-start', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(117, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(143, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(144, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(154, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(156, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(169, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(171, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(241, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(248, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(375, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(376, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(380, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(671, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(730, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 4, 5, 2, 4, 2),
(734, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 4, 2, 1, 4, 1),
(915, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(917, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(922, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(924, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(929, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(931, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(937, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(945, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(953, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, 4, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(962, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(970, 'col', 'align-self-center', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 4, 4, 2, 4, 2),
(974, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(978, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(980, 'col', 'align-self-start', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(984, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(986, 'col', 'align-self-start', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(991, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 4, 2, 1, 4, 1),
(995, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(997, 'col', '', 'div', '{}', 12, NULL, 0, 0, 12, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, 6, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(1002, 'col', '', 'div', '{}', NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcontainer`
--

CREATE TABLE `bootstrap4_grid_bootstrap4gridcontainer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `container_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridrow`
--

CREATE TABLE `bootstrap4_grid_bootstrap4gridrow` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `vertical_alignment` varchar(255) NOT NULL,
  `horizontal_alignment` varchar(255) NOT NULL,
  `gutters` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridrow`
--

INSERT INTO `bootstrap4_grid_bootstrap4gridrow` (`cmsplugin_ptr_id`, `vertical_alignment`, `horizontal_alignment`, `gutters`, `tag_type`, `attributes`) VALUES
(3, '', 'justify-content-center', 0, 'div', '{}'),
(7, '', '', 0, 'div', '{}'),
(10, '', '', 0, 'div', '{}'),
(78, '', '', 0, 'div', '{}'),
(96, '', '', 0, 'div', '{}'),
(109, '', '', 0, 'div', '{}'),
(116, '', '', 0, 'div', '{}'),
(142, '', '', 0, 'div', '{}'),
(153, '', '', 0, 'div', '{}'),
(168, '', '', 0, 'div', '{}'),
(374, '', '', 0, 'div', '{}'),
(379, 'align-items-center', '', 0, 'div', '{}'),
(670, '', '', 0, 'div', '{}'),
(729, '', 'justify-content-center', 0, 'div', '{}'),
(733, 'align-items-start', '', 0, 'div', '{}'),
(914, '', '', 0, 'div', '{}'),
(921, '', '', 0, 'div', '{}'),
(928, '', '', 0, 'div', '{}'),
(936, '', '', 0, 'div', '{}'),
(961, '', '', 0, 'div', '{}'),
(969, '', '', 0, 'div', '{}'),
(973, '', '', 0, 'div', '{}'),
(977, '', '', 0, 'div', '{}'),
(983, '', '', 0, 'div', '{}'),
(990, 'align-items-start', '', 0, 'div', '{}'),
(994, '', '', 0, 'div', '{}'),
(1001, 'align-items-center', '', 0, 'div', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--

CREATE TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `fluid` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_link_bootstrap4link`
--

CREATE TABLE `bootstrap4_link_bootstrap4link` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `link_context` varchar(255) NOT NULL,
  `link_size` varchar(255) NOT NULL,
  `link_outline` tinyint(1) NOT NULL,
  `link_block` tinyint(1) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `icon_left` varchar(255) NOT NULL,
  `icon_right` varchar(255) NOT NULL,
  `file_link_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bootstrap4_link_bootstrap4link`
--

INSERT INTO `bootstrap4_link_bootstrap4link` (`template`, `name`, `external_link`, `anchor`, `mailto`, `phone`, `target`, `attributes`, `cmsplugin_ptr_id`, `link_type`, `link_context`, `link_size`, `link_outline`, `link_block`, `internal_link_id`, `icon_left`, `icon_right`, `file_link_id`) VALUES
('default', 'Learn More', '', '', '', '', '', '{}', 102, 'btn', 'danger', 'btn-lg', 1, 0, NULL, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 114, 'btn', 'danger', 'btn-lg', 1, 0, NULL, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 146, 'btn', 'danger', 'btn-lg', 1, 0, 1, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 158, 'btn', 'danger', 'btn-lg', 1, 0, 1, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 173, 'btn', 'danger', 'btn-lg', 1, 0, 1, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 385, 'link', 'info', 'btn-lg', 1, 0, 1, '', '', NULL),
('default', 'Prices', '', '', '', '', '', '{}', 398, 'btn', 'info', '', 1, 1, 9, '', '', NULL),
('default', 'Prices', '', '', '', '', '', '{}', 399, 'btn', 'info', '', 1, 1, 10, '', '', NULL),
('default', 'Prices', '', '', '', '', '', '{}', 400, 'btn', 'info', '', 1, 1, 10, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 919, 'btn', 'danger', 'btn-lg', 1, 0, 1, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 926, 'btn', 'danger', 'btn-lg', 1, 0, 1, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 933, 'btn', 'danger', 'btn-lg', 1, 0, 1, '', '', NULL),
('default', 'Prices', '', '', '', '', '', '{}', 943, 'btn', 'info', '', 1, 1, 10, '', '', NULL),
('default', 'Prices', '', '', '', '', '', '{}', 951, 'btn', 'info', '', 1, 1, 10, '', '', NULL),
('default', 'Prices', '', '', '', '', '', '{}', 959, 'btn', 'info', '', 1, 1, 9, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 982, 'btn', 'danger', 'btn-lg', 1, 0, NULL, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 988, 'btn', 'danger', 'btn-lg', 1, 0, NULL, '', '', NULL),
('default', 'Learn More', '', '', '', '', '', '{}', 999, 'link', 'info', 'btn-lg', 1, 0, 1, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroup`
--

CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroup` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `list_group_flush` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--

CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `list_context` varchar(255) NOT NULL,
  `list_state` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_media_bootstrap4media`
--

CREATE TABLE `bootstrap4_media_bootstrap4media` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_media_bootstrap4mediabody`
--

CREATE TABLE `bootstrap4_media_bootstrap4mediabody` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_picture_bootstrap4picture`
--

CREATE TABLE `bootstrap4_picture_bootstrap4picture` (
  `template` varchar(255) NOT NULL,
  `external_picture` varchar(255) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `alignment` varchar(255) NOT NULL,
  `caption_text` longtext DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `link_url` varchar(2040) DEFAULT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_attributes` longtext NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `picture_fluid` tinyint(1) NOT NULL,
  `picture_rounded` tinyint(1) NOT NULL,
  `picture_thumbnail` tinyint(1) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `use_responsive_image` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bootstrap4_picture_bootstrap4picture`
--

INSERT INTO `bootstrap4_picture_bootstrap4picture` (`template`, `external_picture`, `width`, `height`, `alignment`, `caption_text`, `attributes`, `link_url`, `link_target`, `link_attributes`, `use_automatic_scaling`, `use_no_cropping`, `use_crop`, `use_upscale`, `cmsplugin_ptr_id`, `picture_fluid`, `picture_rounded`, `picture_thumbnail`, `link_page_id`, `picture_id`, `thumbnail_options_id`, `use_responsive_image`) VALUES
('default', 'https://boubyan.bankboubyan.com/media/filer_public/b6/dc/b6dc2bab-37e2-42ed-a1a5-c3d9befce820/boubyan_mastercardworld_t.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 19, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', NULL, 720, 720, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 100, 1, 0, 0, NULL, 7, NULL, 'inherit'),
('default', NULL, 720, 720, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 111, 1, 0, 0, NULL, 8, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/6a/29/6a298317-26b2-43d1-8856-0373ea20851d/onboarding_large_banners_570x512.png', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 136, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/d0/95/d095805d-da0a-4d3f-b327-01a539b76e5f/mega_banner_-_570_x_512.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 155, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/f3/d3/f3d39be8-7440-4198-a4a2-fd13d0c047bc/large_banners_570x512_option_3.png', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 170, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/8b/5f/8b5f67d8-ac34-4b8c-85a3-6baed3cc065f/special_edition_card_-_boubyan_15th_year_anniversary_202008_26_platinum_b_web_size_3.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 244, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/be/6f/be6f3c28-c9b6-41c1-8ae3-bf4bc9dc4548/new_usd_debit_card_-_campaign_web_202101_273.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 251, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public_thumbnails/filer_public/aa/47/aa47525b-a28c-4c49-868f-8267c37d6497/b_personal_boubyan_branches_h.jpg__1440x480_q85_subsampling-2.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 382, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/6a/29/6a298317-26b2-43d1-8856-0373ea20851d/onboarding_large_banners_570x512.png', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 916, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/d0/95/d095805d-da0a-4d3f-b327-01a539b76e5f/mega_banner_-_570_x_512.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 923, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/f3/d3/f3d39be8-7440-4198-a4a2-fd13d0c047bc/large_banners_570x512_option_3.png', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 930, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/b6/dc/b6dc2bab-37e2-42ed-a1a5-c3d9befce820/boubyan_mastercardworld_t.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 940, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/8b/5f/8b5f67d8-ac34-4b8c-85a3-6baed3cc065f/special_edition_card_-_boubyan_15th_year_anniversary_202008_26_platinum_b_web_size_3.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 948, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public/be/6f/be6f3c28-c9b6-41c1-8ae3-bf4bc9dc4548/new_usd_debit_card_-_campaign_web_202101_273.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 956, 1, 0, 0, NULL, NULL, NULL, 'inherit'),
('default', NULL, 720, 720, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 979, 1, 0, 0, NULL, 7, NULL, 'inherit'),
('default', NULL, 720, 720, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 985, 1, 0, 0, NULL, 8, NULL, 'inherit'),
('default', 'https://boubyan.bankboubyan.com/media/filer_public_thumbnails/filer_public/aa/47/aa47525b-a28c-4c49-868f-8267c37d6497/b_personal_boubyan_branches_h.jpg__1440x480_q85_subsampling-2.jpg', NULL, NULL, '', '', '{}', NULL, '', '{}', 1, 0, 0, 0, 1003, 1, 0, 0, NULL, NULL, NULL, 'inherit');

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tab`
--

CREATE TABLE `bootstrap4_tabs_bootstrap4tab` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `tab_type` varchar(255) NOT NULL,
  `tab_alignment` varchar(255) NOT NULL,
  `tab_index` int(10) UNSIGNED DEFAULT NULL,
  `tab_effect` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tabitem`
--

CREATE TABLE `bootstrap4_tabs_bootstrap4tabitem` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tab_title` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_utilities_bootstrap4spacing`
--

CREATE TABLE `bootstrap4_utilities_bootstrap4spacing` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `space_property` varchar(255) NOT NULL,
  `space_sides` varchar(255) NOT NULL,
  `space_size` varchar(255) NOT NULL,
  `space_device` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_aliaspluginmodel`
--

CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_cmsplugin`
--

CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `placeholder_id` int(11) DEFAULT NULL,
  `depth` int(10) UNSIGNED NOT NULL,
  `numchild` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_cmsplugin`
--

INSERT INTO `cms_cmsplugin` (`id`, `position`, `language`, `plugin_type`, `creation_date`, `changed_date`, `parent_id`, `placeholder_id`, `depth`, `numchild`, `path`) VALUES
(2, 0, 'en', 'StylePlugin', '2021-12-04 23:30:38.876000', '2021-12-06 12:18:10.868664', NULL, 4, 1, 1, '0002'),
(3, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 10:13:07.131000', '2021-12-05 21:32:02.099000', 2, 4, 2, 1, '00020001'),
(4, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:13:07.508000', '2021-12-06 12:21:03.711798', 3, 4, 3, 2, '000200010001'),
(5, 0, 'en', 'TextPlugin', '2021-12-05 10:15:02.723000', '2021-12-06 12:20:32.533970', 4, 4, 4, 0, '0002000100010001'),
(6, 2, 'en', 'StylePlugin', '2021-12-05 10:26:38.625000', '2021-12-06 12:17:37.968401', NULL, 6, 1, 1, '0003'),
(7, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 10:27:26.917000', '2021-12-05 11:27:42.466000', 84, 6, 2, 1, '00070001'),
(8, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:27:27.065000', '2021-12-05 22:19:04.054000', 7, 6, 3, 1, '000700010001'),
(9, 0, 'en', 'TextPlugin', '2021-12-05 10:28:30.898000', '2021-12-05 21:50:29.366000', 8, 6, 4, 0, '0007000100010001'),
(10, 1, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 10:36:17.252000', '2021-12-05 22:48:28.180000', 6, 6, 2, 3, '00030002'),
(11, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:36:17.706000', '2021-12-05 22:47:39.018000', 10, 6, 3, 2, '000300020001'),
(14, 0, 'en', 'Bootstrap4CardPlugin', '2021-12-05 10:42:33.396000', '2021-12-05 10:56:17.726000', 11, 6, 4, 2, '0003000200010001'),
(16, 0, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:46:07.332000', '2021-12-05 22:34:36.226000', 14, 6, 5, 1, '00030002000100010001'),
(19, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 10:50:09.842000', '2021-12-06 11:24:29.659560', 16, 6, 6, 0, '000300020001000100010001'),
(20, 1, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:56:44.166000', '2021-12-05 10:56:44.179000', 14, 6, 5, 1, '00030002000100010002'),
(21, 0, 'en', 'TextPlugin', '2021-12-05 10:56:54.161000', '2021-12-05 23:51:57.973000', 20, 6, 6, 1, '000300020001000100020001'),
(77, 1, 'en', 'StylePlugin', '2021-12-05 11:17:09.855000', '2021-12-05 11:17:09.869000', NULL, 6, 1, 1, '0005'),
(78, 1, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 11:17:38.232000', '2021-12-05 11:17:38.246000', 77, 6, 2, 1, '00050001'),
(79, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 11:17:38.248000', '2021-12-05 11:17:38.250000', 78, 6, 3, 1, '000500010001'),
(80, 0, 'en', 'Bootstrap4CarouselPlugin', '2021-12-05 11:18:21.274000', '2021-12-05 11:18:21.285000', 79, 6, 4, 4, '0005000100010001'),
(81, 2, 'en', 'Bootstrap4CarouselSlidePlugin', '2021-12-05 11:23:11.313000', '2021-12-05 11:24:25.481000', 80, 6, 5, 0, '00050001000100010001'),
(82, 1, 'en', 'Bootstrap4CarouselSlidePlugin', '2021-12-05 11:25:28.826000', '2021-12-05 11:25:28.902000', 80, 6, 5, 0, '00050001000100010002'),
(83, 3, 'en', 'Bootstrap4CarouselSlidePlugin', '2021-12-05 11:30:34.255000', '2021-12-05 11:30:34.706000', 80, 6, 5, 0, '00050001000100010003'),
(84, 0, 'en', 'StylePlugin', '2021-12-05 11:38:43.280000', '2021-12-05 11:56:11.909000', NULL, 6, 1, 1, '0007'),
(95, 0, 'en', 'StylePlugin', '2021-12-05 13:00:37.453000', '2021-12-05 13:55:25.299000', NULL, 14, 1, 2, '0008'),
(96, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 13:00:57.915000', '2021-12-05 13:00:58.008000', 95, 14, 2, 2, '00080001'),
(97, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 13:00:58.026000', '2021-12-05 13:45:43.684000', 96, 14, 3, 1, '000800010001'),
(98, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 13:00:58.034000', '2021-12-05 13:47:17.623000', 96, 14, 3, 1, '000800010002'),
(100, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 13:02:45.244000', '2021-12-05 13:43:28.519000', 97, 14, 4, 0, '0008000100010002'),
(101, 0, 'en', 'TextPlugin', '2021-12-05 13:03:16.810000', '2021-12-05 13:37:40.314000', 98, 14, 4, 1, '0008000100020001'),
(102, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 13:36:23.886000', '2021-12-05 13:36:24.416000', 101, 14, 5, 0, '00080001000200010001'),
(109, 1, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 13:00:57.915000', '2021-12-05 13:48:40.219000', 95, 14, 2, 2, '00080002'),
(110, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 13:00:58.026000', '2021-12-05 13:48:40.242000', 109, 14, 3, 1, '000800020001'),
(111, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 13:02:45.244000', '2021-12-05 13:54:05.241000', 110, 14, 4, 0, '0008000200010001'),
(112, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 13:00:58.034000', '2021-12-05 13:48:40.319000', 109, 14, 3, 1, '000800020002'),
(113, 0, 'en', 'TextPlugin', '2021-12-05 13:03:16.810000', '2021-12-05 13:53:05.534000', 112, 14, 4, 1, '0008000200020001'),
(114, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 13:36:23.886000', '2021-12-05 13:48:40.373000', 113, 14, 5, 0, '00080002000200010001'),
(115, 0, 'en', 'StylePlugin', '2021-12-05 14:16:59.311000', '2021-12-05 14:16:59.355000', NULL, 15, 1, 1, '000A'),
(116, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 14:17:28.431000', '2021-12-05 14:19:27.777000', 115, 15, 2, 1, '000A0001'),
(117, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 14:17:28.610000', '2021-12-05 14:17:28.623000', 116, 15, 3, 1, '000A00010001'),
(119, 0, 'en', 'Bootstrap4CarouselPlugin', '2021-12-05 14:18:00.178000', '2021-12-05 14:18:00.210000', 117, 15, 4, 1, '000A000100010001'),
(120, 0, 'en', 'Bootstrap4CarouselSlidePlugin', '2021-12-05 14:18:53.497000', '2021-12-05 14:18:54.013000', 119, 15, 5, 0, '000A0001000100010001'),
(136, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 16:21:48.410000', '2021-12-06 12:04:27.904696', 143, 22, 4, 0, '000E000200010001'),
(141, 0, 'en', 'StylePlugin', '2021-12-05 20:10:09.701000', '2021-12-06 12:06:01.754026', NULL, 22, 1, 3, '000E'),
(142, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 20:10:45.502000', '2021-12-05 20:10:45.525000', 141, 22, 2, 2, '000E0002'),
(143, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.529000', '2021-12-05 20:16:01.118000', 142, 22, 3, 1, '000E00020001'),
(144, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.539000', '2021-12-05 20:12:56.800000', 142, 22, 3, 1, '000E00020002'),
(145, 0, 'en', 'TextPlugin', '2021-12-05 20:11:47.599000', '2021-12-05 20:14:52.799000', 144, 22, 4, 1, '000E000200020001'),
(146, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 20:14:16.809000', '2021-12-05 20:14:16.828000', 145, 22, 5, 0, '000E0002000200010001'),
(153, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 20:10:45.502000', '2021-12-05 20:16:27.946000', 159, 22, 3, 2, '000E00040001'),
(154, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.529000', '2021-12-05 20:16:28.000000', 153, 22, 4, 1, '000E000400010001'),
(155, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 16:21:48.410000', '2021-12-06 12:05:05.856422', 154, 22, 5, 0, '000E0004000100010001'),
(156, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.539000', '2021-12-05 20:16:28.139000', 153, 22, 4, 1, '000E000400010002'),
(157, 0, 'en', 'TextPlugin', '2021-12-05 20:11:47.599000', '2021-12-05 20:21:35.609000', 156, 22, 5, 1, '000E0004000100020001'),
(158, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 20:14:16.809000', '2021-12-05 20:16:28.356000', 157, 22, 6, 0, '000E00040001000200010001'),
(159, 1, 'en', 'StylePlugin', '2021-12-05 20:19:46.746000', '2021-12-05 20:20:16.409000', 141, 22, 2, 1, '000E0004'),
(167, 2, 'en', 'StylePlugin', '2021-12-05 20:19:46.746000', '2021-12-05 20:20:43.615000', 141, 22, 2, 1, '000E0005'),
(168, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 20:10:45.502000', '2021-12-05 20:20:43.646000', 167, 22, 3, 2, '000E00050001'),
(169, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.529000', '2021-12-05 20:20:43.710000', 168, 22, 4, 1, '000E000500010001'),
(170, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 16:21:48.410000', '2021-12-06 12:05:34.870669', 169, 22, 5, 0, '000E0005000100010001'),
(171, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.539000', '2021-12-05 20:20:43.810000', 168, 22, 4, 1, '000E000500010002'),
(172, 0, 'en', 'TextPlugin', '2021-12-05 20:11:47.599000', '2021-12-05 20:23:10.576000', 171, 22, 5, 1, '000E0005000100020001'),
(173, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 20:14:16.809000', '2021-12-05 20:20:43.876000', 172, 22, 6, 0, '000E00050001000200010001'),
(175, 0, 'en', 'Bootstrap4CarouselSlidePlugin', '2021-12-05 11:25:28.826000', '2021-12-05 21:42:40.298000', 80, 6, 5, 0, '00050001000100010004'),
(241, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:36:17.706000', '2021-12-05 22:52:06.808000', 10, 6, 3, 2, '000300020002'),
(242, 0, 'en', 'Bootstrap4CardPlugin', '2021-12-05 10:42:33.396000', '2021-12-05 22:48:35.885000', 241, 6, 4, 2, '0003000200020001'),
(243, 0, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:46:07.332000', '2021-12-05 22:48:35.914000', 242, 6, 5, 1, '00030002000200010001'),
(244, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 10:50:09.842000', '2021-12-06 11:25:01.862762', 243, 6, 6, 0, '000300020002000100010001'),
(245, 1, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:56:44.166000', '2021-12-05 22:48:36.123000', 242, 6, 5, 1, '00030002000200010002'),
(246, 0, 'en', 'TextPlugin', '2021-12-05 10:56:54.161000', '2021-12-06 11:58:35.911565', 245, 6, 6, 1, '000300020002000100020001'),
(248, 2, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:36:17.706000', '2021-12-05 22:48:41.830000', 10, 6, 3, 1, '000300020003'),
(249, 0, 'en', 'Bootstrap4CardPlugin', '2021-12-05 10:42:33.396000', '2021-12-05 22:48:41.857000', 248, 6, 4, 2, '0003000200030001'),
(250, 0, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:46:07.332000', '2021-12-05 22:48:41.878000', 249, 6, 5, 1, '00030002000300010001'),
(251, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 10:50:09.842000', '2021-12-06 11:25:19.516488', 250, 6, 6, 0, '000300020003000100010001'),
(252, 1, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:56:44.166000', '2021-12-05 22:48:41.939000', 249, 6, 5, 1, '00030002000300010002'),
(253, 0, 'en', 'TextPlugin', '2021-12-05 10:56:54.161000', '2021-12-05 23:54:21.820000', 252, 6, 6, 1, '000300020003000100020001'),
(256, 1, 'en', 'StylePlugin', '2021-12-05 22:56:37.393000', '2021-12-05 22:56:37.428000', 11, 6, 4, 0, '0003000200010002'),
(257, 1, 'en', 'StylePlugin', '2021-12-05 22:56:37.393000', '2021-12-05 22:57:15.530000', NULL, 1, 1, 0, '000F'),
(258, 1, 'en', 'StylePlugin', '2021-12-05 22:56:37.393000', '2021-12-05 22:57:30.787000', 241, 6, 4, 0, '0003000200020002'),
(373, 1, 'en', 'StylePlugin', '2021-12-05 23:24:47.094000', '2021-12-05 23:24:47.103000', NULL, 31, 1, 1, '000R'),
(374, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 23:25:01.676000', '2021-12-05 23:25:01.686000', 373, 31, 2, 2, '000R0001'),
(375, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 23:25:01.688000', '2021-12-05 23:25:01.690000', 374, 31, 3, 1, '000R00010001'),
(376, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 23:25:01.694000', '2021-12-05 23:43:08.823000', 374, 31, 3, 2, '000R00010002'),
(377, 0, 'en', 'GoogleMapPlugin', '2021-12-05 23:28:49.792000', '2021-12-05 23:31:27.496000', 375, 31, 4, 0, '000R000100010001'),
(378, 0, 'en', 'StylePlugin', '2021-12-05 23:33:04.676000', '2021-12-05 23:33:04.686000', NULL, 31, 1, 1, '000S'),
(379, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 23:33:33.199000', '2021-12-05 23:33:33.210000', 378, 31, 2, 1, '000S0001'),
(380, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 23:33:33.212000', '2021-12-05 23:35:30.048000', 379, 31, 3, 1, '000S00010001'),
(382, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 23:34:56.709000', '2021-12-06 14:05:25.877834', 380, 31, 4, 0, '000S000100010002'),
(383, 0, 'en', 'TextPlugin', '2021-12-05 23:36:04.796000', '2021-12-05 23:36:04.958000', 376, 31, 4, 0, '000R000100020001'),
(384, 1, 'en', 'TextPlugin', '2021-12-05 23:38:02.636000', '2021-12-05 23:40:54.251000', 376, 31, 4, 1, '000R000100020002'),
(385, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 23:39:02.150000', '2021-12-05 23:39:02.169000', 384, 31, 5, 0, '000R0001000200020001'),
(398, 1, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 23:50:44.348000', '2021-12-05 23:50:44.367000', 253, 6, 7, 0, '0003000200030001000200010002'),
(399, 1, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 23:51:42.980000', '2021-12-05 23:51:43.000000', 21, 6, 7, 0, '0003000200010001000200010002'),
(400, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 23:53:22.908000', '2021-12-05 23:53:22.945000', 246, 6, 7, 0, '0003000200020001000200010001'),
(558, 0, 'en', 'SnippetPlugin', '2021-12-06 11:33:31.077433', '2021-12-06 11:36:31.577166', NULL, 2, 1, 0, '0018'),
(669, 3, 'en', 'StylePlugin', '2021-12-06 12:08:35.998536', '2021-12-06 12:18:39.288166', NULL, 6, 1, 1, '001L'),
(670, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-06 12:08:54.665470', '2021-12-06 12:08:54.708475', 669, 6, 2, 1, '001L0001'),
(671, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-06 12:09:09.103615', '2021-12-06 12:09:09.126598', 670, 6, 3, 1, '001L00010001'),
(672, 0, 'en', 'VideoPlayerPlugin', '2021-12-06 12:10:12.487709', '2021-12-06 12:10:12.499710', 671, 6, 4, 0, '001L000100010001'),
(728, 0, 'en', 'StylePlugin', '2021-12-04 23:30:38.876000', '2021-12-06 12:21:16.464757', NULL, 5, 1, 1, '001S'),
(729, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 10:13:07.131000', '2021-12-06 12:21:16.529805', 728, 5, 2, 1, '001S0001'),
(730, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:13:07.508000', '2021-12-06 12:21:16.589763', 729, 5, 3, 1, '001S00010001'),
(731, 0, 'en', 'TextPlugin', '2021-12-05 10:15:02.723000', '2021-12-06 12:21:16.738758', 730, 5, 4, 0, '001S000100010001'),
(732, 0, 'en', 'StylePlugin', '2021-12-06 12:27:30.613260', '2021-12-06 12:29:09.622862', NULL, 35, 1, 1, '001T'),
(733, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-06 12:27:47.990902', '2021-12-06 12:27:48.004905', 732, 35, 2, 1, '001T0001'),
(734, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-06 12:27:48.008908', '2021-12-06 14:00:00.190151', 733, 35, 3, 1, '001T00010001'),
(735, 0, 'en', 'TextPlugin', '2021-12-06 12:27:56.008774', '2021-12-06 12:28:07.247915', 734, 35, 4, 0, '001T000100010001'),
(913, 0, 'en', 'StylePlugin', '2021-12-05 20:10:09.701000', '2021-12-06 12:35:10.267378', NULL, 23, 1, 3, '0021'),
(914, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 20:10:45.502000', '2021-12-06 12:35:10.307375', 913, 23, 2, 2, '00210001'),
(915, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.529000', '2021-12-06 12:35:10.349374', 914, 23, 3, 1, '002100010001'),
(916, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 16:21:48.410000', '2021-12-06 12:35:10.363376', 915, 23, 4, 0, '0021000100010001'),
(917, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.539000', '2021-12-06 12:35:10.395374', 914, 23, 3, 1, '002100010002'),
(918, 0, 'en', 'TextPlugin', '2021-12-05 20:11:47.599000', '2021-12-06 12:35:10.687372', 917, 23, 4, 1, '0021000100020001'),
(919, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 20:14:16.809000', '2021-12-06 12:35:10.433374', 918, 23, 5, 0, '00210001000200010001'),
(920, 1, 'en', 'StylePlugin', '2021-12-05 20:19:46.746000', '2021-12-06 12:35:10.457378', 913, 23, 2, 1, '00210002'),
(921, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 20:10:45.502000', '2021-12-06 12:35:10.466376', 920, 23, 3, 2, '002100020001'),
(922, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.529000', '2021-12-06 12:35:10.477375', 921, 23, 4, 1, '0021000200010001'),
(923, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 16:21:48.410000', '2021-12-06 12:35:10.487378', 922, 23, 5, 0, '00210002000100010001'),
(924, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.539000', '2021-12-06 12:35:10.502374', 921, 23, 4, 1, '0021000200010002'),
(925, 0, 'en', 'TextPlugin', '2021-12-05 20:11:47.599000', '2021-12-06 12:35:10.722376', 924, 23, 5, 1, '00210002000100020001'),
(926, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 20:14:16.809000', '2021-12-06 12:35:10.529374', 925, 23, 6, 0, '002100020001000200010001'),
(927, 2, 'en', 'StylePlugin', '2021-12-05 20:19:46.746000', '2021-12-06 12:35:10.544378', 913, 23, 2, 1, '00210003'),
(928, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 20:10:45.502000', '2021-12-06 12:35:10.552375', 927, 23, 3, 2, '002100030001'),
(929, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.529000', '2021-12-06 12:35:10.561381', 928, 23, 4, 1, '0021000300010001'),
(930, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 16:21:48.410000', '2021-12-06 12:35:10.570372', 929, 23, 5, 0, '00210003000100010001'),
(931, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 20:10:45.539000', '2021-12-06 12:35:10.592374', 928, 23, 4, 1, '0021000300010002'),
(932, 0, 'en', 'TextPlugin', '2021-12-05 20:11:47.599000', '2021-12-06 12:35:10.755377', 931, 23, 5, 1, '00210003000100020001'),
(933, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 20:14:16.809000', '2021-12-06 12:35:10.657379', 932, 23, 6, 0, '002100030001000200010001'),
(934, 0, 'en', 'SnippetPlugin', '2021-12-06 11:33:31.077433', '2021-12-06 14:00:43.818014', NULL, 3, 1, 0, '0022'),
(935, 2, 'en', 'StylePlugin', '2021-12-05 10:26:38.625000', '2021-12-06 14:00:44.300018', NULL, 27, 1, 1, '0023'),
(936, 1, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 10:36:17.252000', '2021-12-06 14:00:44.311021', 935, 27, 2, 3, '00230001'),
(937, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:36:17.706000', '2021-12-06 14:00:44.322019', 936, 27, 3, 2, '002300010001'),
(938, 0, 'en', 'Bootstrap4CardPlugin', '2021-12-05 10:42:33.396000', '2021-12-06 14:00:44.330022', 937, 27, 4, 2, '0023000100010001'),
(939, 0, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:46:07.332000', '2021-12-06 14:00:44.337019', 938, 27, 5, 1, '00230001000100010001'),
(940, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 10:50:09.842000', '2021-12-06 14:00:44.345025', 939, 27, 6, 0, '002300010001000100010001'),
(941, 1, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:56:44.166000', '2021-12-06 14:00:44.356014', 938, 27, 5, 1, '00230001000100010002'),
(942, 0, 'en', 'TextPlugin', '2021-12-05 10:56:54.161000', '2021-12-06 14:00:45.159590', 941, 27, 6, 1, '002300010001000100020001'),
(943, 1, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 23:51:42.980000', '2021-12-06 14:00:44.735017', 942, 27, 7, 0, '0023000100010001000200010001'),
(944, 1, 'en', 'StylePlugin', '2021-12-05 22:56:37.393000', '2021-12-06 14:00:44.749020', 937, 27, 4, 0, '0023000100010002'),
(945, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:36:17.706000', '2021-12-06 14:00:44.760017', 936, 27, 3, 2, '002300010002'),
(946, 0, 'en', 'Bootstrap4CardPlugin', '2021-12-05 10:42:33.396000', '2021-12-06 14:00:44.768016', 945, 27, 4, 2, '0023000100020001'),
(947, 0, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:46:07.332000', '2021-12-06 14:00:44.784016', 946, 27, 5, 1, '00230001000200010001'),
(948, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 10:50:09.842000', '2021-12-06 14:00:44.792014', 947, 27, 6, 0, '002300010002000100010001'),
(949, 1, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:56:44.166000', '2021-12-06 14:00:44.805014', 946, 27, 5, 1, '00230001000200010002'),
(950, 0, 'en', 'TextPlugin', '2021-12-05 10:56:54.161000', '2021-12-06 14:00:45.184595', 949, 27, 6, 1, '002300010002000100020001'),
(951, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 23:53:22.908000', '2021-12-06 14:00:44.836018', 950, 27, 7, 0, '0023000100020001000200010001'),
(952, 1, 'en', 'StylePlugin', '2021-12-05 22:56:37.393000', '2021-12-06 14:00:44.850024', 945, 27, 4, 0, '0023000100020002'),
(953, 2, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:36:17.706000', '2021-12-06 14:00:44.864023', 936, 27, 3, 1, '002300010003'),
(954, 0, 'en', 'Bootstrap4CardPlugin', '2021-12-05 10:42:33.396000', '2021-12-06 14:00:44.873018', 953, 27, 4, 2, '0023000100030001'),
(955, 0, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:46:07.332000', '2021-12-06 14:00:44.880017', 954, 27, 5, 1, '00230001000300010001'),
(956, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 10:50:09.842000', '2021-12-06 14:00:44.888592', 955, 27, 6, 0, '002300010003000100010001'),
(957, 1, 'en', 'Bootstrap4CardInnerPlugin', '2021-12-05 10:56:44.166000', '2021-12-06 14:00:44.906596', 954, 27, 5, 1, '00230001000300010002'),
(958, 0, 'en', 'TextPlugin', '2021-12-05 10:56:54.161000', '2021-12-06 14:00:45.215605', 957, 27, 6, 1, '002300010003000100020001'),
(959, 1, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 23:50:44.348000', '2021-12-06 14:00:44.955591', 958, 27, 7, 0, '0023000100030001000200010001'),
(960, 1, 'en', 'StylePlugin', '2021-12-05 11:17:09.855000', '2021-12-06 14:00:44.963599', NULL, 27, 1, 1, '0024'),
(961, 1, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 11:17:38.232000', '2021-12-06 14:00:44.971591', 960, 27, 2, 1, '00240001'),
(962, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 11:17:38.248000', '2021-12-06 14:00:44.977595', 961, 27, 3, 1, '002400010001'),
(963, 0, 'en', 'Bootstrap4CarouselPlugin', '2021-12-05 11:18:21.274000', '2021-12-06 14:00:44.988591', 962, 27, 4, 4, '0024000100010001'),
(964, 2, 'en', 'Bootstrap4CarouselSlidePlugin', '2021-12-05 11:23:11.313000', '2021-12-06 14:00:44.994592', 963, 27, 5, 0, '00240001000100010001'),
(965, 1, 'en', 'Bootstrap4CarouselSlidePlugin', '2021-12-05 11:25:28.826000', '2021-12-06 14:00:45.007592', 963, 27, 5, 0, '00240001000100010002'),
(966, 3, 'en', 'Bootstrap4CarouselSlidePlugin', '2021-12-05 11:30:34.255000', '2021-12-06 14:00:45.035595', 963, 27, 5, 0, '00240001000100010003'),
(967, 0, 'en', 'Bootstrap4CarouselSlidePlugin', '2021-12-05 11:25:28.826000', '2021-12-06 14:00:45.048595', 963, 27, 5, 0, '00240001000100010004'),
(968, 0, 'en', 'StylePlugin', '2021-12-05 11:38:43.280000', '2021-12-06 14:00:45.060590', NULL, 27, 1, 1, '0025'),
(969, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 10:27:26.917000', '2021-12-06 14:00:45.068595', 968, 27, 2, 1, '00250001'),
(970, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 10:27:27.065000', '2021-12-06 14:00:45.076591', 969, 27, 3, 1, '002500010001'),
(971, 0, 'en', 'TextPlugin', '2021-12-05 10:28:30.898000', '2021-12-06 14:00:45.240590', 970, 27, 4, 0, '0025000100010001'),
(972, 3, 'en', 'StylePlugin', '2021-12-06 12:08:35.998536', '2021-12-06 14:00:45.116593', NULL, 27, 1, 1, '0026'),
(973, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-06 12:08:54.665470', '2021-12-06 14:00:45.123595', 972, 27, 2, 1, '00260001'),
(974, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-06 12:09:09.103615', '2021-12-06 14:00:45.130593', 973, 27, 3, 1, '002600010001'),
(975, 0, 'en', 'VideoPlayerPlugin', '2021-12-06 12:10:12.487709', '2021-12-06 14:00:45.139597', 974, 27, 4, 0, '0026000100010001'),
(976, 0, 'en', 'StylePlugin', '2021-12-05 13:00:37.453000', '2021-12-06 14:00:45.443606', NULL, 28, 1, 2, '0027'),
(977, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 13:00:57.915000', '2021-12-06 14:00:45.452597', 976, 28, 2, 2, '00270001'),
(978, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 13:00:58.026000', '2021-12-06 14:00:45.464595', 977, 28, 3, 1, '002700010001'),
(979, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 13:02:45.244000', '2021-12-06 14:00:45.475597', 978, 28, 4, 0, '0027000100010001'),
(980, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 13:00:58.034000', '2021-12-06 14:00:45.505597', 977, 28, 3, 1, '002700010002'),
(981, 0, 'en', 'TextPlugin', '2021-12-05 13:03:16.810000', '2021-12-06 14:00:45.689598', 980, 28, 4, 1, '0027000100020001'),
(982, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 13:36:23.886000', '2021-12-06 14:00:45.547597', 981, 28, 5, 0, '00270001000200010001'),
(983, 1, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 13:00:57.915000', '2021-12-06 14:00:45.574599', 976, 28, 2, 2, '00270002'),
(984, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 13:00:58.026000', '2021-12-06 14:00:45.586594', 983, 28, 3, 1, '002700020001'),
(985, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 13:02:45.244000', '2021-12-06 14:00:45.596602', 984, 28, 4, 0, '0027000200010001'),
(986, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 13:00:58.034000', '2021-12-06 14:00:45.623596', 983, 28, 3, 1, '002700020002'),
(987, 0, 'en', 'TextPlugin', '2021-12-05 13:03:16.810000', '2021-12-06 14:00:45.719595', 986, 28, 4, 1, '0027000200020001'),
(988, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 13:36:23.886000', '2021-12-06 14:00:45.670597', 987, 28, 5, 0, '00270002000200010001'),
(989, 0, 'en', 'StylePlugin', '2021-12-06 12:27:30.613260', '2021-12-06 14:00:45.788588', NULL, 38, 1, 1, '0028'),
(990, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-06 12:27:47.990902', '2021-12-06 14:00:45.797595', 989, 38, 2, 1, '00280001'),
(991, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-06 12:27:48.008908', '2021-12-06 14:00:45.808623', 990, 38, 3, 1, '002800010001'),
(992, 0, 'en', 'TextPlugin', '2021-12-06 12:27:56.008774', '2021-12-06 14:00:45.834601', 991, 38, 4, 0, '0028000100010001'),
(993, 1, 'en', 'StylePlugin', '2021-12-05 23:24:47.094000', '2021-12-06 14:05:33.523906', NULL, 32, 1, 1, '0029'),
(994, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 23:25:01.676000', '2021-12-06 14:05:33.545908', 993, 32, 2, 2, '00290001'),
(995, 1, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 23:25:01.688000', '2021-12-06 14:05:33.562905', 994, 32, 3, 1, '002900010001'),
(996, 0, 'en', 'GoogleMapPlugin', '2021-12-05 23:28:49.792000', '2021-12-06 14:05:33.581916', 995, 32, 4, 0, '0029000100010001'),
(997, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 23:25:01.694000', '2021-12-06 14:05:33.633906', 994, 32, 3, 1, '002900010002'),
(998, 1, 'en', 'TextPlugin', '2021-12-05 23:38:02.636000', '2021-12-06 14:05:33.845650', 997, 32, 4, 1, '0029000100020001'),
(999, 0, 'en', 'Bootstrap4LinkPlugin', '2021-12-05 23:39:02.150000', '2021-12-06 14:05:33.784651', 998, 32, 5, 0, '00290001000200010001'),
(1000, 0, 'en', 'StylePlugin', '2021-12-05 23:33:04.676000', '2021-12-06 14:05:33.796648', NULL, 32, 1, 1, '002A'),
(1001, 0, 'en', 'Bootstrap4GridRowPlugin', '2021-12-05 23:33:33.199000', '2021-12-06 14:05:33.804649', 1000, 32, 2, 1, '002A0001'),
(1002, 0, 'en', 'Bootstrap4GridColumnPlugin', '2021-12-05 23:33:33.212000', '2021-12-06 14:05:33.817641', 1001, 32, 3, 1, '002A00010001'),
(1003, 0, 'en', 'Bootstrap4PicturePlugin', '2021-12-05 23:34:56.709000', '2021-12-06 14:05:33.829646', 1002, 32, 4, 0, '002A000100010001');

-- --------------------------------------------------------

--
-- Table structure for table `cms_globalpagepermission`
--

CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_globalpagepermission_sites`
--

CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `publication_date` datetime(6) DEFAULT NULL,
  `publication_end_date` datetime(6) DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `xframe_options` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `is_page_type` tinyint(1) NOT NULL,
  `node_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`id`, `created_by`, `changed_by`, `creation_date`, `changed_date`, `publication_date`, `publication_end_date`, `in_navigation`, `soft_root`, `reverse_id`, `navigation_extenders`, `template`, `login_required`, `limit_visibility_in_menu`, `is_home`, `application_urls`, `application_namespace`, `publisher_is_draft`, `languages`, `xframe_options`, `publisher_public_id`, `is_page_type`, `node_id`) VALUES
(1, 'abdallah', 'abdallah', '2021-12-04 23:28:20.282000', '2021-12-06 11:27:51.839903', '2021-12-04 23:28:20.411000', NULL, 1, 0, NULL, NULL, 'home.html', 0, NULL, 1, '', NULL, 1, 'en', 0, 2, 0, 1),
(2, 'abdallah', 'abdallah', '2021-12-04 23:28:20.413000', '2021-12-06 14:00:43.034951', '2021-12-04 23:28:20.411000', NULL, 1, 0, NULL, NULL, 'home.html', 0, NULL, 1, '', NULL, 0, 'en', 0, 1, 0, 1),
(3, 'abdallah', 'abdallah', '2021-12-05 12:04:00.356000', '2021-12-05 12:04:00.356000', NULL, NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, NULL, 1, 2),
(5, 'abdallah', 'abdallah', '2021-12-05 12:27:14.326000', '2021-12-06 11:53:14.675784', NULL, NULL, 0, 0, NULL, NULL, 'home.html', 0, NULL, 0, '', NULL, 1, 'en', 0, NULL, 1, 4),
(9, 'abdallah', 'abdallah', '2021-12-05 14:44:49.003000', '2021-12-06 11:53:16.730172', NULL, NULL, 0, 0, NULL, NULL, 'service.html', 0, NULL, 0, '', NULL, 1, 'en', 0, NULL, 1, 8),
(10, 'abdallah', 'abdallah', '2021-12-05 15:48:17.618000', '2021-12-06 11:29:14.286290', '2021-12-05 15:49:10.213000', NULL, 1, 0, NULL, NULL, 'service.html', 0, NULL, 0, '', NULL, 1, 'en', 0, 11, 0, 9),
(11, 'abdallah', 'abdallah', '2021-12-05 15:49:10.216000', '2021-12-06 12:35:08.870378', '2021-12-05 15:49:10.213000', NULL, 1, 0, NULL, NULL, 'service.html', 0, NULL, 0, '', NULL, 0, 'en', 0, 10, 0, 9),
(13, 'abdallah', 'abdallah', '2021-12-05 23:18:49.260000', '2021-12-06 11:30:22.810019', '2021-12-05 23:21:55.897000', NULL, 1, 0, NULL, NULL, 'map.html', 0, NULL, 0, '', NULL, 1, 'en', 0, 14, 0, 11),
(14, 'abdallah', 'abdallah', '2021-12-05 23:21:55.898000', '2021-12-06 14:05:32.730237', '2021-12-05 23:21:55.897000', NULL, 1, 0, NULL, NULL, 'map.html', 0, NULL, 0, '', NULL, 0, 'en', 0, 13, 0, 11),
(15, 'abdallah', 'abdallah', '2021-12-05 23:56:14.798000', '2021-12-06 11:53:12.202681', NULL, NULL, 0, 0, NULL, NULL, 'map.html', 0, NULL, 0, '', NULL, 1, 'en', 0, NULL, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pagepermission`
--

CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pageuser`
--

CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pageusergroup`
--

CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_placeholders`
--

CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_page_placeholders`
--

INSERT INTO `cms_page_placeholders` (`id`, `page_id`, `placeholder_id`) VALUES
(1, 1, 2),
(2, 1, 6),
(3, 1, 14),
(22, 1, 35),
(5, 2, 3),
(4, 2, 27),
(6, 2, 28),
(23, 2, 38),
(7, 5, 8),
(9, 5, 15),
(8, 5, 16),
(11, 9, 19),
(10, 9, 26),
(12, 10, 20),
(13, 10, 22),
(25, 10, 40),
(14, 11, 21),
(15, 11, 23),
(24, 11, 39),
(16, 13, 29),
(17, 13, 31),
(27, 13, 42),
(19, 14, 30),
(18, 14, 32),
(26, 14, 41),
(20, 15, 33),
(21, 15, 34);

-- --------------------------------------------------------

--
-- Table structure for table `cms_placeholder`
--

CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_placeholder`
--

INSERT INTO `cms_placeholder` (`id`, `slot`, `default_width`) VALUES
(1, 'clipboard', NULL),
(2, 'navbar', NULL),
(3, 'navbar', NULL),
(4, 'Footer', NULL),
(5, 'Footer', NULL),
(6, 'content', NULL),
(8, 'navbar', NULL),
(14, 'service', NULL),
(15, 'content', NULL),
(16, 'service', NULL),
(19, 'navbar', NULL),
(20, 'navbar', NULL),
(21, 'navbar', NULL),
(22, 'service', NULL),
(23, 'service', NULL),
(26, 'service', NULL),
(27, 'content', NULL),
(28, 'service', NULL),
(29, 'navbar', NULL),
(30, 'navbar', NULL),
(31, 'map', NULL),
(32, 'map', NULL),
(33, 'navbar', NULL),
(34, 'map', NULL),
(35, 'Footer_content', NULL),
(36, 'Footer', NULL),
(37, 'Footer', NULL),
(38, 'Footer_content', NULL),
(39, 'Footer_content', NULL),
(40, 'Footer_content', NULL),
(41, 'Footer_content', NULL),
(42, 'Footer_content', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_placeholderreference`
--

CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_staticplaceholder`
--

CREATE TABLE `cms_staticplaceholder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_staticplaceholder`
--

INSERT INTO `cms_staticplaceholder` (`id`, `name`, `code`, `dirty`, `creation_method`, `draft_id`, `public_id`, `site_id`) VALUES
(1, '', 'Footer', 0, 'template', 4, 5, 1),
(2, '', 'Footer', 0, 'template', 36, 37, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_title`
--

CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_title`
--

INSERT INTO `cms_title` (`id`, `language`, `title`, `page_title`, `menu_title`, `meta_description`, `slug`, `path`, `has_url_overwrite`, `redirect`, `creation_date`, `published`, `publisher_is_draft`, `publisher_state`, `page_id`, `publisher_public_id`) VALUES
(1, 'en', 'Home', 'Boubyan Bank | Most Innovative Digital Bank', 'Boubyan Bank | Most Innovative Digital Bank', '', 'home', '', 0, NULL, '2021-12-04 23:28:20.328000', 1, 1, 0, 1, 2),
(2, 'en', 'Home', 'Boubyan Bank | Most Innovative Digital Bank', 'Boubyan Bank | Most Innovative Digital Bank', '', 'home', '', 0, NULL, '2021-12-04 23:28:20.328000', 1, 0, 0, 2, 1),
(3, 'en', 'Page Types', NULL, NULL, NULL, 'page_types', 'page_types', 0, NULL, '2021-12-05 12:04:00.400000', 0, 1, 1, 3, NULL),
(5, 'en', 'home', 'Boubyan Bank | Most Innovative Digital Bank', 'Home', '', 'home', 'page_types/home', 0, '/', '2021-12-05 12:27:14.366000', 0, 1, 1, 5, NULL),
(9, 'en', 'service', 'Explore Boubyan | Boubyan Bank', 'Service', '', 'service', 'page_types/service', 0, '/service/', '2021-12-05 14:44:49.032000', 0, 1, 1, 9, NULL),
(10, 'en', 'Service', 'Service | Boubyan Bank', 'Service | Boubyan Bank', '', 'service', 'service', 0, NULL, '2021-12-05 15:48:17.640000', 1, 1, 0, 10, 11),
(11, 'en', 'Service', 'Service | Boubyan Bank', 'Service | Boubyan Bank', '', 'service', 'service', 0, NULL, '2021-12-05 15:48:17.640000', 1, 0, 0, 11, 10),
(13, 'en', 'Map', 'Branches | Boubyan Bank', 'Map', '', 'map', 'map', 0, NULL, '2021-12-05 23:18:49.263000', 1, 1, 0, 13, 14),
(14, 'en', 'Map', 'Branches | Boubyan Bank', 'Map', '', 'map', 'map', 0, NULL, '2021-12-05 23:18:49.263000', 1, 0, 0, 14, 13),
(15, 'en', 'map', '', '', '', 'map', 'page_types/map', 0, '/map/', '2021-12-05 23:56:14.804000', 0, 1, 1, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_treenode`
--

CREATE TABLE `cms_treenode` (
  `id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `depth` int(10) UNSIGNED NOT NULL,
  `numchild` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_treenode`
--

INSERT INTO `cms_treenode` (`id`, `path`, `depth`, `numchild`, `parent_id`, `site_id`) VALUES
(1, '0001', 1, 0, NULL, 1),
(2, '0002', 1, 3, NULL, 1),
(4, '00020001', 2, 0, 2, 1),
(8, '00020002', 2, 0, 2, 1),
(9, '0003', 1, 0, NULL, 1),
(11, '0004', 1, 0, NULL, 1),
(12, '00020003', 2, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_urlconfrevision`
--

CREATE TABLE `cms_urlconfrevision` (
  `id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_urlconfrevision`
--

INSERT INTO `cms_urlconfrevision` (`id`, `revision`) VALUES
(1, 'd00e4bb7-63c3-41dc-a300-1ebba60c64f0');

-- --------------------------------------------------------

--
-- Table structure for table `cms_usersettings`
--

CREATE TABLE `cms_usersettings` (
  `id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_usersettings`
--

INSERT INTO `cms_usersettings` (`id`, `language`, `clipboard_id`, `user_id`) VALUES
(1, 'en', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_file_file`
--

CREATE TABLE `djangocms_file_file` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `file_src_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_file_folder`
--

CREATE TABLE `djangocms_file_folder` (
  `template` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `folder_src_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_googlemap_googlemap`
--

CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zoom` smallint(5) UNSIGNED NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  `fullscreen_control` tinyint(1) NOT NULL,
  `map_type_control` varchar(255) NOT NULL,
  `rotate_control` tinyint(1) NOT NULL,
  `scale_control` tinyint(1) NOT NULL,
  `template` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `djangocms_googlemap_googlemap`
--

INSERT INTO `djangocms_googlemap_googlemap` (`cmsplugin_ptr_id`, `title`, `zoom`, `lat`, `lng`, `width`, `height`, `scrollwheel`, `double_click_zoom`, `draggable`, `keyboard_shortcuts`, `pan_control`, `zoom_control`, `street_view_control`, `style`, `fullscreen_control`, `map_type_control`, `rotate_control`, `scale_control`, `template`) VALUES
(377, 'our main branch', 13, 29.362924711689214, 47.96121804670517, '100%', '400px', 1, 1, 1, 1, 1, 1, 1, '', 1, 'ROADMAP', 1, 1, 'default'),
(996, 'our main branch', 13, 29.362924711689214, 47.96121804670517, '100%', '400px', 1, 1, 1, 1, 1, 1, 1, '', 1, 'ROADMAP', 1, 1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_googlemap_googlemapmarker`
--

CREATE TABLE `djangocms_googlemap_googlemapmarker` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `show_content` tinyint(1) NOT NULL,
  `info_content` longtext NOT NULL,
  `icon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_googlemap_googlemaproute`
--

CREATE TABLE `djangocms_googlemap_googlemaproute` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_mode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_icon_icon`
--

CREATE TABLE `djangocms_icon_icon` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_link_link`
--

CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `file_link_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_picture_picture`
--

CREATE TABLE `djangocms_picture_picture` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_url` varchar(2040) DEFAULT NULL,
  `alignment` varchar(255) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `caption_text` longtext DEFAULT NULL,
  `link_attributes` longtext NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `external_picture` varchar(255) DEFAULT NULL,
  `template` varchar(255) NOT NULL,
  `use_responsive_image` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_snippet_snippet`
--

CREATE TABLE `djangocms_snippet_snippet` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `djangocms_snippet_snippet`
--

INSERT INTO `djangocms_snippet_snippet` (`id`, `name`, `html`, `template`, `slug`) VALUES
(1, 'navbar', '<style type=\'text/css\'>\r\n.bg-light{\r\n   background-color: #d5d8db !important;\r\n}\r\n#service_image img{\r\n    border-radius: 10%;\r\n}\r\n#video_introduction iframe{\r\n    width:100% !important;\r\n       height:200% !important;\r\n}\r\n</style>\r\n\r\n\r\n    <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n      <a class=\"navbar-brand\" href=\"/\">Boubyn Bank</a>\r\n      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n        <span class=\"navbar-toggler-icon\"></span>\r\n      </button>\r\n    \r\n      <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n        <ul class=\"navbar-nav mr-auto\">\r\n      \r\n          <li class=\"nav-item\">\r\n            <a class=\"nav-link\" href=\"/\">Home</a>\r\n          </li>\r\n    \r\n          \r\n          <li class=\"nav-item\">\r\n            <a class=\"nav-link\" href=\"/service\">Service</a>\r\n          </li>\r\n          <li class=\"nav-item\">\r\n            <a class=\"nav-link\" href=\"/map\">Map</a>\r\n          </li>\r\n        </ul>\r\n       \r\n      </div>\r\n    </nav>', '', 'navbar');

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_snippet_snippetptr`
--

CREATE TABLE `djangocms_snippet_snippetptr` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `snippet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `djangocms_snippet_snippetptr`
--

INSERT INTO `djangocms_snippet_snippetptr` (`cmsplugin_ptr_id`, `snippet_id`) VALUES
(558, 1),
(934, 1);

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_style_style`
--

CREATE TABLE `djangocms_style_style` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `padding_left` smallint(5) UNSIGNED DEFAULT NULL,
  `padding_right` smallint(5) UNSIGNED DEFAULT NULL,
  `padding_top` smallint(5) UNSIGNED DEFAULT NULL,
  `padding_bottom` smallint(5) UNSIGNED DEFAULT NULL,
  `margin_left` smallint(5) UNSIGNED DEFAULT NULL,
  `margin_right` smallint(5) UNSIGNED DEFAULT NULL,
  `margin_top` smallint(5) UNSIGNED DEFAULT NULL,
  `margin_bottom` smallint(5) UNSIGNED DEFAULT NULL,
  `additional_classes` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `id_name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `djangocms_style_style`
--

INSERT INTO `djangocms_style_style` (`cmsplugin_ptr_id`, `class_name`, `tag_type`, `padding_left`, `padding_right`, `padding_top`, `padding_bottom`, `margin_left`, `margin_right`, `margin_top`, `margin_bottom`, `additional_classes`, `attributes`, `id_name`, `label`, `template`) VALUES
(2, 'container', 'footer', NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, '', '{}', 'footer_cms', 'Footer', 'default'),
(6, 'container', 'div', NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, '', '{}', '', 'Welcome', 'default'),
(77, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}', '', 'carousel', 'default'),
(84, 'container', 'div', NULL, NULL, 20, 10, NULL, NULL, NULL, NULL, '', '{}', '', 'header', 'default'),
(95, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, '', '{}', '', 'service 1', 'default'),
(115, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}', '', 'carousel', 'default'),
(141, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', 'service_image', 'service 1', 'default'),
(159, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, '', '{}', '', '', 'default'),
(167, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, '', '{}', '', '', 'default'),
(256, 'content', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', '', 'asdsad', 'default'),
(257, 'content', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', '', 'asdsad', 'default'),
(258, 'content', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', '', 'asdsad', 'default'),
(373, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', '', 'map', 'default'),
(378, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', '', 'office', 'default'),
(669, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 50, '', '{}', 'video_introduction', 'video', 'default'),
(728, 'container', 'footer', NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, '', '{}', 'footer_cms', 'Footer', 'default'),
(732, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 120, 20, '', '{}', '', 'fooer', 'default'),
(913, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', 'service_image', 'service 1', 'default'),
(920, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, '', '{}', '', '', 'default'),
(927, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, '', '{}', '', '', 'default'),
(935, 'container', 'div', NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, '', '{}', '', 'Welcome', 'default'),
(944, 'content', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', '', 'asdsad', 'default'),
(952, 'content', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', '', 'asdsad', 'default'),
(960, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}', '', 'carousel', 'default'),
(968, 'container', 'div', NULL, NULL, 20, 10, NULL, NULL, NULL, NULL, '', '{}', '', 'header', 'default'),
(972, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 50, '', '{}', 'video_introduction', 'video', 'default'),
(976, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, '', '{}', '', 'service 1', 'default'),
(989, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 120, 20, '', '{}', '', 'fooer', 'default'),
(993, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', '', 'map', 'default'),
(1000, 'container', 'div', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, '', '{}', '', 'office', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_text_ckeditor_text`
--

CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `djangocms_text_ckeditor_text`
--

INSERT INTO `djangocms_text_ckeditor_text` (`cmsplugin_ptr_id`, `body`) VALUES
(5, '<p> </p>\n\n<p>© Copyright 2021. Boubyan Bank. All Rights Reserved</p>'),
(9, '<h1><small><strong><big>Welcome To Boubyan</big></strong></small></h1>'),
(21, '<p>lorem ipsum lorem ipsum lorem ipsum</p>\n\n<p><cms-plugin alt=\"Link / Button - 399 \" title=\"Link / Button - 399\" id=\"399\"></cms-plugin></p>'),
(101, '<h1><big><strong>Open your Boubyan Account anytime, </strong></big></h1>\n\n<h1><big><strong>anywhere!</strong></big></h1>\n\n<h4>Become a customer and open an account directly through the Boubyan App without the need to visit a branch!</h4>\n\n<p><cms-plugin alt=\"Link / Button - 102 \" title=\"Link / Button - 102\" id=\"102\"></cms-plugin></p>\n\n<p> </p>\n\n<div class=\"owl-stage-outer\">\n<div class=\"owl-stage\" style=\"\"> </div>\n</div>\n\n<p> </p>\n\n<p> </p>\n\n<div class=\"owl-dots\"> </div>\n\n<div class=\"container\">\n<div class=\"Msa3adFirstChatSpace \" style=\"width: 298px; height: 80px; margin-top: 0; margin-right: 0;\">\n<section class=\"Msa3adFirstChatSpaceSection \">\n<ul class=\"Msa3ad__messages_FirstChatSpace\">\n</ul>\n</section>\n</div>\n</div>'),
(113, '<h1><strong><big>Tap and Win using Boubyan Credit Cards</big></strong></h1>\n\n<h3 style=\"color: #aaaaaa; font-style: italic;\">Use your Boubyan Bank credit card or prepaid card locally and internationally to get chances to be a winner in our Mega Draw</h3>\n\n<p><cms-plugin alt=\"Link / Button - 114 \" title=\"Link / Button - 114\" id=\"114\"></cms-plugin></p>\n\n<p> </p>\n\n<div class=\"owl-stage-outer\">\n<div class=\"owl-stage\" style=\"\"> </div>\n</div>\n\n<p> </p>\n\n<p> </p>\n\n<div class=\"owl-dots\"> </div>\n\n<div class=\"container\">\n<div class=\"Msa3adFirstChatSpace \" style=\"width: 298px; height: 80px; margin-top: 0; margin-right: 0;\">\n<section class=\"Msa3adFirstChatSpaceSection \">\n<ul class=\"Msa3ad__messages_FirstChatSpace\">\n</ul>\n</section>\n</div>\n</div>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"height: 22px; width: 22px;\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>'),
(145, '<h1><strong>Open your Boubyan Account anytime,</strong></h1>\n\n<h1><strong>anywhere!</strong></h1>\n\n<p><big>Become a customer and open an account directly through the Boubyan App without the need to visit a branch! </big></p>\n\n<p><cms-plugin alt=\"Link / Button - 146 \" title=\"Link / Button - 146\" id=\"146\"></cms-plugin></p>'),
(157, '<h1><strong>Tap and Win using Boubyan Credit Cards</strong></h1>\n\n<p><big>Use your Boubyan Bank credit card or prepaid card locally and internationally to get chances to be a winner in our Mega Draw</big></p>\n\n<p> </p>\n\n<p><cms-plugin alt=\"Link / Button - 158 \" title=\"Link / Button - 158\" id=\"158\"></cms-plugin></p>'),
(172, '<h1>The New Boubyan Rewards Program</h1>\n\n<p><big>Enjoy a world of rewards with the best credit card rewards program in Kuwait</big></p>\n\n<p><cms-plugin alt=\"Link / Button - 173 \" title=\"Link / Button - 173\" id=\"173\"></cms-plugin></p>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"height: 22px; width: 22px;\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>'),
(246, '<p>lorem ipsum lorem ipsum lorem ipsum</p>\n\n<p><cms-plugin alt=\"Link / Button - 400 \" title=\"Link / Button - 400\" id=\"400\"></cms-plugin></p>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"height: 22px; width: 22px;\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>'),
(253, '<p>lorem ipsum lorem ipsum lorem ipsum</p>\n\n<p><cms-plugin alt=\"Link / Button - 398 \" title=\"Link / Button - 398\" id=\"398\"></cms-plugin></p>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>'),
(384, '<h1><span style=\"color: #54585a;\"><strong>Branches</strong></span></h1>\n\n<h2><span style=\"color: #54585a;\">We serve you wherever you are</span></h2>\n\n<p>Our large network of 43 branches are located in various areas of Kuwait giving you access to a comfortable banking experience. In addition, Boubyan Bank\'s online presence offers a wide range of services. </p>\n\n<p>You can now use Boubyan\'s Appointment Booking Service for a safe and convenient way to visit our branches. Check out the map to locate your nearest Boubyan Bank branch.</p>\n\n<p><cms-plugin alt=\"Link / Button - 385 \" title=\"Link / Button - 385\" id=\"385\"></cms-plugin></p>'),
(731, '<p> </p>\n\n<p>© Copyright 2021. Boubyan Bank. All Rights Reserved</p>'),
(735, '<p> </p>\n\n<p>© Copyright 2021. Boubyan Bank. All Rights Reserved</p>'),
(918, '<h1><strong>Open your Boubyan Account anytime,</strong></h1>\n\n<h1><strong>anywhere!</strong></h1>\n\n<p><big>Become a customer and open an account directly through the Boubyan App without the need to visit a branch! </big></p>\n\n<p><cms-plugin alt=\"Link / Button - 919 \" title=\"Link / Button - 919\" id=\"919\"></cms-plugin></p>'),
(925, '<h1><strong>Tap and Win using Boubyan Credit Cards</strong></h1>\n\n<p><big>Use your Boubyan Bank credit card or prepaid card locally and internationally to get chances to be a winner in our Mega Draw</big></p>\n\n<p> </p>\n\n<p><cms-plugin alt=\"Link / Button - 926 \" title=\"Link / Button - 926\" id=\"926\"></cms-plugin></p>'),
(932, '<h1>The New Boubyan Rewards Program</h1>\n\n<p><big>Enjoy a world of rewards with the best credit card rewards program in Kuwait</big></p>\n\n<p><cms-plugin alt=\"Link / Button - 933 \" title=\"Link / Button - 933\" id=\"933\"></cms-plugin></p>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"height: 22px; width: 22px;\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>'),
(942, '<p>lorem ipsum lorem ipsum lorem ipsum</p>\n\n<p><cms-plugin alt=\"Link / Button - 943 \" title=\"Link / Button - 943\" id=\"943\"></cms-plugin></p>'),
(950, '<p>lorem ipsum lorem ipsum lorem ipsum</p>\n\n<p><cms-plugin alt=\"Link / Button - 951 \" title=\"Link / Button - 951\" id=\"951\"></cms-plugin></p>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"height: 22px; width: 22px;\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>'),
(958, '<p>lorem ipsum lorem ipsum lorem ipsum</p>\n\n<p><cms-plugin alt=\"Link / Button - 959 \" title=\"Link / Button - 959\" id=\"959\"></cms-plugin></p>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>'),
(971, '<h1><small><strong><big>Welcome To Boubyan</big></strong></small></h1>'),
(981, '<h1><big><strong>Open your Boubyan Account anytime, </strong></big></h1>\n\n<h1><big><strong>anywhere!</strong></big></h1>\n\n<h4>Become a customer and open an account directly through the Boubyan App without the need to visit a branch!</h4>\n\n<p><cms-plugin alt=\"Link / Button - 982 \" title=\"Link / Button - 982\" id=\"982\"></cms-plugin></p>\n\n<p> </p>\n\n<div class=\"owl-stage-outer\">\n<div class=\"owl-stage\" style=\"\"> </div>\n</div>\n\n<p> </p>\n\n<p> </p>\n\n<div class=\"owl-dots\"> </div>\n\n<div class=\"container\">\n<div class=\"Msa3adFirstChatSpace \" style=\"width: 298px; height: 80px; margin-top: 0; margin-right: 0;\">\n<section class=\"Msa3adFirstChatSpaceSection \">\n<ul class=\"Msa3ad__messages_FirstChatSpace\">\n</ul>\n</section>\n</div>\n</div>'),
(987, '<h1><strong><big>Tap and Win using Boubyan Credit Cards</big></strong></h1>\n\n<h3 style=\"color: #aaaaaa; font-style: italic;\">Use your Boubyan Bank credit card or prepaid card locally and internationally to get chances to be a winner in our Mega Draw</h3>\n\n<p><cms-plugin alt=\"Link / Button - 988 \" title=\"Link / Button - 988\" id=\"988\"></cms-plugin></p>\n\n<p> </p>\n\n<div class=\"owl-stage-outer\">\n<div class=\"owl-stage\" style=\"\"> </div>\n</div>\n\n<p> </p>\n\n<p> </p>\n\n<div class=\"owl-dots\"> </div>\n\n<div class=\"container\">\n<div class=\"Msa3adFirstChatSpace \" style=\"width: 298px; height: 80px; margin-top: 0; margin-right: 0;\">\n<section class=\"Msa3adFirstChatSpaceSection \">\n<ul class=\"Msa3ad__messages_FirstChatSpace\">\n</ul>\n</section>\n</div>\n</div>\n\n<div id=\"simple-translate\">\n<div>\n<div class=\"simple-translate-button isShow\" style=\"height: 22px; width: 22px;\"> </div>\n\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; font-size: 13px; background-color: rgb(255, 255, 255);\">\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\n<div class=\"simple-translate-move\" draggable=\"true\"> </div>\n\n<div class=\"simple-translate-result-contents\">\n<p class=\"simple-translate-result\" dir=\"auto\" style=\"color: rgb(0, 0, 0);\"> </p>\n\n<p class=\"simple-translate-candidate\" dir=\"auto\" style=\"color: rgb(115, 115, 115);\"> </p>\n</div>\n</div>\n</div>\n</div>\n</div>'),
(992, '<p> </p>\n\n<p>© Copyright 2021. Boubyan Bank. All Rights Reserved</p>'),
(998, '<h1><span style=\"color: #54585a;\"><strong>Branches</strong></span></h1>\n\n<h2><span style=\"color: #54585a;\">We serve you wherever you are</span></h2>\n\n<p>Our large network of 43 branches are located in various areas of Kuwait giving you access to a comfortable banking experience. In addition, Boubyan Bank\'s online presence offers a wide range of services. </p>\n\n<p>You can now use Boubyan\'s Appointment Booking Service for a safe and convenient way to visit our branches. Check out the map to locate your nearest Boubyan Bank branch.</p>\n\n<p><cms-plugin alt=\"Link / Button - 999 \" title=\"Link / Button - 999\" id=\"999\"></cms-plugin></p>');

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_video_videoplayer`
--

CREATE TABLE `djangocms_video_videoplayer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `parameters` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `djangocms_video_videoplayer`
--

INSERT INTO `djangocms_video_videoplayer` (`cmsplugin_ptr_id`, `embed_link`, `poster_id`, `attributes`, `label`, `template`, `parameters`) VALUES
(672, '//www.youtube.com/embed/X0Bi4uj9rts', NULL, '{}', 'introduction', 'default', '{}'),
(975, '//www.youtube.com/embed/X0Bi4uj9rts', NULL, '{}', 'introduction', 'default', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_video_videosource`
--

CREATE TABLE `djangocms_video_videosource` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `text_title` varchar(255) NOT NULL,
  `text_description` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `source_file_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_video_videotrack`
--

CREATE TABLE `djangocms_video_videotrack` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `srclang` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `src_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-12-05 10:45:04.882000', '15', 'card group 1', 3, '', 34, 1),
(2, '2021-12-05 10:47:27.731000', '17', 'card 1', 3, '', 34, 1),
(3, '2021-12-05 10:47:45.690000', '18', '18', 3, '', 52, 1),
(4, '2021-12-05 10:49:24.486000', '1', 'digital-marketing-courses.webp', 3, '', 26, 1),
(5, '2021-12-05 10:55:24.017000', '2', '٢٠٢٠٠٧١٢_١٨٥٠٢٤.jpg', 3, '', 29, 1),
(6, '2021-12-05 11:00:25.421000', '13', '13', 3, '', 61, 1),
(7, '2021-12-05 11:00:36.010000', '12', '12', 3, '', 61, 1),
(8, '2021-12-05 11:02:02.898000', '38', '(Card) 14', 3, '', 11, 1),
(9, '2021-12-05 11:02:30.095000', '45', '45', 3, '', 51, 1),
(10, '2021-12-05 11:08:02.756000', '1', 'home content', 3, '', 34, 1),
(11, '2021-12-05 11:15:49.289000', '76', 'Home', 3, '', 34, 1),
(12, '2021-12-05 11:16:42.254000', '2', 'navbar', 3, '', 1, 1),
(13, '2021-12-05 12:04:00.623000', '4', 'test', 1, '[{\"added\": {}}]', 21, 1),
(14, '2021-12-05 12:04:53.944000', '4', 'test', 3, '', 21, 1),
(15, '2021-12-05 12:06:29.914000', '88', '88', 3, '', 55, 1),
(16, '2021-12-05 12:27:14.465000', '5', 'home', 1, '[{\"added\": {}}]', 21, 1),
(17, '2021-12-05 12:28:09.848000', '6', 'service', 1, '[{\"added\": {}}]', 21, 1),
(18, '2021-12-05 12:32:00.541000', '91', '91', 3, '', 55, 1),
(19, '2021-12-05 12:37:15.184000', '85', 'navbar', 3, '', 47, 1),
(20, '2021-12-05 12:45:43.105000', '7', 'home 2', 1, '[{\"added\": {}}]', 2, 1),
(21, '2021-12-05 12:47:40.911000', '7', 'home 2', 2, '[{\"changed\": {\"fields\": [\"xframe_options\"]}}]', 2, 1),
(22, '2021-12-05 12:48:48.458000', '7', 'service', 2, '[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]', 2, 1),
(23, '2021-12-05 12:54:58.712000', '7', 'service', 3, '', 2, 1),
(24, '2021-12-05 13:42:24.975000', '99', '99', 3, '', 64, 1),
(25, '2021-12-05 14:19:28.970000', '118', '118', 3, '', 61, 1),
(26, '2021-12-05 14:28:19.586000', '1', 'home', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(27, '2021-12-05 14:31:09.845000', '1', 'home', 2, '[{\"changed\": {\"fields\": [\"xframe_options\"]}}]', 2, 1),
(28, '2021-12-05 14:31:43.850000', '1', 'home', 2, '[{\"changed\": {\"fields\": [\"template\", \"xframe_options\"]}}]', 2, 1),
(29, '2021-12-05 14:32:27.009000', '1', 'home', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(30, '2021-12-05 14:35:43.308000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"template\", \"xframe_options\"]}}]', 2, 1),
(31, '2021-12-05 14:36:40.603000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 2, 1),
(32, '2021-12-05 14:37:09.585000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(33, '2021-12-05 14:41:16.477000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(34, '2021-12-05 14:43:08.411000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(35, '2021-12-05 14:43:59.514000', '6', 'service', 3, '', 21, 1),
(36, '2021-12-05 14:44:49.138000', '9', 'service', 1, '[{\"added\": {}}]', 21, 1),
(37, '2021-12-05 14:45:16.352000', '9', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"template\", \"xframe_options\"]}}]', 21, 1),
(38, '2021-12-05 14:50:45.107000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(39, '2021-12-05 14:52:11.083000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(40, '2021-12-05 14:53:22.084000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(41, '2021-12-05 14:53:50.944000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(42, '2021-12-05 15:00:20.926000', '1', 'home', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(43, '2021-12-05 15:02:05.634000', '1', 'home', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 2, 1),
(44, '2021-12-05 15:26:29.888000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"xframe_options\"]}}]', 2, 1),
(45, '2021-12-05 15:35:18.875000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"xframe_options\"]}}]', 2, 1),
(46, '2021-12-05 15:39:44.091000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"page_title\", \"meta_description\"]}}]', 2, 1),
(47, '2021-12-05 15:39:58.195000', '8', 'service', 2, '[{\"changed\": {\"fields\": [\"xframe_options\"]}}]', 2, 1),
(48, '2021-12-05 15:47:53.677000', '8', 'service', 3, '', 2, 1),
(49, '2021-12-05 15:48:17.812000', '10', 'service', 1, '[{\"added\": {}}]', 2, 1),
(50, '2021-12-05 15:48:42.573000', '10', 'service', 2, '[{\"changed\": {\"fields\": [\"template\", \"xframe_options\"]}}]', 2, 1),
(51, '2021-12-05 15:49:10.407000', '10', 'service', 2, '', 2, 1),
(52, '2021-12-05 16:19:41.644000', '10', 'service', 2, '', 2, 1),
(53, '2021-12-05 16:20:04.061000', '10', 'service', 2, 'The English page \"service\" was successfully unpublished', 2, 1),
(54, '2021-12-05 16:20:14.769000', '10', 'service', 2, '', 2, 1),
(55, '2021-12-05 16:37:10.208000', '10', 'service', 2, '[{\"changed\": {\"fields\": [\"overwrite_url\", \"xframe_options\"]}}]', 2, 1),
(56, '2021-12-05 16:37:43.340000', '10', 'service', 2, '[{\"changed\": {\"fields\": [\"overwrite_url\", \"redirect\", \"xframe_options\"]}}]', 2, 1),
(57, '2021-12-05 16:39:03.104000', '10', 'service', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"template\", \"xframe_options\"]}}]', 2, 1),
(58, '2021-12-05 16:41:28.557000', '10', 'service', 2, '[{\"changed\": {\"fields\": [\"template\", \"soft_root\", \"xframe_options\"]}}]', 2, 1),
(59, '2021-12-05 17:02:14.655000', '10', 'service', 2, '', 2, 1),
(60, '2021-12-05 17:02:46.061000', '12', 'home 2', 3, '', 2, 1),
(61, '2021-12-05 17:02:56.558000', '10', 'service', 2, '[{\"changed\": {\"fields\": [\"soft_root\", \"xframe_options\"]}}]', 2, 1),
(62, '2021-12-05 17:04:19.588000', '10', 'service', 2, '[{\"changed\": {\"fields\": [\"xframe_options\"]}}]', 2, 1),
(63, '2021-12-05 17:06:29.914000', '10', 'service', 2, '', 2, 1),
(64, '2021-12-05 17:09:55.076000', '10', 'service', 2, 'The English page \"service\" was successfully unpublished', 2, 1),
(65, '2021-12-05 17:10:10.045000', '10', 'service', 2, '', 2, 1),
(66, '2021-12-05 21:11:36.416000', '1', 'Footer', 1, '[{\"added\": {}}]', 45, 1),
(67, '2021-12-05 21:22:25.517000', '1', 'Footer', 2, '[]', 45, 1),
(68, '2021-12-05 22:16:45.385000', '176', 'navbar', 3, '', 47, 1),
(69, '2021-12-05 22:23:15.027000', '58', '58', 3, '', 61, 1),
(70, '2021-12-05 22:23:27.104000', '65', '65', 3, '', 61, 1),
(71, '2021-12-05 22:33:19.193000', '200', 'card space', 3, '', 47, 1),
(72, '2021-12-05 22:33:58.587000', '186', '186', 3, '', 61, 1),
(73, '2021-12-05 22:34:09.292000', '193', '193', 3, '', 61, 1),
(74, '2021-12-05 22:34:37.021000', '187', '187', 3, '', 51, 1),
(75, '2021-12-05 22:37:47.553000', '207', '207', 3, '', 51, 1),
(76, '2021-12-05 22:48:20.097000', '220', '220', 3, '', 61, 1),
(77, '2021-12-05 22:48:29.021000', '227', '227', 3, '', 61, 1),
(78, '2021-12-05 22:52:07.502000', '255', '255', 3, '', 73, 1),
(79, '2021-12-05 23:12:45.662000', '263', '263', 3, '', 64, 1),
(80, '2021-12-05 23:13:30.908000', '1', 'home', 2, '', 2, 1),
(81, '2021-12-05 23:14:00.765000', '262', 'introduction', 3, '', 39, 1),
(82, '2021-12-05 23:17:04.372000', '259', 'video', 3, '', 47, 1),
(83, '2021-12-05 23:18:01.392000', '1', 'home', 2, '', 2, 1),
(84, '2021-12-05 23:20:41.577000', '13', 'Map', 2, '[{\"changed\": {\"fields\": [\"menu_title\", \"page_title\"]}}]', 2, 1),
(85, '2021-12-05 23:21:49.891000', '13', 'Map', 2, '[{\"changed\": {\"fields\": [\"template\", \"xframe_options\"]}}]', 2, 1),
(86, '2021-12-05 23:21:55.962000', '13', 'Map', 2, '', 2, 1),
(87, '2021-12-05 23:35:30.717000', '381', '381', 3, '', 64, 1),
(88, '2021-12-05 23:43:48.844000', '13', 'Map', 2, '', 2, 1),
(89, '2021-12-05 23:47:18.782000', '1', 'Footer', 3, '', 45, 1),
(90, '2021-12-05 23:54:31.542000', '1', 'home', 2, '', 2, 1),
(91, '2021-12-05 23:56:14.849000', '15', 'map', 1, '[{\"added\": {}}]', 21, 1),
(92, '2021-12-05 23:56:27.803000', '15', 'map', 2, '[]', 21, 1),
(93, '2021-12-05 23:56:56.861000', '15', 'map', 2, '[{\"changed\": {\"fields\": [\"template\", \"xframe_options\"]}}]', 21, 1),
(94, '2021-12-05 23:57:29.895000', '15', 'map', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 21, 1),
(95, '2021-12-05 23:59:50.805000', '5', 'Home', 2, '[{\"changed\": {\"fields\": [\"menu_title\", \"page_title\"]}}]', 21, 1),
(96, '2021-12-06 00:00:18.987000', '5', 'Home', 2, '[{\"changed\": {\"fields\": [\"redirect\", \"xframe_options\"]}}]', 21, 1),
(97, '2021-12-06 00:00:47.810000', '10', 'service', 2, '', 2, 1),
(98, '2021-12-06 00:05:49.598000', '9', 'Service', 2, '[{\"changed\": {\"fields\": [\"menu_title\", \"page_title\"]}}]', 21, 1),
(99, '2021-12-06 11:20:43.805702', '1', 'Boubyan Bank | Most Innovative Digital Bank', 2, '[{\"changed\": {\"fields\": [\"title\", \"slug\", \"menu_title\"]}}]', 2, 1),
(100, '2021-12-06 11:23:35.567211', '10', 'Service | Boubyan Bank', 2, '[{\"changed\": {\"fields\": [\"title\", \"slug\", \"menu_title\", \"page_title\"]}}]', 2, 1),
(101, '2021-12-06 11:27:51.847905', '1', 'Boubyan Bank | Most Innovative Digital Bank', 2, '[{\"changed\": {\"fields\": [\"page_title\"]}}]', 2, 1),
(102, '2021-12-06 11:28:02.279449', '1', 'Home', 2, '', 2, 1),
(103, '2021-12-06 11:29:14.293289', '10', 'Service | Boubyan Bank', 2, '[{\"changed\": {\"fields\": [\"page_title\"]}}]', 2, 1),
(104, '2021-12-06 11:29:20.084218', '10', 'Service', 2, '', 2, 1),
(105, '2021-12-06 11:30:22.820017', '13', 'Map', 2, '[]', 2, 1),
(106, '2021-12-06 11:30:27.476824', '13', 'Map', 2, '', 2, 1),
(107, '2021-12-06 11:32:27.635287', '1', 'boubyan.bankboubyan.com/', 2, '[{\"changed\": {\"fields\": [\"domain\", \"name\"]}}]', 3, 1),
(108, '2021-12-06 11:33:28.828629', '1', 'footer', 1, '[{\"added\": {}}]', 45, 1),
(109, '2021-12-06 11:35:38.086686', '1', 'footer', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(110, '2021-12-06 11:36:30.499163', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"name\", \"slug\"]}}]', 45, 1),
(111, '2021-12-06 11:37:47.018956', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(112, '2021-12-06 11:39:00.263478', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(113, '2021-12-06 11:41:16.136290', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(114, '2021-12-06 11:41:39.385101', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(115, '2021-12-06 11:45:23.392712', '1', 'Home', 2, '', 2, 1),
(116, '2021-12-06 11:45:44.341230', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(117, '2021-12-06 11:46:33.892417', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(118, '2021-12-06 11:50:57.165168', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(119, '2021-12-06 11:51:59.463691', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(120, '2021-12-06 11:52:20.526715', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(121, '2021-12-06 11:58:54.018783', '1', 'Home', 2, '', 2, 1),
(122, '2021-12-06 12:07:15.072847', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(123, '2021-12-06 12:07:36.215038', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(124, '2021-12-06 12:12:23.752388', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(125, '2021-12-06 12:13:16.674873', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(126, '2021-12-06 12:15:37.120532', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(127, '2021-12-06 12:21:16.782757', '1', 'Home', 2, '', 2, 1),
(128, '2021-12-06 12:22:43.060011', '1', 'Footer', 2, '[{\"changed\": {\"fields\": [\"site\"]}}]', 17, 1),
(129, '2021-12-06 12:28:36.311567', '1', 'Home', 2, '', 2, 1),
(130, '2021-12-06 12:29:18.273225', '1', 'Home', 2, '', 2, 1),
(131, '2021-12-06 12:30:22.913352', '1', 'Home', 2, '', 2, 1),
(132, '2021-12-06 12:32:48.156777', '1', 'navbar', 2, '[{\"changed\": {\"fields\": [\"html\"]}}]', 45, 1),
(133, '2021-12-06 12:35:10.797372', '10', 'Service', 2, '', 2, 1),
(134, '2021-12-06 12:35:37.675227', '1', 'navbar', 2, '[]', 45, 1),
(135, '2021-12-06 14:00:45.871594', '1', 'Home', 2, '', 2, 1),
(136, '2021-12-06 14:05:33.884643', '13', 'Map', 2, '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'auth', 'user'),
(49, 'bootstrap4_alerts', 'bootstrap4alerts'),
(50, 'bootstrap4_badge', 'bootstrap4badge'),
(51, 'bootstrap4_card', 'bootstrap4card'),
(52, 'bootstrap4_card', 'bootstrap4cardinner'),
(53, 'bootstrap4_carousel', 'bootstrap4carousel'),
(54, 'bootstrap4_carousel', 'bootstrap4carouselslide'),
(55, 'bootstrap4_collapse', 'bootstrap4collapse'),
(56, 'bootstrap4_collapse', 'bootstrap4collapsecontainer'),
(57, 'bootstrap4_collapse', 'bootstrap4collapsetrigger'),
(58, 'bootstrap4_content', 'bootstrap4blockquote'),
(59, 'bootstrap4_content', 'bootstrap4code'),
(60, 'bootstrap4_content', 'bootstrap4figure'),
(61, 'bootstrap4_grid', 'bootstrap4gridcolumn'),
(62, 'bootstrap4_grid', 'bootstrap4gridcontainer'),
(63, 'bootstrap4_grid', 'bootstrap4gridrow'),
(64, 'bootstrap4_jumbotron', 'bootstrap4jumbotron'),
(65, 'bootstrap4_link', 'bootstrap4link'),
(66, 'bootstrap4_listgroup', 'bootstrap4listgroup'),
(67, 'bootstrap4_listgroup', 'bootstrap4listgroupitem'),
(68, 'bootstrap4_media', 'bootstrap4media'),
(69, 'bootstrap4_media', 'bootstrap4mediabody'),
(70, 'bootstrap4_picture', 'bootstrap4picture'),
(71, 'bootstrap4_tabs', 'bootstrap4tab'),
(72, 'bootstrap4_tabs', 'bootstrap4tabitem'),
(73, 'bootstrap4_utilities', 'bootstrap4spacing'),
(11, 'cms', 'aliaspluginmodel'),
(10, 'cms', 'cmsplugin'),
(12, 'cms', 'globalpagepermission'),
(2, 'cms', 'page'),
(13, 'cms', 'pagepermission'),
(21, 'cms', 'pagetype'),
(14, 'cms', 'pageuser'),
(15, 'cms', 'pageusergroup'),
(1, 'cms', 'placeholder'),
(16, 'cms', 'placeholderreference'),
(17, 'cms', 'staticplaceholder'),
(18, 'cms', 'title'),
(22, 'cms', 'treenode'),
(20, 'cms', 'urlconfrevision'),
(19, 'cms', 'usersettings'),
(8, 'contenttypes', 'contenttype'),
(36, 'djangocms_file', 'file'),
(37, 'djangocms_file', 'folder'),
(42, 'djangocms_googlemap', 'googlemap'),
(43, 'djangocms_googlemap', 'googlemapmarker'),
(44, 'djangocms_googlemap', 'googlemaproute'),
(48, 'djangocms_icon', 'icon'),
(35, 'djangocms_link', 'link'),
(38, 'djangocms_picture', 'picture'),
(45, 'djangocms_snippet', 'snippet'),
(46, 'djangocms_snippet', 'snippetptr'),
(47, 'djangocms_style', 'style'),
(34, 'djangocms_text_ckeditor', 'text'),
(39, 'djangocms_video', 'videoplayer'),
(40, 'djangocms_video', 'videosource'),
(41, 'djangocms_video', 'videotrack'),
(31, 'easy_thumbnails', 'source'),
(32, 'easy_thumbnails', 'thumbnail'),
(33, 'easy_thumbnails', 'thumbnaildimensions'),
(24, 'filer', 'clipboard'),
(25, 'filer', 'clipboarditem'),
(26, 'filer', 'file'),
(27, 'filer', 'folder'),
(28, 'filer', 'folderpermission'),
(29, 'filer', 'image'),
(30, 'filer', 'thumbnailoption'),
(23, 'menus', 'cachekey'),
(9, 'sessions', 'session'),
(3, 'sites', 'site');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-06 10:59:47.579444'),
(2, 'auth', '0001_initial', '2021-12-06 10:59:48.103346'),
(3, 'admin', '0001_initial', '2021-12-06 10:59:49.674952'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-12-06 10:59:50.086273'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-06 10:59:50.111283'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-12-06 10:59:50.311277'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-12-06 10:59:50.442283'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-12-06 10:59:50.497274'),
(9, 'auth', '0004_alter_user_username_opts', '2021-12-06 10:59:50.523273'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-12-06 10:59:50.718275'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-12-06 10:59:50.731280'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-12-06 10:59:50.758282'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-12-06 10:59:50.812290'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-12-06 10:59:50.866579'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-12-06 10:59:50.925113'),
(16, 'auth', '0011_update_proxy_permissions', '2021-12-06 10:59:50.956061'),
(17, 'sites', '0001_initial', '2021-12-06 10:59:51.107538'),
(18, 'cms', '0001_initial', '2021-12-06 10:59:51.810533'),
(19, 'cms', '0002_auto_20140816_1918', '2021-12-06 10:59:56.086740'),
(20, 'cms', '0003_auto_20140926_2347', '2021-12-06 10:59:59.378669'),
(21, 'cms', '0004_auto_20140924_1038', '2021-12-06 10:59:59.920109'),
(22, 'cms', '0005_auto_20140924_1039', '2021-12-06 10:59:59.986725'),
(23, 'cms', '0006_auto_20140924_1110', '2021-12-06 11:00:00.645386'),
(24, 'cms', '0007_auto_20141028_1559', '2021-12-06 11:00:00.770389'),
(25, 'cms', '0008_auto_20150208_2149', '2021-12-06 11:00:00.824403'),
(26, 'cms', '0008_auto_20150121_0059', '2021-12-06 11:00:00.905399'),
(27, 'cms', '0009_merge', '2021-12-06 11:00:00.916030'),
(28, 'cms', '0010_migrate_use_structure', '2021-12-06 11:00:01.024567'),
(29, 'cms', '0011_auto_20150419_1006', '2021-12-06 11:00:01.193028'),
(30, 'cms', '0012_auto_20150607_2207', '2021-12-06 11:00:01.983500'),
(31, 'cms', '0013_urlconfrevision', '2021-12-06 11:00:02.083488'),
(32, 'cms', '0014_auto_20160404_1908', '2021-12-06 11:00:02.150487'),
(33, 'cms', '0015_auto_20160421_0000', '2021-12-06 11:00:02.353489'),
(34, 'cms', '0016_auto_20160608_1535', '2021-12-06 11:00:02.845494'),
(35, 'bootstrap4_alerts', '0001_initial', '2021-12-06 11:00:02.977763'),
(36, 'bootstrap4_badge', '0001_initial', '2021-12-06 11:00:03.243796'),
(37, 'bootstrap4_card', '0001_initial', '2021-12-06 11:00:03.649675'),
(38, 'filer', '0001_initial', '2021-12-06 11:00:05.427494'),
(39, 'filer', '0002_auto_20150606_2003', '2021-12-06 11:00:07.990923'),
(40, 'filer', '0003_thumbnailoption', '2021-12-06 11:00:08.091935'),
(41, 'filer', '0004_auto_20160328_1434', '2021-12-06 11:00:08.298921'),
(42, 'filer', '0005_auto_20160623_1425', '2021-12-06 11:00:09.272774'),
(43, 'filer', '0006_auto_20160623_1627', '2021-12-06 11:00:09.518767'),
(44, 'filer', '0007_auto_20161016_1055', '2021-12-06 11:00:09.558767'),
(45, 'filer', '0008_auto_20171117_1313', '2021-12-06 11:00:09.613761'),
(46, 'filer', '0009_auto_20171220_1635', '2021-12-06 11:00:09.774761'),
(47, 'filer', '0010_auto_20180414_2058', '2021-12-06 11:00:10.024782'),
(48, 'filer', '0011_auto_20190418_0137', '2021-12-06 11:00:10.354520'),
(49, 'bootstrap4_carousel', '0001_initial', '2021-12-06 11:00:10.651262'),
(50, 'bootstrap4_carousel', '0002_bootstrap4carousel_carousel_aspect_ratio', '2021-12-06 11:00:11.338232'),
(51, 'bootstrap4_carousel', '0003_auto_20180610_1102', '2021-12-06 11:00:11.469425'),
(52, 'bootstrap4_carousel', '0004_auto_20190703_0831', '2021-12-06 11:00:11.630413'),
(53, 'bootstrap4_collapse', '0001_initial', '2021-12-06 11:00:12.311471'),
(54, 'bootstrap4_content', '0001_initial', '2021-12-06 11:00:13.129649'),
(55, 'bootstrap4_content', '0002_added_figure', '2021-12-06 11:00:13.609086'),
(56, 'bootstrap4_grid', '0001_initial', '2021-12-06 11:00:14.361308'),
(57, 'bootstrap4_grid', '0002_auto_20180709_0808', '2021-12-06 11:00:15.268277'),
(58, 'bootstrap4_grid', '0003_migrate_column_size', '2021-12-06 11:00:15.383486'),
(59, 'bootstrap4_grid', '0004_remove_bootstrap4gridcolumn_column_size', '2021-12-06 11:00:15.467493'),
(60, 'bootstrap4_jumbotron', '0001_initial', '2021-12-06 11:00:15.652491'),
(61, 'bootstrap4_link', '0001_initial', '2021-12-06 11:00:16.105009'),
(62, 'bootstrap4_link', '0002_add_icons', '2021-12-06 11:00:16.603020'),
(63, 'bootstrap4_link', '0003_icon_updates', '2021-12-06 11:00:16.749086'),
(64, 'bootstrap4_link', '0004_auto_20190703_0831', '2021-12-06 11:00:16.965084'),
(65, 'bootstrap4_listgroup', '0001_initial', '2021-12-06 11:00:17.580080'),
(66, 'bootstrap4_media', '0001_initial', '2021-12-06 11:00:18.368664'),
(67, 'djangocms_picture', '0001_initial', '2021-12-06 11:00:18.869419'),
(68, 'djangocms_picture', '0002_auto_20151018_1927', '2021-12-06 11:00:19.361694'),
(69, 'djangocms_picture', '0003_migrate_to_filer', '2021-12-06 11:00:20.304486'),
(70, 'djangocms_picture', '0004_adapt_fields', '2021-12-06 11:00:24.068365'),
(71, 'djangocms_picture', '0005_reset_null_values', '2021-12-06 11:00:24.407643'),
(72, 'djangocms_picture', '0006_remove_null_values', '2021-12-06 11:00:25.016285'),
(73, 'djangocms_picture', '0007_fix_alignment', '2021-12-06 11:00:25.129922'),
(74, 'djangocms_picture', '0008_picture_use_responsive_image', '2021-12-06 11:00:25.305934'),
(75, 'bootstrap4_picture', '0001_initial', '2021-12-06 11:00:25.540935'),
(76, 'bootstrap4_picture', '0002_bootstrap4picture_use_responsive_image', '2021-12-06 11:00:26.469318'),
(77, 'bootstrap4_picture', '0003_auto_20181212_1055', '2021-12-06 11:00:26.858619'),
(78, 'bootstrap4_picture', '0004_auto_20190703_0831', '2021-12-06 11:00:27.691928'),
(79, 'bootstrap4_tabs', '0001_initial', '2021-12-06 11:00:28.076500'),
(80, 'bootstrap4_tabs', '0002_auto_20180610_1106', '2021-12-06 11:00:28.523325'),
(81, 'bootstrap4_utilities', '0001_initial', '2021-12-06 11:00:28.739896'),
(82, 'cms', '0017_pagetype', '2021-12-06 11:00:29.109350'),
(83, 'cms', '0018_pagenode', '2021-12-06 11:00:29.808154'),
(84, 'cms', '0019_set_pagenode', '2021-12-06 11:00:30.853154'),
(85, 'cms', '0020_old_tree_cleanup', '2021-12-06 11:00:32.019667'),
(86, 'cms', '0021_auto_20180507_1432', '2021-12-06 11:00:32.083682'),
(87, 'cms', '0022_auto_20180620_1551', '2021-12-06 11:00:32.182664'),
(88, 'djangocms_file', '0001_initial', '2021-12-06 11:00:32.357663'),
(89, 'djangocms_file', '0002_auto_20151202_1551', '2021-12-06 11:00:32.696316'),
(90, 'djangocms_file', '0003_remove_related_name_for_cmsplugin_ptr', '2021-12-06 11:00:32.937662'),
(91, 'djangocms_file', '0004_set_related_name_for_cmsplugin_ptr', '2021-12-06 11:00:33.236507'),
(92, 'djangocms_file', '0005_auto_20160119_1534', '2021-12-06 11:00:33.293510'),
(93, 'djangocms_file', '0006_migrate_to_filer', '2021-12-06 11:00:33.767260'),
(94, 'djangocms_file', '0007_adapted_fields', '2021-12-06 11:00:35.095172'),
(95, 'djangocms_file', '0008_add_folder', '2021-12-06 11:00:35.283398'),
(96, 'djangocms_file', '0009_fixed_null_fields', '2021-12-06 11:00:35.863846'),
(97, 'djangocms_file', '0010_removed_null_fields', '2021-12-06 11:00:36.091840'),
(98, 'djangocms_file', '0011_auto_20181211_0357', '2021-12-06 11:00:36.217840'),
(99, 'djangocms_googlemap', '0001_initial', '2021-12-06 11:00:36.441855'),
(100, 'djangocms_googlemap', '0002_auto_20160622_1031', '2021-12-06 11:00:37.347737'),
(101, 'djangocms_googlemap', '0003_auto_20160825_1829', '2021-12-06 11:00:37.407232'),
(102, 'djangocms_googlemap', '0004_adapted_fields', '2021-12-06 11:00:39.757905'),
(103, 'djangocms_googlemap', '0005_create_nested_plugins', '2021-12-06 11:00:40.370818'),
(104, 'djangocms_googlemap', '0006_remove_fields', '2021-12-06 11:00:40.950827'),
(105, 'djangocms_googlemap', '0007_reset_null_values', '2021-12-06 11:00:41.104824'),
(106, 'djangocms_googlemap', '0008_removed_null_fields', '2021-12-06 11:00:41.333824'),
(107, 'djangocms_googlemap', '0009_googlemapmarker_icon', '2021-12-06 11:00:41.468245'),
(108, 'djangocms_googlemap', '0010_auto_20190718_1021', '2021-12-06 11:00:42.152228'),
(109, 'djangocms_icon', '0001_initial', '2021-12-06 11:00:42.334973'),
(110, 'djangocms_icon', '0002_auto_20190218_2017', '2021-12-06 11:00:42.626321'),
(111, 'djangocms_link', '0001_initial', '2021-12-06 11:00:42.848333'),
(112, 'djangocms_link', '0002_auto_20140929_1705', '2021-12-06 11:00:43.291016'),
(113, 'djangocms_link', '0003_auto_20150212_1310', '2021-12-06 11:00:43.387021'),
(114, 'djangocms_link', '0004_auto_20150708_1133', '2021-12-06 11:00:43.561859'),
(115, 'djangocms_link', '0005_auto_20151003_1710', '2021-12-06 11:00:43.807624'),
(116, 'djangocms_link', '0006_remove_related_name_for_cmsplugin_ptr', '2021-12-06 11:00:44.099626'),
(117, 'djangocms_link', '0007_set_related_name_for_cmsplugin_ptr', '2021-12-06 11:00:44.401625'),
(118, 'djangocms_link', '0008_link_attributes', '2021-12-06 11:00:44.520636'),
(119, 'djangocms_link', '0009_auto_20160705_1344', '2021-12-06 11:00:44.603619'),
(120, 'djangocms_link', '0010_adapted_fields', '2021-12-06 11:00:45.927791'),
(121, 'djangocms_link', '0011_fixed_null_values', '2021-12-06 11:00:46.092783'),
(122, 'djangocms_link', '0012_removed_null', '2021-12-06 11:00:47.187147'),
(123, 'djangocms_link', '0013_fix_hostname', '2021-12-06 11:00:47.277147'),
(124, 'djangocms_link', '0014_link_file_link', '2021-12-06 11:00:47.564746'),
(125, 'djangocms_link', '0015_auto_20190621_0407', '2021-12-06 11:00:47.854742'),
(126, 'djangocms_picture', '0009_auto_20181212_1003', '2021-12-06 11:00:48.197739'),
(127, 'djangocms_picture', '0010_auto_20190627_0432', '2021-12-06 11:00:48.814490'),
(128, 'djangocms_picture', '0011_auto_20190314_1536', '2021-12-06 11:00:49.058491'),
(129, 'djangocms_snippet', '0001_initial', '2021-12-06 11:00:49.319489'),
(130, 'djangocms_snippet', '0002_snippet_slug', '2021-12-06 11:00:49.765233'),
(131, 'djangocms_snippet', '0003_auto_data_fill_slug', '2021-12-06 11:00:49.964229'),
(132, 'djangocms_snippet', '0004_auto_alter_slug_unique', '2021-12-06 11:00:50.084932'),
(133, 'djangocms_snippet', '0005_set_related_name_for_cmsplugin_ptr', '2021-12-06 11:00:50.425661'),
(134, 'djangocms_snippet', '0006_auto_20160831_0729', '2021-12-06 11:00:50.854390'),
(135, 'djangocms_snippet', '0007_auto_alter_template_helptext', '2021-12-06 11:00:50.889386'),
(136, 'djangocms_snippet', '0008_auto_change_name', '2021-12-06 11:00:50.961404'),
(137, 'djangocms_style', '0001_initial', '2021-12-06 11:00:51.183710'),
(138, 'djangocms_style', '0002_set_related_name_for_cmsplugin_ptr', '2021-12-06 11:00:51.637396'),
(139, 'djangocms_style', '0003_adapted_fields', '2021-12-06 11:00:52.570391'),
(140, 'djangocms_style', '0004_use_positive_small_integer_field', '2021-12-06 11:00:54.261855'),
(141, 'djangocms_style', '0005_reset_null_values', '2021-12-06 11:00:54.554561'),
(142, 'djangocms_style', '0006_removed_null_fields', '2021-12-06 11:00:54.836565'),
(143, 'djangocms_style', '0007_style_template', '2021-12-06 11:00:54.967559'),
(144, 'djangocms_text_ckeditor', '0001_initial', '2021-12-06 11:00:55.187575'),
(145, 'djangocms_text_ckeditor', '0002_remove_related_name_for_cmsplugin_ptr', '2021-12-06 11:00:55.746625'),
(146, 'djangocms_text_ckeditor', '0003_set_related_name_for_cmsplugin_ptr', '2021-12-06 11:00:56.034997'),
(147, 'djangocms_text_ckeditor', '0004_auto_20160706_1339', '2021-12-06 11:00:56.215996'),
(148, 'djangocms_video', '0001_initial', '2021-12-06 11:00:56.423999'),
(149, 'djangocms_video', '0002_set_related_name_for_cmsplugin_ptr', '2021-12-06 11:00:56.914623'),
(150, 'djangocms_video', '0003_field_adaptions', '2021-12-06 11:00:58.380345'),
(151, 'djangocms_video', '0004_move_to_attributes', '2021-12-06 11:01:00.239006'),
(152, 'djangocms_video', '0005_migrate_to_filer', '2021-12-06 11:01:00.465000'),
(153, 'djangocms_video', '0006_field_adaptions', '2021-12-06 11:01:01.283038'),
(154, 'djangocms_video', '0007_create_nested_plugin', '2021-12-06 11:01:02.323093'),
(155, 'djangocms_video', '0008_reset_null_values', '2021-12-06 11:01:02.496843'),
(156, 'djangocms_video', '0009_removed_null_values', '2021-12-06 11:01:02.741399'),
(157, 'djangocms_video', '0010_videoplayer_parameters', '2021-12-06 11:01:02.862395'),
(158, 'easy_thumbnails', '0001_initial', '2021-12-06 11:01:03.142569'),
(159, 'easy_thumbnails', '0002_thumbnaildimensions', '2021-12-06 11:01:03.575468'),
(160, 'filer', '0012_file_mime_type', '2021-12-06 11:01:04.141963'),
(161, 'filer', '0013_image_width_height_to_float', '2021-12-06 11:01:04.572222'),
(162, 'filer', '0014_folder_permission_choices', '2021-12-06 11:01:04.742216'),
(163, 'menus', '0001_initial', '2021-12-06 11:01:04.854218'),
(164, 'sessions', '0001_initial', '2021-12-06 11:01:04.971219'),
(165, 'sites', '0002_alter_domain_unique', '2021-12-06 11:01:05.088220'),
(166, 'cms', '0018_create_pagenode', '2021-12-06 11:01:05.135220');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('emorb15fhrq6qjyluni8fn63x4a13mw1', 'MGFiMTk3YzE5ODc5MjRlN2ZkMWViZWIzMTlmMjVmYzdiYjM3OGUzYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMzNiMmQwODdhMmU1ZjM3Yzg1N2E2ZWJhMGI0MmE1MzU2ZmViYzgzIiwid2l6YXJkX3dpemFyZF9jcmVhdGVfdmlldyI6eyJzdGVwIjpudWxsLCJzdGVwX2RhdGEiOnt9LCJzdGVwX2ZpbGVzIjp7fSwiZXh0cmFfZGF0YSI6e319LCJjbXNfdG9vbGJhcl9kaXNhYmxlZCI6ZmFsc2UsImNtc19lZGl0IjpmYWxzZSwiY21zX3ByZXZpZXciOnRydWUsImZpbGVyX2xhc3RfZm9sZGVyX2lkIjoiMSJ9', '2021-12-20 00:06:59.434000'),
('nnjce61b54shrypfzla59n2hep0ecdhv', 'OTE4MzFkODlkOGJlNTg1ZTY2NjkzZDY0MWIyNmNiNDBiMmFmOTQ0ODp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=', '2021-12-20 11:56:02.266706'),
('udv0s5bl77g3po2daecnesjp752xo6xo', 'MjBiNjBkNzVjZTkyNmM4Mzg2OWRlNmY2ZjIzZTJjM2Y3YjRlMGI2OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMzNiMmQwODdhMmU1ZjM3Yzg1N2E2ZWJhMGI0MmE1MzU2ZmViYzgzIiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ==', '2021-12-20 14:05:35.328644');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'boubyan.bankboubyan.com/', 'bankboubyan.com');

-- --------------------------------------------------------

--
-- Table structure for table `easy_thumbnails_source`
--

CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `easy_thumbnails_source`
--

INSERT INTO `easy_thumbnails_source` (`id`, `storage_hash`, `name`, `modified`) VALUES
(3, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/df/f3/dff3d93d-41d1-40a7-b054-1a9c5f98deae/5.png', '2021-12-05 10:55:48.984000'),
(4, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/f1/79/f1796770-7c6f-45f2-b454-a4e98404a165/swyft-kwd-bnk-bwbyn-swift-code-lkwyt.jpg', '2021-12-05 11:23:16.763000'),
(5, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49/640.jpg', '2021-12-05 15:51:09.899000'),
(6, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/c2/83/c2830fdc-e30e-4746-9ef1-b44a3f4e91b9/boubyan-bank.jpg', '2021-12-05 11:30:39.620000'),
(7, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/17/6d/176dce25-a5af-4946-83ee-594791ceaa65/onboarding_large_banners_570x512.png', '2021-12-05 13:43:32.649000'),
(8, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/5c/76/5c76b28b-88c0-426f-888e-779a2f210921/mega_banner_-_570_x_512.jpg', '2021-12-05 20:18:31.251000'),
(9, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/82/da/82da31a8-902d-46f0-b6b6-4ea45c400fb1/large_banners_570x512_option_3.png', '2021-12-05 20:22:56.264000'),
(10, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/b1/b7/b1b79e6d-6ba8-4e3c-ac72-321847dd5b4b/boubyan_cards_hjpg__1440x480_q85_subsampling-2.jpg', '2021-12-05 21:39:04.097000'),
(11, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/92/f5/92f51447-6f64-48ad-8c6a-4c29071c87d9/boubyan.png', '2021-12-05 23:09:17.242000'),
(12, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/34/54/34548dac-ee4d-404d-b58e-1859c27be541/b_personal_boubyan_branches_hjpg__1440x480_q85_subsampling-2.jpg', '2021-12-05 23:34:58.214000'),
(13, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/19/c8/19c81e2e-56d6-423e-afd6-9f6310be0d79/boubyan_mastercardworld_t.jpg', '2021-12-06 11:21:19.717340'),
(14, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/9c/53/9c530abc-399d-4349-aa84-fcb9ee5196d3/special_edition_card_-_boubyan_15th_year_anniversary_202008_26_platinum_b_web_size_3.jpg', '2021-12-06 11:21:41.855046');

-- --------------------------------------------------------

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

INSERT INTO `easy_thumbnails_thumbnail` (`id`, `storage_hash`, `name`, `modified`, `source_id`) VALUES
(6, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/f3/dff3d93d-41d1-40a7-b054-1a9c5f98deae\\5.png__180x180_q85_crop_subsampling-2_upscale.jpg', '2021-12-05 10:55:36.436000', 3),
(7, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/f3/dff3d93d-41d1-40a7-b054-1a9c5f98deae\\5.png__80x80_q85_crop_subsampling-2.jpg', '2021-12-05 10:55:38.757000', 3),
(8, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/f3/dff3d93d-41d1-40a7-b054-1a9c5f98deae\\5.png__160x160_q85_crop_subsampling-2.jpg', '2021-12-05 10:55:39.010000', 3),
(9, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/f3/dff3d93d-41d1-40a7-b054-1a9c5f98deae\\5.png__40x40_q85_crop_subsampling-2.jpg', '2021-12-05 10:55:39.425000', 3),
(10, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/f3/dff3d93d-41d1-40a7-b054-1a9c5f98deae\\5.png__1366.0x768.0_q85_subsampling-2.jpg', '2021-12-05 10:55:49.072000', 3),
(11, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f1/79/f1796770-7c6f-45f2-b454-a4e98404a165\\swyft-kwd-bnk-bwbyn-swift-code-lkwyt.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2021-12-05 11:22:51.418000', 4),
(12, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f1/79/f1796770-7c6f-45f2-b454-a4e98404a165\\swyft-kwd-bnk-bwbyn-swift-code-lkwyt.jpg__80x80_q85_crop_subsampling-2.jpg', '2021-12-05 11:22:52.754000', 4),
(13, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f1/79/f1796770-7c6f-45f2-b454-a4e98404a165\\swyft-kwd-bnk-bwbyn-swift-code-lkwyt.jpg__160x160_q85_crop_subsampling-2.jpg', '2021-12-05 11:22:52.952000', 4),
(14, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f1/79/f1796770-7c6f-45f2-b454-a4e98404a165\\swyft-kwd-bnk-bwbyn-swift-code-lkwyt.jpg__40x40_q85_crop_subsampling-2.jpg', '2021-12-05 11:22:53.266000', 4),
(15, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f1/79/f1796770-7c6f-45f2-b454-a4e98404a165\\swyft-kwd-bnk-bwbyn-swift-code-lkwyt.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg', '2021-12-05 11:23:16.938000', 4),
(16, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49\\640.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2021-12-05 11:25:19.249000', 5),
(17, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49\\640.jpg__80x80_q85_crop_subsampling-2.jpg', '2021-12-05 11:25:20.476000', 5),
(18, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49\\640.jpg__160x160_q85_crop_subsampling-2.jpg', '2021-12-05 11:25:20.634000', 5),
(19, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49\\640.jpg__40x40_q85_crop_subsampling-2.jpg', '2021-12-05 11:25:20.861000', 5),
(20, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49\\640.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg', '2021-12-05 11:25:32.250000', 5),
(21, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/c2/83/c2830fdc-e30e-4746-9ef1-b44a3f4e91b9\\boubyan-bank.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2021-12-05 11:30:20.953000', 6),
(22, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/c2/83/c2830fdc-e30e-4746-9ef1-b44a3f4e91b9\\boubyan-bank.jpg__80x80_q85_crop_subsampling-2.jpg', '2021-12-05 11:30:21.906000', 6),
(23, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/c2/83/c2830fdc-e30e-4746-9ef1-b44a3f4e91b9\\boubyan-bank.jpg__160x160_q85_crop_subsampling-2.jpg', '2021-12-05 11:30:22.117000', 6),
(24, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/c2/83/c2830fdc-e30e-4746-9ef1-b44a3f4e91b9\\boubyan-bank.jpg__40x40_q85_crop_subsampling-2.jpg', '2021-12-05 11:30:22.491000', 6),
(25, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/c2/83/c2830fdc-e30e-4746-9ef1-b44a3f4e91b9\\boubyan-bank.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg', '2021-12-05 11:30:39.776000', 6),
(26, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49\\640.jpg__640.0x450.0_q85_crop_subsampling-2.jpg', '2021-12-05 12:07:43.957000', 5),
(27, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49\\640.jpg__100x100_q85_crop_subsampling-2.jpg', '2021-12-05 12:09:15.586000', 5),
(28, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/17/6d/176dce25-a5af-4946-83ee-594791ceaa65\\onboarding_large_banners_570x512.png__180x180_crop_subsampling-2_upscale.png', '2021-12-05 13:02:34.054000', 7),
(29, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/17/6d/176dce25-a5af-4946-83ee-594791ceaa65\\onboarding_large_banners_570x512.png__80x80_crop_subsampling-2.png', '2021-12-05 13:02:34.817000', 7),
(30, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/17/6d/176dce25-a5af-4946-83ee-594791ceaa65\\onboarding_large_banners_570x512.png__160x160_crop_subsampling-2.png', '2021-12-05 13:02:35.108000', 7),
(31, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/17/6d/176dce25-a5af-4946-83ee-594791ceaa65\\onboarding_large_banners_570x512.png__40x40_crop_subsampling-2.png', '2021-12-05 13:02:35.419000', 7),
(32, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/17/6d/176dce25-a5af-4946-83ee-594791ceaa65\\onboarding_large_banners_570x512.png__570.0x512.0_subsampling-2.png', '2021-12-05 13:02:51.905000', 7),
(33, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/17/6d/176dce25-a5af-4946-83ee-594791ceaa65\\onboarding_large_banners_570x512.png__720x720_subsampling-2.png', '2021-12-05 13:43:32.962000', 7),
(34, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/5c/76/5c76b28b-88c0-426f-888e-779a2f210921\\mega_banner_-_570_x_512.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2021-12-05 13:53:52.351000', 8),
(35, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/5c/76/5c76b28b-88c0-426f-888e-779a2f210921\\mega_banner_-_570_x_512.jpg__80x80_q85_crop_subsampling-2.jpg', '2021-12-05 13:53:53.677000', 8),
(36, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/5c/76/5c76b28b-88c0-426f-888e-779a2f210921\\mega_banner_-_570_x_512.jpg__160x160_q85_crop_subsampling-2.jpg', '2021-12-05 13:53:53.868000', 8),
(37, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/5c/76/5c76b28b-88c0-426f-888e-779a2f210921\\mega_banner_-_570_x_512.jpg__40x40_q85_crop_subsampling-2.jpg', '2021-12-05 13:53:54.346000', 8),
(38, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/5c/76/5c76b28b-88c0-426f-888e-779a2f210921\\mega_banner_-_570_x_512.jpg__720x720_q85_subsampling-2.jpg', '2021-12-05 13:54:08.961000', 8),
(39, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49\\640.jpg__640.0x450.0_q85_subsampling-2.jpg', '2021-12-05 15:51:10.011000', 5),
(40, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/5c/76/5c76b28b-88c0-426f-888e-779a2f210921\\mega_banner_-_570_x_512.jpg__570.0x512.0_q85_subsampling-2.jpg', '2021-12-05 20:18:31.371000', 8),
(41, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/82/da/82da31a8-902d-46f0-b6b6-4ea45c400fb1\\large_banners_570x512_option_3.png__180x180_crop_subsampling-2_upscale.png', '2021-12-05 20:22:47.425000', 9),
(42, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/82/da/82da31a8-902d-46f0-b6b6-4ea45c400fb1\\large_banners_570x512_option_3.png__80x80_crop_subsampling-2.png', '2021-12-05 20:22:48.022000', 9),
(43, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/82/da/82da31a8-902d-46f0-b6b6-4ea45c400fb1\\large_banners_570x512_option_3.png__160x160_crop_subsampling-2.png', '2021-12-05 20:22:48.282000', 9),
(44, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/82/da/82da31a8-902d-46f0-b6b6-4ea45c400fb1\\large_banners_570x512_option_3.png__40x40_crop_subsampling-2.png', '2021-12-05 20:22:48.575000', 9),
(45, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/82/da/82da31a8-902d-46f0-b6b6-4ea45c400fb1\\large_banners_570x512_option_3.png__570.0x512.0_subsampling-2.png', '2021-12-05 20:22:56.415000', 9),
(46, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/b1/b7/b1b79e6d-6ba8-4e3c-ac72-321847dd5b4b\\boubyan_cards_hjpg__1440x480_q85_subsampling-2.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2021-12-05 21:38:52.650000', 10),
(47, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/b1/b7/b1b79e6d-6ba8-4e3c-ac72-321847dd5b4b\\boubyan_cards_hjpg__1440x480_q85_subsampling-2.jpg__80x80_q85_crop_subsampling-2.jpg', '2021-12-05 21:38:53.222000', 10),
(48, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/b1/b7/b1b79e6d-6ba8-4e3c-ac72-321847dd5b4b\\boubyan_cards_hjpg__1440x480_q85_subsampling-2.jpg__160x160_q85_crop_subsampling-2.jpg', '2021-12-05 21:38:53.498000', 10),
(49, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/b1/b7/b1b79e6d-6ba8-4e3c-ac72-321847dd5b4b\\boubyan_cards_hjpg__1440x480_q85_subsampling-2.jpg__40x40_q85_crop_subsampling-2.jpg', '2021-12-05 21:38:53.798000', 10),
(50, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/b1/b7/b1b79e6d-6ba8-4e3c-ac72-321847dd5b4b\\boubyan_cards_hjpg__1440x480_q85_subsampling-2.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg', '2021-12-05 21:39:04.241000', 10),
(51, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/92/f5/92f51447-6f64-48ad-8c6a-4c29071c87d9\\boubyan.png__180x180_crop_subsampling-2_upscale.png', '2021-12-05 23:09:16.112000', 11),
(52, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/92/f5/92f51447-6f64-48ad-8c6a-4c29071c87d9\\boubyan.png__80x80_crop_subsampling-2.png', '2021-12-05 23:09:16.823000', 11),
(53, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/92/f5/92f51447-6f64-48ad-8c6a-4c29071c87d9\\boubyan.png__160x160_crop_subsampling-2.png', '2021-12-05 23:09:17.042000', 11),
(54, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/92/f5/92f51447-6f64-48ad-8c6a-4c29071c87d9\\boubyan.png__40x40_crop_subsampling-2.png', '2021-12-05 23:09:17.329000', 11),
(55, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/34/54/34548dac-ee4d-404d-b58e-1859c27be541\\b_personal_boubyan_branches_hjpg__1440x480_q85_subsampling-2.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2021-12-05 23:34:45.101000', 12),
(56, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/34/54/34548dac-ee4d-404d-b58e-1859c27be541\\b_personal_boubyan_branches_hjpg__1440x480_q85_subsampling-2.jpg__80x80_q85_crop_subsampling-2.jpg', '2021-12-05 23:34:45.842000', 12),
(57, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/34/54/34548dac-ee4d-404d-b58e-1859c27be541\\b_personal_boubyan_branches_hjpg__1440x480_q85_subsampling-2.jpg__160x160_q85_crop_subsampling-2.jpg', '2021-12-05 23:34:46.067000', 12),
(58, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/34/54/34548dac-ee4d-404d-b58e-1859c27be541\\b_personal_boubyan_branches_hjpg__1440x480_q85_subsampling-2.jpg__40x40_q85_crop_subsampling-2.jpg', '2021-12-05 23:34:46.363000', 12),
(59, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/34/54/34548dac-ee4d-404d-b58e-1859c27be541\\b_personal_boubyan_branches_hjpg__1440x480_q85_subsampling-2.jpg__1440.0x480.0_q85_subsampling-2.jpg', '2021-12-05 23:34:58.306000', 12),
(60, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/c8/19c81e2e-56d6-423e-afd6-9f6310be0d79\\boubyan_mastercardworld_t.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2021-12-06 11:21:09.881648', 13),
(61, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/c8/19c81e2e-56d6-423e-afd6-9f6310be0d79\\boubyan_mastercardworld_t.jpg__80x80_q85_crop_subsampling-2.jpg', '2021-12-06 11:21:10.200288', 13),
(62, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/c8/19c81e2e-56d6-423e-afd6-9f6310be0d79\\boubyan_mastercardworld_t.jpg__160x160_q85_crop_subsampling-2.jpg', '2021-12-06 11:21:10.262292', 13),
(63, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/c8/19c81e2e-56d6-423e-afd6-9f6310be0d79\\boubyan_mastercardworld_t.jpg__40x40_q85_crop_subsampling-2.jpg', '2021-12-06 11:21:10.339288', 13),
(64, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/c8/19c81e2e-56d6-423e-afd6-9f6310be0d79\\boubyan_mastercardworld_t.jpg__624.0x420.0_q85_subsampling-2.jpg', '2021-12-06 11:21:19.729342', 13);

-- --------------------------------------------------------

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `filer_clipboard`
--

CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filer_clipboard`
--

INSERT INTO `filer_clipboard` (`id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `filer_clipboarditem`
--

CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `filer_file`
--

CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint(20) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  `mime_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filer_file`
--

INSERT INTO `filer_file` (`id`, `file`, `_file_size`, `sha1`, `has_all_mandatory_data`, `original_filename`, `name`, `description`, `uploaded_at`, `modified_at`, `is_public`, `folder_id`, `owner_id`, `polymorphic_ctype_id`, `mime_type`) VALUES
(3, 'filer_public/df/f3/dff3d93d-41d1-40a7-b054-1a9c5f98deae/5.png', 104680, 'b5768bb6a564265e35e14331fd4b48058aed531b', 0, '5.png', '', NULL, '2021-12-05 10:55:34.683000', '2021-12-05 10:55:34.683000', 1, NULL, 1, 29, 'image/png'),
(4, 'filer_public/f1/79/f1796770-7c6f-45f2-b454-a4e98404a165/swyft-kwd-bnk-bwbyn-swift-code-lkwyt.jpg', 32334, 'b95dda5255c6d73801f58c168856afed2f649d8d', 0, 'سويفت-كود-بنك-بوبيان-swift-code-الكويت.jpg', '', NULL, '2021-12-05 11:22:50.840000', '2021-12-05 11:22:50.840000', 1, 1, 1, 29, 'image/jpeg'),
(5, 'filer_public/8e/4d/8e4d4048-acd0-45b2-ad05-21bda19c3e49/640.jpg', 15511, 'a1916933417ad9b1f4c032111de20b6d26b1095a', 0, '640.jpg', '', NULL, '2021-12-05 11:25:18.636000', '2021-12-05 11:25:18.636000', 1, 1, 1, 29, 'image/jpeg'),
(6, 'filer_public/c2/83/c2830fdc-e30e-4746-9ef1-b44a3f4e91b9/boubyan-bank.jpg', 119684, '26a08b11629b6f4d306a2066c679b60b630d288a', 0, 'Boubyan-Bank.jpg', '', NULL, '2021-12-05 11:30:18.736000', '2021-12-05 11:30:18.737000', 1, 1, 1, 29, 'image/jpeg'),
(7, 'filer_public/17/6d/176dce25-a5af-4946-83ee-594791ceaa65/onboarding_large_banners_570x512.png', 359488, 'f16c47b6bce6a99755692d386ab3158e8c1f3283', 0, 'onboarding_large_banners_570x512.png', '', NULL, '2021-12-05 13:02:32.609000', '2021-12-05 13:02:32.609000', 1, 1, 1, 29, 'image/png'),
(8, 'filer_public/5c/76/5c76b28b-88c0-426f-888e-779a2f210921/mega_banner_-_570_x_512.jpg', 55434, '3bbf810e8af148bd108f645473c37001db72cf63', 0, 'mega_banner_-_570_x_512.jpg', '', NULL, '2021-12-05 13:53:51.240000', '2021-12-05 13:53:51.240000', 1, 1, 1, 29, 'image/jpeg'),
(9, 'filer_public/82/da/82da31a8-902d-46f0-b6b6-4ea45c400fb1/large_banners_570x512_option_3.png', 289823, '264264ab8f236ad8fc65e591580702580365c10a', 0, 'large_banners_570x512_option_3.png', '', NULL, '2021-12-05 20:22:46.838000', '2021-12-05 20:22:46.838000', 1, 1, 1, 29, 'image/png'),
(10, 'filer_public/b1/b7/b1b79e6d-6ba8-4e3c-ac72-321847dd5b4b/boubyan_cards_hjpg__1440x480_q85_subsampling-2.jpg', 77410, 'c243c430856c801587120b6293333845af2abdff', 0, 'boubyan_cards_h.jpg__1440x480_q85_subsampling-2.jpg', '', NULL, '2021-12-05 21:38:51.294000', '2021-12-05 21:38:51.294000', 1, 1, 1, 29, 'image/jpeg'),
(11, 'filer_public/92/f5/92f51447-6f64-48ad-8c6a-4c29071c87d9/boubyan.png', 42982, '272131e4a93bdde4d5f35b35e25f6365c3e76582', 0, 'boubyan.PNG', '', NULL, '2021-12-05 23:09:15.664000', '2021-12-05 23:09:15.664000', 1, 1, 1, 29, 'image/png'),
(12, 'filer_public/34/54/34548dac-ee4d-404d-b58e-1859c27be541/b_personal_boubyan_branches_hjpg__1440x480_q85_subsampling-2.jpg', 162350, '7f988e68244b531ab984e3f6fc4dcae1e04edbde', 0, 'b_personal_boubyan_branches_h.jpg__1440x480_q85_subsampling-2.jpg', '', NULL, '2021-12-05 23:34:44.167000', '2021-12-05 23:34:44.167000', 1, 1, 1, 29, 'image/jpeg'),
(13, 'filer_public/19/c8/19c81e2e-56d6-423e-afd6-9f6310be0d79/boubyan_mastercardworld_t.jpg', 130625, 'c1af50544695bf0485b32aa56b57b4ac6a04157f', 0, 'boubyan_mastercardworld_t.jpg', '', NULL, '2021-12-06 11:21:08.413802', '2021-12-06 11:21:08.413802', 1, NULL, 1, 29, 'image/jpeg'),
(14, 'filer_public/9c/53/9c530abc-399d-4349-aa84-fcb9ee5196d3/special_edition_card_-_boubyan_15th_year_anniversary_202008_26_platinum_b_web_size_3.jpg', 81037, '2921ddb097956ee5471d82086154d43a0bd54c1f', 0, 'special_edition_card_-_boubyan_15th_year_anniversary_202008_26_platinum_b_web_size_3.jpg', '', NULL, '2021-12-06 11:21:41.868047', '2021-12-06 11:21:41.868047', 1, NULL, 1, 29, 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `filer_folder`
--

CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `lft` int(10) UNSIGNED NOT NULL,
  `rght` int(10) UNSIGNED NOT NULL,
  `tree_id` int(10) UNSIGNED NOT NULL,
  `level` int(10) UNSIGNED NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filer_folder`
--

INSERT INTO `filer_folder` (`id`, `name`, `uploaded_at`, `created_at`, `modified_at`, `lft`, `rght`, `tree_id`, `level`, `owner_id`, `parent_id`) VALUES
(1, 'carousel', '2021-12-05 11:19:44.505000', '2021-12-05 11:19:44.505000', '2021-12-05 11:19:44.505000', 1, 2, 1, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filer_folderpermission`
--

CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `filer_image`
--

CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` double DEFAULT NULL,
  `_width` double DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filer_image`
--

INSERT INTO `filer_image` (`file_ptr_id`, `_height`, `_width`, `date_taken`, `default_alt_text`, `default_caption`, `author`, `must_always_publish_author_credit`, `must_always_publish_copyright`, `subject_location`) VALUES
(3, 768, 1366, '2021-12-05 10:55:34.574000', NULL, NULL, NULL, 0, 0, ''),
(4, 500, 1050, '2021-12-05 11:22:50.620000', NULL, NULL, NULL, 0, 0, ''),
(5, 450, 640, '2021-12-05 11:25:18.504000', NULL, NULL, NULL, 0, 0, ''),
(6, 420, 750, '2021-12-05 11:30:18.630000', NULL, NULL, NULL, 0, 0, ''),
(7, 512, 570, '2021-12-05 13:02:32.524000', NULL, NULL, NULL, 0, 0, ''),
(8, 512, 570, '2021-12-05 13:53:51.111000', NULL, NULL, NULL, 0, 0, ''),
(9, 512, 570, '2021-12-05 20:22:46.747000', NULL, NULL, NULL, 0, 0, ''),
(10, 480, 1440, '2021-12-05 21:38:51.270000', NULL, NULL, NULL, 0, 0, ''),
(11, 381, 765, '2021-12-05 23:09:15.576000', NULL, NULL, NULL, 0, 0, ''),
(12, 480, 1440, '2021-12-05 23:34:44.151000', NULL, NULL, NULL, 0, 0, ''),
(13, 420, 624, '2021-12-06 11:21:08.362804', NULL, NULL, NULL, 0, 0, ''),
(14, 420, 624, '2021-12-06 11:21:41.806046', NULL, NULL, NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `filer_thumbnailoption`
--

CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menus_cachekey`
--

CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `site` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bootstrap4_alerts_bootstrap4alerts`
--
ALTER TABLE `bootstrap4_alerts_bootstrap4alerts`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_badge_bootstrap4badge`
--
ALTER TABLE `bootstrap4_badge_bootstrap4badge`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_card_bootstrap4card`
--
ALTER TABLE `bootstrap4_card_bootstrap4card`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_card_bootstrap4cardinner`
--
ALTER TABLE `bootstrap4_card_bootstrap4cardinner`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_carousel_bootstrap4carousel`
--
ALTER TABLE `bootstrap4_carousel_bootstrap4carousel`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_carousel_bootstrap4carouselslide`
--
ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` (`internal_link_id`),
  ADD KEY `bootstrap4_carousel_bootstr_carousel_image_id_c7547e1f` (`carousel_image_id`),
  ADD KEY `bootstrap4_carousel_bootstr_file_link_id_926e466f` (`file_link_id`);

--
-- Indexes for table `bootstrap4_collapse_bootstrap4collapse`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapse`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_collapse_bootstr_identifier_ed2446e8` (`identifier`);

--
-- Indexes for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_collapse_bootstr_identifier_70258b88` (`identifier`);

--
-- Indexes for table `bootstrap4_content_bootstrap4blockquote`
--
ALTER TABLE `bootstrap4_content_bootstrap4blockquote`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_content_bootstrap4code`
--
ALTER TABLE `bootstrap4_content_bootstrap4code`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_content_bootstrap4figure`
--
ALTER TABLE `bootstrap4_content_bootstrap4figure`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_grid_bootstrap4gridcolumn`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_grid_bootstrap4gridcontainer`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_grid_bootstrap4gridrow`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridrow`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--
ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_link_bootstrap4link`
--
ALTER TABLE `bootstrap4_link_bootstrap4link`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` (`internal_link_id`),
  ADD KEY `bootstrap4_link_bootstrap4link_file_link_id_73e3dbff` (`file_link_id`);

--
-- Indexes for table `bootstrap4_listgroup_bootstrap4listgroup`
--
ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--
ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_media_bootstrap4media`
--
ALTER TABLE `bootstrap4_media_bootstrap4media`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_media_bootstrap4mediabody`
--
ALTER TABLE `bootstrap4_media_bootstrap4mediabody`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_picture_bootstrap4picture`
--
ALTER TABLE `bootstrap4_picture_bootstrap4picture`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` (`thumbnail_options_id`),
  ADD KEY `bootstrap4_picture_bootstrap4picture_link_page_id_f01c1a21` (`link_page_id`),
  ADD KEY `bootstrap4_picture_bootstrap4picture_picture_id_f26d968d` (`picture_id`);

--
-- Indexes for table `bootstrap4_tabs_bootstrap4tab`
--
ALTER TABLE `bootstrap4_tabs_bootstrap4tab`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_tabs_bootstrap4tabitem`
--
ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_utilities_bootstrap4spacing`
--
ALTER TABLE `bootstrap4_utilities_bootstrap4spacing`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `cms_aliaspluginmodel`
--
ALTER TABLE `cms_aliaspluginmodel`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` (`alias_placeholder_id`),
  ADD KEY `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` (`plugin_id`);

--
-- Indexes for table `cms_cmsplugin`
--
ALTER TABLE `cms_cmsplugin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_cmsplugin_path_4917bb44_uniq` (`path`),
  ADD KEY `cms_cmsplugin_language_bbea8a48` (`language`),
  ADD KEY `cms_cmsplugin_plugin_type_94e96ebf` (`plugin_type`),
  ADD KEY `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` (`placeholder_id`),
  ADD KEY `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` (`parent_id`);

--
-- Indexes for table `cms_globalpagepermission`
--
ALTER TABLE `cms_globalpagepermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` (`group_id`),
  ADD KEY `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cms_globalpagepermission_sites`
--
ALTER TABLE `cms_globalpagepermission_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_globalpagepermission_globalpagepermission_id__db684f41_uniq` (`globalpagepermission_id`,`site_id`),
  ADD KEY `cms_globalpagepermis_site_id_00460b53_fk_django_si` (`site_id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_node_id_publisher_is_draft_c1293d6a_uniq` (`node_id`,`publisher_is_draft`),
  ADD UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  ADD KEY `cms_page_publication_date_684fabf7` (`publication_date`),
  ADD KEY `cms_page_publication_end_date_12a0c46a` (`publication_end_date`),
  ADD KEY `cms_page_in_navigation_01c24279` (`in_navigation`),
  ADD KEY `cms_page_soft_root_51efccbe` (`soft_root`),
  ADD KEY `cms_page_reverse_id_ffc9ede2` (`reverse_id`),
  ADD KEY `cms_page_navigation_extenders_c24af8dd` (`navigation_extenders`),
  ADD KEY `cms_page_limit_visibility_in_menu_30db6aa6` (`limit_visibility_in_menu`),
  ADD KEY `cms_page_is_home_edadca07` (`is_home`),
  ADD KEY `cms_page_application_urls_9ef47497` (`application_urls`),
  ADD KEY `cms_page_publisher_is_draft_141cba60` (`publisher_is_draft`);

--
-- Indexes for table `cms_pagepermission`
--
ALTER TABLE `cms_pagepermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_pagepermission_group_id_af5af193_fk_auth_group_id` (`group_id`),
  ADD KEY `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` (`page_id`),
  ADD KEY `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cms_pageuser`
--
ALTER TABLE `cms_pageuser`
  ADD PRIMARY KEY (`user_ptr_id`),
  ADD KEY `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` (`created_by_id`);

--
-- Indexes for table `cms_pageusergroup`
--
ALTER TABLE `cms_pageusergroup`
  ADD PRIMARY KEY (`group_ptr_id`),
  ADD KEY `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` (`created_by_id`);

--
-- Indexes for table `cms_page_placeholders`
--
ALTER TABLE `cms_page_placeholders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq` (`page_id`,`placeholder_id`),
  ADD KEY `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` (`placeholder_id`);

--
-- Indexes for table `cms_placeholder`
--
ALTER TABLE `cms_placeholder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_placeholder_slot_0bc04d21` (`slot`);

--
-- Indexes for table `cms_placeholderreference`
--
ALTER TABLE `cms_placeholderreference`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `cms_placeholderreference_placeholder_ref_id_244759b1` (`placeholder_ref_id`);

--
-- Indexes for table `cms_staticplaceholder`
--
ALTER TABLE `cms_staticplaceholder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_staticplaceholder_code_site_id_21ba079c_uniq` (`code`,`site_id`),
  ADD KEY `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` (`site_id`),
  ADD KEY `cms_staticplaceholder_draft_id_5aee407b` (`draft_id`),
  ADD KEY `cms_staticplaceholder_public_id_876aaa66` (`public_id`);

--
-- Indexes for table `cms_title`
--
ALTER TABLE `cms_title`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_title_language_page_id_61aaf084_uniq` (`language`,`page_id`),
  ADD UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  ADD KEY `cms_title_page_id_5fade2a3_fk_cms_page_id` (`page_id`),
  ADD KEY `cms_title_language_50a0dfa1` (`language`),
  ADD KEY `cms_title_slug_4947d146` (`slug`),
  ADD KEY `cms_title_path_c484314c` (`path`),
  ADD KEY `cms_title_has_url_overwrite_ecf27bb9` (`has_url_overwrite`),
  ADD KEY `cms_title_publisher_is_draft_95874c88` (`publisher_is_draft`),
  ADD KEY `cms_title_publisher_state_9a952b0f` (`publisher_state`);

--
-- Indexes for table `cms_treenode`
--
ALTER TABLE `cms_treenode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` (`parent_id`),
  ADD KEY `cms_treenode_site_id_d3f46985_fk_django_site_id` (`site_id`);

--
-- Indexes for table `cms_urlconfrevision`
--
ALTER TABLE `cms_urlconfrevision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_usersettings`
--
ALTER TABLE `cms_usersettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` (`clipboard_id`);

--
-- Indexes for table `djangocms_file_file`
--
ALTER TABLE `djangocms_file_file`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_file_file_file_src_id_74ac14a5` (`file_src_id`);

--
-- Indexes for table `djangocms_file_folder`
--
ALTER TABLE `djangocms_file_folder`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_file_folder_folder_src_id_9558406a` (`folder_src_id`);

--
-- Indexes for table `djangocms_googlemap_googlemap`
--
ALTER TABLE `djangocms_googlemap_googlemap`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `djangocms_googlemap_googlemapmarker`
--
ALTER TABLE `djangocms_googlemap_googlemapmarker`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_googlemap_googlemapmarker_icon_id_3b103213` (`icon_id`);

--
-- Indexes for table `djangocms_googlemap_googlemaproute`
--
ALTER TABLE `djangocms_googlemap_googlemaproute`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `djangocms_icon_icon`
--
ALTER TABLE `djangocms_icon_icon`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `djangocms_link_link`
--
ALTER TABLE `djangocms_link_link`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` (`internal_link_id`),
  ADD KEY `djangocms_link_link_file_link_id_c7869e4c` (`file_link_id`);

--
-- Indexes for table `djangocms_picture_picture`
--
ALTER TABLE `djangocms_picture_picture`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_picture_picture_picture_id_f7d6711b` (`picture_id`),
  ADD KEY `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` (`link_page_id`),
  ADD KEY `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` (`thumbnail_options_id`);

--
-- Indexes for table `djangocms_snippet_snippet`
--
ALTER TABLE `djangocms_snippet_snippet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `djangocms_snippet_snippet_slug_bd43cd96_uniq` (`slug`);

--
-- Indexes for table `djangocms_snippet_snippetptr`
--
ALTER TABLE `djangocms_snippet_snippetptr`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` (`snippet_id`);

--
-- Indexes for table `djangocms_style_style`
--
ALTER TABLE `djangocms_style_style`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `djangocms_text_ckeditor_text`
--
ALTER TABLE `djangocms_text_ckeditor_text`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `djangocms_video_videoplayer`
--
ALTER TABLE `djangocms_video_videoplayer`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_video_videoplayer_poster_id_07790e24` (`poster_id`);

--
-- Indexes for table `djangocms_video_videosource`
--
ALTER TABLE `djangocms_video_videosource`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_video_videosource_source_file_id_16f11167` (`source_file_id`);

--
-- Indexes for table `djangocms_video_videotrack`
--
ALTER TABLE `djangocms_video_videotrack`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_video_videotrack_src_id_e5a015d8` (`src_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  ADD KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  ADD KEY `easy_thumbnails_source_name_5fe0edc6` (`name`);

--
-- Indexes for table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  ADD KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  ADD KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  ADD KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`);

--
-- Indexes for table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thumbnail_id` (`thumbnail_id`);

--
-- Indexes for table `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`),
  ADD KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`);

--
-- Indexes for table `filer_file`
--
ALTER TABLE `filer_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  ADD KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`);

--
-- Indexes for table `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  ADD KEY `filer_folder_tree_id_b016223c` (`tree_id`),
  ADD KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  ADD KEY `filer_folder_tree_id_lft_088ce52b_idx` (`tree_id`,`lft`);

--
-- Indexes for table `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  ADD KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `filer_image`
--
ALTER TABLE `filer_image`
  ADD PRIMARY KEY (`file_ptr_id`);

--
-- Indexes for table `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_cachekey`
--
ALTER TABLE `menus_cachekey`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_cmsplugin`
--
ALTER TABLE `cms_cmsplugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT for table `cms_globalpagepermission`
--
ALTER TABLE `cms_globalpagepermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_globalpagepermission_sites`
--
ALTER TABLE `cms_globalpagepermission_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_pagepermission`
--
ALTER TABLE `cms_pagepermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_page_placeholders`
--
ALTER TABLE `cms_page_placeholders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cms_placeholder`
--
ALTER TABLE `cms_placeholder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cms_staticplaceholder`
--
ALTER TABLE `cms_staticplaceholder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_title`
--
ALTER TABLE `cms_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_treenode`
--
ALTER TABLE `cms_treenode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cms_urlconfrevision`
--
ALTER TABLE `cms_urlconfrevision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_usersettings`
--
ALTER TABLE `cms_usersettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `djangocms_snippet_snippet`
--
ALTER TABLE `djangocms_snippet_snippet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filer_file`
--
ALTER TABLE `filer_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `filer_folder`
--
ALTER TABLE `filer_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus_cachekey`
--
ALTER TABLE `menus_cachekey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `bootstrap4_alerts_bootstrap4alerts`
--
ALTER TABLE `bootstrap4_alerts_bootstrap4alerts`
  ADD CONSTRAINT `bootstrap4_alerts_bo_cmsplugin_ptr_id_16c9e6e1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_badge_bootstrap4badge`
--
ALTER TABLE `bootstrap4_badge_bootstrap4badge`
  ADD CONSTRAINT `bootstrap4_badge_boo_cmsplugin_ptr_id_1cfc1292_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_card_bootstrap4card`
--
ALTER TABLE `bootstrap4_card_bootstrap4card`
  ADD CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_c6cf1064_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_card_bootstrap4cardinner`
--
ALTER TABLE `bootstrap4_card_bootstrap4cardinner`
  ADD CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_8c0b627d_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_carousel_bootstrap4carousel`
--
ALTER TABLE `bootstrap4_carousel_bootstrap4carousel`
  ADD CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_d97c4671_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_carousel_bootstrap4carouselslide`
--
ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide`
  ADD CONSTRAINT `bootstrap4_carousel__carousel_image_id_c7547e1f_fk_filer_ima` FOREIGN KEY (`carousel_image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  ADD CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_50bebcc8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `bootstrap4_carousel__file_link_id_926e466f_fk_filer_fil` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  ADD CONSTRAINT `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `bootstrap4_collapse_bootstrap4collapse`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapse`
  ADD CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_c9f9a375_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer`
  ADD CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_1d125930_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger`
  ADD CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_f71d6f15_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_content_bootstrap4blockquote`
--
ALTER TABLE `bootstrap4_content_bootstrap4blockquote`
  ADD CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_8b0021f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_content_bootstrap4code`
--
ALTER TABLE `bootstrap4_content_bootstrap4code`
  ADD CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_c1953358_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_content_bootstrap4figure`
--
ALTER TABLE `bootstrap4_content_bootstrap4figure`
  ADD CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_4ec12771_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_grid_bootstrap4gridcolumn`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn`
  ADD CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_e1f10b7c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_grid_bootstrap4gridcontainer`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer`
  ADD CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_ff053e0f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_grid_bootstrap4gridrow`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridrow`
  ADD CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_02c25f67_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--
ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron`
  ADD CONSTRAINT `bootstrap4_jumbotron_cmsplugin_ptr_id_1429c898_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_link_bootstrap4link`
--
ALTER TABLE `bootstrap4_link_bootstrap4link`
  ADD CONSTRAINT `bootstrap4_link_boot_cmsplugin_ptr_id_49f69e60_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `bootstrap4_link_boot_file_link_id_73e3dbff_fk_filer_fil` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  ADD CONSTRAINT `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `bootstrap4_listgroup_bootstrap4listgroup`
--
ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup`
  ADD CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_c0811351_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--
ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem`
  ADD CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_df52f490_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_media_bootstrap4media`
--
ALTER TABLE `bootstrap4_media_bootstrap4media`
  ADD CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_9eb94f74_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_media_bootstrap4mediabody`
--
ALTER TABLE `bootstrap4_media_bootstrap4mediabody`
  ADD CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_574b3dd8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_picture_bootstrap4picture`
--
ALTER TABLE `bootstrap4_picture_bootstrap4picture`
  ADD CONSTRAINT `bootstrap4_picture_b_cmsplugin_ptr_id_3d3bfb59_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `bootstrap4_picture_b_link_page_id_f01c1a21_fk_cms_page_` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `bootstrap4_picture_b_picture_id_f26d968d_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  ADD CONSTRAINT `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`);

--
-- Constraints for table `bootstrap4_tabs_bootstrap4tab`
--
ALTER TABLE `bootstrap4_tabs_bootstrap4tab`
  ADD CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e655c7b6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_tabs_bootstrap4tabitem`
--
ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem`
  ADD CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e017af58_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_utilities_bootstrap4spacing`
--
ALTER TABLE `bootstrap4_utilities_bootstrap4spacing`
  ADD CONSTRAINT `bootstrap4_utilities_cmsplugin_ptr_id_c15ec8d1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `cms_aliaspluginmodel`
--
ALTER TABLE `cms_aliaspluginmodel`
  ADD CONSTRAINT `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `cms_cmsplugin`
--
ALTER TABLE `cms_cmsplugin`
  ADD CONSTRAINT `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`);

--
-- Constraints for table `cms_globalpagepermission`
--
ALTER TABLE `cms_globalpagepermission`
  ADD CONSTRAINT `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cms_globalpagepermission_sites`
--
ALTER TABLE `cms_globalpagepermission_sites`
  ADD CONSTRAINT `cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  ADD CONSTRAINT `cms_globalpagepermis_site_id_00460b53_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD CONSTRAINT `cms_page_node_id_c87b85a9_fk_cms_treenode_id` FOREIGN KEY (`node_id`) REFERENCES `cms_treenode` (`id`),
  ADD CONSTRAINT `cms_page_publisher_public_id_d619fca0_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `cms_pagepermission`
--
ALTER TABLE `cms_pagepermission`
  ADD CONSTRAINT `cms_pagepermission_group_id_af5af193_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cms_pageuser`
--
ALTER TABLE `cms_pageuser`
  ADD CONSTRAINT `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cms_pageusergroup`
--
ALTER TABLE `cms_pageusergroup`
  ADD CONSTRAINT `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `cms_page_placeholders`
--
ALTER TABLE `cms_page_placeholders`
  ADD CONSTRAINT `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `cms_placeholderreference`
--
ALTER TABLE `cms_placeholderreference`
  ADD CONSTRAINT `cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`);

--
-- Constraints for table `cms_staticplaceholder`
--
ALTER TABLE `cms_staticplaceholder`
  ADD CONSTRAINT `cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `cms_title`
--
ALTER TABLE `cms_title`
  ADD CONSTRAINT `cms_title_page_id_5fade2a3_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `cms_title_publisher_public_id_003a2702_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`);

--
-- Constraints for table `cms_treenode`
--
ALTER TABLE `cms_treenode`
  ADD CONSTRAINT `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_treenode` (`id`),
  ADD CONSTRAINT `cms_treenode_site_id_d3f46985_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `cms_usersettings`
--
ALTER TABLE `cms_usersettings`
  ADD CONSTRAINT `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_usersettings_user_id_09633b2d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `djangocms_file_file`
--
ALTER TABLE `djangocms_file_file`
  ADD CONSTRAINT `djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id` FOREIGN KEY (`file_src_id`) REFERENCES `filer_file` (`id`);

--
-- Constraints for table `djangocms_file_folder`
--
ALTER TABLE `djangocms_file_folder`
  ADD CONSTRAINT `djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id` FOREIGN KEY (`folder_src_id`) REFERENCES `filer_folder` (`id`);

--
-- Constraints for table `djangocms_googlemap_googlemap`
--
ALTER TABLE `djangocms_googlemap_googlemap`
  ADD CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `djangocms_googlemap_googlemapmarker`
--
ALTER TABLE `djangocms_googlemap_googlemapmarker`
  ADD CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_googlemap__icon_id_3b103213_fk_filer_ima` FOREIGN KEY (`icon_id`) REFERENCES `filer_image` (`file_ptr_id`);

--
-- Constraints for table `djangocms_googlemap_googlemaproute`
--
ALTER TABLE `djangocms_googlemap_googlemaproute`
  ADD CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `djangocms_icon_icon`
--
ALTER TABLE `djangocms_icon_icon`
  ADD CONSTRAINT `djangocms_icon_icon_cmsplugin_ptr_id_e04b5be4_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `djangocms_link_link`
--
ALTER TABLE `djangocms_link_link`
  ADD CONSTRAINT `djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_link_link_file_link_id_c7869e4c_fk_filer_file_id` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  ADD CONSTRAINT `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `djangocms_picture_picture`
--
ALTER TABLE `djangocms_picture_picture`
  ADD CONSTRAINT `djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  ADD CONSTRAINT `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`),
  ADD CONSTRAINT `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `djangocms_snippet_snippetptr`
--
ALTER TABLE `djangocms_snippet_snippetptr`
  ADD CONSTRAINT `djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` FOREIGN KEY (`snippet_id`) REFERENCES `djangocms_snippet_snippet` (`id`);

--
-- Constraints for table `djangocms_style_style`
--
ALTER TABLE `djangocms_style_style`
  ADD CONSTRAINT `djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `djangocms_text_ckeditor_text`
--
ALTER TABLE `djangocms_text_ckeditor_text`
  ADD CONSTRAINT `djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `djangocms_video_videoplayer`
--
ALTER TABLE `djangocms_video_videoplayer`
  ADD CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_video_vide_poster_id_07790e24_fk_filer_ima` FOREIGN KEY (`poster_id`) REFERENCES `filer_image` (`file_ptr_id`);

--
-- Constraints for table `djangocms_video_videosource`
--
ALTER TABLE `djangocms_video_videosource`
  ADD CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_video_vide_source_file_id_16f11167_fk_filer_fil` FOREIGN KEY (`source_file_id`) REFERENCES `filer_file` (`id`);

--
-- Constraints for table `djangocms_video_videotrack`
--
ALTER TABLE `djangocms_video_videotrack`
  ADD CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id` FOREIGN KEY (`src_id`) REFERENCES `filer_file` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`);

--
-- Constraints for table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`);

--
-- Constraints for table `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  ADD CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`);

--
-- Constraints for table `filer_file`
--
ALTER TABLE `filer_file`
  ADD CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`);

--
-- Constraints for table `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `filer_image`
--
ALTER TABLE `filer_image`
  ADD CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
