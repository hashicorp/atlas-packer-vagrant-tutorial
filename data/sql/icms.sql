-- phpMyAdmin SQL Dump
-- version 4.5.0-dev
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2015 at 01:03 PM
-- Server version: 5.6.24-0ubuntu2
-- PHP Version: 5.6.4-4ubuntu6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icms`
--

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_autosearch_cat`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_autosearch_cat` (
  `cid` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_url` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_autosearch_cat`
--

INSERT INTO `ib1941eb7_autosearch_cat` (`cid`, `cat_name`, `cat_url`) VALUES
(1, 'Adsenses', '/modules/system/admin.php?fct=adsense'),
(2, 'Auto Tasks', '/modules/system/admin.php?fct=autotasks'),
(3, '_MD_AM_AVATARS', '/modules/system/admin.php?fct=avatars'),
(4, '_MD_AM_BKPOSAD', '/modules/system/admin.php?fct=blockpositions'),
(5, '_MD_AM_BKAD', '/modules/system/admin.php?fct=blocksadmin'),
(6, '_MD_AM_COMMENTS', '/modules/system/admin.php?fct=comments'),
(7, 'Custom Tags', '/modules/system/admin.php?fct=customtag'),
(8, '_MD_AM_USER', '/modules/system/admin.php?fct=users'),
(9, '_MD_AM_FINDUSER', '/modules/system/admin.php?fct=finduser'),
(10, '_MD_AM_ADGS', '/modules/system/admin.php?fct=groups'),
(11, '_MD_AM_IMAGES', '/modules/system/admin.php?fct=images'),
(12, '_MD_AM_MLUS', '/modules/system/admin.php?fct=mailusers'),
(13, '_MD_AM_MIMETYPES', '/modules/system/admin.php?fct=mimetype'),
(14, 'Modules Admin', '/modules/system/admin.php?fct=modules'),
(15, '_MD_AM_PREF', '/modules/system/admin.php?fct=preferences'),
(16, '_MD_AM_RATINGS', '/modules/system/admin.php?fct=rating'),
(17, '_MD_AM_SMLS', '/modules/system/admin.php?fct=smilies'),
(18, '_MD_AM_PAGES', '/modules/system/admin.php?fct=pages'),
(19, '_MD_AM_TPLSETS', '/modules/system/admin.php?fct=tplsets'),
(20, '_MD_AM_RANK', '/modules/system/admin.php?fct=userrank'),
(21, 'Version', '/modules/system/admin.php?fct=version');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_autosearch_list`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_autosearch_list` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_autosearch_list`
--

INSERT INTO `ib1941eb7_autosearch_list` (`id`, `cat_id`, `name`, `img`, `desc`, `url`) VALUES
(1, 1, 'Adsenses', '/modules/system/admin/adsense/images/adsense_small.png', 'Adsenses are tags that you can define and use anywhere on your website.', '/modules/system/admin.php?fct=adsense'),
(2, 2, 'Auto Tasks', '/modules/system/admin/autotasks/images/autotasks_small.png', 'Auto Tasks allow you to create a schedule of actions that the system will perform automatically.', '/modules/system/admin.php?fct=autotasks'),
(3, 3, '_MD_AM_AVATARS', '/modules/system/admin/avatars/images/avatars_small.png', '_MD_AM_AVATARS_DSC', '/modules/system/admin.php?fct=avatars'),
(4, 5, '_MD_AM_BKPOSAD', '/modules/system/admin/blockpositions/images/blockpositions_small.png', '_MD_AM_BKPOSAD_DSC', '/modules/system/admin.php?fct=blockpositions'),
(5, 6, '_MD_AM_BKAD', '/modules/system/admin/blocksadmin/images/blocksadmin_small.png', '_MD_AM_BKAD_DSC', '/modules/system/admin.php?fct=blocksadmin'),
(6, 7, '_MD_AM_COMMENTS', '/modules/system/admin/comments/images/comments_small.png', '_MD_AM_COMMENTS_DSC', '/modules/system/admin.php?fct=comments'),
(7, 8, 'Custom Tags', '/modules/system/admin/customtag/images/customtag_small.png', 'Custom Tags are tags that you can define and use anywhere on your website.', '/modules/system/admin.php?fct=customtag'),
(8, 9, '_MD_AM_USER', '/modules/system/admin/users/images/users_small.png', '_MD_AM_USER_DSC', '/modules/system/admin.php?fct=users'),
(9, 10, '_MD_AM_FINDUSER', '/modules/system/admin/findusers/images/findusers_small.png', '_MD_AM_FINDUSER_DSC', '/modules/system/admin.php?fct=findusers'),
(10, 11, '_MD_AM_ADGS', '/modules/system/admin/groups/images/groups_small.png', '_MD_AM_ADGS_DSC', '/modules/system/admin.php?fct=groups'),
(11, 12, '_MD_AM_IMAGES', '/modules/system/admin/images/images/images_small.png', '_MD_AM_IMAGES_DSC', '/modules/system/admin.php?fct=images'),
(12, 13, '_MD_AM_MLUS', '/modules/system/admin/mailusers/images/mailusers_small.png', '_MD_AM_MLUS_DSC', '/modules/system/admin.php?fct=mailusers'),
(13, 14, '_MD_AM_MIMETYPES', '/modules/system/admin/mimetype/images/mimetype_small.png', '_MD_AM_MIMETYPES_DSC', '/modules/system/admin.php?fct=mimetype'),
(14, 15, 'Modules Admin', '/modules/system/admin/modules/images/modules_small.png', 'Manage modules menu weight, status, name or update modules as needed.', '/modules/system/admin.php?fct=modules'),
(15, 16, 'Preferences - Authentication', '/modules/system/admin/preferences/images/preferences_small.png', 'Manage security settings related to accessibility. Settings that will effect how users accounts are handled.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=7'),
(16, 16, 'Preferences - Auto Tasks', '/modules/system/admin/preferences/images/preferences_small.png', 'Preferences for the Auto Tasks system.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=13'),
(17, 16, 'Preferences - Captcha Settings', '/modules/system/admin/preferences/images/preferences_small.png', 'Manage the settings used by captcha throughout your site.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=11'),
(18, 16, 'Preferences - General Settings', '/modules/system/admin/preferences/images/preferences_small.png', 'The primary settings page for basic information needed by the system.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=1'),
(19, 16, 'Preferences - HTMLPurifier Settings', '/modules/system/admin/preferences/images/preferences_small.png', 'HTMLPurifier is used to protect your site against common attack methods.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=14'),
(20, 16, 'Preferences - Mail Setup', '/modules/system/admin/preferences/images/preferences_small.png', 'Configure how your site will handle mail.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=6'),
(21, 16, 'Preferences - Meta + Footer', '/modules/system/admin/preferences/images/preferences_small.png', 'Manage your meta information and site footer as well as your crawler options.', '/modules/system/admin/preferences/images/preferences_small.png'),
(22, 16, 'Preferences - Multilanguage', '/modules/system/admin/preferences/images/preferences_small.png', 'Manage your sites Multi-language settings. Enable, and configure what languages are available and how they are triggered.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=8'),
(23, 16, 'Preferences - Personalization', '/modules/system/admin/preferences/images/preferences_small.png', 'Personalize the system with custom logos and other settings.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=10'),
(24, 16, 'Preferences - Plugins Manager', '/modules/system/admin/preferences/images/preferences_small.png', 'Select which plugins are used and available to be used throughout your site.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=12'),
(25, 16, 'Preferences - Search Options', '/modules/system/admin/preferences/images/preferences_small.png', 'Manage how the search function operates for your users.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=5'),
(26, 16, 'Preferences - User Settings', '/modules/system/admin/preferences/images/preferences_small.png', 'Manage how users register for your site. ser names length, formatting and password options.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=2'),
(27, 16, 'Preferences - Word Censoring', '/modules/system/admin/preferences/images/preferences_small.png', 'Manage the language that is not permitted on your site.', '/modules/system/admin.php?fct=preferences&op=show&confcat_id=4'),
(28, 17, '_MD_AM_RATINGS', '/modules/system/admin/rating/images/rating_small.png', '_MD_AM_RATINGS_DSC', '/modules/system/admin.php?fct=rating'),
(29, 18, '_MD_AM_SMLS', '/modules/system/admin/smilies/images/smilies_small.png', '_MD_AM_SMLS_DSC', '/modules/system/admin.php?fct=smilies'),
(30, 19, '_MD_AM_PAGES', '/modules/system/admin/pages/images/pages_small.png', '_MD_AM_PAGES_DSC', '/modules/system/admin.php?fct=pages'),
(31, 20, '_MD_AM_TPLSETS', '/modules/system/admin/tplsets/images/tplsets_small.png', '_MD_AM_TPLSETS_DSC', '/modules/system/admin.php?fct=tplsets'),
(32, 21, '_MD_AM_RANK', '/modules/system/admin/userrank/images/userrank_small.png', '_MD_AM_RANK_DSC', '/modules/system/admin.php?fct=userrank'),
(33, 22, '_MD_AM_VRSN', '/modules/system/admin/version/images/version_small.png', '_MD_AM_VRSN_DSC', '/modules/system/admin.php?fct=version');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_avatar`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_avatar` (
  `avatar_id` mediumint(8) unsigned NOT NULL,
  `avatar_file` varchar(30) NOT NULL DEFAULT '',
  `avatar_name` varchar(100) NOT NULL DEFAULT '',
  `avatar_mimetype` varchar(30) NOT NULL DEFAULT '',
  `avatar_created` int(10) NOT NULL DEFAULT '0',
  `avatar_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `avatar_weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `avatar_type` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_avatar_user_link`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_avatar_user_link` (
  `avatar_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_block_module_link`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_block_module_link` (
  `block_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_id` smallint(5) NOT NULL DEFAULT '0',
  `page_id` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_block_module_link`
--

INSERT INTO `ib1941eb7_block_module_link` (`block_id`, `module_id`, `page_id`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 1, 2),
(5, 0, 0),
(6, 0, 0),
(7, 1, 2),
(8, 1, 2),
(9, 1, 2),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 1, 2),
(16, 1, 2),
(17, 1, 2),
(18, 0, 0),
(19, 0, 0),
(20, 0, 1),
(21, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_block_positions`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_block_positions` (
  `id` int(11) NOT NULL,
  `pname` varchar(30) DEFAULT '',
  `title` varchar(90) NOT NULL DEFAULT '',
  `description` text,
  `block_default` int(1) NOT NULL DEFAULT '0',
  `block_type` varchar(1) NOT NULL DEFAULT 'L'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_block_positions`
--

INSERT INTO `ib1941eb7_block_positions` (`id`, `pname`, `title`, `description`, `block_default`, `block_type`) VALUES
(1, 'canvas_left', '_AM_SBLEFT', NULL, 1, 'L'),
(2, 'canvas_right', '_AM_SBRIGHT', NULL, 1, 'L'),
(3, 'page_topleft', '_AM_CBLEFT', NULL, 1, 'C'),
(4, 'page_topcenter', '_AM_CBCENTER', NULL, 1, 'C'),
(5, 'page_topright', '_AM_CBRIGHT', NULL, 1, 'C'),
(6, 'page_bottomleft', '_AM_CBBOTTOMLEFT', NULL, 1, 'C'),
(7, 'page_bottomcenter', '_AM_CBBOTTOM', NULL, 1, 'C'),
(8, 'page_bottomright', '_AM_CBBOTTOMRIGHT', NULL, 1, 'C'),
(9, 'canvas_left_admin', '_AM_SBLEFT_ADMIN', NULL, 1, 'L'),
(10, 'canvas_right_admin', '_AM_SBRIGHT_ADMIN', NULL, 1, 'L'),
(11, 'page_topleft_admin', '_AM_CBLEFT_ADMIN', NULL, 1, 'C'),
(12, 'page_topcenter_admin', '_AM_CBCENTER_ADMIN', NULL, 1, 'C'),
(13, 'page_topright_admin', '_AM_CBRIGHT_ADMIN', NULL, 1, 'C'),
(14, 'page_bottomleft_admin', '_AM_CBBOTTOMLEFT_ADMIN', NULL, 1, 'C'),
(15, 'page_bottomcenter_admin', '_AM_CBBOTTOM_ADMIN', NULL, 1, 'C'),
(16, 'page_bottomright_admin', '_AM_CBBOTTOMRIGHT_ADMIN', NULL, 1, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_config`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_config` (
  `conf_id` smallint(5) unsigned NOT NULL,
  `conf_modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `conf_catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `conf_name` varchar(75) NOT NULL DEFAULT '',
  `conf_title` varchar(255) NOT NULL DEFAULT '',
  `conf_value` text NOT NULL,
  `conf_desc` varchar(255) NOT NULL DEFAULT '',
  `conf_formtype` varchar(15) NOT NULL DEFAULT '',
  `conf_valuetype` varchar(10) NOT NULL DEFAULT '',
  `conf_order` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_config`
--

INSERT INTO `ib1941eb7_config` (`conf_id`, `conf_modid`, `conf_catid`, `conf_name`, `conf_title`, `conf_value`, `conf_desc`, `conf_formtype`, `conf_valuetype`, `conf_order`) VALUES
(1, 0, 1, 'sitename', '_MD_AM_SITENAME', 'ImpressCMS', '_MD_AM_SITENAMEDSC', 'textbox', 'text', 0),
(2, 0, 1, 'slogan', '_MD_AM_SLOGAN', 'Make a lasting impression ', '_MD_AM_SLOGANDSC', 'textbox', 'text', 1),
(3, 0, 1, 'adminmail', '_MD_AM_ADMINML', 'admin@impresscms.dev', '_MD_AM_ADMINMLDSC', 'textbox', 'text', 2),
(4, 0, 1, 'language', '_MD_AM_LANGUAGE', 'english', '_MD_AM_LANGUAGEDSC', 'language', 'other', 3),
(5, 0, 1, 'startpage', '_MD_AM_STARTPAGE', 'a:3:{i:1;s:2:"--";i:2;s:2:"--";i:3;s:2:"--";}', '_MD_AM_STARTPAGEDSC', 'startpage', 'array', 4),
(6, 0, 1, 'server_TZ', '_MD_AM_SERVERTZ', '0', '_MD_AM_SERVERTZDSC', 'timezone', 'float', 5),
(7, 0, 1, 'default_TZ', '_MD_AM_DEFAULTTZ', '0', '_MD_AM_DEFAULTTZDSC', 'timezone', 'float', 6),
(8, 0, 1, 'use_ext_date', '_MD_AM_EXT_DATE', '0', '_MD_AM_EXT_DATEDSC', 'yesno', 'int', 7),
(9, 0, 1, 'theme_set', '_MD_AM_DTHEME', 'iTheme', '_MD_AM_DTHEMEDSC', 'theme', 'other', 8),
(10, 0, 1, 'theme_admin_set', '_MD_AM_ADMIN_DTHEME', 'iTheme', '_MD_AM_ADMIN_DTHEME_DESC', 'theme_admin', 'other', 9),
(11, 0, 1, 'theme_fromfile', '_MD_AM_THEMEFILE', '0', '_MD_AM_THEMEFILEDSC', 'yesno', 'int', 10),
(12, 0, 1, 'theme_set_allowed', '_MD_AM_THEMEOK', 'a:1:{i:0;s:6:"iTheme";}', '_MD_AM_THEMEOKDSC', 'theme_multi', 'array', 11),
(13, 0, 1, 'template_set', '_MD_AM_DTPLSET', 'default', '_MD_AM_DTPLSETDSC', 'tplset', 'other', 12),
(14, 0, 1, 'editor_default', '_MD_AM_EDITOR_DEFAULT', 'dhtmltextarea', '_MD_AM_EDITOR_DEFAULT_DESC', 'editor', 'text', 13),
(15, 0, 1, 'editor_enabled_list', '_MD_AM_EDITOR_ENABLED_LIST', 'a:3:{i:0;s:13:"dhtmltextarea";i:1;s:9:"FCKeditor";i:2;s:7:"tinymce";}', '_MD_AM_EDITOR_ENABLED_LIST_DESC', 'editor_multi', 'array', 14),
(16, 0, 1, 'sourceeditor_default', '_MD_AM_SRCEDITOR_DEFAULT', 'editarea', '_MD_AM_SRCEDITOR_DEFAULT_DESC', 'editor_source', 'text', 15),
(17, 0, 1, 'anonymous', '_MD_AM_ANONNAME', 'Anonymous', '_MD_AM_ANONNAMEDSC', 'textbox', 'text', 16),
(18, 0, 1, 'gzip_compression', '_MD_AM_USEGZIP', '0', '_MD_AM_USEGZIPDSC', 'yesno', 'int', 17),
(19, 0, 1, 'usercookie', '_MD_AM_USERCOOKIE', 'icms_user', '_MD_AM_USERCOOKIEDSC', 'textbox', 'text', 18),
(20, 0, 1, 'use_mysession', '_MD_AM_USEMYSESS', '0', '_MD_AM_USEMYSESSDSC', 'yesno', 'int', 19),
(21, 0, 1, 'session_name', '_MD_AM_SESSNAME', 'icms_session', '_MD_AM_SESSNAMEDSC', 'textbox', 'text', 20),
(22, 0, 1, 'session_expire', '_MD_AM_SESSEXPIRE', '15', '_MD_AM_SESSEXPIREDSC', 'textbox', 'int', 21),
(23, 0, 1, 'debug_mode', '_MD_AM_DEBUGMODE', '0', '_MD_AM_DEBUGMODEDSC', 'select', 'int', 22),
(24, 0, 1, 'closesite', '_MD_AM_CLOSESITE', '0', '_MD_AM_CLOSESITEDSC', 'yesno', 'int', 23),
(25, 0, 1, 'closesite_okgrp', '_MD_AM_CLOSESITEOK', 'a:1:{i:0;s:1:"1";}', '_MD_AM_CLOSESITEOKDSC', 'group_multi', 'array', 24),
(26, 0, 1, 'closesite_text', '_MD_AM_CLOSESITETXT', 'The site is currently closed for maintenance. Please come back later.', '_MD_AM_CLOSESITETXTDSC', 'textsarea', 'text', 25),
(27, 0, 1, 'my_ip', '_MD_AM_MYIP', '127.0.0.1', '_MD_AM_MYIPDSC', 'textbox', 'text', 26),
(28, 0, 1, 'use_ssl', '_MD_AM_USESSL', '0', '_MD_AM_USESSLDSC', 'yesno', 'int', 27),
(29, 0, 1, 'sslpost_name', '_MD_AM_SSLPOST', 'icms_ssl', '_MD_AM_SSLPOSTDSC', 'textbox', 'text', 28),
(30, 0, 1, 'sslloginlink', '_MD_AM_SSLLINK', 'https://', '_MD_AM_SSLLINKDSC', 'textbox', 'text', 29),
(31, 0, 1, 'com_mode', '_MD_AM_COMMODE', 'nest', '_MD_AM_COMMODEDSC', 'select', 'text', 30),
(32, 0, 1, 'com_order', '_MD_AM_COMORDER', '0', '_MD_AM_COMORDERDSC', 'select', 'int', 31),
(33, 0, 1, 'use_captchaf', '_MD_AM_USECAPTCHAFORM', '1', '_MD_AM_USECAPTCHAFORMDSC', 'yesno', 'int', 32),
(34, 0, 1, 'enable_badips', '_MD_AM_DOBADIPS', '0', '_MD_AM_DOBADIPSDSC', 'yesno', 'int', 33),
(35, 0, 1, 'bad_ips', '_MD_AM_BADIPS', 'a:1:{i:0;s:9:"127.0.0.1";}', '_MD_AM_BADIPSDSC', 'textsarea', 'array', 34),
(36, 0, 1, 'module_cache', '_MD_AM_MODCACHE', '', '_MD_AM_MODCACHEDSC', 'module_cache', 'array', 35),
(37, 0, 2, 'allow_register', '_MD_AM_ALLOWREG', '1', '_MD_AM_ALLOWREGDSC', 'yesno', 'int', 0),
(38, 0, 2, 'minpass', '_MD_AM_MINPASS', '5', '_MD_AM_MINPASSDSC', 'textbox', 'int', 1),
(39, 0, 2, 'pass_level', '_MD_AM_PASSLEVEL', '40', '_MD_AM_PASSLEVEL_DESC', 'select', 'int', 2),
(40, 0, 2, 'minuname', '_MD_AM_MINUNAME', '3', '_MD_AM_MINUNAMEDSC', 'textbox', 'int', 3),
(41, 0, 2, 'maxuname', '_MD_AM_MAXUNAME', '20', '_MD_AM_MAXUNAMEDSC', 'textbox', 'int', 4),
(42, 0, 2, 'delusers', '_MD_AM_DELUSRES', '30', '_MD_AM_DELUSRESDSC', 'textbox', 'int', 5),
(43, 0, 2, 'use_captcha', '_MD_AM_USECAPTCHA', '1', '_MD_AM_USECAPTCHADSC', 'yesno', 'int', 6),
(44, 0, 2, 'welcome_msg', '_MD_AM_WELCOMEMSG', '0', '_MD_AM_WELCOMEMSGDSC', 'yesno', 'int', 7),
(45, 0, 2, 'welcome_msg_content', '_MD_AM_WELCOMEMSG_CONTENT', 'Welcome {UNAME},\r\n\r\nYour account has been successfully activated on {X_SITENAME}. As a member of our site, you will benefit from all the features reserved to registered members !\r\n\r\nOnce again, welcome to our site. Visit us often !\r\n\r\nIf you did not registered to our site, please contact us at the following address {X_ADMINMAIL}, and we will fix the situation.\r\n\r\n-----------\r\nYours truly,\r\n{X_SITENAME}\r\n{X_SITEURL}', '_MD_AM_WELCOMEMSG_CONTENTDSC', 'textsarea', 'text', 8),
(46, 0, 2, 'allow_chgmail', '_MD_AM_ALLWCHGMAIL', '0', '_MD_AM_ALLWCHGMAILDSC', 'yesno', 'int', 9),
(47, 0, 2, 'allow_chguname', '_MD_AM_ALLWCHGUNAME', '0', '_MD_AM_ALLWCHGUNAMEDSC', 'yesno', 'int', 10),
(48, 0, 2, 'allwshow_sig', '_MD_AM_ALLWSHOWSIG', '1', '_MD_AM_ALLWSHOWSIGDSC', 'yesno', 'int', 11),
(49, 0, 2, 'allow_htsig', '_MD_AM_ALLWHTSIG', '1', '_MD_AM_ALLWHTSIGDSC', 'yesno', 'int', 12),
(50, 0, 2, 'sig_max_length', '_MD_AM_SIGMAXLENGTH', '255', '_MD_AM_SIGMAXLENGTHDSC', 'textbox', 'int', 13),
(51, 0, 2, 'new_user_notify', '_MD_AM_NEWUNOTIFY', '1', '_MD_AM_NEWUNOTIFYDSC', 'yesno', 'int', 14),
(52, 0, 2, 'new_user_notify_group', '_MD_AM_NOTIFYTO', '1', '_MD_AM_NOTIFYTODSC', 'group', 'int', 15),
(53, 0, 2, 'activation_type', '_MD_AM_ACTVTYPE', '0', '_MD_AM_ACTVTYPEDSC', 'select', 'int', 16),
(54, 0, 2, 'activation_group', '_MD_AM_ACTVGROUP', '1', '_MD_AM_ACTVGROUPDSC', 'group', 'int', 17),
(55, 0, 2, 'uname_test_level', '_MD_AM_UNAMELVL', '0', '_MD_AM_UNAMELVLDSC', 'select', 'int', 18),
(56, 0, 2, 'avatar_allow_upload', '_MD_AM_AVATARALLOW', '0', '_MD_AM_AVATARALWDSC', 'yesno', 'int', 19),
(57, 0, 2, 'avatar_allow_gravatar', '_MD_AM_GRAVATARALLOW', '1', '_MD_AM_GRAVATARALWDSC', 'yesno', 'int', 20),
(58, 0, 2, 'avatar_minposts', '_MD_AM_AVATARMP', '0', '_MD_AM_AVATARMPDSC', 'textbox', 'int', 21),
(59, 0, 2, 'avatar_width', '_MD_AM_AVATARW', '80', '_MD_AM_AVATARWDSC', 'textbox', 'int', 22),
(60, 0, 2, 'avatar_height', '_MD_AM_AVATARH', '80', '_MD_AM_AVATARHDSC', 'textbox', 'int', 23),
(61, 0, 2, 'avatar_maxsize', '_MD_AM_AVATARMAX', '35000', '_MD_AM_AVATARMAXDSC', 'textbox', 'int', 24),
(62, 0, 2, 'self_delete', '_MD_AM_SELFDELETE', '0', '_MD_AM_SELFDELETEDSC', 'yesno', 'int', 25),
(63, 0, 2, 'rank_width', '_MD_AM_RANKW', '120', '_MD_AM_RANKWDSC', 'textbox', 'int', 26),
(64, 0, 2, 'rank_height', '_MD_AM_RANKH', '120', '_MD_AM_RANKHDSC', 'textbox', 'int', 27),
(65, 0, 2, 'rank_maxsize', '_MD_AM_RANKMAX', '35000', '_MD_AM_RANKMAXDSC', 'textbox', 'int', 28),
(66, 0, 2, 'bad_unames', '_MD_AM_BADUNAMES', 'a:3:{i:0;s:9:"webmaster";i:1;s:11:"^impresscms";i:2;s:6:"^admin";}', '_MD_AM_BADUNAMESDSC', 'textsarea', 'array', 29),
(67, 0, 2, 'bad_emails', '_MD_AM_BADEMAILS', 'a:1:{i:0;s:15:"impresscms.org$";}', '_MD_AM_BADEMAILSDSC', 'textsarea', 'array', 30),
(68, 0, 2, 'remember_me', '_MD_AM_REMEMBERME', '0', '_MD_AM_REMEMBERMEDSC', 'yesno', 'int', 31),
(69, 0, 2, 'reg_dispdsclmr', '_MD_AM_DSPDSCLMR', '1', '_MD_AM_DSPDSCLMRDSC', 'yesno', 'int', 32),
(70, 0, 2, 'reg_disclaimer', '_MD_AM_REGDSCLMR', 'While the administrators and moderators of this site will attempt to remove or edit any generally objectionable material as quickly as possible, it is impossible to review every message. Therefore you acknowledge that all posts made to this site express the views and opinions of the author and not the administrators, moderators or webmaster (except for posts by these people) and hence will not be held liable.\r\n\r\nYou agree not to post any abusive, obscene, vulgar, slanderous, hateful, threatening, sexually-orientated or any other material that may violate any applicable laws. Doing so may lead to you being immediately and permanently banned (and your service provider being informed). The IP address of all posts is recorded to aid in enforcing these conditions. Creating multiple accounts for a single user is not allowed. You agree that the webmaster, administrator and moderators of this site have the right to remove, edit, move or close any topic at any time should they see fit. As a user you agree to any information you have entered above being stored in a database. While this information will not be disclosed to any third party without your consent the webmaster, administrator and moderators cannot be held responsible for any hacking attempt that may lead to the data being compromised.\r\n\r\nThis site system uses cookies to store information on your local computer. These cookies do not contain any of the information you have entered above, they serve only to improve your viewing pleasure. The email address is used only for confirming your registration details and password (and for sending new passwords should you forget your current one).\r\n\r\nBy clicking Register below you agree to be bound by these conditions.', '_MD_AM_REGDSCLMRDSC', 'textsarea', 'text', 33),
(71, 0, 2, 'priv_dpolicy', '_MD_AM_PRIVDPOLICY', '0', '_MD_AM_PRIVDPOLICYDSC', 'yesno', 'int', 34),
(72, 0, 2, 'priv_policy', '_MD_AM_PRIVPOLICY', '<p>This privacy policy sets out how {X_SITENAME} uses and protects any information that you provide when you use this website. {X_SITENAME} is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement. {X_SITENAME} may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes.\r\n</p><p>\r\nThis policy is effective from [date].\r\n</p>\r\n<h2>What we collect</h2>\r\n<p>\r\nWe may collect the following information:\r\n<ul>\r\n<li>name and job title</li>\r\n<li>contact information including email address</li>\r\n<li>demographic information such as postcode, preferences and interests</li>\r\n<li>other information relevant to customer surveys and/or offers</li></ul>\r\n</p>\r\n<h2>What we do with the information we gather</h2>\r\n<p>\r\nWe require this information to understand your needs and provide you with a better service, and in particular for the following reasons:\r\n<ul>\r\n<li>Internal record keeping.</li>\r\n<li>We may use the information to improve our products and services.</li>\r\n<li>We may periodically send promotional email about new products, special offers or other information which we think you may find interesting using the email address which you have provided.</li>\r\n<li>From time to time, we may also use your information to contact you for market research purposes. We may contact you by email.</li>\r\n<li>We may use the information to customise the website according to your interests.</li></ul>\r\n</p>\r\n<h2>Security</h2>\r\n<p>\r\nWe are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.\r\n</p>\r\n<h2>How we use cookies</h2>\r\n<p>\r\nA cookie is a small file which asks permission to be placed on your computer''s hard drive. Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.\r\n</p><p>\r\nWe use traffic log cookies to identify which pages are being used & for authenticating you as a registered member. This helps us analyse data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system. Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us.\r\n</p><p>\r\nYou can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website including registration and logging in.\r\n</p>\r\n<h2>Links to other websites</h2>\r\n<p>\r\nOur website may contain links to enable you to visit other websites of interest easily. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.\r\n</p>\r\n<h2>Controlling your personal information</h2>\r\n<p>\r\nYou may choose to restrict the collection or use of your personal information in the following ways:\r\n<ul>\r\n<li>whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes</li>\r\n<li>if you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by writing to or emailing us at [email address]</li></ul>\r\n</p><p>\r\nWe will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen. You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee will be payable. If you would like a copy of the information held on you please write to [address].\r\n</p><p>\r\nIf you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible, at the above address. We will promptly correct any information found to be incorrect.\r\n</p>', '_MD_AM_PRIVPOLICYDSC', 'textsarea', 'text', 35),
(73, 0, 2, 'allow_annon_view_prof', '_MD_AM_ALLOW_ANONYMOUS_VIEW_PROFILE', '0', '_MD_AM_ALLOW_ANONYMOUS_VIEW_PROFILE_DESC', 'yesno', 'int', 36),
(74, 0, 2, 'enc_type', '_MD_AM_ENC_TYPE', '23', '_MD_AM_ENC_TYPEDSC', 'select', 'int', 37),
(75, 0, 3, 'meta_keywords', '_MD_AM_METAKEY', 'community management system, CMS, content management, social networking, community, blog, support, modules, add-ons, themes', '_MD_AM_METAKEYDSC', 'textsarea', 'text', 0),
(76, 0, 3, 'meta_description', '_MD_AM_METADESC', 'ImpressCMS is a dynamic Object Oriented based open source portal script written in PHP.', '_MD_AM_METADESCDSC', 'textsarea', 'text', 1),
(77, 0, 3, 'meta_robots', '_MD_AM_METAROBOTS', 'index,follow', '_MD_AM_METAROBOTSDSC', 'select', 'text', 2),
(78, 0, 3, 'meta_rating', '_MD_AM_METARATING', 'general', '_MD_AM_METARATINGDSC', 'select', 'text', 3),
(79, 0, 3, 'meta_author', '_MD_AM_METAAUTHOR', 'ImpressCMS', '_MD_AM_METAAUTHORDSC', 'textbox', 'text', 4),
(80, 0, 3, 'meta_copyright', '_MD_AM_METACOPYR', 'Copyright &copy; 2007-2015', '_MD_AM_METACOPYRDSC', 'textbox', 'text', 5),
(81, 0, 3, 'google_meta', '_MD_AM_METAGOOGLE', '', '_MD_AM_METAGOOGLE_DESC', 'textbox', 'text', 6),
(82, 0, 3, 'footer', '_MD_AM_FOOTER', 'Powered by ImpressCMS &copy; 2007-2015 <a href="http://www.impresscms.org/" rel="external">The ImpressCMS Project</a><br />Hosting by <a href="http://www.siteground.com/impresscms-hosting.htm?afcode=7e9aa639d30265c079823a498f5b8f15">SiteGround</a>', '_MD_AM_FOOTERDSC', 'textsarea', 'text', 7),
(83, 0, 3, 'use_google_analytics', '_MD_AM_USE_GOOGLE_ANA', '0', '_MD_AM_USE_GOOGLE_ANA_DESC', 'yesno', 'int', 8),
(84, 0, 3, 'google_analytics', '_MD_AM_GOOGLE_ANA', '', '_MD_AM_GOOGLE_ANA_DESC', 'textbox', 'text', 9),
(85, 0, 3, 'footadm', '_MD_AM_FOOTADM', 'Powered by ImpressCMS &copy; 2007-2015 <a href="http://www.impresscms.org/" rel="external">The ImpressCMS Project</a><br />Hosting by <a href="http://www.siteground.com/impresscms-hosting.htm?afcode=7e9aa639d30265c079823a498f5b8f15">SiteGround</a>', '_MD_AM_FOOTADM_DESC', 'textsarea', 'text', 10),
(86, 0, 4, 'censor_enable', '_MD_AM_DOCENSOR', '0', '_MD_AM_DOCENSORDSC', 'yesno', 'int', 0),
(87, 0, 4, 'censor_words', '_MD_AM_CENSORWRD', 'a:5:{i:0;s:4:"fuck";i:1;s:4:"shit";i:2;s:4:"cunt";i:3;s:6:"wanker";i:4;s:7:"bastard";}', '_MD_AM_CENSORWRDDSC', 'textsarea', 'array', 1),
(88, 0, 4, 'censor_replace', '_MD_AM_CENSORRPLC', '#OOPS#', '_MD_AM_CENSORRPLCDSC', 'textbox', 'text', 2),
(89, 0, 5, 'enable_search', '_MD_AM_DOSEARCH', '1', '_MD_AM_DOSEARCHDSC', 'yesno', 'int', 0),
(90, 0, 5, 'enable_deep_search', '_MD_AM_DODEEPSEARCH', '1', '_MD_AM_DODEEPSEARCHDSC', 'yesno', 'int', 1),
(91, 0, 5, 'num_shallow_search', '_MD_AM_NUMINITSRCHRSLTS', '5', '_MD_AM_NUMINITSRCHRSLTSDSC', 'textbox', 'int', 2),
(92, 0, 5, 'keyword_min', '_MD_AM_MINSEARCH', '3', '_MD_AM_MINSEARCHDSC', 'textbox', 'int', 3),
(93, 0, 5, 'search_user_date', '_MD_AM_SEARCH_USERDATE', '1', '_MD_AM_SEARCH_USERDATE', 'yesno', 'int', 4),
(94, 0, 5, 'search_no_res_mod', '_MD_AM_SEARCH_NO_RES_MOD', '1', '_MD_AM_SEARCH_NO_RES_MODDSC', 'yesno', 'int', 5),
(95, 0, 5, 'search_per_page', '_MD_AM_SEARCH_PER_PAGE', '20', '_MD_AM_SEARCH_PER_PAGEDSC', 'textbox', 'int', 6),
(96, 0, 6, 'from', '_MD_AM_MAILFROM', '', '_MD_AM_MAILFROMDESC', 'textbox', 'text', 0),
(97, 0, 6, 'fromname', '_MD_AM_MAILFROMNAME', '', '_MD_AM_MAILFROMNAMEDESC', 'textbox', 'text', 1),
(98, 0, 6, 'fromuid', '_MD_AM_MAILFROMUID', '1', '_MD_AM_MAILFROMUIDDESC', 'user', 'int', 2),
(99, 0, 6, 'mailmethod', '_MD_AM_MAILERMETHOD', 'mail', '_MD_AM_MAILERMETHODDESC', 'select', 'text', 3),
(100, 0, 6, 'smtphost', '_MD_AM_SMTPHOST', 'a:1:{i:0;s:0:"";}', '_MD_AM_SMTPHOSTDESC', 'textsarea', 'array', 4),
(101, 0, 6, 'smtpuser', '_MD_AM_SMTPUSER', '', '_MD_AM_SMTPUSERDESC', 'textbox', 'text', 5),
(102, 0, 6, 'smtppass', '_MD_AM_SMTPPASS', '', '_MD_AM_SMTPPASSDESC', 'password', 'text', 6),
(103, 0, 6, 'smtpsecure', '_MD_AM_SMTPSECURE', 'ssl', '_MD_AM_SMTPSECUREDESC', 'select', 'text', 7),
(104, 0, 6, 'smtpauthport', '_MD_AM_SMTPAUTHPORT', '465', '_MD_AM_SMTPAUTHPORTDESC', 'textbox', 'int', 8),
(105, 0, 6, 'sendmailpath', '_MD_AM_SENDMAILPATH', '/usr/sbin/sendmail', '_MD_AM_SENDMAILPATHDESC', 'textbox', 'text', 9),
(106, 0, 7, 'auth_method', '_MD_AM_AUTHMETHOD', 'local', '_MD_AM_AUTHMETHODDESC', 'select', 'text', 0),
(107, 0, 7, 'auth_openid', '_MD_AM_AUTHOPENID', '0', '_MD_AM_AUTHOPENIDDSC', 'yesno', 'int', 1),
(108, 0, 7, 'ldap_port', '_MD_AM_LDAP_PORT', '389', '_MD_AM_LDAP_PORT', 'textbox', 'int', 2),
(109, 0, 7, 'ldap_server', '_MD_AM_LDAP_SERVER', 'your directory server', '_MD_AM_LDAP_SERVER_DESC', 'textbox', 'text', 3),
(110, 0, 7, 'ldap_base_dn', '_MD_AM_LDAP_BASE_DN', 'dc=icms,dc=org', '_MD_AM_LDAP_BASE_DN_DESC', 'textbox', 'text', 4),
(111, 0, 7, 'ldap_manager_dn', '_MD_AM_LDAP_MANAGER_DN', 'manager_dn', '_MD_AM_LDAP_MANAGER_DN_DESC', 'textbox', 'text', 5),
(112, 0, 7, 'ldap_manager_pass', '_MD_AM_LDAP_MANAGER_PASS', 'manager_pass', '_MD_AM_LDAP_MANAGER_PASS_DESC', 'password', 'text', 6),
(113, 0, 7, 'ldap_version', '_MD_AM_LDAP_VERSION', '3', '_MD_AM_LDAP_VERSION_DESC', 'textbox', 'text', 7),
(114, 0, 7, 'ldap_users_bypass', '_MD_AM_LDAP_USERS_BYPASS', 'a:1:{i:0;s:5:"admin";}', '_MD_AM_LDAP_USERS_BYPASS_DESC', 'textsarea', 'array', 8),
(115, 0, 7, 'ldap_loginname_asdn', '_MD_AM_LDAP_LOGINNAME_ASDN', 'uid_asdn', '_MD_AM_LDAP_LOGINNAME_ASDN_D', 'yesno', 'int', 9),
(116, 0, 7, 'ldap_loginldap_attr', '_MD_AM_LDAP_LOGINLDAP_ATTR', 'uid', '_MD_AM_LDAP_LOGINLDAP_ATTR_D', 'textbox', 'text', 10),
(117, 0, 7, 'ldap_filter_person', '_MD_AM_LDAP_FILTER_PERSON', '', '_MD_AM_LDAP_FILTER_PERSON_DESC', 'textbox', 'text', 11),
(118, 0, 7, 'ldap_domain_name', '_MD_AM_LDAP_DOMAIN_NAME', 'mydomain', '_MD_AM_LDAP_DOMAIN_NAME_DESC', 'textbox', 'text', 12),
(119, 0, 7, 'ldap_provisionning', '_MD_AM_LDAP_PROVIS', '0', '_MD_AM_LDAP_PROVIS_DESC', 'yesno', 'int', 13),
(120, 0, 7, 'ldap_provisionning_group', '_MD_AM_LDAP_PROVIS_GROUP', 'a:1:{i:0;s:1:"2";}', '_MD_AM_LDAP_PROVIS_GROUP_DSC', 'group_multi', 'array', 14),
(121, 0, 7, 'ldap_mail_attr', '_MD_AM_LDAP_MAIL_ATTR', 'mail', '_MD_AM_LDAP_MAIL_ATTR_DESC', 'textbox', 'text', 15),
(122, 0, 7, 'ldap_givenname_attr', '_MD_AM_LDAP_GIVENNAME_ATTR', 'givenname', '_MD_AM_LDAP_GIVENNAME_ATTR_DSC', 'textbox', 'text', 16),
(123, 0, 7, 'ldap_surname_attr', '_MD_AM_LDAP_SURNAME_ATTR', 'sn', '_MD_AM_LDAP_SURNAME_ATTR_DESC', 'textbox', 'text', 17),
(124, 0, 7, 'ldap_field_mapping', '_MD_AM_LDAP_FIELD_MAPPING_ATTR', 'email=mail|name=displayname', '_MD_AM_LDAP_FIELD_MAPPING_DESC', 'textsarea', 'text', 18),
(125, 0, 7, 'ldap_provisionning_upd', '_MD_AM_LDAP_PROVIS_UPD', '1', '_MD_AM_LDAP_PROVIS_UPD_DESC', 'yesno', 'int', 19),
(126, 0, 7, 'ldap_use_TLS', '_MD_AM_LDAP_USETLS', '0', '_MD_AM_LDAP_USETLS_DESC', 'yesno', 'int', 20),
(127, 0, 8, 'ml_enable', '_MD_AM_ML_ENABLE', '0', '_MD_AM_ML_ENABLEDEC', 'yesno', 'int', 0),
(128, 0, 8, 'ml_autoselect_enabled', '_MD_AM_ML_AUTOSELECT_ENABLED', '0', '_MD_AM_ML_AUTOSELECT_ENABLED_DESC', 'yesno', 'int', 1),
(129, 0, 8, 'ml_tags', '_MD_AM_ML_TAGS', 'en,de', '_MD_AM_ML_TAGSDSC', 'textbox', 'text', 2),
(130, 0, 8, 'ml_names', '_MD_AM_ML_NAMES', 'english,german', '_MD_AM_ML_NAMESDSC', 'textbox', 'text', 3),
(131, 0, 8, 'ml_captions', '_MD_AM_ML_CAPTIONS', 'English,Deutsch', '_MD_AM_ML_CAPTIONSDSC', 'textbox', 'text', 4),
(132, 0, 8, 'ml_charset', '_MD_AM_ML_CHARSET', 'UTF-8,UTF-8', '_MD_AM_ML_CHARSETDSC', 'textbox', 'text', 5),
(133, 0, 10, 'adm_left_logo', '_MD_AM_LLOGOADM', '/uploads/imagemanager/logos/img482278e29e81c.png', '_MD_AM_LLOGOADM_DESC', 'select_image', 'text', 0),
(134, 0, 10, 'adm_left_logo_url', '_MD_AM_LLOGOADM_URL', 'http://192.168.0.105/', '_MD_AM_LLOGOADM_URL_DESC', 'textbox', 'text', 1),
(135, 0, 10, 'adm_left_logo_alt', '_MD_AM_LLOGOADM_ALT', 'ImpressCMS', '_MD_AM_LLOGOADM_ALT_DESC', 'textbox', 'text', 2),
(136, 0, 10, 'adm_right_logo', '_MD_AM_RLOGOADM', '', '_MD_AM_RLOGOADM_DESC', 'select_image', 'text', 3),
(137, 0, 10, 'adm_right_logo_url', '_MD_AM_RLOGOADM_URL', '', '_MD_AM_RLOGOADM_URL_DESC', 'textbox', 'text', 4),
(138, 0, 10, 'adm_right_logo_alt', '_MD_AM_RLOGOADM_ALT', '', '_MD_AM_RLOGOADM_ALT_DESC', 'textbox', 'text', 5),
(139, 0, 10, 'rss_local', '_MD_AM_RSSLOCAL', 'http://community.impresscms.org/modules/smartsection/backend.php', '_MD_AM_RSSLOCAL_DESC', 'textbox', 'text', 6),
(140, 0, 10, 'editre_block', '_MD_AM_EDITREMOVEBLOCK', '1', '_MD_AM_EDITREMOVEBLOCKDSC', 'yesno', 'int', 7),
(141, 0, 10, 'use_custom_redirection', '_MD_AM_CUSTOMRED', '1', '_MD_AM_CUSTOMREDDSC', 'yesno', 'int', 8),
(142, 0, 10, 'multi_login', '_MD_AM_MULTLOGINPREVENT', '0', '_MD_AM_MULTLOGINPREVENTDSC', 'yesno', 'int', 9),
(143, 0, 10, 'email_protect', '_MD_AM_EMAILPROTECT', '0', '_MD_AM_EMAILPROTECTDSC', 'select', 'text', 10),
(144, 0, 10, 'email_font', '_MD_AM_EMAILTTF', 'arial.ttf', '_MD_AM_EMAILTTF_DESC', 'select_font', 'text', 11),
(145, 0, 10, 'email_font_len', '_MD_AM_EMAILLEN', '10', '_MD_AM_EMAILLEN_DESC', 'textbox', 'int', 12),
(146, 0, 10, 'email_cor', '_MD_AM_EMAILCOLOR', '#000000', '_MD_AM_EMAILCOLOR_DESC', 'color', 'text', 13),
(147, 0, 10, 'email_shadow', '_MD_AM_EMAILSHADOW', '#cccccc', '_MD_AM_EMAILSHADOW_DESC', 'color', 'text', 14),
(148, 0, 10, 'shadow_x', '_MD_AM_SHADOWX', '2', '_MD_AM_SHADOWX_DESC', 'textbox', 'int', 15),
(149, 0, 10, 'shadow_y', '_MD_AM_SHADOWY', '2', '_MD_AM_SHADOWY_DESC', 'textbox', 'int', 16),
(150, 0, 10, 'recprvkey', '_MD_AM_RECPRVKEY', '', '_MD_AM_RECPRVKEY_DESC', 'textbox', 'text', 17),
(151, 0, 10, 'recpubkey', '_MD_AM_RECPUBKEY', '', '_MD_AM_RECPUBKEY_DESC', 'textbox', 'text', 18),
(152, 0, 10, 'shorten_url', '_MD_AM_SHORTURL', '0', '_MD_AM_SHORTURLDSC', 'yesno', 'int', 19),
(153, 0, 10, 'max_url_long', '_MD_AM_URLLEN', '50', '_MD_AM_URLLEN_DESC', 'textbox', 'int', 20),
(154, 0, 10, 'pre_chars_left', '_MD_AM_PRECHARS', '35', '_MD_AM_PRECHARS_DESC', 'textbox', 'int', 21),
(155, 0, 10, 'last_chars_left', '_MD_AM_LASTCHARS', '10', '_MD_AM_LASTCHARS_DESC', 'textbox', 'int', 22),
(156, 0, 10, 'show_impresscms_menu', '_MD_AM_SHOW_ICMSMENU', '1', '_MD_AM_SHOW_ICMSMENU_DESC', 'yesno', 'int', 23),
(157, 0, 10, 'use_jsjalali', '_MD_AM_JALALICAL', '0', '_MD_AM_JALALICALDSC', 'yesno', 'int', 24),
(158, 0, 10, 'pagstyle', '_MD_AM_PAGISTYLE', 'default', '_MD_AM_PAGISTYLE_DESC', 'select_paginati', 'text', 25),
(159, 0, 11, 'captcha_mode', '_MD_AM_CAPTCHA_MODE', 'image', '_MD_AM_CAPTCHA_MODEDSC', 'select', 'text', 0),
(160, 0, 11, 'captcha_skipmember', '_MD_AM_CAPTCHA_SKIPMEMBER', 'a:1:{i:0;s:1:"2";}', '_MD_AM_CAPTCHA_SKIPMEMBERDSC', 'group_multi', 'array', 1),
(161, 0, 11, 'captcha_casesensitive', '_MD_AM_CAPTCHA_CASESENS', '0', '_MD_AM_CAPTCHA_CASESENSDSC', 'yesno', 'int', 2),
(162, 0, 11, 'captcha_skip_characters', '_MD_AM_CAPTCHA_SKIPCHAR', 'a:5:{i:0;s:1:"o";i:1;s:1:"0";i:2;s:1:"i";i:3;s:1:"l";i:4;s:1:"1";}', '_MD_AM_CAPTCHA_SKIPCHARDSC', 'textsarea', 'array', 3),
(163, 0, 11, 'captcha_maxattempt', '_MD_AM_CAPTCHA_MAXATTEMP', '8', '_MD_AM_CAPTCHA_MAXATTEMPDSC', 'textbox', 'int', 4),
(164, 0, 11, 'captcha_num_chars', '_MD_AM_CAPTCHA_NUMCHARS', '4', '_MD_AM_CAPTCHA_NUMCHARSDSC', 'textbox', 'int', 5),
(165, 0, 11, 'captcha_fontsize_min', '_MD_AM_CAPTCHA_FONTMIN', '10', '_MD_AM_CAPTCHA_FONTMINDSC', 'textbox', 'int', 6),
(166, 0, 11, 'captcha_fontsize_max', '_MD_AM_CAPTCHA_FONTMAX', '12', '_MD_AM_CAPTCHA_FONTMAXDSC', 'textbox', 'int', 7),
(167, 0, 11, 'captcha_background_type', '_MD_AM_CAPTCHA_BGTYPE', '100', '_MD_AM_CAPTCHA_BGTYPEDSC', 'select', 'text', 8),
(168, 0, 11, 'captcha_background_num', '_MD_AM_CAPTCHA_BGNUM', '50', '_MD_AM_CAPTCHA_BGNUMDSC', 'textbox', 'int', 9),
(169, 0, 11, 'captcha_polygon_point', '_MD_AM_CAPTCHA_POLPNT', '3', '_MD_AM_CAPTCHA_POLPNTDSC', 'textbox', 'int', 10),
(170, 0, 12, 'sanitizer_plugins', '_MD_AM_SELECTSPLUGINS', 'a:2:{i:0;s:18:"syntaxhighlightphp";i:1;s:13:"hiddencontent";}', '_MD_AM_SELECTSPLUGINS_DESC', 'select_plugin', 'array', 0),
(171, 0, 12, 'code_sanitizer', '_MD_AM_SELECTSHIGHLIGHT', 'none', '_MD_AM_SELECTSHIGHLIGHT_DESC', 'select', 'text', 1),
(172, 0, 12, 'geshi_default', '_MD_AM_GESHI_DEFAULT', 'php', '_MD_AM_GESHI_DEFAULT_DESC', 'select_geshi', 'text', 2),
(173, 0, 13, 'autotasks_system', '_MD_AM_AUTOTASKS_SYSTEM', 'internal', '_MD_AM_AUTOTASKS_SYSTEMDSC', 'autotasksystem', 'text', 0),
(174, 0, 13, 'autotasks_helper', '_MD_AM_AUTOTASKS_HELPER', 'wget %url%', '_MD_AM_AUTOTASKS_HELPERDSC', 'select', 'text', 1),
(175, 0, 13, 'autotasks_helper_path', '_MD_AM_AUTOTASKS_HELPER_PATH', '/usr/bin/', '_MD_AM_AUTOTASKS_HELPER_PATHDSC', 'text', 'text', 2),
(176, 0, 13, 'autotasks_user', '_MD_AM_AUTOTASKS_USER', '', '_MD_AM_AUTOTASKS_USERDSC', 'text', 'text', 3),
(177, 0, 14, 'enable_purifier', '_MD_AM_PURIFIER_ENABLE', '1', '_MD_AM_PURIFIER_ENABLEDSC', 'yesno', 'int', 0),
(178, 0, 14, 'purifier_URI_DefinitionID', '_MD_AM_PURIFIER_URI_DEFID', 'system', '_MD_AM_PURIFIER_URI_DEFIDDSC', 'textbox', 'text', 1),
(179, 0, 14, 'purifier_URI_DefinitionRev', '_MD_AM_PURIFIER_URI_DEFREV', '1', '_MD_AM_PURIFIER_URI_DEFREVDSC', 'textbox', 'int', 2),
(180, 0, 14, 'purifier_URI_Host', '_MD_AM_PURIFIER_URI_HOST', '192.168.0.105', '_MD_AM_PURIFIER_URI_HOSTDSC', 'textbox', 'text', 3),
(181, 0, 14, 'purifier_URI_Base', '_MD_AM_PURIFIER_URI_BASE', '192.168.0.105', '_MD_AM_PURIFIER_URI_BASEDSC', 'textbox', 'text', 4),
(182, 0, 14, 'purifier_URI_Disable', '_MD_AM_PURIFIER_URI_DISABLE', '0', '_MD_AM_PURIFIER_URI_DISABLEDSC', 'yesno', 'int', 5),
(183, 0, 14, 'purifier_URI_DisableExternal', '_MD_AM_PURIFIER_URI_DISABLEEXT', '0', '_MD_AM_PURIFIER_URI_DISABLEEXTDSC', 'yesno', 'int', 6),
(184, 0, 14, 'purifier_URI_DisableExternalResources', '_MD_AM_PURIFIER_URI_DISABLEEXTRES', '0', '_MD_AM_PURIFIER_URI_DISABLEEXTRESDSC', 'yesno', 'int', 7),
(185, 0, 14, 'purifier_URI_DisableResources', '_MD_AM_PURIFIER_URI_DISABLERES', '0', '_MD_AM_PURIFIER_URI_DISABLERESDSC', 'yesno', 'int', 8),
(186, 0, 14, 'purifier_URI_MakeAbsolute', '_MD_AM_PURIFIER_URI_MAKEABS', '0', '_MD_AM_PURIFIER_URI_MAKEABSDSC', 'yesno', 'int', 9),
(187, 0, 14, 'purifier_URI_HostBlacklist', '_MD_AM_PURIFIER_URI_BLACKLIST', '', '_MD_AM_PURIFIER_URI_BLACKLISTDSC', 'textsarea', 'array', 10),
(188, 0, 14, 'purifier_URI_AllowedSchemes', '_MD_AM_PURIFIER_URI_ALLOWSCHEME', 'a:6:{i:0;s:4:"http";i:1;s:5:"https";i:2;s:6:"mailto";i:3;s:3:"ftp";i:4;s:4:"nntp";i:5;s:4:"news";}', '_MD_AM_PURIFIER_URI_ALLOWSCHEMEDSC', 'textsarea', 'array', 11),
(189, 0, 14, 'purifier_HTML_DefinitionID', '_MD_AM_PURIFIER_HTML_DEFID', 'system', '_MD_AM_PURIFIER_HTML_DEFIDDSC', 'textbox', 'text', 14),
(190, 0, 14, 'purifier_HTML_DefinitionRev', '_MD_AM_PURIFIER_HTML_DEFREV', '1', '_MD_AM_PURIFIER_HTML_DEFREVDSC', 'textbox', 'int', 15),
(191, 0, 14, 'purifier_HTML_Doctype', '_MD_AM_PURIFIER_HTML_DOCTYPE', 'XHTML 1.0 Transitional', '_MD_AM_PURIFIER_HTML_DOCTYPEDSC', 'select', 'text', 16),
(192, 0, 14, 'purifier_HTML_TidyLevel', '_MD_AM_PURIFIER_HTML_TIDYLEVEL', 'medium', '_MD_AM_PURIFIER_HTML_TIDYLEVELDSC', 'select', 'text', 17),
(193, 0, 14, 'purifier_HTML_AllowedElements', '_MD_AM_PURIFIER_HTML_ALLOWELE', 'a:49:{i:0;s:1:"a";i:1;s:4:"abbr";i:2;s:7:"acronym";i:3;s:1:"b";i:4;s:10:"blockquote";i:5;s:2:"br";i:6;s:7:"caption";i:7;s:4:"cite";i:8;s:4:"code";i:9;s:2:"dd";i:10;s:3:"del";i:11;s:3:"dfn";i:12;s:3:"div";i:13;s:2:"dl";i:14;s:2:"dt";i:15;s:2:"em";i:16;s:4:"font";i:17;s:2:"h1";i:18;s:2:"h2";i:19;s:2:"h3";i:20;s:2:"h4";i:21;s:2:"h5";i:22;s:2:"h6";i:23;s:1:"i";i:24;s:3:"img";i:25;s:3:"ins";i:26;s:3:"kbd";i:27;s:2:"li";i:28;s:2:"ol";i:29;s:1:"p";i:30;s:3:"pre";i:31;s:1:"s";i:32;s:4:"span";i:33;s:6:"strike";i:34;s:6:"strong";i:35;s:3:"sub";i:36;s:3:"sup";i:37;s:5:"table";i:38;s:5:"tbody";i:39;s:2:"td";i:40;s:5:"tfoot";i:41;s:2:"th";i:42;s:5:"thead";i:43;s:2:"tr";i:44;s:2:"tt";i:45;s:1:"u";i:46;s:2:"ul";i:47;s:3:"var";i:48;s:6:"iframe";}', '_MD_AM_PURIFIER_HTML_ALLOWELEDSC', 'textsarea', 'array', 18),
(194, 0, 14, 'purifier_HTML_AllowedAttributes', '_MD_AM_PURIFIER_HTML_ALLOWATTR', 'a:70:{i:0;s:7:"a.class";i:1;s:6:"a.href";i:2;s:4:"a.id";i:3;s:6:"a.name";i:4;s:5:"a.rev";i:5;s:7:"a.style";i:6;s:7:"a.title";i:7;s:8:"a.target";i:8;s:5:"a.rel";i:9;s:10:"abbr.title";i:10;s:13:"acronym.title";i:11;s:15:"blockquote.cite";i:12;s:9:"div.align";i:13;s:9:"div.style";i:14;s:9:"div.class";i:15;s:6:"div.id";i:16;s:9:"font.size";i:17;s:10:"font.color";i:18;s:8:"h1.style";i:19;s:8:"h2.style";i:20;s:8:"h3.style";i:21;s:8:"h4.style";i:22;s:8:"h5.style";i:23;s:8:"h6.style";i:24;s:7:"img.src";i:25;s:7:"img.alt";i:26;s:9:"img.title";i:27;s:9:"img.class";i:28;s:9:"img.align";i:29;s:9:"img.style";i:30;s:10:"img.height";i:31;s:9:"img.width";i:32;s:8:"li.style";i:33;s:8:"ol.style";i:34;s:7:"p.style";i:35;s:10:"span.style";i:36;s:10:"span.class";i:37;s:7:"span.id";i:38;s:11:"table.class";i:39;s:8:"table.id";i:40;s:12:"table.border";i:41;s:17:"table.cellpadding";i:42;s:17:"table.cellspacing";i:43;s:11:"table.style";i:44;s:11:"table.width";i:45;s:7:"td.abbr";i:46;s:8:"td.align";i:47;s:8:"td.class";i:48;s:5:"td.id";i:49;s:10:"td.colspan";i:50;s:10:"td.rowspan";i:51;s:8:"td.style";i:52;s:9:"td.valign";i:53;s:8:"tr.align";i:54;s:8:"tr.class";i:55;s:5:"tr.id";i:56;s:8:"tr.style";i:57;s:9:"tr.valign";i:58;s:7:"th.abbr";i:59;s:8:"th.align";i:60;s:8:"th.class";i:61;s:5:"th.id";i:62;s:10:"th.colspan";i:63;s:10:"th.rowspan";i:64;s:8:"th.style";i:65;s:9:"th.valign";i:66;s:8:"ul.style";i:67;s:10:"iframe.src";i:68;s:12:"iframe.width";i:69;s:13:"iframe.height";}', '_MD_AM_PURIFIER_HTML_ALLOWATTRDSC', 'textsarea', 'array', 19),
(195, 0, 14, 'purifier_HTML_ForbiddenElements', '_MD_AM_PURIFIER_HTML_FORBIDELE', '', '_MD_AM_PURIFIER_HTML_FORBIDELEDSC', 'textsarea', 'array', 20),
(196, 0, 14, 'purifier_HTML_ForbiddenAttributes', '_MD_AM_PURIFIER_HTML_FORBIDATTR', '', '_MD_AM_PURIFIER_HTML_FORBIDATTRDSC', 'textsarea', 'array', 21),
(197, 0, 14, 'purifier_HTML_MaxImgLength', '_MD_AM_PURIFIER_HTML_MAXIMGLENGTH', '1200', '_MD_AM_PURIFIER_HTML_MAXIMGLENGTHDSC', 'textbox', 'int', 22),
(198, 0, 14, 'purifier_HTML_SafeEmbed', '_MD_AM_PURIFIER_HTML_SAFEEMBED', '0', '_MD_AM_PURIFIER_HTML_SAFEEMBEDDSC', 'yesno', 'int', 23),
(199, 0, 14, 'purifier_HTML_SafeObject', '_MD_AM_PURIFIER_HTML_SAFEOBJECT', '0', '_MD_AM_PURIFIER_HTML_SAFEOBJECTDSC', 'yesno', 'int', 24),
(200, 0, 14, 'purifier_HTML_AttrNameUseCDATA', '_MD_AM_PURIFIER_HTML_ATTRNAMEUSECDATA', '0', '_MD_AM_PURIFIER_HTML_ATTRNAMEUSECDATADSC', 'yesno', 'int', 27),
(201, 0, 14, 'purifier_Filter_ExtractStyleBlocks', '_MD_AM_PURIFIER_FILTER_EXTRACTSTYLEBLK', '1', '_MD_AM_PURIFIER_FILTER_EXTRACTSTYLEBLKDSC', 'yesno', 'int', 30),
(202, 0, 14, 'purifier_Filter_ExtractStyleBlocks_Escaping', '_MD_AM_PURIFIER_FILTER_EXTRACTSTYLEESC', '1', '_MD_AM_PURIFIER_FILTER_EXTRACTSTYLEESCDSC', 'yesno', 'int', 31),
(203, 0, 14, 'purifier_Filter_ExtractStyleBlocks_Scope', '_MD_AM_PURIFIER_FILTER_EXTRACTSTYLEBLKSCOPE', '', '_MD_AM_PURIFIER_FILTER_EXTRACTSTYLEBLKSCOPEDSC', 'textsarea', 'text', 32),
(204, 0, 14, 'purifier_Filter_YouTube', '_MD_AM_PURIFIER_FILTER_ENABLEYOUTUBE', '1', '_MD_AM_PURIFIER_FILTER_ENABLEYOUTUBEDSC', 'yesno', 'int', 33),
(205, 0, 14, 'purifier_Core_EscapeNonASCIICharacters', '_MD_AM_PURIFIER_CORE_ESCNONASCIICHARS', '1', '_MD_AM_PURIFIER_CORE_ESCNONASCIICHARSDSC', 'yesno', 'int', 35),
(206, 0, 14, 'purifier_Core_HiddenElements', '_MD_AM_PURIFIER_CORE_HIDDENELE', 'a:2:{i:0;s:6:"script";i:1;s:5:"style";}', '_MD_AM_PURIFIER_CORE_HIDDENELEDSC', 'textsarea', 'array', 36),
(207, 0, 14, 'purifier_Core_RemoveInvalidImg', '_MD_AM_PURIFIER_CORE_REMINVIMG', '1', '_MD_AM_PURIFIER_CORE_REMINVIMGDSC', 'yesno', 'int', 37),
(208, 0, 14, 'purifier_AutoFormat_AutoParagraph', '_MD_AM_PURIFIER_AUTO_AUTOPARA', '0', '_MD_AM_PURIFIER_AUTO_AUTOPARADSC', 'yesno', 'int', 39),
(209, 0, 14, 'purifier_AutoFormat_DisplayLinkURI', '_MD_AM_PURIFIER_AUTO_DISPLINKURI', '0', '_MD_AM_PURIFIER_AUTO_DISPLINKURIDSC', 'yesno', 'int', 40),
(210, 0, 14, 'purifier_AutoFormat_Linkify', '_MD_AM_PURIFIER_AUTO_LINKIFY', '1', '_MD_AM_PURIFIER_AUTO_LINKIFYDSC', 'yesno', 'int', 41),
(211, 0, 14, 'purifier_AutoFormat_PurifierLinkify', '_MD_AM_PURIFIER_AUTO_PURILINKIFY', '0', '_MD_AM_PURIFIER_AUTO_PURILINKIFYDSC', 'yesno', 'int', 42),
(212, 0, 14, 'purifier_AutoFormat_Custom', '_MD_AM_PURIFIER_AUTO_CUSTOM', '', '_MD_AM_PURIFIER_AUTO_CUSTOMDSC', 'textsarea', 'array', 43),
(213, 0, 14, 'purifier_AutoFormat_RemoveEmpty', '_MD_AM_PURIFIER_AUTO_REMOVEEMPTY', '0', '_MD_AM_PURIFIER_AUTO_REMOVEEMPTYDSC', 'yesno', 'int', 44),
(214, 0, 14, 'purifier_AutoFormat_RemoveEmptyNbsp', '_MD_AM_PURIFIER_AUTO_REMOVEEMPTYNBSP', '0', '_MD_AM_PURIFIER_AUTO_REMOVEEMPTYNBSPDSC', 'yesno', 'int', 45),
(215, 0, 14, 'purifier_AutoFormat_RemoveEmptyNbspExceptions', '_MD_AM_PURIFIER_AUTO_REMOVEEMPTYNBSPEXCEPT', 'a:2:{i:0;s:2:"td";i:1;s:2:"th";}', '_MD_AM_PURIFIER_AUTO_REMOVEEMPTYNBSPEXCEPTDSC', 'textsarea', 'array', 46),
(216, 0, 14, 'purifier_Attr_AllowedFrameTargets', '_MD_AM_PURIFIER_ATTR_ALLOWFRAMETARGET', 'a:4:{i:0;s:6:"_blank";i:1;s:7:"_parent";i:2;s:5:"_self";i:3;s:4:"_top";}', '_MD_AM_PURIFIER_ATTR_ALLOWFRAMETARGETDSC', 'textsarea', 'array', 47),
(217, 0, 14, 'purifier_Attr_AllowedRel', '_MD_AM_PURIFIER_ATTR_ALLOWREL', 'a:4:{i:0;s:8:"external";i:1;s:8:"nofollow";i:2;s:17:"external nofollow";i:3;s:8:"lightbox";}', '_MD_AM_PURIFIER_ATTR_ALLOWRELDSC', 'textsarea', 'array', 48),
(218, 0, 14, 'purifier_Attr_AllowedClasses', '_MD_AM_PURIFIER_ATTR_ALLOWCLASSES', '', '_MD_AM_PURIFIER_ATTR_ALLOWCLASSESDSC', 'textsarea', 'array', 49),
(219, 0, 14, 'purifier_Attr_ForbiddenClasses', '_MD_AM_PURIFIER_ATTR_FORBIDDENCLASSES', '', '_MD_AM_PURIFIER_ATTR_FORBIDDENCLASSESDSC', 'textsarea', 'array', 50),
(220, 0, 14, 'purifier_Attr_DefaultInvalidImage', '_MD_AM_PURIFIER_ATTR_DEFINVIMG', '', '_MD_AM_PURIFIER_ATTR_DEFINVIMGDSC', 'textbox', 'text', 51),
(221, 0, 14, 'purifier_Attr_DefaultInvalidImageAlt', '_MD_AM_PURIFIER_ATTR_DEFINVIMGALT', '', '_MD_AM_PURIFIER_ATTR_DEFINVIMGALTDSC', 'textbox', 'text', 52),
(222, 0, 14, 'purifier_Attr_DefaultImageAlt', '_MD_AM_PURIFIER_ATTR_DEFIMGALT', '', '_MD_AM_PURIFIER_ATTR_DEFIMGALTDSC', 'textbox', 'text', 53),
(223, 0, 14, 'purifier_Attr_ClassUseCDATA', '_MD_AM_PURIFIER_ATTR_CLASSUSECDATA', '1', '_MD_AM_PURIFIER_ATTR_CLASSUSECDATADSC', 'yesno', 'int', 54),
(224, 0, 14, 'purifier_Attr_EnableID', '_MD_AM_PURIFIER_ATTR_ENABLEID', '1', '_MD_AM_PURIFIER_ATTR_ENABLEIDDSC', 'yesno', 'int', 55),
(225, 0, 14, 'purifier_Attr_IDPrefix', '_MD_AM_PURIFIER_ATTR_IDPREFIX', '', '_MD_AM_PURIFIER_ATTR_IDPREFIXDSC', 'textbox', 'text', 56),
(226, 0, 14, 'purifier_Attr_IDPrefixLocal', '_MD_AM_PURIFIER_ATTR_IDPREFIXLOCAL', '', '_MD_AM_PURIFIER_ATTR_IDPREFIXLOCALDSC', 'textbox', 'text', 57),
(227, 0, 14, 'purifier_Attr_IDBlacklist', '_MD_AM_PURIFIER_ATTR_IDBLACKLIST', '', '_MD_AM_PURIFIER_ATTR_IDBLACKLISTDSC', 'textsarea', 'array', 58),
(228, 0, 14, 'purifier_CSS_DefinitionRev', '_MD_AM_PURIFIER_CSS_DEFREV', '1', '_MD_AM_PURIFIER_CSS_DEFREVDSC', 'textbox', 'int', 59),
(229, 0, 14, 'purifier_CSS_AllowImportant', '_MD_AM_PURIFIER_CSS_ALLOWIMPORTANT', '1', '_MD_AM_PURIFIER_CSS_ALLOWIMPORTANTDSC', 'yesno', 'int', 60),
(230, 0, 14, 'purifier_CSS_AllowTricky', '_MD_AM_PURIFIER_CSS_ALLOWTRICKY', '1', '_MD_AM_PURIFIER_CSS_ALLOWTRICKYDSC', 'yesno', 'int', 61),
(231, 0, 14, 'purifier_CSS_AllowedProperties', '_MD_AM_PURIFIER_CSS_ALLOWPROP', '', '_MD_AM_PURIFIER_CSS_ALLOWPROPDSC', 'textsarea', 'array', 62),
(232, 0, 14, 'purifier_CSS_MaxImgLength', '_MD_AM_PURIFIER_CSS_MAXIMGLEN', '1200px', '_MD_AM_PURIFIER_CSS_MAXIMGLENDSC', 'textbox', 'text', 63),
(233, 0, 14, 'purifier_CSS_Proprietary', '_MD_AM_PURIFIER_CSS_PROPRIETARY', '1', '_MD_AM_PURIFIER_CSS_PROPRIETARYDSC', 'yesno', 'int', 64),
(234, 0, 14, 'purifier_HTML_FlashAllowFullScreen', '_MD_AM_PURIFIER_HTML_FLASHFULLSCRN', '0', '_MD_AM_PURIFIER_HTML_FLASHFULLSCRNDSC', 'yesno', 'int', 28),
(235, 0, 14, 'purifier_Output_FlashCompat', '_MD_AM_PURIFIER_OUTPUT_FLASHCOMPAT', '0', '_MD_AM_PURIFIER_OUTPUT_FLASHCOMPATDSC', 'yesno', 'int', 28),
(236, 0, 14, 'purifier_Filter_AllowCustom', '_MD_AM_PURIFIER_FILTER_ALLOWCUSTOM', '0', '_MD_AM_PURIFIER_FILTER_ALLOWCUSTOMDSC', 'yesno', 'int', 34),
(237, 0, 14, 'purifier_Core_NormalizeNewlines', '_MD_AM_PURIFIER_CORE_NORMALNEWLINES', '1', '_MD_AM_PURIFIER_CORE_NORMALNEWLINESDSC', 'yesno', 'int', 38),
(238, 0, 14, 'purifier_URI_SafeIframeRegexp', '_MD_AM_PURIFIER_URI_SAFEIFRAMEREGEXP', 'http://www.youtube.com/|http://player.vimeo.com/video/|http://blip.tv/play/', '_MD_AM_PURIFIER_URI_SAFEIFRAMEREGEXPDSC', 'textsarea', 'text', 12),
(239, 0, 14, 'purifier_HTML_SafeIframe', '_MD_AM_PURIFIER_HTML_SAFEIFRAME', '0', '_MD_AM_PURIFIER_HTML_SAFEIFRAMEDSC', 'yesno', 'int', 25),
(240, 2, 0, 'global_disabled', '_MI_PROTECTOR_GLOBAL_DISBL', '0', '_MI_PROTECTOR_GLOBAL_DISBLDSC', 'yesno', 'int', 0),
(241, 2, 0, 'default_lang', '_MI_PROTECTOR_DEFAULT_LANG', 'english', '_MI_PROTECTOR_DEFAULT_LANGDSC', 'textbox', 'text', 1),
(242, 2, 0, 'log_level', '_MI_PROTECTOR_LOG_LEVEL', '255', '', 'select', 'int', 2),
(243, 2, 0, 'banip_time0', '_MI_PROTECTOR_BANIP_TIME0', '86400', '', 'textbox', 'int', 3),
(244, 2, 0, 'reliable_ips', '_MI_PROTECTOR_RELIABLE_IPS', 'a:2:{i:0;s:9:"^192.168.";i:1;s:9:"127.0.0.1";}', '_MI_PROTECTOR_RELIABLE_IPSDSC', 'textsarea', 'array', 4),
(245, 2, 0, 'session_fixed_topbit', '_MI_PROTECTOR_HIJACK_TOPBIT', '24', '_MI_PROTECTOR_HIJACK_TOPBITDSC', 'textbox', 'int', 5),
(246, 2, 0, 'groups_denyipmove', '_MI_PROTECTOR_HIJACK_DENYGP', 'a:1:{i:0;s:1:"1";}', '_MI_PROTECTOR_HIJACK_DENYGPDSC', 'group_multi', 'array', 6),
(247, 2, 0, 'san_nullbyte', '_MI_PROTECTOR_SAN_NULLBYTE', '1', '_MI_PROTECTOR_SAN_NULLBYTEDSC', 'yesno', 'int', 7),
(248, 2, 0, 'die_badext', '_MI_PROTECTOR_DIE_BADEXT', '1', '_MI_PROTECTOR_DIE_BADEXTDSC', 'yesno', 'int', 8),
(249, 2, 0, 'contami_action', '_MI_PROTECTOR_CONTAMI_ACTION', '3', '_MI_PROTECTOR_CONTAMI_ACTIONDS', 'select', 'int', 9),
(250, 2, 0, 'isocom_action', '_MI_PROTECTOR_ISOCOM_ACTION', '0', '_MI_PROTECTOR_ISOCOM_ACTIONDSC', 'select', 'int', 10),
(251, 2, 0, 'union_action', '_MI_PROTECTOR_UNION_ACTION', '0', '_MI_PROTECTOR_UNION_ACTIONDSC', 'select', 'int', 11),
(252, 2, 0, 'id_forceintval', '_MI_PROTECTOR_ID_INTVAL', '0', '_MI_PROTECTOR_ID_INTVALDSC', 'yesno', 'int', 12),
(253, 2, 0, 'file_dotdot', '_MI_PROTECTOR_FILE_DOTDOT', '1', '_MI_PROTECTOR_FILE_DOTDOTDSC', 'yesno', 'int', 13),
(254, 2, 0, 'bf_count', '_MI_PROTECTOR_BF_COUNT', '10', '_MI_PROTECTOR_BF_COUNTDSC', 'textbox', 'int', 14),
(255, 2, 0, 'bwlimit_count', '_MI_PROTECTOR_BWLIMIT_COUNT', '0', '_MI_PROTECTOR_BWLIMIT_COUNTDSC', 'textbox', 'int', 15),
(256, 2, 0, 'dos_skipmodules', '_MI_PROTECTOR_DOS_SKIPMODS', '', '_MI_PROTECTOR_DOS_SKIPMODSDSC', 'textbox', 'text', 16),
(257, 2, 0, 'dos_expire', '_MI_PROTECTOR_DOS_EXPIRE', '60', '_MI_PROTECTOR_DOS_EXPIREDSC', 'textbox', 'int', 17),
(258, 2, 0, 'dos_f5count', '_MI_PROTECTOR_DOS_F5COUNT', '20', '_MI_PROTECTOR_DOS_F5COUNTDSC', 'textbox', 'int', 18),
(259, 2, 0, 'dos_f5action', '_MI_PROTECTOR_DOS_F5ACTION', 'exit', '', 'select', 'text', 19),
(260, 2, 0, 'dos_crcount', '_MI_PROTECTOR_DOS_CRCOUNT', '40', '_MI_PROTECTOR_DOS_CRCOUNTDSC', 'textbox', 'int', 20),
(261, 2, 0, 'dos_craction', '_MI_PROTECTOR_DOS_CRACTION', 'exit', '', 'select', 'text', 21),
(262, 2, 0, 'dos_crsafe', '_MI_PROTECTOR_DOS_CRSAFE', '/(msnbot|Googlebot|Yahoo! Slurp)/i', '_MI_PROTECTOR_DOS_CRSAFEDSC', 'textbox', 'text', 22),
(263, 2, 0, 'bip_except', '_MI_PROTECTOR_BIP_EXCEPT', 'a:1:{i:0;s:1:"1";}', '_MI_PROTECTOR_BIP_EXCEPTDSC', 'group_multi', 'array', 23),
(264, 2, 0, 'disable_features', '_MI_PROTECTOR_DISABLES', '1', '', 'select', 'int', 24),
(265, 2, 0, 'enable_dblayertrap', '_MI_PROTECTOR_DBLAYERTRAP', '1', '_MI_PROTECTOR_DBLAYERTRAPDSC', 'yesno', 'int', 25),
(266, 2, 0, 'dblayertrap_wo_server', '_MI_PROTECTOR_DBTRAPWOSRV', '0', '_MI_PROTECTOR_DBTRAPWOSRVDSC', 'yesno', 'int', 26),
(267, 2, 0, 'enable_bigumbrella', '_MI_PROTECTOR_BIGUMBRELLA', '1', '_MI_PROTECTOR_BIGUMBRELLADSC', 'yesno', 'int', 27),
(268, 2, 0, 'spamcount_uri4user', '_MI_PROTECTOR_SPAMURI4U', '0', '_MI_PROTECTOR_SPAMURI4UDSC', 'textbox', 'int', 28),
(269, 2, 0, 'spamcount_uri4guest', '_MI_PROTECTOR_SPAMURI4G', '5', '_MI_PROTECTOR_SPAMURI4GDSC', 'textbox', 'int', 29),
(270, 2, 0, 'filters', '_MI_PROTECTOR_FILTERS', '', '_MI_PROTECTOR_FILTERSDSC', 'textsarea', 'text', 30),
(271, 2, 0, 'enable_manip_check', '_MI_PROTECTOR_MANIPUCHECK', '0', '_MI_PROTECTOR_MANIPUCHECKDSC', 'yesno', 'int', 31),
(272, 2, 0, 'manip_value', '_MI_PROTECTOR_MANIPUVALUE', '', '_MI_PROTECTOR_MANIPUVALUEDSC', 'textbox', 'text', 32);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_configcategory`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_configcategory` (
  `confcat_id` smallint(5) unsigned NOT NULL,
  `confcat_name` varchar(255) NOT NULL DEFAULT '',
  `confcat_order` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_configcategory`
--

INSERT INTO `ib1941eb7_configcategory` (`confcat_id`, `confcat_name`, `confcat_order`) VALUES
(1, '_MD_AM_GENERAL', 0),
(2, '_MD_AM_USERSETTINGS', 0),
(3, '_MD_AM_METAFOOTER', 0),
(4, '_MD_AM_CENSOR', 0),
(5, '_MD_AM_SEARCH', 0),
(6, '_MD_AM_MAILER', 0),
(7, '_MD_AM_AUTHENTICATION', 0),
(8, '_MD_AM_MULTILANGUAGE', 0),
(10, '_MD_AM_PERSON', 0),
(11, '_MD_AM_CAPTCHA', 0),
(12, '_MD_AM_PLUGINS', 0),
(13, '_MD_AM_AUTOTASKS', 0),
(14, '_MD_AM_PURIFIER', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_configoption`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_configoption` (
  `confop_id` mediumint(8) unsigned NOT NULL,
  `confop_name` varchar(255) NOT NULL DEFAULT '',
  `confop_value` varchar(255) NOT NULL DEFAULT '',
  `conf_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_configoption`
--

INSERT INTO `ib1941eb7_configoption` (`confop_id`, `confop_name`, `confop_value`, `conf_id`) VALUES
(1, '_MD_AM_DEBUGMODE0', '0', 23),
(2, '_MD_AM_DEBUGMODE1', '1', 23),
(3, '_MD_AM_DEBUGMODE2', '2', 23),
(4, '_MD_AM_DEBUGMODE3', '3', 23),
(5, '_NESTED', 'nest', 31),
(6, '_FLAT', 'flat', 31),
(7, '_THREADED', 'thread', 31),
(8, '_OLDESTFIRST', '0', 32),
(9, '_NEWESTFIRST', '1', 32),
(10, '_MD_AM_PASSLEVEL1', '20', 39),
(11, '_MD_AM_PASSLEVEL2', '40', 39),
(12, '_MD_AM_PASSLEVEL3', '60', 39),
(13, '_MD_AM_PASSLEVEL4', '80', 39),
(14, '_MD_AM_PASSLEVEL5', '95', 39),
(15, '_MD_AM_USERACTV', '0', 53),
(16, '_MD_AM_AUTOACTV', '1', 53),
(17, '_MD_AM_ADMINACTV', '2', 53),
(18, '_MD_AM_REGINVITE', '3', 53),
(19, '_MD_AM_STRICT', '0', 55),
(20, '_MD_AM_MEDIUM', '1', 55),
(21, '_MD_AM_LIGHT', '2', 55),
(22, '_MD_AM_ENC_MD5', '20', 74),
(23, '_MD_AM_ENC_SHA256', '21', 74),
(24, '_MD_AM_ENC_SHA384', '22', 74),
(25, '_MD_AM_ENC_SHA512', '23', 74),
(26, '_MD_AM_ENC_RIPEMD128', '24', 74),
(27, '_MD_AM_ENC_RIPEMD160', '25', 74),
(28, '_MD_AM_ENC_WHIRLPOOL', '26', 74),
(29, '_MD_AM_ENC_HAVAL1284', '27', 74),
(30, '_MD_AM_ENC_HAVAL1604', '28', 74),
(31, '_MD_AM_ENC_HAVAL1924', '29', 74),
(32, '_MD_AM_ENC_HAVAL2244', '30', 74),
(33, '_MD_AM_ENC_HAVAL2564', '31', 74),
(34, '_MD_AM_ENC_HAVAL1285', '32', 74),
(35, '_MD_AM_ENC_HAVAL1605', '33', 74),
(36, '_MD_AM_ENC_HAVAL1925', '34', 74),
(37, '_MD_AM_ENC_HAVAL2245', '35', 74),
(38, '_MD_AM_ENC_HAVAL2565', '36', 74),
(39, '_MD_AM_INDEXFOLLOW', 'index,follow', 77),
(40, '_MD_AM_NOINDEXFOLLOW', 'noindex,follow', 77),
(41, '_MD_AM_INDEXNOFOLLOW', 'index,nofollow', 77),
(42, '_MD_AM_NOINDEXNOFOLLOW', 'noindex,nofollow', 77),
(43, '_MD_AM_METAOGEN', 'general', 78),
(44, '_MD_AM_METAO14YRS', '14 years', 78),
(45, '_MD_AM_METAOREST', 'restricted', 78),
(46, '_MD_AM_METAOMAT', 'mature', 78),
(47, 'PHP mail()', 'mail', 99),
(48, 'sendmail', 'sendmail', 99),
(49, 'SMTP', 'smtp', 99),
(50, 'SMTPAuth', 'smtpauth', 99),
(51, 'None', '', 103),
(52, 'SSL', 'ssl', 103),
(53, 'TLS', 'tls', 103),
(54, '_MD_AM_AUTH_CONFOPTION_XOOPS', 'local', 106),
(55, '_MD_AM_AUTH_CONFOPTION_LDAP', 'ldap', 106),
(56, '_MD_AM_AUTH_CONFOPTION_AD', 'ads', 106),
(57, '_MD_AM_NOMAILPROTECT', '0', 143),
(58, '_MD_AM_GDMAILPROTECT', '1', 143),
(59, '_MD_AM_REMAILPROTECT', '2', 143),
(60, '_MD_AM_CAPTCHA_OFF', 'none', 159),
(61, '_MD_AM_CAPTCHA_IMG', 'image', 159),
(62, '_MD_AM_CAPTCHA_TXT', 'text', 159),
(63, '_MD_AM_BAR', '0', 167),
(64, '_MD_AM_CIRCLE', '1', 167),
(65, '_MD_AM_LINE', '2', 167),
(66, '_MD_AM_RECTANGLE', '3', 167),
(67, '_MD_AM_ELLIPSE', '4', 167),
(68, '_MD_AM_POLYGON', '5', 167),
(69, '_MD_AM_RANDOM', '100', 167),
(70, '_MD_AM_HIGHLIGHTER_OFF', 'none', 171),
(71, '_MD_AM_HIGHLIGHTER_PHP', 'php', 171),
(72, '_MD_AM_HIGHLIGHTER_GESHI', 'geshi', 171),
(73, 'PHP-CGI', 'php -f %path%', 174),
(74, 'wget', 'wget %url%', 174),
(75, 'Lynx', 'lynx --dump %url%', 174),
(76, '_MD_AM_PURIFIER_401T', 'HTML 4.01 Transitional', 191),
(77, '_MD_AM_PURIFIER_401S', 'HTML 4.01 Strict', 191),
(78, '_MD_AM_PURIFIER_X10T', 'XHTML 1.0 Transitional', 191),
(79, '_MD_AM_PURIFIER_X10S', 'XHTML 1.0 Strict', 191),
(80, '_MD_AM_PURIFIER_X11', 'XHTML 1.1', 191),
(81, '_MD_AM_PURIFIER_NONE', 'none', 192),
(82, '_MD_AM_PURIFIER_LIGHT', 'light', 192),
(83, '_MD_AM_PURIFIER_MEDIUM', 'medium', 192),
(84, '_MD_AM_PURIFIER_HEAVY', 'heavy', 192),
(85, '_MI_PROTECTOR_LOGLEVEL0', '0', 242),
(86, '_MI_PROTECTOR_LOGLEVEL15', '15', 242),
(87, '_MI_PROTECTOR_LOGLEVEL63', '63', 242),
(88, '_MI_PROTECTOR_LOGLEVEL255', '255', 242),
(89, '_MI_PROTECTOR_OPT_NONE', '0', 249),
(90, '_MI_PROTECTOR_OPT_EXIT', '3', 249),
(91, '_MI_PROTECTOR_OPT_BIPTIME0', '7', 249),
(92, '_MI_PROTECTOR_OPT_BIP', '15', 249),
(93, '_MI_PROTECTOR_OPT_NONE', '0', 250),
(94, '_MI_PROTECTOR_OPT_SAN', '1', 250),
(95, '_MI_PROTECTOR_OPT_EXIT', '3', 250),
(96, '_MI_PROTECTOR_OPT_BIPTIME0', '7', 250),
(97, '_MI_PROTECTOR_OPT_BIP', '15', 250),
(98, '_MI_PROTECTOR_OPT_NONE', '0', 251),
(99, '_MI_PROTECTOR_OPT_SAN', '1', 251),
(100, '_MI_PROTECTOR_OPT_EXIT', '3', 251),
(101, '_MI_PROTECTOR_OPT_BIPTIME0', '7', 251),
(102, '_MI_PROTECTOR_OPT_BIP', '15', 251),
(103, '_MI_PROTECTOR_DOSOPT_NONE', 'none', 259),
(104, '_MI_PROTECTOR_DOSOPT_SLEEP', 'sleep', 259),
(105, '_MI_PROTECTOR_DOSOPT_EXIT', 'exit', 259),
(106, '_MI_PROTECTOR_DOSOPT_BIPTIME0', 'biptime0', 259),
(107, '_MI_PROTECTOR_DOSOPT_BIP', 'bip', 259),
(108, '_MI_PROTECTOR_DOSOPT_HTA', 'hta', 259),
(109, '_MI_PROTECTOR_DOSOPT_NONE', 'none', 261),
(110, '_MI_PROTECTOR_DOSOPT_SLEEP', 'sleep', 261),
(111, '_MI_PROTECTOR_DOSOPT_EXIT', 'exit', 261),
(112, '_MI_PROTECTOR_DOSOPT_BIPTIME0', 'biptime0', 261),
(113, '_MI_PROTECTOR_DOSOPT_BIP', 'bip', 261),
(114, '_MI_PROTECTOR_DOSOPT_HTA', 'hta', 261),
(115, 'xmlrpc', '1', 264),
(116, 'xmlrpc + 2.0.9.2 bugs', '1025', 264),
(117, '_NONE', '0', 264);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_groups`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_groups` (
  `groupid` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `group_type` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_groups`
--

INSERT INTO `ib1941eb7_groups` (`groupid`, `name`, `description`, `group_type`) VALUES
(1, 'Webmasters', 'Webmasters of this site', 'Admin'),
(2, 'Registered Users', 'Registered Users Group', 'User'),
(3, 'Anonymous Users', 'Anonymous Users Group', 'Anonymous');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_groups_users_link`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_groups_users_link` (
  `linkid` mediumint(8) unsigned NOT NULL,
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_groups_users_link`
--

INSERT INTO `ib1941eb7_groups_users_link` (`linkid`, `groupid`, `uid`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_group_permission`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_group_permission` (
  `gperm_id` int(10) unsigned NOT NULL,
  `gperm_groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gperm_itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gperm_modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gperm_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_group_permission`
--

INSERT INTO `ib1941eb7_group_permission` (`gperm_id`, `gperm_groupid`, `gperm_itemid`, `gperm_modid`, `gperm_name`) VALUES
(1, 2, 20, 1, 'use_extension'),
(2, 1, 20, 1, 'use_extension'),
(3, 2, 19, 1, 'use_extension'),
(4, 1, 19, 1, 'use_extension'),
(5, 2, 76, 1, 'use_extension'),
(6, 1, 76, 1, 'use_extension'),
(7, 2, 77, 1, 'use_extension'),
(8, 1, 77, 1, 'use_extension'),
(9, 2, 82, 1, 'use_extension'),
(10, 1, 82, 1, 'use_extension'),
(11, 2, 79, 1, 'use_extension'),
(12, 1, 79, 1, 'use_extension'),
(13, 2, 80, 1, 'use_extension'),
(14, 1, 80, 1, 'use_extension'),
(15, 2, 81, 1, 'use_extension'),
(16, 1, 81, 1, 'use_extension'),
(17, 2, 83, 1, 'use_extension'),
(18, 1, 83, 1, 'use_extension'),
(19, 2, 84, 1, 'use_extension'),
(20, 1, 84, 1, 'use_extension'),
(21, 2, 100, 1, 'use_extension'),
(22, 1, 100, 1, 'use_extension'),
(23, 2, 101, 1, 'use_extension'),
(24, 1, 101, 1, 'use_extension'),
(25, 1, 1, 1, 'module_admin'),
(26, 1, 1, 1, 'module_read'),
(27, 2, 1, 1, 'module_read'),
(28, 3, 1, 1, 'module_read'),
(29, 1, 1, 1, 'system_admin'),
(30, 1, 2, 1, 'system_admin'),
(31, 1, 3, 1, 'system_admin'),
(32, 1, 4, 1, 'system_admin'),
(33, 1, 5, 1, 'system_admin'),
(34, 1, 6, 1, 'system_admin'),
(35, 1, 7, 1, 'system_admin'),
(36, 1, 8, 1, 'system_admin'),
(37, 1, 9, 1, 'system_admin'),
(38, 1, 10, 1, 'system_admin'),
(39, 1, 11, 1, 'system_admin'),
(40, 1, 12, 1, 'system_admin'),
(41, 1, 13, 1, 'system_admin'),
(42, 1, 14, 1, 'system_admin'),
(43, 1, 15, 1, 'system_admin'),
(44, 1, 16, 1, 'system_admin'),
(45, 1, 17, 1, 'system_admin'),
(46, 1, 18, 1, 'system_admin'),
(47, 1, 19, 1, 'system_admin'),
(48, 1, 20, 1, 'system_admin'),
(49, 1, 1, 1, 'group_manager'),
(50, 1, 2, 1, 'group_manager'),
(51, 1, 3, 1, 'group_manager'),
(52, 1, 1, 1, 'content_read'),
(53, 2, 1, 1, 'content_read'),
(54, 3, 1, 1, 'content_read'),
(55, 1, 1, 1, 'content_admin'),
(56, 1, 1, 1, 'use_wysiwygeditor'),
(57, 1, 1, 1, 'imgcat_write'),
(58, 1, 1, 1, 'imgcat_read'),
(59, 1, 1, 1, 'block_read'),
(60, 2, 1, 1, 'block_read'),
(61, 3, 1, 1, 'block_read'),
(62, 1, 2, 1, 'block_read'),
(63, 2, 2, 1, 'block_read'),
(64, 3, 2, 1, 'block_read'),
(65, 1, 3, 1, 'block_read'),
(66, 2, 3, 1, 'block_read'),
(67, 3, 3, 1, 'block_read'),
(68, 1, 4, 1, 'block_read'),
(69, 2, 4, 1, 'block_read'),
(70, 3, 4, 1, 'block_read'),
(71, 1, 5, 1, 'block_read'),
(72, 2, 5, 1, 'block_read'),
(73, 3, 5, 1, 'block_read'),
(74, 1, 6, 1, 'block_read'),
(75, 2, 6, 1, 'block_read'),
(76, 3, 6, 1, 'block_read'),
(77, 1, 7, 1, 'block_read'),
(78, 2, 7, 1, 'block_read'),
(79, 3, 7, 1, 'block_read'),
(80, 1, 8, 1, 'block_read'),
(81, 2, 8, 1, 'block_read'),
(82, 3, 8, 1, 'block_read'),
(83, 1, 9, 1, 'block_read'),
(84, 2, 9, 1, 'block_read'),
(85, 3, 9, 1, 'block_read'),
(86, 1, 10, 1, 'block_read'),
(87, 2, 10, 1, 'block_read'),
(88, 3, 10, 1, 'block_read'),
(89, 1, 11, 1, 'block_read'),
(90, 2, 11, 1, 'block_read'),
(91, 3, 11, 1, 'block_read'),
(92, 1, 12, 1, 'block_read'),
(93, 2, 12, 1, 'block_read'),
(94, 3, 12, 1, 'block_read'),
(95, 1, 13, 1, 'block_read'),
(96, 2, 13, 1, 'block_read'),
(97, 3, 13, 1, 'block_read'),
(98, 1, 14, 1, 'block_read'),
(99, 2, 14, 1, 'block_read'),
(100, 3, 14, 1, 'block_read'),
(101, 1, 15, 1, 'block_read'),
(102, 2, 15, 1, 'block_read'),
(103, 3, 15, 1, 'block_read'),
(104, 1, 16, 1, 'block_read'),
(105, 2, 16, 1, 'block_read'),
(106, 3, 16, 1, 'block_read'),
(107, 1, 17, 1, 'block_read'),
(108, 2, 17, 1, 'block_read'),
(109, 3, 17, 1, 'block_read'),
(110, 1, 18, 1, 'block_read'),
(111, 2, 18, 1, 'block_read'),
(112, 3, 18, 1, 'block_read'),
(113, 1, 19, 1, 'block_read'),
(114, 2, 19, 1, 'block_read'),
(115, 3, 19, 1, 'block_read'),
(116, 1, 20, 1, 'block_read'),
(117, 3, 21, 1, 'block_read'),
(118, 1, 2, 1, 'module_admin'),
(119, 1, 2, 1, 'module_read');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_icmspage`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_icmspage` (
  `page_id` mediumint(8) unsigned NOT NULL,
  `page_moduleid` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `page_url` varchar(255) NOT NULL DEFAULT '',
  `page_status` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_icmspage`
--

INSERT INTO `ib1941eb7_icmspage` (`page_id`, `page_moduleid`, `page_title`, `page_url`, `page_status`) VALUES
(2, 1, 'Admin Control Panel', 'admin.php', 1),
(3, 1, 'Avatars', 'modules/system/admin.php?fct=avatars*', 1),
(4, 1, 'Banners', 'modules/system/admin.php?fct=banners*', 1),
(5, 1, 'Blocks Admin', 'modules/system/admin.php?fct=blocksadmin*', 1),
(6, 1, 'Block Positions', 'modules/system/admin.php?fct=blockspadmin*', 1),
(7, 1, 'Comments', 'modules/system/admin.php?fct=comments*', 1),
(9, 1, 'Find Users', 'modules/system/admin.php?fct=findusers*', 1),
(10, 1, 'Custom Tag', 'modules/system/admin.php?fct=customtag*', 1),
(11, 1, 'Groups', 'modules/system/admin.php?fct=groups*', 1),
(12, 1, 'Image Manager', 'modules/system/admin.php?fct=images*', 1),
(13, 1, 'Mail Users', 'modules/system/admin.php?fct=mailusers*', 1),
(14, 1, 'Modules Admin', 'modules/system/admin.php?fct=modulesadmin*', 1),
(15, 1, 'Symlink Manager', 'modules/system/admin.php?fct=pages*', 1),
(16, 1, 'Preferences', 'modules/system/admin.php?fct=preferences*', 1),
(17, 1, 'Smilies', 'modules/system/admin.php?fct=smilies*', 1),
(18, 1, 'Templates', 'modules/system/admin.php?fct=tplsets*', 1),
(19, 1, 'User Ranks', 'modules/system/admin.php?fct=userrank*', 1),
(20, 1, 'User Edit', 'modules/system/admin.php?fct=users*', 1),
(21, 1, 'Version Checker', 'modules/system/admin.php?fct=version*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_icms_data_file`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_icms_data_file` (
  `fileid` int(10) unsigned NOT NULL,
  `mid` smallint(5) unsigned NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_icms_data_urllink`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_icms_data_urllink` (
  `urllinkid` int(10) unsigned NOT NULL,
  `mid` smallint(5) unsigned NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_image`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_image` (
  `image_id` mediumint(8) unsigned NOT NULL,
  `image_name` varchar(30) NOT NULL DEFAULT '',
  `image_nicename` varchar(255) NOT NULL DEFAULT '',
  `image_mimetype` varchar(30) NOT NULL DEFAULT '',
  `image_created` int(10) unsigned NOT NULL DEFAULT '0',
  `image_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `image_weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imgcat_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_image`
--

INSERT INTO `ib1941eb7_image` (`image_id`, `image_name`, `image_nicename`, `image_mimetype`, `image_created`, `image_display`, `image_weight`, `imgcat_id`) VALUES
(1, 'img482278e29e81c.png', 'ImpressCMS', 'image/png', 1435275744, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_imagebody`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_imagebody` (
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image_body` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_imagecategory`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_imagecategory` (
  `imgcat_id` smallint(5) unsigned NOT NULL,
  `imgcat_pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imgcat_name` varchar(100) NOT NULL DEFAULT '',
  `imgcat_maxsize` int(8) unsigned NOT NULL DEFAULT '0',
  `imgcat_maxwidth` smallint(3) unsigned NOT NULL DEFAULT '0',
  `imgcat_maxheight` smallint(3) unsigned NOT NULL DEFAULT '0',
  `imgcat_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `imgcat_weight` smallint(3) unsigned NOT NULL DEFAULT '0',
  `imgcat_type` char(1) NOT NULL DEFAULT '',
  `imgcat_storetype` varchar(5) NOT NULL DEFAULT '',
  `imgcat_foldername` varchar(100) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_imagecategory`
--

INSERT INTO `ib1941eb7_imagecategory` (`imgcat_id`, `imgcat_pid`, `imgcat_name`, `imgcat_maxsize`, `imgcat_maxwidth`, `imgcat_maxheight`, `imgcat_display`, `imgcat_weight`, `imgcat_type`, `imgcat_storetype`, `imgcat_foldername`) VALUES
(1, 0, 'Logos', 358400, 350, 80, 1, 0, 'C', 'file', 'logos');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_imgset`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_imgset` (
  `imgset_id` smallint(5) unsigned NOT NULL,
  `imgset_name` varchar(50) NOT NULL DEFAULT '',
  `imgset_refid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_imgset`
--

INSERT INTO `ib1941eb7_imgset` (`imgset_id`, `imgset_name`, `imgset_refid`) VALUES
(1, 'default', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_imgsetimg`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_imgsetimg` (
  `imgsetimg_id` mediumint(8) unsigned NOT NULL,
  `imgsetimg_file` varchar(50) NOT NULL DEFAULT '',
  `imgsetimg_body` blob NOT NULL,
  `imgsetimg_imgset` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_imgset_tplset_link`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_imgset_tplset_link` (
  `imgset_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tplset_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_imgset_tplset_link`
--

INSERT INTO `ib1941eb7_imgset_tplset_link` (`imgset_id`, `tplset_name`) VALUES
(1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_invites`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_invites` (
  `invite_id` mediumint(8) unsigned NOT NULL,
  `from_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invite_to` varchar(255) NOT NULL DEFAULT '',
  `invite_code` varchar(8) NOT NULL DEFAULT '',
  `invite_date` int(10) unsigned NOT NULL DEFAULT '0',
  `view_date` int(10) unsigned NOT NULL DEFAULT '0',
  `register_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_modules`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_modules` (
  `mid` smallint(5) unsigned NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `version` smallint(5) unsigned NOT NULL DEFAULT '102',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(3) unsigned NOT NULL DEFAULT '0',
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dirname` varchar(25) NOT NULL DEFAULT '',
  `hasmain` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hasadmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hassearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hasconfig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hascomments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hasnotification` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dbversion` int(11) unsigned NOT NULL DEFAULT '1',
  `modname` varchar(25) NOT NULL DEFAULT '',
  `ipf` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_modules`
--

INSERT INTO `ib1941eb7_modules` (`mid`, `name`, `version`, `last_update`, `weight`, `isactive`, `dirname`, `hasmain`, `hasadmin`, `hassearch`, `hasconfig`, `hascomments`, `hasnotification`, `dbversion`, `modname`, `ipf`) VALUES
(1, 'System', 200, 1435276117, 0, 1, 'system', 0, 1, 0, 0, 0, 0, 44, 'system', 1),
(2, 'Protector', 350, 1435276119, 1, 1, 'protector', 0, 1, 0, 1, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_newblocks`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_newblocks` (
  `bid` mediumint(8) unsigned NOT NULL,
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `func_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `options` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(150) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `side` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `block_type` char(1) NOT NULL DEFAULT '',
  `c_type` char(1) NOT NULL DEFAULT '',
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dirname` varchar(50) NOT NULL DEFAULT '',
  `func_file` varchar(50) NOT NULL DEFAULT '',
  `show_func` varchar(50) NOT NULL DEFAULT '',
  `edit_func` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(50) NOT NULL DEFAULT '',
  `bcachetime` int(10) unsigned NOT NULL DEFAULT '0',
  `last_modified` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_newblocks`
--

INSERT INTO `ib1941eb7_newblocks` (`bid`, `mid`, `func_num`, `options`, `name`, `title`, `content`, `side`, `weight`, `visible`, `block_type`, `c_type`, `isactive`, `dirname`, `func_file`, `show_func`, `edit_func`, `template`, `bcachetime`, `last_modified`) VALUES
(1, 1, 1, '0', 'User Menu', 'User Menu', '', 1, 0, 1, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_user_show', 'b_system_user_edit', 'system_block_user.html', 0, 1435275746),
(2, 1, 2, '', 'Login', 'Login', '', 1, 0, 1, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_login_show', '', 'system_block_login.html', 0, 1435275746),
(3, 1, 3, '', 'Search', 'Search', '', 2, 0, 1, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_search_show', '', 'system_block_search.html', 0, 1435275746),
(4, 1, 4, '1|5', 'Waiting Contents', 'Waiting Contents', '', 9, 0, 1, 'S', 'H', 1, 'system', 'system_waiting.php', 'b_system_waiting_show', 'b_system_waiting_edit', 'system_block_waiting.html', 0, 1435275746),
(5, 1, 5, '', 'Main Menu', 'Main Menu', '', 1, 0, 1, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_main_show', '', 'system_block_mainmenu.html', 0, 1435275746),
(6, 1, 6, '320|190|s_poweredby.gif|1', 'Site Info', 'Site Info', '', 1, 0, 0, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_info_show', 'b_system_info_edit', 'system_block_siteinfo.html', 0, 1435275746),
(7, 1, 7, '', 'Who''s Online', 'Who''s Online', '', 9, 0, 1, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_online_show', '', 'system_block_online.html', 0, 1435275746),
(8, 1, 8, '10|1', 'Top Posters', 'Top Posters', '', 10, 0, 1, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_topposters_show', 'b_system_topposters_edit', 'system_block_topusers.html', 0, 1435275746),
(9, 1, 9, '10|1|1', 'New Members', 'New Members', '', 10, 0, 1, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_newmembers_show', 'b_system_newmembers_edit', 'system_block_newusers.html', 0, 1435275746),
(10, 1, 10, '10', 'Recent Comments', 'Recent Comments', '', 1, 0, 0, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_comments_show', 'b_system_comments_edit', 'system_block_comments.html', 0, 1435275746),
(11, 1, 11, '', 'Notification Options', 'Notification Options', '', 1, 0, 0, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_notification_show', '', 'system_block_notification.html', 0, 1435275746),
(12, 1, 12, '0|80', 'Themes', 'Themes', '', 1, 0, 1, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_themes_show', 'b_system_themes_edit', 'system_block_themes.html', 0, 1435275746),
(13, 1, 13, '', 'Language Selection', 'Language Selection', '', 1, 0, 0, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_multilanguage_show', '', 'system_block_multilanguage.html', 0, 1435275746),
(14, 1, 14, '1|1|1|1|0|0|0|0|0|0|0|0|0|1|0|0|0|0|1|0|1|0|0|1|0|0|0|0|0|0|0|0', 'Share this page!', 'Share this page!', '', 7, 0, 1, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_social_show', 'b_system_social_edit', 'system_block_socialbookmark.html', 0, 1435275746),
(15, 1, 15, '', 'System Warnings', 'System Warnings', '', 12, 0, 1, 'S', 'H', 1, 'system', 'system_admin_blocks.php', 'b_system_admin_warnings_show', '', 'system_admin_block_warnings.html', 0, 1435275746),
(16, 1, 16, '', 'Control Panel', 'Control Panel', '', 11, 0, 1, 'S', 'H', 1, 'system', 'system_admin_blocks.php', 'b_system_admin_cp_show', '', 'system_admin_block_cp.html', 0, 1435275746),
(17, 1, 17, '', 'Installed Modules', 'Installed Modules', '', 13, 0, 1, 'S', 'H', 1, 'system', 'system_admin_blocks.php', 'b_system_admin_modules_show', '', 'system_admin_block_modules.html', 0, 1435275746),
(18, 1, 18, '', 'My Bookmarks', 'My Bookmarks', '', 1, 0, 0, 'S', 'H', 1, 'system', 'system_blocks.php', 'b_system_bookmarks_show', '', 'system_block_bookmarks.html', 0, 1435275746),
(19, 1, 19, '', 'New Control Panel', 'New Control Panel', '', 1, 0, 0, 'S', 'H', 1, 'system', 'system_admin_blocks.php', 'b_system_admin_cp_new_show', '', 'system_admin_block_cp_new.html', 0, 1435275746),
(20, 0, 0, '', 'Custom Block (Auto Format + smilies)', 'Welcome Webmaster !', 'Welcome to your new ImpressCMS powered website. If you haven''t already, please delete the [b]install[/b] folder from the server and ensure that [b]mainfile.php[/b] is not writeable (chmod 444).\r\n\r\nTo begin administering your new ImpressCMS powered website you can click the [b]Administration[/b] Menu link located on the left of this page.\r\n\r\nYou may want to begin by editing your website [b]Preferences[/b]: In the admin panel, hover over the [b]System[/b] dropdown and select [b]Preferences.[/b]\r\n\r\nAfterwards you can begin adding [b]Modules[/b] and [b]Themes[/b].\r\nMany of the available modules and themes for ImpressCMS, are available at the [url=http://addons.impresscms.org]Addons[/url] section of the [url=http://www.impresscms.org]projects website[/url].\r\n\r\nYou will also need to begin using [b]Blocks[/b]. You can begin by removing this block. You can do this by navigating to System Admin > Blocks, and the selecting "Webmasters" in the [b]Groups[/b] select box. You will then be able to see the blocks available for the Webmasters group, which this block is!\r\n\r\nFor more information about working with ImpressCMS, please use the links below.\r\n<ul><li>[url=http://wiki.impresscms.org/modules/wiki/index.php?page=English#Using_ImpressCMS]Using ImpressCMS[/url]</li><li>[url=http://wiki.impresscms.org/modules/wiki/index.php?page=English#Customizing_ImpressCMS]Customizing ImpressCMS[/url]</li><li>[url=http://wiki.impresscms.org/modules/wiki/index.php?page=English#Developing_for_ImpressCMS]Developing for ImpressCMS[/url]</li></ul>\r\nWe warmly invite you to join [url=http://community.impresscms.org]The ImpressCMS Community[/url] - Where you can make contributions, get help, help others, etc...', 4, 0, 1, 'C', 'S', 1, '', '', '', '', '', 0, 1435275746),
(21, 0, 0, '', 'Custom Block (Auto Format + smilies)', 'Welcome to an ImpressCMS powered website !', 'This is sample text for a block. If you are the administrator please log in to view more information.\r\n\r\nLearn more about ImpressCMS:\r\n<ul><li>[url=http://www.impresscms.org]Project Home[/url]</li><li>[url=http://community.impresscms.org]ImpressCMS Community[/url]</li><li>[url=http://addons.impresscms.org]ImpressCMS Addons[/url]</li><li>[url=http://wiki.impresscms.org]ImpressCMS Wiki[/url]</li><li>[url=http://blog.impresscms.org]ImpressCMS Blog[/url]</li></ul>', 4, 0, 1, 'C', 'S', 1, '', '', '', '', '', 0, 1435275746);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_online`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_online` (
  `online_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `online_uname` varchar(25) NOT NULL DEFAULT '',
  `online_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `online_module` smallint(5) unsigned NOT NULL DEFAULT '0',
  `online_ip` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_online`
--

INSERT INTO `ib1941eb7_online` (`online_uid`, `online_uname`, `online_updated`, `online_module`, `online_ip`) VALUES
(1, 'admin', 1435278900, 0, '192.168.0.104');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_priv_msgs`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_priv_msgs` (
  `msg_id` mediumint(8) unsigned NOT NULL,
  `msg_image` varchar(100) DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `from_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_text` text NOT NULL,
  `read_msg` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_protector_access`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_protector_access` (
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0.0',
  `request_uri` varchar(255) NOT NULL DEFAULT '',
  `malicious_actions` varchar(255) NOT NULL DEFAULT '',
  `expire` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_protector_log`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_protector_log` (
  `lid` mediumint(8) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0.0',
  `type` varchar(255) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `extra` text,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_ranks`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_ranks` (
  `rank_id` smallint(5) unsigned NOT NULL,
  `rank_title` varchar(50) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_max` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_ranks`
--

INSERT INTO `ib1941eb7_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_max`, `rank_special`, `rank_image`) VALUES
(1, 'Just popping in', 0, 20, 0, 'rank3e632f95e81ca.gif'),
(2, 'Not too shy to talk', 21, 40, 0, 'rank3dbf8e94a6f72.gif'),
(3, 'Quite a regular', 41, 70, 0, 'rank3dbf8e9e7d88d.gif'),
(4, 'Just can not stay away', 71, 150, 0, 'rank3dbf8ea81e642.gif'),
(5, 'Home away from home', 151, 10000, 0, 'rank3dbf8eb1a72e7.gif'),
(6, 'Moderator', 0, 0, 1, 'rank3dbf8edf15093.gif'),
(7, 'Webmaster', 0, 0, 1, 'rank3dbf8ee8681cd.gif');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_session`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_session` (
  `sess_id` varchar(32) NOT NULL DEFAULT '',
  `sess_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `sess_ip` varchar(64) NOT NULL DEFAULT '',
  `sess_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_session`
--

INSERT INTO `ib1941eb7_session` (`sess_id`, `sess_updated`, `sess_ip`, `sess_data`) VALUES
('b17b5l2tdao00h4bbav49u3fr7', 1435362139, '192.168.0.104', 'xoopsUserGroups|a:1:{i:0;s:1:"3";}ad_sess_regen|b:0;icms_fprint|s:64:"4268d9da31b3deeeb821e5e74ded45ca51e3f6872ae216300bd89f39548d146e";'),
('iav8243fvvkdsso84sag006p61', 1435278904, '192.168.0.104', 'xoopsUserId|s:1:"1";xoopsUserGroups|a:2:{i:0;s:1:"1";i:1;s:1:"2";}xoopsUserLastLogin|i:1435278533;xoopsUserTheme|s:6:"iTheme";UserLanguage|s:7:"english";ad_sess_regen|b:0;icms_fprint|s:64:"4268d9da31b3deeeb821e5e74ded45ca51e3f6872ae216300bd89f39548d146e";'),
('smu23r7uns3hdg7ilvmdib5vb2', 1435485725, '::1', 'xoopsUserGroups|a:1:{i:0;s:1:"3";}ad_sess_regen|b:0;icms_fprint|s:64:"df5f5ec903575c777460d4da8403ec9fce3f7bbdb4335f63dd1f9f00112a9d00";');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_smiles`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_smiles` (
  `id` smallint(5) unsigned NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  `smile_url` varchar(100) NOT NULL DEFAULT '',
  `emotion` varchar(75) NOT NULL DEFAULT '',
  `display` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_smiles`
--

INSERT INTO `ib1941eb7_smiles` (`id`, `code`, `smile_url`, `emotion`, `display`) VALUES
(1, ':-D', 'smil3dbd4d4e4c4f2.gif', 'Very Happy', 1),
(2, ':-)', 'smil3dbd4d6422f04.gif', 'Smile', 1),
(3, ':-(', 'smil3dbd4d75edb5e.gif', 'Sad', 1),
(4, ':-o', 'smil3dbd4d8676346.gif', 'Surprised', 1),
(5, ':-?', 'smil3dbd4d99c6eaa.gif', 'Confused', 1),
(6, '8-)', 'smil3dbd4daabd491.gif', 'Cool', 1),
(7, ':lol:', 'smil3dbd4dbc14f3f.gif', 'Laughing', 1),
(8, ':-x', 'smil3dbd4dcd7b9f4.gif', 'Mad', 1),
(9, ':-P', 'smil3dbd4ddd6835f.gif', 'Razz', 1),
(10, ':oops:', 'smil3dbd4df1944ee.gif', 'Embarrassed', 0),
(11, ':cry:', 'smil3dbd4e02c5440.gif', 'Crying (very sad)', 0),
(12, ':evil:', 'smil3dbd4e1748cc9.gif', 'Evil or Very Mad', 0),
(13, ':roll:', 'smil3dbd4e29bbcc7.gif', 'Rolling Eyes', 0),
(14, ';-)', 'smil3dbd4e398ff7b.gif', 'Wink', 0),
(15, ':pint:', 'smil3dbd4e4c2e742.gif', 'Another pint of beer', 0),
(16, ':hammer:', 'smil3dbd4e5e7563a.gif', 'ToolTimes at work', 0),
(17, ':idea:', 'smil3dbd4e7853679.gif', 'I have an idea', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_system_adsense`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_system_adsense` (
  `adsenseid` int(11) NOT NULL,
  `format` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `style` text NOT NULL,
  `color_border` varchar(6) NOT NULL DEFAULT '',
  `color_background` varchar(6) NOT NULL DEFAULT '',
  `color_link` varchar(6) NOT NULL DEFAULT '',
  `color_url` varchar(6) NOT NULL DEFAULT '',
  `color_text` varchar(6) NOT NULL DEFAULT '',
  `client_id` varchar(100) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '',
  `slot` varchar(12) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_system_autotasks`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_system_autotasks` (
  `sat_id` int(10) unsigned NOT NULL,
  `sat_name` varchar(255) NOT NULL,
  `sat_code` text NOT NULL,
  `sat_repeat` int(11) NOT NULL,
  `sat_interval` int(11) NOT NULL,
  `sat_onfinish` smallint(2) NOT NULL,
  `sat_enabled` int(1) NOT NULL,
  `sat_lastruntime` int(15) unsigned NOT NULL,
  `sat_type` varchar(100) NOT NULL DEFAULT 'custom',
  `sat_addon_id` int(2) unsigned zerofill DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_system_autotasks`
--

INSERT INTO `ib1941eb7_system_autotasks` (`sat_id`, `sat_name`, `sat_code`, `sat_repeat`, `sat_interval`, `sat_onfinish`, `sat_enabled`, `sat_lastruntime`, `sat_type`, `sat_addon_id`) VALUES
(1, 'Inactivating users', 'autotask.php', 0, 1440, 0, 1, 1435485724, 'addon/system', 00);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_system_customtag`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_system_customtag` (
  `customtagid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `customtag_content` text NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT '',
  `customtag_type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_system_mimetype`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_system_mimetype` (
  `mimetypeid` int(11) NOT NULL,
  `extension` varchar(60) NOT NULL DEFAULT '',
  `types` text NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `dirname` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_system_mimetype`
--

INSERT INTO `ib1941eb7_system_mimetype` (`mimetypeid`, `extension`, `types`, `name`, `dirname`) VALUES
(1, 'bin', 'application/octet-stream', 'Binary File/Linux Executable', ''),
(2, 'dms', 'application/octet-stream', 'Amiga DISKMASHER Compressed Archive', ''),
(3, 'class', 'application/octet-stream', 'Java Bytecode', ''),
(4, 'so', 'application/octet-stream', 'UNIX Shared Library Function', ''),
(5, 'dll', 'application/octet-stream', 'Dynamic Link Library', ''),
(6, 'hqx', 'application/binhex application/mac-binhex application/mac-binhex40', 'Macintosh BinHex 4 Compressed Archive', ''),
(7, 'cpt', 'application/mac-compactpro application/compact_pro', 'Compact Pro Archive', ''),
(8, 'lha', 'application/lha application/x-lha application/octet-stream application/x-compress application/x-compressed application/maclha', 'Compressed Archive File', ''),
(9, 'lzh', 'application/lzh application/x-lzh application/x-lha application/x-compress application/x-compressed application/x-lzh-archive zz-application/zz-winassoc-lzh application/maclha application/octet-stream', 'Compressed Archive File', ''),
(10, 'sh', 'application/x-shar', 'UNIX shar Archive File', ''),
(11, 'shar', 'application/x-shar', 'UNIX shar Archive File', ''),
(12, 'tar', 'application/tar application/x-tar applicaton/x-gtar multipart/x-tar application/x-compress application/x-compressed', 'Tape Archive File', ''),
(13, 'gtar', 'application/x-gtar', 'GNU tar Compressed File Archive', ''),
(14, 'ustar', 'application/x-ustar multipart/x-ustar', 'POSIX tar Compressed Archive', ''),
(15, 'zip', 'application/zip application/x-zip application/x-zip-compressed application/octet-stream application/x-compress application/x-compressed multipart/x-zip', 'Compressed Archive File', ''),
(16, 'exe', 'application/exe application/x-exe application/dos-exe application/x-winexe application/msdos-windows application/x-msdos-program', 'Executable File', ''),
(17, 'wmz', 'application/x-ms-wmz', 'Windows Media Compressed Skin File', ''),
(18, 'wmd', 'application/x-ms-wmd', 'Windows Media Download File', ''),
(19, 'doc', 'application/msword application/doc appl/text application/vnd.msword application/vnd.ms-word application/winword application/word application/x-msw6 application/x-msword', 'Word Document', 'system'),
(20, 'pdf', 'application/pdf application/acrobat application/x-pdf applications/vnd.pdf text/pdf', 'Acrobat Portable Document Format', 'system'),
(21, 'eps', 'application/eps application/postscript application/x-eps image/eps image/x-eps', 'Encapsulated PostScript', ''),
(22, 'ps', 'application/postscript application/ps application/x-postscript application/x-ps text/postscript', 'PostScript', ''),
(23, 'smi', 'application/smil', 'SMIL Multimedia', ''),
(24, 'smil', 'application/smil', 'Synchronized Multimedia Integration Language', ''),
(25, 'wmlc', 'application/vnd.wap.wmlc ', 'Compiled WML Document', ''),
(26, 'wmlsc', 'application/vnd.wap.wmlscriptc', 'Compiled WML Script', ''),
(27, 'vcd', 'application/x-cdlink', 'Virtual CD-ROM CD Image File', ''),
(28, 'pgn', 'application/formstore', 'Picatinny Arsenal Electronic Formstore Form in TIFF Format', ''),
(29, 'cpio', 'application/x-cpio', 'UNIX CPIO Archive', ''),
(30, 'csh', 'application/x-csh', 'Csh Script', ''),
(31, 'dcr', 'application/x-director', 'Shockwave Movie', ''),
(32, 'dir', 'application/x-director', 'Macromedia Director Movie', ''),
(33, 'dxr', 'application/x-director application/vnd.dxr', 'Macromedia Director Protected Movie File', ''),
(34, 'dvi', 'application/x-dvi', 'TeX Device Independent Document', ''),
(35, 'spl', 'application/x-futuresplash', 'Macromedia FutureSplash File', ''),
(36, 'hdf', 'application/x-hdf', 'Hierarchical Data Format File', ''),
(37, 'js', 'application/x-javascript text/javascript', 'JavaScript Source Code', ''),
(38, 'skp', 'application/x-koan application/vnd-koan koan/x-skm application/vnd.koan', 'SSEYO Koan Play File', ''),
(39, 'skd', 'application/x-koan application/vnd-koan koan/x-skm application/vnd.koan', 'SSEYO Koan Design File', ''),
(40, 'skt', 'application/x-koan application/vnd-koan koan/x-skm application/vnd.koan', 'SSEYO Koan Template File', ''),
(41, 'skm', 'application/x-koan application/vnd-koan koan/x-skm application/vnd.koan', 'SSEYO Koan Mix File', ''),
(42, 'latex', 'application/x-latex text/x-latex', 'LaTeX Source Document', ''),
(43, 'nc', 'application/x-netcdf text/x-cdf', 'Unidata netCDF Graphics', ''),
(44, 'cdf', 'application/cdf application/x-cdf application/netcdf application/x-netcdf text/cdf text/x-cdf', 'Channel Definition Format', ''),
(45, 'swf', 'application/x-shockwave-flash application/x-shockwave-flash2-preview application/futuresplash image/vnd.rn-realflash', 'Macromedia Flash Format File', ''),
(46, 'sit', 'application/stuffit application/x-stuffit application/x-sit', 'StuffIt Compressed Archive File', ''),
(47, 'tcl', 'application/x-tcl', 'TCL/TK Language Script', ''),
(48, 'tex', 'application/x-tex', 'LaTeX Source', ''),
(49, 'texinfo', 'application/x-texinfo', 'TeX', ''),
(50, 'texi', 'application/x-texinfo', 'TeX', ''),
(51, 't', 'application/x-troff', 'TAR Tape Archive Without Compression', ''),
(52, 'tr', 'application/x-troff', 'Unix Tape Archive = TAR without compression (tar)', ''),
(53, 'src', 'application/x-wais-source', 'Sourcecode', ''),
(54, 'xhtml', 'application/xhtml+xml', 'Extensible HyperText Markup Language File', ''),
(55, 'xht', 'application/xhtml+xml', 'Extensible HyperText Markup Language File', ''),
(56, 'au', 'audio/basic audio/x-basic audio/au audio/x-au audio/x-pn-au audio/rmf audio/x-rmf audio/x-ulaw audio/vnd.qcelp audio/x-gsm audio/snd', 'ULaw/AU Audio File', ''),
(57, 'XM', 'audio/xm audio/x-xm audio/module-xm audio/mod audio/x-mod', 'Fast Tracker 2 Extended Module', ''),
(58, 'snd', 'audio/basic', 'Macintosh Sound Resource', ''),
(59, 'mid', 'audio/mid audio/m audio/midi audio/x-midi application/x-midi audio/soundtrack', 'Musical Instrument Digital Interface MIDI-sequention Sound', ''),
(60, 'midi', 'audio/mid audio/m audio/midi audio/x-midi application/x-midi', 'Musical Instrument Digital Interface MIDI-sequention Sound', ''),
(61, 'kar', 'audio/midi audio/x-midi audio/mid x-music/x-midi', 'Karaoke MIDI File', ''),
(62, 'mpga', 'audio/mpeg audio/mp3 audio/mgp audio/m-mpeg audio/x-mp3 audio/x-mpeg audio/x-mpg video/mpeg', 'Mpeg-1 Layer3 Audio Stream', ''),
(63, 'mp2', 'video/mpeg audio/mpeg', 'MPEG Audio Stream, Layer II', ''),
(64, 'mp3', 'audio/mpeg audio/x-mpeg audio/mp3 audio/x-mp3 audio/mpeg3 audio/x-mpeg3 audio/mpg audio/x-mpg audio/x-mpegaudio', 'MPEG Audio Stream, Layer III', ''),
(65, 'aif', 'audio/aiff audio/x-aiff sound/aiff audio/rmf audio/x-rmf audio/x-pn-aiff audio/x-gsm audio/x-midi audio/vnd.qcelp', 'Audio Interchange File', ''),
(66, 'aiff', 'audio/aiff audio/x-aiff sound/aiff audio/rmf audio/x-rmf audio/x-pn-aiff audio/x-gsm audio/mid audio/x-midi audio/vnd.qcelp', 'Audio Interchange File', ''),
(67, 'aifc', 'audio/aiff audio/x-aiff audio/x-aifc sound/aiff audio/rmf audio/x-rmf audio/x-pn-aiff audio/x-gsm audio/x-midi audio/mid audio/vnd.qcelp', 'Audio Interchange File', ''),
(68, 'm3u', 'audio/x-mpegurl audio/mpeg-url application/x-winamp-playlist audio/scpls audio/x-scpls', 'MP3 Playlist File', ''),
(69, 'ram', 'audio/x-pn-realaudio audio/vnd.rn-realaudio audio/x-pm-realaudio-plugin audio/x-pn-realvideo audio/x-realaudio video/x-pn-realvideo text/plain', 'RealMedia Metafile', ''),
(70, 'rm', 'application/vnd.rn-realmedia audio/vnd.rn-realaudio audio/x-pn-realaudio audio/x-realaudio audio/x-pm-realaudio-plugin', 'RealMedia Streaming Media', ''),
(71, 'rpm', 'audio/x-pn-realaudio audio/x-pn-realaudio-plugin audio/x-pnrealaudio-plugin video/x-pn-realvideo-plugin audio/x-mpegurl application/octet-stream', 'RealMedia Player Plug-in', ''),
(72, 'ra', 'audio/vnd.rn-realaudio audio/x-pn-realaudio audio/x-realaudio audio/x-pm-realaudio-plugin video/x-pn-realvideo', 'RealMedia Streaming Media', ''),
(73, 'wav', 'audio/wav audio/x-wav audio/wave audio/x-pn-wav', 'Waveform Audio', ''),
(74, 'wax', ' audio/x-ms-wax', 'Windows Media Audio Redirector', ''),
(75, 'wma', 'audio/x-ms-wma video/x-ms-asf', 'Windows Media Audio File', ''),
(76, 'bmp', 'image/bmp image/x-bmp image/x-bitmap image/x-xbitmap image/x-win-bitmap image/x-windows-bmp image/ms-bmp image/x-ms-bmp application/bmp application/x-bmp application/x-win-bitmap application/preview', 'Windows OS/2 Bitmap Graphics', 'system'),
(77, 'gif', 'image/gif image/x-xbitmap image/gi_', 'Graphic Interchange Format', 'system'),
(78, 'ief', 'image/ief', 'Image File - Bitmap graphics', ''),
(79, 'jpeg', 'image/jpeg image/jpg image/jpe_ image/pjpeg image/vnd.swiftview-jpeg', 'JPEG/JIFF Image', 'system'),
(80, 'jpg', 'image/jpeg image/jpg image/jp_ application/jpg application/x-jpg image/pjpeg image/pipeg image/vnd.swiftview-jpeg image/x-xbitmap', 'JPEG/JIFF Image', 'system'),
(81, 'jpe', 'image/jpeg', 'JPEG/JIFF Image', 'system'),
(82, 'png', 'image/png application/png application/x-png', 'Portable (Public) Network Graphic', 'system'),
(83, 'tiff', 'image/tiff', 'Tagged Image Format File', 'system'),
(84, 'tif', 'image/tif image/x-tif image/tiff image/x-tiff application/tif application/x-tif application/tiff application/x-tiff', 'Tagged Image Format File', 'system'),
(85, 'ico', 'image/ico image/x-icon application/ico application/x-ico application/x-win-bitmap image/x-win-bitmap application/octet-stream', 'Windows Icon', ''),
(86, 'wbmp', 'image/vnd.wap.wbmp', 'Wireless Bitmap File Format', ''),
(87, 'ras', 'application/ras application/x-ras image/ras', 'Sun Raster Graphic', ''),
(88, 'pnm', 'image/x-portable-anymap', 'PBM Portable Any Map Graphic Bitmap', ''),
(89, 'pbm', 'image/portable bitmap image/x-portable-bitmap image/pbm image/x-pbm', 'UNIX Portable Bitmap Graphic', ''),
(90, 'pgm', 'image/x-portable-graymap image/x-pgm', 'Portable Graymap Graphic', ''),
(91, 'ppm', 'image/x-portable-pixmap application/ppm application/x-ppm image/x-p image/x-ppm', 'PBM Portable Pixelmap Graphic', ''),
(92, 'rgb', 'image/rgb image/x-rgb', 'Silicon Graphics RGB Bitmap', ''),
(93, 'xbm', 'image/x-xpixmap image/x-xbitmap image/xpm image/x-xpm', 'X Bitmap Graphic', ''),
(94, 'xpm', 'image/x-xpixmap', 'BMC Software Patrol UNIX Icon File', ''),
(95, 'xwd', 'image/x-xwindowdump image/xwd image/x-xwd application/xwd application/x-xwd', 'X Windows Dump', ''),
(96, 'igs', 'model/iges application/iges application/x-iges application/igs application/x-igs drawing/x-igs image/x-igs', 'Initial Graphics Exchange Specification Format', ''),
(97, 'css', 'application/css-stylesheet text/css', 'Hypertext Cascading Style Sheet', ''),
(98, 'html', 'text/html text/plain', 'Hypertext Markup Language', ''),
(99, 'htm', 'text/html', 'Hypertext Markup Language', ''),
(100, 'txt', 'text/plain application/txt browser/internal', 'Text File', 'system'),
(101, 'rtf', 'application/rtf application/x-rtf text/rtf text/richtext application/msword application/doc application/x-soffice', 'Rich Text Format File', 'system'),
(102, 'wml', 'text/vnd.wap.wml text/wml', 'Website META Language File', ''),
(103, 'wmls', 'text/vnd.wap.wmlscript', 'WML Script', ''),
(104, 'etx', 'text/x-setext', 'SetText Structure Enhanced Text', ''),
(105, 'xml', 'text/xml application/xml application/x-xml', 'Extensible Markup Language File', ''),
(106, 'xsl', 'text/xml', 'XML Stylesheet', ''),
(107, 'php', 'text/php application/x-httpd-php application/php magnus-internal/shellcgi application/x-php', 'PHP Script', ''),
(108, 'php3', 'text/php3 application/x-httpd-php', 'PHP Script', ''),
(109, 'mpeg', 'video/mpeg', 'MPEG Movie', ''),
(110, 'mpg', 'video/mpeg video/mpg video/x-mpg video/mpeg2 application/x-pn-mpg video/x-mpeg video/x-mpeg2a audio/mpeg audio/x-mpeg image/mpg', 'MPEG 1 System Stream', ''),
(111, 'mpe', 'video/mpeg', 'MPEG Movie Clip', ''),
(112, 'qt', 'video/quicktime audio/aiff audio/x-wav video/flc', 'QuickTime Movie', ''),
(113, 'mov', 'video/quicktime video/x-quicktime image/mov audio/aiff audio/x-midi audio/x-wav video/avi', 'QuickTime Video Clip', ''),
(114, 'avi', 'video/avi video/msvideo video/x-msvideo image/avi video/xmpg2 application/x-troff-msvideo audio/aiff audio/avi', 'Audio Video Interleave File', ''),
(115, 'movie', 'video/sgi-movie video/x-sgi-movie', 'QuickTime Movie', ''),
(116, 'asf', 'audio/asf application/asx video/x-ms-asf-plugin application/x-mplayer2 video/x-ms-asf application/vnd.ms-asf video/x-ms-asf-plugin video/x-ms-wm video/x-ms-wmx', 'Advanced Streaming Format', ''),
(117, 'asx', 'video/asx application/asx video/x-ms-asf-plugin application/x-mplayer2 video/x-ms-asf application/vnd.ms-asf video/x-ms-asf-plugin video/x-ms-wm video/x-ms-wmx video/x-la-asf', 'Advanced Stream Redirector File', ''),
(118, 'wmv', 'video/x-ms-wmv', 'Windows Media File', ''),
(119, 'wvx', 'video/x-ms-wvx', 'Windows Media Redirector', ''),
(120, 'wm', 'video/x-ms-wm', 'Windows Media A/V File', ''),
(121, 'wmx', 'video/x-ms-wmx', 'Windows Media Player A/V Shortcut', ''),
(122, 'ice', 'x-conference-xcooltalk', 'Cooltalk Audio', ''),
(123, 'rar', 'application/octet-stream', 'WinRAR Compressed Archive', ''),
(124, 'mp4', 'video/mp4', 'MP4 Video File', '');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_system_rating`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_system_rating` (
  `ratingid` int(11) NOT NULL,
  `dirname` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `itemid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `rate` int(1) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_tplfile`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_tplfile` (
  `tpl_id` mediumint(7) unsigned NOT NULL,
  `tpl_refid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tpl_module` varchar(25) NOT NULL DEFAULT '',
  `tpl_tplset` varchar(50) NOT NULL DEFAULT '',
  `tpl_file` varchar(50) NOT NULL DEFAULT '',
  `tpl_desc` varchar(255) NOT NULL DEFAULT '',
  `tpl_lastmodified` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl_lastimported` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl_type` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_tplfile`
--

INSERT INTO `ib1941eb7_tplfile` (`tpl_id`, `tpl_refid`, `tpl_module`, `tpl_tplset`, `tpl_file`, `tpl_desc`, `tpl_lastmodified`, `tpl_lastimported`, `tpl_type`) VALUES
(1, 1, 'system', 'default', 'system_userinfo.html', '', 1435275746, 1435275746, 'module'),
(2, 1, 'system', 'default', 'system_userform.html', '', 1435275746, 1435275746, 'module'),
(3, 1, 'system', 'default', 'system_rss.html', '', 1435275746, 1435275746, 'module'),
(4, 1, 'system', 'default', 'system_comment.html', '', 1435275746, 1435275746, 'module'),
(5, 1, 'system', 'default', 'system_comments_flat.html', '', 1435275746, 1435275746, 'module'),
(6, 1, 'system', 'default', 'system_comments_thread.html', '', 1435275746, 1435275746, 'module'),
(7, 1, 'system', 'default', 'system_comments_nest.html', '', 1435275746, 1435275746, 'module'),
(8, 1, 'system', 'default', 'system_siteclosed.html', '', 1435275746, 1435275746, 'module'),
(9, 1, 'system', 'default', 'system_redirect.html', '', 1435275746, 1435275746, 'module'),
(10, 1, 'system', 'default', 'system_dummy.html', '', 1435275746, 1435275746, 'module'),
(11, 1, 'system', 'default', 'system_notification_list.html', '', 1435275746, 1435275746, 'module'),
(12, 1, 'system', 'default', 'system_notification_select.html', '', 1435275746, 1435275746, 'module'),
(13, 1, 'system', 'default', 'system_block_dummy.html', '', 1435275746, 1435275746, 'module'),
(14, 1, 'system', 'default', 'system_privpolicy.html', '', 1435275746, 1435275746, 'module'),
(15, 1, 'system', 'default', 'system_error.html', '', 1435275746, 1435275746, 'module'),
(16, 1, 'system', 'default', 'system_openid.html', '', 1435275746, 1435275746, 'module'),
(17, 1, 'system', 'default', 'admin/positions/system_adm_positions.html', '', 1435275746, 1435275746, 'module'),
(18, 1, 'system', 'default', 'admin/pages/system_adm_pagemanager_index.html', '', 1435275746, 1435275746, 'module'),
(19, 1, 'system', 'default', 'admin/blocks/system_adm_blocks.html', '', 1435275746, 1435275746, 'module'),
(20, 1, 'system', 'default', 'admin/modules/system_adm_modules.html', '', 1435275746, 1435275746, 'module'),
(21, 1, 'system', 'default', 'system_common_form.html', '', 1435275746, 1435275746, 'module'),
(22, 1, 'system', 'default', 'system_persistabletable_display.html', '', 1435275746, 1435275746, 'module'),
(23, 1, 'system', 'default', 'admin/customtag/system_adm_customtag.html', '', 1435275746, 1435275746, 'module'),
(24, 1, 'system', 'default', 'system_default_form.html', '', 1435275746, 1435275746, 'module'),
(25, 1, 'system', 'default', 'admin/images/system_adm_imagemanager.html', '', 1435275746, 1435275746, 'module'),
(26, 1, 'system', 'default', 'admin/images/system_adm_imagemanager_imglist.html', '', 1435275746, 1435275746, 'module'),
(27, 1, 'system', 'default', 'admin/images/system_adm_imagemanager_img.html', '', 1435275746, 1435275746, 'module'),
(28, 1, 'system', 'default', 'admin/images/system_adm_imagemanager_editimg.html', '', 1435275746, 1435275746, 'module'),
(29, 1, 'system', 'default', 'admin/images/system_adm_imagemanager_cloneimg.html', '', 1435275746, 1435275746, 'module'),
(30, 1, 'system', 'default', 'admin/system_adm_rss.html', '', 1435275746, 1435275746, 'module'),
(31, 1, 'system', 'default', 'system_search.html', '', 1435275746, 1435275746, 'module'),
(32, 1, 'system', 'default', 'system_persistable_singleview.html', '', 1435275746, 1435275746, 'module'),
(33, 1, 'system', 'default', 'system_breadcrumb.html', '', 1435275746, 1435275746, 'module'),
(34, 1, 'system', 'default', 'admin/adsense/system_adm_adsense.html', '', 1435275746, 1435275746, 'module'),
(35, 1, 'system', 'default', 'system_print.html', '', 1435275746, 1435275746, 'module'),
(36, 1, 'system', 'default', 'admin/rating/system_adm_rating.html', '', 1435275746, 1435275746, 'module'),
(37, 1, 'system', 'default', 'system_rating_form.html', '', 1435275746, 1435275746, 'module'),
(38, 1, 'system', 'default', 'admin/mimetype/system_adm_mimetype.html', '', 1435275746, 1435275746, 'module'),
(39, 1, 'system', 'default', 'admin/userrank/system_adm_userrank.html', '', 1435275746, 1435275746, 'module'),
(40, 1, 'system', 'default', 'admin/autotasks/system_adm_autotasks.html', '', 1435275746, 1435275746, 'module'),
(41, 1, 'system', 'default', 'system_readmsg.html', '', 1435275746, 1435275746, 'module'),
(42, 1, 'system', 'default', 'system_viewmsgs.html', '', 1435275746, 1435275746, 'module'),
(43, 1, 'system', 'default', 'system_block_user.html', '', 1435275746, 1435275746, 'block'),
(44, 2, 'system', 'default', 'system_block_login.html', '', 1435275746, 1435275746, 'block'),
(45, 3, 'system', 'default', 'system_block_search.html', '', 1435275746, 1435275746, 'block'),
(46, 4, 'system', 'default', 'system_block_waiting.html', '', 1435275746, 1435275746, 'block'),
(47, 5, 'system', 'default', 'system_block_mainmenu.html', '', 1435275746, 1435275746, 'block'),
(48, 6, 'system', 'default', 'system_block_siteinfo.html', '', 1435275746, 1435275746, 'block'),
(49, 7, 'system', 'default', 'system_block_online.html', '', 1435275746, 1435275746, 'block'),
(50, 8, 'system', 'default', 'system_block_topusers.html', '', 1435275746, 1435275746, 'block'),
(51, 9, 'system', 'default', 'system_block_newusers.html', '', 1435275746, 1435275746, 'block'),
(52, 10, 'system', 'default', 'system_block_comments.html', '', 1435275746, 1435275746, 'block'),
(53, 11, 'system', 'default', 'system_block_notification.html', '', 1435275746, 1435275746, 'block'),
(54, 12, 'system', 'default', 'system_block_themes.html', '', 1435275746, 1435275746, 'block'),
(55, 13, 'system', 'default', 'system_block_multilanguage.html', '', 1435275746, 1435275746, 'block'),
(56, 14, 'system', 'default', 'system_block_socialbookmark.html', '', 1435275746, 1435275746, 'block'),
(57, 15, 'system', 'default', 'system_admin_block_warnings.html', '', 1435275746, 1435275746, 'block'),
(58, 16, 'system', 'default', 'system_admin_block_cp.html', '', 1435275746, 1435275746, 'block'),
(59, 17, 'system', 'default', 'system_admin_block_modules.html', '', 1435275746, 1435275746, 'block'),
(60, 18, 'system', 'default', 'system_block_bookmarks.html', 'Things I have bookmarked', 1435275746, 1435275746, 'block'),
(61, 19, 'system', 'default', 'system_admin_block_cp_new.html', '', 1435275746, 1435275746, 'block');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_tplset`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_tplset` (
  `tplset_id` int(7) unsigned NOT NULL,
  `tplset_name` varchar(50) NOT NULL DEFAULT '',
  `tplset_desc` varchar(255) NOT NULL DEFAULT '',
  `tplset_credits` text NOT NULL,
  `tplset_created` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_tplset`
--

INSERT INTO `ib1941eb7_tplset` (`tplset_id`, `tplset_name`, `tplset_desc`, `tplset_credits`, `tplset_created`) VALUES
(1, 'default', 'ImpressCMS Default Template Set', '', 1435275745);

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_tplsource`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_tplsource` (
  `tpl_id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `tpl_source` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_tplsource`
--

INSERT INTO `ib1941eb7_tplsource` (`tpl_id`, `tpl_source`) VALUES
(1, '<{if $user_ownpage == true}>\r\n\r\n<form id="usernav" action="user.php" method="post">\r\n\r\n<table width="70%" style="margin: 0 auto;" border="0">\r\n  <tr align="center">\r\n    <td>\n    <{if $icms_isadmin == true}>\n    <input type="button" value="<{$lang_administration}>" onclick="location=''admin.php''" />\n    <{/if}>\n    <input type="button" value="<{$lang_editprofile}>" onclick="location=''edituser.php''" />\n    <input type="button" value="<{$lang_avatar}>" onclick="location=''edituser.php?op=avatarform''" />\r\n    <input type="button" value="<{$lang_notifications}>" onclick="location=''notifications.php''" />\r\n    <input type="button" value="<{$lang_inbox}><{xoInboxCount assign=pmcount}><{if $pmcount}> (<{$pmcount}>) <{/if}>" onclick="location=''viewpmsg.php''" />\r\n\r\n    <{if $user_candelete == true}>\r\n    <input type="button" value="<{$lang_deleteaccount}>" onclick="location=''user.php?op=delete''" />\r\n    <{/if}>\r\n\r\n    <input type="button" value="<{$lang_logout}>" onclick="location=''user.php?op=logout''" /></td>\r\n  </tr>\r\n</table>\r\n</form>\r\n\r\n<{elseif $icms_isadmin == true}>\n\r\n<table width="70%" style="margin: 0 auto;" border="0">\r\n  <tr align="center">\r\n    <td><input type="button" value="<{$lang_editprofile}>" onclick="location=''<{$xoops_url}>/modules/system/admin.php?fct=users&uid=<{$user_uid}>&op=modifyUser''" />\r\n    <input type="button" value="<{$lang_deleteaccount}>" onclick="location=''<{$xoops_url}>/modules/system/admin.php?fct=users&op=delUser&uid=<{$user_uid}>''" />\r\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n<{/if}>\r\n\r\n<table width="100%" border="0" cellspacing="5px">\r\n  <tr valign="top">\r\n    <td>\n      <table class="outer" cellpadding="4px" cellspacing="1px" width="100%">\r\n        <tr>\r\n          <th colspan="2" align="center"><{$lang_allaboutuser}></th>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_avatar}></td>\r\n          <td align="center" class="even"><img src="<{$user_avatarurl}>" alt="Avatar" /></td>\r\n        </tr>\r\n        <tr>\r\n          <td class="head"><{$lang_realname}></td>\r\n          <td align="center" class="odd"><{$user_realname}></td>\r\n        </tr>\r\n        <tr>\r\n          <td class="head"><{$lang_website}></td>\r\n          <td class="even"><{$user_websiteurl}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_email}></td>\r\n          <td class="odd"><{$user_email}></td>\r\n        </tr>\r\n    <{if $user_alwopenid == true}>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_openid}></td>\r\n          <td class="odd"><{$user_openid}></td>\r\n        </tr>\r\n    <{/if}>\r\n	<{if $user_ownpage != true}>\r\n		<tr valign="top">\r\n          <td class="head"><{$lang_privmsg}></td>\r\n          <td class="even"><{$user_pmlink}></td>\r\n        </tr>\r\n    <{/if}>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_icq}></td>\r\n          <td class="odd"><{$user_icq}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_aim}></td>\r\n          <td class="even"><{$user_aim}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_yim}></td>\r\n          <td class="odd"><{$user_yim}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_msnm}></td>\r\n          <td class="even"><{$user_msnm}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_location}></td>\r\n          <td class="odd"><{$user_location}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_occupation}></td>\r\n          <td class="even"><{$user_occupation}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_interest}></td>\r\n          <td class="odd"><{$user_interest}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_extrainfo}></td>\r\n          <td class="even"><{$user_extrainfo}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <th colspan="2" align="center"><{$lang_statistics}></th>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_membersince}></td>\r\n          <td align="center" class="even"><{$user_joindate}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_rank}></td>\r\n          <td align="center" class="odd"><{if $user_rankimage}><{$user_rankimage}><br /><{/if}><{$user_ranktitle}></td>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="head"><{$lang_posts}></td>\r\n          <td align="center" class="even"><{$user_posts}></td>\r\n        </tr>\r\n	<tr valign="top">\r\n          <td class="head"><{$lang_lastlogin}></td>\r\n          <td align="center" class="odd"><{$user_lastlogin}></td>\r\n        </tr>\r\n    <{if $user_showsignature == true}>\r\n      <table class="outer" cellpadding="4px" cellspacing="1px" width="100%">\r\n        <tr valign="top">\r\n          <th colspan="2" align="center"><{$lang_signature}></th>\r\n        </tr>\r\n        <tr valign="top">\r\n          <td class="even"><{$user_signature}></td>\r\n        </tr>\r\n      </table>\r\n    <{/if}>\r\n      </table>\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n<!-- start module search results loop -->\r\n<{foreach item=module from=$modules}>\r\n\r\n<h4><{$module.name}></h4>\r\n<p>\r\n  <!-- start results item loop -->\r\n  <{foreach item=result from=$module.results}>\r\n\r\n  <img src="<{$result.image}>" alt="<{$module.name}>" /><b><a href="<{$result.link}>" title="<{$result.title}>"><{$result.title}></a></b><br /><small>(<{$result.time}>)</small><br />\r\n\r\n  <{/foreach}>\r\n  <!-- end results item loop -->\r\n\r\n<{$module.showall_link}>\r\n</p>\r\n\r\n<{/foreach}>\r\n<!-- end module search results loop -->\r\n'),
(2, '<{if $lang_reset !== 1}>\n<div style="position: relative;">\n	<div>\n		<fieldset style="padding: 10px;">\n			<legend style="font-weight: bold;"><{$lang_login}></legend>\n<div id="icms_block_login_form">\n			<form action="user.php" method="post">\n		    	<div><{$lang_username}><input type="text" class="uname" name="uname" size="21" maxlength="25" value="<{$usercookie}>" />\r\n		    	<br />\n			    <br /></div>\r\n		    	<div><{$lang_password}><input type="password" name="pass" size="21" maxlength="32" /><br /></div>\r\n			    <{if $rememberme }>\n			    	<div><input type="checkbox" name="rememberme" value="On" /><{$lang_rememberme}><br /></div>\r\n			    <{/if}>\n			    <div><input type="hidden" name="op" value="login" /></div>\r\n		    	<div><input type="hidden" name="xoops_redirect" value="<{$redirect_page}>"/>\r\n			    <br />\n		    	<input type="submit" value="<{$lang_login}>" /></div>\r\n			</form>\n  <{if $auth_openid}>\n<br />\n	  <div style="text-align: <{$smarty.const._GLOBAL_LEFT}>;"><a href="#" onclick="xoopsGetElementById(''icms_openid-verify-form2'').style.display = ''block''; xoopsGetElementById(''icms_block_login_form'').style.display = ''none''; return false;"><{$lang_login_oid}></a></div>\n  <{/if}>\n</div>\n<{if $auth_openid}>\n	<div id="icms_openid-verify-form2" style="display: none;">\n	  <form method="get" action="<{$xoops_url}>/try_auth.php">\n	    <{$lang_youoid}>\n	    <input type="hidden" name="action" value="verify" />\n	    <input type="text" class="openid_url" name="openid_identifier" size="12" value="" />\n	    <input type="submit" value="<{$lang_login}>" />\n	  </form>\n<br />\n	  <div style="text-align: <{$smarty.const._GLOBAL_LEFT}>;"><a href="#" onclick="xoopsGetElementById(''icms_block_login_form'').style.display = ''block''; xoopsGetElementById(''icms_openid-verify-form2'').style.display = ''none''; return false;"><{$lang_back2normoid}></a></div>\n	</div>\n<br />\n<{/if}>\n			<a name="lost"></a>\n			<{if $allow_registration }>\n				<div style="text-align: <{$smarty.const._GLOBAL_RIGHT}>;"><{$lang_notregister}><br /></div>\n			<{/if}>\n		</fieldset>\n	</div>\n\n	<div>\n		<fieldset style="padding: 10px;">\n			<legend style="font-weight: bold;"><{$lang_lostpassword}></legend>\n			<div>\n				<{$lang_noproblem}>\n			</div>\n			<form action="lostpass.php" method="post">\n				<div><br /><{$lang_youremail}> <input type="text" name="email" size="26" maxlength="60" />&nbsp;&nbsp;<input type="hidden" name="op" value="mailpasswd" /><input type="hidden" name="t" value="<{$mailpasswd_token}>" />\r\n		    	<br />\n		    	<br />\n		     	<input type="submit" value="<{$lang_sendpassword}>" /></div>\r\n			</form>\n		</fieldset>\n	</div>\n</div>\n<{else}>\n<div style="position: relative;height: 250px;">\n	<div style="float: <{$smarty.const._GLOBAL_LEFT}>; width: 80% ">\n		<fieldset style="padding: 10px;">\n			<legend style="font-weight: bold;"><{$smarty.const._US_RESETPASSWORD}></legend>\n			<h1><{$smarty.const._US_RESETPASSTITLE}></h1>\n			<div><{$smarty.const._US_RESETPASSINFO}></div>\n			<br />\n			<form action="resetpass.php" method="post">\n				<{$lang_currentpass}> <input type="password" name="c_password" size="26" maxlength="255" /><br />\n				<{$lang_newpass}> <input type="password" name="password" size="26" maxlength="255" /><br />\n				<{$lang_newpass2}> <input type="password" name="password2" size="26" maxlength="255" />&nbsp;&nbsp;<input type="hidden" name="op" value="resetpass" /><input type="hidden" name="t" value="<{$resetpassword_token}>" />\n		    	<br />\n		    	<br />\n		     	<input type="submit" value="<{$smarty.const._US_RESETPASSWORD}>" />\n			</form>\n		</fieldset>\n	</div>\n</div>\n<{/if}>\n'),
(3, '<?xml version="1.0" encoding="UTF-8"?>\r\n<rss version="2.0">\r\n  <channel>\r\n    <title><{$channel_title}></title>\r\n    <link><{$channel_link}></link>\r\n    <description><{$channel_desc}></description>\r\n	<copyright><{$channel_copyright}></copyright>\r\n    <lastBuildDate><{$channel_lastbuild}></lastBuildDate>\r\n    <docs>http://backend.userland.com/rss/</docs>\r\n    <generator><{$channel_generator}></generator>\r\n    <category><{$channel_category}></category>\r\n    <managingEditor><{$channel_editor}></managingEditor>\r\n    <webMaster><{$channel_webmaster}></webMaster>\r\n	<ttl><{$channel_ttl}></ttl>\r\n    <language><{$channel_language}></language>\r\n    <{if $image_url != ""}>\r\n    <image>\r\n      <title><{$channel_title}></title>\r\n      <url><{$image_url}></url>\r\n      <link><{$channel_link}></link>\r\n      <width><{$channel_width}></width>\r\n      <height><{$channel_height}></height>\r\n    </image>\r\n    <{/if}>\r\n    <{foreach item=item from=$items}>\r\n    <item>\r\n      <title><{$item.title}></title>\r\n      <link><{$item.link}></link>\r\n      <description><{$item.description}></description>\r\n      <pubDate><{$item.pubdate}></pubDate>\r\n      <guid><{$item.guid}></guid>\r\n	  <category><{$item.category}></category>\r\n	  <author><{$item.author}></author>\r\n    </item>\r\n    <{/foreach}>\r\n  </channel>\r\n</rss>'),
(4, '<!-- start comment post -->\r\n        <tr>\r\n          <td class="head"><a id="comment<{$comment.id}>"></a> <{$comment.poster.uname}></td>\r\n          <td class="head"><div class="comDate"><span class="comDateCaption"><{$lang_posted}>:</span> <{$comment.date_posted}>&nbsp;&nbsp;<span class="comDateCaption"><{$lang_updated}>:</span> <{$comment.date_modified}></div></td>\r\n        </tr>\r\n        <tr>\r\n\r\n          <{if $comment.poster.id != 0}>\r\n\r\n          <td class="odd"><div class="comUserRank"><div class="comUserRankText"><{$comment.poster.rank_title}></div><img class="comUserRankImg" src="<{$comment.poster.rank_image}>" alt="" /></div><img class="comUserImg" src="<{$comment.poster.avatar}>" alt="" /><div class="comUserStat"><span class="comUserStatCaption"><{$lang_joined}>:</span> <{$comment.poster.regdate}></div><div class="comUserStat"><span class="comUserStatCaption"><{$lang_from}>:</span> <{$comment.poster.from}></div><div class="comUserStat"><span class="comUserStatCaption"><{$lang_posts}>:</span> <{$comment.poster.postnum}></div><div class="comUserStatus"><{$comment.poster.status}></div></td>\r\n\r\n          <{else}>\r\n\r\n          <td class="odd"> </td>\r\n\r\n          <{/if}>\r\n\r\n          <td class="odd">\r\n            <div class="comTitle"><{$comment.image}><{$comment.title}></div><div class="comText"><{$comment.text}></div>\r\n          </td>\r\n        </tr>\r\n        <tr>\r\n          <td class="even"></td>\r\n\r\n          <{if $xoops_iscommentadmin == true}>\r\n\r\n          <td class="even" align="<{$smarty.const._GLOBAL_RIGHT}>">\r\n            <a href="<{$editcomment_link}>&amp;com_id=<{$comment.id}>" title="<{$lang_edit}>"><img src="<{$xoops_url}>/images/icons/<{$icms_langname}>/edit.gif" alt="<{$lang_edit}>" /></a><a href="<{$deletecomment_link}>&amp;com_id=<{$comment.id}>" title="<{$lang_delete}>"><img src="<{$xoops_url}>/images/icons/<{$icms_langname}>/delete.gif" alt="<{$lang_delete}>" /></a><a href="<{$replycomment_link}>&amp;com_id=<{$comment.id}>" title="<{$lang_reply}>"><img src="<{$xoops_url}>/images/icons/<{$icms_langname}>/reply.gif" alt="<{$lang_reply}>" /></a>\r\n          </td>\r\n\r\n          <{elseif $xoops_isuser == true && $xoops_userid == $comment.poster.id}>\r\n\r\n          <td class="even" align="<{$smarty.const._GLOBAL_RIGHT}>">\r\n            <a href="<{$editcomment_link}>&amp;com_id=<{$comment.id}>" title="<{$lang_edit}>"><img src="<{$xoops_url}>/images/icons/<{$icms_langname}>/edit.gif" alt="<{$lang_edit}>" /></a><a href="<{$replycomment_link}>&amp;com_id=<{$comment.id}>" title="<{$lang_reply}>"><img src="<{$xoops_url}>/images/icons/<{$icms_langname}>/reply.gif" alt="<{$lang_reply}>" /></a>\r\n          </td>\r\n\r\n          <{elseif $xoops_isuser == true || $anon_canpost == true}>\r\n\r\n          <td class="even" align="<{$smarty.const._GLOBAL_RIGHT}>">\r\n            <a href="<{$replycomment_link}>&amp;com_id=<{$comment.id}>" title="<{$lang_reply}>"><img src="<{$xoops_url}>/images/icons/<{$icms_langname}>/reply.gif" alt="<{$lang_reply}>" /></a>\r\n          </td>\r\n\r\n          <{else}>\r\n\r\n          <td class="even"> </td>\r\n\r\n          <{/if}>\r\n\r\n        </tr>\r\n<!-- end comment post -->'),
(5, '<table class="outer" cellpadding="5px" cellspacing="1px">\r\n  <tr>\r\n    <th width="20%"><{$lang_poster}></th>\r\n    <th><{$lang_thread}></th>\r\n  </tr>\r\n  <{foreach item=comment from=$comments}>\r\n    <{include file="db:system_comment.html" comment=$comment}>\r\n  <{/foreach}>\r\n</table>'),
(6, '<{section name=i loop=$comments}>\r\n<table cellspacing="1px" class="outer">\r\n  <tr>\r\n    <th width="20%"><{$lang_poster}></th>\r\n    <th><{$lang_thread}></th>\r\n  </tr>\r\n  <{include file="db:system_comment.html" comment=$comments[i]}>\r\n</table>\r\n\r\n<{if $show_threadnav == true}>\r\n<div style="text-align:<{$smarty.const._GLOBAL_LEFT}>; margin:3px; padding: 5px;">\r\n<a href="<{$comment_url}>" title="<{$lang_top}>"><{$lang_top}></a> | <a href="<{$comment_url}>&amp;com_id=<{$comments[i].pid}>&amp;com_rootid=<{$comments[i].rootid}>#newscomment<{$comments[i].pid}>" title="<{$lang_parent}>"><{$lang_parent}></a>\r\n</div>\r\n<{/if}>\r\n\r\n<{if $comments[i].show_replies == true}>\r\n<!-- start comment tree -->\r\n<br />\r\n<table cellspacing="1px" class="outer">\r\n  <tr>\r\n    <th width="50%"><{$lang_subject}></th>\r\n    <th width="20%" align="center"><{$lang_poster}></th>\r\n    <th align="<{$smarty.const._GLOBAL_RIGHT}>"><{$lang_posted}></th>\r\n  </tr>\r\n  <{foreach item=reply from=$comments[i].replies}>\r\n  <tr>\r\n    <td class="even"><{$reply.prefix}> <a href="<{$comment_url}>&amp;com_id=<{$reply.id}>&amp;com_rootid=<{$reply.root_id}>" title="<{$reply.simple_title}>"><{$reply.title}></a></td>\r\n    <td class="odd" align="center"><{$reply.poster.uname}></td>\r\n    <td class="even" align="<{$smarty.const._GLOBAL_RIGHT}>"><{$reply.date_posted}></td>\r\n  </tr>\r\n  <{/foreach}>\r\n</table>\r\n<!-- end comment tree -->\r\n<{/if}>\r\n\r\n<{/section}>'),
(7, '<{section name=i loop=$comments}>\r\n<table cellspacing="1px" class="outer">\r\n  <tr>\r\n    <th width="20%"><{$lang_poster}></th>\r\n    <th><{$lang_thread}></th>\r\n  </tr>\r\n  <{include file="db:system_comment.html" comment=$comments[i]}>\r\n</table>\r\n\r\n<!-- start comment replies -->\r\n<{foreach item=reply from=$comments[i].replies}>\r\n<br />\r\n<table cellspacing="0" border="0">\r\n  <tr>\r\n    <td width="<{$reply.prefix}>"></td>\r\n    <td>\r\n      <table class="outer" cellspacing="1px">\r\n        <tr>\r\n          <th width="20%"><{$lang_poster}></th>\r\n          <th><{$lang_thread}></th>\r\n        </tr>\r\n        <{include file="db:system_comment.html" comment=$reply}>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n<{/foreach}>\r\n<!-- end comment tree -->\r\n<{/section}>'),
(8, '<!DOCTYPE html PUBLIC ''-//W3C//DTD XHTML 1.0 Transitional//EN'' ''http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd''>\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<{$xoops_langcode}>" lang="<{$xoops_langcode}>">\r\n<head>\r\n<meta http-equiv="content-type" content="text/html; charset=<{$xoops_charset}>" />\r\n<meta http-equiv="content-language" content="<{$xoops_langcode}>" />\r\n<title><{$xoops_sitename}></title>\r\n<link rel="stylesheet" type="text/css" media="all" href="<{$icms_style}>" />\r\n<link rel="stylesheet" type="text/css" media="all" href="<{$icms_themecss}>" />\r\n\r\n</head>\r\n<body>\r\n<div id="xo-canvas"<{if $columns_layout}> class="<{$columns_layout}>"<{/if}>>\r\n  <!-- Start header -->\r\n    <div id="xo-header">\r\n	    <div id="xo-headerlogo"></div>\r\n    </div>  \r\n  <!-- End header -->\r\n  \r\n<!-- Start Main Content Area -->\r\n<div id="xo-canvas-content">\r\n<center>\r\n<br />\r\n<div style="width: 85%;background-color: #f7e6bd; color: #222222; text-align: center; border-top: 1px solid #DDDDFF; border-left: 1px solid #DDDDFF; border-right: 1px solid #DDDDFF; border-bottom: 1px solid #DDDDFF; font-weight: bold; padding: 10px;"><{$lang_siteclosemsg}>\r\n</div>\r\n<br />\r\n  <br />\r\n  <br />\r\n    <div style="width: 270px;border:1px solid #DDDDFF">\r\n <div style="background-color: #f3ac03;font-weight: bold;font-size: 1.2em; color: white;height: 24px"><{$lang_login}></div>\r\n    <br />\r\n   <form action="<{$xoops_url}>/user.php" method="post">\r\n   <{$lang_username}><input type="text" name="uname" size="21" maxlength="25" value="" /><br />\r\n    <div>\r\n    <{$lang_password}><input type="password" name="pass" size="21" maxlength="32" /><br />\r\n        	<input type="hidden" name="xoops_redirect" value="<{$xoops_requesturi}>" />\r\n        	<input type="hidden" name="xoops_login" value="1" />\r\n        <br />\r\n        	<input type="submit" value="<{$lang_login}>" />\r\n</div> \r\n </form>\r\n<br />\r\n</div>\r\n</center>\r\n</div><!-- Start footer -->\r\n<br class="clear" />\r\n<div id="xo-footer-close">\r\n</div>\r\n<!-- end Footer -->\r\n</div>\r\n  </body>\r\n</html>'),
(9, '<!DOCTYPE html PUBLIC ''-//W3C//DTD XHTML 1.0 Transitional//EN'' ''http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd''>\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<{$xoops_langcode}>" lang="<{$xoops_langcode}>">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=<{$xoops_charset}>" />\r\n<meta http-equiv="Refresh" content="<{$time}>; url=<{$url}>" />\r\n<title><{$xoops_sitename}></title>\r\n<link rel="stylesheet" type="text/css" media="all" href="<{$icms_themecss}>" />\r\n</head>\r\n<body>\r\n<div style="text-align:center; background-color: #EBEBEB; border-top: 1px solid #FFFFFF; border-left: 1px solid #FFFFFF; border-right: 1px solid #AAAAAA; border-bottom: 1px solid #AAAAAA; font-weight: bold;">\r\n  <h4><{$message}></h4>\r\n  <p><{$lang_ifnotreload}></p>\r\n</div>\r\n<div id="icms-footer">\r\n		<{$xoops_footer}>\r\n</div>\r\n<{if $xoops_logdump != ''''}><div><{$xoops_logdump}></div><{/if}>\r\n</body>\r\n</html>\r\n'),
(10, '<{$dummy_content}>'),
(11, '<h4><{$lang_activenotifications}></h4>\r\n\r\n<p><a href="<{$icms_url}>/userinfo.php?uid=<{$user.uid}>" title="<{$user.name}>"><{$smarty.const._PROFILE}></a>&nbsp;<span style="font-weight:bold;">&raquo;&raquo;</span>&nbsp;<{$smarty.const._MB_SYSTEM_NOTIF}> </p>\r\n<form id="notificationlist" action="notifications.php" method="post">\r\n<table class="outer">\r\n  <tr>\r\n	<th><input name="allbox" id="allbox" onclick="xoopsCheckAll(''notificationlist'', ''allbox'');" type="checkbox" value="<{$lang_checkall}>" /></th>\r\n    <th><{$lang_event}></th>\r\n    <th><{$lang_category}></th>\r\n    <th><{$lang_itemid}></th>\r\n    <th><{$lang_itemname}></th>\r\n  </tr>\r\n  <{foreach item=module from=$modules}>\r\n  <tr>\r\n    <td class="head"><input name="del_mod[<{$module.id}>]" id="del_mod[]" onclick="xoopsCheckGroup(''notificationlist'', ''del_mod[<{$module.id}>]'', ''del_not[<{$module.id}>][]'');" type="checkbox" value="<{$module.id}>" /></td>\r\n    <td class="head" colspan="4"><{$lang_module}>: <{$module.name}></td>\r\n  </tr>\r\n  <{foreach item=category from=$module.categories}>\r\n  <{foreach item=item from=$category.items}>\r\n  <{foreach item=notification from=$item.notifications}>\r\n  <tr>\r\n    <{cycle values=odd,even assign=class}>\r\n    <td class="<{$class}>"><input type="checkbox" name="del_not[<{$module.id}>][]" id="del_not[<{$module.id}>][]" value="<{$notification.id}>" /></td>\r\n    <td class="<{$class}>"><{$notification.event_title}></td>\r\n    <td class="<{$class}>"><{$notification.category_title}></td>\r\n    <td class="<{$class}>"><{if $item.id != 0}><{$item.id}><{/if}></td>\r\n    <td class="<{$class}>"><{if $item.id != 0}><{if $item.url != ''''}><a href="<{$item.url}>" title="<{$item.name}>"><{/if}><{$item.name}><{if $item.url != ''''}></a><{/if}><{/if}></td>\r\n  </tr>\r\n  <{/foreach}>\r\n  <{/foreach}>\r\n  <{/foreach}>\r\n  <{/foreach}>\r\n  <tr>\r\n    <td class="foot" colspan="5">\r\n      <input type="submit" name="delete_cancel" value="<{$lang_cancel}>" />\r\n      <input type="reset" name="delete_reset" value="<{$lang_clear}>" />\r\n      <input type="submit" name="delete" value="<{$lang_delete}>" />\r\n      <input type="hidden" name="XOOPS_TOKEN_REQUEST" value="<{$notification_token}>" />\r\n    </td>\r\n  </tr>\r\n</table>\r\n</form>\r\n'),
(12, '<{if $xoops_notification.show}>\r\n<form action="<{$xoops_notification.target_page}>" method="post">\r\n<div>\r\n<h4 style="text-align:center;"><{$lang_activenotifications}></h4>\r\n<input type="hidden" name="not_redirect" value="<{$xoops_notification.redirect_script}>" />\r\n<input type="hidden" name="XOOPS_TOKEN_REQUEST" value="<{php}>echo icms::$security->createToken();<{/php}>" />\r\n<table class="outer">\r\n  <tr><th colspan="3"><{$lang_notificationoptions}></th></tr>\r\n  <tr>\r\n    <td class="head"><{$lang_category}></td>\r\n    <td class="head"><input name="allbox" id="allbox" onclick="xoopsCheckAll(''notification_select'',''allbox'');" type="checkbox" value="<{$lang_checkall}>" /></td>\r\n    <td class="head"><{$lang_events}></td>\r\n  </tr>\r\n  <{foreach name=outer item=category from=$xoops_notification.categories}>\r\n  <{foreach name=inner item=event from=$category.events}>\r\n  <tr>\r\n    <{if $smarty.foreach.inner.first}>\r\n    <td class="even" rowspan="<{$smarty.foreach.inner.total}>"><{$category.title}></td>\r\n    <{/if}>\r\n    <td class="odd">\r\n    <{counter assign=index}>\r\n    <input type="hidden" name="not_list[<{$index}>][params]" value="<{$category.name}>,<{$category.itemid}>,<{$event.name}>" />\r\n    <input type="checkbox" id="not_list[]" name="not_list[<{$index}>][status]" value="1" <{if $event.subscribed}>checked="checked"<{/if}> />\r\n    </td>\r\n    <td class="odd"><{$event.caption}></td>\r\n  </tr>\r\n  <{/foreach}>\r\n  <{/foreach}>\r\n  <tr>\r\n    <td class="foot" colspan="3" align="center"><input type="submit" name="not_submit" value="<{$lang_updatenow}>" /></td>\r\n  </tr>\r\n</table>\r\n<div style="text-align: center;">\r\n<{$lang_notificationmethodis}>:&nbsp;<{$user_method}>&nbsp;&nbsp;[<a href="<{$editprofile_url}>" title="<{$lang_change}>"><{$lang_change}></a>]\r\n</div>\r\n</div>\r\n</form>\r\n<{/if}>'),
(13, '<{$block.content}>'),
(14, '<{if $priv_poltype == ''page''}>\r\n\r\n	<div class="privacy_policy">\r\n		<div style="text-align: center;"><h1><{$xoops_sitename}>: <{$lang_privacy_policy}></h1></div>\r\n		<div><{$priv_policy}></div>\r\n	</div>\r\n<{/if}>\r\n'),
(15, '<div id="notfound">\r\n	<h1><{$lang_error_title}></h1>\r\n	<{if $lang_error_desc && $lang_error_desc != ''''}>\r\n		<div id="http_error_text"><{$lang_error_desc}></div>\r\n	<{/if}>\r\n	<br />\r\n	<ul>\r\n		<li><{$lang_search_our_site}><br />\r\n			<form id="http_error_searchform" style="vertical-align: middle;" action="<{$xoops_url}>/search.php" method="get">\r\n				<input name="query" size="14" style="vertical-align: middle;" type="text" />\r\n				<input name="action" value="results" type="hidden" />\r\n				<input src="<{$xoops_url}>/images/search2.gif" style="vertical-align: middle;" alt="<{$lang_search}>" onclick="this.form.submit()" type="image" />\r\n				&nbsp;&nbsp;<a href="<{$xoops_url}>/search.php"><{$lang_advanced_search}></a>\r\n			</form>\r\n		</li>\r\n		<li><{$lang_start_again}></li>\r\n		<li><{$lang_found_contact}></li>\r\n	</ul>\r\n</div>'),
(16, '<h1><{$smarty.const._US_OPENID_YOUR}>: <{$displayId}></h1>\r\n\r\n<div>\r\n<div>\r\n<fieldset style="padding: 10px;">\r\n  <legend style="font-weight: bold;"><{$smarty.const._US_OPENID_EXISTING_USER}></legend>\r\n  <{$smarty.const._US_OPENID_EXISTING_USER_LOGIN_BELOW}><br />\r\n  <br />\r\n  <form action="finish_auth.php" method="post">\r\n    <{$smarty.const._US_NICKNAME}>: <input type="text" name="uname" size="21" maxlength="" value="<{$usercookie}>" /><br />\r\n    <br />\r\n    <{$smarty.const._US_PASSWORD}>: <input type="password" name="pass" size="21" maxlength="32" /><br />\r\n    <input type="hidden" name="op" value="login" />\r\n    <br />\r\n	<input type="hidden" name="openid_link" value="1" />    \r\n    <input type="submit" value="<{$smarty.const._LOGIN}>" />\r\n  </form>\r\n</div>\r\n<div>\r\n</fieldset>\r\n<fieldset style="padding: 10px;">\r\n  <legend style="font-weight: bold;"><{$smarty.const._US_OPENID_NOM_MEMBER}></legend>\r\n  <div>\r\n	<{$smarty.const._US_OPENID_NON_MEMBER_DSC}></div>\r\n	<br />\r\n  <form action="finish_auth.php" method="post">\r\n  \r\n    <{$smarty.const._US_NICKNAME}>: <input type="text" name="uname" size="26" maxlength="60" value="<{$uname}>"/><br />\r\n    <br />\r\n    <{$smarty.const._US_EMAIL}>: <input type="text" name="email" size="26" maxlength="255" value="<{$email}>"/>\r\n    <br />\r\n    <br />\r\n     <input type="hidden" name="openid_register" value="1" />\r\n     <input type="submit" value="<{$smarty.const._SUBMIT}>" />\r\n  </form>\r\n</fieldset>\r\n\r\n</div>\r\n\r\n</div>\r\n<div style="clear: both;"></div>\r\n'),
(17, '<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/positions/images/positions_big.png)"><{$lang_badmin}></div><br />\n<{if $icms_blockposition_title}>\n	<h1><{$icms_blockposition_title}></h1>\n<{/if}>\n<{if $icms_blockposition_info}>\n	<p><{$icms_blockposition_info}></p>\n<{/if}>\n\n<{if $icms_blockposition_table}>\n	<{$icms_blockposition_table}>\n<{/if}>\n\n<{if $addblockposition}>\n	<{includeq file=''db:system_common_form.html'' form=$addblockposition}>\n<{/if}>'),
(18, '<{if $icms_page_title}>\r\n	<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/pages/images/pages_big.png)"><{$icms_page_title}></div><br />\r\n<{/if}>\r\n<{if $icms_page_info}>\r\n	<p><{$icms_page_info}></p>\r\n<{/if}>\r\n\r\n<{if $icms_page_table}>\r\n	<{$icms_page_table}>\r\n<{/if}>\r\n\r\n<{if $addpage}>\r\n	<{includeq file=''db:system_common_form.html'' form=$addpage}>\r\n<{/if}>'),
(19, '<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/blocks/images/blocks_big.png)"><{$smarty.const._AM_BADMIN}></div><br />\r\n<{if $icms_block_title}>\r\n	<h1><{$icms_block_title}></h1>\r\n<{/if}>\r\n<{if $icms_block_info}>\r\n	<p><{$icms_block_info}></p>\r\n<{/if}>\r\n\r\n<{if $icms_block_table}>\r\n	<{$icms_block_table}>\r\n<{/if}>\r\n\r\n<{if $addblock}>\r\n	<{includeq file=''db:system_common_form.html'' form=$addblock}>\r\n<{/if}>'),
(20, '<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/modules/images/modules_big.png)"><{$lang_madmin}></div><br />\r\n<h2><{$lang_installed}></h2>\r\n<form action=''admin.php'' method=''post'' name=''moduleadmin'' id=''moduleadmin''>\r\n<table width="100%" cellpadding="4" cellspacing="1" border="0" class="outer">\r\n  <tr align=''center'' valign=''middle''>\r\n    <th width="40%"><{$lang_module}></th>\r\n    <th><{$lang_version}></th>\r\n    <th><{$lang_modstatus}></th>\r\n    <th><{$lang_lastup}></th>\r\n    <th><{$lang_active}></th>\r\n    <th><{$lang_order}><br /><small><{$lang_order0}></small></th>\r\n    <th width=''130px''><{$lang_action}></th>\r\n  </tr>\r\n  <{foreach item=module from=$modules}>\r\n    <tr valign=''middle''class="<{cycle values="even,odd"}>">\r\n      <td align="<{$smarty.const._GLOBAL_LEFT}>" valign="middle">\r\n        <div id="modlogo" style="float: <{$smarty.const._GLOBAL_LEFT}>; padding: 2px;">\r\n          <{if $module.hasadmin == 1 && $module.isactive == ''1''}>\r\n            <a href="<{$xoops_url}>/modules/<{$module.dirname}>/<{$module.adminindex}>">\r\n              <img src="<{$xoops_url}>/modules/<{$module.dirname}>/<{$module.image}>" alt="<{$module.name}>" title="<{$module.name}>" border="0" />\r\n            </a>\r\n          <{else}>\r\n            <img src="<{$xoops_url}>/modules/<{$module.dirname}>/<{$module.image}>" alt="<{$module.name}>" title="<{$module.name}>" border="0" />\r\n          <{/if}>&nbsp;\r\n        </div>\r\n        <div id="modlogo" style="float: <{$smarty.const._GLOBAL_LEFT}>; padding-top: 2px;">\r\n          <b><{$lang_modulename}>: </b><{$module.name}><br />\r\n          <b><{$lang_moduletitle}>: </b><input type="text" name="newname[<{$module.mid}>]" value="<{$module.title}>" maxlength="150" size="30" />\r\n        </div>\r\n        <input type="hidden" name="oldname[<{$module.mid}>]" value="<{$module.title}>" />\r\n      </td>\r\n      <td align=''center'' valign="middle"><{$module.version}></td>\r\n      <td align=''center'' valign="middle"><{$module.status}></td>\r\n      <td align=''center'' valign="middle"><{$module.last_update}></td>\r\n      <td align=''center'' valign="middle">\r\n        <{if $module.dirname == ''system''}>\r\n          <input type="hidden" name="newstatus[<{$module.mid}>]" value="1" />\r\n          <input type="hidden" name="oldstatus[<{$module.mid}>]" value="1" />\r\n        <{else}>\r\n          <{if $module.isactive == ''1''}>\r\n            <input type="checkbox" name="newstatus[<{$module.mid}>]" value="1" checked="checked" />\r\n            <input type="hidden" name="oldstatus[<{$module.mid}>]" value="1" />\r\n          <{else}>\r\n            <input type="checkbox" name="newstatus[<{$module.mid}>]" value="1" />\r\n            <input type="hidden" name="oldstatus[<{$module.mid}>]" value="0" />\r\n          <{/if}>\r\n        <{/if}>\r\n      </td>\r\n      <td align=''center'' valign="middle">\r\n        <{if $module.hasmain == ''1''}>\r\n          <input type="hidden" name="oldweight[<{$module.mid}>]" value="<{$module.weight}>" />\r\n          <input type="text" name="weight[<{$module.mid}>]" size="3" maxlength="5" value="<{$module.weight}>" />\r\n        <{else}>\r\n          <input type="hidden" name="oldweight[<{$module.mid}>]" value="0" />\r\n          <input type="hidden" name="weight[<{$module.mid}>]" value="0" />\r\n        <{/if}>\r\n      </td>\r\n      <td align=''center'' valign="middle">\r\n        <{if $module.support_site_url != '''' &&  $module.isactive == ''1''}>\r\n          <a href="<{$module.support_site_url}>" rel="external"><img src="<{$xoops_url}>/modules/system/images/support.png" alt="<{$lang_support}>" title="<{$lang_support}>"/></a>\r\n        <{/if}>\r\n        <a href="<{$xoops_url}>/modules/system/admin.php?fct=modules&amp;op=update&amp;module=<{$module.dirname}>"><img src="<{$xoops_url}>/modules/system/images/update.png" alt="<{$lang_update}>" title="<{$lang_update}>"/></a>\r\n        <{if $module.isactive != ''1''}>\r\n          <a href="<{$xoops_url}>/modules/system/admin.php?fct=modules&amp;op=uninstall&amp;module=<{$module.dirname}>"><img src="<{$xoops_url}>/modules/system/images/uninstall.png" alt="<{$lang_unistall}>" title="<{$lang_unistall}>" /></a>\r\n        <{/if}>  \r\n        <a href=''javascript:openWithSelfMain("<{$xoops_url}>/modules/system/admin.php?fct=version&amp;mid=<{$module.mid}>","Info",300,230);''><img src="<{$xoops_url}>/modules/system/images/info.png" alt="<{$lang_info}>" title="<{$lang_info}>" /></a>\r\n        <input type="hidden" name="module[]" value="<{$module.mid}>" />\r\n      </td>\r\n    </tr>\r\n  <{/foreach}>\r\n  <tr class=''foot''>\r\n    <td colspan=''7'' align=''center''>\r\n      <input type=''hidden'' name=''fct'' value=''modules'' />\r\n      <input type=''hidden'' name=''op'' value=''confirm'' />\r\n      <input type=''submit'' name=''submit'' value=''<{$lang_submit}>'' />\r\n    </td>\r\n  </tr>\r\n</table>\r\n</form>\r\n<br />\r\n<h2><{$lang_noninstall}></h2>\r\n<table width=''100%'' border=''0'' class=''outer'' cellpadding=''4'' cellspacing=''1''>\r\n  <tr align=''center''>\r\n    <th><{$lang_module}></th>\r\n    <th><{$lang_version}></th>\r\n    <th><{$lang_modstatus}></th>\r\n    <th width=''130px''><{$lang_action}></th>\r\n  </tr>\r\n  <{foreach item=module from=$avmodules}>\r\n    <tr valign=''middle''class="<{cycle values="even,odd"}>">\r\n      <td>\r\n        <div id="modlogo" style="padding: 2px;"><img src="<{$xoops_url}>/modules/<{$module.dirname}>/<{$module.image}>" alt="<{$module.name}>" alt="<{$module.name}>" border="0" />&nbsp;</div>\r\n	    <div id="modlogo" style="padding-top: 10px;"> <b><{$lang_modulename}>: </b><{$module.name}><br /> </div>\r\n      </td>\r\n      <td align=''center''><{$module.version}></td>\r\n      <td align=''center''><{$module.status}></td>\r\n      <td width=''130px'' align=''center''>\r\n        <a href="<{$xoops_url}>/modules/system/admin.php?fct=modules&op=install&module=<{$module.dirname}>"><img src="<{$xoops_url}>/modules/system/images/install.png" alt="<{$lang_install}>" title="<{$lang_install}>" /></a>\r\n        <a href=''javascript:openWithSelfMain("<{$xoops_url}>/modules/system/admin.php?fct=version&mid=<{$module.dirname}>","Info",300,230);''><img src="<{$xoops_url}>/modules/system/images/info.png" alt="<{$lang_info}>" title="<{$lang_info}>" /></a>\r\n      </td>\r\n    </tr>\r\n  <{/foreach}>\r\n</table>'),
(21, '<{$form.javascript}>\r\n<form id="<{$form.name}>" action="<{$form.action}>" method="<{$form.method}>" <{$form.extra}>>\r\n  <table style="width: 100%" class="outer" cellspacing="1">\r\n    <{if $form.title}><tr><th colspan="2"><{$form.title}></th></tr><{/if}>\r\n    <!-- start of form elements loop -->\r\n    <{foreach item=element from=$form.elements}>\r\n      <{if $element.section == true}>\r\n      <tr><th colspan="2"><{$element.body}></th></tr>\r\n      <{elseif $element.section_close == true}>\r\n      <tr><td class="even" colspan="2">&nbsp;</td></tr>\r\n      <{elseif $element.hidden != true}>\r\n      <tr id="<{$element.name}>_row">\r\n        <td class="head">\r\n        <label for=''<{$element.name}>''><{$element.caption}> <{if $element.required}> <span style=''color:#f00''>*</span><{/if}>\r\n        <{if $element.description}>\r\n        	<img class="helptip" style="float:<{$smarty.const._GLOBAL_RIGHT}>;padding-top: 2px;" title="<{$smarty.const._MD_AM_HELP_TIP}>" alt="<{$smarty.const._MD_AM_HELP_TIP}>" src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/acp_help.png" alt="<{$smarty.const._MD_AM_HELP_TIP}>">\r\n        	<span class="helptext" style="display: none;"><{$element.description}></span>\r\n        <{/if}>\r\n        </label>\r\n        </td>\r\n        <td class="<{cycle values="even,odd"}>"><{$element.body}></td>\r\n      </tr>\r\n      <{else}>\r\n      <{$element.body}>\r\n      <{/if}>\r\n    <{/foreach}>\r\n    <!-- end of form elements loop -->\r\n  </table>\r\n</form>'),
(22, '<style type="text/css">\r\n	img {vertical-align: middle;}\r\n</style>\r\n<!--\r\n<style type="text/css">\r\n.bg3 a{color: #fff;}\r\n</style>\r\n//-->\r\n<div id="<{$icms_id}>">\r\n\r\n<{if $icms_table_header}>\r\n	<{$icms_table_header}>\r\n<{/if}>\r\n\r\n<div style="margin-bottom: 12px;">\r\n	<{if $icms_introButtons}>\r\n		<div style="float: <{$smarty.const._GLOBAL_LEFT}>;">\r\n			<form action =''''>\r\n				<{foreach from=$icms_introButtons item=introButton}>\r\n					<input type="button" name="<{$introButton.name}>" onclick="location=''<{$introButton.location}>''" value="<{$introButton.value}>" />\r\n				<{/foreach}>\r\n			</form>\r\n		</div>\r\n	<{/if}>\r\n\r\n<{if $icms_showFilterAndLimit || $icms_quicksearch}>\r\n<form id="pick" action="<{$icms_optionssel_action}>" method="post" style="margin: 0;">\r\n	<{if $icms_quicksearch}>\r\n		<div style="vertical-align: middle; float: <{$smarty.const._GLOBAL_RIGHT}>; border: 2px solid #C2CDD6; padding: 5px; background-color: #E6E6E6;">\r\n			<strong><{$icms_quicksearch}> :</strong> <input style="min-width: 10px; vertical-align: middle;" type="text" id="quicksearch_<{$icms_id}>" name="quicksearch_<{$icms_id}>" size="15" maxlength="255"/>\r\n			<input style="vertical-align: middle;" type="submit" name="button_quicksearch_<{$icms_id}>" value="<{$smarty.const._SEARCH}>" />\r\n		</div>\r\n	<{/if}>\r\n</div>\r\n\r\n<!-- Why this If Else... ?? Let''s comment it for now //-->\r\n<div style="clear:both; padding-top:10px;"></div>\r\n<!--\r\n<{if !$icms_user_side}>\r\n	<div style="clear:both; padding-top:10px;"></div>\r\n<{else}>\r\n	<div style="padding-top:45px;"> </div>\r\n<{/if}>\r\n//-->\r\n<!-- Why this If Else... ?? //-->\r\n\r\n\r\n<{if $icms_showFilterAndLimit}>\r\n<{if $icms_pagenav}>\r\n	<div style="text-align:<{$smarty.const._GLOBAL_RIGHT}>; padding-bottom: 3px;"><{$icms_pagenav}></div>\r\n<{/if}>\r\n\r\n	<table width="100%" cellspacing="1" cellpadding="2" border="0" style="border-left: 1px solid silver; border-top: 1px solid silver; border-right: 1px solid silver;">\r\n		<tr>\r\n			<td>\r\n				<{if $icms_optionssel_filtersArray}>\r\n					<span style="font-weight: bold; font-size: 12px;"><{$smarty.const._CO_ICMS_FILTER}> : </span>\r\n					<select name=''filtersel'' onchange=''submit()''>\r\n						<{foreach from=$icms_optionssel_filtersArray key=key item=field}>\r\n							<option value=''<{$key}>'' <{$field.selected}> > <{$field.caption}></option>\r\n						<{/foreach}>\r\n					</select>\r\n					<{if $icms_optionssel_filters2Array}>\r\n						<select name=''filtersel2'' onchange=''submit()''>\r\n							<{foreach from=$icms_optionssel_filters2Array key=key item=field}>\r\n								<option value=''<{$key}>'' <{$field.selected}> > <{$field.caption}></option>\r\n							<{/foreach}>\r\n						</select>\r\n					<{/if}>\r\n				<{/if}>\r\n			</td>\r\n			<td align=''<{$smarty.const._GLOBAL_RIGHT}>''>\r\n<!--				<span style="font-weight: bold; font-size: 12px;"><{$smarty.const._CO_ICMS_SORT_BY}> : </span>\r\n				<select name=''sortsel'' onchange=''submit()''>\r\n					<{foreach from=$icms_optionssel_fieldsForSorting key=key item=field}>\r\n						<option value=''<{$key}>'' <{$field.selected}> > <{$field.caption}></option>\r\n					<{/foreach}>\r\n				</select>\r\n				<select name=''ordersel'' onchange=''submit()''>\r\n					<{foreach from=$icms_optionssel_ordersArray key=key item=field}>\r\n						<option value=''<{$key}>'' <{$field.selected}> > <{$field.caption}></option>\r\n					<{/foreach}>\r\n				</select>\r\n//-->\r\n				<{if !$icms_isTree}>\r\n					<{$smarty.const._CO_ICMS_SHOW_ONLY}> <select name=''limitsel'' onchange=''submit()''>\r\n						<{foreach from=$icms_optionssel_limitsArray key=key item=field}>\r\n							<option value= ''<{$key}>'' <{$field.selected}> > <{$field.caption}></option>\r\n						<{/foreach}>\r\n					</select>\r\n				<{/if}>\r\n			</td>\r\n		</tr>\r\n	</table>\r\n\r\n<{/if}>\r\n</form>\r\n<{/if}>\r\n\r\n<{if $icms_actionButtons || $icms_withSelectedActions}>\r\n	<form id="form_<{$icms_id}>" method="post">\r\n<{/if}>\r\n<table width=''100%'' cellspacing=''1'' cellpadding=''3'' border=''0'' class=''outer''>\r\n	<tr>\r\n	 <{foreach from=$icms_columns item=column}>\r\n	 	<th width="<{$column.width}>" align=''<{$column.align}>''><strong><{$column.caption}></strong></th>\r\n	 <{/foreach}>\r\n	 <{if $icms_has_actions}>\r\n	 	<th width=''<{$icms_actions_column_width}>'' align=''center''>\r\n	 		<{if $icms_show_action_column_title}>\r\n	 			<strong><{$smarty.const._CO_ICMS_ACTIONS}></strong>\r\n	 		<{/if}>\r\n	 	</th>\r\n	 <{/if}>\r\n	</tr>\r\n\r\n	<{if $icms_persistable_objects}>\r\n		<{foreach from=$icms_persistable_objects item=icms_object}>\r\n			<{if $icms_actionButtons}>\r\n				<input type=''hidden'' name=''<{$icms_id}>_objects[]'' id=''listed_objects'' value=''<{$icms_object.id}>'' />\r\n			<{/if}>\r\n			<tr>\r\n				<{foreach from=$icms_object.columns item=column}>\r\n					<td class="<{$column.keyname}> <{$icms_object.class}>" width="<{$column.width}>" align="<{$column.align}>"><{$column.value}></td>\r\n				<{/foreach}>\r\n				<{if $icms_object.actions}>\r\n					<td class="<{$icms_object.class}>" align=''center''>\r\n						<{foreach from=$icms_object.actions item=action}>\r\n							<{$action}>\r\n						<{/foreach}>\r\n					</td>\r\n				<{/if}>\r\n			</tr>\r\n		<{/foreach}>\r\n	<{else}>\r\n		<tr>\r\n			<td class=''head'' style=''text-align: center; font-weight: bold;'' colspan="<{$icms_colspan}>"><{$smarty.const._CO_ICMS_NO_OBJECT}></td>\r\n		</tr>\r\n	<{/if}>\r\n</table>\r\n<{if  $icms_actionButtons || $icms_withSelectedActions}>\r\n	<input type=''hidden'' name=''op'' id=''op'' value='''' />\r\n	<{if $icms_withSelectedActions}>\r\n		<div style="padding: 5px;text-align: <{$smarty.const._GLOBAL_LEFT}>; border-left: 1px solid silver; border-bottom: 1px solid silver; border-right: 1px solid silver;">\r\n		<{$smarty.const._CO_ICMS_WITH_SELECTED}>\r\n		<select name=''selected_action''>\r\n			<option value = ''''>---</option>\r\n			<{foreach from=$icms_withSelectedActions key=key item=action}>\r\n				<option value = ''<{$key}>''><{$action}></option>\r\n			<{/foreach}>\r\n		</select>\r\n		<input type="submit" name="<{$actionButton.op}>" onclick="this.form.elements.op.value=''with_selected_actions''" value="<{$smarty.const._CO_ICMS_SUBMIT}>" />\r\n		</div>\r\n	<{/if}>\r\n	<{if $icms_actionButtons}>\r\n		<div style="padding: 5px;text-align: <{$smarty.const._GLOBAL_RIGHT}>; border-left: 1px solid silver; border-bottom: 1px solid silver; border-right: 1px solid silver;">\r\n			<{foreach from=$icms_actionButtons item=actionButton}>\r\n				<input type="submit" name="<{$actionButton.op}>" onclick="this.form.elements.op.value=''<{$actionButton.op}>''" value="<{$actionButton.text}>" />\r\n			<{/foreach}>\r\n		</div>\r\n	<{/if}>\r\n</form>\r\n<{/if}>\r\n<{if $icms_pagenav}>\r\n	<div style="text-align:<{$smarty.const._GLOBAL_RIGHT}>; padding-top: 3px;"><{$icms_pagenav}></div>\r\n<{/if}>\r\n\r\n<{if $icms_introButtons}>\r\n	<div style="padding-top:15px; padding-bottom: 5px;">\r\n		<form action=''''>\r\n			<{foreach from=$icms_introButtons item=introButton}>\r\n				<input type="button" name="<{$introButton.name}>" onclick="location=''<{$introButton.location}>''" value="<{$introButton.value}>" />\r\n			<{/foreach}>\r\n		</form>\r\n	</div>\r\n<{/if}>\r\n\r\n<{if $icms_table_footer}>\r\n	<{$icms_table_footer}>\r\n<{/if}>\r\n\r\n</div>\r\n\r\n<br />\r\n\r\n<{if $icms_printer_friendly_page}>\r\n	<a href="javascript:openWithSelfMain(''<{$icms_printer_friendly_page}>'', ''smartpopup'', 700, 519);"><img  src="<{$xoops_url}>/modules/icms/images/actions/fileprint.png" alt="" /></a>\r\n<{/if}>\r\n\r\n\r\n\r\n<!--\r\n<script language="javascript">\r\nfunction Clickheretoprint()\r\n{\r\n  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,";\r\n      disp_setting+="scrollbars=yes,width=650, height=600, <{$smarty.const._GLOBAL_LEFT}>=100, top=25";\r\n  var content_value = document.getElementById("<{$icms_id}>").innerHTML;\r\n\r\n  var docprint=window.open("","",disp_setting);\r\n   docprint.document.open();\r\n   docprint.document.write(''<html><head><title>Inel Power System</title>'');\r\n   docprint.document.write(''<link rel="stylesheet" media="print" href="<{$xoops_url}>/modules/icms/print.css" type="text/css">'');\r\n   docprint.document.write(''<link rel="stylesheet" media="all" href="<{$xoops_url}>/modules/system/style.css" type="text/css">'');\r\n   docprint.document.write(''</head><body onLoad="self.print()">'');\r\n   docprint.document.write(''<h2>Title</h2>'');\r\n   docprint.document.write(''<h3>SubTitle</h3>'');\r\n   docprint.document.write(content_value);\r\n   docprint.document.write(''<div style="text-align: center;"><a href="javascript:window.close();">Close this window</a></div>'');\r\n   docprint.document.write(''</body></html>'');\r\n   docprint.document.close();\r\n   docprint.focus();\r\n}\r\n</script>\r\n<br />\r\n<a href="javascript:Clickheretoprint();"><img  src="<{$xoops_url}>/modules/icms/images/actions/fileprint.png" alt="" /></a>\r\n//-->'),
(23, '<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/customtag/images/customtag_big.png)"><{$smarty.const._CO_ICMS_CUSTOMTAGS}></div><br />\r\n\r\n<{if $icms_custom_tag_explain}>\r\n	<h1><{$smarty.const._CO_ICMS_CUSTOMTAGS_EXPLAIN_TITLE}></h1>\r\n	<p><{$smarty.const._CO_ICMS_CUSTOMTAGS_EXPLAIN}></p>\r\n<{/if}>\r\n\r\n<p><{$icms_custom_tag_title}></p>\r\n\r\n<{if $icms_customtag_table}>\r\n	<{$icms_customtag_table}>\r\n<{/if}>\r\n\r\n<{if $addcustomtag}>\r\n	<{includeq file=''db:system_common_form.html'' form=$addcustomtag}>\r\n<{/if}>'),
(24, '<{$form.javascript}>\r\n<form name="<{$form.name}>" action="<{$form.action}>" method="<{$form.method}>" <{$form.extra}>>\r\n  <table style="width: 100%" class="outer" cellspacing="1">\r\n    <tr>\r\n    <th colspan="2"><{$form.title}></th>\r\n    </tr>\r\n    <!-- start of form elements loop -->\r\n    <{foreach item=element from=$form.elements}>\r\n      <{if $element.hidden != true}>\r\n      <tr id="<{$element.name}>_row">\r\n        <td class="head"><{$element.caption}>\r\n        <{if $element.description}>\r\n        	<div style="font-weight: normal"><{$element.description}></div>\r\n        <{/if}>\r\n        </td>\r\n        <td class="<{cycle values="even,odd"}>"><{$element.body}></td>\r\n      </tr>\r\n      <{else}>\r\n      <{$element.body}>\r\n      <{/if}>\r\n    <{/foreach}>\r\n    <!-- end of form elements loop -->\r\n  </table>\r\n</form>');
INSERT INTO `ib1941eb7_tplsource` (`tpl_id`, `tpl_source`) VALUES
(25, '<script type="text/javascript" src="<{$xoops_url}>/modules/system/admin/images/js/imanager.js"></script>\r\n<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/images/images/images_big.png)"><{$lang_imanager_title}></div><br />\r\n<p style="margin-top:0;"><{$admnav}></p>\r\n<{if $catcount > 0}>\r\n<form action="admin.php" method="post">\r\n  <table width="100%" celpadding="0" cellspacing="1" class="outer">\r\n    <tr>\r\n      <th align="center" width="3%"><{$lang_imanager_catid}></th>\r\n      <th align="center" width="20%"><{$lang_imanager_catname}></th>\r\n      <th align="center" width="10%"><{$lang_imanager_catmsize}></th>\r\n      <th align="center" width="10%"><{$lang_imanager_catmwidth}></th>\r\n      <th align="center" width="10%"><{$lang_imanager_catmheight}></th>\r\n      <th align="center" width="8%"><{$lang_imanager_catstype}></th>\r\n      <th align="center" width="7%"><{$lang_imanager_catdisp}></th>\r\n      <th align="center" width="5%"><{$lang_imanager_catweight}></th>\r\n      <th align="center" width="5%"><{$lang_imanager_catsubs}></th>\r\n      <th align="center" width="10%"><{$lang_imanager_catqtde}></th>\r\n      <th align="center" width="10%"><{$lang_imanager_catoptions}></th>\r\n    </tr>\r\n    <{section name=i loop=$imagecategorys}>\r\n      <tr class="<{cycle values="odd,even"}><{if !$nwrite[i]}> blocked<{/if}>" align="center">\r\n        <td><{$imagecategorys[i]->getVar(''imgcat_id'')}></td>\r\n        <td align="left"><{$imagecategorys[i]->getVar(''imgcat_name'')}></td>\r\n        <td><{$msize[i]}></td>\r\n        <td><{$imagecategorys[i]->getVar(''imgcat_maxwidth'')}>px</td>\r\n        <td><{$imagecategorys[i]->getVar(''imgcat_maxheight'')}>px</td>\r\n        <td><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/<{$imagecategorys[i]->getVar(''imgcat_storetype'')}>.png" title="<{$imagecategorys[i]->getVar(''imgcat_storetype'')}>" /></td>\r\n        <td><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/<{$imagecategorys[i]->getVar(''imgcat_display'')}>.png" /></td>\r\n        <td><input style="text-align:center;" type="text" name="imgcat_weight[<{$imagecategorys[i]->getVar(''imgcat_id'')}>]" value="<{$imagecategorys[i]->getVar(''imgcat_weight'')}>" size="3" maxlength="4" /></td>\r\n        <td>\r\n          <{if $subs[i] > 0}>\r\n            <{$subs[i]}> <a href="admin.php?fct=images&imgcat_id=<{$imagecategorys[i]->getVar(''imgcat_id'')}>" title="<{$smarty.const._MD_IMAGE_VIEWSUBS}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/filefind.png" align="absmiddle" alt="<{$smarty.const._MD_IMAGE_VIEWSUBS}>" /></a>\r\n          <{else}>\r\n            <{$subs[i]}>\r\n          <{/if}>\r\n        </td>\r\n        <td><{$count[i]}><{if $scount[i] > 0}> (+<{$scount[i]}>)<{/if}></td>\r\n        <td>\r\n          <{if $count[i] > 0}>\r\n            <a href="admin.php?fct=images&amp;op=listimg&amp;imgcat_id=<{$imagecategorys[i]->getVar(''imgcat_id'')}>" title="<{$lang_imanager_cat_listimg}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/viewmag.png" alt="<{$lang_imanager_cat_listimg}>" /></a>\r\n          <{else}>\r\n            <img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/encrypted.png" alt="" />\r\n          <{/if}>\r\n          <a href="admin.php?fct=images&amp;op=editcat&amp;imgcat_id=<{$imagecategorys[i]->getVar(''imgcat_id'')}>" title="<{$lang_imanager_cat_edit}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/edit.png" alt="<{$lang_imanager_cat_edit}>" /></a>\r\n          <{if ($imagecategorys[i]->getVar(''imgcat_type'') == ''C'')}>\r\n            <a href="admin.php?fct=images&amp;op=delcat&amp;imgcat_id=<{$imagecategorys[i]->getVar(''imgcat_id'')}>" title="<{$smarty.const._DELETE}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/editdelete.png" alt="<{$smarty.const._DELETE}>" /></a>\r\n          <{else}>\r\n            <img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/encrypted.png" alt="" />\r\n          <{/if}>\r\n        </td>\r\n      </tr>\r\n      <tr id="line<{$imagecategorys[i]->getVar(''imgcat_id'')}>" style="display:none;">\r\n        <td class="head" width="2%"></td>\r\n        <td colspan="11" style="padding:0; margin:0;">\r\n          <div id="cat<{$imagecategorys[i]->getVar(''imgcat_id'')}>"></div>\r\n        </td>  \r\n      </tr>\r\n    <{/section}>\r\n    <tr>\r\n      <td class="head" colspan="12" align="right">\r\n        <input type="submit" name="submit" value="<{$lang_imanager_cat_submit}>" />\r\n        <{if $isAdmin}>\r\n          <input type="button" onclick="jQuery(''div#addcatform'').slideToggle();"  value="<{$lang_imanager_cat_addnewcat}>" />\r\n        <{/if}>\r\n        <{if $writecatcount > 0}>\r\n          <input type="button" onclick="jQuery(''div#addimgform'').slideToggle();" value="<{$lang_imanager_cat_addnewimg}>" />\r\n        <{/if}>\r\n      </td>\r\n    </tr>\r\n  </table>\r\n  <input type="hidden" name="op" value="reordercateg" />\r\n  <input type="hidden" name="fct" value="images" />\r\n  <{$token}>\r\n</form>\r\n<{/if}>\r\n<{if $hasnwrite}>\r\n<div id="legend">\r\n  <div class="warningMsg"><span><{$lang_imanager_folder_not_writable}>: <{$hasnwrite}></span></div>\r\n</div>\r\n<{/if}>\r\n<div id="addimgform" class="opt_divs" style="display:none; margin:5px; padding:5px;"><{$addimgform}></div>\r\n<a name="addimgform"></a>\r\n<div id="addcatform" class="opt_divs" style="<{if $catcount > 0}>display:none;<{else}>display:block;<{/if}> margin:5px; padding:5px;"><{$addcatform}></div>\r\n<a name="addcatform"></a>'),
(26, '<script type="text/javascript" src="<{$xoops_url}>/modules/system/admin/images/js/imanager.js"></script>\n<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/images/images/images_big.png)"><{$lang_imanager_title}></div><br />\n<p style="margin-top:0;"><{$admnav}></p>\n<table width="100%" celpadding="0" cellspacing="1" class="outer">\n  <tr>\n    <th align="center"><{$lang_imanager_catmsize}></th>\n    <th align="center"><{$lang_imanager_catmwidth}></th>\n    <th align="center"><{$lang_imanager_catmheight}></th>\n    <th align="center"><{$lang_imanager_catstype}></th>\n    <th align="center"><{$lang_imanager_catdisp}></th>\n    <th align="center" width="5%"><{$lang_imanager_catsubs}></th>\n    <th align="center"><{$lang_imanager_catqtde}></th>\n    <th align="center"><{$lang_imanager_catoptions}></th>\n  </tr>\n  <tr class="odd">\n    <td align="center"><{$cat_maxsize}></td>\n    <td align="center"><{$cat_maxwidth}>px</td>\n    <td align="center"><{$cat_maxheight}>px</td>\n    <td align="center"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/<{$cat_storetype}>.png" title="<{$cat_storetype}>" alt="<{$cat_storetype}>" /></td>\n    <td align="center"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/<{$cat_display}>.png" title="<{$cat_display}>" alt="<{$cat_display}>" /></td>\n    <td align="center">\n    <{if $cat_subs > 0}>\n      <{$cat_subs}> <a href="admin.php?fct=images&imgcat_id=<{$cat_id}>" title="<{$smarty.const._MD_IMAGE_VIEWSUBS}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/filefind.png" align="absmiddle" alt="<{$smarty.const._MD_IMAGE_VIEWSUBS}>" /></a>\n    <{else}>\n      <{$cat_subs}>\n    <{/if}>\n    </td>\n    <td align="center"><{$imgcount}><{if $simgcount > 0}> (+<{$simgcount}>)<{/if}></td>\n    <td align="center">\n      <a href="#" onclick="jQuery(''div#addimgform'').slideToggle();" title="<{$lang_imanager_cat_addimg}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/filenew2.png" alt="<{$lang_imanager_cat_addimg}>" /></a>\n      <a href="admin.php?fct=images&amp;op=editcat&amp;imgcat_id=<{$cat_id}>" title="<{$lang_imanager_cat_edit}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/edit.png" alt="<{$lang_imanager_cat_edit}>" /></a>\n      <a href="admin.php?fct=images&amp;op=delcat&amp;imgcat_id=<{$cat_id}>" title="<{$smarty.const._DELETE}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/editdelete.png" alt="<{$smarty.const._DELETE}>" /></a>\n    </td>\n  </tr>\n</table>\n<div style="border: 2px solid #C2CDD6; padding: 5px; vertical-align: middle; background-color: #E6E6E6; width:45%; float:right; margin-top:5px;" align="right">\n  <form action="admin.php?fct=images&op=listimg&imgcat_id=<{$cat_id}>" method="POST">\n    <b><{$lang_search_title}>:</b> \n    <input type="text" name="query" id="query" size="20" value="<{$query}>" style="min-width:300px;" />\n    <input type="submit" name="btn" value="<{$lang_search}>" />\n    <input type="submit" name="btn1" value="<{$lang_cancel}>" onclick="document.getElementById(''query'').value='''';" />\n  </form>\n</div>\n<br style="clear:right;" />\n<{foreach from=$images item=image key=key}>\n  <{include file="db:admin/images/system_adm_imagemanager_img.html" image=$image i=$key}>\n<{/foreach}>\n<br style="clear:both;" />\n<{foreach from=$images item=image key=key}>\n  <{include file="db:admin/images/system_adm_imagemanager_editimg.html" image=$image i=$key}>\n  <{include file="db:admin/images/system_adm_imagemanager_cloneimg.html" image=$image i=$key}>\n<{/foreach}>\n<div id="addimgform" class="opt_divs" style="display:none; padding:5px; margin:5px;"><{$addimgform}></div>\n<a name="addimgform"></a>\n<{$pag}>'),
(27, '<div id="img<{$i}>" class="imanager_image_box">\r\n  <span class="imanager_image_img"><img src="<{$image.src}>" title="<{$image.nicename}>" /></span>\r\n  <span class="imanager_image_label"><{$image.display_nicename}></span>\r\n  <span class="imanager_image_info">\r\n    <b><{$smarty.const.IMANAGER_FILE}>:</b> <{$image.name}><br />\r\n    <b><{$smarty.const.IMANAGER_SIZE}>:</b> <{$image.size}><br />\r\n    <b><{$smarty.const.IMANAGER_WIDTH}>:</b> <{$image.width}>px<br />\r\n    <b><{$smarty.const.IMANAGER_HEIGHT}>:</b> <{$image.height}>px\r\n  </span>\r\n  <span class="imanager_image_btns">\r\n    <{$image.preview_link}>\r\n    <a href="#" onclick="showDiv(''edit_image'',<{$i}>); document.anchors.item(''edit_image<{$i}>'').scrollIntoView(); return false;" title="<{$lang_imanager_cat_edit}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/edit.png" alt="<{$lang_imanager_cat_edit}>" /></a>\r\n    <a href="#" onclick="showDiv(''clone_image'',<{$i}>); document.anchors.item(''clone_image<{$i}>'').scrollIntoView(); return false;" title="<{$lang_imanager_cat_clone}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/editcopy.png" alt="<{$lang_imanager_cat_clone}>" /></a>\r\n    <{if $image.hasextra_link}>\r\n      <a href="#" onclick="<{$image.editor_link}>" title="<{$lang_imanager_img_editor}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/edit_picture.png" alt="<{$lang_imanager_img_editor}>" /></a>\r\n    <{/if}>\r\n    <a href="admin.php?fct=images&amp;op=delfile&amp;image_id=<{$i}>&imgcat_id=<{$image.categ_id}>" title="<{$smarty.const._DELETE}>"><img src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/editdelete.png" alt="<{$smarty.const._DELETE}>" /></a>\r\n  </span>\r\n</div>'),
(28, '<div id="edit_image<{$i}>" class="opt_divs" style="display:none; padding:5px; margin:5px;">\r\n  <form action="admin.php" method="post">\r\n    <table width="100%" cellspacing="1" class="outer">\r\n      <tr><th colspan="2"><{$lang_imanager_cat_edit}></th></tr>\r\n	  <tr>\r\n	    <td class="head"><{$lang_image_name}></td>\r\n	    <td class="even"><input type="text" name="image_nicename[]" id="name<{$i}>" value="<{$image.nicename}>" size="20" maxlength="255" /></td>\r\n	  </tr>\r\n	  <tr>\r\n	    <td class="head"><{$lang_image_mimetype}></td>\r\n	    <td class="odd"><{$image.mimetype}></td>\r\n	  </tr>\r\n	  <tr>\r\n	    <td class="head"><{$lang_image_cat}></td>\r\n	    <td class="even"><select name="imgcat_id[]" size="1"><{$image.ed_selcat_options}></select></td>\r\n	  </tr>\r\n	  <tr>\r\n	    <td class="head"><{$lang_image_weight}></td>\r\n	    <td class="odd"><input type="text" name="image_weight[]" value="<{$image.weight}>" size="3" maxlength="4" /></td>\r\n	  </tr>\r\n	  <tr>\r\n	    <td class="head"><{$lang_image_disp}></td>\r\n	    <td class="even"><input type="checkbox" name="image_display[]" value="1"<{if $image.display == 1}> checked="checked"<{/if}> /></td>\r\n	  </tr>\r\n	  <tr>\r\n	    <td class="head" colspan="2" align="center">\r\n	     <input type="submit" name="submit" value="<{$lang_submit}>" /> \r\n	     <input type="button" name="btn" value="<{$lang_cancel}>" onclick="document.getElementById(''edit_image<{$i}>'').style.display=''none''; return false;" />\r\n	    </td>\r\n	  </tr>\r\n    </table>\r\n	<input type="hidden" name="image_id[]" value="<{$i}>" />\r\n	<input type="hidden" name="op" value="save" />\r\n	<input type="hidden" name="redir" value="<{$cat_id}>" />\r\n	<input type="hidden" name="fct" value="images" />\r\n	<{$image.ed_token}>\r\n  </form>\r\n</div>\r\n<a name="edit_image<{$i}>"></a>'),
(29, '<div id="clone_image<{$i}>" class="opt_divs" style="display:none; padding:5px; margin:5px;">\r\n  <form id="clone_form<{$i}>" action="admin.php" method="post">\r\n    <table width="100%" cellspacing="1" class="outer">\r\n      <tr><th colspan="2"><{$lang_imanager_cat_clone}></th></tr>\r\n      <tr>\r\n	    <td class="head"><{$lang_image_name}></td>\r\n	    <td class="odd"><input type="text" name="image_nicename" id="name<{$i}>" size=20 value="<{$lang_imanager_copyof}><{$image.nicename}>"></td>\r\n	  </tr>\r\n	  <tr>\r\n	    <td class="head"><{$lang_image_weight}></td>\r\n	    <td class="odd"><input type="text" name="image_weight" size="5" value="0"></td>\r\n	  </tr>\r\n	  <tr>\r\n	    <td class="head"><{$lang_image_disp}></td>\r\n	    <td class="odd">\r\n	      <{$lang_yes}> <input type="radio" name="image_display" value="1" checked /> \r\n	  	  <{$lang_no}> <input type="radio" name="image_display" value="0" />\r\n  	    </td>\r\n	  </tr>\r\n	  <tr>\r\n	    <td class="head" colspan="2" align="center">\r\n	      <input type="submit" name="submit" value="<{$lang_submit}>" /> \r\n	      <input type="button" name="btn" value="<{$lang_cancel}>" onclick="document.getElementById(''clone_image<{$i}>'').style.display = ''none''; return false;" />\r\n	    </td>\r\n      </tr>\r\n    </table>\r\n    <input type="hidden" name="image_id" value="<{$image.id}>" />\r\n    <input type="hidden" name="imgcat_id" value="<{$image.categ_id}>" />\r\n    <input type="hidden" name="op" value="cloneimg" />\r\n    <input type="hidden" name="fct" value="images" />\r\n    <{$image.clone_token}>\r\n  </form>\r\n</div>\r\n<a name="clone_image<{$i}>"></a>'),
(30, '<table class="outer" width="100%">\r\n	<{foreach item=feeditem from=$admin_rss_feeditems}>\r\n		<tr class="head">\r\n			<td><a href="<{$feeditem.link}>" rel="external"><{$feeditem.title}></a> (<{$feeditem.date}>)</td>\r\n		</tr>\r\n		<{if $feeditem.description}>\r\n			<tr>\r\n				<td class="odd">\r\n					<{$feeditem.description}>\r\n					<{if $feeditem.guid}>\r\n						<br />\r\n						<a href="<{$feeditem.guid}>"><{$smarty.const._MORE}></a>\r\n					<{/if}>\r\n				</td>\r\n			</tr>\r\n		<{elseif $feeditem.guid}>\r\n			<tr>\r\n				<td class="even" valign="top">\r\n					<a href="<{$feeditem.guid}>"><{$smarty.const._MORE}></a>\r\n				</td>\r\n			</tr>\r\n		<{/if}>\r\n	<{/foreach}>\r\n</table>'),
(31, '<{if $basic_search == false && $search_results }>\r\n<table cellpadding="0" cellspacing="0" width="100%" style="height: 33px;" border="0">\r\n <tr style="height: 33px;">\r\n  <td style="width:3px; background-image: url(images/search/header.<{$smarty.const._GLOBAL_LEFT}>.gif);"></td>\r\n  <td style="background-image: url(images/search/header.background.gif); vertical-align: middle">\r\n   <table cellpadding="0" cellspacing="0" border="0">\r\n    <tr>\r\n     <td colspan="2" style="font-family: sans-serif; font-weight: bold; padding-<{$smarty.const._GLOBAL_LEFT}>: 3px;"><{$label_search_results}>: <{$showing}></td>\r\n    </tr>\r\n   </table>\r\n  </td>\r\n  <td style="width:3px; background-image: url(images/search/header.<{$smarty.const._GLOBAL_RIGHT}>.gif);"></td>\r\n </tr>\r\n</table>\r\n\r\n<table cellpadding="0" cellspacing="0" width="100%" border="0">\r\n<{foreach from=$module_sort_order key=sort_key item=sort_value}>\r\n<tr>\r\n <td style="background-image: url(images/search/bodyHeader.<{$smarty.const._GLOBAL_LEFT}>.gif);"></td>\r\n <td style="background-image: url(images/search/bodyHeader.background.gif);">\r\n 	<div style="padding-top: 5px; padding-bottom: 5px;"><b><{$sort_key}></b>: (<{$sort_value}> <{$smarty.const._SR_HITSRETURNED}>)</div>\r\n<{if $search_results[$sort_key].search_more_url != ''''}>\r\n	  <span style="margin: 10px; padding: 2px 0.5em 3px 0.5em; height:30px;">\r\n	  <a href="<{$search_results[$sort_key].search_more_url}>">\r\n	  <img style="vertical-align: middle;" src="<{$smarty.const.ICMS_IMAGES_SET_URL}>/actions/find.png" alt="<{$search_results[$sort_key].search_more_title}>" /> <{$smarty.const._SR_SHOWALLR}>\r\n	  </a>\r\n	  </span>\r\n	<{/if}>\r\n\r\n	<{if $search_results[$sort_key].page_nav != ''''}>\r\n		<div style="padding-bottom: 5px; text-align: <{$smarty.const._GLOBAL_RIGHT}>"><{$search_results[$sort_key].page_nav}></div>\r\n	<{/if}>\r\n </td>\r\n <td style="background-image: url(images/search/bodyHeader.<{$smarty.const._GLOBAL_RIGHT}>.gif);"></td>\r\n</tr>\r\n<tr style="background-color: #FDFDFD;">\r\n <td style="width: 16px; background-image: url(images/search/body.<{$smarty.const._GLOBAL_LEFT}>.gif)"></td>\r\n <td style="padding: 15px">\r\n	<table class="outer" cellpadding="4" cellspacing="1" width="100%">\r\n		<{section name=cur_result loop=$search_results[$sort_key].results}>\r\n		<tr>\r\n			<td class="head"><{math equation="x + y" x=$smarty.section.cur_result.index y=$start}></td>\r\n			<td style="width: 100%;" class="<{cycle values="even,odd"}>">\r\n				<img alt="<{$search_results[$sort_key].results[cur_result].processed_image_alt_text}>" src="<{$search_results[$sort_key].results[cur_result].processed_image_url}>" />\r\n				<{$search_results[$sort_key].results[cur_result].processed_image_tag}>&nbsp;\r\n				<b><a href="<{$search_results[$sort_key].results[cur_result].link}>"><{$search_results[$sort_key].results[cur_result].processed_title}></a>						</b>\r\n				<br /><small>&nbsp;&nbsp;<a href="<{$search_results[$sort_key].results[cur_result].processed_user_url}>"><{$search_results[$sort_key].results[cur_result].processed_user_name}></a> <{$search_results[$sort_key].results[cur_result].processed_time}></small>\r\n     			</td>\r\n    	</tr>\r\n		<{/section}>\r\n	</table>\r\n	<{if $search_results[$sort_key].page_nav != ''''}>\r\n		<div style="padding-bottom: 5px; text-align: <{$smarty.const._GLOBAL_RIGHT}>"><{$search_results[$sort_key].page_nav}></div>\r\n	<{/if}>\r\n </td>\r\n <td style="width: 19px; background-image: url(images/search/body.<{$smarty.const._GLOBAL_RIGHT}>.gif)"></td>\r\n</tr>\r\n<{/foreach}>\r\n\r\n    <tr>\r\n     <td style="height:9px; background-image: url(images/search/footer.<{$smarty.const._GLOBAL_LEFT}>.gif);"></td>\r\n     <td style="height:9px; background-image: url(images/search/footer.background.gif);"></td>\r\n     <td style="height:9px; background-image: url(images/search/footer.<{$smarty.const._GLOBAL_RIGHT}>.gif);"></td>\r\n    </tr>\r\n</table><br />\r\n<strong><{$label_search_type}> </strong><{$search_type}><br />\r\n<strong><{$label_keywords}> </strong>\r\n	<{* This section generates a space separated list of keywords that were searched. *}>\r\n	<{section name=cur_kw_searched loop=$searched_keywords}>\r\n	  	<{$searched_keywords[cur_kw_searched]}><{if $smarty.section.cur_kw_searched.index <> $smarty.section.cur_kw_searched.total}>&nbsp;<{/if}>\r\n	<{/section}><br />\r\n<{if $ignored_keywords}><{$label_ignored_keywords}>\r\n	<strong>\r\n	<{* This section generates a space separated list of keywords that were NOT searched. *}>\r\n	<{section name=cur_kw_not_searched loop=$ignored_keywords}>\r\n	  	<{$ignored_keywords[cur_kw_not_searched]}><{if $smarty.section.cur_kw_not_searched.index <> $smarty.section.cur_kw_not_searched.total}>&nbsp;<{/if}>\r\n	<{/section}>\r\n	</strong><br />\r\n<{/if}><br />\r\n<{/if}>\r\n<{$search_form}>'),
(32, '<{if $icms_single_view_header_value && !$icms_header_as_row}>\r\n	<h1><{$icms_single_view_header_value}></h1>\r\n<{/if}>\r\n\r\n<table class="outer" cellspacing="1" width="100%">\r\n	<{if $icms_single_view_header_value && $icms_header_as_row}>\r\n		<tr>\r\n			<th width="200" style="text-align: <{$smarty.const._GLOBAL_LEFT}>;"><{$icms_single_view_header_caption}></th>\r\n			<th style="text-align: <{$smarty.const._GLOBAL_LEFT}>;"><{$icms_single_view_header_value}></th>\r\n		</tr>\r\n	<{/if}>\r\n	<{foreach from=$icms_object_array key=key item=field name=singleviewloop}>\r\n		<tr>\r\n			<td class="head" width="200"><{$field.caption}></td>\r\n			<td class="<{cycle values="even,odd"}>"><{$field.value}></td>\r\n		</tr>\r\n	<{/foreach}>\r\n</table>\r\n'),
(33, '<div class="icms_breadcrumb">\r\n	<{foreach item=breadcrumb_item from=$icms_breadcrumb_items name=loop}>\r\n		<{if $breadcrumb_item.link}>\r\n			<a href="<{$breadcrumb_item.link}>"><{$breadcrumb_item.caption}></a>\r\n		<{else}>\r\n			<{$breadcrumb_item.caption}>\r\n		<{/if}>\r\n		<{if !$smarty.foreach.loop.last}>&nbsp;>&nbsp;<{/if}>\r\n	<{/foreach}>\r\n</div>'),
(34, '<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/adsense/images/adsense_big.png)"><{$smarty.const._CO_ICMS_ADSENSE}></div><br />\r\n\r\n<{if $icms_adsense_explain}>\r\n	<h1><{$smarty.const._CO_ICMS_ADSENSE_EXPLAIN_TITLE}></h1>\r\n	<p><{$smarty.const._CO_ICMS_ADSENSE_EXPLAIN}></p>\r\n<{/if}>\r\n\r\n<p><{$icms_adsense_title}></p>\r\n\r\n<{if $icms_adsense_table}>\r\n	<{$icms_adsense_table}>\r\n<{/if}>\r\n\r\n<{if $addadsense}>\r\n	<{includeq file=''db:system_common_form.html'' form=$addadsense}>\r\n<{/if}>'),
(35, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="content-type" content="text/html; charset=<{$icms_charset}>" />\r\n<meta http-equiv="content-language" content="<{$icms_langcode}>" />\r\n<meta name="robots" content="<{$icms_meta_robots}>" />\r\n<meta name="keywords" content="<{$icms_meta_keywords}>" />\r\n<meta name="description" content="<{$icms_meta_description}>" />\r\n<meta name="rating" content="<{$icms_meta_rating}>" />\r\n<meta name="author" content="<{$icms_meta_author}>" />\r\n<meta name="copyright" content="<{$icms_meta_copyright}>" />\r\n<meta name="generator" content="IMPRESSCMS" />\r\n<title><{$icms_print_pageTitle}></title>\r\n\r\n<link rel="stylesheet" media="all" href="<{$icms_url}>/modules/system/style<{if $icms_rtl}>_rtl<{/if}>.css" type="text/css">\r\n<link rel="stylesheet" media="all" href="<{$icms_url}>/modules/system/print<{if $icms_rtl}>_rtl<{/if}>.css" type="text/css">\r\n\r\n<style>\r\n	#container {width: <{$icms_print_width}>px; margin-left: auto; margin-right: auto;}\r\n</style>\r\n\r\n</head>\r\n\r\n<body onload="self.print();">\r\n<div id="container">\r\n	<{if $icms_print_title}>\r\n		<h2><{$icms_print_title}></h2>\r\n	<{/if}>\r\n	<{if $icms_print_dsc}>\r\n		<h3><{$icms_print_dsc}></h3>\r\n	<{/if}>\r\n	\r\n	<div id="icms_printer_friendly_content"><{$icms_print_content}></div>\r\n	\r\n	<div id="print_close"><a href="javascript:window.close();">Close this window</a></div>\r\n</div>\r\n</body>\r\n</html>'),
(36, '<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/rating/images/rating_big.png)"><{$smarty.const._CO_ICMS_RATING}></div><br />\r\n\r\n<{if $icms_rating_explain}>\r\n	<h1><{$smarty.const._CO_ICMS_RATING_EXPLAIN_TITLE}></h1>\r\n	<p><{$smarty.const._CO_ICMS_RATING_EXPLAIN}></p>\r\n<{/if}>\r\n\r\n<p><{$icms_rating_title}></p>\r\n\r\n<{if $icms_rating_table}>\r\n	<{$icms_rating_table}>\r\n<{/if}>\r\n\r\n<{if $addrating}>\r\n	<{includeq file=''db:system_common_form.html'' form=$addrating}>\r\n<{/if}>'),
(37, '<div id="icms_rating_container">\r\n	<div class="item">\r\n		<{if $icms_rated}>\r\n			<div class="itemHead"><b><{$smarty.const._CO_ICMS_RATING_ALREADY_RATED}><{$icms_user_rate}></b></div>\r\n		<{elseif $icms_user_can_rate}>\r\n			<div class="itemHead"><{$smarty.const._CO_ICMS_RATING_RATE_THIS}></div>\r\n			<div class="odd">\r\n				<form name=''icms_rating_form'' id=''icms_rating_form'' method=''post''>\r\n					<div style="float: <{$smarty.const._GLOBAL_LEFT}>;">\r\n						<input name="icms_rating_value" value="1" type="radio">1\r\n						<input name="icms_rating_value" value="2" type="radio">2\r\n						<input name="icms_rating_value" value="3" type="radio">3\r\n						<input name="icms_rating_value" value="4" type="radio">4\r\n						<input name="icms_rating_value" value="5" type="radio">5\r\n					</div>\r\n					<div style="float: <{$smarty.const._GLOBAL_RIGHT}>;">\r\n						<input name="icms_rating_submit" value="<{$smarty.const._CO_ICMS_RATING_RATE_IT}>" type="submit">\r\n					</div>\r\n				</form>\r\n				<br />\r\n			</div>\r\n\r\n		<{/if}>\r\n		<div class="odd" style="display: block;">\r\n			<div><b><{$smarty.const._CO_ICMS_RATING_VOTERS_TOTAL}></b><{$icms_rating_stats_total}></div>\r\n			<div><b><{$smarty.const._CO_ICMS_RATING_AVERAGE}></b><{$icms_rating_stats_average}></div>\r\n		</div>\r\n\r\n	</div>\r\n</div>'),
(38, '<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/mimetype/images/mimetype_big.png)"><{$smarty.const._CO_ICMS_MIMETYPES}></div><br />\r\n\r\n<{if $icms_mimetype_explain}>\r\n	<h1><{$smarty.const._CO_ICMS_MIMETYPES_EXPLAIN_TITLE}></h1>\r\n	<p><{$smarty.const._CO_ICMS_MIMETYPES_EXPLAIN}></p>\r\n<{/if}>\r\n\r\n<p><{$icms_mimetype_title}></p>\r\n\r\n<{if $icms_mimetype_table}>\r\n	<{$icms_mimetype_table}>\r\n<{/if}>\r\n\r\n<{if $addmimetype}>\r\n	<{includeq file=''db:system_common_form.html'' form=$addmimetype}>\r\n<{/if}>'),
(39, '<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/userrank/images/userrank_big.png)"><{$smarty.const._CO_ICMS_USERRANK}></div><br />\r\n\r\n<{if $icms_userrank_explain}>\r\n	<h1><{$smarty.const._CO_ICMS_USERRANK_EXPLAIN_TITLE}></h1>\r\n	<p><{$smarty.const._CO_ICMS_USERRANK_EXPLAIN}></p>\r\n<{/if}>\r\n\r\n<p><{$icms_userrank_title}></p>\r\n\r\n<{if $icms_userrank_table}>\r\n	<{$icms_userrank_table}>\r\n<{/if}>\r\n\r\n<{if $adduserrank}>\r\n	<{includeq file=''db:system_common_form.html'' form=$adduserrank}>\r\n<{/if}>'),
(40, '<div class="CPbigTitle" style="background-image: url(<{$xoops_url}>/modules/system/admin/autotasks/images/autotasks_big.png)"><{$smarty.const._MD_AM_AUTOTASKS}></div><br />\r\n\r\n<{if $icms_autotasks_table}>\r\n	<{$icms_autotasks_table}>\r\n<{else}>\r\n	<{includeq file=''db:system_common_form.html'' form=$addautotasks}>\r\n<{/if}>'),
(41, '<div>\n	<h4><{$smarty.const._PM_PRIVATEMESSAGE}></h4>\n</div>\n<br />\n<a href=''userinfo.php?uid=<{$uid}>''><{$smarty.const._PROFILE}></a>\n&nbsp;\n<span style=''font-weight: bold;''>&raquo;&raquo;</span>\n&nbsp;\n<a href=''viewpmsg.php''><{$smarty.const._PM_INBOX}></a>\n&nbsp;\n<span style=''font-weight: bold;''>&raquo;&raquo;</span>\n&nbsp;\n<{if $messages == ''''}>\n	<br />\n	<br />\n	<{$smarty.const._PM_YOUDONTHAVE}>\n<{else}>\n	<{$subject}><br />	\n	<div valign=''top''>\n		<{if $poster}> <a href=''userinfo.php?uid=<{$poster_id}>''><{$uname}></a><br />\n			<{if $gravatar}><img src=''<{$gravatar}>'' alt='''' /><br /><{/if}> \n			<{if $from}><{$smarty.const._PM_FROM}> : <{$from}><br /><br /><{/if}> \n			<{if $online}>\n				<span style=''color: #ee0000; font-weight: bold;''><{$smarty.const._PM_ONLINE}></span>\n				<br /><br />\n			<{/if}> \n		<{else}> \n			<{$anonymous}> \n		<{/if}> \n		<br />\n		<img src=''images/subject/<{$image}>'' alt='''' />&nbsp;<{$smarty.const._PM_SENTC}><{$sent_time}>\n		<hr>\n		<strong><{$subject}></strong><br>\n		<br> <{$message_body}> <br>\n		<br>\n	</div>\n	<div class=''foot'' width=''20%'' align=''<{$smarty.const._GLOBAL_LEFT}>''>\n		<{if $poster}>\n			<a href=''<{$smarty.const.ICMS_URL}>/pmlite.php?reply=1&amp;msg_id=<{$msg_id}>'' class=''cboxElement''>\n				<input type=''button'' class=''formButton'' value=''<{$smarty.const._REPLY}>'' />\n			</a>\n		<{/if}>\n		<{$form}> \n		<{if $previous >= 0}>\n			<a href=''readpmsg.php?start=<{$previous}>&amp;total_messages=<{$total_messages}>'' style=''float:<{$smarty.const._GLOBAL_LEFT}>''><{$smarty.const._PM_PREVIOUS}></a>\n		<{/if}>\n		<{if $next < $total_messages}>\n			<a href=''readpmsg.php?start=<{$next}>&amp;total_messages=<{$total_messages}>'' style=''float:<{$smarty.const._GLOBAL_RIGHT}>''><{$smarty.const._PM_NEXT}></a>\n		<{/if}>\n	</div>\n<{/if}>\n'),
(42, '<h4><{$smarty.const._PM_PRIVATEMESSAGE}></h4>\n<p>\n	<a href=''userinfo.php?uid=<{$uid}>''><{$smarty.const._PROFILE}></a>&nbsp;\n	<span style=''font-weight: bold;''>&raquo;&raquo;</span>&nbsp;<{$smarty.const._PM_INBOX}>\n</p>\n<form id=''prvmsg'' method=''post'' action=''viewpmsg.php''>\n	<table border=''0'' cellspacing=''1'' cellpadding=''4'' width=''100%'' class=''outer''>\n		<tr align=''center'' valign=''middle''>\n			<th><input name=''allbox'' id=''allbox''\n				onclick=''xoopsCheckAll("prvmsg", "allbox")''\n				type=''checkbox'' value=''Check All'' /></th>\n			<th><img src=''images/download.gif'' alt='''' /></th>\n			<th>&nbsp;</th>\n			<th><{$smarty.const._SUBJECT}></th>\n			<th><{$smarty.const._PM_FROM}></th>\n			<th align=''center''><{$smarty.const._DATE}></th>\n		</tr>\n\n	<{foreach from=$messages item=message name=msg}>\n        <tr align=''<{$smarty.const._GLOBAL_LEFT}>'' class="{cycle values=''odd,even''}">\n			<td style=''vertical-align: middle; width: 2%; text-align: center;''>\n				<input type=''checkbox'' id=''message_<{$message.msg_id}>'' name=''msg_id[]'' value=''<{$message.msg_id}>'' /></td> \n			<td style=''vertical-align: middle; width: 5%; text-align: center;''>&nbsp;\n				<{if $message.read_msg != 1}>\n					<img src=''images/read.gif'' alt=''<{$smarty.const._PM_NOTREAD}>'' />\n				<{/if}>\n			</td>\n			<td style=''vertical-align: middle; width: 5%; text-align: center;''>\n				<img src=''images/subject/<{$message.msg_image}>'' alt='''' />\n			</td>\n			<td valign=''middle'' style=''vertical-align: middle;''>\n				<a href=''readpmsg.php?start=<{$smarty.foreach.msg.total-$smarty.foreach.msg.iteration}>&amp;total_messages=<{$smarty.foreach.msg.total}>''><{$message.subject}></a>\n			</td>\n			<td style=''vertical-align: middle; width: 10%; text-align:center;''>\n				<a href=''userinfo.php?uid=<{$message.from_userid}>''><{$message.sender}></a>\n			</td>\n			<td style=''vertical-align: middle; width: 30%; text-align: center;''>\n				<{$message.sent_time}>\n			</td>\n		</tr>\n	<{foreachelse}>\n		<tr><td class=''even'' colspan=''6'' align=''center''><{$smarty.const._PM_YOUDONTHAVE}></td></tr>\n	<{/foreach}>\n\n	<{if $smarty.foreach.msg.total > 0}>		\n		<tr class=''foot'' align=''<{$smarty.const._GLOBAL_LEFT}>''>\n			<td colspan=''6'' align=''<{$smarty.const._GLOBAL_LEFT}>''>\n				<a class=''cboxElement'' href=''<{$smarty.const.ICMS_URL}>/pmlite.php?send=1''> \n					<input type=''button'' class=''formButton'' value=''<{$smarty.const._SEND}>'' />\n				</a>\n				&nbsp;<input type=''submit'' class=''formButton'' name=''delete_messages'' value=''<{$smarty.const._DELETE}>'' />\n				<{$token}>\n			</td>\n		</tr>\n	<{else}>\n		<tr class=''foot'' align=''<{$smarty.const._GLOBAL_LEFT}>''>\n			<td colspan=''6'' align=''<{$smarty.const._GLOBAL_LEFT}>''>\n				<a class=''cboxElement'' href=''<{$smarty.const.ICMS_URL}>/pmlite.php?send=1''> \n					<input type=''button'' class=''formButton'' value=''<{$smarty.const._SEND}>'' />\n				</a>\n			</td>\n		</tr>\n	<{/if}>\n\n	</table>\n</form>\n'),
(43, '<div id="usermenu">\r\n	<{if $block.user_avatar != ""}>\r\n		<div style="text-align: center;"><img alt="<{$block.name}>" src="<{$block.user_avatar}>"></div>\r\n	<{/if}>\r\n      <{if $xoops_isadmin}>\r\n        <a class="menuTop" href="<{$xoops_url}>/admin.php" title="<{$block.lang_adminmenu}>"><{$block.lang_adminmenu}></a>\r\n	    <a href="<{$xoops_url}>/user.php" title="<{$block.lang_youraccount}>"><{$block.lang_youraccount}></a>\r\n      <{else}>\r\n		<a class="menuTop" href="<{$xoops_url}>/user.php"title="<{$block.lang_youraccount}>"><{$block.lang_youraccount}></a>\r\n      <{/if}>\r\n      <a href="<{$xoops_url}>/notifications.php" title="<{$block.lang_notifications}>"><{$block.lang_notifications}></a>\r\n      <{if $block.new_messages > 0}>\r\n        <a class="highlight" href="<{$xoops_url}>/viewpmsg.php" title="<{$block.lang_inbox}>"><{$block.lang_inbox}> (<span style="color:#ff0000; font-weight: bold;"><{$block.new_messages}></span>)</a>\r\n      <{else}>\r\n        <a href="<{$xoops_url}>/viewpmsg.php" title="<{$block.lang_inbox}>"><{$block.lang_inbox}></a>\r\n      <{/if}>\r\n      <a href="<{$xoops_url}>/user.php?op=logout" title="<{$block.lang_logout}>"><{$block.lang_logout}></a>\r\n</div>\r\n'),
(44, '<div id="block_login_form">\r\n  <form style="margin-top: 0px;" action="<{$xoops_url}>/user.php" method="post">\r\n    <p><{$block.lang_username}></p>\r\n    <div><input type="text" class="uname" name="uname" size="12" value="<{$block.unamevalue}>" maxlength="25" /><br /></div>\r\n    <p><{$block.lang_password}></p>\r\n    <div><input type="password" name="pass" size="12" maxlength="32" /><br /></div>\r\n    <{if $block.rememberme }>\r\n    <div><input type="checkbox" name="rememberme" value="On" /><{$block.lang_rememberme}><br /></div>\r\n    <{/if}>\r\n    <div><input type="hidden" name="xoops_redirect" value="<{$xoops_requesturi}>" /></div>\r\n    <div><input type="hidden" name="op" value="login" /></div>\r\n    <div><input type="submit" value="<{$block.lang_login}>" /><br /></div>\r\n    <{$block.sslloginlink}>\r\n  </form>\r\n  <{if $block.auth_openid}>\r\n	  <div style="text-align: <{$smarty.const._GLOBAL_LEFT}>;"><a href="#" onclick="xoopsGetElementById(''openid-verify-form2'').style.display = ''block''; xoopsGetElementById(''block_login_form'').style.display = ''none''; return false;"><{$smarty.const._MB_SYSTEM_OPENID_LOGIN}></a></div>\r\n  <{/if}>\r\n</div>\r\n\r\n<{if $block.auth_openid}>\r\n	<div id="openid-verify-form2" style="display: none;">\r\n	  <form method="get" action="<{$xoops_url}>/try_auth.php">\r\n	    <{$smarty.const._MB_SYSTEM_OPENID_URL}>\r\n	    <input type="hidden" name="action" value="verify" />\r\n	    <input type="text" class="openid_url" name="openid_identifier" size="12" value="" />\r\n	    <input type="submit" value="<{$block.lang_login}>" />\r\n	  </form>\r\n	  <div style="text-align: <{$smarty.const._GLOBAL_LEFT}>;"><a href="#" onclick="xoopsGetElementById(''block_login_form'').style.display = ''block''; xoopsGetElementById(''openid-verify-form2'').style.display = ''none''; return false;"><{$smarty.const._MB_SYSTEM_OPENID_NORMAL_LOGIN}></a></div>\r\n	</div>\r\n<{/if}>\r\n<br />\r\n<a href="<{$xoops_url}>/user.php#lost" title="<{$block.lang_lostpass}>"><{$block.lang_lostpass}></a>\r\n<{if $block.registration }>\r\n<br />\r\n<a href="<{$xoops_url}>/register.php" title="<{$block.lang_registernow}>"><{$block.lang_registernow}></a>\r\n<{/if}>\r\n'),
(45, '<form style="margin-top: 0px;" action="<{$xoops_url}>/search.php" method="get">\r\n  <div><input type="text" name="query" size="14" /><input type="hidden" name="action" value="results" /><br /><input type="submit" value="<{$block.lang_search}>" /></div>\r\n</form>\r\n<a href="<{$xoops_url}>/search.php" title="<{$block.lang_advsearch}>"><{$block.lang_advsearch}></a>'),
(46, '<{foreach item=module from=$block.modules}>\r\n<strong><{$module.name}></strong>\r\n<ul>\r\n  <{foreach item=pending from=$module.pending}>\r\n  <li>\r\n    <a href="<{$pending.adminlink}>"><{$pending.lang_linkname}></a>:\r\n\r\n    <{if $pending.pendingnum}>\r\n      <span style=''font-weight:bold;color:#ff0000;''><{$pending.pendingnum}></span>\r\n    <{else}>\r\n      <{$pending.pendingnum}>\r\n    <{/if}>\r\n  </li>\r\n  <{/foreach}>\r\n</ul>\r\n<{/foreach}>\r\n'),
(47, '<div id="mainmenu">\r\n      <a class="menuTop<{if $xoops_dirname==''system''}> actlink<{/if}>" href="<{$xoops_url}>/" title="<{$block.lang_home}>"><{$block.lang_home}></a>\r\n      <!-- start module menu loop -->\r\n      <{foreach item=module from=$block.modules}>\r\n      <a class="menuMain<{if $xoops_dirname==$module.directory}> actlink<{/if}>" href="<{$xoops_url}>/modules/<{$module.directory}>/" title="<{$module.name}>"><{$module.name}></a>\r\n        <{foreach item=sublink from=$module.sublinks}>\r\n          <a class="menuSub" href="<{$sublink.url}>" title="<{$sublink.name}>"><{$sublink.name}></a>\r\n        <{/foreach}>\r\n      <{/foreach}>\r\n      <!-- end module menu loop -->\r\n	  <{if $block.priv_enabled == true}>\r\n		  <a class="menuMain<{if $xoops_dirname==''system''}> actlink<{/if}>" href="<{$xoops_url}>/privpolicy.php" title="<{$block.lang_privpolicy}>"><{$block.lang_privpolicy}></a>\r\n	  <{/if}>\r\n</div>'),
(48, '  <{if $block.showgroups == true}>\r\n    <div class="outer">\r\n  <!-- start group loop -->\r\n  <{foreach item=group from=$block.groups}>\r\n  <div style="text-align:center;"><strong><{$group.name}></strong></div>\r\n  <div class="clear"></div>\r\n\r\n  <!-- start group member loop -->\r\n  <{foreach item=user from=$group.users}>\r\n  <div class="<{cycle values="even,odd"}>" style="margin: 0 auto; text-align:center;"><img src="<{$user.avatar}>" alt="<{$user.name}>''s avatar" width="32px" /><br /><a href="<{$xoops_url}>/userinfo.php?uid=<{$user.id}>" title="<{$user.name}>"><{$user.name}></a>&nbsp;<{$user.msglink}></div>\r\n   <div class="clear"></div>\r\n  <{/foreach}>\r\n  <!-- end group member loop -->\r\n\r\n  <{/foreach}>\r\n  <!-- end group loop -->\r\n</div>\r\n<{/if}>\r\n  <div class="clear"></div>\r\n\r\n<div style="margin: 3px; text-align:center;">\r\n  <img src="<{$block.logourl}>" alt="<{$xoops_sitename}>" /><br /><{$block.recommendlink}>\r\n</div>\r\n'),
(49, '<{$block.online_total}><br /><br /><{$block.lang_members}>: <{$block.online_members}><br /><{$block.lang_guests}>: <{$block.online_guests}><br /><br /><{$block.online_names}> <a href="javascript:openWithSelfMain(''<{$xoops_url}>/misc.php?action=showpopups&amp;type=online'',''Online'',420,350);" title="<{$block.lang_more}>"><{$block.lang_more}></a>'),
(50, '<table cellspacing="1px" class="outer">\r\n  <{foreach item=user from=$block.users}>\r\n  <tr class="<{cycle values="even,odd"}>" valign="middle">\r\n    <td align="center">\r\n      <{if $user.avatar != ""}>\r\n      <img src="<{$user.avatar}>" alt="<{$user.name}>''s avatar" width="32px" /><br />\r\n      <{/if}>\r\n      <a href="<{$xoops_url}>/userinfo.php?uid=<{$user.id}>" title="<{$user.name}>"><{$user.name}></a>\r\n    </td>\r\n    <td align="center"><{$user.posts}></td>\r\n  </tr>\r\n  <{/foreach}>\r\n</table>\r\n'),
(51, '<table cellspacing="1px" class="outer">\r\n  <{foreach item=user from=$block.users}>\r\n  <tr class="<{cycle values="even,odd"}>" valign="middle">\r\n    <td align="center">\r\n      <{if $user.avatar != ""}>\r\n      <img src="<{$user.avatar}>" alt="<{$user.name}>''s avatar" width="32px" /><br />\r\n      <{/if}>\r\n      <a href="<{$xoops_url}>/userinfo.php?uid=<{$user.id}>" title="<{$user.name}>"><{$user.name}></a>\r\n      <{if $xoops_isadmin}><br />(<{$user.login_name}>)<{/if}>\r\n      <br /><{$user.joindate}>\r\n    </td>\r\n  </tr>\r\n  <{/foreach}>\r\n</table>\r\n<{if $block.index_enabled == true}>\r\n<{$block.lang_activeusers}>: <{$block.active}><br />\r\n<{$block.lang_inactiveusers}>: <{$block.inactive}><br />\r\n<{$block.lang_totalusers}>: <{$block.registered}><br />\r\n<{/if}>'),
(52, '<table width="100%" cellspacing="1px" class="outer">\r\n  <{foreach item=comment from=$block.comments}>\r\n  <tr class="<{cycle values="even,odd"}>">\r\n    <td align="center"><img src="<{$xoops_url}>/images/subject/<{$comment.icon}>" alt="" /></td>\r\n    <td><{$comment.title}></td>\r\n    <td align="center"><{$comment.module}></td>\r\n    <td align="center"><{$comment.poster}></td>\r\n    <td align="<{$smarty.const._GLOBAL_RIGHT}>"><{$comment.time}></td>\r\n  </tr>\r\n  <{/foreach}>\r\n</table>'),
(53, '<form action="<{$block.target_page}>" method="post">\r\n<table class="outer">\r\n  <{foreach item=category from=$block.categories}>\r\n  <{foreach name=inner item=event from=$category.events}>\r\n  <{if $smarty.foreach.inner.first}>\r\n  <tr>\r\n    <td class="head" colspan="2"><{$category.title}></td>\r\n  </tr>\r\n  <{/if}>\r\n  <tr>\r\n    <td class="odd"><{counter assign=index}><input type="hidden" name="not_list[<{$index}>][params]" value="<{$category.name}>,<{$category.itemid}>,<{$event.name}>" /><input type="checkbox" name="not_list[<{$index}>][status]" value="1" <{if $event.subscribed}>checked="checked"<{/if}> /></td>\r\n    <td class="odd"><{$event.caption}></td>\r\n  </tr>\r\n  <{/foreach}>\r\n  <{/foreach}>\r\n  <tr>\r\n    <td class="foot" colspan="2"><input type="hidden" name="not_redirect" value="<{$block.redirect_script}>" /><input type="hidden" value="<{$block.notification_token}>" name="XOOPS_TOKEN_REQUEST" /><input type="submit" name="not_submit" value="<{$block.submit_button}>" /></td>\r\n  </tr>\r\n</table>\r\n</form>'),
(54, '<div style="text-align: center;">\r\n	<form action="index.php" method="post">\r\n		<div>\r\n		<{if $block.imagenes}>\r\n			<img src="<{$block.imagenesruta}>" vspace="2" id="icms_theme_img" />\r\n			<br />\r\n			<select id="theme_select" name="theme_select" onchange="showImgSelected(''xoops_theme_img'', ''theme_select'', ''themes'', ''/shot.gif'',<{$icms_url}>)"><{$block.opciones}></select>\r\n			<input type="submit" value="<{$smarty.const._GO}>" />\r\n		<{else}>\r\n			<select id="theme_select" name="theme_select" onchange="submit();" size="3"><{$block.opciones}></select>\r\n		<{/if}>\r\n			<p><{$block.numero}></p>\r\n		</div>\r\n	</form>\r\n</div>'),
(55, '<div style="margin-left: auto; margin-right: auto; text-align: center;">\r\n	<{$block.ml_tag}>\r\n</div>'),
(56, '<{foreach item=provider from=$block.provider}>\r\n<a href="#" onclick="window.open(<{$provider.link}>);return false;" rel="nofollow" title="<{$provider.title}>"><img src="<{$block.imagepath}><{$provider.image}>" alt="<{$provider.title}>"/></a>\r\n<{/foreach}>'),
(57, '<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n	<{foreach item=item from=$block.msg}>\r\n		<{$item}>\r\n	<{/foreach}>\r\n</table>'),
(58, '<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n  	<tr>\r\n  		<div class="CPindexOptions" align="center">\r\n	  		<div class="cpicon" align="center">\r\n	  			<{foreach item=mod from=$block.sysmod}>\r\n	  				<a href="<{$mod.link}>" title="<{$mod.title}>"><img src="<{if $mod.image != ''''}><{$mod.image}><{else}><{$xoops_url}>/modules/system/images/modules.png<{/if}>" alt="<{$mod.title}>" />\r\n	  					<span><{$mod.title}></span></a>\n	  			<{/foreach}>\n	  		</div>\r\n	  	</div>\r\n	</tr>\r\n</table>'),
(59, '<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n  	<tr>\r\n		<td width="100%" class="CPindexOptions">\r\n			<div class="cpicon">\r\n				<{foreach item=mod from=$block.mods}>\r\n			 			<a href="<{$mod.link}>" title="<{$mod.title}>"><img src="<{if $mod.iconbig != ''''}><{$mod.iconbig}><{else}><{$xoops_url}>/modules/system/images/modules.png<{/if}>" alt="<{$mod.title}>" />\r\n			 			<span><{$mod.title}></span></a>\r\n				<{/foreach}>\r\n			</div>\r\n		</td>\r\n	</tr>\r\n</table>'),
(60, '<div class="bookmarks">\r\n<{foreach item=module key=key from=$block}>\r\n<strong><{$key}></strong>\r\n	<ul>\r\n	<{foreach item=bookmark from=$module}>\r\n		<li>\r\n	        <a href="<{$bookmark.url}>" title="<{$key}> &raquo; <{$bookmark.name}>"><{$bookmark.name}></a>\r\n		</li>\r\n	<{/foreach}>\r\n	</ul>\r\n<{/foreach}>\r\n</div>'),
(61, '<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  	<tr>\n  		<div class="CPindexOptions" align="center">\n	  		<div class="cpicon" align="center">\n		  		<{foreach item=group key=key from=$block}>\n		  			<span><{$key}></span>\n		  			<{foreach item=mod from=$group}>\n		  				<a href="<{$mod.link}>" title="<{$mod.title}>"><img src="<{if $mod.image != ''''}><{$mod.image}><{else}><{$xoops_url}>/modules/system/images/modules.png<{/if}>" alt="<{$mod.title}>" />\n		  				<span><{$mod.title}></span></a>\n		  			<{/foreach}>\n		  			<br />\n				<{/foreach}>\n	  		</div>\n	  	</div>\n	</tr>\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_users`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_users` (
  `uid` mediumint(8) unsigned NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `uname` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `user_avatar` varchar(30) NOT NULL DEFAULT 'blank.gif',
  `user_regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `user_icq` varchar(15) NOT NULL DEFAULT '',
  `user_from` varchar(100) NOT NULL DEFAULT '',
  `user_sig` text NOT NULL,
  `user_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `actkey` varchar(8) NOT NULL DEFAULT '',
  `user_aim` varchar(18) NOT NULL DEFAULT '',
  `user_yim` varchar(25) NOT NULL DEFAULT '',
  `user_msnm` varchar(100) NOT NULL DEFAULT '',
  `pass` varchar(255) NOT NULL DEFAULT '',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attachsig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` varchar(3) NOT NULL DEFAULT '1',
  `theme` varchar(100) NOT NULL DEFAULT '',
  `timezone_offset` float(3,1) NOT NULL DEFAULT '0.0',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `umode` varchar(10) NOT NULL DEFAULT '',
  `uorder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notify_method` tinyint(1) NOT NULL DEFAULT '1',
  `notify_mode` tinyint(1) NOT NULL DEFAULT '0',
  `user_occ` varchar(100) NOT NULL DEFAULT '',
  `bio` tinytext NOT NULL,
  `user_intrest` varchar(150) NOT NULL DEFAULT '',
  `user_mailok` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `language` varchar(100) NOT NULL DEFAULT '',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(255) NOT NULL DEFAULT '',
  `user_viewoid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pass_expired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enc_type` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `login_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib1941eb7_users`
--

INSERT INTO `ib1941eb7_users` (`uid`, `name`, `uname`, `email`, `url`, `user_avatar`, `user_regdate`, `user_icq`, `user_from`, `user_sig`, `user_viewemail`, `actkey`, `user_aim`, `user_yim`, `user_msnm`, `pass`, `posts`, `attachsig`, `rank`, `level`, `theme`, `timezone_offset`, `last_login`, `umode`, `uorder`, `notify_method`, `notify_mode`, `user_occ`, `bio`, `user_intrest`, `user_mailok`, `language`, `openid`, `salt`, `user_viewoid`, `pass_expired`, `enc_type`, `login_name`) VALUES
(1, '', 'admin', 'admin@impresscms.dev', 'http://192.168.0.105/', 'blank.gif', 1435275931, '', '', '', 0, '', '', '', '', '$23$5000$1CwIy2QwdUE8SUFihJBq190DiOQ2V18C81gAL1t9hE4NuNj3XrHUPqwF8ojwzZKKq-baf5a6fd9924bcb14b7b286b973ef9b841d7e5292673736272cd1f9ef032f0e899d16ad5f1b32ab21f4198f0674ae7b61434d074d0120076bda3946c6ae35b13', 0, 0, 7, '5', 'iTheme', 0.0, 1435278534, 'thread', 0, 1, 0, '', '', '', 0, 'english', '', '', 0, 0, 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_xoopscomments`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_xoopscomments` (
  `com_id` mediumint(8) unsigned NOT NULL,
  `com_pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `com_rootid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `com_modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `com_itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `com_icon` varchar(25) NOT NULL DEFAULT '',
  `com_created` int(10) unsigned NOT NULL DEFAULT '0',
  `com_modified` int(10) unsigned NOT NULL DEFAULT '0',
  `com_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `com_ip` varchar(15) NOT NULL DEFAULT '',
  `com_title` varchar(255) NOT NULL DEFAULT '',
  `com_text` text NOT NULL,
  `com_sig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `com_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `com_exparams` varchar(255) NOT NULL DEFAULT '',
  `dohtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dosmiley` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `doxcode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `doimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dobr` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib1941eb7_xoopsnotifications`
--

CREATE TABLE IF NOT EXISTS `ib1941eb7_xoopsnotifications` (
  `not_id` mediumint(8) unsigned NOT NULL,
  `not_modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `not_itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `not_category` varchar(30) NOT NULL DEFAULT '',
  `not_event` varchar(30) NOT NULL DEFAULT '',
  `not_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `not_mode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ib1941eb7_autosearch_cat`
--
ALTER TABLE `ib1941eb7_autosearch_cat`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `ib1941eb7_autosearch_list`
--
ALTER TABLE `ib1941eb7_autosearch_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib1941eb7_avatar`
--
ALTER TABLE `ib1941eb7_avatar`
  ADD PRIMARY KEY (`avatar_id`),
  ADD KEY `avatar_type` (`avatar_type`,`avatar_display`);

--
-- Indexes for table `ib1941eb7_avatar_user_link`
--
ALTER TABLE `ib1941eb7_avatar_user_link`
  ADD KEY `avatar_user_id` (`avatar_id`,`user_id`);

--
-- Indexes for table `ib1941eb7_block_module_link`
--
ALTER TABLE `ib1941eb7_block_module_link`
  ADD KEY `module_id` (`module_id`),
  ADD KEY `block_id` (`block_id`);

--
-- Indexes for table `ib1941eb7_block_positions`
--
ALTER TABLE `ib1941eb7_block_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib1941eb7_config`
--
ALTER TABLE `ib1941eb7_config`
  ADD PRIMARY KEY (`conf_id`),
  ADD KEY `mod_cat_order` (`conf_modid`,`conf_catid`,`conf_order`);

--
-- Indexes for table `ib1941eb7_configcategory`
--
ALTER TABLE `ib1941eb7_configcategory`
  ADD PRIMARY KEY (`confcat_id`);

--
-- Indexes for table `ib1941eb7_configoption`
--
ALTER TABLE `ib1941eb7_configoption`
  ADD PRIMARY KEY (`confop_id`),
  ADD KEY `conf_id` (`conf_id`);

--
-- Indexes for table `ib1941eb7_groups`
--
ALTER TABLE `ib1941eb7_groups`
  ADD PRIMARY KEY (`groupid`),
  ADD KEY `group_type` (`group_type`);

--
-- Indexes for table `ib1941eb7_groups_users_link`
--
ALTER TABLE `ib1941eb7_groups_users_link`
  ADD PRIMARY KEY (`linkid`),
  ADD KEY `groupid_uid` (`groupid`,`uid`);

--
-- Indexes for table `ib1941eb7_group_permission`
--
ALTER TABLE `ib1941eb7_group_permission`
  ADD PRIMARY KEY (`gperm_id`),
  ADD KEY `name_mod_group` (`gperm_name`(10),`gperm_modid`,`gperm_groupid`);

--
-- Indexes for table `ib1941eb7_icmspage`
--
ALTER TABLE `ib1941eb7_icmspage`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `ib1941eb7_icms_data_file`
--
ALTER TABLE `ib1941eb7_icms_data_file`
  ADD PRIMARY KEY (`fileid`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ib1941eb7_icms_data_urllink`
--
ALTER TABLE `ib1941eb7_icms_data_urllink`
  ADD PRIMARY KEY (`urllinkid`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `ib1941eb7_image`
--
ALTER TABLE `ib1941eb7_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `imgcat_id` (`imgcat_id`),
  ADD KEY `image_display` (`image_display`);

--
-- Indexes for table `ib1941eb7_imagebody`
--
ALTER TABLE `ib1941eb7_imagebody`
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `ib1941eb7_imagecategory`
--
ALTER TABLE `ib1941eb7_imagecategory`
  ADD PRIMARY KEY (`imgcat_id`),
  ADD KEY `imgcat_display` (`imgcat_display`);

--
-- Indexes for table `ib1941eb7_imgset`
--
ALTER TABLE `ib1941eb7_imgset`
  ADD PRIMARY KEY (`imgset_id`),
  ADD KEY `imgset_refid` (`imgset_refid`);

--
-- Indexes for table `ib1941eb7_imgsetimg`
--
ALTER TABLE `ib1941eb7_imgsetimg`
  ADD PRIMARY KEY (`imgsetimg_id`),
  ADD KEY `imgsetimg_imgset` (`imgsetimg_imgset`);

--
-- Indexes for table `ib1941eb7_imgset_tplset_link`
--
ALTER TABLE `ib1941eb7_imgset_tplset_link`
  ADD KEY `tplset_name` (`tplset_name`(10));

--
-- Indexes for table `ib1941eb7_invites`
--
ALTER TABLE `ib1941eb7_invites`
  ADD PRIMARY KEY (`invite_id`),
  ADD KEY `invite_code` (`invite_code`),
  ADD KEY `register_id` (`register_id`);

--
-- Indexes for table `ib1941eb7_modules`
--
ALTER TABLE `ib1941eb7_modules`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `dirname` (`dirname`(5)),
  ADD KEY `active_main_weight` (`isactive`,`hasmain`,`weight`);

--
-- Indexes for table `ib1941eb7_newblocks`
--
ALTER TABLE `ib1941eb7_newblocks`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `mid` (`mid`),
  ADD KEY `visible` (`visible`),
  ADD KEY `isactive_visible_mid` (`isactive`,`visible`,`mid`),
  ADD KEY `mid_funcnum` (`mid`,`func_num`);

--
-- Indexes for table `ib1941eb7_online`
--
ALTER TABLE `ib1941eb7_online`
  ADD KEY `online_module` (`online_module`);

--
-- Indexes for table `ib1941eb7_priv_msgs`
--
ALTER TABLE `ib1941eb7_priv_msgs`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `touseridreadmsg` (`to_userid`,`read_msg`),
  ADD KEY `msgidfromuserid` (`msg_id`,`from_userid`);

--
-- Indexes for table `ib1941eb7_protector_access`
--
ALTER TABLE `ib1941eb7_protector_access`
  ADD KEY `ip` (`ip`),
  ADD KEY `request_uri` (`request_uri`),
  ADD KEY `malicious_actions` (`malicious_actions`),
  ADD KEY `expire` (`expire`);

--
-- Indexes for table `ib1941eb7_protector_log`
--
ALTER TABLE `ib1941eb7_protector_log`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `ip` (`ip`),
  ADD KEY `type` (`type`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `ib1941eb7_ranks`
--
ALTER TABLE `ib1941eb7_ranks`
  ADD PRIMARY KEY (`rank_id`),
  ADD KEY `rank_max` (`rank_max`),
  ADD KEY `rankminrankmaxranspecial` (`rank_min`,`rank_max`,`rank_special`),
  ADD KEY `rankspecial` (`rank_special`);

--
-- Indexes for table `ib1941eb7_session`
--
ALTER TABLE `ib1941eb7_session`
  ADD PRIMARY KEY (`sess_id`),
  ADD KEY `updated` (`sess_updated`);

--
-- Indexes for table `ib1941eb7_smiles`
--
ALTER TABLE `ib1941eb7_smiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib1941eb7_system_adsense`
--
ALTER TABLE `ib1941eb7_system_adsense`
  ADD PRIMARY KEY (`adsenseid`);

--
-- Indexes for table `ib1941eb7_system_autotasks`
--
ALTER TABLE `ib1941eb7_system_autotasks`
  ADD PRIMARY KEY (`sat_id`),
  ADD KEY `sat_interval` (`sat_interval`),
  ADD KEY `sat_lastruntime` (`sat_lastruntime`),
  ADD KEY `sat_type` (`sat_type`);

--
-- Indexes for table `ib1941eb7_system_customtag`
--
ALTER TABLE `ib1941eb7_system_customtag`
  ADD PRIMARY KEY (`customtagid`);

--
-- Indexes for table `ib1941eb7_system_mimetype`
--
ALTER TABLE `ib1941eb7_system_mimetype`
  ADD KEY `mimetypeid` (`mimetypeid`);

--
-- Indexes for table `ib1941eb7_system_rating`
--
ALTER TABLE `ib1941eb7_system_rating`
  ADD PRIMARY KEY (`ratingid`);

--
-- Indexes for table `ib1941eb7_tplfile`
--
ALTER TABLE `ib1941eb7_tplfile`
  ADD PRIMARY KEY (`tpl_id`),
  ADD KEY `tpl_refid` (`tpl_refid`,`tpl_type`),
  ADD KEY `tpl_tplset` (`tpl_tplset`,`tpl_file`(10));

--
-- Indexes for table `ib1941eb7_tplset`
--
ALTER TABLE `ib1941eb7_tplset`
  ADD PRIMARY KEY (`tplset_id`);

--
-- Indexes for table `ib1941eb7_tplsource`
--
ALTER TABLE `ib1941eb7_tplsource`
  ADD KEY `tpl_id` (`tpl_id`);

--
-- Indexes for table `ib1941eb7_users`
--
ALTER TABLE `ib1941eb7_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `login_name` (`login_name`),
  ADD KEY `uname` (`uname`(10));

--
-- Indexes for table `ib1941eb7_xoopscomments`
--
ALTER TABLE `ib1941eb7_xoopscomments`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `com_pid` (`com_pid`),
  ADD KEY `com_itemid` (`com_itemid`),
  ADD KEY `com_uid` (`com_uid`),
  ADD KEY `com_title` (`com_title`(40));

--
-- Indexes for table `ib1941eb7_xoopsnotifications`
--
ALTER TABLE `ib1941eb7_xoopsnotifications`
  ADD PRIMARY KEY (`not_id`),
  ADD KEY `not_modid` (`not_modid`),
  ADD KEY `not_itemid` (`not_itemid`),
  ADD KEY `not_class` (`not_category`),
  ADD KEY `not_uid` (`not_uid`),
  ADD KEY `not_event` (`not_event`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ib1941eb7_autosearch_cat`
--
ALTER TABLE `ib1941eb7_autosearch_cat`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ib1941eb7_autosearch_list`
--
ALTER TABLE `ib1941eb7_autosearch_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `ib1941eb7_avatar`
--
ALTER TABLE `ib1941eb7_avatar`
  MODIFY `avatar_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_block_positions`
--
ALTER TABLE `ib1941eb7_block_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ib1941eb7_config`
--
ALTER TABLE `ib1941eb7_config`
  MODIFY `conf_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `ib1941eb7_configcategory`
--
ALTER TABLE `ib1941eb7_configcategory`
  MODIFY `confcat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ib1941eb7_configoption`
--
ALTER TABLE `ib1941eb7_configoption`
  MODIFY `confop_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `ib1941eb7_groups`
--
ALTER TABLE `ib1941eb7_groups`
  MODIFY `groupid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ib1941eb7_groups_users_link`
--
ALTER TABLE `ib1941eb7_groups_users_link`
  MODIFY `linkid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ib1941eb7_group_permission`
--
ALTER TABLE `ib1941eb7_group_permission`
  MODIFY `gperm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `ib1941eb7_icmspage`
--
ALTER TABLE `ib1941eb7_icmspage`
  MODIFY `page_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ib1941eb7_icms_data_file`
--
ALTER TABLE `ib1941eb7_icms_data_file`
  MODIFY `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_icms_data_urllink`
--
ALTER TABLE `ib1941eb7_icms_data_urllink`
  MODIFY `urllinkid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_image`
--
ALTER TABLE `ib1941eb7_image`
  MODIFY `image_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ib1941eb7_imagecategory`
--
ALTER TABLE `ib1941eb7_imagecategory`
  MODIFY `imgcat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ib1941eb7_imgset`
--
ALTER TABLE `ib1941eb7_imgset`
  MODIFY `imgset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ib1941eb7_imgsetimg`
--
ALTER TABLE `ib1941eb7_imgsetimg`
  MODIFY `imgsetimg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_invites`
--
ALTER TABLE `ib1941eb7_invites`
  MODIFY `invite_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_modules`
--
ALTER TABLE `ib1941eb7_modules`
  MODIFY `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ib1941eb7_newblocks`
--
ALTER TABLE `ib1941eb7_newblocks`
  MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ib1941eb7_priv_msgs`
--
ALTER TABLE `ib1941eb7_priv_msgs`
  MODIFY `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_protector_log`
--
ALTER TABLE `ib1941eb7_protector_log`
  MODIFY `lid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_ranks`
--
ALTER TABLE `ib1941eb7_ranks`
  MODIFY `rank_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ib1941eb7_smiles`
--
ALTER TABLE `ib1941eb7_smiles`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `ib1941eb7_system_adsense`
--
ALTER TABLE `ib1941eb7_system_adsense`
  MODIFY `adsenseid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_system_autotasks`
--
ALTER TABLE `ib1941eb7_system_autotasks`
  MODIFY `sat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ib1941eb7_system_customtag`
--
ALTER TABLE `ib1941eb7_system_customtag`
  MODIFY `customtagid` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_system_mimetype`
--
ALTER TABLE `ib1941eb7_system_mimetype`
  MODIFY `mimetypeid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `ib1941eb7_system_rating`
--
ALTER TABLE `ib1941eb7_system_rating`
  MODIFY `ratingid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_tplfile`
--
ALTER TABLE `ib1941eb7_tplfile`
  MODIFY `tpl_id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `ib1941eb7_tplset`
--
ALTER TABLE `ib1941eb7_tplset`
  MODIFY `tplset_id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ib1941eb7_users`
--
ALTER TABLE `ib1941eb7_users`
  MODIFY `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ib1941eb7_xoopscomments`
--
ALTER TABLE `ib1941eb7_xoopscomments`
  MODIFY `com_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ib1941eb7_xoopsnotifications`
--
ALTER TABLE `ib1941eb7_xoopsnotifications`
  MODIFY `not_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
