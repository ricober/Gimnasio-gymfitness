-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-02-2024 a las 14:50:52
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gymfitness`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://gymfitness.test:8080', 'yes'),
(2, 'home', 'http://gymfitness.test:8080', 'yes'),
(3, 'blogname', 'GymFitness', 'yes'),
(4, 'blogdescription', 'Logra tus metas', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ricoberweb@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:20:\"gymfitness_clases/?$\";s:37:\"index.php?post_type=gymfitness_clases\";s:50:\"gymfitness_clases/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:45:\"gymfitness_clases/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:37:\"gymfitness_clases/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=gymfitness_clases&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"gymfitness_clases/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"gymfitness_clases/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"gymfitness_clases/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"gymfitness_clases/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"gymfitness_clases/(.+?)/embed/?$\";s:50:\"index.php?gymfitness_clases=$matches[1]&embed=true\";s:36:\"gymfitness_clases/(.+?)/trackback/?$\";s:44:\"index.php?gymfitness_clases=$matches[1]&tb=1\";s:56:\"gymfitness_clases/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:44:\"gymfitness_clases/(.+?)/page/?([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&paged=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&cpage=$matches[2]\";s:40:\"gymfitness_clases/(.+?)(?:/([0-9]+))?/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"acf-openstreetmap-field/index.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:4;s:47:\"gymfitness-post-types/gymfitness-post-types.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-4', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gymfitness', 'yes'),
(41, 'stylesheet', 'gymfitness', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:33:\"acf-openstreetmap-field/index.php\";a:2:{i:0;s:33:\"ACFFieldOpenstreetmap\\Core\\Plugin\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '15', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1716734060', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'es_VE', 'yes'),
(104, 'user_count', '1', 'no'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar_1\";a:0:{}s:9:\"sidebar_2\";a:1:{i:0;s:19:\"gymfitness_widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:10:{i:1707320065;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1707359665;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1707359666;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1707359775;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1707402865;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1707402975;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1707402977;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1707834871;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1707921265;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.4.1\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(127, 'theme_mods_twentytwentyfour', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701781243;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(148, 'can_compress_scripts', '1', 'yes'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(167, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:24:\"Solicitud HTTPS fallida.\";}}', 'yes'),
(168, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":4,\"critical\":1}', 'yes'),
(188, 'current_theme', 'Gym Fitness', 'yes'),
(189, 'theme_mods_gymfitness', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701781201;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(190, 'theme_switched', '', 'yes'),
(207, 'recently_activated', 'a:0:{}', 'yes'),
(240, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(248, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"ricoberweb@gmail.com\";s:7:\"version\";s:5:\"6.4.3\";s:9:\"timestamp\";i:1707228837;}', 'no'),
(372, 'acf_version', '6.2.4', 'yes'),
(444, 'recovery_mode_email_last_sent', '1706196246', 'yes'),
(445, 'widget_gymfitness_widget', 'a:2:{i:2;a:1:{s:8:\"cantidad\";s:1:\"4\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(527, 'category_children', 'a:0:{}', 'yes'),
(528, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(579, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1707316777;s:7:\"checked\";a:1:{s:10:\"gymfitness\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:10:\"gymfitness\";a:6:{s:5:\"theme\";s:10:\"gymfitness\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:40:\"https://wordpress.org/themes/gymfitness/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/gymfitness.0.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(580, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.8.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1704549492;s:7:\"version\";s:5:\"5.8.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(581, 'secret_key', '@54M5b5F<RLOAq/|wXNr:|Lj;Z]B!)],yhyJ4G2>b0,fXC%o3ZJ_B/qpAt fFk>p', 'no'),
(591, 'acf_osm_provider_tokens', 'a:0:{}', 'no'),
(592, 'acf_osm_providers', 'a:9:{s:13:\"OpenStreetMap\";a:1:{s:8:\"variants\";a:2:{s:2:\"CH\";s:1:\"0\";s:3:\"BZH\";s:1:\"0\";}}s:9:\"FreeMapSK\";s:1:\"0\";s:9:\"BasemapAT\";s:1:\"0\";s:6:\"nlmaps\";s:1:\"0\";s:8:\"NASAGIBS\";s:1:\"0\";s:3:\"NLS\";s:1:\"0\";s:10:\"JusticeMap\";s:1:\"0\";s:16:\"GeoportailFrance\";s:1:\"0\";s:8:\"OneMapSG\";s:1:\"0\";}', 'no'),
(593, 'acf-openstreetmap-field_version', '1.5.6', 'no'),
(775, 'new_admin_email', 'ricoberweb@gmail.com', 'yes'),
(787, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_VE/wordpress-6.4.3.zip\";s:6:\"locale\";s:5:\"es_VE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_VE/wordpress-6.4.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.3\";s:7:\"version\";s:5:\"6.4.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1707316766;s:15:\"version_checked\";s:5:\"6.4.3\";s:12:\"translations\";a:0:{}}', 'no'),
(789, '_site_transient_timeout_php_check_7ec5f04fef1dc985019fbdb14afad4b2', '1707833649', 'no'),
(790, '_site_transient_php_check_7ec5f04fef1dc985019fbdb14afad4b2', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(793, '_site_transient_timeout_theme_roots', '1707318576', 'no'),
(794, '_site_transient_theme_roots', 'a:1:{s:10:\"gymfitness\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(795, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1707316778;s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.3\";s:12:\"requires_php\";s:3:\"7.0\";s:14:\"upgrade_notice\";s:245:\"<p>From ACF 6.2.5, the shortcode will now escape unsafe HTML automatically. This may be a breaking change. Please view <a href=\"https://www.advancedcustomfields.com/blog/acf-6-2-5-security-release/\">our release blog</a> for more information.</p>\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.4.3\";s:12:\"requires_php\";s:3:\"7.4\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"acf-openstreetmap-field/index.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/acf-openstreetmap-field\";s:4:\"slug\";s:23:\"acf-openstreetmap-field\";s:6:\"plugin\";s:33:\"acf-openstreetmap-field/index.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/acf-openstreetmap-field/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/acf-openstreetmap-field.1.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/acf-openstreetmap-field/assets/icon-256x256.png?rev=2117994\";s:2:\"1x\";s:76:\"https://ps.w.org/acf-openstreetmap-field/assets/icon-128x128.png?rev=2117994\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/acf-openstreetmap-field/assets/banner-1544x500.png?rev=2118002\";s:2:\"1x\";s:78:\"https://ps.w.org/acf-openstreetmap-field/assets/banner-772x250.png?rev=2118002\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"3.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:7:{s:33:\"acf-openstreetmap-field/index.php\";s:5:\"1.5.6\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.4\";s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.8.5\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"3.1\";s:47:\"gymfitness-post-types/gymfitness-post-types.php\";s:5:\"1.0.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(6, 8, '_edit_lock', '1706284238:1'),
(7, 10, '_edit_lock', '1702476634:1'),
(8, 12, '_edit_lock', '1704556470:1'),
(9, 15, '_edit_lock', '1702565345:1'),
(10, 18, '_menu_item_type', 'post_type'),
(11, 18, '_menu_item_menu_item_parent', '0'),
(12, 18, '_menu_item_object_id', '8'),
(13, 18, '_menu_item_object', 'page'),
(14, 18, '_menu_item_target', ''),
(15, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 18, '_menu_item_xfn', ''),
(17, 18, '_menu_item_url', ''),
(28, 20, '_menu_item_type', 'post_type'),
(29, 20, '_menu_item_menu_item_parent', '0'),
(30, 20, '_menu_item_object_id', '12'),
(31, 20, '_menu_item_object', 'page'),
(32, 20, '_menu_item_target', ''),
(33, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 20, '_menu_item_xfn', ''),
(35, 20, '_menu_item_url', ''),
(37, 21, '_menu_item_type', 'post_type'),
(38, 21, '_menu_item_menu_item_parent', '0'),
(39, 21, '_menu_item_object_id', '10'),
(40, 21, '_menu_item_object', 'page'),
(41, 21, '_menu_item_target', ''),
(42, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 21, '_menu_item_xfn', ''),
(44, 21, '_menu_item_url', ''),
(46, 22, '_edit_last', '1'),
(47, 22, '_edit_lock', '1704205731:1'),
(48, 24, '_edit_last', '1'),
(49, 24, '_edit_lock', '1704814871:1'),
(50, 26, '_menu_item_type', 'post_type'),
(51, 26, '_menu_item_menu_item_parent', '0'),
(52, 26, '_menu_item_object_id', '24'),
(53, 26, '_menu_item_object', 'page'),
(54, 26, '_menu_item_target', ''),
(55, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 26, '_menu_item_xfn', ''),
(57, 26, '_menu_item_url', ''),
(59, 27, '_menu_item_type', 'post_type'),
(60, 27, '_menu_item_menu_item_parent', '0'),
(61, 27, '_menu_item_object_id', '22'),
(62, 27, '_menu_item_object', 'page'),
(63, 27, '_menu_item_target', ''),
(64, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 27, '_menu_item_xfn', ''),
(66, 27, '_menu_item_url', ''),
(68, 28, '_menu_item_type', 'post_type'),
(69, 28, '_menu_item_menu_item_parent', '0'),
(70, 28, '_menu_item_object_id', '15'),
(71, 28, '_menu_item_object', 'page'),
(72, 28, '_menu_item_target', ''),
(73, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 28, '_menu_item_xfn', ''),
(75, 28, '_menu_item_url', ''),
(77, 18, '_wp_old_date', '2023-12-06'),
(78, 18, '_wp_old_date', '2023-12-06'),
(79, 21, '_wp_old_date', '2023-12-06'),
(80, 21, '_wp_old_date', '2023-12-06'),
(81, 20, '_wp_old_date', '2023-12-06'),
(82, 20, '_wp_old_date', '2023-12-06'),
(83, 29, '_wp_attached_file', '2023/12/weight-lifting-1284616_1920.jpg'),
(84, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:39:\"2023/12/weight-lifting-1284616_1920.jpg\";s:8:\"filesize\";i:343467;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14543;}s:5:\"large\";a:5:{s:4:\"file\";s:40:\"weight-lifting-1284616_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80301;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7026;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52507;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:148348;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 10, '_edit_last', '1'),
(86, 10, '_thumbnail_id', '29'),
(87, 10, '_wp_page_template', 'page-contenido-centrado.php'),
(88, 34, '_edit_last', '1'),
(89, 34, '_edit_lock', '1702650858:1'),
(90, 35, '_wp_attached_file', '2023/12/gym-room-1180062_1920.jpg'),
(91, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1272;s:4:\"file\";s:33:\"2023/12/gym-room-1180062_1920.jpg\";s:8:\"filesize\";i:560069;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"gym-room-1180062_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15397;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"gym-room-1180062_1920-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:98542;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"gym-room-1180062_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7345;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"gym-room-1180062_1920-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63305;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"gym-room-1180062_1920-1536x1018.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1018;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:197053;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 36, '_wp_attached_file', '2023/12/weight-lifting-1284616_1920-1.jpg'),
(93, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:41:\"2023/12/weight-lifting-1284616_1920-1.jpg\";s:8:\"filesize\";i:343467;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14543;}s:5:\"large\";a:5:{s:4:\"file\";s:42:\"weight-lifting-1284616_1920-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80301;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7026;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52507;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:43:\"weight-lifting-1284616_1920-1-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:148348;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 37, '_wp_attached_file', '2023/12/exercise-86200_1920.jpg'),
(95, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:31:\"2023/12/exercise-86200_1920.jpg\";s:8:\"filesize\";i:757201;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"exercise-86200_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19264;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"exercise-86200_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133227;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"exercise-86200_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8919;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"exercise-86200_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83060;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"exercise-86200_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:266702;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 38, '_wp_attached_file', '2023/12/cross-fit-1126999_1920.jpg'),
(97, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1283;s:4:\"file\";s:34:\"2023/12/cross-fit-1126999_1920.jpg\";s:8:\"filesize\";i:677309;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17365;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"cross-fit-1126999_1920-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:120862;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7667;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76212;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"cross-fit-1126999_1920-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:240910;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 39, '_wp_attached_file', '2023/12/fitness-375472_1920.jpg'),
(99, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1276;s:4:\"file\";s:31:\"2023/12/fitness-375472_1920.jpg\";s:8:\"filesize\";i:425750;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"fitness-375472_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16197;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"fitness-375472_1920-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88555;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"fitness-375472_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8177;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"fitness-375472_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58482;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"fitness-375472_1920-1536x1021.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1021;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:163200;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 40, '_wp_attached_file', '2023/12/fitness-1677212_1920.jpg'),
(101, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2023/12/fitness-1677212_1920.jpg\";s:8:\"filesize\";i:437456;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"fitness-1677212_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13514;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"fitness-1677212_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82199;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"fitness-1677212_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6983;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"fitness-1677212_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52219;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"fitness-1677212_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:159284;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 350D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"48\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 41, '_wp_attached_file', '2023/12/workout-1931107_1920.jpg'),
(103, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2023/12/workout-1931107_1920.jpg\";s:8:\"filesize\";i:346677;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"workout-1931107_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10927;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"workout-1931107_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68341;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"workout-1931107_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5401;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"workout-1931107_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43226;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"workout-1931107_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:130062;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon EOS 550D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"10\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.076923076923077\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 34, '_thumbnail_id', '35'),
(105, 42, '_edit_last', '1'),
(106, 42, '_edit_lock', '1702650887:1'),
(107, 43, '_wp_attached_file', '2023/12/sports-1962574_1920.jpg'),
(108, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:31:\"2023/12/sports-1962574_1920.jpg\";s:8:\"filesize\";i:437121;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"sports-1962574_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19490;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"sports-1962574_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110473;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"sports-1962574_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9167;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"sports-1962574_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73948;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"sports-1962574_1920-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:194663;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"560\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 42, '_thumbnail_id', '43'),
(110, 44, '_edit_last', '1'),
(111, 44, '_thumbnail_id', '38'),
(112, 44, '_edit_lock', '1702650911:1'),
(113, 45, '_edit_last', '1'),
(114, 45, '_edit_lock', '1702650935:1'),
(115, 45, '_thumbnail_id', '37'),
(116, 46, '_edit_last', '1'),
(117, 46, '_edit_lock', '1702650968:1'),
(118, 46, '_thumbnail_id', '36'),
(119, 47, '_edit_last', '1'),
(120, 47, '_edit_lock', '1702650993:1'),
(121, 47, '_thumbnail_id', '40'),
(122, 48, '_edit_last', '1'),
(123, 48, '_thumbnail_id', '39'),
(124, 48, '_edit_lock', '1702651027:1'),
(125, 24, '_wp_page_template', 'template-parts/page-listado-clases.php'),
(126, 50, '_edit_last', '1'),
(127, 50, '_edit_lock', '1702652522:1'),
(128, 34, 'dia', 'Lunes y Martes'),
(129, 34, '_dia', 'field_657c5f29f22bd'),
(130, 34, 'hora_inicio', '08:00:00'),
(131, 34, '_hora_inicio', 'field_657c6157d07c7'),
(132, 34, 'hora_fin', '09:00:00'),
(133, 34, '_hora_fin', 'field_657c633ec289d'),
(134, 42, 'dia', 'Todos los dias'),
(135, 42, '_dia', 'field_657c5f29f22bd'),
(136, 42, 'hora_inicio', '00:00:00'),
(137, 42, '_hora_inicio', 'field_657c6157d07c7'),
(138, 42, 'hora_fin', '01:00:00'),
(139, 42, '_hora_fin', 'field_657c633ec289d'),
(140, 44, 'dia', 'Martes'),
(141, 44, '_dia', 'field_657c5f29f22bd'),
(142, 44, 'hora_inicio', '00:00:00'),
(143, 44, '_hora_inicio', 'field_657c6157d07c7'),
(144, 44, 'hora_fin', '01:00:00'),
(145, 44, '_hora_fin', 'field_657c633ec289d'),
(146, 45, 'dia', 'Miercoles'),
(147, 45, '_dia', 'field_657c5f29f22bd'),
(148, 45, 'hora_inicio', '00:00:00'),
(149, 45, '_hora_inicio', 'field_657c6157d07c7'),
(150, 45, 'hora_fin', '00:00:00'),
(151, 45, '_hora_fin', 'field_657c633ec289d'),
(152, 46, 'dia', 'Jueves'),
(153, 46, '_dia', 'field_657c5f29f22bd'),
(154, 46, 'hora_inicio', '00:00:00'),
(155, 46, '_hora_inicio', 'field_657c6157d07c7'),
(156, 46, 'hora_fin', '04:00:00'),
(157, 46, '_hora_fin', 'field_657c633ec289d'),
(158, 47, 'dia', 'Viernes'),
(159, 47, '_dia', 'field_657c5f29f22bd'),
(160, 47, 'hora_inicio', '00:00:00'),
(161, 47, '_hora_inicio', 'field_657c6157d07c7'),
(162, 47, 'hora_fin', '06:00:00'),
(163, 47, '_hora_fin', 'field_657c633ec289d'),
(164, 48, 'dia', 'Sabado'),
(165, 48, '_dia', 'field_657c5f29f22bd'),
(166, 48, 'hora_inicio', '00:00:00'),
(167, 48, '_hora_inicio', 'field_657c6157d07c7'),
(168, 48, 'hora_fin', '09:00:00'),
(169, 48, '_hora_fin', 'field_657c633ec289d'),
(170, 18, '_wp_old_date', '2023-12-08'),
(171, 21, '_wp_old_date', '2023-12-08'),
(172, 26, '_wp_old_date', '2023-12-08'),
(173, 27, '_wp_old_date', '2023-12-08'),
(174, 28, '_wp_old_date', '2023-12-08'),
(175, 20, '_wp_old_date', '2023-12-08'),
(176, 61, '_wp_attached_file', '2024/01/dumbbell-3324976_1920.jpg'),
(177, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:33:\"2024/01/dumbbell-3324976_1920.jpg\";s:8:\"filesize\";i:262763;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"dumbbell-3324976_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11015;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"dumbbell-3324976_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60128;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"dumbbell-3324976_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5762;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"dumbbell-3324976_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39270;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"dumbbell-3324976_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:111026;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon EOS 100D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"32\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.25\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 62, '_wp_attached_file', '2024/01/gym-455164_1920.jpg'),
(179, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1327;s:4:\"file\";s:27:\"2024/01/gym-455164_1920.jpg\";s:8:\"filesize\";i:391493;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"gym-455164_1920-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16058;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"gym-455164_1920-1024x708.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:708;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:99871;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"gym-455164_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8426;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"gym-455164_1920-768x531.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65856;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"gym-455164_1920-1536x1062.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1062;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:177727;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 63, '_wp_attached_file', '2024/01/gym-457072_1280.jpg'),
(181, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:903;s:4:\"file\";s:27:\"2024/01/gym-457072_1280.jpg\";s:8:\"filesize\";i:329936;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"gym-457072_1280-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15976;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"gym-457072_1280-1024x722.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:722;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113849;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"gym-457072_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7559;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"gym-457072_1280-768x542.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:542;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68715;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 64, '_wp_attached_file', '2024/01/home-fitness-equipment-1840858_1920.jpg'),
(183, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:47:\"2024/01/home-fitness-equipment-1840858_1920.jpg\";s:8:\"filesize\";i:809004;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15011;}s:5:\"large\";a:5:{s:4:\"file\";s:48:\"home-fitness-equipment-1840858_1920-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:140126;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6472;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82663;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:49:\"home-fitness-equipment-1840858_1920-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:299612;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 65, '_wp_attached_file', '2024/01/fitness-1882721_1920.jpg'),
(185, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2024/01/fitness-1882721_1920.jpg\";s:8:\"filesize\";i:557094;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"fitness-1882721_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11524;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"fitness-1882721_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112304;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"fitness-1882721_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5511;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"fitness-1882721_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66440;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"fitness-1882721_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:225306;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 400D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"125\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 66, '_wp_attached_file', '2024/01/training-828726_1920.jpg'),
(187, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:32:\"2024/01/training-828726_1920.jpg\";s:8:\"filesize\";i:246018;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"training-828726_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8614;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"training-828726_1920-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51231;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"training-828726_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3664;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"training-828726_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33511;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"training-828726_1920-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:98751;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 22, '_wp_page_template', 'default'),
(196, 69, '_edit_last', '1'),
(197, 69, '_edit_lock', '1704287954:1'),
(198, 70, '_wp_attached_file', '2024/01/yoga-1994667_1920.jpg'),
(199, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:29:\"2024/01/yoga-1994667_1920.jpg\";s:8:\"filesize\";i:533573;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"yoga-1994667_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16550;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"yoga-1994667_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:93458;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"yoga-1994667_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8021;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"yoga-1994667_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60115;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"yoga-1994667_1920-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:186230;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"62\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 69, '_thumbnail_id', '70'),
(205, 72, '_edit_last', '1'),
(206, 72, '_edit_lock', '1704288009:1'),
(207, 72, '_thumbnail_id', '66'),
(210, 74, '_edit_last', '1'),
(211, 74, '_edit_lock', '1704382927:1'),
(212, 74, '_thumbnail_id', '62'),
(215, 76, '_edit_last', '1'),
(216, 76, '_edit_lock', '1704381543:1'),
(217, 76, '_thumbnail_id', '37'),
(226, 79, '_form', '<label> Tu nombre\n    [text* your-name autocomplete:name] </label>\n\n<label> Tu correo electrónico\n    [email* your-email autocomplete:email] </label>\n\n<label> Asunto\n    [text* your-subject] </label>\n\n<label> Tu mensaje (opcional)\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(227, 79, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <wordpress@gymfitness.test>\";s:4:\"body\";s:195:\"De: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEsto es un aviso de que se ha enviado un formulario de contacto en tu web ([_site_title] [_site_url]).\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(228, 79, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <wordpress@gymfitness.test>\";s:4:\"body\";s:268:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste correo electrónico es un acuse de recibo del envío de tu formulario de contacto en tu web ([_site_title] [_site_url]) en la que se usó tu dirección de correo electrónico. Si no eres tú, por favor, ignora este mensaje.\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(229, 79, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:92:\"Ha habido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:75:\"Uno o más campos tienen un error. Por favor, revisa e inténtalo de nuevo.\";s:4:\"spam\";s:92:\"Ha habido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:30:\"Por favor, rellena este campo.\";s:16:\"invalid_too_long\";s:45:\"Este campo tiene una entrada demasiado larga.\";s:17:\"invalid_too_short\";s:45:\"Este campo tiene una entrada demasiado corta.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:38:\"El archivo subido es demasiado grande.\";s:23:\"upload_failed_php_error\";s:39:\"Ha habido un error al subir el archivo.\";}'),
(230, 79, '_additional_settings', ''),
(231, 79, '_locale', 'es_VE'),
(232, 79, '_hash', 'af14c342877121b36633b14e196ba3f32ae416d2'),
(233, 12, '_edit_last', '1'),
(234, 12, '_wp_page_template', 'page-contenido-centrado.php'),
(235, 81, '_edit_last', '1'),
(236, 81, '_edit_lock', '1704555593:1'),
(237, 12, 'ubicacion', 'a:7:{s:3:\"lat\";d:53.5505073;s:3:\"lng\";d:10.0006485;s:4:\"zoom\";i:11;s:7:\"markers\";a:0:{}s:7:\"address\";s:0:\"\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:7:\"version\";s:5:\"1.5.6\";}'),
(238, 12, '_ubicacion', 'field_659972595cde3'),
(239, 80, 'ubicacion', 'a:7:{s:3:\"lat\";d:53.5507112;s:3:\"lng\";d:10.0008202;s:4:\"zoom\";i:11;s:7:\"markers\";a:0:{}s:7:\"address\";s:0:\"\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:7:\"version\";s:5:\"1.5.6\";}'),
(240, 80, '_ubicacion', 'field_659972595cde3'),
(241, 84, 'ubicacion', 'a:7:{s:3:\"lat\";d:53.5505073;s:3:\"lng\";d:10.0006485;s:4:\"zoom\";i:11;s:7:\"markers\";a:0:{}s:7:\"address\";s:0:\"\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:7:\"version\";s:5:\"1.5.6\";}'),
(242, 84, '_ubicacion', 'field_659972595cde3'),
(243, 85, 'ubicacion', 'a:7:{s:3:\"lat\";d:53.5505073;s:3:\"lng\";d:10.0006485;s:4:\"zoom\";i:11;s:7:\"markers\";a:0:{}s:7:\"address\";s:0:\"\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:7:\"version\";s:5:\"1.5.6\";}'),
(244, 85, '_ubicacion', 'field_659972595cde3'),
(245, 86, 'ubicacion', 'a:7:{s:3:\"lat\";d:53.5505073;s:3:\"lng\";d:10.0006485;s:4:\"zoom\";i:11;s:7:\"markers\";a:0:{}s:7:\"address\";s:0:\"\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:7:\"version\";s:5:\"1.5.6\";}'),
(246, 86, '_ubicacion', 'field_659972595cde3'),
(254, 90, '_edit_last', '1'),
(255, 90, '_edit_lock', '1706277768:1'),
(256, 8, '_edit_last', '1'),
(257, 8, '_wp_page_template', 'default'),
(258, 8, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(259, 8, '_encabezado_bienvenida', 'field_659c02e3ac82a'),
(260, 8, 'texto_bienvenida', 'Bienvenido a nuestro sitio web donde te ayudaremos a cumplir tus metas'),
(261, 8, '_texto_bienvenida', 'field_659c032aac82b'),
(262, 9, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(263, 9, '_encabezado_bienvenida', 'field_659c02e3ac82a'),
(264, 9, 'texto_bienvenida', 'Bienvenido a nuestro sitio web donde te ayudaremos a cumplir tus metas'),
(265, 9, '_texto_bienvenida', 'field_659c032aac82b'),
(266, 8, 'area_1_imagen', '37'),
(267, 8, '_area_1_imagen', 'field_659c074ca6540'),
(268, 8, 'area_1_texto', 'Área de Yoga'),
(269, 8, '_area_1_texto', 'field_659c085ea6541'),
(270, 8, 'area_1', ''),
(271, 8, '_area_1', 'field_659c0710a653f'),
(272, 93, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(273, 93, '_encabezado_bienvenida', 'field_659c02e3ac82a'),
(274, 93, 'texto_bienvenida', 'Bienvenido a nuestro sitio web donde te ayudaremos a cumplir tus metas'),
(275, 93, '_texto_bienvenida', 'field_659c032aac82b'),
(276, 93, 'area_1_imagen', '37'),
(277, 93, '_area_1_imagen', 'field_659c074ca6540'),
(278, 93, 'area_1_texto', 'Área de Yoga'),
(279, 93, '_area_1_texto', 'field_659c085ea6541'),
(280, 93, 'area_1', ''),
(281, 93, '_area_1', 'field_659c0710a653f'),
(282, 108, '_wp_attached_file', '2024/01/fitness-375472_1920.jpg'),
(283, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1276;s:4:\"file\";s:31:\"2024/01/fitness-375472_1920.jpg\";s:8:\"filesize\";i:425750;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"fitness-375472_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16197;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"fitness-375472_1920-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88555;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"fitness-375472_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8177;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"fitness-375472_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58482;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"fitness-375472_1920-1536x1021.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1021;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:163200;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 109, '_wp_attached_file', '2024/01/machines-91849_1920.jpg'),
(285, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1220;s:4:\"file\";s:31:\"2024/01/machines-91849_1920.jpg\";s:8:\"filesize\";i:544567;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"machines-91849_1920-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17158;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"machines-91849_1920-1024x651.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:651;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:123544;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"machines-91849_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7485;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"machines-91849_1920-768x488.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78342;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:32:\"machines-91849_1920-1536x976.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:976;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:235058;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 8, 'area_2_imagen', '108'),
(287, 8, '_area_2_imagen', 'field_659c0bc27a604'),
(288, 8, 'area_2_texto', 'Área de Pesas'),
(289, 8, '_area_2_texto', 'field_659c0bc27a605'),
(290, 8, 'area_2', ''),
(291, 8, '_area_2', 'field_659c0bc27a603'),
(292, 8, 'area_3_imagen', '43'),
(293, 8, '_area_3_imagen', 'field_659c0be87a60a'),
(294, 8, 'area_3_texto', 'Área de Cardio'),
(295, 8, '_area_3_texto', 'field_659c0be87a60b'),
(296, 8, 'area_3', ''),
(297, 8, '_area_3', 'field_659c0be87a609'),
(298, 8, 'area_4_imagen', '109'),
(299, 8, '_area_4_imagen', 'field_659c0c137a60d'),
(300, 8, 'area_4_texto', 'Área de Aparatos'),
(301, 8, '_area_4_texto', 'field_659c0c137a60e'),
(302, 8, 'area_4', ''),
(303, 8, '_area_4', 'field_659c0c137a60c'),
(304, 93, 'area_2_imagen', '108'),
(305, 93, '_area_2_imagen', 'field_659c0bc27a604'),
(306, 93, 'area_2_texto', 'Área de Pesas'),
(307, 93, '_area_2_texto', 'field_659c0bc27a605'),
(308, 93, 'area_2', ''),
(309, 93, '_area_2', 'field_659c0bc27a603'),
(310, 93, 'area_3_imagen', '43'),
(311, 93, '_area_3_imagen', 'field_659c0be87a60a'),
(312, 93, 'area_3_texto', 'Área de Cardio'),
(313, 93, '_area_3_texto', 'field_659c0be87a60b'),
(314, 93, 'area_3', ''),
(315, 93, '_area_3', 'field_659c0be87a609'),
(316, 93, 'area_4_imagen', '109'),
(317, 93, '_area_4_imagen', 'field_659c0c137a60d'),
(318, 93, 'area_4_texto', 'Área de Aparatos'),
(319, 93, '_area_4_texto', 'field_659c0c137a60e'),
(320, 93, 'area_4', ''),
(321, 93, '_area_4', 'field_659c0c137a60c'),
(322, 112, '_edit_last', '1'),
(323, 112, '_edit_lock', '1704897863:1'),
(324, 114, '_edit_last', '1'),
(325, 114, '_edit_lock', '1704891722:1'),
(326, 115, '_wp_attached_file', '2024/01/people-2604149_1920.jpg'),
(327, 115, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:31:\"2024/01/people-2604149_1920.jpg\";s:8:\"filesize\";i:599302;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"people-2604149_1920-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12739;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"people-2604149_1920-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104109;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"people-2604149_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6908;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"people-2604149_1920-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63909;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:32:\"people-2604149_1920-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:213434;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 114, '_thumbnail_id', '115'),
(329, 114, 'especialidad', 'a:3:{i:0;s:5:\"pesas\";i:1;s:17:\"acondicionamiento\";i:2;s:8:\"spinning\";}'),
(330, 114, '_especialidad', 'field_659e92fbdebd1'),
(331, 116, '_edit_last', '1'),
(332, 116, '_edit_lock', '1704891802:1'),
(333, 116, '_thumbnail_id', '66'),
(334, 116, 'especialidad', 'a:2:{i:0;s:17:\"acondicionamiento\";i:1;s:8:\"spinning\";}'),
(335, 116, '_especialidad', 'field_659e92fbdebd1'),
(336, 118, '_edit_last', '1'),
(337, 118, '_edit_lock', '1704891879:1'),
(338, 119, '_wp_attached_file', '2024/01/mobility-603558_1280.jpg'),
(339, 119, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:32:\"2024/01/mobility-603558_1280.jpg\";s:8:\"filesize\";i:299740;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"mobility-603558_1280-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14798;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"mobility-603558_1280-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118503;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"mobility-603558_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7101;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"mobility-603558_1280-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72669;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 118, '_thumbnail_id', '119'),
(341, 118, 'especialidad', 'a:2:{i:0;s:5:\"pesas\";i:1;s:5:\"boxeo\";}'),
(342, 118, '_especialidad', 'field_659e92fbdebd1'),
(343, 120, '_edit_last', '1'),
(344, 120, '_edit_lock', '1704894511:1'),
(345, 121, '_wp_attached_file', '2024/01/kettlebell-2052793_1280.jpg'),
(346, 121, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:942;s:4:\"file\";s:35:\"2024/01/kettlebell-2052793_1280.jpg\";s:8:\"filesize\";i:250940;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"kettlebell-2052793_1280-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9422;}s:5:\"large\";a:5:{s:4:\"file\";s:36:\"kettlebell-2052793_1280-1024x754.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:754;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74239;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"kettlebell-2052793_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4960;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"kettlebell-2052793_1280-768x565.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:565;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41075;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(347, 120, '_thumbnail_id', '121'),
(348, 120, 'especialidad', 'a:2:{i:0;s:5:\"pesas\";i:1;s:6:\"cardio\";}'),
(349, 120, '_especialidad', 'field_659e92fbdebd1'),
(350, 124, '_edit_last', '1'),
(351, 124, '_edit_lock', '1705580379:1'),
(352, 124, '_thumbnail_id', '35'),
(353, 126, '_edit_last', '1'),
(354, 126, '_edit_lock', '1705580471:1'),
(355, 127, '_wp_attached_file', '2024/01/weights-652486_1920.jpg'),
(356, 127, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:31:\"2024/01/weights-652486_1920.jpg\";s:8:\"filesize\";i:336552;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"weights-652486_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10876;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"weights-652486_1920-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72437;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"weights-652486_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5501;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"weights-652486_1920-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46070;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"weights-652486_1920-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:139492;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(357, 126, '_thumbnail_id', '127'),
(358, 128, '_edit_last', '1'),
(359, 128, '_edit_lock', '1705580522:1'),
(360, 128, '_thumbnail_id', '121'),
(361, 134, '_wp_attached_file', '2024/01/gym-526995_1920.jpg'),
(362, 134, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:27:\"2024/01/gym-526995_1920.jpg\";s:8:\"filesize\";i:628589;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"gym-526995_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17392;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"gym-526995_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:140320;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"gym-526995_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7877;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"gym-526995_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:86760;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"gym-526995_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:269395;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(363, 8, 'hero_imagen', '134'),
(364, 8, '_hero_imagen', 'field_65b277123ba82'),
(365, 8, 'hero_heading', 'Logra tus Metas'),
(366, 8, '_hero_heading', 'field_65b276325f2b5'),
(367, 8, 'hero_texto', ' Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),
(368, 8, '_hero_texto', 'field_65b2765b5f2b6'),
(369, 110, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(370, 110, '_encabezado_bienvenida', 'field_659c02e3ac82a'),
(371, 110, 'texto_bienvenida', 'Bienvenido a nuestro sitio web donde te ayudaremos a cumplir tus metas'),
(372, 110, '_texto_bienvenida', 'field_659c032aac82b'),
(373, 110, 'area_1_imagen', '37'),
(374, 110, '_area_1_imagen', 'field_659c074ca6540'),
(375, 110, 'area_1_texto', 'Área de Yoga');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(376, 110, '_area_1_texto', 'field_659c085ea6541'),
(377, 110, 'area_1', ''),
(378, 110, '_area_1', 'field_659c0710a653f'),
(379, 110, 'area_2_imagen', '108'),
(380, 110, '_area_2_imagen', 'field_659c0bc27a604'),
(381, 110, 'area_2_texto', 'Área de Pesas'),
(382, 110, '_area_2_texto', 'field_659c0bc27a605'),
(383, 110, 'area_2', ''),
(384, 110, '_area_2', 'field_659c0bc27a603'),
(385, 110, 'area_3_imagen', '43'),
(386, 110, '_area_3_imagen', 'field_659c0be87a60a'),
(387, 110, 'area_3_texto', 'Área de Cardio'),
(388, 110, '_area_3_texto', 'field_659c0be87a60b'),
(389, 110, 'area_3', ''),
(390, 110, '_area_3', 'field_659c0be87a609'),
(391, 110, 'area_4_imagen', '109'),
(392, 110, '_area_4_imagen', 'field_659c0c137a60d'),
(393, 110, 'area_4_texto', 'Área de Aparatos'),
(394, 110, '_area_4_texto', 'field_659c0c137a60e'),
(395, 110, 'area_4', ''),
(396, 110, '_area_4', 'field_659c0c137a60c'),
(397, 110, 'hero_imagen', '134'),
(398, 110, '_hero_imagen', 'field_65b277123ba82'),
(399, 110, 'hero_heading', 'Logra tus Metas'),
(400, 110, '_hero_heading', 'field_65b276325f2b5'),
(401, 110, 'hero_texto', ' Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),
(402, 110, '_hero_texto', 'field_65b2765b5f2b6'),
(403, 135, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(404, 135, '_encabezado_bienvenida', 'field_659c02e3ac82a'),
(405, 135, 'texto_bienvenida', 'Bienvenido a nuestro sitio web donde te ayudaremos a cumplir tus metas'),
(406, 135, '_texto_bienvenida', 'field_659c032aac82b'),
(407, 135, 'area_1_imagen', '37'),
(408, 135, '_area_1_imagen', 'field_659c074ca6540'),
(409, 135, 'area_1_texto', 'Área de Yoga'),
(410, 135, '_area_1_texto', 'field_659c085ea6541'),
(411, 135, 'area_1', ''),
(412, 135, '_area_1', 'field_659c0710a653f'),
(413, 135, 'area_2_imagen', '108'),
(414, 135, '_area_2_imagen', 'field_659c0bc27a604'),
(415, 135, 'area_2_texto', 'Área de Pesas'),
(416, 135, '_area_2_texto', 'field_659c0bc27a605'),
(417, 135, 'area_2', ''),
(418, 135, '_area_2', 'field_659c0bc27a603'),
(419, 135, 'area_3_imagen', '43'),
(420, 135, '_area_3_imagen', 'field_659c0be87a60a'),
(421, 135, 'area_3_texto', 'Área de Cardio'),
(422, 135, '_area_3_texto', 'field_659c0be87a60b'),
(423, 135, 'area_3', ''),
(424, 135, '_area_3', 'field_659c0be87a609'),
(425, 135, 'area_4_imagen', '109'),
(426, 135, '_area_4_imagen', 'field_659c0c137a60d'),
(427, 135, 'area_4_texto', 'Área de Aparatos'),
(428, 135, '_area_4_texto', 'field_659c0c137a60e'),
(429, 135, 'area_4', ''),
(430, 135, '_area_4', 'field_659c0c137a60c'),
(431, 135, 'hero_imagen', '108'),
(432, 135, '_hero_imagen', 'field_65b277123ba82'),
(433, 135, 'hero_heading', 'Logra tus Metas'),
(434, 135, '_hero_heading', 'field_65b276325f2b5'),
(435, 135, 'hero_texto', ' Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),
(436, 135, '_hero_texto', 'field_65b2765b5f2b6'),
(437, 136, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(438, 136, '_encabezado_bienvenida', 'field_659c02e3ac82a'),
(439, 136, 'texto_bienvenida', 'Bienvenido a nuestro sitio web donde te ayudaremos a cumplir tus metas'),
(440, 136, '_texto_bienvenida', 'field_659c032aac82b'),
(441, 136, 'area_1_imagen', '37'),
(442, 136, '_area_1_imagen', 'field_659c074ca6540'),
(443, 136, 'area_1_texto', 'Área de Yoga'),
(444, 136, '_area_1_texto', 'field_659c085ea6541'),
(445, 136, 'area_1', ''),
(446, 136, '_area_1', 'field_659c0710a653f'),
(447, 136, 'area_2_imagen', '108'),
(448, 136, '_area_2_imagen', 'field_659c0bc27a604'),
(449, 136, 'area_2_texto', 'Área de Pesas'),
(450, 136, '_area_2_texto', 'field_659c0bc27a605'),
(451, 136, 'area_2', ''),
(452, 136, '_area_2', 'field_659c0bc27a603'),
(453, 136, 'area_3_imagen', '43'),
(454, 136, '_area_3_imagen', 'field_659c0be87a60a'),
(455, 136, 'area_3_texto', 'Área de Cardio'),
(456, 136, '_area_3_texto', 'field_659c0be87a60b'),
(457, 136, 'area_3', ''),
(458, 136, '_area_3', 'field_659c0be87a609'),
(459, 136, 'area_4_imagen', '109'),
(460, 136, '_area_4_imagen', 'field_659c0c137a60d'),
(461, 136, 'area_4_texto', 'Área de Aparatos'),
(462, 136, '_area_4_texto', 'field_659c0c137a60e'),
(463, 136, 'area_4', ''),
(464, 136, '_area_4', 'field_659c0c137a60c'),
(465, 136, 'hero_imagen', '134'),
(466, 136, '_hero_imagen', 'field_65b277123ba82'),
(467, 136, 'hero_heading', 'Logra tus Metas'),
(468, 136, '_hero_heading', 'field_65b276325f2b5'),
(469, 136, 'hero_texto', ' Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),
(470, 136, '_hero_texto', 'field_65b2765b5f2b6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2023-11-28 10:34:24', '2023-11-28 14:34:24', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://gymfitness.test:8080.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Medios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido incrustado de otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde se envían tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph -->', 'Política de Privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2023-11-28 10:34:24', '2023-11-28 14:34:24', '', 0, 'http://gymfitness.test:8080/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-11-28 10:34:28', '2023-11-28 14:34:28', '<!-- wp:page-list /-->', 'Navegación', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-11-28 10:34:28', '2023-11-28 14:34:28', '', 0, 'http://gymfitness.test:8080/2023/11/28/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2023-12-05 08:39:46', '2023-12-05 12:39:46', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2023-12-05 08:39:46', '2023-12-05 12:39:46', '', 0, 'http://gymfitness.test:8080/2023/12/05/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(8, 1, '2023-12-05 09:06:34', '2023-12-05 13:06:34', '<!-- wp:paragraph -->\r\n<p>Página de inicio </p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2024-01-26 10:06:27', '2024-01-26 14:06:27', '', 0, 'http://gymfitness.test:8080/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-12-05 09:06:34', '2023-12-05 13:06:34', '<!-- wp:paragraph -->\n<p>Página de inicio </p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-12-05 09:06:34', '2023-12-05 13:06:34', '', 8, 'http://gymfitness.test:8080/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-12-05 09:07:19', '2023-12-05 13:07:19', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc facilisis nibh id ligula venenatis pellentesque. In turpis enim, aliquam at dui feugiat, euismod fringilla risus. Nullam nec rutrum ante. Suspendisse facilisis vitae tortor ut tempus. Aenean nibh mauris, fermentum vitae nibh vitae, porttitor iaculis libero. Maecenas iaculis quis velit quis lacinia. Aliquam erat volutpat.</p>\r\n<p>Vestibulum suscipit iaculis nibh at pharetra. Nunc rutrum eros vel lacus ornare, id dictum nibh volutpat. Sed aliquam tellus nec libero pulvinar ornare. Quisque tincidunt justo sit amet hendrerit rhoncus. Vestibulum elementum tellus non maximus maximus. Maecenas dictum gravida dolor, nec aliquet purus aliquam vel. Nullam at risus venenatis, mattis nisl interdum, vulputate urna. Vivamus pharetra nisl et venenatis dictum. Fusce non justo eget velit ornare eleifend et nec velit. Aenean nisl leo, luctus sed diam pharetra, varius tempor nisl. Pellentesque interdum finibus nibh, at posuere sapien volutpat ac. Vivamus rhoncus hendrerit lorem ornare eleifend. Phasellus nec accumsan ipsum, ut euismod urna. Vivamus tincidunt ligula vitae nunc maximus consectetur. Vestibulum lobortis suscipit finibus. Ut non neque eget nulla ornare ultrices.</p>\r\n<!-- /wp:paragraph -->', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2023-12-13 09:43:11', '2023-12-13 13:43:11', '', 0, 'http://gymfitness.test:8080/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-12-05 09:07:19', '2023-12-05 13:07:19', '<!-- wp:paragraph -->\n<p>Página de nosotros</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-12-05 09:07:19', '2023-12-05 13:07:19', '', 10, 'http://gymfitness.test:8080/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-12-05 09:07:55', '2023-12-05 13:07:55', '<!-- wp:paragraph -->\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31418.15517688456!2d-68.91539135262387!3d10.158743650343775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e80b34a5b2f2585%3A0x9898a3082635499!2sChivacoa%203202%2C%20Yaracuy!5e0!3m2!1ses!2sve!4v1704555753760!5m2!1ses!2sve\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n<p>&nbsp;</p>\r\n<p>[contact-form-7 id=\"af14c34\" title=\"Formulario de contacto 1\"]</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2024-01-06 11:48:10', '2024-01-06 15:48:10', '', 0, 'http://gymfitness.test:8080/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-12-05 09:07:55', '2023-12-05 13:07:55', '<!-- wp:paragraph -->\n<p>Contacto </p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-12-05 09:07:55', '2023-12-05 13:07:55', '', 12, 'http://gymfitness.test:8080/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-12-05 09:08:16', '2023-12-05 13:08:16', '<!-- wp:paragraph -->\n<p>Página de contacto </p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-12-05 09:08:16', '2023-12-05 13:08:16', '', 12, 'http://gymfitness.test:8080/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-12-05 09:29:47', '2023-12-05 13:29:47', '<!-- wp:paragraph -->\n<p>Nuestro Blog</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-12-05 09:29:47', '2023-12-05 13:29:47', '', 0, 'http://gymfitness.test:8080/?page_id=15', 0, 'page', '', 0),
(16, 1, '2023-12-05 09:29:47', '2023-12-05 13:29:47', '<!-- wp:paragraph -->\n<p>Nuestro Blog</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-12-05 09:29:47', '2023-12-05 13:29:47', '', 15, 'http://gymfitness.test:8080/?p=16', 0, 'revision', '', 0),
(18, 1, '2023-12-18 09:47:07', '2023-12-06 14:49:36', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2023-12-18 09:47:07', '2023-12-18 13:47:07', '', 0, 'http://gymfitness.test:8080/?p=18', 1, 'nav_menu_item', '', 0),
(20, 1, '2023-12-18 09:47:07', '2023-12-06 14:49:36', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2023-12-18 09:47:07', '2023-12-18 13:47:07', '', 0, 'http://gymfitness.test:8080/?p=20', 6, 'nav_menu_item', '', 0),
(21, 1, '2023-12-18 09:47:07', '2023-12-06 14:49:37', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2023-12-18 09:47:07', '2023-12-18 13:47:07', '', 0, 'http://gymfitness.test:8080/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2023-12-08 12:03:43', '2023-12-08 16:03:43', '[gallery link=\"file\" ids=\"43,41,40,61,62,63,64,39,38,37,65,66,29,35\"]\r\n\r\nPágina de galería', 'Galería', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2024-01-02 10:44:25', '2024-01-02 14:44:25', '', 0, 'http://gymfitness.test:8080/?page_id=22', 0, 'page', '', 0),
(23, 1, '2023-12-08 12:03:43', '2023-12-08 16:03:43', 'Página de galería', 'Galería', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-12-08 12:03:43', '2023-12-08 16:03:43', '', 22, 'http://gymfitness.test:8080/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-12-08 12:04:13', '2023-12-08 16:04:13', '<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vehicula aliquet erat, non tempus urna dictum at. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 'Nuestras Clases', '', 'publish', 'closed', 'closed', '', 'clases', '', '', '2023-12-18 09:46:44', '2023-12-18 13:46:44', '', 0, 'http://gymfitness.test:8080/?page_id=24', 0, 'page', '', 0),
(25, 1, '2023-12-08 12:04:13', '2023-12-08 16:04:13', 'Página Clases', 'Clases', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-12-08 12:04:13', '2023-12-08 16:04:13', '', 24, 'http://gymfitness.test:8080/?p=25', 0, 'revision', '', 0),
(26, 1, '2023-12-18 09:47:07', '2023-12-08 16:05:57', '', 'Clases', '', 'publish', 'closed', 'closed', '', '26', '', '', '2023-12-18 09:47:07', '2023-12-18 13:47:07', '', 0, 'http://gymfitness.test:8080/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2023-12-18 09:47:07', '2023-12-08 16:05:57', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2023-12-18 09:47:07', '2023-12-18 13:47:07', '', 0, 'http://gymfitness.test:8080/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2023-12-18 09:47:07', '2023-12-08 16:05:58', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2023-12-18 09:47:07', '2023-12-18 13:47:07', '', 0, 'http://gymfitness.test:8080/?p=28', 5, 'nav_menu_item', '', 0),
(29, 1, '2023-12-09 10:19:22', '2023-12-09 14:19:22', '', 'weight-lifting-1284616_1920', '', 'inherit', 'open', 'closed', '', 'weight-lifting-1284616_1920', '', '', '2023-12-09 10:19:22', '2023-12-09 14:19:22', '', 10, 'http://gymfitness.test:8080/wp-content/uploads/2023/12/weight-lifting-1284616_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2023-12-09 10:26:30', '2023-12-09 14:26:30', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc facilisis nibh id ligula venenatis pellentesque. In turpis enim, aliquam at dui feugiat, euismod fringilla risus. Nullam nec rutrum ante. Suspendisse facilisis vitae tortor ut tempus. Aenean nibh mauris, fermentum vitae nibh vitae, porttitor iaculis libero. Maecenas iaculis quis velit quis lacinia. Aliquam erat volutpat.</p>\r\n<p>Vestibulum suscipit iaculis nibh at pharetra. Nunc rutrum eros vel lacus ornare, id dictum nibh volutpat. Sed aliquam tellus nec libero pulvinar ornare. Quisque tincidunt justo sit amet hendrerit rhoncus. Vestibulum elementum tellus non maximus maximus. Maecenas dictum gravida dolor, nec aliquet purus aliquam vel. Nullam at risus venenatis, mattis nisl interdum, vulputate urna. Vivamus pharetra nisl et venenatis dictum. Fusce non justo eget velit ornare eleifend et nec velit. Aenean nisl leo, luctus sed diam pharetra, varius tempor nisl. Pellentesque interdum finibus nibh, at posuere sapien volutpat ac. Vivamus rhoncus hendrerit lorem ornare eleifend. Phasellus nec accumsan ipsum, ut euismod urna. Vivamus tincidunt ligula vitae nunc maximus consectetur. Vestibulum lobortis suscipit finibus. Ut non neque eget nulla ornare ultrices.</p>\r\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-12-09 10:26:30', '2023-12-09 14:26:30', '', 10, 'http://gymfitness.test:8080/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-12-13 09:41:44', '2023-12-13 13:41:44', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc facilisis nibh id ligula venenatis pellentesque. In turpis enim, aliquam at dui feugiat, euismod fringilla risus. Nullam nec rutrum ante. Suspendisse facilisis vitae tortor ut tempus. Aenean nibh mauris, fermentum vitae nibh vitae, porttitor iaculis libero. Maecenas iaculis quis velit quis lacinia. Aliquam erat volutpat.</p>\r\n<p>Vestibulum suscipit iaculis nibh at pharetra. Nunc rutrum eros vel lacus ornare, id dictum nibh volutpat. Sed aliquam tellus nec libero pulvinar ornare. Quisque tincidunt justo sit amet hendrerit rhoncus. Vestibulum elementum tellus non maximus maximus. Maecenas dictum gravida dolor, nec aliquet purus aliquam vel. Nullam at risus venenatis, mattis nisl interdum, vulputate urna. Vivamus pharetra nisl et venenatis dictum. Fusce non justo eget velit ornare eleifend et nec velit. Aenean nisl leo, luctus sed diam pharetra, varius tempor nisl. Pellentesque interdum finibus nibh, at posuere sapien volutpat ac. Vivamus rhoncus hendrerit lorem ornare eleifend. Phasellus nec accumsan ipsum, ut euismod urna. Vivamus tincidunt ligula vitae nunc maximus consectetur. Vestibulum lobortis suscipit finibus. Ut non neque eget nulla ornare ultrices.</p>\r\n<!-- /wp:paragraph -->', 'Sobre Nosotros', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-12-13 09:41:44', '2023-12-13 13:41:44', '', 10, 'http://gymfitness.test:8080/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-12-13 09:43:11', '2023-12-13 13:43:11', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc facilisis nibh id ligula venenatis pellentesque. In turpis enim, aliquam at dui feugiat, euismod fringilla risus. Nullam nec rutrum ante. Suspendisse facilisis vitae tortor ut tempus. Aenean nibh mauris, fermentum vitae nibh vitae, porttitor iaculis libero. Maecenas iaculis quis velit quis lacinia. Aliquam erat volutpat.</p>\r\n<p>Vestibulum suscipit iaculis nibh at pharetra. Nunc rutrum eros vel lacus ornare, id dictum nibh volutpat. Sed aliquam tellus nec libero pulvinar ornare. Quisque tincidunt justo sit amet hendrerit rhoncus. Vestibulum elementum tellus non maximus maximus. Maecenas dictum gravida dolor, nec aliquet purus aliquam vel. Nullam at risus venenatis, mattis nisl interdum, vulputate urna. Vivamus pharetra nisl et venenatis dictum. Fusce non justo eget velit ornare eleifend et nec velit. Aenean nisl leo, luctus sed diam pharetra, varius tempor nisl. Pellentesque interdum finibus nibh, at posuere sapien volutpat ac. Vivamus rhoncus hendrerit lorem ornare eleifend. Phasellus nec accumsan ipsum, ut euismod urna. Vivamus tincidunt ligula vitae nunc maximus consectetur. Vestibulum lobortis suscipit finibus. Ut non neque eget nulla ornare ultrices.</p>\r\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-12-13 09:43:11', '2023-12-13 13:43:11', '', 10, 'http://gymfitness.test:8080/?p=32', 0, 'revision', '', 0),
(34, 1, '2023-12-14 10:38:56', '2023-12-14 14:38:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac sapien in magna porttitor maximus. Quisque malesuada mi id rhoncus imperdiet. Sed volutpat et leo ac porta. Etiam finibus venenatis libero, vitae luctus felis rutrum at. Duis vitae purus in sem mollis tempor id nec neque. Proin aliquam enim et condimentum tempus. Quisque id viverra mauris. Morbi vitae justo non lacus tempus euismod a quis justo. Nulla lacus libero, ultrices consequat porta et, aliquam non nibh. Etiam imperdiet vulputate consequat. Curabitur dui nibh, molestie in diam sed, tempor tristique massa. Mauris ac augue a velit porta malesuada eget sed massa.\r\n\r\nPellentesque nec nunc lorem. Donec tempor eu est in efficitur. Donec non ipsum id enim rhoncus varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam at ex sollicitudin, porta lacus vel, fringilla orci. Praesent interdum, purus sit amet rhoncus facilisis, lectus tellus iaculis nisi, eu pharetra enim tellus id risus. Suspendisse eu velit tellus. Ut commodo ante non purus volutpat, in imperdiet risus placerat. Sed quis dapibus ligula. Nulla bibendum non orci non tempus. Proin a libero a orci pulvinar laoreet vitae sit amet nunc. Suspendisse posuere turpis mauris. Nulla feugiat egestas ante, eu volutpat orci pretium quis.\r\n\r\nQuisque elementum nibh ac quam pharetra convallis. Quisque congue pharetra sodales. Cras semper quam sit amet lacus luctus consectetur. Fusce dignissim, nibh ut condimentum gravida, dolor ex semper nisi, venenatis finibus sapien enim non risus. Cras ornare dui consequat nunc pharetra molestie. Pellentesque at pulvinar leo. Donec at consequat arcu. Cras nec sollicitudin justo.', 'Cardio para Principiantes', '', 'publish', 'closed', 'closed', '', 'cardio-para-principiantes', '', '', '2023-12-15 10:36:03', '2023-12-15 14:36:03', '', 0, 'http://gymfitness.test:8080/?post_type=gymfitness_clases&#038;p=34', 0, 'gymfitness_clases', '', 0),
(35, 1, '2023-12-14 10:36:11', '2023-12-14 14:36:11', '', 'gym-room-1180062_1920', '', 'inherit', 'open', 'closed', '', 'gym-room-1180062_1920', '', '', '2023-12-14 10:36:11', '2023-12-14 14:36:11', '', 34, 'http://gymfitness.test:8080/wp-content/uploads/2023/12/gym-room-1180062_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2023-12-14 10:36:41', '2023-12-14 14:36:41', '', 'weight-lifting-1284616_1920', '', 'inherit', 'open', 'closed', '', 'weight-lifting-1284616_1920-2', '', '', '2023-12-14 10:36:41', '2023-12-14 14:36:41', '', 34, 'http://gymfitness.test:8080/wp-content/uploads/2023/12/weight-lifting-1284616_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2023-12-14 10:37:07', '2023-12-14 14:37:07', '', 'exercise-86200_1920', '', 'inherit', 'open', 'closed', '', 'exercise-86200_1920', '', '', '2023-12-14 10:37:07', '2023-12-14 14:37:07', '', 34, 'http://gymfitness.test:8080/wp-content/uploads/2023/12/exercise-86200_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2023-12-14 10:37:47', '2023-12-14 14:37:47', '', 'cross-fit-1126999_1920', '', 'inherit', 'open', 'closed', '', 'cross-fit-1126999_1920', '', '', '2023-12-14 10:37:47', '2023-12-14 14:37:47', '', 34, 'http://gymfitness.test:8080/wp-content/uploads/2023/12/cross-fit-1126999_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2023-12-14 10:38:03', '2023-12-14 14:38:03', '', 'fitness-375472_1920', '', 'inherit', 'open', 'closed', '', 'fitness-375472_1920', '', '', '2023-12-14 10:38:03', '2023-12-14 14:38:03', '', 34, 'http://gymfitness.test:8080/wp-content/uploads/2023/12/fitness-375472_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2023-12-14 10:38:15', '2023-12-14 14:38:15', '', 'fitness-1677212_1920', '', 'inherit', 'open', 'closed', '', 'fitness-1677212_1920', '', '', '2023-12-14 10:38:15', '2023-12-14 14:38:15', '', 34, 'http://gymfitness.test:8080/wp-content/uploads/2023/12/fitness-1677212_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2023-12-14 10:38:26', '2023-12-14 14:38:26', '', 'workout-1931107_1920', '', 'inherit', 'open', 'closed', '', 'workout-1931107_1920', '', '', '2023-12-14 10:38:26', '2023-12-14 14:38:26', '', 34, 'http://gymfitness.test:8080/wp-content/uploads/2023/12/workout-1931107_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2023-12-14 10:41:17', '2023-12-14 14:41:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac sapien in magna porttitor maximus. Quisque malesuada mi id rhoncus imperdiet. Sed volutpat et leo ac porta. Etiam finibus venenatis libero, vitae luctus felis rutrum at. Duis vitae purus in sem mollis tempor id nec neque. Proin aliquam enim et condimentum tempus. Quisque id viverra mauris. Morbi vitae justo non lacus tempus euismod a quis justo. Nulla lacus libero, ultrices consequat porta et, aliquam non nibh. Etiam imperdiet vulputate consequat. Curabitur dui nibh, molestie in diam sed, tempor tristique massa. Mauris ac augue a velit porta malesuada eget sed massa.\r\n\r\nPellentesque nec nunc lorem. Donec tempor eu est in efficitur. Donec non ipsum id enim rhoncus varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam at ex sollicitudin, porta lacus vel, fringilla orci. Praesent interdum, purus sit amet rhoncus facilisis, lectus tellus iaculis nisi, eu pharetra enim tellus id risus. Suspendisse eu velit tellus. Ut commodo ante non purus volutpat, in imperdiet risus placerat. Sed quis dapibus ligula. Nulla bibendum non orci non tempus. Proin a libero a orci pulvinar laoreet vitae sit amet nunc. Suspendisse posuere turpis mauris. Nulla feugiat egestas ante, eu volutpat orci pretium quis.\r\n\r\nQuisque elementum nibh ac quam pharetra convallis. Quisque congue pharetra sodales. Cras semper quam sit amet lacus luctus consectetur. Fusce dignissim, nibh ut condimentum gravida, dolor ex semper nisi, venenatis finibus sapien enim non risus. Cras ornare dui consequat nunc pharetra molestie. Pellentesque at pulvinar leo. Donec at consequat arcu. Cras nec sollicitudin justo.', 'Clase de Spinning', '', 'publish', 'closed', 'closed', '', 'clase-de-spinning', '', '', '2023-12-15 10:37:07', '2023-12-15 14:37:07', '', 0, 'http://gymfitness.test:8080/?post_type=gymfitness_clases&#038;p=42', 0, 'gymfitness_clases', '', 0),
(43, 1, '2023-12-14 10:40:54', '2023-12-14 14:40:54', '', 'sports-1962574_1920', '', 'inherit', 'open', 'closed', '', 'sports-1962574_1920', '', '', '2023-12-14 10:40:54', '2023-12-14 14:40:54', '', 42, 'http://gymfitness.test:8080/wp-content/uploads/2023/12/sports-1962574_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2023-12-14 10:42:02', '2023-12-14 14:42:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac sapien in magna porttitor maximus. Quisque malesuada mi id rhoncus imperdiet. Sed volutpat et leo ac porta. Etiam finibus venenatis libero, vitae luctus felis rutrum at. Duis vitae purus in sem mollis tempor id nec neque. Proin aliquam enim et condimentum tempus. Quisque id viverra mauris. Morbi vitae justo non lacus tempus euismod a quis justo. Nulla lacus libero, ultrices consequat porta et, aliquam non nibh. Etiam imperdiet vulputate consequat. Curabitur dui nibh, molestie in diam sed, tempor tristique massa. Mauris ac augue a velit porta malesuada eget sed massa.\r\n\r\nPellentesque nec nunc lorem. Donec tempor eu est in efficitur. Donec non ipsum id enim rhoncus varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam at ex sollicitudin, porta lacus vel, fringilla orci. Praesent interdum, purus sit amet rhoncus facilisis, lectus tellus iaculis nisi, eu pharetra enim tellus id risus. Suspendisse eu velit tellus. Ut commodo ante non purus volutpat, in imperdiet risus placerat. Sed quis dapibus ligula. Nulla bibendum non orci non tempus. Proin a libero a orci pulvinar laoreet vitae sit amet nunc. Suspendisse posuere turpis mauris. Nulla feugiat egestas ante, eu volutpat orci pretium quis.\r\n\r\nQuisque elementum nibh ac quam pharetra convallis. Quisque congue pharetra sodales. Cras semper quam sit amet lacus luctus consectetur. Fusce dignissim, nibh ut condimentum gravida, dolor ex semper nisi, venenatis finibus sapien enim non risus. Cras ornare dui consequat nunc pharetra molestie. Pellentesque at pulvinar leo. Donec at consequat arcu. Cras nec sollicitudin justo.', 'Kickboxing para Principiantes', '', 'publish', 'closed', 'closed', '', 'kickboxing-para-principiantes', '', '', '2023-12-15 10:37:32', '2023-12-15 14:37:32', '', 0, 'http://gymfitness.test:8080/?post_type=gymfitness_clases&#038;p=44', 0, 'gymfitness_clases', '', 0),
(45, 1, '2023-12-14 10:42:25', '2023-12-14 14:42:25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac sapien in magna porttitor maximus. Quisque malesuada mi id rhoncus imperdiet. Sed volutpat et leo ac porta. Etiam finibus venenatis libero, vitae luctus felis rutrum at. Duis vitae purus in sem mollis tempor id nec neque. Proin aliquam enim et condimentum tempus. Quisque id viverra mauris. Morbi vitae justo non lacus tempus euismod a quis justo. Nulla lacus libero, ultrices consequat porta et, aliquam non nibh. Etiam imperdiet vulputate consequat. Curabitur dui nibh, molestie in diam sed, tempor tristique massa. Mauris ac augue a velit porta malesuada eget sed massa.\r\n\r\nPellentesque nec nunc lorem. Donec tempor eu est in efficitur. Donec non ipsum id enim rhoncus varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam at ex sollicitudin, porta lacus vel, fringilla orci. Praesent interdum, purus sit amet rhoncus facilisis, lectus tellus iaculis nisi, eu pharetra enim tellus id risus. Suspendisse eu velit tellus. Ut commodo ante non purus volutpat, in imperdiet risus placerat. Sed quis dapibus ligula. Nulla bibendum non orci non tempus. Proin a libero a orci pulvinar laoreet vitae sit amet nunc. Suspendisse posuere turpis mauris. Nulla feugiat egestas ante, eu volutpat orci pretium quis.\r\n\r\nQuisque elementum nibh ac quam pharetra convallis. Quisque congue pharetra sodales. Cras semper quam sit amet lacus luctus consectetur. Fusce dignissim, nibh ut condimentum gravida, dolor ex semper nisi, venenatis finibus sapien enim non risus. Cras ornare dui consequat nunc pharetra molestie. Pellentesque at pulvinar leo. Donec at consequat arcu. Cras nec sollicitudin justo.', 'Levantamiento de Pesas para Principiantes', '', 'publish', 'closed', 'closed', '', 'levantamiento-de-pesas-para-principiantes', '', '', '2023-12-15 10:37:55', '2023-12-15 14:37:55', '', 0, 'http://gymfitness.test:8080/?post_type=gymfitness_clases&#038;p=45', 0, 'gymfitness_clases', '', 0),
(46, 1, '2023-12-14 10:42:49', '2023-12-14 14:42:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac sapien in magna porttitor maximus. Quisque malesuada mi id rhoncus imperdiet. Sed volutpat et leo ac porta. Etiam finibus venenatis libero, vitae luctus felis rutrum at. Duis vitae purus in sem mollis tempor id nec neque. Proin aliquam enim et condimentum tempus. Quisque id viverra mauris. Morbi vitae justo non lacus tempus euismod a quis justo. Nulla lacus libero, ultrices consequat porta et, aliquam non nibh. Etiam imperdiet vulputate consequat. Curabitur dui nibh, molestie in diam sed, tempor tristique massa. Mauris ac augue a velit porta malesuada eget sed massa.\r\n\r\nPellentesque nec nunc lorem. Donec tempor eu est in efficitur. Donec non ipsum id enim rhoncus varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam at ex sollicitudin, porta lacus vel, fringilla orci. Praesent interdum, purus sit amet rhoncus facilisis, lectus tellus iaculis nisi, eu pharetra enim tellus id risus. Suspendisse eu velit tellus. Ut commodo ante non purus volutpat, in imperdiet risus placerat. Sed quis dapibus ligula. Nulla bibendum non orci non tempus. Proin a libero a orci pulvinar laoreet vitae sit amet nunc. Suspendisse posuere turpis mauris. Nulla feugiat egestas ante, eu volutpat orci pretium quis.\r\n\r\nQuisque elementum nibh ac quam pharetra convallis. Quisque congue pharetra sodales. Cras semper quam sit amet lacus luctus consectetur. Fusce dignissim, nibh ut condimentum gravida, dolor ex semper nisi, venenatis finibus sapien enim non risus. Cras ornare dui consequat nunc pharetra molestie. Pellentesque at pulvinar leo. Donec at consequat arcu. Cras nec sollicitudin justo.', 'Masterclass Crossfit', '', 'publish', 'closed', 'closed', '', 'masterclass-crossfit', '', '', '2023-12-15 10:38:28', '2023-12-15 14:38:28', '', 0, 'http://gymfitness.test:8080/?post_type=gymfitness_clases&#038;p=46', 0, 'gymfitness_clases', '', 0),
(47, 1, '2023-12-14 10:43:19', '2023-12-14 14:43:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac sapien in magna porttitor maximus. Quisque malesuada mi id rhoncus imperdiet. Sed volutpat et leo ac porta. Etiam finibus venenatis libero, vitae luctus felis rutrum at. Duis vitae purus in sem mollis tempor id nec neque. Proin aliquam enim et condimentum tempus. Quisque id viverra mauris. Morbi vitae justo non lacus tempus euismod a quis justo. Nulla lacus libero, ultrices consequat porta et, aliquam non nibh. Etiam imperdiet vulputate consequat. Curabitur dui nibh, molestie in diam sed, tempor tristique massa. Mauris ac augue a velit porta malesuada eget sed massa.\r\n\r\nPellentesque nec nunc lorem. Donec tempor eu est in efficitur. Donec non ipsum id enim rhoncus varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam at ex sollicitudin, porta lacus vel, fringilla orci. Praesent interdum, purus sit amet rhoncus facilisis, lectus tellus iaculis nisi, eu pharetra enim tellus id risus. Suspendisse eu velit tellus. Ut commodo ante non purus volutpat, in imperdiet risus placerat. Sed quis dapibus ligula. Nulla bibendum non orci non tempus. Proin a libero a orci pulvinar laoreet vitae sit amet nunc. Suspendisse posuere turpis mauris. Nulla feugiat egestas ante, eu volutpat orci pretium quis.\r\n\r\nQuisque elementum nibh ac quam pharetra convallis. Quisque congue pharetra sodales. Cras semper quam sit amet lacus luctus consectetur. Fusce dignissim, nibh ut condimentum gravida, dolor ex semper nisi, venenatis finibus sapien enim non risus. Cras ornare dui consequat nunc pharetra molestie. Pellentesque at pulvinar leo. Donec at consequat arcu. Cras nec sollicitudin justo.', 'Primer Semana de Gym', '', 'publish', 'closed', 'closed', '', 'primer-semana-de-gym', '', '', '2023-12-15 10:38:55', '2023-12-15 14:38:55', '', 0, 'http://gymfitness.test:8080/?post_type=gymfitness_clases&#038;p=47', 0, 'gymfitness_clases', '', 0),
(48, 1, '2023-12-14 10:43:46', '2023-12-14 14:43:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac sapien in magna porttitor maximus. Quisque malesuada mi id rhoncus imperdiet. Sed volutpat et leo ac porta. Etiam finibus venenatis libero, vitae luctus felis rutrum at. Duis vitae purus in sem mollis tempor id nec neque. Proin aliquam enim et condimentum tempus. Quisque id viverra mauris. Morbi vitae justo non lacus tempus euismod a quis justo. Nulla lacus libero, ultrices consequat porta et, aliquam non nibh. Etiam imperdiet vulputate consequat. Curabitur dui nibh, molestie in diam sed, tempor tristique massa. Mauris ac augue a velit porta malesuada eget sed massa.\r\n\r\nPellentesque nec nunc lorem. Donec tempor eu est in efficitur. Donec non ipsum id enim rhoncus varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam at ex sollicitudin, porta lacus vel, fringilla orci. Praesent interdum, purus sit amet rhoncus facilisis, lectus tellus iaculis nisi, eu pharetra enim tellus id risus. Suspendisse eu velit tellus. Ut commodo ante non purus volutpat, in imperdiet risus placerat. Sed quis dapibus ligula. Nulla bibendum non orci non tempus. Proin a libero a orci pulvinar laoreet vitae sit amet nunc. Suspendisse posuere turpis mauris. Nulla feugiat egestas ante, eu volutpat orci pretium quis.\r\n\r\nQuisque elementum nibh ac quam pharetra convallis. Quisque congue pharetra sodales. Cras semper quam sit amet lacus luctus consectetur. Fusce dignissim, nibh ut condimentum gravida, dolor ex semper nisi, venenatis finibus sapien enim non risus. Cras ornare dui consequat nunc pharetra molestie. Pellentesque at pulvinar leo. Donec at consequat arcu. Cras nec sollicitudin justo.', 'Yoga para Principiantes', '', 'publish', 'closed', 'closed', '', 'yoga-para-principiantes', '', '', '2023-12-15 10:39:19', '2023-12-15 14:39:19', '', 0, 'http://gymfitness.test:8080/?post_type=gymfitness_clases&#038;p=48', 0, 'gymfitness_clases', '', 0),
(50, 1, '2023-12-15 10:17:06', '2023-12-15 14:17:06', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"gymfitness_clases\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Campos para Clases', 'campos-para-clases', 'publish', 'closed', 'closed', '', 'group_657c5e9d471df', '', '', '2023-12-15 10:33:01', '2023-12-15 14:33:01', '', 0, 'http://gymfitness.test:8080/?post_type=acf-field-group&#038;p=50', 0, 'acf-field-group', '', 0),
(51, 1, '2023-12-15 10:17:06', '2023-12-15 14:17:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Dia de esta Clase ejemplo Lunes a Viernes\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Dia Campo', 'dia', 'publish', 'closed', 'closed', '', 'field_657c5f29f22bd', '', '', '2023-12-15 10:20:16', '2023-12-15 14:20:16', '', 50, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=51', 0, 'acf-field', '', 0),
(54, 1, '2023-12-15 10:30:30', '2023-12-15 14:30:30', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}', 'Hora Inicio', 'hora_inicio', 'publish', 'closed', 'closed', '', 'field_657c6157d07c7', '', '', '2023-12-15 10:30:30', '2023-12-15 14:30:30', '', 50, 'http://gymfitness.test:8080/?post_type=acf-field&p=54', 1, 'acf-field', '', 0),
(56, 1, '2023-12-15 10:33:01', '2023-12-15 14:33:01', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}', 'Hora Fin', 'hora_fin', 'publish', 'closed', 'closed', '', 'field_657c633ec289d', '', '', '2023-12-15 10:33:01', '2023-12-15 14:33:01', '', 50, 'http://gymfitness.test:8080/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(58, 1, '2023-12-18 09:43:50', '2023-12-18 13:43:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vehicula aliquet erat, non tempus urna dictum at. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 'Clases', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-12-18 09:43:50', '2023-12-18 13:43:50', '', 24, 'http://gymfitness.test:8080/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-12-18 09:46:44', '2023-12-18 13:46:44', '<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vehicula aliquet erat, non tempus urna dictum at. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 'Nuestras Clases', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-12-18 09:46:44', '2023-12-18 13:46:44', '', 24, 'http://gymfitness.test:8080/?p=59', 0, 'revision', '', 0),
(61, 1, '2024-01-02 10:08:40', '2024-01-02 14:08:40', '', 'dumbbell-3324976_1920', '', 'inherit', 'open', 'closed', '', 'dumbbell-3324976_1920', '', '', '2024-01-02 10:08:40', '2024-01-02 14:08:40', '', 22, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/dumbbell-3324976_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2024-01-02 10:08:42', '2024-01-02 14:08:42', '', 'gym-455164_1920', '', 'inherit', 'open', 'closed', '', 'gym-455164_1920', '', '', '2024-01-02 10:08:42', '2024-01-02 14:08:42', '', 22, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/gym-455164_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2024-01-02 10:08:44', '2024-01-02 14:08:44', '', 'gym-457072_1280', '', 'inherit', 'open', 'closed', '', 'gym-457072_1280', '', '', '2024-01-02 10:08:44', '2024-01-02 14:08:44', '', 22, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/gym-457072_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2024-01-02 10:08:46', '2024-01-02 14:08:46', '', 'home-fitness-equipment-1840858_1920', '', 'inherit', 'open', 'closed', '', 'home-fitness-equipment-1840858_1920', '', '', '2024-01-02 10:08:46', '2024-01-02 14:08:46', '', 22, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/home-fitness-equipment-1840858_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2024-01-02 10:08:55', '2024-01-02 14:08:55', '', 'fitness-1882721_1920', '', 'inherit', 'open', 'closed', '', 'fitness-1882721_1920', '', '', '2024-01-02 10:08:55', '2024-01-02 14:08:55', '', 22, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/fitness-1882721_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2024-01-02 10:09:03', '2024-01-02 14:09:03', '', 'training-828726_1920', '', 'inherit', 'open', 'closed', '', 'training-828726_1920', '', '', '2024-01-02 10:09:03', '2024-01-02 14:09:03', '', 22, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/training-828726_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2024-01-02 10:09:30', '2024-01-02 14:09:30', '[gallery link=\"file\" ids=\"43,41,40,61,62,63,64,39,38,37,65,66,29,35\"]\r\n\r\nPágina de galería', 'Galería', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-01-02 10:09:30', '2024-01-02 14:09:30', '', 22, 'http://gymfitness.test:8080/?p=67', 0, 'revision', '', 0),
(69, 1, '2024-01-03 09:21:05', '2024-01-03 13:21:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed nibh egestas, dapibus neque a, pharetra nisi. Nulla scelerisque ultricies sollicitudin. Mauris congue, elit eu sagittis malesuada, tortor orci convallis ipsum, sit amet sagittis arcu quam non odio. Aenean at neque ipsum. Fusce lobortis libero sit amet justo interdum, sit amet varius justo tristique. Quisque pulvinar, velit eu accumsan ornare, dolor massa ullamcorper sem, et eleifend neque magna eget felis. Sed sagittis, diam sed eleifend pulvinar, enim leo hendrerit nibh, quis lacinia nibh enim eget metus. Mauris laoreet sit amet eros eu lobortis. Quisque fringilla gravida laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras id porttitor lacus. Etiam sed orci nec enim lobortis rutrum at eu arcu. Cras vitae purus quis magna rhoncus congue eu quis lacus. Curabitur nec arcu non odio varius congue.\r\n\r\nIn convallis ultrices est, eget mollis ex auctor eu. Praesent congue eleifend ex, id tempus nisl. Ut mattis facilisis nulla a laoreet. Nunc sit amet tristique lectus. In hac habitasse platea dictumst. Nulla non rhoncus mauris, in finibus arcu. Maecenas a ante tristique, finibus diam non, egestas ligula. Pellentesque semper, nibh et laoreet commodo, neque urna dignissim dui, et vehicula felis est id dui.\r\n\r\nMorbi eleifend bibendum nisi id iaculis. Duis blandit dui sit amet tortor porta, in aliquam erat porta. Donec nec leo feugiat, eleifend est non, cursus tellus. Sed felis mauris, vestibulum quis eleifend eget, blandit quis ex. Nam vitae hendrerit felis. Quisque nisl sem, cursus lacinia dignissim vitae, eleifend sed ante. Nulla congue felis sodales libero facilisis pharetra.\r\n\r\nProin porta risus sit amet ligula dapibus ornare. Nunc non tempus lectus. Nunc sollicitudin nisi at lorem lobortis tristique ut non ipsum. Pellentesque dictum hendrerit urna mollis tempus. Nullam consequat congue ultrices. Vivamus id nibh ornare, cursus nunc vel, malesuada nisl. Etiam pharetra tellus eu mi mattis blandit. Proin convallis tempus elit, eu dignissim felis porttitor eget. Sed pharetra elit nec lorem varius aliquet. Ut tempus, ligula id bibendum tincidunt, quam libero fermentum ex, eu finibus arcu arcu sed enim. Morbi pharetra purus nec ipsum ornare, sit amet finibus est pretium. Nunc est neque, suscipit non porta non, ultrices ut orci. Quisque volutpat augue laoreet sapien maximus, tincidunt luctus sapien sagittis.', '5 Ejercicios de estiramientos', '', 'publish', 'open', 'open', '', '5-ejercicios-de-estiramientos', '', '', '2024-01-03 09:21:34', '2024-01-03 13:21:34', '', 0, 'http://gymfitness.test:8080/?p=69', 0, 'post', '', 0),
(70, 1, '2024-01-03 09:20:42', '2024-01-03 13:20:42', '', 'yoga-1994667_1920', '', 'inherit', 'open', 'closed', '', 'yoga-1994667_1920', '', '', '2024-01-03 09:20:42', '2024-01-03 13:20:42', '', 69, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/yoga-1994667_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2024-01-03 09:21:05', '2024-01-03 13:21:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed nibh egestas, dapibus neque a, pharetra nisi. Nulla scelerisque ultricies sollicitudin. Mauris congue, elit eu sagittis malesuada, tortor orci convallis ipsum, sit amet sagittis arcu quam non odio. Aenean at neque ipsum. Fusce lobortis libero sit amet justo interdum, sit amet varius justo tristique. Quisque pulvinar, velit eu accumsan ornare, dolor massa ullamcorper sem, et eleifend neque magna eget felis. Sed sagittis, diam sed eleifend pulvinar, enim leo hendrerit nibh, quis lacinia nibh enim eget metus. Mauris laoreet sit amet eros eu lobortis. Quisque fringilla gravida laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras id porttitor lacus. Etiam sed orci nec enim lobortis rutrum at eu arcu. Cras vitae purus quis magna rhoncus congue eu quis lacus. Curabitur nec arcu non odio varius congue.\r\n\r\nIn convallis ultrices est, eget mollis ex auctor eu. Praesent congue eleifend ex, id tempus nisl. Ut mattis facilisis nulla a laoreet. Nunc sit amet tristique lectus. In hac habitasse platea dictumst. Nulla non rhoncus mauris, in finibus arcu. Maecenas a ante tristique, finibus diam non, egestas ligula. Pellentesque semper, nibh et laoreet commodo, neque urna dignissim dui, et vehicula felis est id dui.\r\n\r\nMorbi eleifend bibendum nisi id iaculis. Duis blandit dui sit amet tortor porta, in aliquam erat porta. Donec nec leo feugiat, eleifend est non, cursus tellus. Sed felis mauris, vestibulum quis eleifend eget, blandit quis ex. Nam vitae hendrerit felis. Quisque nisl sem, cursus lacinia dignissim vitae, eleifend sed ante. Nulla congue felis sodales libero facilisis pharetra.\r\n\r\nProin porta risus sit amet ligula dapibus ornare. Nunc non tempus lectus. Nunc sollicitudin nisi at lorem lobortis tristique ut non ipsum. Pellentesque dictum hendrerit urna mollis tempus. Nullam consequat congue ultrices. Vivamus id nibh ornare, cursus nunc vel, malesuada nisl. Etiam pharetra tellus eu mi mattis blandit. Proin convallis tempus elit, eu dignissim felis porttitor eget. Sed pharetra elit nec lorem varius aliquet. Ut tempus, ligula id bibendum tincidunt, quam libero fermentum ex, eu finibus arcu arcu sed enim. Morbi pharetra purus nec ipsum ornare, sit amet finibus est pretium. Nunc est neque, suscipit non porta non, ultrices ut orci. Quisque volutpat augue laoreet sapien maximus, tincidunt luctus sapien sagittis.', '5 Ejercicios de estiramientos', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2024-01-03 09:21:05', '2024-01-03 13:21:05', '', 69, 'http://gymfitness.test:8080/?p=71', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2024-01-03 09:22:21', '2024-01-03 13:22:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed nibh egestas, dapibus neque a, pharetra nisi. Nulla scelerisque ultricies sollicitudin. Mauris congue, elit eu sagittis malesuada, tortor orci convallis ipsum, sit amet sagittis arcu quam non odio. Aenean at neque ipsum. Fusce lobortis libero sit amet justo interdum, sit amet varius justo tristique. Quisque pulvinar, velit eu accumsan ornare, dolor massa ullamcorper sem, et eleifend neque magna eget felis. Sed sagittis, diam sed eleifend pulvinar, enim leo hendrerit nibh, quis lacinia nibh enim eget metus. Mauris laoreet sit amet eros eu lobortis. Quisque fringilla gravida laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras id porttitor lacus. Etiam sed orci nec enim lobortis rutrum at eu arcu. Cras vitae purus quis magna rhoncus congue eu quis lacus. Curabitur nec arcu non odio varius congue.\r\n\r\nIn convallis ultrices est, eget mollis ex auctor eu. Praesent congue eleifend ex, id tempus nisl. Ut mattis facilisis nulla a laoreet. Nunc sit amet tristique lectus. In hac habitasse platea dictumst. Nulla non rhoncus mauris, in finibus arcu. Maecenas a ante tristique, finibus diam non, egestas ligula. Pellentesque semper, nibh et laoreet commodo, neque urna dignissim dui, et vehicula felis est id dui.\r\n\r\nMorbi eleifend bibendum nisi id iaculis. Duis blandit dui sit amet tortor porta, in aliquam erat porta. Donec nec leo feugiat, eleifend est non, cursus tellus. Sed felis mauris, vestibulum quis eleifend eget, blandit quis ex. Nam vitae hendrerit felis. Quisque nisl sem, cursus lacinia dignissim vitae, eleifend sed ante. Nulla congue felis sodales libero facilisis pharetra.\r\n\r\nProin porta risus sit amet ligula dapibus ornare. Nunc non tempus lectus. Nunc sollicitudin nisi at lorem lobortis tristique ut non ipsum. Pellentesque dictum hendrerit urna mollis tempus. Nullam consequat congue ultrices. Vivamus id nibh ornare, cursus nunc vel, malesuada nisl. Etiam pharetra tellus eu mi mattis blandit. Proin convallis tempus elit, eu dignissim felis porttitor eget. Sed pharetra elit nec lorem varius aliquet. Ut tempus, ligula id bibendum tincidunt, quam libero fermentum ex, eu finibus arcu arcu sed enim. Morbi pharetra purus nec ipsum ornare, sit amet finibus est pretium. Nunc est neque, suscipit non porta non, ultrices ut orci. Quisque volutpat augue laoreet sapien maximus, tincidunt luctus sapien sagittis.', 'Ejercicios para tu primera semana', '', 'publish', 'open', 'open', '', 'ejercicios-para-tu-primera-semana', '', '', '2024-01-03 09:22:21', '2024-01-03 13:22:21', '', 0, 'http://gymfitness.test:8080/?p=72', 0, 'post', '', 0),
(73, 1, '2024-01-03 09:22:21', '2024-01-03 13:22:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed nibh egestas, dapibus neque a, pharetra nisi. Nulla scelerisque ultricies sollicitudin. Mauris congue, elit eu sagittis malesuada, tortor orci convallis ipsum, sit amet sagittis arcu quam non odio. Aenean at neque ipsum. Fusce lobortis libero sit amet justo interdum, sit amet varius justo tristique. Quisque pulvinar, velit eu accumsan ornare, dolor massa ullamcorper sem, et eleifend neque magna eget felis. Sed sagittis, diam sed eleifend pulvinar, enim leo hendrerit nibh, quis lacinia nibh enim eget metus. Mauris laoreet sit amet eros eu lobortis. Quisque fringilla gravida laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras id porttitor lacus. Etiam sed orci nec enim lobortis rutrum at eu arcu. Cras vitae purus quis magna rhoncus congue eu quis lacus. Curabitur nec arcu non odio varius congue.\r\n\r\nIn convallis ultrices est, eget mollis ex auctor eu. Praesent congue eleifend ex, id tempus nisl. Ut mattis facilisis nulla a laoreet. Nunc sit amet tristique lectus. In hac habitasse platea dictumst. Nulla non rhoncus mauris, in finibus arcu. Maecenas a ante tristique, finibus diam non, egestas ligula. Pellentesque semper, nibh et laoreet commodo, neque urna dignissim dui, et vehicula felis est id dui.\r\n\r\nMorbi eleifend bibendum nisi id iaculis. Duis blandit dui sit amet tortor porta, in aliquam erat porta. Donec nec leo feugiat, eleifend est non, cursus tellus. Sed felis mauris, vestibulum quis eleifend eget, blandit quis ex. Nam vitae hendrerit felis. Quisque nisl sem, cursus lacinia dignissim vitae, eleifend sed ante. Nulla congue felis sodales libero facilisis pharetra.\r\n\r\nProin porta risus sit amet ligula dapibus ornare. Nunc non tempus lectus. Nunc sollicitudin nisi at lorem lobortis tristique ut non ipsum. Pellentesque dictum hendrerit urna mollis tempus. Nullam consequat congue ultrices. Vivamus id nibh ornare, cursus nunc vel, malesuada nisl. Etiam pharetra tellus eu mi mattis blandit. Proin convallis tempus elit, eu dignissim felis porttitor eget. Sed pharetra elit nec lorem varius aliquet. Ut tempus, ligula id bibendum tincidunt, quam libero fermentum ex, eu finibus arcu arcu sed enim. Morbi pharetra purus nec ipsum ornare, sit amet finibus est pretium. Nunc est neque, suscipit non porta non, ultrices ut orci. Quisque volutpat augue laoreet sapien maximus, tincidunt luctus sapien sagittis.', 'Ejercicios para tu primera semana', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2024-01-03 09:22:21', '2024-01-03 13:22:21', '', 72, 'http://gymfitness.test:8080/?p=73', 0, 'revision', '', 0),
(74, 1, '2024-01-03 09:23:28', '2024-01-03 13:23:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed nibh egestas, dapibus neque a, pharetra nisi. Nulla scelerisque ultricies sollicitudin. Mauris congue, elit eu sagittis malesuada, tortor orci convallis ipsum, sit amet sagittis arcu quam non odio. Aenean at neque ipsum. Fusce lobortis libero sit amet justo interdum, sit amet varius justo tristique. Quisque pulvinar, velit eu accumsan ornare, dolor massa ullamcorper sem, et eleifend neque magna eget felis. Sed sagittis, diam sed eleifend pulvinar, enim leo hendrerit nibh, quis lacinia nibh enim eget metus. Mauris laoreet sit amet eros eu lobortis. Quisque fringilla gravida laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras id porttitor lacus. Etiam sed orci nec enim lobortis rutrum at eu arcu. Cras vitae purus quis magna rhoncus congue eu quis lacus. Curabitur nec arcu non odio varius congue.\r\n\r\nIn convallis ultrices est, eget mollis ex auctor eu. Praesent congue eleifend ex, id tempus nisl. Ut mattis facilisis nulla a laoreet. Nunc sit amet tristique lectus. In hac habitasse platea dictumst. Nulla non rhoncus mauris, in finibus arcu. Maecenas a ante tristique, finibus diam non, egestas ligula. Pellentesque semper, nibh et laoreet commodo, neque urna dignissim dui, et vehicula felis est id dui.\r\n\r\nMorbi eleifend bibendum nisi id iaculis. Duis blandit dui sit amet tortor porta, in aliquam erat porta. Donec nec leo feugiat, eleifend est non, cursus tellus. Sed felis mauris, vestibulum quis eleifend eget, blandit quis ex. Nam vitae hendrerit felis. Quisque nisl sem, cursus lacinia dignissim vitae, eleifend sed ante. Nulla congue felis sodales libero facilisis pharetra.\r\n\r\nProin porta risus sit amet ligula dapibus ornare. Nunc non tempus lectus. Nunc sollicitudin nisi at lorem lobortis tristique ut non ipsum. Pellentesque dictum hendrerit urna mollis tempus. Nullam consequat congue ultrices. Vivamus id nibh ornare, cursus nunc vel, malesuada nisl. Etiam pharetra tellus eu mi mattis blandit. Proin convallis tempus elit, eu dignissim felis porttitor eget. Sed pharetra elit nec lorem varius aliquet. Ut tempus, ligula id bibendum tincidunt, quam libero fermentum ex, eu finibus arcu arcu sed enim. Morbi pharetra purus nec ipsum ornare, sit amet finibus est pretium. Nunc est neque, suscipit non porta non, ultrices ut orci. Quisque volutpat augue laoreet sapien maximus, tincidunt luctus sapien sagittis.', 'Cómo comenzar una nueva rutina', '', 'publish', 'open', 'open', '', 'como-comenzar-una-nueva-rutina', '', '', '2024-01-04 11:21:42', '2024-01-04 15:21:42', '', 0, 'http://gymfitness.test:8080/?p=74', 0, 'post', '', 0),
(75, 1, '2024-01-03 09:23:28', '2024-01-03 13:23:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed nibh egestas, dapibus neque a, pharetra nisi. Nulla scelerisque ultricies sollicitudin. Mauris congue, elit eu sagittis malesuada, tortor orci convallis ipsum, sit amet sagittis arcu quam non odio. Aenean at neque ipsum. Fusce lobortis libero sit amet justo interdum, sit amet varius justo tristique. Quisque pulvinar, velit eu accumsan ornare, dolor massa ullamcorper sem, et eleifend neque magna eget felis. Sed sagittis, diam sed eleifend pulvinar, enim leo hendrerit nibh, quis lacinia nibh enim eget metus. Mauris laoreet sit amet eros eu lobortis. Quisque fringilla gravida laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras id porttitor lacus. Etiam sed orci nec enim lobortis rutrum at eu arcu. Cras vitae purus quis magna rhoncus congue eu quis lacus. Curabitur nec arcu non odio varius congue.\r\n\r\nIn convallis ultrices est, eget mollis ex auctor eu. Praesent congue eleifend ex, id tempus nisl. Ut mattis facilisis nulla a laoreet. Nunc sit amet tristique lectus. In hac habitasse platea dictumst. Nulla non rhoncus mauris, in finibus arcu. Maecenas a ante tristique, finibus diam non, egestas ligula. Pellentesque semper, nibh et laoreet commodo, neque urna dignissim dui, et vehicula felis est id dui.\r\n\r\nMorbi eleifend bibendum nisi id iaculis. Duis blandit dui sit amet tortor porta, in aliquam erat porta. Donec nec leo feugiat, eleifend est non, cursus tellus. Sed felis mauris, vestibulum quis eleifend eget, blandit quis ex. Nam vitae hendrerit felis. Quisque nisl sem, cursus lacinia dignissim vitae, eleifend sed ante. Nulla congue felis sodales libero facilisis pharetra.\r\n\r\nProin porta risus sit amet ligula dapibus ornare. Nunc non tempus lectus. Nunc sollicitudin nisi at lorem lobortis tristique ut non ipsum. Pellentesque dictum hendrerit urna mollis tempus. Nullam consequat congue ultrices. Vivamus id nibh ornare, cursus nunc vel, malesuada nisl. Etiam pharetra tellus eu mi mattis blandit. Proin convallis tempus elit, eu dignissim felis porttitor eget. Sed pharetra elit nec lorem varius aliquet. Ut tempus, ligula id bibendum tincidunt, quam libero fermentum ex, eu finibus arcu arcu sed enim. Morbi pharetra purus nec ipsum ornare, sit amet finibus est pretium. Nunc est neque, suscipit non porta non, ultrices ut orci. Quisque volutpat augue laoreet sapien maximus, tincidunt luctus sapien sagittis.', 'Cómo comenzar una nueva rutina', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2024-01-03 09:23:28', '2024-01-03 13:23:28', '', 74, 'http://gymfitness.test:8080/?p=75', 0, 'revision', '', 0),
(76, 1, '2024-01-03 09:24:56', '2024-01-03 13:24:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed nibh egestas, dapibus neque a, pharetra nisi. Nulla scelerisque ultricies sollicitudin. Mauris congue, elit eu sagittis malesuada, tortor orci convallis ipsum, sit amet sagittis arcu quam non odio. Aenean at neque ipsum. Fusce lobortis libero sit amet justo interdum, sit amet varius justo tristique. Quisque pulvinar, velit eu accumsan ornare, dolor massa ullamcorper sem, et eleifend neque magna eget felis. Sed sagittis, diam sed eleifend pulvinar, enim leo hendrerit nibh, quis lacinia nibh enim eget metus. Mauris laoreet sit amet eros eu lobortis. Quisque fringilla gravida laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras id porttitor lacus. Etiam sed orci nec enim lobortis rutrum at eu arcu. Cras vitae purus quis magna rhoncus congue eu quis lacus. Curabitur nec arcu non odio varius congue.\r\n\r\nIn convallis ultrices est, eget mollis ex auctor eu. Praesent congue eleifend ex, id tempus nisl. Ut mattis facilisis nulla a laoreet. Nunc sit amet tristique lectus. In hac habitasse platea dictumst. Nulla non rhoncus mauris, in finibus arcu. Maecenas a ante tristique, finibus diam non, egestas ligula. Pellentesque semper, nibh et laoreet commodo, neque urna dignissim dui, et vehicula felis est id dui.\r\n\r\nMorbi eleifend bibendum nisi id iaculis. Duis blandit dui sit amet tortor porta, in aliquam erat porta. Donec nec leo feugiat, eleifend est non, cursus tellus. Sed felis mauris, vestibulum quis eleifend eget, blandit quis ex. Nam vitae hendrerit felis. Quisque nisl sem, cursus lacinia dignissim vitae, eleifend sed ante. Nulla congue felis sodales libero facilisis pharetra.\r\n\r\nProin porta risus sit amet ligula dapibus ornare. Nunc non tempus lectus. Nunc sollicitudin nisi at lorem lobortis tristique ut non ipsum. Pellentesque dictum hendrerit urna mollis tempus. Nullam consequat congue ultrices. Vivamus id nibh ornare, cursus nunc vel, malesuada nisl. Etiam pharetra tellus eu mi mattis blandit. Proin convallis tempus elit, eu dignissim felis porttitor eget. Sed pharetra elit nec lorem varius aliquet. Ut tempus, ligula id bibendum tincidunt, quam libero fermentum ex, eu finibus arcu arcu sed enim. Morbi pharetra purus nec ipsum ornare, sit amet finibus est pretium. Nunc est neque, suscipit non porta non, ultrices ut orci. Quisque volutpat augue laoreet sapien maximus, tincidunt luctus sapien sagittis.', '5 ejercicios de barras', '', 'publish', 'open', 'open', '', '5-ejercicios-de-barras', '', '', '2024-01-04 11:21:23', '2024-01-04 15:21:23', '', 0, 'http://gymfitness.test:8080/?p=76', 0, 'post', '', 0),
(77, 1, '2024-01-03 09:24:56', '2024-01-03 13:24:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed nibh egestas, dapibus neque a, pharetra nisi. Nulla scelerisque ultricies sollicitudin. Mauris congue, elit eu sagittis malesuada, tortor orci convallis ipsum, sit amet sagittis arcu quam non odio. Aenean at neque ipsum. Fusce lobortis libero sit amet justo interdum, sit amet varius justo tristique. Quisque pulvinar, velit eu accumsan ornare, dolor massa ullamcorper sem, et eleifend neque magna eget felis. Sed sagittis, diam sed eleifend pulvinar, enim leo hendrerit nibh, quis lacinia nibh enim eget metus. Mauris laoreet sit amet eros eu lobortis. Quisque fringilla gravida laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras id porttitor lacus. Etiam sed orci nec enim lobortis rutrum at eu arcu. Cras vitae purus quis magna rhoncus congue eu quis lacus. Curabitur nec arcu non odio varius congue.\r\n\r\nIn convallis ultrices est, eget mollis ex auctor eu. Praesent congue eleifend ex, id tempus nisl. Ut mattis facilisis nulla a laoreet. Nunc sit amet tristique lectus. In hac habitasse platea dictumst. Nulla non rhoncus mauris, in finibus arcu. Maecenas a ante tristique, finibus diam non, egestas ligula. Pellentesque semper, nibh et laoreet commodo, neque urna dignissim dui, et vehicula felis est id dui.\r\n\r\nMorbi eleifend bibendum nisi id iaculis. Duis blandit dui sit amet tortor porta, in aliquam erat porta. Donec nec leo feugiat, eleifend est non, cursus tellus. Sed felis mauris, vestibulum quis eleifend eget, blandit quis ex. Nam vitae hendrerit felis. Quisque nisl sem, cursus lacinia dignissim vitae, eleifend sed ante. Nulla congue felis sodales libero facilisis pharetra.\r\n\r\nProin porta risus sit amet ligula dapibus ornare. Nunc non tempus lectus. Nunc sollicitudin nisi at lorem lobortis tristique ut non ipsum. Pellentesque dictum hendrerit urna mollis tempus. Nullam consequat congue ultrices. Vivamus id nibh ornare, cursus nunc vel, malesuada nisl. Etiam pharetra tellus eu mi mattis blandit. Proin convallis tempus elit, eu dignissim felis porttitor eget. Sed pharetra elit nec lorem varius aliquet. Ut tempus, ligula id bibendum tincidunt, quam libero fermentum ex, eu finibus arcu arcu sed enim. Morbi pharetra purus nec ipsum ornare, sit amet finibus est pretium. Nunc est neque, suscipit non porta non, ultrices ut orci. Quisque volutpat augue laoreet sapien maximus, tincidunt luctus sapien sagittis.', '5 ejercicios de barras', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2024-01-03 09:24:56', '2024-01-03 13:24:56', '', 76, 'http://gymfitness.test:8080/?p=77', 0, 'revision', '', 0),
(79, 1, '2024-01-06 09:58:12', '2024-01-06 13:58:12', '<label> Tu nombre\n    [text* your-name autocomplete:name] </label>\n\n<label> Tu correo electrónico\n    [email* your-email autocomplete:email] </label>\n\n<label> Asunto\n    [text* your-subject] </label>\n\n<label> Tu mensaje (opcional)\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@gymfitness.test>\nDe: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEsto es un aviso de que se ha enviado un formulario de contacto en tu web ([_site_title] [_site_url]).\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@gymfitness.test>\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste correo electrónico es un acuse de recibo del envío de tu formulario de contacto en tu web ([_site_title] [_site_url]) en la que se usó tu dirección de correo electrónico. Si no eres tú, por favor, ignora este mensaje.\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nGracias por tu mensaje. Ha sido enviado.\nHa habido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor, revisa e inténtalo de nuevo.\nHa habido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nPor favor, rellena este campo.\nEste campo tiene una entrada demasiado larga.\nEste campo tiene una entrada demasiado corta.\nHubo un error desconocido subiendo el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo subido es demasiado grande.\nHa habido un error al subir el archivo.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2024-01-06 09:58:12', '2024-01-06 13:58:12', '', 0, 'http://gymfitness.test:8080/?post_type=wpcf7_contact_form&p=79', 0, 'wpcf7_contact_form', '', 0),
(80, 1, '2024-01-06 10:32:39', '2024-01-06 14:32:39', '<!-- wp:paragraph -->\r\n<p>[contact-form-7 id=\"af14c34\" title=\"Formulario de contacto 1\"]</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2024-01-06 10:32:39', '2024-01-06 14:32:39', '', 12, 'http://gymfitness.test:8080/?p=80', 0, 'revision', '', 0),
(81, 1, '2024-01-06 11:31:35', '2024-01-06 15:31:35', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"12\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Contacto', 'contacto', 'publish', 'closed', 'closed', '', 'group_659970f79f25c', '', '', '2024-01-06 11:39:52', '2024-01-06 15:39:52', '', 0, 'http://gymfitness.test:8080/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(82, 1, '2024-01-06 11:33:23', '2024-01-06 15:33:23', 'a:15:{s:10:\"center_lat\";d:10.1626674;s:10:\"center_lng\";d:-68.8953324;s:4:\"zoom\";i:15;s:6:\"height\";i:400;s:13:\"return_format\";s:7:\"leaflet\";s:16:\"allow_map_layers\";i:1;s:11:\"max_markers\";s:0:\"\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:15:\"open_street_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:11:\"leaflet_map\";s:93:\"{\"lat\":10.1626674,\"lng\":-68.8953324,\"zoom\":15,\"layers\":[\"OpenStreetMap.Mapnik\"],\"markers\":[]}\";}', 'Ubicación', 'ubicacion', 'publish', 'closed', 'closed', '', 'field_659972595cde3', '', '', '2024-01-06 11:39:52', '2024-01-06 15:39:52', '', 81, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=82', 0, 'acf-field', '', 0),
(83, 1, '2024-01-06 11:41:39', '2024-01-06 15:41:39', '<!-- wp:paragraph -->\r\n<p>[contact-form-7 id=\"af14c34\" title=\"Formulario de contacto 1\"]</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2024-01-06 11:41:39', '2024-01-06 15:41:39', '', 12, 'http://gymfitness.test:8080/?p=83', 0, 'revision', '', 0),
(84, 1, '2024-01-06 11:48:08', '2024-01-06 15:48:08', '<!-- wp:paragraph -->\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31418.15517688456!2d-68.91539135262387!3d10.158743650343775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e80b34a5b2f2585%3A0x9898a3082635499!2sChivacoa%203202%2C%20Yaracuy!5e0!3m2!1ses!2sve!4v1704555753760!5m2!1ses!2sve\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<p>&nbsp;</p>\n<p>[contact-form-7 id=\"af14c34\" title=\"Formulario de contacto 1\"]</p>\n<p>&nbsp;</p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2024-01-06 11:48:08', '2024-01-06 15:48:08', '', 12, 'http://gymfitness.test:8080/?p=84', 0, 'revision', '', 0),
(85, 1, '2024-01-06 11:42:51', '2024-01-06 15:42:51', '<!-- wp:paragraph -->\r\n<p>&lt;iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31418.15517688456!2d-68.91539135262387!3d10.158743650343775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e80b34a5b2f2585%3A0x9898a3082635499!2sChivacoa%203202%2C%20Yaracuy!5e0!3m2!1ses!2sve!4v1704555753760!5m2!1ses!2sve\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"&gt;&lt;/iframe&gt;</p>\r\n<p>[contact-form-7 id=\"af14c34\" title=\"Formulario de contacto 1\"]</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2024-01-06 11:42:51', '2024-01-06 15:42:51', '', 12, 'http://gymfitness.test:8080/?p=85', 0, 'revision', '', 0),
(86, 1, '2024-01-06 11:43:04', '2024-01-06 15:43:04', '<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<p>[contact-form-7 id=\"af14c34\" title=\"Formulario de contacto 1\"]</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2024-01-06 11:43:04', '2024-01-06 15:43:04', '', 12, 'http://gymfitness.test:8080/?p=86', 0, 'revision', '', 0),
(87, 1, '2024-01-06 11:43:16', '2024-01-06 15:43:16', '<!-- wp:paragraph -->\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31418.15517688456!2d-68.91539135262387!3d10.158743650343775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e80b34a5b2f2585%3A0x9898a3082635499!2sChivacoa%203202%2C%20Yaracuy!5e0!3m2!1ses!2sve!4v1704555753760!5m2!1ses!2sve\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n<p>&nbsp;</p>\r\n<p>[contact-form-7 id=\"af14c34\" title=\"Formulario de contacto 1\"]</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2024-01-06 11:43:16', '2024-01-06 15:43:16', '', 12, 'http://gymfitness.test:8080/?p=87', 0, 'revision', '', 0),
(88, 1, '2024-01-06 11:48:10', '2024-01-06 15:48:10', '<!-- wp:paragraph -->\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31418.15517688456!2d-68.91539135262387!3d10.158743650343775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e80b34a5b2f2585%3A0x9898a3082635499!2sChivacoa%203202%2C%20Yaracuy!5e0!3m2!1ses!2sve!4v1704555753760!5m2!1ses!2sve\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n<p>&nbsp;</p>\r\n<p>[contact-form-7 id=\"af14c34\" title=\"Formulario de contacto 1\"]</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2024-01-06 11:48:10', '2024-01-06 15:48:10', '', 12, 'http://gymfitness.test:8080/?p=88', 0, 'revision', '', 0),
(90, 1, '2024-01-08 10:17:32', '2024-01-08 14:17:32', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Pagina de Inicio', 'pagina-de-inicio', 'publish', 'closed', 'closed', '', 'group_659c02e1a55ee', '', '', '2024-01-25 11:00:18', '2024-01-25 15:00:18', '', 0, 'http://gymfitness.test:8080/?post_type=acf-field-group&#038;p=90', 0, 'acf-field-group', '', 0),
(91, 1, '2024-01-08 10:17:32', '2024-01-08 14:17:32', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Encabezado Bienvenida', 'encabezado_bienvenida', 'publish', 'closed', 'closed', '', 'field_659c02e3ac82a', '', '', '2024-01-25 11:00:00', '2024-01-25 15:00:00', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=91', 5, 'acf-field', '', 0),
(92, 1, '2024-01-08 10:17:32', '2024-01-08 14:17:32', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto Bienvenida', 'texto_bienvenida', 'publish', 'closed', 'closed', '', 'field_659c032aac82b', '', '', '2024-01-25 11:00:01', '2024-01-25 15:00:01', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=92', 6, 'acf-field', '', 0),
(93, 1, '2024-01-08 10:19:16', '2024-01-08 14:19:16', '<!-- wp:paragraph -->\r\n<p>Página de inicio </p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-01-08 10:19:16', '2024-01-08 14:19:16', '', 8, 'http://gymfitness.test:8080/?p=93', 0, 'revision', '', 0),
(94, 1, '2024-01-08 10:36:58', '2024-01-08 14:36:58', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Área 1', 'area_1', 'publish', 'closed', 'closed', '', 'field_659c0710a653f', '', '', '2024-01-25 11:00:01', '2024-01-25 15:00:01', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=94', 8, 'acf-field', '', 0),
(95, 1, '2024-01-08 10:36:58', '2024-01-08 14:36:58', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_659c074ca6540', '', '', '2024-01-08 10:36:58', '2024-01-08 14:36:58', '', 94, 'http://gymfitness.test:8080/?post_type=acf-field&p=95', 0, 'acf-field', '', 0),
(96, 1, '2024-01-08 10:36:58', '2024-01-08 14:36:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_659c085ea6541', '', '', '2024-01-08 10:36:58', '2024-01-08 14:36:58', '', 94, 'http://gymfitness.test:8080/?post_type=acf-field&p=96', 1, 'acf-field', '', 0),
(97, 1, '2024-01-08 10:46:09', '2024-01-08 14:46:09', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Bienvenida', 'bienvenida', 'publish', 'closed', 'closed', '', 'field_659c09f90bbb0', '', '', '2024-01-25 11:00:00', '2024-01-25 15:00:00', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=97', 4, 'acf-field', '', 0),
(98, 1, '2024-01-08 10:46:09', '2024-01-08 14:46:09', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Áreas', 'bienvenida_copiar', 'publish', 'closed', 'closed', '', 'field_659c0a430bbb2', '', '', '2024-01-25 11:00:01', '2024-01-25 15:00:01', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=98', 7, 'acf-field', '', 0),
(99, 1, '2024-01-08 10:52:20', '2024-01-08 14:52:20', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Área 2', 'area_2', 'publish', 'closed', 'closed', '', 'field_659c0bc27a603', '', '', '2024-01-25 11:00:01', '2024-01-25 15:00:01', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=99', 9, 'acf-field', '', 0),
(100, 1, '2024-01-08 10:52:20', '2024-01-08 14:52:20', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_659c0bc27a604', '', '', '2024-01-09 09:53:34', '2024-01-09 13:53:34', '', 99, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=100', 0, 'acf-field', '', 0),
(101, 1, '2024-01-08 10:52:20', '2024-01-08 14:52:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_659c0bc27a605', '', '', '2024-01-08 10:52:20', '2024-01-08 14:52:20', '', 99, 'http://gymfitness.test:8080/?post_type=acf-field&p=101', 1, 'acf-field', '', 0),
(102, 1, '2024-01-08 10:52:20', '2024-01-08 14:52:20', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Área 3', 'area_3', 'publish', 'closed', 'closed', '', 'field_659c0be87a609', '', '', '2024-01-25 11:00:01', '2024-01-25 15:00:01', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=102', 10, 'acf-field', '', 0),
(103, 1, '2024-01-08 10:52:20', '2024-01-08 14:52:20', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_659c0be87a60a', '', '', '2024-01-09 09:57:53', '2024-01-09 13:57:53', '', 102, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=103', 0, 'acf-field', '', 0),
(104, 1, '2024-01-08 10:52:20', '2024-01-08 14:52:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_659c0be87a60b', '', '', '2024-01-08 10:52:20', '2024-01-08 14:52:20', '', 102, 'http://gymfitness.test:8080/?post_type=acf-field&p=104', 1, 'acf-field', '', 0),
(105, 1, '2024-01-08 10:52:20', '2024-01-08 14:52:20', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Área 4', 'area_4', 'publish', 'closed', 'closed', '', 'field_659c0c137a60c', '', '', '2024-01-25 11:00:01', '2024-01-25 15:00:01', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=105', 11, 'acf-field', '', 0),
(106, 1, '2024-01-08 10:52:21', '2024-01-08 14:52:21', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_659c0c137a60d', '', '', '2024-01-09 09:58:54', '2024-01-09 13:58:54', '', 105, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=106', 0, 'acf-field', '', 0),
(107, 1, '2024-01-08 10:52:21', '2024-01-08 14:52:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_659c0c137a60e', '', '', '2024-01-08 10:52:21', '2024-01-08 14:52:21', '', 105, 'http://gymfitness.test:8080/?post_type=acf-field&p=107', 1, 'acf-field', '', 0),
(108, 1, '2024-01-08 10:56:48', '2024-01-08 14:56:48', '', 'fitness-375472_1920', '', 'inherit', 'open', 'closed', '', 'fitness-375472_1920-2', '', '', '2024-01-08 10:56:48', '2024-01-08 14:56:48', '', 8, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/fitness-375472_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2024-01-08 10:58:36', '2024-01-08 14:58:36', '', 'machines-91849_1920', '', 'inherit', 'open', 'closed', '', 'machines-91849_1920', '', '', '2024-01-08 10:58:36', '2024-01-08 14:58:36', '', 8, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/machines-91849_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2024-01-08 10:59:16', '2024-01-08 14:59:16', '<!-- wp:paragraph -->\r\n<p>Página de inicio </p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-01-08 10:59:16', '2024-01-08 14:59:16', '', 8, 'http://gymfitness.test:8080/?p=110', 0, 'revision', '', 0),
(112, 1, '2024-01-10 08:59:24', '2024-01-10 12:59:24', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"instructores\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Instructores', 'instructores', 'publish', 'closed', 'closed', '', 'group_659e92f9be678', '', '', '2024-01-10 09:51:08', '2024-01-10 13:51:08', '', 0, 'http://gymfitness.test:8080/?post_type=acf-field-group&#038;p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2024-01-10 08:59:24', '2024-01-10 12:59:24', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:5:\"pesas\";s:5:\"Pesas\";s:6:\"cardio\";s:6:\"Cardio\";s:17:\"acondicionamiento\";s:17:\"Acondicionamiento\";s:4:\"yoga\";s:4:\"Yoga\";s:8:\"spinning\";s:8:\"Spinning\";s:5:\"boxeo\";s:5:\"Boxeo\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"label\";s:12:\"allow_custom\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:21:\"Añadir nueva opción\";}', 'Especialidad', 'especialidad', 'publish', 'closed', 'closed', '', 'field_659e92fbdebd1', '', '', '2024-01-10 09:51:08', '2024-01-10 13:51:08', '', 112, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=113', 0, 'acf-field', '', 0),
(114, 1, '2024-01-10 09:04:10', '2024-01-10 13:04:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent laoreet tristique lacus vitae sollicitudin.', 'Mario', '', 'publish', 'closed', 'closed', '', 'mario', '', '', '2024-01-10 09:04:10', '2024-01-10 13:04:10', '', 0, 'http://gymfitness.test:8080/?post_type=instructores&#038;p=114', 0, 'instructores', '', 0),
(115, 1, '2024-01-10 09:02:20', '2024-01-10 13:02:20', '', 'people-2604149_1920', '', 'inherit', 'open', 'closed', '', 'people-2604149_1920', '', '', '2024-01-10 09:02:20', '2024-01-10 13:02:20', '', 114, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/people-2604149_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2024-01-10 09:05:35', '2024-01-10 13:05:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent laoreet tristique lacus vitae sollicitudin.', 'Andrea', '', 'publish', 'closed', 'closed', '', 'andrea', '', '', '2024-01-10 09:05:35', '2024-01-10 13:05:35', '', 0, 'http://gymfitness.test:8080/?post_type=instructores&#038;p=116', 0, 'instructores', '', 0),
(118, 1, '2024-01-10 09:06:48', '2024-01-10 13:06:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent laoreet tristique lacus vitae sollicitudin.', 'Vanesa', '', 'publish', 'closed', 'closed', '', 'vanesa', '', '', '2024-01-10 09:06:48', '2024-01-10 13:06:48', '', 0, 'http://gymfitness.test:8080/?post_type=instructores&#038;p=118', 0, 'instructores', '', 0),
(119, 1, '2024-01-10 09:06:26', '2024-01-10 13:06:26', '', 'mobility-603558_1280', '', 'inherit', 'open', 'closed', '', 'mobility-603558_1280', '', '', '2024-01-10 09:06:26', '2024-01-10 13:06:26', '', 118, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/mobility-603558_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2024-01-10 09:08:06', '2024-01-10 13:08:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent laoreet tristique lacus vitae sollicitudin.', 'Pedro', '', 'publish', 'closed', 'closed', '', 'pedro', '', '', '2024-01-10 09:08:06', '2024-01-10 13:08:06', '', 0, 'http://gymfitness.test:8080/?post_type=instructores&#038;p=120', 0, 'instructores', '', 0),
(121, 1, '2024-01-10 09:07:43', '2024-01-10 13:07:43', '', 'kettlebell-2052793_1280', '', 'inherit', 'open', 'closed', '', 'kettlebell-2052793_1280', '', '', '2024-01-10 09:07:43', '2024-01-10 13:07:43', '', 120, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/kettlebell-2052793_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2024-01-18 08:21:56', '2024-01-18 12:21:56', 'Excelente área de selfis ', 'Juan de la torre', '', 'publish', 'closed', 'closed', '', 'juan-de-la-torre', '', '', '2024-01-18 08:21:56', '2024-01-18 12:21:56', '', 0, 'http://gymfitness.test:8080/?post_type=testimoniales&#038;p=124', 0, 'testimoniales', '', 0),
(126, 1, '2024-01-18 08:23:18', '2024-01-18 12:23:18', 'Excelente GYM ', 'Luisa', '', 'publish', 'closed', 'closed', '', 'luisa', '', '', '2024-01-18 08:23:18', '2024-01-18 12:23:18', '', 0, 'http://gymfitness.test:8080/?post_type=testimoniales&#038;p=126', 0, 'testimoniales', '', 0),
(127, 1, '2024-01-18 08:23:11', '2024-01-18 12:23:11', '', 'weights-652486_1920', '', 'inherit', 'open', 'closed', '', 'weights-652486_1920', '', '', '2024-01-18 08:23:11', '2024-01-18 12:23:11', '', 126, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/weights-652486_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2024-01-18 08:24:21', '2024-01-18 12:24:21', 'Instalaciones limpias', 'Pedro', '', 'publish', 'closed', 'closed', '', 'pedro', '', '', '2024-01-18 08:24:21', '2024-01-18 12:24:21', '', 0, 'http://gymfitness.test:8080/?post_type=testimoniales&#038;p=128', 0, 'testimoniales', '', 0),
(130, 1, '2024-01-25 10:54:34', '2024-01-25 14:54:34', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Hero', '_copiar', 'publish', 'closed', 'closed', '', 'field_65b275ee755ba', '', '', '2024-01-25 10:54:34', '2024-01-25 14:54:34', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&p=130', 0, 'acf-field', '', 0),
(131, 1, '2024-01-25 10:58:17', '2024-01-25 14:58:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Hero Heading', 'hero_heading', 'publish', 'closed', 'closed', '', 'field_65b276325f2b5', '', '', '2024-01-25 11:00:00', '2024-01-25 15:00:00', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=131', 2, 'acf-field', '', 0),
(132, 1, '2024-01-25 10:58:17', '2024-01-25 14:58:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Hero Texto', 'hero_texto', 'publish', 'closed', 'closed', '', 'field_65b2765b5f2b6', '', '', '2024-01-25 11:00:00', '2024-01-25 15:00:00', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&#038;p=132', 3, 'acf-field', '', 0),
(133, 1, '2024-01-25 11:00:00', '2024-01-25 15:00:00', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Hero Imagen', 'hero_imagen', 'publish', 'closed', 'closed', '', 'field_65b277123ba82', '', '', '2024-01-25 11:00:00', '2024-01-25 15:00:00', '', 90, 'http://gymfitness.test:8080/?post_type=acf-field&p=133', 1, 'acf-field', '', 0),
(134, 1, '2024-01-25 11:03:29', '2024-01-25 15:03:29', '', 'gym-526995_1920', '', 'inherit', 'open', 'closed', '', 'gym-526995_1920', '', '', '2024-01-25 11:03:29', '2024-01-25 15:03:29', '', 8, 'http://gymfitness.test:8080/wp-content/uploads/2024/01/gym-526995_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2024-01-25 11:03:54', '2024-01-25 15:03:54', '<!-- wp:paragraph -->\r\n<p>Página de inicio </p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-01-25 11:03:54', '2024-01-25 15:03:54', '', 8, 'http://gymfitness.test:8080/?p=135', 0, 'revision', '', 0),
(136, 1, '2024-01-26 10:05:47', '2024-01-26 14:05:47', '<!-- wp:paragraph -->\r\n<p>Página de inicio </p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-01-26 10:05:47', '2024-01-26 14:05:47', '', 8, 'http://gymfitness.test:8080/?p=136', 0, 'revision', '', 0),
(137, 1, '2024-01-26 10:06:27', '2024-01-26 14:06:27', '<!-- wp:paragraph -->\r\n<p>Página de inicio </p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-01-26 10:06:27', '2024-01-26 14:06:27', '', 8, 'http://gymfitness.test:8080/?p=137', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'twentytwentyfour', 'twentytwentyfour', 0),
(3, 'Menu principal', 'menu-principal', 0),
(4, 'Tips', 'tips', 0),
(5, 'Ejercicios', 'ejercicios', 0),
(6, 'Basico', 'basico', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 2, 0),
(18, 3, 0),
(20, 3, 0),
(21, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(69, 4, 0),
(69, 5, 0),
(72, 4, 0),
(72, 5, 0),
(74, 6, 0),
(76, 5, 0),
(76, 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', 'Ricober Emilio'),
(3, 1, 'last_name', 'Martinez Merlo'),
(4, 1, 'description', 'Me tomo 30 fotos en el GYM'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '129'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-12-05T13:05:46.813Z\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '3'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(26, 1, 'wp_user-settings-time', '1704555792'),
(27, 1, 'session_tokens', 'a:1:{s:64:\"e7920ae9ff65b5240f94293c2f1aa9a8c2cc897e9699fd02cff0cfc3a89b473b\";a:4:{s:10:\"expiration\";i:1706639596;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1706466796;}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$Bxclv9pcTcA0I/epYy4iCQrKvUtrs9/', 'root', 'ricoberweb@gmail.com', 'http://gymfitness.test:8080', '2023-11-28 14:34:23', '', 0, 'Ricober Emilio Martinez Merlo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=796;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
