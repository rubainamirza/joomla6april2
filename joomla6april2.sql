-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2016 at 07:56 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joomla6april2`
--

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_akeeba_common`
--

CREATE TABLE `scgxr_akeeba_common` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_akeeba_common`
--

INSERT INTO `scgxr_akeeba_common` (`key`, `value`) VALUES
('fof30', '["com_akeeba"]'),
('stats_lastrun', '1466402012'),
('stats_siteid', '76fd629082bf5a2cc7cbcac9fcc1702807fa73d0'),
('stats_siteurl', '2278faedc5217625b9108ccbe5dc2da7');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_ak_profiles`
--

CREATE TABLE `scgxr_ak_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `configuration` longtext,
  `filters` longtext,
  `quickicon` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_ak_profiles`
--

INSERT INTO `scgxr_ak_profiles` (`id`, `description`, `configuration`, `filters`, `quickicon`) VALUES
(1, 'Default Backup Profile', '[global]\n[akeeba]\nbasic.output_directory="D:\\xampp\\htdocs\\joomla6april2/administrator/components/com_akeeba/backup"\nbasic.log_level="4"\nbasic.archive_name="site-[HOST]-[DATE]-[TIME]"\nbasic.backup_type="full"\nbasic.clientsidewait="0"\nbasic.useiframe="0"\ncore.usedbstorage="0"\nadvanced.dump_engine="native"\nadvanced.scan_engine="smart"\nadvanced.archiver_engine="jpa"\nadvanced.postproc_engine="none"\nadvanced.embedded_installer="angie"\nadvanced.autoresume="1"\nadvanced.autoresume_timeout="10"\nadvanced.autoresume_maxretries="3"\nadvanced.integritycheck="0"\nquota.remote="0"\nquota.maxage.enable="0"\nquota.obsolete_quota="50"\nquota.enable_size_quota="0"\nquota.size_quota="15728640"\nquota.enable_count_quota="1"\nquota.count_quota="3"\ntuning.min_exec_time="0"\ntuning.max_exec_time="7"\ntuning.run_time_bias="75"\ntuning.nobreak.beforelargefile="0"\ntuning.nobreak.afterlargefile="0"\ntuning.nobreak.proactive="0"\ntuning.nobreak.domains="0"\ntuning.nobreak.finalization="0"\ntuning.settimelimit="1"\nflag.confwiz="1"\n[engine]\ninstaller.angie.key=""\narchiver.common.dereference_symlinks="0"\narchiver.common.part_size="2147352576"\narchiver.common.chunk_size="1048576"\narchiver.common.big_file_threshold="1048576"\narchiver.zip.cd_glue_chunk_size="1048576"\ndump.divider.common="0"\ndump.divider.mysql="0"\ndump.common.blankoutpass="0"\ndump.common.extended_inserts="1"\ndump.common.packet_size="209715.2"\ndump.common.splitsize="524288"\ndump.common.batchsize="1000"\ndump.native.advanced_entitites="0"\ndump.native.nodependencies="0"\ndump.native.nobtree="1"\nscan.smart.large_dir_threshold="100"\nscan.common.largefile="10485760"\n[core]\nfilters.dateconditional.enabled="0"\nfilters.dateconditional.start="1981-02-20 12:15 GMT+2"\nfilters.errorlogs.enabled="1"\nfilters.hoststats.enabled="1"\nfilters.finder.enabled="1"\n', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_ak_stats`
--

CREATE TABLE `scgxr_ak_stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `comment` longtext,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') NOT NULL DEFAULT 'run',
  `origin` varchar(30) NOT NULL DEFAULT 'backend',
  `type` varchar(30) NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext,
  `absolute_path` longtext,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) DEFAULT NULL,
  `backupid` varchar(255) DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_ak_stats`
--

INSERT INTO `scgxr_ak_stats` (`id`, `description`, `comment`, `backupstart`, `backupend`, `status`, `origin`, `type`, `profile_id`, `archivename`, `absolute_path`, `multipart`, `tag`, `backupid`, `filesexist`, `remote_filename`, `total_size`) VALUES
(1, 'Backup taken on Monday, 20 June 2016 05:54', '', '2016-06-19 23:54:07', '0000-00-00 00:00:00', 'fail', 'backend', 'full', 1, 'site-localhost-20160620-055407.jpa', 'D:/xampp/htdocs/joomla6april2/administrator/components/com_akeeba/backup/site-localhost-20160620-055407.jpa', 0, 'backend', 'id1', 1, '', 19),
(2, 'Backup taken on Monday, 20 June 2016 05:54', '', '2016-06-19 23:54:27', '2016-06-19 23:55:04', 'complete', 'backend', 'full', 1, 'site-localhost-20160620-055427.jpa', 'D:/xampp/htdocs/joomla6april2/administrator/components/com_akeeba/backup/site-localhost-20160620-055427.jpa', 1, 'backend', 'id2', 1, NULL, 24966941);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_ak_storage`
--

CREATE TABLE `scgxr_ak_storage` (
  `tag` varchar(255) NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_assets`
--

CREATE TABLE `scgxr_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_assets`
--

INSERT INTO `scgxr_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 121, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 37, 38, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 41, 86, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 87, 90, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 91, 92, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 93, 94, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 95, 96, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 97, 98, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 99, 102, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.options":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 103, 104, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 88, 89, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 100, 101, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 105, 106, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 107, 108, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 109, 110, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 111, 112, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 113, 114, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 115, 116, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 72, 73, 2, 'com_modules.module.87', 'Top menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(55, 18, 74, 75, 2, 'com_modules.module.88', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(56, 27, 19, 20, 3, 'com_content.article.1', 'Flower', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 76, 77, 2, 'com_modules.module.89', 'Breadcumbs banner', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(58, 18, 78, 79, 2, 'com_modules.module.90', 'Banner', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(59, 18, 80, 81, 2, 'com_modules.module.91', 'module Banner', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(60, 18, 82, 83, 2, 'com_modules.module.92', 'Side Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(61, 18, 84, 85, 2, 'com_modules.module.93', 'Sexy Polling', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(62, 1, 117, 118, 1, 'com_sexypolling', 'COM_SEXYPOLLING', '{}'),
(63, 1, 119, 120, 1, 'com_akeeba', 'Akeeba', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_associations`
--

CREATE TABLE `scgxr_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_banners`
--

CREATE TABLE `scgxr_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_banners`
--

INSERT INTO `scgxr_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`) VALUES
(1, 1, 0, 'breadcrumbs banner', 'breadcrumbs-banner', 0, 37, 0, 'http://www.idb-bisew.org', 1, 3, '', '', 1, 1, '', '{"imageurl":"images\\/banners\\/flowers_wide.jpg","width":400,"height":50,"alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-04-06 05:58:12', '*', 317, '', '2016-04-06 06:01:02', 317, 5),
(2, 2, 0, 'footer banner', 'footer-banner', 0, 27, 2, 'https://www.youtube.com/watch?v=jfFdQvicGw4&list=PL4aw5AReobaGizSlkGV6GbyQoe13Fb8q6', 1, 3, '', '', 1, 2, '', '{"imageurl":"images\\/banners\\/shop-ad.jpg","width":200,"height":50,"alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-04-06 06:09:57', '*', 317, '', '2016-04-06 06:15:24', 317, 5);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_banner_clients`
--

CREATE TABLE `scgxr_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_banner_clients`
--

INSERT INTO `scgxr_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'rima', 'rima', 'rima@gmail.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0),
(2, 'ritu', 'ritu', 'ritu@gmail.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_banner_tracks`
--

CREATE TABLE `scgxr_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_categories`
--

CREATE TABLE `scgxr_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_categories`
--

INSERT INTO `scgxr_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_contact_details`
--

CREATE TABLE `scgxr_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_contact_details`
--

INSERT INTO `scgxr_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Rima', 'rima', 'Manager', 'Azimpur', '', '', '', '', '4956704565', '', '', 'images/sampledata/parks/landscape/727px_rainforest_bluemountainsnsw.jpg', 'rima@gmail.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '34645657567', '', '', '', '', '*', '2016-04-06 05:51:23', 317, '', '2016-04-06 05:51:23', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_content`
--

CREATE TABLE `scgxr_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_content`
--

INSERT INTO `scgxr_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 56, 'Flower', 'flower', '<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">Flowers turn into leaves,” said 5-year-old Dani Swepston.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">“They also can turn into what?” Mitchem said.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">Some children answered “food.”</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">“Apples, oranges — those used to be flowers first,” Mitchem said. “Squash blossoms, pumpkins for pumpkin pie. We wouldn’t have honey on toast if we didn’t have flowers.”</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;"> <img src="images/img-5988-44984-zoom.jpg" alt="" width="195" height="194" /></p>\r\n', '\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;"> </p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">She handed out bags of fruit candies, saying “all the things that make these fruit snacks sweet come from flowers.”</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">Mitchem pulled youngsters from the audience to use as props. She dressed one boy as a flower to show floral parts.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">“His feet are roots, they help him grow, taking water and food from the soil,” she said. “His legs are stems, helping the flower stand. His hands are leaves, helping the flower get sun." In the middle of the yellow petals, the boy’s face became pollen.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">With a butterfly puppet and help from two other flower-holding youngsters, Mitchem showed how butterflies, bees and birds can transfer pollen from one flower to another.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">She showed a small-tailed possum, Poquito, that could do the same thing.</p>\r\n<div class="tnt-ads-container text-center hidden-xs" style="font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; min-height: 1px; font-size: 14px; line-height: 20px; text-align: center !important;"> </div>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">“Animals love flowers,” Mitchem said.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">Flowers also send messages, she said.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">“In America, we think of a red rose as saying ‘I love you,’” Mitchem said. “In China, if someone gives red roses it means ‘I trust you to keep a secret.’”</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">And people aren’t the only ones who decorate with flowers, she said.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">As the young audience members held sacks of petals, Mitchem showed how the male bowerbird collects flowers to decorate the lady bird’s nest.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">She brought out Myrtle, a turtle, to show how turtles hide under flowers.</p>\r\n<p style="margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;">Reach Cathy Spaulding at (918) 684-2928 or <span id="cloak11512"><a style="color: #333333; box-sizing: border-box; background-color: transparent;" href="mailto:cspaulding@muskogeephoenix.com">cspaulding@muskogeephoenix.com</a></span>.</p>', 1, 2, '2016-04-06 05:55:30', 317, '', '2016-04-06 05:55:51', 317, 0, '0000-00-00 00:00:00', '2016-04-06 05:55:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_contentitem_tag_map`
--

CREATE TABLE `scgxr_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_content_frontpage`
--

CREATE TABLE `scgxr_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_content_frontpage`
--

INSERT INTO `scgxr_content_frontpage` (`content_id`, `ordering`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_content_rating`
--

CREATE TABLE `scgxr_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_content_types`
--

CREATE TABLE `scgxr_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_content_types`
--

INSERT INTO `scgxr_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_core_log_searches`
--

CREATE TABLE `scgxr_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_extensions`
--

CREATE TABLE `scgxr_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_extensions`
--

INSERT INTO `scgxr_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"2f01d775b14db186338ca77f68395e51"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `scgxr_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'COM_SEXYPOLLING', 'component', 'com_sexypolling', '', 1, 1, 0, 0, '{"name":"COM_SEXYPOLLING","type":"component","creationDate":"June 2012","author":"2GLux","copyright":"Copyright (c) 2010 - 2016 2GLux. All rights reserved.","authorEmail":"info@2glux.com","authorUrl":"http:\\/\\/2glux.com","version":"2.1.4","description":"COM_SEXYPOLLING_DESCRIPTION","group":"","filename":"sexypolling"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'MOD_SEXYPOLLING_NAME', 'module', 'mod_sexypolling', '', 0, 1, 0, 0, '{"name":"MOD_SEXYPOLLING_NAME","type":"module","creationDate":"June 2012","author":"2GLux","copyright":"Copyright (c) 2010 - 2015 2GLux. All rights reserved.","authorEmail":"info@2glux.com","authorUrl":"http:\\/\\/2glux.com","version":"2.1.1","description":"MOD_SEXYPOLLING_DESCRIPTION","group":"","filename":"mod_sexypolling"}', '{"poll_type":"0","poll_id":"","category_id":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'PLG_SEXYPOLLING_NAME', 'plugin', 'sexypolling', 'system', 0, 1, 1, 0, '{"name":"PLG_SEXYPOLLING_NAME","type":"plugin","creationDate":"June 2012","author":"2GLux","copyright":"Copyright (c) 2010 - 2015 2GLux. All rights reserved.","authorEmail":"info@2glux.com","authorUrl":"http:\\/\\/2glux.com","version":"2.1.1","description":"PLG_SEXYPOLLING_DESCRIPTION","group":"","filename":"sexypolling"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"17 February 2016","author":"Joomla! Project","copyright":"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'FOF30', 'library', 'lib_fof30', '', 0, 1, 1, 0, '{"name":"FOF30","type":"library","creationDate":"2016-05-06 08:59:53","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"3.0.10","description":"\\n\\t\\t\\n\\t\\tFramework-on-Framework (FOF) 3.x - The rapid application development framework for Joomla!.<br\\/>\\n\\t\\t<b>WARNING<\\/b>: This is NOT a duplicate of the FOF library already installed with Joomla!. It is a different version used by other extensions on your site. Do NOT uninstall either FOF package. If you do you will break your site.\\n\\t\\t\\n\\t","group":"","filename":"lib_fof30"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Akeeba', 'component', 'com_akeeba', '', 1, 1, 0, 0, '{"name":"Akeeba","type":"component","creationDate":"2016-06-07","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2016 Akeeba Ltd \\/ Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"5.1.0","description":"Akeeba Backup Core - Full Joomla! site backup solution, Core Edition.","group":"","filename":"akeeba"}', '{"confwiz_upgrade":1,"siteurl":"http:\\/\\/localhost\\/joomla6april2\\/","jlibrariesdir":"D:\\/xampp\\/htdocs\\/joomla6april2\\/libraries","jversion":"1.6","show_howtorestoremodal":0}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'plg_quickicon_akeebabackup', 'plugin', 'akeebabackup', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_akeebabackup","type":"plugin","creationDate":"2012-09-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2009-2016 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.0","description":"PLG_QUICKICON_AKEEBABACKUP_XML_DESCRIPTION","group":"","filename":"akeebabackup"}', '{"context":"mod_quickicon","enablewarning":"1","warnfailed":"1","maxbackupperiod":"24","profileid":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE', 'plugin', 'akeebaupdatecheck', 'system', 0, 0, 1, 0, '{"name":"PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE","type":"plugin","creationDate":"2011-05-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2009-2016 Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.1","description":"PLG_AKEEBAUPDATECHECK_DESCRIPTION2","group":"","filename":"akeebaupdatecheck"}', '{"email":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'PLG_SYSTEM_BACKUPONUPDATE_TITLE', 'plugin', 'backuponupdate', 'system', 0, 0, 1, 0, '{"name":"PLG_SYSTEM_BACKUPONUPDATE_TITLE","type":"plugin","creationDate":"2013-08-13","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2009-2016 Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"3.7","description":"PLG_SYSTEM_BACKUPONUPDATE_DESCRIPTION","group":"","filename":"backuponupdate"}', '{"profileid":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Akeeba Backup package', 'package', 'pkg_akeeba', '', 0, 1, 1, 0, '{"name":"Akeeba Backup package","type":"package","creationDate":"2016-06-07","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2016 Akeeba Ltd \\/ Nicholas K. Dionysopoulos","authorEmail":"","authorUrl":"","version":"5.1.0","description":"Akeeba Backup installation package v.5.1.0","group":"","filename":"pkg_akeeba"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_filters`
--

CREATE TABLE `scgxr_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links`
--

CREATE TABLE `scgxr_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms0`
--

CREATE TABLE `scgxr_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms1`
--

CREATE TABLE `scgxr_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms2`
--

CREATE TABLE `scgxr_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms3`
--

CREATE TABLE `scgxr_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms4`
--

CREATE TABLE `scgxr_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms5`
--

CREATE TABLE `scgxr_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms6`
--

CREATE TABLE `scgxr_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms7`
--

CREATE TABLE `scgxr_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms8`
--

CREATE TABLE `scgxr_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_terms9`
--

CREATE TABLE `scgxr_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_termsa`
--

CREATE TABLE `scgxr_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_termsb`
--

CREATE TABLE `scgxr_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_termsc`
--

CREATE TABLE `scgxr_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_termsd`
--

CREATE TABLE `scgxr_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_termse`
--

CREATE TABLE `scgxr_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_links_termsf`
--

CREATE TABLE `scgxr_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_taxonomy`
--

CREATE TABLE `scgxr_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_finder_taxonomy`
--

INSERT INTO `scgxr_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_taxonomy_map`
--

CREATE TABLE `scgxr_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_terms`
--

CREATE TABLE `scgxr_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_terms_common`
--

CREATE TABLE `scgxr_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_finder_terms_common`
--

INSERT INTO `scgxr_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_tokens`
--

CREATE TABLE `scgxr_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_tokens_aggregate`
--

CREATE TABLE `scgxr_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_finder_types`
--

CREATE TABLE `scgxr_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_languages`
--

CREATE TABLE `scgxr_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_languages`
--

INSERT INTO `scgxr_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_menu`
--

CREATE TABLE `scgxr_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_menu`
--

INSERT INTO `scgxr_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 67, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(102, 'mainmenu', 'User Registration', 'user-registration', '', 'user-registration', 'index.php?option=com_users&view=registration', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(103, 'mainmenu', 'Search Book', 'search-book', '', 'search-book', 'index.php?option=com_search&view=search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"search_phrases":"","search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(104, 'top-menu', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(105, 'side-menu', 'Wrapper', 'wrapper', '', 'wrapper', 'index.php?option=com_wrapper&view=wrapper', 'component', 1, 1, 1, 2, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"url":"https:\\/\\/www.youtube.com\\/embed\\/l_13EqOusag?list=PL4aw5AReobaGizSlkGV6GbyQoe13Fb8q6","scrolling":"auto","width":"100%","height":"500","height_auto":"0","add_scheme":"1","frameborder":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(106, 'main', 'COM_SEXYPOLLING_MENU', 'com-sexypolling-menu', '', 'com-sexypolling-menu', 'index.php?option=com_sexypolling', 'component', 0, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sexypolling/assets/images/project_16.png', 0, '{}', 51, 64, 0, '', 1),
(107, 'main', 'COM_SEXYPOLLING_SUBMENU_POLLS', 'com-sexypolling-submenu-polls', '', 'com-sexypolling-menu/com-sexypolling-submenu-polls', 'index.php?option=com_sexypolling&view=sexypolls', 'component', 0, 106, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sexypolling/assets/images/poll_16.png', 0, '{}', 52, 53, 0, '', 1),
(108, 'main', 'COM_SEXYPOLLING_SUBMENU_ANSWERS', 'com-sexypolling-submenu-answers', '', 'com-sexypolling-menu/com-sexypolling-submenu-answers', 'index.php?option=com_sexypolling&view=sexyanswers', 'component', 0, 106, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sexypolling/assets/images/answer_16.png', 0, '{}', 54, 55, 0, '', 1),
(109, 'main', 'COM_SEXYPOLLING_SUBMENU_VOTES', 'com-sexypolling-submenu-votes', '', 'com-sexypolling-menu/com-sexypolling-submenu-votes', 'index.php?option=com_sexypolling&view=sexyvotes', 'component', 0, 106, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sexypolling/assets/images/vote_16.png', 0, '{}', 56, 57, 0, '', 1),
(110, 'main', 'COM_SEXYPOLLING_SUBMENU_CATEGORIES', 'com-sexypolling-submenu-categories', '', 'com-sexypolling-menu/com-sexypolling-submenu-categories', 'index.php?option=com_sexypolling&view=sexycategories', 'component', 0, 106, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sexypolling/assets/images/category_16.png', 0, '{}', 58, 59, 0, '', 1),
(111, 'main', 'COM_SEXYPOLLING_SUBMENU_TEMPLATES', 'com-sexypolling-submenu-templates', '', 'com-sexypolling-menu/com-sexypolling-submenu-templates', 'index.php?option=com_sexypolling&view=sexytemplates', 'component', 0, 106, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sexypolling/assets/images/template_16.png', 0, '{}', 60, 61, 0, '', 1),
(112, 'main', 'COM_SEXYPOLLING_SUBMENU_STATISTICS', 'com-sexypolling-submenu-statistics', '', 'com-sexypolling-menu/com-sexypolling-submenu-statistics', 'index.php?option=com_sexypolling&view=sexystatistics', 'component', 0, 106, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sexypolling/assets/images/statistics_16.png', 0, '{}', 62, 63, 0, '', 1),
(114, 'main', 'COM_AKEEBA', 'com-akeeba', '', 'com-akeeba', 'index.php?option=com_akeeba', 'component', 1, 1, 1, 10005, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_akeeba/icons/akeeba-16.png', 0, '{}', 65, 66, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_menu_types`
--

CREATE TABLE `scgxr_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_menu_types`
--

INSERT INTO `scgxr_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'top-menu', 'Top menu', ''),
(3, 'side-menu', 'Side Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_messages`
--

CREATE TABLE `scgxr_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_messages_cfg`
--

CREATE TABLE `scgxr_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_modules`
--

CREATE TABLE `scgxr_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_modules`
--

INSERT INTO `scgxr_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Top menu', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"top-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Search', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","field_size":25,"show_label":"0","label_pos":"left","alt_label":"","show_button":"0","button_pos":"left","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 57, 'Breadcumbs banner', '', '', 0, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":5,"cid":"1","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 58, 'Banner', '', '', 0, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/banner","link":"","width":"1200","height":"400","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 59, 'module Banner', '', '', 0, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":5,"cid":"2","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 60, 'Side Menu', '', '', 0, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"side-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 61, 'Sexy Polling', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sexypolling', 1, 0, '{"poll_type":"1","poll_id":"1","category_id":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_modules_menu`
--

CREATE TABLE `scgxr_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_modules_menu`
--

INSERT INTO `scgxr_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 101);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_newsfeeds`
--

CREATE TABLE `scgxr_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_overrider`
--

CREATE TABLE `scgxr_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_postinstall_messages`
--

CREATE TABLE `scgxr_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_postinstall_messages`
--

INSERT INTO `scgxr_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_redirect_links`
--

CREATE TABLE `scgxr_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_schemas`
--

CREATE TABLE `scgxr_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_schemas`
--

INSERT INTO `scgxr_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_session`
--

CREATE TABLE `scgxr_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_session`
--

INSERT INTO `scgxr_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('8os0at99f29ddl7pmncek7chj5', 1, 0, '1466402125', 'joomla|s:2436:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1MDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NjY0MDE5MzM7czo0OiJsYXN0IjtpOjE0NjY0MDIxMTU7czozOiJub3ciO2k6MTQ2NjQwMjEyNDt9czo1OiJ0b2tlbiI7czozMjoiYTMyMmQ2MTg5YzkyZGM1ZmUzMWMyMTk2ZDI5ODZmMTciO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGFuZyI7czo1OiJlbi1HQiI7fXM6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czoxMjoicmVkaXJlY3RfdXJsIjtOO319czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6Mjg6e3M6OToiACoAaXNSb290IjtiOjE7czoyOiJpZCI7czozOiIzMTciO3M6NDoibmFtZSI7czoxMDoiU3VwZXIgVXNlciI7czo4OiJ1c2VybmFtZSI7czo1OiJ0cmlzYSI7czo1OiJlbWFpbCI7czoxNToidHJpc2FAZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjYwOiIkMnkkMTAkeUVXR3NsSXJyeVVsY3lLSVJZU1ExLkVKdFJ2Y0ZIQUtPUU5lbHJGZkx1VWF6eTlYSS8zMmEiO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7czoxOiIwIjtzOjk6InNlbmRFbWFpbCI7czoxOiIxIjtzOjEyOiJyZWdpc3RlckRhdGUiO3M6MTk6IjIwMTYtMDQtMDYgMDU6NDU6MTEiO3M6MTM6Imxhc3R2aXNpdERhdGUiO3M6MTk6IjIwMTYtMDQtMDYgMDU6NDU6NDEiO3M6MTA6ImFjdGl2YXRpb24iO3M6MToiMCI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjY6Imdyb3VwcyI7YToxOntpOjg7czoxOiI4Ijt9czo1OiJndWVzdCI7aTowO3M6MTM6Imxhc3RSZXNldFRpbWUiO3M6MTk6IjAwMDAtMDAtMDAgMDA6MDA6MDAiO3M6MTA6InJlc2V0Q291bnQiO3M6MToiMCI7czoxMjoicmVxdWlyZVJlc2V0IjtzOjE6IjAiO3M6MTA6IgAqAF9wYXJhbXMiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTQ6IgAqAF9hdXRoR3JvdXBzIjthOjI6e2k6MDtpOjE7aToxO2k6ODt9czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6NTp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjI7aTozO2k6MztpOjQ7aTo2O31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7czo2OiJvdHBLZXkiO3M6MDoiIjtzOjQ6Im90ZXAiO3M6MDoiIjt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO047fXM6NzoicHJvZmlsZSI7aToxO31zOjg6Il9fYWtlZWJhIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6InByb2ZpbGUiO2k6MTt9czoxMjoiX19jb21fYWtlZWJhIjtPOjg6InN0ZENsYXNzIjoxOntzOjI0OiJtYWdpY1BhcmFtc1VwZGF0ZVZlcnNpb24iO3M6NToiNS4xLjAiO319czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 317, 'trisa'),
('ckfscuti1tknpolm35td80th20', 0, 1, '1466401911', 'joomla|s:1860:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ2NjQwMTkwNjtzOjQ6Imxhc3QiO2k6MTQ2NjQwMTkwNjtzOjM6Im5vdyI7aToxNDY2NDAxOTExO31zOjU6InRva2VuIjtzOjMyOiJmNzNlM2IwYTZkZGFhNjY1OGYzMjI5YTBiMDIxNmMzYyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MjY6e3M6OToiACoAaXNSb290IjtiOjA7czoyOiJpZCI7aTowO3M6NDoibmFtZSI7TjtzOjg6InVzZXJuYW1lIjtOO3M6NToiZW1haWwiO047czo4OiJwYXNzd29yZCI7TjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO047czo5OiJzZW5kRW1haWwiO2k6MDtzOjEyOiJyZWdpc3RlckRhdGUiO047czoxMzoibGFzdHZpc2l0RGF0ZSI7TjtzOjEwOiJhY3RpdmF0aW9uIjtOO3M6NjoicGFyYW1zIjtOO3M6NjoiZ3JvdXBzIjthOjE6e2k6MDtzOjE6IjkiO31zOjU6Imd1ZXN0IjtpOjE7czoxMzoibGFzdFJlc2V0VGltZSI7TjtzOjEwOiJyZXNldENvdW50IjtOO3M6MTI6InJlcXVpcmVSZXNldCI7TjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjk7fXM6MTQ6IgAqAF9hdXRoTGV2ZWxzIjthOjM6e2k6MDtpOjE7aToxO2k6MTtpOjI7aTo1O31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7fXM6MTA6ImNvbV9tYWlsdG8iO086ODoic3RkQ2xhc3MiOjE6e3M6NToibGlua3MiO2E6MTp7czo0MDoiZjBkZTAxMTk4NmRkZTA1N2EyNzEwYWJjZDA0NDQ3YTEwYWVjODI1YiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJsaW5rIjtzOjY1OiJodHRwOi8vbG9jYWxob3N0L2pvb21sYTZhcHJpbDIvaW5kZXgucGhwLzItdW5jYXRlZ29yaXNlZC8xLWZsb3dlciI7czo2OiJleHBpcnkiO2k6MTQ2NjQwMTkwODt9fX19fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_sexy_answers`
--

CREATE TABLE `scgxr_sexy_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_poll` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `created` datetime NOT NULL,
  `ordering` mediumint(8) UNSIGNED NOT NULL,
  `show_name` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `img_width` int(10) UNSIGNED NOT NULL DEFAULT '100',
  `img_name` text NOT NULL,
  `img_url` text NOT NULL,
  `embed` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_sexy_answers`
--

INSERT INTO `scgxr_sexy_answers` (`id`, `id_poll`, `id_user`, `name`, `published`, `publish_up`, `publish_down`, `created`, `ordering`, `show_name`, `img_width`, `img_name`, `img_url`, `embed`) VALUES
(1, 1, 0, 'Nokia LUMIA 520!\r\n<br /><a href="http://www.nokia.com/global/products/phone/lumia520/" target="_blank">Read more.</a>\r\n<br /><a href="https://www.youtube.com/watch?v=9SwdMx94qf0" target="_blank">See trailer.</a>', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-04-20 17:41:04', 0, 1, 100, '', 'http://2glux.com/images/sexypolling-demo/nokia.jpg', ''),
(2, 1, 0, 'Samsung Galaxy S5!\r\n<br /><a href="http://www.samsung.com/global/microsite/galaxys5/" target="_blank">Read more.</a>\r\n<br /><a href="https://www.youtube.com/watch?v=-XseHZyvGtg" target="_blank">See trailer.</a>', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-04-20 17:41:04', 0, 1, 100, '', 'http://2glux.com/images/sexypolling-demo/samsung.jpg', ''),
(3, 1, 0, 'Shatkahon', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-04-20 17:41:04', 0, 1, 100, '', '', ''),
(4, 1, 0, 'LG Optimus G Pro!\r\n<br /><a href="http://www.lg.com/us/mobile-phones/optimusgpro" target="_blank">Read more.</a>\r\n<br /><a href="https://www.youtube.com/watch?v=WAr1MYyOT20" target="_blank">See trailer.</a>', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-04-20 17:41:04', 0, 1, 100, '', 'http://2glux.com/images/sexypolling-demo/lg.jpg', ''),
(5, 1, 0, 'Srabon Megher Din', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-04-20 17:41:04', 0, 1, 10, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_sexy_categories`
--

CREATE TABLE `scgxr_sexy_categories` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `ordering` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_sexy_categories`
--

INSERT INTO `scgxr_sexy_categories` (`id`, `name`, `published`, `publish_up`, `publish_down`, `ordering`) VALUES
(1, 'Uncategorized', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_sexy_polls`
--

CREATE TABLE `scgxr_sexy_polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_category` mediumint(8) UNSIGNED NOT NULL,
  `id_template` mediumint(8) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `alias` text NOT NULL,
  `question` text NOT NULL,
  `created` datetime NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `showresultsduringpoll` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `access` int(10) UNSIGNED NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL,
  `language` char(7) NOT NULL,
  `multiple_answers` enum('0','1') NOT NULL DEFAULT '0',
  `voting_permission` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `number_answers` mediumint(8) UNSIGNED NOT NULL,
  `voting_period` float UNSIGNED NOT NULL,
  `answerpermission` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `autopublish` enum('0','1') NOT NULL DEFAULT '1',
  `baranimationtype` text NOT NULL,
  `coloranimationtype` text NOT NULL,
  `reorderinganimationtype` text NOT NULL,
  `dateformat` text NOT NULL,
  `autoopentimeline` enum('0','1') NOT NULL DEFAULT '1',
  `autoanimate` enum('0','1') NOT NULL DEFAULT '0',
  `showresultbutton` enum('0','1') NOT NULL DEFAULT '1',
  `showvotesperiod` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `stringdateformat` text NOT NULL,
  `votescountformat` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `scaledefault` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `showaddanswericon` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `showscaleicon` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `showbackicon` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `showtimelineicon` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `showtimeline` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `showvotescountinfo` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `poll_width` text NOT NULL,
  `pollalign` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `addclearboth` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `poll_margintop` smallint(5) UNSIGNED NOT NULL DEFAULT '5',
  `poll_marginbottom` smallint(5) UNSIGNED NOT NULL DEFAULT '5',
  `poll_marginleft` smallint(5) UNSIGNED NOT NULL DEFAULT '5',
  `poll_marginright` smallint(5) UNSIGNED NOT NULL DEFAULT '5',
  `classsuffix` text NOT NULL,
  `checktoken` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `ipcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checkacl` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `votechecks` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_sexy_polls`
--

INSERT INTO `scgxr_sexy_polls` (`id`, `id_user`, `id_category`, `id_template`, `name`, `alias`, `question`, `created`, `date_start`, `date_end`, `showresultsduringpoll`, `publish_up`, `publish_down`, `published`, `checked_out`, `checked_out_time`, `access`, `featured`, `ordering`, `language`, `multiple_answers`, `voting_permission`, `number_answers`, `voting_period`, `answerpermission`, `autopublish`, `baranimationtype`, `coloranimationtype`, `reorderinganimationtype`, `dateformat`, `autoopentimeline`, `autoanimate`, `showresultbutton`, `showvotesperiod`, `stringdateformat`, `votescountformat`, `scaledefault`, `showaddanswericon`, `showscaleicon`, `showbackicon`, `showtimelineicon`, `showtimeline`, `showvotescountinfo`, `poll_width`, `pollalign`, `addclearboth`, `poll_margintop`, `poll_marginbottom`, `poll_marginleft`, `poll_marginright`, `classsuffix`, `checktoken`, `ipcount`, `checkacl`, `votechecks`) VALUES
(1, 0, 1, 1, 'Poll Example', '', 'Which is your favorite Book?', '2016-04-01 19:13:00', '2016-04-01', '2016-04-30', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', 1, 1, 0, '', '1', 1, 3, 0.01, 1, '1', 'linear', 'linear', 'linear', '', '1', '0', '1', 1, 'F j, Y', 2, 1, 1, 1, 1, 1, 1, 1, '100%', 2, 1, 5, 5, 5, 5, '', 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_sexy_templates`
--

CREATE TABLE `scgxr_sexy_templates` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `styles` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_sexy_templates`
--

INSERT INTO `scgxr_sexy_templates` (`id`, `name`, `styles`, `published`, `publish_up`, `publish_down`) VALUES
(1, 'Gray', '0~#e3e3e3|1~#a19fa1|2~1|165~double|51~10|52~10|53~10|54~10|3~#828082|50~inset|46~0|47~0|48~45|49~0|5~#828082|55~inset|56~0|57~0|58~50|59~0|7~#333333|8~20|36~normal|37~normal|38~none|39~left|40~arial|63~#565757|60~0|61~0|62~0|9~#575757|10~14|41~bold|42~normal|43~none|44~left|45~arial|67~#ffffff|64~0|65~0|66~0|12~#ffffff|11~#7a7a7a|68~inset|69~0|70~0|71~55|72~-1|73~#adaaad|74~8|75~8|76~8|77~8|90~14|78~#636466|79~|80~3|81~3|82~3|83~0|84~#ffffff|89~0|85~4|86~4|87~4|88~4|272~23|273~#ffffff|251~#b3b3b3|270~#7a787a|271~#7a787a|252~12|253~bold|254~italic|255~none|256~arial|274~#424242|275~0|276~0|277~0|257~#8a8a8a|258~inset|259~0|260~0|261~25|262~-1|263~#747475|264~1|265~dotted|266~4|267~4|268~4|269~5|91~#044bd9|92~4|93~20|100~#1f59cc|101~1|127~solid|102~4|103~4|104~4|105~4|94~#5d89e8|95~inset|96~0|97~11|98~5|99~0|106~#ffffff|107~12|108~bold|109~normal|110~none|112~Arial|113~#003dad|114~0|115~-1|116~1|123~#044bd9|124~#fafafa|125~#032561|126~#1f59cc|117~#5d89e8|118~inset|119~0|120~-11|121~5|122~0|128~#fd9312|129~4|130~20|137~#ec8911|138~1|164~solid|139~4|140~4|141~4|142~4|131~#fedb4d|132~inset|133~0|134~12|135~5|136~0|143~#333333|144~12|145~bold|146~normal|147~none|149~arial|150~#fedb4d|151~0|152~-1|153~3|160~#fd9312|161~#474547|162~#fedb4d|163~#ec8911|154~#fedb4d|155~inset|156~0|157~-14|158~6|159~-2|166~#545454|167~12|168~normal|169~normal|170~none|171~arial|172~#595659|173~0|174~0|175~0|176~#333233|177~14|178~bold|179~normal|180~none|181~arial|182~#080808|183~0|184~0|185~0|186~#545454|187~12|188~normal|189~normal|190~none|191~arial|192~#ffffff|193~0|194~0|195~0|196~#333233|197~13|198~bold|199~normal|200~none|201~arial|202~#000000|203~0|204~0|205~0|206~#ffffff|207~2|208~5|209~#525252|210~12|211~normal|212~normal|213~none|214~arial|215~#ffffff|216~0|217~0|218~0|219~#b8b8b8|220~1|221~solid|222~4|223~4|224~4|225~4|226~#fcfcfc|227~#858585|228~#424242|229~#ffffff|230~#ffffff|231~#5e5e5e|232~11|233~#ee442e|234~#991200|235~#fedb4d|236~#ec8911|237~#ec8911|238~#fedb4d|239~#4f4f4f|249~#6b6b6b|248~12|250~8|240~normal|241~normal|242~none|243~arial|244~#000000|245~0|246~0|247~0|500~#4f0d0d|501~#ff0000|502~#02008f|503~#2369f5|504~#ff3f05|505~#ffee00|506~#0e4a00|507~#46ff08|508~#ff0000|509~#fa9805|510~#00356e|511~#00fbff|512~#3c0070|513~#b45eff|514~#000303|515~#0032fa|516~#000000|517~#1dd600|518~#ff001e|519~#8c00ff|520~#039488|521~#e8f000|522~#ff2929|523~#ffc20a|524~#b0005e|525~#db00e6|526~#573400|527~#ff8112|528~#3b303b|529~#bab1ba|530~#1938ff|531~#20fab1|532~#ff0000|533~#ff6600|534~#000000|535~#9e9e9e|536~#000000|537~#ccff00|538~#000000|539~#08e2ff', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Blue-Yellow', '0~#0067c8|1~#00478a|2~1|165~double|51~10|52~10|53~10|54~10|3~#00478a|50~inset|46~2|47~2|48~25|49~2|5~#054175|55~inset|56~2|57~2|58~30|59~4|7~#cce5ff|8~20|36~normal|37~normal|38~none|39~left|40~arial|63~#012d57|60~-2|61~-1|62~2|9~#fafafa|10~16|41~normal|42~normal|43~none|44~left|45~arial|67~#002e57|64~-1|65~-1|66~1|12~#02519c|11~#ffffff|68~inset|69~0|70~0|71~46|72~-7|73~#0067c8|74~4|75~4|76~4|77~4|90~14|78~#0c3d9e|79~|80~2|81~2|82~6|83~2|84~#ec8911|89~1|85~4|86~4|87~4|88~4|272~23|273~#075da8|251~#a2b1b8|270~#ffffff|271~#ffffff|252~12|253~bold|254~italic|255~none|256~arial|274~#424242|275~-1|276~-1|277~1|257~#bfe0ff|258~inset|259~0|260~0|261~18|262~-1|263~#aad2f7|264~1|265~dotted|266~10|267~8|268~10|269~10|91~#991200|92~4|93~20|100~#951100|101~1|127~solid|102~4|103~4|104~4|105~4|94~#ee442e|95~inset|96~0|97~14|98~11|99~-2|106~#ffffff|107~12|108~bold|109~normal|110~none|112~Arial|113~#0f0f0e|114~0|115~-1|116~1|123~#991200|124~#fafafa|125~#0f0f0e|126~#951100|117~#ee442e|118~inset|119~0|120~-14|121~11|122~-2|128~#fc8014|129~4|130~20|137~#ec8911|138~1|164~solid|139~4|140~4|141~4|142~4|131~#fedb4d|132~inset|133~0|134~14|135~6|136~-2|143~#474547|144~12|145~bold|146~normal|147~none|149~arial|150~#fedb4d|151~-1|152~-1|153~0|160~#fd9312|161~#474547|162~#fedb4d|163~#ec8911|154~#fedb4d|155~inset|156~0|157~-14|158~6|159~-2|166~#ffffff|167~12|168~bold|169~normal|170~none|171~arial|172~#000000|173~0|174~-1|175~1|176~#fedb4d|177~14|178~bold|179~normal|180~none|181~arial|182~#080808|183~0|184~-1|185~1|186~#ffffff|187~12|188~bold|189~normal|190~none|191~arial|192~#000000|193~0|194~-1|195~1|196~#fedb4d|197~13|198~bold|199~normal|200~none|201~arial|202~#000000|203~0|204~-1|205~1|206~#fedb4d|207~2|208~5|209~#474547|210~12|211~bold|212~normal|213~none|214~arial|215~#fadb61|216~0|217~0|218~0|219~#ec8911|220~1|221~solid|222~4|223~4|224~4|225~4|226~#fedb4d|227~#fedb4d|228~#474547|229~#ffffff|230~#ffffff|231~#951100|232~11|233~#ee442e|234~#991200|235~#fedb4d|236~#ec8911|237~#ec8911|238~#fedb4d|239~#fedb4d|249~#fedb4d|248~13|250~8|240~bold|241~normal|242~none|243~arial|244~#000000|245~0|246~-1|247~1|500~#ffee00|501~#fc8014|502~#ffee00|503~#fc8014|504~#ffee00|505~#fc8014|506~#ffee00|507~#fc8014|508~#ffee00|509~#fc8014|510~#ffee00|511~#fc8014|512~#ffee00|513~#fc8014|514~#ffee00|515~#fc8014|516~#ffee00|517~#fc8014|518~#ffee00|519~#fc8014|520~#ffee00|521~#fc8014|522~#ffee00|523~#fc8014|524~#ffee00|525~#fc8014|526~#ffee00|527~#fc8014|528~#ffee00|529~#fc8014|530~#ffee00|531~#fc8014|532~#ffee00|533~#fc8014|534~#ffee00|535~#fc8014|536~#ffee00|537~#fc8014|538~#ffee00|539~#fc8014', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Green', '0~#97a71a|1~#8c9929|2~1|165~solid|51~7|52~7|53~7|54~7|3~#707d0f|50~|46~0|47~0|48~24|49~1|5~#707d0f|55~|56~0|57~0|58~30|59~2|7~#ffffff|8~20|36~normal|37~normal|38~none|39~left|40~"lucida grande",tahoma,verdana,arial,sans-serif|63~#424242|60~-1|61~-1|62~1|9~#ffffff|10~14|41~normal|42~normal|43~none|44~left|45~"lucida grande",tahoma,verdana,arial,sans-serif|67~#363636|64~-1|65~-1|66~1|12~#6a7804|11~#fcf7fc|68~inset|69~0|70~0|71~40|72~0|73~#859606|74~6|75~6|76~6|77~6|90~18|78~#d7dbb8|79~|80~2|81~2|82~6|83~0|84~#8a8a8a|89~0|85~6|86~6|87~6|88~6|272~23|273~#818f00|251~#dbebc5|270~#ffffff|271~#ffffff|252~14|253~normal|254~normal|255~none|256~"lucida grande",tahoma,verdana,arial,sans-serif|274~#696769|275~-1|276~-1|277~1|257~#e6e8eb|258~inset|259~0|260~0|261~32|262~0|263~#879410|264~1|265~solid|266~6|267~6|268~6|269~6|91~#76bd0b|92~5|93~20|100~#006300|101~1|127~solid|102~3|103~3|104~3|105~3|94~#053d00|95~inset|96~6|97~10|98~33|99~-4|106~#ffffff|107~12|108~bold|109~normal|110~none|112~"lucida grande",tahoma,verdana,arial,sans-serif|113~#1f1f1f|114~1|115~1|116~1|123~#76bd0b|124~#ffffff|125~#000000|126~#006300|117~#053d00|118~inset|119~-6|120~-10|121~33|122~-4|128~#385ae0|129~5|130~20|137~#273b9c|138~1|164~solid|139~3|140~3|141~3|142~3|131~#03004d|132~inset|133~6|134~10|135~33|136~-4|143~#ffffff|144~12|145~bold|146~normal|147~none|149~"lucida grande",tahoma,verdana,arial,sans-serif|150~#1f1f1f|151~1|152~1|153~1|160~#385ae0|161~#ffffff|162~#000000|163~#273b9c|154~#03004d|155~inset|156~-6|157~-10|158~33|159~-4|166~#ffffff|167~12|168~normal|169~normal|170~none|171~"lucida grande",tahoma,verdana,arial,sans-serif|172~#424242|173~-1|174~-1|175~1|176~#fcf9fc|177~13|178~bold|179~normal|180~none|181~"lucida grande",tahoma,verdana,arial,sans-serif|182~#1c1c1c|183~-1|184~-1|185~1|186~#ffffff|187~11|188~normal|189~normal|190~none|191~"lucida grande",tahoma,verdana,arial,sans-serif|192~#292729|193~1|194~1|195~1|196~#ffffff|197~13|198~bold|199~normal|200~none|201~"lucida grande",tahoma,verdana,arial,sans-serif|202~#212121|203~1|204~1|205~1|206~#3a4799|207~2|208~2|209~#ffffff|210~12|211~bold|212~normal|213~none|214~arial|215~#302d30|216~1|217~1|218~1|219~#1c2d73|220~1|221~solid|222~3|223~3|224~3|225~3|226~#1c2d73|227~#1c2d73|228~#ffffff|229~#000000|230~#ffffff|231~#117009|232~5|233~#acfaa0|234~#459900|235~#fcfffc|236~#053d00|237~#ffffff|238~#4f4f4f|239~#dfdfed|249~#ffffff|248~11|250~6|240~normal|241~normal|242~none|243~"lucida grande",tahoma,verdana,arial,sans-serif|244~#292729|245~-1|246~-1|247~1|500~#ebebeb|501~#403940|502~#ebebeb|503~#ad3841|504~#ebebeb|505~#2243e6|506~#ebebeb|507~#1d8f0b|508~#ebebeb|509~#d1b500|510~#ebebeb|511~#79478c|512~#ebebeb|513~#26a682|514~#ebebeb|515~#b33f00|516~#ebebeb|517~#43870b|518~#ebebeb|519~#b03ac2|520~#ebebeb|521~#005703|522~#ebebeb|523~#0f1ec4|524~#ebebeb|525~#d8dfea|526~#ebebeb|527~#d8dfea|528~#ebebeb|529~#d8dfea|530~#ebebeb|531~#d8dfea|532~#ebebeb|533~#d8dfea|534~#ebebeb|535~#d8dfea|536~#ebebeb|537~#d8dfea|538~#ebebeb|539~#d8dfea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Orange', '0~#ff9900|1~#cc4100|2~1|165~double|51~10|52~10|53~10|54~10|3~#cc4100|50~inset|46~10|47~10|48~45|49~2|5~#cc4100|55~inset|56~15|57~15|58~50|59~2|7~#ffffff|8~20|36~normal|37~normal|38~none|39~left|40~arial|63~#c70000|60~0|61~1|62~3|9~#ffffff|10~14|41~normal|42~normal|43~none|44~left|45~arial|67~#a60000|64~1|65~0|66~3|12~#ffd494|11~#ff4400|68~inset|69~0|70~0|71~55|72~8|73~#ff6c0a|74~4|75~4|76~4|77~4|90~14|78~#666666|79~|80~2|81~2|82~2|83~0|84~#ffffff|89~0|85~4|86~4|87~4|88~4|272~23|273~#ffffff|251~#c2b8b9|270~#cc6900|271~#cc6900|252~12|253~bold|254~italic|255~none|256~arial|274~#6021de|275~0|276~0|277~0|257~#f28500|258~inset|259~0|260~0|261~25|262~3|263~#ff4400|264~1|265~dotted|266~4|267~4|268~4|269~5|91~#d40012|92~5|93~20|100~#ba0d1e|101~1|127~solid|102~12|103~12|104~12|105~12|94~#ff7886|95~inset|96~3|97~3|98~5|99~0|106~#ffffff|107~12|108~bold|109~normal|110~none|112~Arial|113~#4d0008|114~0|115~-1|116~1|123~#d9041d|124~#fafafa|125~#4d0008|126~#ba0d1e|117~#ff7886|118~inset|119~4|120~4|121~5|122~0|128~#fa8500|129~5|130~20|137~#d67200|138~1|164~solid|139~12|140~12|141~12|142~12|131~#fedb4d|132~inset|133~3|134~3|135~5|136~1|143~#333333|144~12|145~bold|146~normal|147~none|149~arial|150~#fedb4d|151~0|152~-1|153~3|160~#ff8400|161~#474547|162~#fedb4d|163~#ec8911|154~#fedb4d|155~inset|156~4|157~4|158~5|159~1|166~#ffffff|167~12|168~normal|169~normal|170~none|171~arial|172~#380c01|173~1|174~0|175~1|176~#850000|177~14|178~bold|179~normal|180~none|181~arial|182~#380c01|183~0|184~0|185~0|186~#ffffff|187~12|188~normal|189~normal|190~none|191~arial|192~#380c01|193~0|194~-1|195~1|196~#850000|197~13|198~bold|199~normal|200~none|201~arial|202~#473569|203~0|204~0|205~0|206~#ffffff|207~2|208~5|209~#661e08|210~12|211~normal|212~normal|213~none|214~arial|215~#ffffff|216~0|217~0|218~0|219~#e62e00|220~1|221~solid|222~4|223~4|224~4|225~4|226~#fcfcfc|227~#ff8605|228~#a63500|229~#ffffff|230~#ffffff|231~#c24e00|232~11|233~#ee442e|234~#991200|235~#fedb4d|236~#ec8911|237~#ec8911|238~#fedb4d|239~#850000|249~#d9d9d9|248~12|250~8|240~normal|241~normal|242~none|243~arial|244~#000000|245~0|246~0|247~0|500~#4f0d0d|501~#ff0000|502~#02008f|503~#2369f5|504~#ff3f05|505~#ffee00|506~#0e4a00|507~#46ff08|508~#ff0000|509~#fa9805|510~#00356e|511~#00fbff|512~#3c0070|513~#b45eff|514~#000303|515~#0032fa|516~#000000|517~#1dd600|518~#ff001e|519~#8c00ff|520~#039488|521~#e8f000|522~#ff2929|523~#ffc20a|524~#b0005e|525~#db00e6|526~#573400|527~#ff8112|528~#3b303b|529~#bab1ba|530~#1938ff|531~#20fab1|532~#ff0000|533~#ff6600|534~#000000|535~#9e9e9e|536~#000000|537~#ccff00|538~#000000|539~#08e2ff', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Raver', '0~#0491c9|1~#0031ad|2~1|165~solid|51~9|52~9|53~9|54~9|3~#00183d|50~inset|46~0|47~0|48~45|49~7|5~#00183d|55~inset|56~0|57~0|58~49|59~10|7~#ffffff|8~20|36~normal|37~italic|38~none|39~left|40~|63~#00183d|60~1|61~1|62~1|9~#f0f0f0|10~14|41~normal|42~italic|43~none|44~left|45~|67~#00183d|64~1|65~1|66~1|12~#05cdff|11~#00122e|68~inset|69~0|70~0|71~48|72~7|73~#004ab8|74~5|75~5|76~5|77~5|90~17|78~#000b26|79~inset|80~4|81~-2|82~23|83~-1|84~#666566|89~1|85~3|86~3|87~3|88~3|272~22|273~#05b5fa|251~#d1d1d1|270~#ffffff|271~#ffffff|252~14|253~normal|254~italic|255~none|256~|274~#000b26|275~1|276~1|277~1|257~#003042|258~inset|259~-7|260~0|261~24|262~4|263~#003042|264~1|265~dotted|266~6|267~6|268~6|269~6|91~#ff8800|92~3|93~22|100~#ec8911|101~1|127~solid|102~3|103~3|104~3|105~3|94~#fedb4d|95~inset|96~3|97~3|98~5|99~1|106~#333333|107~12|108~bold|109~normal|110~none|112~|113~#fedb4d|114~0|115~-1|116~3|123~#ff8800|124~#424242|125~#ffdc52|126~#ec8911|117~#fedb4d|118~inset|119~3|120~2|121~7|122~4|128~#ff8800|129~3|130~22|137~#ec8911|138~1|164~solid|139~3|140~3|141~3|142~3|131~#fedb4d|132~inset|133~3|134~2|135~5|136~1|143~#333333|144~12|145~bold|146~normal|147~none|149~|150~#fedb4d|151~0|152~-1|153~3|160~#ff8800|161~#424242|162~#ffdc52|163~#ec8911|154~#fedb4d|155~inset|156~3|157~2|158~7|159~4|166~#c7c3c7|167~12|168~normal|169~normal|170~none|171~|172~#00122e|173~1|174~1|175~1|176~#fffcff|177~13|178~bold|179~normal|180~none|181~|182~#00122e|183~0|184~0|185~3|186~#fafafa|187~11|188~normal|189~normal|190~none|191~|192~#00122e|193~1|194~1|195~1|196~#ffffff|197~13|198~bold|199~normal|200~none|201~|202~#00122e|203~1|204~1|205~1|206~#004b85|207~2|208~2|209~#ffffff|210~12|211~bold|212~normal|213~none|214~arial|215~#000000|216~1|217~1|218~1|219~#01445c|220~1|221~solid|222~3|223~3|224~3|225~3|226~#005a9e|227~#01445c|228~#ffffff|229~#000000|230~#fffaff|231~#470006|232~5|233~#fa0808|234~#1f0000|235~#a8a8a8|236~#282829|237~#ffffff|238~#4f4f4f|239~#ffffff|249~#fafafa|248~11|250~6|240~normal|241~normal|242~none|243~|244~#000000|245~1|246~1|247~1|500~#ebebeb|501~#403940|502~#ebebeb|503~#ad3841|504~#ebebeb|505~#2243e6|506~#ebebeb|507~#1d8f0b|508~#ebebeb|509~#d1b500|510~#ebebeb|511~#79478c|512~#ebebeb|513~#26a682|514~#ebebeb|515~#b33f00|516~#ebebeb|517~#43870b|518~#ebebeb|519~#b03ac2|520~#ebebeb|521~#005703|522~#ebebeb|523~#0f1ec4|524~#ebebeb|525~#d8dfea|526~#ebebeb|527~#d8dfea|528~#ebebeb|529~#d8dfea|530~#ebebeb|531~#d8dfea|532~#ebebeb|533~#d8dfea|534~#ebebeb|535~#d8dfea|536~#ebebeb|537~#d8dfea|538~#ebebeb|539~#d8dfea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Blue', '0~#4a64a0|1~#3c507d|2~1|165~solid|51~7|52~7|53~7|54~7|3~#4a64a0|50~|46~0|47~0|48~24|49~1|5~#4a64a0|55~|56~0|57~0|58~30|59~2|7~#ffffff|8~20|36~normal|37~normal|38~none|39~left|40~"lucida grande",tahoma,verdana,arial,sans-serif|63~#424242|60~-1|61~-1|62~1|9~#ffffff|10~14|41~normal|42~normal|43~none|44~left|45~"lucida grande",tahoma,verdana,arial,sans-serif|67~#363636|64~-1|65~-1|66~1|12~#3b568f|11~#fcf7fc|68~inset|69~1|70~0|71~32|72~-4|73~#484e91|74~5|75~5|76~5|77~5|90~18|78~#292429|79~|80~2|81~2|82~4|83~0|84~#8a8a8a|89~0|85~3|86~3|87~3|88~3|272~23|273~#163780|251~#aeb1f5|270~#ffffff|271~#ffffff|252~14|253~normal|254~normal|255~none|256~"lucida grande",tahoma,verdana,arial,sans-serif|274~#383838|275~-1|276~-1|277~1|257~#e6e8eb|258~inset|259~0|260~0|261~39|262~-3|263~#8c99b3|264~1|265~solid|266~3|267~3|268~3|269~3|91~#385ae0|92~5|93~20|100~#273b9c|101~1|127~solid|102~3|103~3|104~3|105~3|94~#03004d|95~inset|96~6|97~10|98~33|99~-4|106~#ffffff|107~12|108~bold|109~normal|110~none|112~"lucida grande",tahoma,verdana,arial,sans-serif|113~#1f1f1f|114~1|115~1|116~1|123~#385ae0|124~#ffffff|125~#000000|126~#273b9c|117~#03004d|118~inset|119~-6|120~-10|121~33|122~-4|128~#385ae0|129~5|130~20|137~#273b9c|138~1|164~solid|139~3|140~3|141~3|142~3|131~#03004d|132~inset|133~6|134~10|135~33|136~-4|143~#ffffff|144~12|145~bold|146~normal|147~none|149~"lucida grande",tahoma,verdana,arial,sans-serif|150~#1f1f1f|151~1|152~1|153~1|160~#385ae0|161~#ffffff|162~#000000|163~#273b9c|154~#03004d|155~inset|156~-6|157~-10|158~33|159~-4|166~#ffffff|167~12|168~normal|169~normal|170~none|171~"lucida grande",tahoma,verdana,arial,sans-serif|172~#424242|173~-1|174~-1|175~1|176~#fcf9fc|177~13|178~bold|179~normal|180~none|181~"lucida grande",tahoma,verdana,arial,sans-serif|182~#1c1c1c|183~-1|184~-1|185~1|186~#ffffff|187~11|188~normal|189~normal|190~none|191~"lucida grande",tahoma,verdana,arial,sans-serif|192~#292729|193~1|194~1|195~1|196~#ffffff|197~13|198~bold|199~normal|200~none|201~"lucida grande",tahoma,verdana,arial,sans-serif|202~#212121|203~1|204~1|205~1|206~#3a4799|207~2|208~2|209~#ffffff|210~12|211~bold|212~normal|213~none|214~arial|215~#302d30|216~1|217~1|218~1|219~#1c2d73|220~1|221~solid|222~3|223~3|224~3|225~3|226~#1c2d73|227~#1c2d73|228~#ffffff|229~#000000|230~#ffffff|231~#0000fc|232~5|233~#a0acfa|234~#2e41b8|235~#a8a8a8|236~#282829|237~#ffffff|238~#4f4f4f|239~#dfdfed|249~#ffffff|248~11|250~6|240~normal|241~normal|242~none|243~"lucida grande",tahoma,verdana,arial,sans-serif|244~#292729|245~-1|246~-1|247~1|500~#ebebeb|501~#403940|502~#ebebeb|503~#ad3841|504~#ebebeb|505~#2243e6|506~#ebebeb|507~#1d8f0b|508~#ebebeb|509~#d1b500|510~#ebebeb|511~#79478c|512~#ebebeb|513~#26a682|514~#ebebeb|515~#b33f00|516~#ebebeb|517~#43870b|518~#ebebeb|519~#b03ac2|520~#ebebeb|521~#005703|522~#ebebeb|523~#0f1ec4|524~#ebebeb|525~#d8dfea|526~#ebebeb|527~#d8dfea|528~#ebebeb|529~#d8dfea|530~#ebebeb|531~#d8dfea|532~#ebebeb|533~#d8dfea|534~#ebebeb|535~#d8dfea|536~#ebebeb|537~#d8dfea|538~#ebebeb|539~#d8dfea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Purple', '0~#9e76e8|1~#6021de|2~1|165~double|51~10|52~10|53~10|54~10|3~#6021de|50~inset|46~10|47~10|48~45|49~2|5~#6021de|55~inset|56~15|57~15|58~50|59~2|7~#ffffff|8~20|36~normal|37~normal|38~none|39~left|40~arial|63~#473569|60~1|61~-1|62~1|9~#ffffff|10~14|41~normal|42~normal|43~none|44~left|45~arial|67~#473569|64~1|65~-1|66~1|12~#ffffff|11~#6021de|68~inset|69~0|70~0|71~55|72~2|73~#865ae0|74~4|75~4|76~4|77~4|90~14|78~#6021de|79~|80~3|81~3|82~3|83~0|84~#ffffff|89~0|85~4|86~4|87~4|88~4|272~23|273~#ffffff|251~#b191f2|270~#6021de|271~#6021de|252~12|253~bold|254~italic|255~none|256~arial|274~#6021de|275~0|276~0|277~0|257~#6021de|258~inset|259~0|260~0|261~25|262~-1|263~#6021de|264~1|265~dotted|266~4|267~4|268~4|269~5|91~#d40012|92~5|93~20|100~#ba0d1e|101~1|127~solid|102~12|103~12|104~12|105~12|94~#ff7886|95~inset|96~3|97~3|98~5|99~0|106~#ffffff|107~12|108~bold|109~normal|110~none|112~Arial|113~#4d0008|114~0|115~-1|116~1|123~#d9041d|124~#fafafa|125~#4d0008|126~#ba0d1e|117~#ff7886|118~inset|119~4|120~4|121~5|122~0|128~#fd9312|129~5|130~20|137~#ec8911|138~1|164~solid|139~12|140~12|141~12|142~12|131~#fedb4d|132~inset|133~3|134~3|135~5|136~1|143~#333333|144~12|145~bold|146~normal|147~none|149~arial|150~#fedb4d|151~0|152~-1|153~3|160~#ff8400|161~#474547|162~#fedb4d|163~#ec8911|154~#fedb4d|155~inset|156~4|157~4|158~5|159~1|166~#ffffff|167~12|168~normal|169~normal|170~none|171~arial|172~#473569|173~1|174~0|175~1|176~#850000|177~14|178~bold|179~normal|180~none|181~arial|182~#473569|183~0|184~0|185~0|186~#ffffff|187~12|188~normal|189~normal|190~none|191~arial|192~#ffffff|193~0|194~0|195~0|196~#850000|197~13|198~bold|199~normal|200~none|201~arial|202~#473569|203~0|204~0|205~0|206~#ffffff|207~2|208~5|209~#6021de|210~12|211~normal|212~normal|213~none|214~arial|215~#ffffff|216~0|217~0|218~0|219~#6021de|220~1|221~solid|222~4|223~4|224~4|225~4|226~#fcfcfc|227~#6021de|228~#6021de|229~#ffffff|230~#ffffff|231~#6021de|232~11|233~#ee442e|234~#991200|235~#fedb4d|236~#ec8911|237~#ec8911|238~#fedb4d|239~#850000|249~#d9d9d9|248~12|250~8|240~normal|241~normal|242~none|243~arial|244~#000000|245~0|246~0|247~0|500~#4f0d0d|501~#ff0000|502~#02008f|503~#2369f5|504~#ff3f05|505~#ffee00|506~#0e4a00|507~#46ff08|508~#ff0000|509~#fa9805|510~#00356e|511~#00fbff|512~#3c0070|513~#b45eff|514~#000303|515~#0032fa|516~#000000|517~#1dd600|518~#ff001e|519~#8c00ff|520~#039488|521~#e8f000|522~#ff2929|523~#ffc20a|524~#b0005e|525~#db00e6|526~#573400|527~#ff8112|528~#3b303b|529~#bab1ba|530~#1938ff|531~#20fab1|532~#ff0000|533~#ff6600|534~#000000|535~#9e9e9e|536~#000000|537~#ccff00|538~#000000|539~#08e2ff', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Dark Purple', '0~#a700d1|1~#310040|2~1|165~solid|51~9|52~9|53~9|54~9|3~#70006c|50~inset|46~0|47~0|48~41|49~17|5~#70006c|55~inset|56~0|57~0|58~50|59~20|7~#ffffff|8~21|36~normal|37~italic|38~none|39~left|40~Geneva, Arial, SunSans-Regular, sans-serif|63~#460059|60~1|61~1|62~1|9~#ffffff|10~16|41~bold|42~italic|43~none|44~left|45~Geneva|67~#3e004f|64~1|65~1|66~1|12~#e68cff|11~#400036|68~inset|69~0|70~0|71~48|72~10|73~#70006c|74~5|75~5|76~5|77~5|90~20|78~#000b26|79~inset|80~4|81~-2|82~23|83~-1|84~#666566|89~1|85~6|86~6|87~6|88~6|272~22|273~#e796ff|251~#d1d1d1|270~#ffffff|271~#ffffff|252~14|253~normal|254~italic|255~none|256~|274~#5c005a|275~1|276~1|277~1|257~#430047|258~inset|259~0|260~0|261~28|262~2|263~#70006c|264~1|265~dotted|266~6|267~6|268~6|269~6|91~#ff8800|92~3|93~22|100~#ec8911|101~1|127~solid|102~3|103~3|104~3|105~3|94~#fedb4d|95~inset|96~3|97~3|98~5|99~1|106~#333333|107~12|108~bold|109~normal|110~none|112~|113~#fedb4d|114~0|115~-1|116~3|123~#ff8800|124~#424242|125~#ffdc52|126~#ec8911|117~#fedb4d|118~inset|119~3|120~2|121~7|122~4|128~#ff8800|129~3|130~22|137~#ec8911|138~1|164~solid|139~3|140~3|141~3|142~3|131~#fedb4d|132~inset|133~3|134~2|135~5|136~1|143~#333333|144~12|145~bold|146~normal|147~none|149~|150~#fedb4d|151~0|152~-1|153~3|160~#ff8800|161~#424242|162~#ffdc52|163~#ec8911|154~#fedb4d|155~inset|156~3|157~2|158~7|159~4|166~#c7c3c7|167~12|168~normal|169~normal|170~none|171~|172~#3d003b|173~1|174~1|175~1|176~#fffcff|177~13|178~bold|179~normal|180~none|181~|182~#3d003b|183~0|184~0|185~3|186~#fafafa|187~11|188~normal|189~normal|190~none|191~|192~#3d003b|193~1|194~1|195~1|196~#ffffff|197~13|198~bold|199~normal|200~none|201~|202~#3d003b|203~1|204~1|205~1|206~#3d003b|207~2|208~2|209~#ffffff|210~12|211~bold|212~normal|213~none|214~arial|215~#a1039e|216~1|217~1|218~1|219~#170017|220~1|221~solid|222~3|223~3|224~3|225~3|226~#5c005a|227~#3d003b|228~#ffffff|229~#3d003b|230~#fffaff|231~#3d003b|232~5|233~#ff00fb|234~#1c001c|235~#ff7fff|236~#470047|237~#ffffff|238~#470047|239~#ffffff|249~#fafafa|248~11|250~6|240~normal|241~normal|242~none|243~|244~#260026|245~1|246~1|247~1|500~#ebebeb|501~#403940|502~#ebebeb|503~#ad3841|504~#ebebeb|505~#2243e6|506~#ebebeb|507~#1d8f0b|508~#ebebeb|509~#d1b500|510~#ebebeb|511~#79478c|512~#ebebeb|513~#26a682|514~#ebebeb|515~#b33f00|516~#ebebeb|517~#43870b|518~#ebebeb|519~#b03ac2|520~#ebebeb|521~#005703|522~#ebebeb|523~#0f1ec4|524~#ebebeb|525~#d8dfea|526~#ebebeb|527~#d8dfea|528~#ebebeb|529~#d8dfea|530~#ebebeb|531~#d8dfea|532~#ebebeb|533~#d8dfea|534~#ebebeb|535~#d8dfea|536~#ebebeb|537~#d8dfea|538~#ebebeb|539~#d8dfea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Dark Black', '0~#202020|1~#111111|2~1|165~solid|51~3|52~3|53~3|54~3|3~#999999|50~inset|46~0|47~0|48~49|49~-14|5~#ffffff|55~inset|56~0|57~0|58~0|59~0|7~#ffffff|8~20|36~normal|37~normal|38~none|39~left|40~"lucida grande",tahoma,verdana,arial,sans-serif|63~#000000|60~1|61~1|62~1|9~#bababa|10~14|41~normal|42~normal|43~none|44~left|45~"lucida grande",tahoma,verdana,arial,sans-serif|67~#000000|64~1|65~1|66~1|12~#000000|11~#e6e2dd|68~inset|69~0|70~0|71~68|72~-13|73~#67686b|74~5|75~5|76~5|77~5|90~17|78~#202020|79~inset|80~4|81~-2|82~23|83~-1|84~#666566|89~1|85~3|86~3|87~3|88~3|272~23|273~#0f0f0f|251~#777777|270~#ffffff|271~#ffffff|252~14|253~normal|254~normal|255~none|256~"lucida grande",tahoma,verdana,arial,sans-serif|274~#000000|275~1|276~1|277~1|257~#aaabad|258~inset|259~0|260~0|261~23|262~-4|263~#757575|264~1|265~dotted|266~3|267~3|268~3|269~3|91~#636262|92~5|93~20|100~#757075|101~1|127~dotted|102~3|103~3|104~3|105~3|94~#000000|95~inset|96~3|97~-3|98~17|99~-4|106~#ffffff|107~12|108~bold|109~normal|110~none|112~"lucida grande",tahoma,verdana,arial,sans-serif|113~#1f1f1f|114~1|115~1|116~1|123~#636262|124~#ffffff|125~#000000|126~#3d3d3d|117~#000000|118~inset|119~3|120~-3|121~23|122~-3|128~#636262|129~5|130~20|137~#757075|138~1|164~dotted|139~3|140~3|141~3|142~3|131~#000000|132~inset|133~3|134~-3|135~17|136~-4|143~#ffffff|144~12|145~bold|146~normal|147~none|149~"lucida grande",tahoma,verdana,arial,sans-serif|150~#1f1f1f|151~1|152~1|153~1|160~#636262|161~#ffffff|162~#000000|163~#3d3d3d|154~#000000|155~inset|156~3|157~-3|158~23|159~-3|166~#c7c3c7|167~12|168~normal|169~normal|170~none|171~"lucida grande",tahoma,verdana,arial,sans-serif|172~#000000|173~1|174~1|175~1|176~#fffcff|177~13|178~bold|179~normal|180~none|181~"lucida grande",tahoma,verdana,arial,sans-serif|182~#750000|183~1|184~1|185~8|186~#fafafa|187~11|188~normal|189~normal|190~none|191~"lucida grande",tahoma,verdana,arial,sans-serif|192~#00050d|193~1|194~1|195~1|196~#ffffff|197~13|198~bold|199~normal|200~none|201~"lucida grande",tahoma,verdana,arial,sans-serif|202~#000000|203~1|204~1|205~1|206~#636262|207~2|208~2|209~#ffffff|210~12|211~bold|212~normal|213~none|214~arial|215~#000000|216~1|217~1|218~1|219~#757075|220~1|221~dotted|222~3|223~3|224~3|225~3|226~#2e2e2e|227~#2e2e2e|228~#ffffff|229~#000000|230~#fffaff|231~#696969|232~5|233~#ffffff|234~#333333|235~#a8a8a8|236~#282829|237~#ffffff|238~#4f4f4f|239~#ffffff|249~#fafafa|248~11|250~6|240~normal|241~normal|242~none|243~"lucida grande",tahoma,verdana,arial,sans-serif|244~#000000|245~1|246~1|247~1|500~#ebebeb|501~#403940|502~#ebebeb|503~#ad3841|504~#ebebeb|505~#2243e6|506~#ebebeb|507~#1d8f0b|508~#ebebeb|509~#d1b500|510~#ebebeb|511~#79478c|512~#ebebeb|513~#26a682|514~#ebebeb|515~#b33f00|516~#ebebeb|517~#43870b|518~#ebebeb|519~#b03ac2|520~#ebebeb|521~#005703|522~#ebebeb|523~#0f1ec4|524~#ebebeb|525~#d8dfea|526~#ebebeb|527~#d8dfea|528~#ebebeb|529~#d8dfea|530~#ebebeb|531~#d8dfea|532~#ebebeb|533~#d8dfea|534~#ebebeb|535~#d8dfea|536~#ebebeb|537~#d8dfea|538~#ebebeb|539~#d8dfea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Dark Red', '0~#9c000d|1~#012b03|2~1|165~solid|51~3|52~3|53~3|54~3|3~#470006|50~inset|46~0|47~0|48~49|49~19|5~#470006|55~inset|56~0|57~0|58~49|59~25|7~#ffffff|8~20|36~normal|37~normal|38~none|39~left|40~|63~#000000|60~1|61~1|62~1|9~#f0f0f0|10~14|41~normal|42~normal|43~none|44~left|45~|67~#000000|64~1|65~1|66~1|12~#ff0000|11~#2b0105|68~inset|69~0|70~0|71~45|72~10|73~#520008|74~5|75~5|76~5|77~5|90~17|78~#202020|79~inset|80~4|81~-2|82~23|83~-1|84~#666566|89~1|85~3|86~3|87~3|88~3|272~23|273~#cc0014|251~#bd9199|270~#ffffff|271~#ffffff|252~14|253~normal|254~normal|255~none|256~|274~#000000|275~1|276~1|277~1|257~#470006|258~inset|259~-7|260~0|261~24|262~7|263~#140002|264~1|265~dotted|266~3|267~3|268~3|269~3|91~#000000|92~5|93~22|100~#1f1d1f|101~1|127~solid|102~3|103~3|104~3|105~3|94~#575557|95~inset|96~3|97~2|98~8|99~1|106~#ffffff|107~12|108~bold|109~normal|110~none|112~|113~#20123d|114~0|115~-1|116~1|123~#ff0000|124~#ffffff|125~#050000|126~#1a0c0c|117~#140e0e|118~inset|119~0|120~0|121~14|122~6|128~#000000|129~5|130~22|137~#000000|138~1|164~solid|139~3|140~4|141~3|142~3|131~#575557|132~inset|133~3|134~2|135~8|136~1|143~#ffffff|144~12|145~bold|146~normal|147~none|149~|150~#20123d|151~0|152~-1|153~1|160~#000dff|161~#ffffff|162~#000000|163~#12121a|154~#000000|155~inset|156~0|157~0|158~14|159~4|166~#c7c3c7|167~12|168~normal|169~normal|170~none|171~|172~#000000|173~1|174~1|175~1|176~#fffcff|177~13|178~bold|179~normal|180~none|181~|182~#750000|183~1|184~1|185~8|186~#fafafa|187~11|188~normal|189~normal|190~none|191~|192~#00050d|193~1|194~1|195~1|196~#ffffff|197~13|198~bold|199~normal|200~none|201~|202~#000000|203~1|204~1|205~1|206~#636262|207~2|208~2|209~#ffffff|210~12|211~bold|212~normal|213~none|214~arial|215~#000000|216~1|217~1|218~1|219~#757075|220~1|221~dotted|222~3|223~3|224~3|225~3|226~#2e2e2e|227~#2e2e2e|228~#ffffff|229~#000000|230~#fffaff|231~#470006|232~5|233~#fa0808|234~#1f0000|235~#a8a8a8|236~#282829|237~#ffffff|238~#4f4f4f|239~#ffffff|249~#fafafa|248~11|250~6|240~normal|241~normal|242~none|243~|244~#000000|245~1|246~1|247~1|500~#ebebeb|501~#403940|502~#ebebeb|503~#ad3841|504~#ebebeb|505~#2243e6|506~#ebebeb|507~#1d8f0b|508~#ebebeb|509~#d1b500|510~#ebebeb|511~#79478c|512~#ebebeb|513~#26a682|514~#ebebeb|515~#b33f00|516~#ebebeb|517~#43870b|518~#ebebeb|519~#b03ac2|520~#ebebeb|521~#005703|522~#ebebeb|523~#0f1ec4|524~#ebebeb|525~#d8dfea|526~#ebebeb|527~#d8dfea|528~#ebebeb|529~#d8dfea|530~#ebebeb|531~#d8dfea|532~#ebebeb|533~#d8dfea|534~#ebebeb|535~#d8dfea|536~#ebebeb|537~#d8dfea|538~#ebebeb|539~#d8dfea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Dark Green', '0~#004f05|1~#012b03|2~1|165~solid|51~3|52~3|53~3|54~3|3~#012b03|50~inset|46~0|47~0|48~49|49~19|5~#012b03|55~inset|56~0|57~0|58~49|59~25|7~#ffffff|8~20|36~normal|37~normal|38~none|39~left|40~|63~#000000|60~1|61~1|62~1|9~#bababa|10~14|41~normal|42~normal|43~none|44~left|45~|67~#000000|64~1|65~1|66~1|12~#007004|11~#001a01|68~inset|69~0|70~0|71~45|72~2|73~#003b02|74~5|75~5|76~5|77~5|90~17|78~#202020|79~inset|80~4|81~-2|82~23|83~-1|84~#666566|89~1|85~3|86~3|87~3|88~3|272~23|273~#003d03|251~#769177|270~#ffffff|271~#ffffff|252~14|253~normal|254~normal|255~none|256~|274~#000000|275~1|276~1|277~1|257~#aaabad|258~inset|259~0|260~0|261~23|262~-4|263~#757575|264~1|265~dotted|266~3|267~3|268~3|269~3|91~#636262|92~5|93~20|100~#757075|101~1|127~dotted|102~3|103~3|104~3|105~3|94~#000000|95~inset|96~3|97~-3|98~17|99~-4|106~#ffffff|107~12|108~bold|109~normal|110~none|112~|113~#1f1f1f|114~1|115~1|116~1|123~#636262|124~#ffffff|125~#000000|126~#3d3d3d|117~#000000|118~inset|119~3|120~-3|121~23|122~-3|128~#636262|129~5|130~20|137~#757075|138~1|164~dotted|139~3|140~3|141~3|142~3|131~#000000|132~inset|133~3|134~-3|135~17|136~-4|143~#ffffff|144~12|145~bold|146~normal|147~none|149~|150~#1f1f1f|151~1|152~1|153~1|160~#636262|161~#ffffff|162~#000000|163~#3d3d3d|154~#000000|155~inset|156~3|157~-3|158~23|159~-3|166~#c7c3c7|167~12|168~normal|169~normal|170~none|171~|172~#000000|173~1|174~1|175~1|176~#fffcff|177~13|178~bold|179~normal|180~none|181~|182~#750000|183~1|184~1|185~8|186~#fafafa|187~11|188~normal|189~normal|190~none|191~|192~#00050d|193~1|194~1|195~1|196~#ffffff|197~13|198~bold|199~normal|200~none|201~|202~#000000|203~1|204~1|205~1|206~#636262|207~2|208~2|209~#ffffff|210~12|211~bold|212~normal|213~none|214~arial|215~#000000|216~1|217~1|218~1|219~#757075|220~1|221~dotted|222~3|223~3|224~3|225~3|226~#2e2e2e|227~#2e2e2e|228~#ffffff|229~#000000|230~#fffaff|231~#003d03|232~5|233~#00ad06|234~#003d03|235~#a8a8a8|236~#282829|237~#ffffff|238~#4f4f4f|239~#ffffff|249~#fafafa|248~11|250~6|240~normal|241~normal|242~none|243~|244~#000000|245~1|246~1|247~1|500~#ebebeb|501~#403940|502~#ebebeb|503~#ad3841|504~#ebebeb|505~#2243e6|506~#ebebeb|507~#1d8f0b|508~#ebebeb|509~#d1b500|510~#ebebeb|511~#79478c|512~#ebebeb|513~#26a682|514~#ebebeb|515~#b33f00|516~#ebebeb|517~#43870b|518~#ebebeb|519~#b03ac2|520~#ebebeb|521~#005703|522~#ebebeb|523~#0f1ec4|524~#ebebeb|525~#d8dfea|526~#ebebeb|527~#d8dfea|528~#ebebeb|529~#d8dfea|530~#ebebeb|531~#d8dfea|532~#ebebeb|533~#d8dfea|534~#ebebeb|535~#d8dfea|536~#ebebeb|537~#d8dfea|538~#ebebeb|539~#d8dfea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Dark Blue', '0~#0036bd|1~#012b03|2~1|165~solid|51~3|52~3|53~3|54~3|3~#001445|50~inset|46~0|47~0|48~49|49~19|5~#001445|55~inset|56~0|57~0|58~49|59~25|7~#ffffff|8~20|36~normal|37~italic|38~none|39~left|40~|63~#000b26|60~1|61~1|62~1|9~#f0f0f0|10~14|41~normal|42~italic|43~none|44~left|45~|67~#000000|64~1|65~1|66~1|12~#0550ff|11~#000b26|68~inset|69~0|70~0|71~45|72~10|73~#000b26|74~5|75~5|76~5|77~5|90~17|78~#000b26|79~inset|80~4|81~-2|82~23|83~-1|84~#666566|89~1|85~3|86~3|87~3|88~3|272~23|273~#0a56fa|251~#7591d1|270~#ffffff|271~#ffffff|252~14|253~normal|254~italic|255~none|256~|274~#000b26|275~1|276~1|277~1|257~#001340|258~inset|259~-7|260~0|261~24|262~7|263~#00091f|264~1|265~dotted|266~3|267~3|268~3|269~3|91~#ff8800|92~3|93~22|100~#ec8911|101~1|127~solid|102~3|103~3|104~3|105~3|94~#fedb4d|95~inset|96~3|97~3|98~5|99~1|106~#333333|107~12|108~bold|109~normal|110~none|112~|113~#fedb4d|114~0|115~-1|116~3|123~#ff8800|124~#424242|125~#ffdc52|126~#ec8911|117~#fedb4d|118~inset|119~3|120~2|121~7|122~4|128~#ff8800|129~3|130~22|137~#ec8911|138~1|164~solid|139~3|140~3|141~3|142~3|131~#fedb4d|132~inset|133~3|134~2|135~5|136~1|143~#333333|144~12|145~bold|146~normal|147~none|149~|150~#fedb4d|151~0|152~-1|153~3|160~#ff8800|161~#424242|162~#ffdc52|163~#ec8911|154~#fedb4d|155~inset|156~3|157~2|158~7|159~4|166~#c7c3c7|167~12|168~normal|169~normal|170~none|171~|172~#000000|173~1|174~1|175~1|176~#fffcff|177~13|178~bold|179~normal|180~none|181~|182~#750000|183~1|184~1|185~8|186~#fafafa|187~11|188~normal|189~normal|190~none|191~|192~#00050d|193~1|194~1|195~1|196~#ffffff|197~13|198~bold|199~normal|200~none|201~|202~#000000|203~1|204~1|205~1|206~#636262|207~2|208~2|209~#ffffff|210~12|211~bold|212~normal|213~none|214~arial|215~#000000|216~1|217~1|218~1|219~#757075|220~1|221~dotted|222~3|223~3|224~3|225~3|226~#2e2e2e|227~#2e2e2e|228~#ffffff|229~#000000|230~#fffaff|231~#470006|232~5|233~#fa0808|234~#1f0000|235~#a8a8a8|236~#282829|237~#ffffff|238~#4f4f4f|239~#ffffff|249~#fafafa|248~11|250~6|240~normal|241~normal|242~none|243~|244~#000000|245~1|246~1|247~1|500~#ebebeb|501~#403940|502~#ebebeb|503~#ad3841|504~#ebebeb|505~#2243e6|506~#ebebeb|507~#1d8f0b|508~#ebebeb|509~#d1b500|510~#ebebeb|511~#79478c|512~#ebebeb|513~#26a682|514~#ebebeb|515~#b33f00|516~#ebebeb|517~#43870b|518~#ebebeb|519~#b03ac2|520~#ebebeb|521~#005703|522~#ebebeb|523~#0f1ec4|524~#ebebeb|525~#d8dfea|526~#ebebeb|527~#d8dfea|528~#ebebeb|529~#d8dfea|530~#ebebeb|531~#d8dfea|532~#ebebeb|533~#d8dfea|534~#ebebeb|535~#d8dfea|536~#ebebeb|537~#d8dfea|538~#ebebeb|539~#d8dfea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Dreaming Blue', '0~#ddecf8|1~#003057|2~1|165~solid|51~0|52~0|53~0|54~0|3~#003057|50~|46~2|47~2|48~10|49~0|5~#003057|55~|56~2|57~2|58~5|59~2|7~#003057|8~20|36~normal|37~normal|38~none|39~left|40~arial|63~#012d57|60~0|61~0|62~0|9~#003057|10~16|41~normal|42~normal|43~none|44~left|45~arial|67~#002e57|64~0|65~0|66~0|12~#6b9cbd|11~#ffffff|68~inset|69~0|70~0|71~46|72~-7|73~#003057|74~0|75~0|76~0|77~0|90~14|78~#003057|79~|80~0|81~0|82~1|83~1|84~#ddecf8|89~1|85~0|86~0|87~0|88~0|272~24|273~#c9dff0|251~#003057|270~#003057|271~#003057|252~12|253~normal|254~italic|255~none|256~arial|274~#424242|275~0|276~0|277~0|257~#003057|258~inset|259~0|260~0|261~1|262~0|263~#ddecf8|264~1|265~solid|266~0|267~0|268~0|269~0|91~#00274e|92~4|93~20|100~#6b9cbd|101~1|127~solid|102~0|103~0|104~0|105~0|94~#6b9cbd|95~inset|96~0|97~14|98~11|99~-2|106~#ffffff|107~12|108~bold|109~normal|110~none|112~Arial|113~#0f0f0e|114~0|115~-1|116~1|123~#991200|124~#fafafa|125~#0f0f0e|126~#951100|117~#ee442e|118~inset|119~0|120~-14|121~11|122~-2|128~#00274e|129~4|130~20|137~#6b9cbd|138~1|164~solid|139~0|140~0|141~0|142~0|131~#6b9cbd|132~inset|133~0|134~14|135~6|136~-2|143~#ffffff|144~12|145~bold|146~normal|147~none|149~arial|150~#0f0f0e|151~-1|152~-1|153~0|160~#fd9312|161~#474547|162~#fedb4d|163~#ec8911|154~#fedb4d|155~inset|156~0|157~-14|158~6|159~-2|166~#00274e|167~12|168~normal|169~normal|170~none|171~arial|172~#000000|173~0|174~0|175~0|176~#00274e|177~14|178~bold|179~normal|180~none|181~arial|182~#080808|183~0|184~0|185~0|186~#00274e|187~12|188~normal|189~normal|190~none|191~arial|192~#000000|193~0|194~0|195~0|196~#00274e|197~13|198~bold|199~normal|200~none|201~arial|202~#000000|203~0|204~0|205~0|206~#6b9cbd|207~2|208~5|209~#003057|210~12|211~bold|212~normal|213~none|214~arial|215~#fadb61|216~0|217~0|218~0|219~#003057|220~1|221~solid|222~0|223~0|224~0|225~0|226~#003057|227~#003057|228~#ffffff|229~#ffffff|230~#ffffff|231~#003057|232~11|233~#6b9cbd|234~#003057|235~#6b9cbd|236~#003057|237~#003057|238~#6b9cbd|239~#003057|249~#003057|248~13|250~8|240~bold|241~normal|242~none|243~arial|244~#000000|245~0|246~0|247~0|500~#6b9cbd|501~#003057|502~#6b9cbd|503~#003057|504~#6b9cbd|505~#003057|506~#6b9cbd|507~#003057|508~#6b9cbd|509~#003057|510~#6b9cbd|511~#003057|512~#6b9cbd|513~#003057|514~#6b9cbd|515~#003057|516~#6b9cbd|517~#003057|518~#6b9cbd|519~#003057|520~#6b9cbd|521~#003057|522~#6b9cbd|523~#003057|524~#6b9cbd|525~#003057|526~#6b9cbd|527~#003057|528~#6b9cbd|529~#003057|530~#6b9cbd|531~#003057|532~#6b9cbd|533~#003057|534~#6b9cbd|535~#003057|536~#6b9cbd|537~#003057|538~#6b9cbd|539~#003057', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_sexy_votes`
--

CREATE TABLE `scgxr_sexy_votes` (
  `id_vote` int(10) UNSIGNED NOT NULL,
  `id_answer` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` text NOT NULL,
  `date` datetime NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `region` text NOT NULL,
  `countrycode` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_sexy_votes`
--

INSERT INTO `scgxr_sexy_votes` (`id_vote`, `id_answer`, `id_user`, `ip`, `date`, `country`, `city`, `region`, `countrycode`) VALUES
(1, 1, 0, '', '2016-04-06 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(2, 1, 0, '', '2016-04-06 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(3, 1, 0, '', '2016-04-06 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(4, 1, 0, '', '2016-04-06 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(5, 1, 0, '', '2016-04-06 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(6, 1, 0, '', '2016-04-06 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(7, 1, 0, '', '2016-04-06 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(8, 1, 0, '', '2016-04-05 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(9, 1, 0, '', '2016-04-05 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(10, 1, 0, '', '2016-04-05 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(11, 1, 0, '', '2016-04-05 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(12, 1, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(13, 1, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(14, 1, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(15, 1, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(16, 1, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(17, 1, 0, '', '2016-04-03 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(18, 1, 0, '', '2016-04-03 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(19, 1, 0, '', '2016-04-03 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(20, 1, 0, '', '2016-04-03 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(21, 1, 0, '', '2016-04-03 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(22, 1, 0, '', '2016-04-03 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(23, 1, 0, '', '2016-04-02 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(24, 1, 0, '', '2016-04-02 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(25, 1, 0, '', '2016-04-02 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(26, 1, 0, '', '2016-04-02 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(27, 1, 0, '', '2016-04-02 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(28, 1, 0, '', '2016-04-01 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(29, 1, 0, '', '2016-04-01 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(30, 1, 0, '', '2016-04-01 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(31, 1, 0, '', '2016-04-01 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(32, 1, 0, '', '2016-03-31 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(33, 1, 0, '', '2016-03-31 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(34, 1, 0, '', '2016-03-31 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(35, 1, 0, '', '2016-03-30 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(36, 1, 0, '', '2016-03-30 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(37, 2, 0, '', '2016-04-06 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(38, 2, 0, '', '2016-04-06 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(39, 2, 0, '', '2016-04-05 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(40, 2, 0, '', '2016-04-05 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(41, 2, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(42, 2, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(43, 2, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(44, 2, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(45, 2, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(46, 2, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(47, 2, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(48, 2, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(49, 2, 0, '', '2016-04-04 12:29:55', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES', 'UNITED STATES'),
(50, 2, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(51, 2, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(52, 2, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(53, 2, 0, '', '2016-04-02 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(54, 2, 0, '', '2016-04-02 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(55, 2, 0, '', '2016-04-02 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(56, 2, 0, '', '2016-04-01 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(57, 2, 0, '', '2016-04-01 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(58, 2, 0, '', '2016-04-01 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(59, 2, 0, '', '2016-04-01 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(60, 2, 0, '', '2016-04-01 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(61, 2, 0, '', '2016-04-01 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(62, 2, 0, '', '2016-04-01 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(63, 2, 0, '', '2016-04-01 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(64, 2, 0, '', '2016-04-01 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(65, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(66, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(67, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(68, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(69, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(70, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(71, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(72, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(73, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(74, 2, 0, '', '2016-03-31 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(75, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(76, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(77, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(78, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(79, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(80, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(81, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(82, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(83, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(84, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(85, 2, 0, '', '2016-03-30 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(106, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(107, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(108, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(109, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(110, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(111, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(112, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(113, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(114, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(115, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(116, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(117, 4, 0, '', '2016-04-06 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(118, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(119, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(120, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(121, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(122, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(123, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(124, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(125, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(126, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(127, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(128, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(129, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(130, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(131, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(132, 4, 0, '', '2016-04-05 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(133, 4, 0, '', '2016-04-04 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(134, 4, 0, '', '2016-04-04 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(135, 4, 0, '', '2016-04-04 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(136, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(137, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(138, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(139, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(140, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(141, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(142, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(143, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(144, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(145, 4, 0, '', '2016-04-03 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(146, 4, 0, '', '2016-04-02 12:29:55', 'ARMENIA', 'ARMENIA', 'ARMENIA', 'ARMENIA'),
(147, 4, 0, '', '2016-04-02 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(148, 4, 0, '', '2016-04-02 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(149, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(150, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(151, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(152, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(153, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(154, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(155, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(156, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(157, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(158, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(159, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(160, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(161, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(162, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(163, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(164, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(165, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(166, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(167, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(168, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(169, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(170, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(171, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(172, 4, 0, '', '2016-04-01 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(173, 4, 0, '', '2016-03-31 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(174, 4, 0, '', '2016-03-31 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(175, 4, 0, '', '2016-03-30 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(176, 4, 0, '', '2016-03-30 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(177, 4, 0, '', '2016-03-30 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(178, 4, 0, '', '2016-03-30 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(179, 4, 0, '', '2016-03-30 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(180, 4, 0, '', '2016-03-30 12:29:55', 'FRANCE', 'FRANCE', 'FRANCE', 'FRANCE'),
(212, 3, 0, '::1', '2016-04-06 08:50:59', 'Unknown', 'Unknown', 'Unknown', 'Unknown'),
(211, 3, 0, '::1', '2016-04-06 08:48:53', 'Unknown', 'Unknown', 'Unknown', 'Unknown'),
(210, 3, 0, '::1', '2016-04-06 08:42:28', 'Unknown', 'Unknown', 'Unknown', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_tags`
--

CREATE TABLE `scgxr_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_tags`
--

INSERT INTO `scgxr_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_template_styles`
--

CREATE TABLE `scgxr_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_template_styles`
--

INSERT INTO `scgxr_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_ucm_base`
--

CREATE TABLE `scgxr_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_ucm_content`
--

CREATE TABLE `scgxr_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_ucm_history`
--

CREATE TABLE `scgxr_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_ucm_history`
--

INSERT INTO `scgxr_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 2, '', '2016-04-06 05:51:23', 317, 1762, 'e6663d8fe40cb58c17da7ab554d71191180f7fe7', '{"id":1,"name":"Rima","alias":"rima","con_position":"Manager","address":"Azimpur","suburb":"","state":"","country":"","postcode":"","telephone":"4956704565","fax":"","misc":"","image":"images\\/sampledata\\/parks\\/landscape\\/727px_rainforest_bluemountainsnsw.jpg","email_to":"rima@gmail.com","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":1,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":0,"catid":"4","access":"1","mobile":"34645657567","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2016-04-06 05:51:23","created_by":"317","created_by_alias":"","modified":"2016-04-06 05:51:23","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0),
(2, 1, 1, '', '2016-04-06 05:55:30', 317, 6998, '72d9a6ba9ad7efa4f0fd300a754fd0f4e3b73ec9', '{"id":1,"asset_id":56,"title":"Flower","alias":"flower","introtext":"<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Flowers turn into leaves,\\u201d said 5-year-old Dani Swepston.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cThey also can turn into what?\\u201d Mitchem said.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Some children answered \\u201cfood.\\u201d<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cApples, oranges \\u2014 those used to be flowers first,\\u201d Mitchem said. \\u201cSquash blossoms, pumpkins for pumpkin pie. We wouldn\\u2019t have honey on toast if we didn\\u2019t have flowers.\\u201d<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u00a0<img src=\\"images\\/img-5988-44984-zoom.jpg\\" alt=\\"\\" width=\\"195\\" height=\\"194\\" \\/><\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">She handed out bags of fruit candies, saying \\u201call the things that make these fruit snacks sweet come from flowers.\\u201d<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Mitchem pulled youngsters from the audience to use as props. She dressed one boy as a flower to show floral parts.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cHis feet are roots, they help him grow, taking water and food from the soil,\\u201d she said. \\u201cHis legs are stems, helping the flower stand. His hands are leaves, helping the flower get sun.\\" In the middle of the yellow petals, the boy\\u2019s face became pollen.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">With a butterfly puppet and help from two other flower-holding youngsters, Mitchem showed how butterflies, bees and birds can transfer pollen from one flower to another.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">She showed a small-tailed possum, Poquito, that could do the same thing.<\\/p>\\r\\n<div class=\\"tnt-ads-container text-center hidden-xs\\" style=\\"font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; min-height: 1px; font-size: 14px; line-height: 20px; text-align: center !important;\\">\\u00a0<\\/div>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cAnimals love flowers,\\u201d Mitchem said.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Flowers also send messages, she said.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cIn America, we think of a red rose as saying \\u2018I love you,\\u2019\\u201d Mitchem said. \\u201cIn China, if someone gives red roses it means \\u2018I trust you to keep a secret.\\u2019\\u201d<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">And people aren\\u2019t the only ones who decorate with flowers, she said.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">As the young audience members held sacks of petals, Mitchem showed how the male bowerbird collects flowers to decorate the lady bird\\u2019s nest.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">She brought out Myrtle, a turtle, to show how turtles hide under flowers.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Reach Cathy Spaulding at (918) 684-2928 or\\u00a0<span id=\\"cloak11512\\"><a style=\\"color: #333333; box-sizing: border-box; background-color: transparent;\\" href=\\"mailto:cspaulding@muskogeephoenix.com\\">cspaulding@muskogeephoenix.com<\\/a><\\/span>.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-04-06 05:55:30","created_by":"317","created_by_alias":"","modified":"2016-04-06 05:55:30","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-04-06 05:55:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(3, 1, 1, '', '2016-04-06 05:55:51', 317, 7208, 'a393db5594ec603a67d9fb8dfaf4ae4145752f28', '{"id":1,"asset_id":"56","title":"Flower","alias":"flower","introtext":"<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Flowers turn into leaves,\\u201d said 5-year-old Dani Swepston.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cThey also can turn into what?\\u201d Mitchem said.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Some children answered \\u201cfood.\\u201d<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cApples, oranges \\u2014 those used to be flowers first,\\u201d Mitchem said. \\u201cSquash blossoms, pumpkins for pumpkin pie. We wouldn\\u2019t have honey on toast if we didn\\u2019t have flowers.\\u201d<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u00a0<img src=\\"images\\/img-5988-44984-zoom.jpg\\" alt=\\"\\" width=\\"195\\" height=\\"194\\" \\/><\\/p>\\r\\n","fulltext":"\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">She handed out bags of fruit candies, saying \\u201call the things that make these fruit snacks sweet come from flowers.\\u201d<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Mitchem pulled youngsters from the audience to use as props. She dressed one boy as a flower to show floral parts.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cHis feet are roots, they help him grow, taking water and food from the soil,\\u201d she said. \\u201cHis legs are stems, helping the flower stand. His hands are leaves, helping the flower get sun.\\" In the middle of the yellow petals, the boy\\u2019s face became pollen.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">With a butterfly puppet and help from two other flower-holding youngsters, Mitchem showed how butterflies, bees and birds can transfer pollen from one flower to another.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">She showed a small-tailed possum, Poquito, that could do the same thing.<\\/p>\\r\\n<div class=\\"tnt-ads-container text-center hidden-xs\\" style=\\"font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; min-height: 1px; font-size: 14px; line-height: 20px; text-align: center !important;\\">\\u00a0<\\/div>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cAnimals love flowers,\\u201d Mitchem said.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Flowers also send messages, she said.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">\\u201cIn America, we think of a red rose as saying \\u2018I love you,\\u2019\\u201d Mitchem said. \\u201cIn China, if someone gives red roses it means \\u2018I trust you to keep a secret.\\u2019\\u201d<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">And people aren\\u2019t the only ones who decorate with flowers, she said.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">As the young audience members held sacks of petals, Mitchem showed how the male bowerbird collects flowers to decorate the lady bird\\u2019s nest.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">She brought out Myrtle, a turtle, to show how turtles hide under flowers.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 24px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; box-sizing: border-box; color: #444444; font-size: 16px; line-height: 27px;\\">Reach Cathy Spaulding at (918) 684-2928 or\\u00a0<span id=\\"cloak11512\\"><a style=\\"color: #333333; box-sizing: border-box; background-color: transparent;\\" href=\\"mailto:cspaulding@muskogeephoenix.com\\">cspaulding@muskogeephoenix.com<\\/a><\\/span>.<\\/p>","state":1,"catid":"2","created":"2016-04-06 05:55:30","created_by":"317","created_by_alias":"","modified":"2016-04-06 05:55:51","modified_by":"317","checked_out":"317","checked_out_time":"2016-04-06 05:55:43","publish_up":"2016-04-06 05:55:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(4, 1, 11, '', '2016-04-06 05:56:28', 317, 265, 'b56bb8d8cd1feed264e035be6decc67591ae9578', '{"id":1,"name":"rima","contact":"rima","email":"rima@gmail.com","extrainfo":"","state":"1","checked_out":null,"checked_out_time":"0000-00-00 00:00:00","metakey":"","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0"}', 0),
(5, 1, 9, '', '2016-04-06 05:58:12', 317, 721, '66c3ddd65ac1e24bb9af564ba78f02f673d0af97', '{"id":1,"cid":"1","type":"0","name":"breadcrumbs banner","alias":"breadcrumbs-banner","imptotal":0,"impmade":"0","clicks":"0","clickurl":"http:\\/\\/www.idb-bisew.org","state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":1,"metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/flowers_wide.jpg\\",\\"width\\":600,\\"height\\":200,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":null,"checked_out_time":null,"publish_up":"","publish_down":"","reset":"''2016-05-06 00:00:00''","created":"2016-04-06 05:58:12","language":"*","created_by":"317","created_by_alias":"","modified":"","modified_by":null,"version":1}', 0),
(6, 1, 9, '', '2016-04-06 05:59:55', 317, 760, 'd778d6f7eb691eaef25118c8a4ebe1fd44f2c970', '{"id":1,"cid":"1","type":"0","name":"breadcrumbs banner","alias":"breadcrumbs-banner","imptotal":0,"impmade":"1","clicks":"0","clickurl":"http:\\/\\/www.idb-bisew.org","state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":"1","metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/flowers_wide.jpg\\",\\"width\\":1200,\\"height\\":100,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":"317","checked_out_time":"2016-04-06 05:59:40","publish_up":"","publish_down":"","reset":"0000-00-00 00:00:00","created":"2016-04-06 05:58:12","language":"*","created_by":"317","created_by_alias":"","modified":"2016-04-06 05:59:55","modified_by":"317","version":2}', 0),
(7, 1, 9, '', '2016-04-06 06:00:30', 317, 759, 'bfe0ce50e6e681c2c1bfc69591ff64145f6bf46d', '{"id":1,"cid":"1","type":"0","name":"breadcrumbs banner","alias":"breadcrumbs-banner","imptotal":0,"impmade":"2","clicks":"0","clickurl":"http:\\/\\/www.idb-bisew.org","state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":"1","metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/flowers_wide.jpg\\",\\"width\\":600,\\"height\\":100,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":"317","checked_out_time":"2016-04-06 06:00:15","publish_up":"","publish_down":"","reset":"0000-00-00 00:00:00","created":"2016-04-06 05:58:12","language":"*","created_by":"317","created_by_alias":"","modified":"2016-04-06 06:00:30","modified_by":"317","version":3}', 0),
(8, 1, 9, '', '2016-04-06 06:00:50', 317, 758, 'cefb2d156dc27c9c49a7ebd57ba2d99f41c4783a', '{"id":1,"cid":"1","type":"0","name":"breadcrumbs banner","alias":"breadcrumbs-banner","imptotal":0,"impmade":"3","clicks":"0","clickurl":"http:\\/\\/www.idb-bisew.org","state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":"1","metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/flowers_wide.jpg\\",\\"width\\":600,\\"height\\":50,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":"317","checked_out_time":"2016-04-06 06:00:39","publish_up":"","publish_down":"","reset":"0000-00-00 00:00:00","created":"2016-04-06 05:58:12","language":"*","created_by":"317","created_by_alias":"","modified":"2016-04-06 06:00:50","modified_by":"317","version":4}', 0),
(9, 1, 9, '', '2016-04-06 06:01:02', 317, 758, '32d988d85f981655f7978082a81709977be3678f', '{"id":1,"cid":"1","type":"0","name":"breadcrumbs banner","alias":"breadcrumbs-banner","imptotal":0,"impmade":"4","clicks":"0","clickurl":"http:\\/\\/www.idb-bisew.org","state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":"1","metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/flowers_wide.jpg\\",\\"width\\":400,\\"height\\":50,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":"317","checked_out_time":"2016-04-06 06:00:56","publish_up":"","publish_down":"","reset":"0000-00-00 00:00:00","created":"2016-04-06 05:58:12","language":"*","created_by":"317","created_by_alias":"","modified":"2016-04-06 06:01:02","modified_by":"317","version":5}', 0),
(10, 2, 11, '', '2016-04-06 06:09:04', 317, 265, 'b2e4c080115cd34ba346672d2e5ec2a2603b8228', '{"id":2,"name":"ritu","contact":"ritu","email":"ritu@gmail.com","extrainfo":"","state":"1","checked_out":null,"checked_out_time":"0000-00-00 00:00:00","metakey":"","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0"}', 0),
(11, 2, 9, '', '2016-04-06 06:09:57', 317, 682, '5c3c102695c8e5f18ccff619d580c902253bc958', '{"id":2,"cid":"2","type":"0","name":"footer banner","alias":"footer-banner","imptotal":0,"impmade":"0","clicks":"0","clickurl":false,"state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":2,"metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/shop-ad.jpg\\",\\"width\\":200,\\"height\\":50,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":null,"checked_out_time":null,"publish_up":"","publish_down":"","reset":"''2016-05-06 00:00:00''","created":"2016-04-06 06:09:57","language":"*","created_by":"317","created_by_alias":"","modified":"","modified_by":null,"version":1}', 0),
(12, 2, 9, '', '2016-04-06 06:13:12', 317, 865, '9f532c6c319d779322819589d05181aa9a63e17b', '{"id":2,"cid":"2","type":"0","name":"footer banner","alias":"footer-banner","imptotal":0,"impmade":"1","clicks":"0","clickurl":"http:\\/\\/width=560 height=315 src=https\\/\\/www.youtube.com\\/embed\\/jfFdQvicGw4?list=PL4aw5AReobaGizSlkGV6GbyQoe13Fb8q6 frameborder=0 allowfullscreen","state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":"2","metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/shop-ad.jpg\\",\\"width\\":200,\\"height\\":50,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":"317","checked_out_time":"2016-04-06 06:11:10","publish_up":"","publish_down":"","reset":"0000-00-00 00:00:00","created":"2016-04-06 06:09:57","language":"*","created_by":"317","created_by_alias":"","modified":"2016-04-06 06:13:12","modified_by":"317","version":2}', 0),
(13, 2, 9, '', '2016-04-06 06:13:59', 317, 844, '8fe9806d0db054ad255e2e4412d59836bb197209', '{"id":2,"cid":"2","type":"0","name":"footer banner","alias":"footer-banner","imptotal":0,"impmade":"2","clicks":"1","clickurl":"http:\\/\\/src=https\\/\\/www.youtube.com\\/embed\\/jfFdQvicGw4?list=PL4aw5AReobaGizSlkGV6GbyQoe13Fb8q6 frameborder=0 allowfullscreen","state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":"2","metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/shop-ad.jpg\\",\\"width\\":200,\\"height\\":50,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":"317","checked_out_time":"2016-04-06 06:13:33","publish_up":"","publish_down":"","reset":"0000-00-00 00:00:00","created":"2016-04-06 06:09:57","language":"*","created_by":"317","created_by_alias":"","modified":"2016-04-06 06:13:59","modified_by":"317","version":3}', 0),
(14, 2, 9, '', '2016-04-06 06:14:47', 317, 840, '8ddfb25a8019f7dd5fbc148a49bb3db3b9aa0d61', '{"id":2,"cid":"2","type":"0","name":"footer banner","alias":"footer-banner","imptotal":0,"impmade":"2","clicks":"1","clickurl":"http:\\/\\/https\\/\\/www.youtube.com\\/embed\\/jfFdQvicGw4?list=PL4aw5AReobaGizSlkGV6GbyQoe13Fb8q6 frameborder=0 allowfullscreen","state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":"2","metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/shop-ad.jpg\\",\\"width\\":200,\\"height\\":50,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":"317","checked_out_time":"2016-04-06 06:13:59","publish_up":"","publish_down":"","reset":"0000-00-00 00:00:00","created":"2016-04-06 06:09:57","language":"*","created_by":"317","created_by_alias":"","modified":"2016-04-06 06:14:47","modified_by":"317","version":4}', 0),
(15, 2, 9, '', '2016-04-06 06:15:24', 317, 803, '8a37a0e82c4fb48978ad5001b066e90ecba75707', '{"id":2,"cid":"2","type":"0","name":"footer banner","alias":"footer-banner","imptotal":0,"impmade":"2","clicks":"1","clickurl":"https:\\/\\/www.youtube.com\\/watch?v=jfFdQvicGw4&list=PL4aw5AReobaGizSlkGV6GbyQoe13Fb8q6","state":"1","catid":"3","description":"","custombannercode":"","sticky":"1","ordering":"2","metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/shop-ad.jpg\\",\\"width\\":200,\\"height\\":50,\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":"317","checked_out_time":"2016-04-06 06:14:47","publish_up":"","publish_down":"","reset":"0000-00-00 00:00:00","created":"2016-04-06 06:09:57","language":"*","created_by":"317","created_by_alias":"","modified":"2016-04-06 06:15:24","modified_by":"317","version":5}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_updates`
--

CREATE TABLE `scgxr_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

--
-- Dumping data for table `scgxr_updates`
--

INSERT INTO `scgxr_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(2, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(3, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(4, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(5, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(6, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(7, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(8, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(9, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(10, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(11, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(12, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(13, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(14, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(15, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.5.1.4', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(16, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.5.0.6', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(17, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(18, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(19, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(20, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(21, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(22, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(23, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(24, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(25, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(26, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(27, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(28, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(29, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(30, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(31, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(32, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(33, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.8.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(34, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(35, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(36, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(37, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(38, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(39, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(40, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(41, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(42, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(43, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(44, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(45, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(46, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(47, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(48, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(49, 6, 0, 'FOF 3.x Stable', 'FOF 3.x Stable', 'lib_fof30', 'library', '', 1, '3.0.10', '', 'http://cdn.akeebabackup.com/updates/fof3.xml', 'https://www.akeebabackup.com/component/ars/?view=Items&release_id=2445', '');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_update_sites`
--

CREATE TABLE `scgxr_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Dumping data for table `scgxr_update_sites`
--

INSERT INTO `scgxr_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1466402044, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1466402042, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1466402042, ''),
(5, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1466402042, ''),
(6, 'FOF 3.x', 'extension', 'http://cdn.akeebabackup.com/updates/fof3.xml', 1, 1466402042, ''),
(7, 'Akeeba Backup Core', 'extension', 'http://cdn.akeebabackup.com/updates/pkgakeebacore.xml', 1, 1466402042, '');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_update_sites_extensions`
--

CREATE TABLE `scgxr_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `scgxr_update_sites_extensions`
--

INSERT INTO `scgxr_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 10003),
(6, 10004),
(7, 10009);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_usergroups`
--

CREATE TABLE `scgxr_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_usergroups`
--

INSERT INTO `scgxr_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_users`
--

CREATE TABLE `scgxr_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_users`
--

INSERT INTO `scgxr_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(317, 'Super User', 'trisa', 'trisa@gmail.com', '$2y$10$yEWGslIrryUlcyKIRYSQ1.EJtRvcFHAKOQNelrFfLuUazy9XI/32a', 0, 1, '2016-04-06 05:45:11', '2016-06-20 05:52:28', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_user_keys`
--

CREATE TABLE `scgxr_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_user_notes`
--

CREATE TABLE `scgxr_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_user_profiles`
--

CREATE TABLE `scgxr_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_user_usergroup_map`
--

CREATE TABLE `scgxr_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_user_usergroup_map`
--

INSERT INTO `scgxr_user_usergroup_map` (`user_id`, `group_id`) VALUES
(317, 8);

-- --------------------------------------------------------

--
-- Table structure for table `scgxr_viewlevels`
--

CREATE TABLE `scgxr_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scgxr_viewlevels`
--

INSERT INTO `scgxr_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scgxr_akeeba_common`
--
ALTER TABLE `scgxr_akeeba_common`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `scgxr_ak_profiles`
--
ALTER TABLE `scgxr_ak_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scgxr_ak_stats`
--
ALTER TABLE `scgxr_ak_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fullstatus` (`filesexist`,`status`),
  ADD KEY `idx_stale` (`status`,`origin`);

--
-- Indexes for table `scgxr_ak_storage`
--
ALTER TABLE `scgxr_ak_storage`
  ADD PRIMARY KEY (`tag`(100));

--
-- Indexes for table `scgxr_assets`
--
ALTER TABLE `scgxr_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `scgxr_associations`
--
ALTER TABLE `scgxr_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `scgxr_banners`
--
ALTER TABLE `scgxr_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `scgxr_banner_clients`
--
ALTER TABLE `scgxr_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `scgxr_banner_tracks`
--
ALTER TABLE `scgxr_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `scgxr_categories`
--
ALTER TABLE `scgxr_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `scgxr_contact_details`
--
ALTER TABLE `scgxr_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `scgxr_content`
--
ALTER TABLE `scgxr_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `scgxr_contentitem_tag_map`
--
ALTER TABLE `scgxr_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_tag` (`tag_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `scgxr_content_frontpage`
--
ALTER TABLE `scgxr_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `scgxr_content_rating`
--
ALTER TABLE `scgxr_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `scgxr_content_types`
--
ALTER TABLE `scgxr_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `scgxr_extensions`
--
ALTER TABLE `scgxr_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `scgxr_finder_filters`
--
ALTER TABLE `scgxr_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `scgxr_finder_links`
--
ALTER TABLE `scgxr_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `scgxr_finder_links_terms0`
--
ALTER TABLE `scgxr_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_terms1`
--
ALTER TABLE `scgxr_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_terms2`
--
ALTER TABLE `scgxr_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_terms3`
--
ALTER TABLE `scgxr_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_terms4`
--
ALTER TABLE `scgxr_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_terms5`
--
ALTER TABLE `scgxr_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_terms6`
--
ALTER TABLE `scgxr_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_terms7`
--
ALTER TABLE `scgxr_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_terms8`
--
ALTER TABLE `scgxr_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_terms9`
--
ALTER TABLE `scgxr_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_termsa`
--
ALTER TABLE `scgxr_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_termsb`
--
ALTER TABLE `scgxr_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_termsc`
--
ALTER TABLE `scgxr_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_termsd`
--
ALTER TABLE `scgxr_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_termse`
--
ALTER TABLE `scgxr_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_links_termsf`
--
ALTER TABLE `scgxr_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `scgxr_finder_taxonomy`
--
ALTER TABLE `scgxr_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `scgxr_finder_taxonomy_map`
--
ALTER TABLE `scgxr_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `scgxr_finder_terms`
--
ALTER TABLE `scgxr_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `scgxr_finder_terms_common`
--
ALTER TABLE `scgxr_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `scgxr_finder_tokens`
--
ALTER TABLE `scgxr_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `scgxr_finder_tokens_aggregate`
--
ALTER TABLE `scgxr_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `scgxr_finder_types`
--
ALTER TABLE `scgxr_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `scgxr_languages`
--
ALTER TABLE `scgxr_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `scgxr_menu`
--
ALTER TABLE `scgxr_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_path` (`path`(255)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `scgxr_menu_types`
--
ALTER TABLE `scgxr_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `scgxr_messages`
--
ALTER TABLE `scgxr_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `scgxr_messages_cfg`
--
ALTER TABLE `scgxr_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `scgxr_modules`
--
ALTER TABLE `scgxr_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `scgxr_modules_menu`
--
ALTER TABLE `scgxr_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `scgxr_newsfeeds`
--
ALTER TABLE `scgxr_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `scgxr_overrider`
--
ALTER TABLE `scgxr_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scgxr_postinstall_messages`
--
ALTER TABLE `scgxr_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `scgxr_redirect_links`
--
ALTER TABLE `scgxr_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_link_old` (`old_url`),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `scgxr_schemas`
--
ALTER TABLE `scgxr_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `scgxr_session`
--
ALTER TABLE `scgxr_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `scgxr_sexy_answers`
--
ALTER TABLE `scgxr_sexy_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_poll` (`id_poll`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `order` (`ordering`);

--
-- Indexes for table `scgxr_sexy_categories`
--
ALTER TABLE `scgxr_sexy_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scgxr_sexy_polls`
--
ALTER TABLE `scgxr_sexy_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_template` (`id_template`);

--
-- Indexes for table `scgxr_sexy_templates`
--
ALTER TABLE `scgxr_sexy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scgxr_sexy_votes`
--
ALTER TABLE `scgxr_sexy_votes`
  ADD PRIMARY KEY (`id_vote`),
  ADD KEY `id_answer` (`id_answer`);

--
-- Indexes for table `scgxr_tags`
--
ALTER TABLE `scgxr_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `scgxr_template_styles`
--
ALTER TABLE `scgxr_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `scgxr_ucm_base`
--
ALTER TABLE `scgxr_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `scgxr_ucm_content`
--
ALTER TABLE `scgxr_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `scgxr_ucm_history`
--
ALTER TABLE `scgxr_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `scgxr_updates`
--
ALTER TABLE `scgxr_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `scgxr_update_sites`
--
ALTER TABLE `scgxr_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `scgxr_update_sites_extensions`
--
ALTER TABLE `scgxr_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `scgxr_usergroups`
--
ALTER TABLE `scgxr_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `scgxr_users`
--
ALTER TABLE `scgxr_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `scgxr_user_keys`
--
ALTER TABLE `scgxr_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `scgxr_user_notes`
--
ALTER TABLE `scgxr_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `scgxr_user_profiles`
--
ALTER TABLE `scgxr_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `scgxr_user_usergroup_map`
--
ALTER TABLE `scgxr_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `scgxr_viewlevels`
--
ALTER TABLE `scgxr_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scgxr_ak_profiles`
--
ALTER TABLE `scgxr_ak_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scgxr_ak_stats`
--
ALTER TABLE `scgxr_ak_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `scgxr_assets`
--
ALTER TABLE `scgxr_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `scgxr_banners`
--
ALTER TABLE `scgxr_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `scgxr_banner_clients`
--
ALTER TABLE `scgxr_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `scgxr_categories`
--
ALTER TABLE `scgxr_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `scgxr_contact_details`
--
ALTER TABLE `scgxr_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scgxr_content`
--
ALTER TABLE `scgxr_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scgxr_content_types`
--
ALTER TABLE `scgxr_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `scgxr_extensions`
--
ALTER TABLE `scgxr_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;
--
-- AUTO_INCREMENT for table `scgxr_finder_filters`
--
ALTER TABLE `scgxr_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_finder_links`
--
ALTER TABLE `scgxr_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_finder_taxonomy`
--
ALTER TABLE `scgxr_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scgxr_finder_terms`
--
ALTER TABLE `scgxr_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_finder_types`
--
ALTER TABLE `scgxr_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_languages`
--
ALTER TABLE `scgxr_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scgxr_menu`
--
ALTER TABLE `scgxr_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `scgxr_menu_types`
--
ALTER TABLE `scgxr_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `scgxr_messages`
--
ALTER TABLE `scgxr_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_modules`
--
ALTER TABLE `scgxr_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `scgxr_newsfeeds`
--
ALTER TABLE `scgxr_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_overrider`
--
ALTER TABLE `scgxr_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `scgxr_postinstall_messages`
--
ALTER TABLE `scgxr_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `scgxr_redirect_links`
--
ALTER TABLE `scgxr_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_sexy_answers`
--
ALTER TABLE `scgxr_sexy_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `scgxr_sexy_categories`
--
ALTER TABLE `scgxr_sexy_categories`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scgxr_sexy_polls`
--
ALTER TABLE `scgxr_sexy_polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scgxr_sexy_templates`
--
ALTER TABLE `scgxr_sexy_templates`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `scgxr_sexy_votes`
--
ALTER TABLE `scgxr_sexy_votes`
  MODIFY `id_vote` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `scgxr_tags`
--
ALTER TABLE `scgxr_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scgxr_template_styles`
--
ALTER TABLE `scgxr_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `scgxr_ucm_content`
--
ALTER TABLE `scgxr_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_ucm_history`
--
ALTER TABLE `scgxr_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `scgxr_updates`
--
ALTER TABLE `scgxr_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `scgxr_update_sites`
--
ALTER TABLE `scgxr_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `scgxr_usergroups`
--
ALTER TABLE `scgxr_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `scgxr_users`
--
ALTER TABLE `scgxr_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;
--
-- AUTO_INCREMENT for table `scgxr_user_keys`
--
ALTER TABLE `scgxr_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_user_notes`
--
ALTER TABLE `scgxr_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scgxr_viewlevels`
--
ALTER TABLE `scgxr_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
