-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2017 at 09:55 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wocmrce`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2017-01-19 01:09:08', '2017-01-19 01:09:08', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress3/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress3/wordpress', 'yes'),
(3, 'blogname', 'Online Stationary Store', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tahmina@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:7:{i:0;s:26:"contact-form-add/forms.php";i:1;s:39:"ditty-news-ticker/ditty-news-ticker.php";i:2;s:43:"envira-gallery-lite/envira-gallery-lite.php";i:3;s:41:"google-maps-widget/google-maps-widget.php";i:4;s:23:"ml-slider/ml-slider.php";i:5;s:47:"video-sidebar-widgets/video-sidebar-widgets.php";i:6;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', 'a:2:{i:0;s:75:"C:\\xampp\\htdocs\\wordpress3\\wordpress/wp-content/themes/storefront/style.css";i:1;s:0:"";}', 'no'),
(39, 'template', 'storefront', 'yes'),
(40, 'stylesheet', 'storefront', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:41:"google-maps-widget/google-maps-widget.php";a:2:{i:0;s:3:"GMW";i:1;s:9:"uninstall";}}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '155', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:143:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:23:"edit_ditty_news_tickers";b:1;s:30:"edit_others_ditty_news_tickers";b:1;s:26:"publish_ditty_news_tickers";b:1;s:31:"read_private_ditty_news_tickers";b:1;s:23:"read_ditty_news_tickers";b:1;s:25:"delete_ditty_news_tickers";b:1;s:33:"delete_private_ditty_news_tickers";b:1;s:35:"delete_published_ditty_news_tickers";b:1;s:32:"delete_others_ditty_news_tickers";b:1;s:31:"edit_private_ditty_news_tickers";b:1;s:33:"edit_published_ditty_news_tickers";b:1;s:33:"modify_ditty_news_ticker_settings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:45:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:23:"edit_ditty_news_tickers";b:1;s:30:"edit_others_ditty_news_tickers";b:1;s:26:"publish_ditty_news_tickers";b:1;s:31:"read_private_ditty_news_tickers";b:1;s:23:"read_ditty_news_tickers";b:1;s:25:"delete_ditty_news_tickers";b:1;s:33:"delete_private_ditty_news_tickers";b:1;s:35:"delete_published_ditty_news_tickers";b:1;s:32:"delete_others_ditty_news_tickers";b:1;s:31:"edit_private_ditty_news_tickers";b:1;s:33:"edit_published_ditty_news_tickers";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:16:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:23:"edit_ditty_news_tickers";b:1;s:26:"publish_ditty_news_tickers";b:1;s:23:"read_ditty_news_tickers";b:1;s:25:"delete_ditty_news_tickers";b:1;s:35:"delete_published_ditty_news_tickers";b:1;s:33:"edit_published_ditty_news_tickers";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:8:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:23:"edit_ditty_news_tickers";b:1;s:23:"read_ditty_news_tickers";b:1;s:25:"delete_ditty_news_tickers";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:3:{s:4:"read";b:1;s:7:"level_0";b:1;s:23:"read_ditty_news_tickers";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:18:"googlemapswidget-2";i:1;s:14:"videosidebar-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:10:{i:1490948073;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1490950527;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"83cc52f2b5320a237bfac00e9712508d";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:188;}}}}i:1490965750;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490967502;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491004800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491008977;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491009054;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491010702;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491696000;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(114, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:17:"tahmina@gmail.com";s:7:"version";s:5:"4.4.6";s:9:"timestamp";i:1484788197;}', 'yes'),
(117, '_site_transient_timeout_browser_7c4aa0bff0c4bc07d3a72906b28b292d', '1485392981', 'yes'),
(118, '_site_transient_browser_7c4aa0bff0c4bc07d3a72906b28b292d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(119, 'can_compress_scripts', '1', 'yes'),
(124, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:5:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.4";s:7:"version";s:5:"4.6.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.7.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.7-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.7-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.7";s:7:"version";s:5:"4.5.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.4.8-partial-6.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.8-rollback-6.zip";}s:7:"current";s:5:"4.4.8";s:7:"version";s:5:"4.4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.4.6";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1490943339;s:15:"version_checked";s:5:"4.4.6";s:12:"translations";a:0:{}}', 'yes'),
(141, 'category_children', 'a:0:{}', 'yes'),
(144, '_transient_twentysixteen_categories', '2', 'yes'),
(146, 'current_theme', 'Storefront', 'yes'),
(147, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:12;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484792629;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(150, '_transient_twentyfifteen_categories', '2', 'yes'),
(154, '_site_transient_timeout_wporg_theme_feature_list', '1484804645', 'yes'),
(155, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(158, 'theme_mods_twentysixteen', 'a:2:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484792897;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}}}s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:12;}}', 'yes'),
(159, 'theme_mods_fashion-store-lite', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:12;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484793904;s:4:"data";a:12:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}s:13:"home_footer_1";N;s:13:"home_footer_2";N;s:13:"home_footer_3";N;s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}s:9:"sidebar-6";a:0:{}s:9:"sidebar-7";a:0:{}s:9:"sidebar-8";a:0:{}}}}', 'yes'),
(163, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:12;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484792630;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}}}}', 'yes'),
(173, 'woocommerce_default_country', 'BD:NOA', 'yes'),
(174, 'woocommerce_allowed_countries', 'all', 'yes'),
(175, 'woocommerce_all_except_countries', '', 'yes'),
(176, 'woocommerce_specific_allowed_countries', '', 'yes'),
(177, 'woocommerce_ship_to_countries', '', 'yes'),
(178, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(179, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(180, 'woocommerce_calc_taxes', 'no', 'yes'),
(181, 'woocommerce_demo_store', 'no', 'yes'),
(182, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(183, 'woocommerce_currency', 'BDT', 'yes'),
(184, 'woocommerce_currency_pos', 'left', 'yes'),
(185, 'woocommerce_price_thousand_sep', ',', 'yes'),
(186, 'woocommerce_price_decimal_sep', '.', 'yes'),
(187, 'woocommerce_price_num_decimals', '2', 'yes'),
(188, 'woocommerce_weight_unit', 'g', 'yes'),
(189, 'woocommerce_dimension_unit', 'in', 'yes'),
(190, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(191, 'woocommerce_review_rating_required', 'yes', 'no'),
(192, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(193, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(194, 'woocommerce_shop_page_id', '15', 'yes'),
(195, 'woocommerce_shop_page_display', '', 'yes'),
(196, 'woocommerce_category_archive_display', '', 'yes'),
(197, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(198, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(199, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(200, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(201, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(202, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(203, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(204, 'woocommerce_manage_stock', 'yes', 'yes'),
(205, 'woocommerce_hold_stock_minutes', '60', 'no'),
(206, 'woocommerce_notify_low_stock', 'yes', 'no'),
(207, 'woocommerce_notify_no_stock', 'yes', 'no'),
(208, 'woocommerce_stock_email_recipient', 'tahmina@gmail.com', 'no'),
(209, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(210, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(211, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(212, 'woocommerce_stock_format', '', 'yes'),
(213, 'woocommerce_file_download_method', 'force', 'no'),
(214, 'woocommerce_downloads_require_login', 'no', 'no'),
(215, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(216, 'woocommerce_prices_include_tax', 'no', 'yes'),
(217, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(218, 'woocommerce_shipping_tax_class', '', 'yes'),
(219, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(220, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(221, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(222, 'woocommerce_tax_display_cart', 'excl', 'no'),
(223, 'woocommerce_price_display_suffix', '', 'yes'),
(224, 'woocommerce_tax_total_display', 'itemized', 'no'),
(225, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(226, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(227, 'woocommerce_ship_to_destination', 'billing', 'no'),
(228, 'woocommerce_enable_coupons', 'yes', 'yes'),
(229, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(230, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(231, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(232, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(233, 'woocommerce_cart_page_id', '16', 'yes'),
(234, 'woocommerce_checkout_page_id', '17', 'yes'),
(235, 'woocommerce_terms_page_id', '', 'no'),
(236, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(237, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(238, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(239, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(240, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(241, 'woocommerce_myaccount_page_id', '18', 'yes'),
(242, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(243, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(244, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(245, 'woocommerce_registration_generate_username', 'yes', 'no'),
(246, 'woocommerce_registration_generate_password', 'no', 'no'),
(247, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(248, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(249, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(250, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(251, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(252, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(253, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(254, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(255, 'woocommerce_email_from_name', 'woocommerce', 'no'),
(256, 'woocommerce_email_from_address', 'tahmina@gmail.com', 'no'),
(257, 'woocommerce_email_header_image', '', 'no'),
(258, 'woocommerce_email_footer_text', 'woocommerce - Powered by WooCommerce', 'no'),
(259, 'woocommerce_email_base_color', '#557da1', 'no'),
(260, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(261, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(262, 'woocommerce_email_text_color', '#505050', 'no'),
(263, 'woocommerce_api_enabled', 'yes', 'yes'),
(267, 'woocommerce_db_version', '2.6.12', 'yes'),
(268, 'woocommerce_version', '2.6.12', 'yes'),
(270, 'recently_activated', 'a:0:{}', 'yes'),
(271, 'woocommerce_admin_notices', 'a:1:{i:0;s:19:"no_shipping_methods";}', 'yes'),
(273, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(274, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(276, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(281, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(283, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(284, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(285, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(288, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(290, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(291, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:4:"p=16";i:1;s:6:"/cart/";i:2;s:4:"p=17";i:3;s:10:"/checkout/";i:4;s:4:"p=18";i:5;s:12:"/my-account/";}', 'yes'),
(292, '_transient_timeout_geoip_::1', '1485394730', 'no'),
(293, '_transient_geoip_::1', '', 'no'),
(296, '_transient_timeout_geoip_503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', '1485394735', 'no'),
(297, '_transient_geoip_503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', '', 'no'),
(298, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(299, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(300, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:17:"tahmina@gmail.com";}', 'yes'),
(301, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(302, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(303, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(304, '_transient_shipping-transient-version', '1484790488', 'yes'),
(318, '_transient_product_query-transient-version', '1490942513', 'yes'),
(319, '_transient_product-transient-version', '1490942514', 'yes'),
(330, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(350, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(352, '_transient_twentyfourteen_category_count', '4', 'yes'),
(355, 'theme_mods_clean-commerce', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:12;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484793127;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(356, 'widget_clean-commerce-social', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(357, 'widget_clean-commerce-featured-page', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(358, 'widget_clean-commerce-recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(360, '_transient_clean_commerce_categories', '2', 'yes'),
(364, 'theme_mods_aza-lite', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:12;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484793388;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}s:13:"home_footer_1";N;s:13:"home_footer_2";N;s:13:"home_footer_3";N;}}}', 'yes'),
(366, '_transient_aza_categories', '2', 'yes'),
(367, 'theme_switched_via_customizer', '', 'yes'),
(370, '_transient_fashion_store_lite_categories', '2', 'yes'),
(372, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1490943343;s:7:"checked";a:8:{s:8:"aza-lite";s:5:"1.0.9";s:14:"clean-commerce";s:5:"1.0.4";s:18:"fashion-store-lite";s:5:"1.2.5";s:10:"storefront";s:5:"2.1.7";s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:15:"twentyseventeen";s:3:"1.1";s:13:"twentysixteen";s:3:"1.1";}s:8:"response";a:6:{s:8:"aza-lite";a:4:{s:5:"theme";s:8:"aza-lite";s:11:"new_version";s:5:"1.1.1";s:3:"url";s:38:"https://wordpress.org/themes/aza-lite/";s:7:"package";s:56:"https://downloads.wordpress.org/theme/aza-lite.1.1.1.zip";}s:14:"clean-commerce";a:4:{s:5:"theme";s:14:"clean-commerce";s:11:"new_version";s:5:"1.0.7";s:3:"url";s:44:"https://wordpress.org/themes/clean-commerce/";s:7:"package";s:62:"https://downloads.wordpress.org/theme/clean-commerce.1.0.7.zip";}s:10:"storefront";a:4:{s:5:"theme";s:10:"storefront";s:11:"new_version";s:5:"2.1.8";s:3:"url";s:40:"https://wordpress.org/themes/storefront/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/storefront.2.1.8.zip";}s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.7.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.3.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(373, 'theme_mods_storefront', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:12;s:7:"primary";i:12;}s:17:"storefront_styles";s:4645:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #d5d9db;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #d5d9db;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #ffffff;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #2c2d33;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #9aa0a7;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #d5d9db;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #2c2d33;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #2c2d33;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #484c51;\n			}\n\n			.widget h1 {\n				border-bottom-color: #484c51;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #43454b;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #75777d;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #96588a;\n				border-color: #96588a;\n				color: #ffffff;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #7d3f71;\n				border-color: #7d3f71;\n				color: #ffffff;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current, .widget a.button.checkout {\n				background-color: #2c2d33;\n				border-color: #2c2d33;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #13141a;\n				border-color: #13141a;\n				color: #ffffff;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #61656b;\n			}\n\n			.site-footer a:not(.button) {\n				color: #2c2d33;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #494c50;\n			}\n\n			#order_review,\n			#payment .payment_methods > li .payment_box {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:hover {\n				background-color: #f5f5f5;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #b3b9c0;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #9aa0a7;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #24252b;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2233:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #d5d9db;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #43454b;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #75777d;\n			}\n\n			.onsale {\n				border-color: #43454b;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.woocommerce-breadcrumb,\n			#reviews .commentlist li .comment_container {\n				background-color: #f8f8f8;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #43454b;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #96588a;\n				color: #ffffff;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #7d3f71;\n				border-color: #7d3f71;\n				color: #ffffff;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #9aa0a7;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";}', 'yes'),
(392, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(393, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes'),
(394, 'ml-slider_children', 'a:0:{}', 'yes'),
(419, 'gmw_options', 'a:16:{s:6:"sc_map";s:3:"gmw";s:7:"api_key";s:0:"";s:8:"track_ga";s:1:"0";s:14:"include_jquery";s:1:"1";s:17:"include_gmaps_api";s:1:"1";s:19:"include_lightbox_js";s:1:"1";s:20:"include_lightbox_css";s:1:"1";s:16:"disable_tooltips";s:1:"0";s:15:"disable_sidebar";s:1:"0";s:15:"activation_code";s:0:"";s:14:"license_active";s:0:"";s:15:"license_expires";s:0:"";s:12:"license_type";s:0:"";s:13:"first_version";s:4:"3.47";s:13:"first_install";i:1484989942;s:13:"last_tracking";b:0;}', 'yes'),
(422, 'widget_googlemapswidget', 'a:2:{i:2;a:31:{s:5:"title";s:3:"Map";s:7:"address";s:8:"noakhali";s:14:"thumb_pin_type";s:10:"predefined";s:15:"thumb_pin_color";s:7:"#ff0000";s:14:"thumb_pin_size";s:7:"default";s:15:"thumb_pin_label";s:1:"A";s:13:"thumb_pin_img";s:0:"";s:11:"thumb_width";i:250;s:12:"thumb_height";i:250;s:10:"thumb_zoom";s:2:"13";s:10:"thumb_type";s:7:"roadmap";s:15:"thumb_link_type";s:8:"lightbox";s:10:"thumb_link";s:0:"";s:12:"thumb_header";s:0:"";s:12:"thumb_footer";s:0:"";s:18:"thumb_color_scheme";s:3:"new";s:12:"thumb_format";s:3:"png";s:10:"thumb_lang";s:2:"en";s:16:"thumb_powered_by";s:1:"0";s:19:"lightbox_fullscreen";i:0;s:14:"lightbox_width";i:550;s:15:"lightbox_height";i:550;s:13:"lightbox_mode";s:5:"place";s:17:"lightbox_map_type";s:7:"roadmap";s:13:"lightbox_zoom";s:2:"14";s:16:"lightbox_feature";a:1:{i:0;s:13:"overlay_close";}s:15:"lightbox_header";s:0:"";s:15:"lightbox_footer";s:0:"";s:13:"lightbox_skin";s:5:"light";s:13:"lightbox_lang";s:2:"en";s:8:"core_ver";s:4:"3.47";}s:12:"_multiwidget";i:1;}', 'yes'),
(428, 'widget_videosidebar', 'a:2:{i:2;a:7:{s:6:"title2";s:5:"vedio";s:8:"v_width2";s:0:"";s:9:"v_height2";s:0:"";s:11:"v_autoplay2";s:1:"1";s:5:"v_id2";s:0:"";s:8:"v_source";s:7:"YouTube";s:6:"v_cap2";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(429, 'widget_randomvideosidebar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(430, 'widget_postmetavideo', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(436, 'envira_gallery_116', '1', 'yes'),
(437, 'envira_gallery_121', '1', 'yes'),
(438, 'envira_gallery_review', 'a:2:{s:4:"time";i:1484991112;s:9:"dismissed";b:0;}', 'yes'),
(451, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.6";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1484992241;s:7:"version";s:3:"4.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(478, 'smuzform_plugin_version', '1.4', 'yes'),
(479, 'smuzform_db_version', '1.0', 'yes'),
(481, 'smuzform_upload_dir', 'C:\\xampp\\htdocs\\wordpress3\\wordpress/wp-content\\uploads\\smuzformfiles-axELS5mMs1CP4QCtmmGlf5Cyq', 'yes'),
(485, '_site_transient_timeout_browser_953df361797b16668535c854a38334c5', '1485599119', 'yes'),
(486, '_site_transient_browser_953df361797b16668535c854a38334c5', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(499, '_transient_timeout_external_ip_address_::1', '1491534730', 'no'),
(500, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(502, '_transient_timeout__eg_cache_132', '1491016334', 'no'),
(503, '_transient__eg_cache_132', 'a:3:{s:2:"id";i:132;s:7:"gallery";a:4:{i:133;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-2.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-2.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:139;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-3.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-3.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:140;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-4.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-4.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:141;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-5.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-5.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}}s:6:"config";a:19:{s:4:"type";s:7:"default";s:7:"columns";s:1:"0";s:13:"gallery_theme";s:4:"base";s:23:"justified_gallery_theme";s:6:"normal";s:6:"gutter";i:10;s:6:"margin";i:10;s:10:"image_size";s:7:"default";s:10:"crop_width";i:640;s:11:"crop_height";i:480;s:4:"crop";i:0;s:20:"justified_row_height";i:150;s:16:"lightbox_enabled";i:1;s:14:"lightbox_theme";s:4:"base";s:19:"lightbox_image_size";s:7:"default";s:13:"title_display";s:5:"float";s:7:"classes";a:1:{i:0;s:0:"";}s:3:"rtl";i:0;s:5:"title";s:0:"";s:4:"slug";s:3:"132";}}', 'no'),
(514, '_transient_timeout_wc_shipping_method_count_0_1484790488', '1493522745', 'no'),
(515, '_transient_wc_shipping_method_count_0_1484790488', '0', 'no'),
(516, '_transient_timeout_wc_report_sales_by_date', '1491033186', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(517, '_transient_wc_report_sales_by_date', 'a:7:{s:32:"35b62e66e4ad45380c8d4bf1b33b33bc";a:0:{}s:32:"74bd08f4af0d0967cab843639ed59846";a:0:{}s:32:"d9ce1301ab560b23a19c45d89661f18e";a:0:{}s:32:"17b592acaa6b7c6b93b021e75db4fd79";N;s:32:"a605948b7816268404d14f9358af1457";a:0:{}s:32:"653eaa18fbdb7e7b03712bb2f3034180";a:0:{}s:32:"3ec7ab1b2f65cc4bbf5b0782c7f121e9";a:0:{}}', 'no'),
(518, '_transient_timeout_wc_admin_report', '1491017146', 'no'),
(519, '_transient_wc_admin_report', 'a:1:{s:32:"57a9e0c8fbd4bc53f635d8b59972026b";a:0:{}}', 'no'),
(524, '_transient_timeout_plugin_slugs', '1491029754', 'no'),
(525, '_transient_plugin_slugs', 'a:9:{i:0;s:19:"akismet/akismet.php";i:1;s:26:"contact-form-add/forms.php";i:2;s:39:"ditty-news-ticker/ditty-news-ticker.php";i:3;s:43:"envira-gallery-lite/envira-gallery-lite.php";i:4;s:41:"google-maps-widget/google-maps-widget.php";i:5;s:9:"hello.php";i:6;s:23:"ml-slider/ml-slider.php";i:7;s:47:"video-sidebar-widgets/video-sidebar-widgets.php";i:8;s:27:"woocommerce/woocommerce.php";}', 'no'),
(526, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1490973953', 'no'),
(527, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(529, '_transient_timeout_wc_shipping_method_count_1_1484790488', '1493522797', 'no'),
(530, '_transient_wc_shipping_method_count_1_1484790488', '0', 'no'),
(538, '_site_transient_timeout_browser_41ce19bcc46aa82d3c107d381e9914c8', '1491537425', 'yes'),
(539, '_site_transient_browser_41ce19bcc46aa82d3c107d381e9914c8', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(558, '_transient_timeout_wc_related_19', '1491020369', 'no'),
(559, '_transient_wc_related_19', 'a:0:{}', 'no'),
(566, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1490945312', 'yes'),
(567, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4321;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2463;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2354;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:1964;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1812;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1569;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1529;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1417;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1321;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1316;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1300;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1265;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1251;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1075;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1037;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1020;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:978;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:900;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:808;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:775;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:773;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:756;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:747;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:661;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:649;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:641;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:638;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:632;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:632;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:603;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:593;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:583;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:583;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:565;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:563;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:562;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:557;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:551;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:535;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:526;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:519;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:516;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:498;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:494;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:486;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:485;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:477;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:472;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:460;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:459;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:451;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:450;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:441;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:428;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:425;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:419;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:414;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:403;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:398;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:396;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:395;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:391;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:389;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:389;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:388;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:371;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:365;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:358;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:354;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:342;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:331;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:329;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:328;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:325;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:319;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:317;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:317;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:316;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:304;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:303;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:289;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:289;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:281;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:281;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:279;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:278;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:277;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:277;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:275;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:269;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:267;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:266;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:263;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:262;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:261;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:260;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:260;}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";i:260;}}', 'yes'),
(586, '_transient_timeout_wc_related_161', '1491033229', 'no'),
(587, '_transient_wc_related_161', 'a:2:{i:0;s:3:"168";i:1;s:3:"170";}', 'no'),
(588, '_transient_timeout_wc_related_168', '1491024104', 'no'),
(589, '_transient_wc_related_168', 'a:1:{i:0;s:3:"161";}', 'no'),
(601, '_transient_timeout__eg_cache_all', '1491025383', 'no'),
(602, '_transient__eg_cache_all', 'a:1:{i:0;a:3:{s:2:"id";i:132;s:7:"gallery";a:4:{i:133;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-2.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-2.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:139;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-3.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-3.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:140;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-4.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-4.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:141;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-5.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-5.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}}s:6:"config";a:19:{s:4:"type";s:7:"default";s:7:"columns";s:1:"0";s:13:"gallery_theme";s:4:"base";s:23:"justified_gallery_theme";s:6:"normal";s:6:"gutter";i:10;s:6:"margin";i:10;s:10:"image_size";s:7:"default";s:10:"crop_width";i:640;s:11:"crop_height";i:480;s:4:"crop";i:0;s:20:"justified_row_height";i:150;s:16:"lightbox_enabled";i:1;s:14:"lightbox_theme";s:4:"base";s:19:"lightbox_image_size";s:7:"default";s:13:"title_display";s:5:"float";s:7:"classes";a:1:{i:0;s:0:"";}s:3:"rtl";i:0;s:5:"title";s:0:"";s:4:"slug";s:3:"132";}}}', 'no'),
(619, '_transient_timeout_wc_related_170', '1491029375', 'no'),
(620, '_transient_wc_related_170', 'a:2:{i:0;s:3:"161";i:1;s:3:"168";}', 'no'),
(665, 'product_cat_children', 'a:2:{i:19;a:3:{i:0;i:20;i:1;i:23;i:2;i:24;}i:20;a:2:{i:0;i:21;i:1;i:22;}}', 'yes'),
(689, '_transient_timeout_wc_featured_products', '1493534539', 'no'),
(690, '_transient_wc_featured_products', 'a:0:{}', 'no'),
(691, '_transient_timeout_wc_products_onsale', '1493534539', 'no'),
(692, '_transient_wc_products_onsale', 'a:5:{i:0;i:19;i:1;i:161;i:2;i:168;i:3;i:170;i:4;i:175;}', 'no'),
(693, '_transient_timeout_wc_term_counts', '1493534540', 'no'),
(694, '_transient_wc_term_counts', 'a:6:{i:20;s:1:"1";i:24;s:1:"0";i:21;s:1:"0";i:23;s:1:"0";i:19;s:1:"4";i:22;s:1:"1";}', 'no'),
(698, '_transient_timeout_wc_low_stock_count', '1493534812', 'no'),
(699, '_transient_wc_low_stock_count', '0', 'no'),
(700, '_transient_timeout_wc_outofstock_count', '1493534812', 'no'),
(701, '_transient_wc_outofstock_count', '0', 'no'),
(703, '_site_transient_timeout_theme_roots', '1490945124', 'yes'),
(704, '_site_transient_theme_roots', 'a:8:{s:8:"aza-lite";s:7:"/themes";s:14:"clean-commerce";s:7:"/themes";s:18:"fashion-store-lite";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(706, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1490943348;s:7:"checked";a:9:{s:19:"akismet/akismet.php";s:5:"3.1.7";s:26:"contact-form-add/forms.php";s:3:"1.6";s:39:"ditty-news-ticker/ditty-news-ticker.php";s:5:"2.1.4";s:43:"envira-gallery-lite/envira-gallery-lite.php";s:7:"1.5.6.2";s:41:"google-maps-widget/google-maps-widget.php";s:4:"3.47";s:9:"hello.php";s:3:"1.6";s:23:"ml-slider/ml-slider.php";s:3:"3.4";s:47:"video-sidebar-widgets/video-sidebar-widgets.php";s:3:"6.0";s:27:"woocommerce/woocommerce.php";s:6:"2.6.12";}s:8:"response";a:7:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.3.zip";s:6:"tested";s:5:"4.7.2";s:13:"compatibility";a:0:{}}s:26:"contact-form-add/forms.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/contact-form-add";s:4:"slug";s:16:"contact-form-add";s:6:"plugin";s:26:"contact-form-add/forms.php";s:11:"new_version";s:3:"1.8";s:3:"url";s:47:"https://wordpress.org/plugins/contact-form-add/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-add.1.8.zip";s:14:"upgrade_notice";s:90:"<ul>\n<li>Added drag and drop in contact form editing panel.</li>\n<li>Bug Fixes.</li>\n</ul>";s:6:"tested";s:5:"4.7.3";s:13:"compatibility";a:0:{}}s:39:"ditty-news-ticker/ditty-news-ticker.php";O:8:"stdClass":8:{s:2:"id";s:31:"w.org/plugins/ditty-news-ticker";s:4:"slug";s:17:"ditty-news-ticker";s:6:"plugin";s:39:"ditty-news-ticker/ditty-news-ticker.php";s:11:"new_version";s:5:"2.1.5";s:3:"url";s:48:"https://wordpress.org/plugins/ditty-news-ticker/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/ditty-news-ticker.zip";s:6:"tested";s:5:"4.7.3";s:13:"compatibility";a:0:{}}s:43:"envira-gallery-lite/envira-gallery-lite.php";O:8:"stdClass":8:{s:2:"id";s:33:"w.org/plugins/envira-gallery-lite";s:4:"slug";s:19:"envira-gallery-lite";s:6:"plugin";s:43:"envira-gallery-lite/envira-gallery-lite.php";s:11:"new_version";s:7:"1.5.6.4";s:3:"url";s:50:"https://wordpress.org/plugins/envira-gallery-lite/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/envira-gallery-lite.zip";s:6:"tested";s:5:"4.7.3";s:13:"compatibility";a:0:{}}s:41:"google-maps-widget/google-maps-widget.php";O:8:"stdClass":8:{s:2:"id";s:32:"w.org/plugins/google-maps-widget";s:4:"slug";s:18:"google-maps-widget";s:6:"plugin";s:41:"google-maps-widget/google-maps-widget.php";s:11:"new_version";s:4:"3.50";s:3:"url";s:49:"https://wordpress.org/plugins/google-maps-widget/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/google-maps-widget.3.50.zip";s:6:"tested";s:5:"4.7.3";s:13:"compatibility";a:0:{}}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":8:{s:2:"id";s:23:"w.org/plugins/ml-slider";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/ml-slider.3.5.zip";s:6:"tested";s:5:"4.7.3";s:13:"compatibility";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":8:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:6:"2.6.14";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/woocommerce.2.6.14.zip";s:6:"tested";s:5:"4.7.3";s:13:"compatibility";a:0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"video-sidebar-widgets/video-sidebar-widgets.php";O:8:"stdClass":6:{s:2:"id";s:35:"w.org/plugins/video-sidebar-widgets";s:4:"slug";s:21:"video-sidebar-widgets";s:6:"plugin";s:47:"video-sidebar-widgets/video-sidebar-widgets.php";s:11:"new_version";s:3:"6.0";s:3:"url";s:52:"https://wordpress.org/plugins/video-sidebar-widgets/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/video-sidebar-widgets.6.0.zip";}}}', 'yes'),
(707, 'mtphr_dnt_caps', '2_1_1', 'yes'),
(708, 'rewrite_rules', 'a:223:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"smuzform/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"smuzform/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"smuzform/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"smuzform/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"smuzform/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"smuzform/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"smuzform/([^/]+)/embed/?$";s:41:"index.php?smuzform=$matches[1]&embed=true";s:29:"smuzform/([^/]+)/trackback/?$";s:35:"index.php?smuzform=$matches[1]&tb=1";s:37:"smuzform/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?smuzform=$matches[1]&paged=$matches[2]";s:44:"smuzform/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?smuzform=$matches[1]&cpage=$matches[2]";s:34:"smuzform/([^/]+)/wc-api(/(.*))?/?$";s:49:"index.php?smuzform=$matches[1]&wc-api=$matches[3]";s:40:"smuzform/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"smuzform/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"smuzform/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?smuzform=$matches[1]&page=$matches[2]";s:25:"smuzform/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"smuzform/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"smuzform/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"smuzform/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"smuzform/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"smuzform/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"ticker/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"ticker/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"ticker/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"ticker/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"ticker/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"ticker/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"ticker/([^/]+)/embed/?$";s:50:"index.php?ditty_news_ticker=$matches[1]&embed=true";s:27:"ticker/([^/]+)/trackback/?$";s:44:"index.php?ditty_news_ticker=$matches[1]&tb=1";s:35:"ticker/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?ditty_news_ticker=$matches[1]&paged=$matches[2]";s:42:"ticker/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?ditty_news_ticker=$matches[1]&cpage=$matches[2]";s:32:"ticker/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?ditty_news_ticker=$matches[1]&wc-api=$matches[3]";s:38:"ticker/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"ticker/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:31:"ticker/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?ditty_news_ticker=$matches[1]&page=$matches[2]";s:23:"ticker/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"ticker/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"ticker/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"ticker/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"ticker/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"ticker/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=155&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(709, 'widget_mtphr-dnt-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(710, 'mtphr_dnt_general_settings', '', 'yes'),
(711, '_transient_timeout_wc_upgrade_notice_2.6.12', '1491029757', 'no'),
(712, '_transient_wc_upgrade_notice_2.6.12', '', 'no'),
(724, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 5, '_wp_attached_file', '2017/01/20150718_103259-2-e1484788526153.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:391;s:4:"file";s:44:"2017/01/20150718_103259-2-e1484788526153.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"20150718_103259-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"20150718_103259-2-230x300.jpg";s:5:"width";i:230;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:4:"0.76";s:6:"credit";s:0:"";s:6:"camera";s:8:"GT-I9105";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:6:"3.9687";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(6, 5, '_wp_attachment_backup_sizes', 'a:2:{s:9:"full-orig";a:3:{s:5:"width";i:738;s:6:"height";i:962;s:4:"file";s:21:"20150718_103259-2.jpg";}s:18:"full-1484788526153";a:3:{s:5:"width";i:444;s:6:"height";i:579;s:4:"file";s:36:"20150718_103259-2-e1484788518290.jpg";}}'),
(7, 6, '_wp_attached_file', '2017/01/20160220073003.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:211;s:6:"height";i:199;s:4:"file";s:26:"2017/01/20160220073003.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"20160220073003-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 8, '_edit_last', '1'),
(13, 8, '_edit_lock', '1484789582:1'),
(14, 9, '_wp_attached_file', '2017/01/game.jpg'),
(15, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:205;s:6:"height";i:115;s:4:"file";s:16:"2017/01/game.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"game-150x115.jpg";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 19, '_edit_last', '1'),
(46, 19, '_edit_lock', '1490932897:1'),
(47, 20, '_wp_attached_file', '2017/01/dress1.jpg'),
(48, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:94;s:6:"height";i:94;s:4:"file";s:18:"2017/01/dress1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 19, '_thumbnail_id', '20'),
(50, 21, '_wp_attached_file', '2017/01/dess.jpg'),
(51, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:183;s:6:"height";i:275;s:4:"file";s:16:"2017/01/dess.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"dess-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"dess-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(52, 19, '_visibility', 'visible'),
(53, 19, '_stock_status', 'instock'),
(54, 19, 'total_sales', '0'),
(55, 19, '_downloadable', 'no'),
(56, 19, '_virtual', 'no'),
(57, 19, '_purchase_note', ''),
(58, 19, '_featured', 'no'),
(59, 19, '_weight', ''),
(60, 19, '_length', ''),
(61, 19, '_width', ''),
(62, 19, '_height', ''),
(63, 19, '_sku', '10'),
(64, 19, '_product_attributes', 'a:0:{}'),
(65, 19, '_regular_price', '1000-1500'),
(66, 19, '_sale_price', '900'),
(67, 19, '_sale_price_dates_from', ''),
(68, 19, '_sale_price_dates_to', ''),
(69, 19, '_price', '900'),
(70, 19, '_sold_individually', ''),
(71, 19, '_manage_stock', 'yes'),
(72, 19, '_backorders', 'no'),
(73, 19, '_stock', '50.000000'),
(74, 19, '_upsell_ids', 'a:0:{}'),
(75, 19, '_crosssell_ids', 'a:0:{}'),
(76, 19, '_product_version', '2.6.12'),
(77, 19, '_product_image_gallery', '20,21'),
(78, 19, '_wc_rating_count', 'a:0:{}'),
(79, 19, '_wc_review_count', '0'),
(80, 19, '_wc_average_rating', '0'),
(261, 42, '_menu_item_type', 'post_type'),
(262, 42, '_menu_item_menu_item_parent', '0'),
(263, 42, '_menu_item_object_id', '16'),
(264, 42, '_menu_item_object', 'page'),
(265, 42, '_menu_item_target', ''),
(266, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(267, 42, '_menu_item_xfn', ''),
(268, 42, '_menu_item_url', ''),
(389, 58, '_edit_last', '1'),
(390, 58, '_wp_page_template', 'default'),
(391, 58, '_edit_lock', '1484987222:1'),
(392, 60, '_edit_last', '1'),
(393, 60, '_wp_page_template', 'default'),
(394, 60, '_edit_lock', '1484987274:1'),
(395, 62, '_edit_last', '1'),
(396, 62, '_wp_page_template', 'default'),
(397, 62, '_edit_lock', '1484994070:1'),
(398, 65, '_menu_item_type', 'post_type'),
(399, 65, '_menu_item_menu_item_parent', '0'),
(400, 65, '_menu_item_object_id', '62'),
(401, 65, '_menu_item_object', 'page'),
(402, 65, '_menu_item_target', ''),
(403, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(404, 65, '_menu_item_xfn', ''),
(405, 65, '_menu_item_url', ''),
(407, 66, '_menu_item_type', 'post_type'),
(408, 66, '_menu_item_menu_item_parent', '0'),
(409, 66, '_menu_item_object_id', '60'),
(410, 66, '_menu_item_object', 'page'),
(411, 66, '_menu_item_target', ''),
(412, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(413, 66, '_menu_item_xfn', ''),
(414, 66, '_menu_item_url', ''),
(416, 67, '_menu_item_type', 'post_type'),
(417, 67, '_menu_item_menu_item_parent', '0'),
(418, 67, '_menu_item_object_id', '58'),
(419, 67, '_menu_item_object', 'page'),
(420, 67, '_menu_item_target', ''),
(421, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(422, 67, '_menu_item_xfn', ''),
(423, 67, '_menu_item_url', ''),
(425, 68, '_edit_last', '1'),
(426, 68, '_wp_page_template', 'default'),
(427, 68, '_edit_lock', '1484987543:1'),
(428, 70, '_edit_last', '1'),
(429, 70, '_wp_page_template', 'default'),
(430, 70, '_edit_lock', '1490933407:1'),
(431, 72, '_edit_last', '1'),
(432, 72, '_wp_page_template', 'default'),
(433, 72, '_edit_lock', '1490944521:1'),
(434, 74, '_edit_last', '1'),
(435, 74, '_wp_page_template', 'default'),
(436, 74, '_edit_lock', '1484987713:1'),
(437, 76, '_edit_last', '1'),
(438, 76, '_wp_page_template', 'default'),
(439, 76, '_edit_lock', '1490942893:1'),
(440, 78, '_edit_last', '1'),
(441, 78, '_wp_page_template', 'default'),
(442, 78, '_edit_lock', '1484987761:1'),
(443, 80, '_edit_last', '1'),
(444, 80, '_wp_page_template', 'default'),
(445, 80, '_edit_lock', '1484987773:1'),
(446, 82, '_edit_last', '1'),
(447, 82, '_wp_page_template', 'default'),
(448, 82, '_edit_lock', '1484987793:1'),
(449, 84, '_edit_last', '1'),
(450, 84, '_wp_page_template', 'default'),
(451, 84, '_edit_lock', '1484987810:1'),
(452, 86, '_edit_last', '1'),
(453, 86, '_wp_page_template', 'default'),
(454, 86, '_edit_lock', '1484987827:1'),
(482, 91, '_menu_item_type', 'post_type'),
(483, 91, '_menu_item_menu_item_parent', '67'),
(484, 91, '_menu_item_object_id', '80'),
(485, 91, '_menu_item_object', 'page'),
(486, 91, '_menu_item_target', ''),
(487, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(488, 91, '_menu_item_xfn', ''),
(489, 91, '_menu_item_url', ''),
(491, 92, '_menu_item_type', 'post_type'),
(492, 92, '_menu_item_menu_item_parent', '67'),
(493, 92, '_menu_item_object_id', '78'),
(494, 92, '_menu_item_object', 'page'),
(495, 92, '_menu_item_target', ''),
(496, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(497, 92, '_menu_item_xfn', ''),
(498, 92, '_menu_item_url', ''),
(500, 93, '_menu_item_type', 'post_type'),
(501, 93, '_menu_item_menu_item_parent', '182'),
(502, 93, '_menu_item_object_id', '76'),
(503, 93, '_menu_item_object', 'page'),
(504, 93, '_menu_item_target', ''),
(505, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(506, 93, '_menu_item_xfn', ''),
(507, 93, '_menu_item_url', ''),
(518, 95, '_menu_item_type', 'post_type'),
(519, 95, '_menu_item_menu_item_parent', '182'),
(520, 95, '_menu_item_object_id', '72'),
(521, 95, '_menu_item_object', 'page'),
(522, 95, '_menu_item_target', ''),
(523, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(524, 95, '_menu_item_xfn', ''),
(525, 95, '_menu_item_url', ''),
(538, 98, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"700";s:6:"height";s:3:"300";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.69999999999999996;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";i:15;s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(539, 20, 'ml-slider_type', 'image'),
(540, 20, '_wp_attachment_backup_sizes', 'a:3:{s:15:"resized-150x150";a:5:{s:4:"path";s:78:"C:xampphtdocswordpress3wordpress/wp-content/uploads/2017/01/dress1-150x150.jpg";s:4:"file";s:18:"dress1-150x150.jpg";s:5:"width";i:94;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x300";a:5:{s:4:"path";s:78:"C:xampphtdocswordpress3wordpress/wp-content/uploads/2017/01/dress1-700x300.jpg";s:4:"file";s:18:"dress1-700x300.jpg";s:5:"width";i:94;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";}s:13:"resized-94x40";a:5:{s:4:"path";s:76:"C:xampphtdocswordpress3wordpress/wp-content/uploads/2017/01/dress1-94x40.jpg";s:4:"file";s:16:"dress1-94x40.jpg";s:5:"width";i:94;s:6:"height";i:40;s:9:"mime-type";s:10:"image/jpeg";}}'),
(541, 9, 'ml-slider_type', 'image'),
(542, 9, '_wp_attachment_backup_sizes', 'a:3:{s:15:"resized-150x150";a:5:{s:4:"path";s:76:"C:xampphtdocswordpress3wordpress/wp-content/uploads/2017/01/game-150x150.jpg";s:4:"file";s:16:"game-150x150.jpg";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x300";a:5:{s:4:"path";s:76:"C:xampphtdocswordpress3wordpress/wp-content/uploads/2017/01/game-700x300.jpg";s:4:"file";s:16:"game-700x300.jpg";s:5:"width";i:205;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:14:"resized-205x87";a:5:{s:4:"path";s:75:"C:xampphtdocswordpress3wordpress/wp-content/uploads/2017/01/game-205x87.jpg";s:4:"file";s:15:"game-205x87.jpg";s:5:"width";i:205;s:6:"height";i:87;s:9:"mime-type";s:10:"image/jpeg";}}'),
(543, 6, 'ml-slider_type', 'image'),
(544, 6, '_wp_attachment_backup_sizes', 'a:2:{s:15:"resized-700x300";a:5:{s:4:"path";s:86:"C:xampphtdocswordpress3wordpress/wp-content/uploads/2017/01/20160220073003-700x300.jpg";s:4:"file";s:26:"20160220073003-700x300.jpg";s:5:"width";i:211;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:14:"resized-211x90";a:5:{s:4:"path";s:85:"C:xampphtdocswordpress3wordpress/wp-content/uploads/2017/01/20160220073003-211x90.jpg";s:4:"file";s:25:"20160220073003-211x90.jpg";s:5:"width";i:211;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}'),
(545, 20, 'ml-slider_crop_position', 'center-center'),
(546, 20, '_wp_attachment_image_alt', ''),
(547, 9, 'ml-slider_crop_position', 'center-center'),
(548, 9, '_wp_attachment_image_alt', ''),
(549, 6, 'ml-slider_crop_position', 'center-center'),
(550, 6, '_wp_attachment_image_alt', ''),
(572, 110, '_edit_last', '1'),
(573, 110, '_wp_page_template', 'default'),
(574, 110, '_edit_lock', '1490946516:1'),
(575, 112, '_menu_item_type', 'post_type'),
(576, 112, '_menu_item_menu_item_parent', '0'),
(577, 112, '_menu_item_object_id', '110'),
(578, 112, '_menu_item_object', 'page'),
(579, 112, '_menu_item_target', ''),
(580, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(581, 112, '_menu_item_xfn', ''),
(582, 112, '_menu_item_url', ''),
(590, 119, '_wp_attached_file', '2017/01/dress1-1.jpg'),
(591, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:94;s:6:"height";i:94;s:4:"file";s:20:"2017/01/dress1-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:5:"94x94";i:1;s:5:"94x94";}}}'),
(592, 119, '_eg_has_gallery', 'a:1:{i:0;i:118;}'),
(598, 110, 'vsw_pmvw_video_source', 'YouTube'),
(599, 110, 'vsw_pmvw_video_id', ''),
(600, 110, 'vsw_pmvw_video_width', ''),
(601, 110, 'vsw_pmvw_video_height', ''),
(602, 110, 'vsw_pmvw_video_caption', ''),
(603, 110, 'vsw_pmvw_video_autoplay', '0'),
(605, 123, '_wp_attached_file', '2017/01/dess-1.jpg'),
(606, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:183;s:6:"height";i:275;s:4:"file";s:18:"2017/01/dess-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"dess-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"dess-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:7:"183x275";i:1;s:7:"183x275";}}}'),
(607, 123, '_eg_has_gallery', 'a:1:{i:0;i:122;}'),
(614, 126, '_wp_attached_file', '2017/01/header.png'),
(615, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:900;s:4:"file";s:18:"2017/01/header.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"header-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"header-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:18:"header-768x576.png";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:19:"header-1024x768.png";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"header-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"header-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:18:"header-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:1:{i:0;s:8:"1200x900";}}}'),
(616, 126, '_eg_has_gallery', 'a:1:{i:0;i:125;}'),
(623, 130, '_wp_attached_file', '2017/01/download.jpg'),
(624, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:237;s:6:"height";i:212;s:4:"file";s:20:"2017/01/download.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"download-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"download-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:7:"237x212";i:1;s:7:"237x212";}}}'),
(625, 130, '_eg_has_gallery', 'a:1:{i:0;i:129;}'),
(640, 133, '_wp_attached_file', '2017/01/dress1-2.jpg'),
(641, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:94;s:6:"height";i:94;s:4:"file";s:20:"2017/01/dress1-2.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:5:"94x94";i:1;s:5:"94x94";}}}'),
(642, 133, '_eg_has_gallery', 'a:1:{i:0;i:132;}'),
(643, 132, '_eg_in_gallery', 'a:4:{i:0;i:133;i:1;i:139;i:2;i:140;i:3;i:141;}'),
(644, 132, '_eg_gallery_data', 'a:3:{s:2:"id";i:132;s:7:"gallery";a:4:{i:133;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-2.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-2.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:139;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-3.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-3.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:140;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-4.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-4.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:141;a:7:{s:6:"status";s:6:"active";s:3:"src";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-5.jpg";s:5:"title";s:6:"dress1";s:4:"link";s:77:"http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-5.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}}s:6:"config";a:19:{s:4:"type";s:7:"default";s:7:"columns";s:1:"0";s:13:"gallery_theme";s:4:"base";s:23:"justified_gallery_theme";s:6:"normal";s:6:"gutter";i:10;s:6:"margin";i:10;s:10:"image_size";s:7:"default";s:10:"crop_width";i:640;s:11:"crop_height";i:480;s:4:"crop";i:0;s:20:"justified_row_height";i:150;s:16:"lightbox_enabled";i:1;s:14:"lightbox_theme";s:4:"base";s:19:"lightbox_image_size";s:7:"default";s:13:"title_display";s:5:"float";s:7:"classes";a:1:{i:0;s:0:"";}s:3:"rtl";i:0;s:5:"title";s:0:"";s:4:"slug";s:3:"132";}}'),
(645, 134, '_wp_attached_file', '2017/01/game-1.jpg'),
(646, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:205;s:6:"height";i:115;s:4:"file";s:18:"2017/01/game-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"game-1-150x115.jpg";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"game-1-180x115.jpg";s:5:"width";i:180;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:7:"205x115";i:1;s:7:"205x115";}}}'),
(647, 134, '_eg_has_gallery', 'a:0:{}'),
(648, 135, '_wp_attached_file', '2017/01/download-1.jpg'),
(649, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:237;s:6:"height";i:212;s:4:"file";s:22:"2017/01/download-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"download-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"download-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:7:"237x212";i:1;s:7:"237x212";}}}'),
(650, 135, '_eg_has_gallery', 'a:0:{}'),
(651, 136, '_wp_attached_file', '2017/01/dess-2.jpg'),
(652, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:183;s:6:"height";i:275;s:4:"file";s:18:"2017/01/dess-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"dess-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"dess-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:7:"183x275";i:1;s:7:"183x275";}}}'),
(653, 136, '_eg_has_gallery', 'a:0:{}'),
(654, 132, '_edit_last', '1'),
(655, 132, '_eg_just_published', '1'),
(656, 132, '_edit_lock', '1484991843:1'),
(657, 132, '_eg_in_posts', 'a:1:{i:110;i:110;}'),
(658, 139, '_wp_attached_file', '2017/01/dress1-3.jpg'),
(659, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:94;s:6:"height";i:94;s:4:"file";s:20:"2017/01/dress1-3.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:5:"94x94";i:1;s:5:"94x94";}}}'),
(660, 139, '_eg_has_gallery', 'a:1:{i:0;i:132;}'),
(661, 140, '_wp_attached_file', '2017/01/dress1-4.jpg'),
(662, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:94;s:6:"height";i:94;s:4:"file";s:20:"2017/01/dress1-4.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:5:"94x94";i:1;s:5:"94x94";}}}'),
(663, 140, '_eg_has_gallery', 'a:1:{i:0;i:132;}'),
(664, 141, '_wp_attached_file', '2017/01/dress1-5.jpg'),
(665, 141, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:94;s:6:"height";i:94;s:4:"file";s:20:"2017/01/dress1-5.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:2:{i:0;s:5:"94x94";i:1;s:5:"94x94";}}}'),
(666, 141, '_eg_has_gallery', 'a:1:{i:0;i:132;}'),
(669, 144, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(670, 144, '_mail', 'a:8:{s:7:"subject";s:40:"Online Stationary Store "[your-subject]"";s:6:"sender";s:31:"[your-name] <tahmina@gmail.com>";s:4:"body";s:198:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Online Stationary Store (http://localhost/wordpress3/wordpress)";s:9:"recipient";s:17:"tahmina@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(671, 144, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:40:"Online Stationary Store "[your-subject]"";s:6:"sender";s:43:"Online Stationary Store <tahmina@gmail.com>";s:4:"body";s:140:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Online Stationary Store (http://localhost/wordpress3/wordpress)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:27:"Reply-To: tahmina@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(672, 144, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(673, 144, '_additional_settings', NULL),
(674, 144, '_locale', 'en_US'),
(675, 62, 'vsw_pmvw_video_source', 'YouTube'),
(676, 62, 'vsw_pmvw_video_id', ''),
(677, 62, 'vsw_pmvw_video_width', ''),
(678, 62, 'vsw_pmvw_video_height', ''),
(679, 62, 'vsw_pmvw_video_caption', ''),
(680, 62, 'vsw_pmvw_video_autoplay', '0'),
(691, 152, 'model', 'a:33:{s:5:"tmpid";i:152;s:6:"fields";a:3:{i:0;a:31:{s:5:"label";s:4:"Name";s:4:"type";s:4:"name";s:4:"size";s:5:"large";s:8:"required";b:0;s:12:"noDuplicates";b:0;s:10:"visibility";b:1;s:12:"labelVisible";b:1;s:8:"rangeMin";s:0:"";s:8:"rangeMax";s:0:"";s:11:"rangeFormat";s:4:"char";s:8:"preValue";s:0:"";s:8:"helpText";s:0:"";s:10:"cssClasses";s:0:"";s:15:"placeholderText";s:0:"";s:6:"radios";b:0;s:10:"checkboxes";b:0;s:12:"textAreaRows";i:10;s:12:"textAreaCols";i:60;s:5:"cssID";s:17:"wpformfield105406";s:7:"choices";a:3:{i:0;s:12:"First Choice";i:1;s:13:"Second Choice";i:2;s:12:"Third Choice";}s:14:"selectedChoice";N;s:22:"checkboxSelectedChoice";a:0:{}s:12:"sectionTitle";s:13:"Section Title";s:18:"sectionDescription";s:34:"Click me to change the description";s:9:"extraData";a:2:{s:9:"firstName";s:0:"";s:8:"LastName";s:0:"";}s:11:"ruleEnabled";b:0;s:5:"rules";a:4:{s:5:"field";s:0:"";s:8:"operator";s:2:"is";s:8:"cmpValue";s:0:"";s:6:"action";s:4:"show";}s:10:"statements";a:0:{}s:7:"columns";a:0:{}s:4:"file";a:2:{s:7:"allowed";a:28:{i:0;s:3:"jpg";i:1;s:4:"jpeg";i:2;s:3:"png";i:3;s:3:"gif";i:4;s:3:"pdf";i:5;s:3:"doc";i:6;s:4:"docx";i:7;s:3:"key";i:8;s:3:"ppt";i:9;s:4:"pptx";i:10;s:3:"pps";i:11;s:4:"ppsx";i:12;s:3:"odt";i:13;s:3:"xls";i:14;s:4:"xlsx";i:15;s:3:"zip";i:16;s:3:"mp3";i:17;s:3:"m4a";i:18;s:3:"ogg";i:19;s:3:"wav";i:20;s:3:"mp4";i:21;s:3:"m4v";i:22;s:3:"wmv";i:23;s:3:"avi";i:24;s:3:"mpg";i:25;s:3:"ogv";i:26;s:3:"3gp";i:27;s:3:"3g2";}s:7:"maxSize";i:2;}s:5:"login";a:0:{}}i:1;a:31:{s:5:"label";s:5:"Email";s:4:"type";s:5:"email";s:4:"size";s:6:"medium";s:8:"required";b:0;s:12:"noDuplicates";b:0;s:10:"visibility";b:1;s:12:"labelVisible";b:1;s:8:"rangeMin";s:0:"";s:8:"rangeMax";s:0:"";s:11:"rangeFormat";s:4:"char";s:8:"preValue";s:0:"";s:8:"helpText";s:0:"";s:10:"cssClasses";s:0:"";s:15:"placeholderText";s:0:"";s:6:"radios";b:0;s:10:"checkboxes";b:0;s:12:"textAreaRows";i:10;s:12:"textAreaCols";i:60;s:5:"cssID";s:16:"wpformfield67127";s:7:"choices";a:3:{i:0;s:12:"First Choice";i:1;s:13:"Second Choice";i:2;s:12:"Third Choice";}s:14:"selectedChoice";N;s:22:"checkboxSelectedChoice";a:0:{}s:12:"sectionTitle";s:13:"Section Title";s:18:"sectionDescription";s:34:"Click me to change the description";s:9:"extraData";N;s:11:"ruleEnabled";b:0;s:5:"rules";a:4:{s:5:"field";s:0:"";s:8:"operator";s:2:"is";s:8:"cmpValue";s:0:"";s:6:"action";s:4:"show";}s:10:"statements";a:0:{}s:7:"columns";a:0:{}s:4:"file";a:2:{s:7:"allowed";a:28:{i:0;s:3:"jpg";i:1;s:4:"jpeg";i:2;s:3:"png";i:3;s:3:"gif";i:4;s:3:"pdf";i:5;s:3:"doc";i:6;s:4:"docx";i:7;s:3:"key";i:8;s:3:"ppt";i:9;s:4:"pptx";i:10;s:3:"pps";i:11;s:4:"ppsx";i:12;s:3:"odt";i:13;s:3:"xls";i:14;s:4:"xlsx";i:15;s:3:"zip";i:16;s:3:"mp3";i:17;s:3:"m4a";i:18;s:3:"ogg";i:19;s:3:"wav";i:20;s:3:"mp4";i:21;s:3:"m4v";i:22;s:3:"wmv";i:23;s:3:"avi";i:24;s:3:"mpg";i:25;s:3:"ogv";i:26;s:3:"3gp";i:27;s:3:"3g2";}s:7:"maxSize";i:2;}s:5:"login";a:0:{}}i:2;a:31:{s:5:"label";s:12:"Phone Number";s:4:"type";s:5:"phone";s:4:"size";s:6:"medium";s:8:"required";b:0;s:12:"noDuplicates";b:0;s:10:"visibility";b:1;s:12:"labelVisible";b:1;s:8:"rangeMin";s:0:"";s:8:"rangeMax";s:0:"";s:11:"rangeFormat";s:4:"char";s:8:"preValue";s:0:"";s:8:"helpText";s:0:"";s:10:"cssClasses";s:0:"";s:15:"placeholderText";s:0:"";s:6:"radios";b:0;s:10:"checkboxes";b:0;s:12:"textAreaRows";i:10;s:12:"textAreaCols";i:60;s:5:"cssID";s:16:"wpformfield70819";s:7:"choices";a:3:{i:0;s:12:"First Choice";i:1;s:13:"Second Choice";i:2;s:12:"Third Choice";}s:14:"selectedChoice";N;s:22:"checkboxSelectedChoice";a:0:{}s:12:"sectionTitle";s:13:"Section Title";s:18:"sectionDescription";s:34:"Click me to change the description";s:9:"extraData";a:0:{}s:11:"ruleEnabled";b:0;s:5:"rules";a:4:{s:5:"field";s:0:"";s:8:"operator";s:2:"is";s:8:"cmpValue";s:0:"";s:6:"action";s:4:"show";}s:10:"statements";a:0:{}s:7:"columns";a:0:{}s:4:"file";a:2:{s:7:"allowed";a:28:{i:0;s:3:"jpg";i:1;s:4:"jpeg";i:2;s:3:"png";i:3;s:3:"gif";i:4;s:3:"pdf";i:5;s:3:"doc";i:6;s:4:"docx";i:7;s:3:"key";i:8;s:3:"ppt";i:9;s:4:"pptx";i:10;s:3:"pps";i:11;s:4:"ppsx";i:12;s:3:"odt";i:13;s:3:"xls";i:14;s:4:"xlsx";i:15;s:3:"zip";i:16;s:3:"mp3";i:17;s:3:"m4a";i:18;s:3:"ogg";i:19;s:3:"wav";i:20;s:3:"mp4";i:21;s:3:"m4v";i:22;s:3:"wmv";i:23;s:3:"avi";i:24;s:3:"mpg";i:25;s:3:"ogv";i:26;s:3:"3gp";i:27;s:3:"3g2";}s:7:"maxSize";i:2;}s:5:"login";a:0:{}}}s:5:"title";s:9:"Form Name";s:11:"description";s:35:"Click me to change the description.";s:4:"lang";s:2:"en";s:14:"labelPlacement";s:3:"top";s:18:"confirmationOption";s:4:"text";s:11:"textMessage";s:38:"Thanks for submitting your information";s:11:"redirectUrl";s:0:"";s:7:"captcha";b:0;s:11:"noOfEntries";s:0:"";s:12:"onlySingleIP";b:0;s:9:"formTimer";b:0;s:13:"formStartTime";N;s:11:"formEndTime";N;s:5:"theme";a:0:{}s:9:"extraData";a:0:{}s:23:"confirmationEmailToUser";b:0;s:17:"emailAddressField";s:0:"";s:12:"replyToEmail";s:0:"";s:9:"submitBtn";b:1;s:13:"submitBtnText";s:6:"Submit";s:13:"submitBtnType";s:6:"normal";s:13:"errorMessages";a:0:{}s:5:"style";a:0:{}s:18:"mailchimpAddOnData";a:0:{}s:9:"addOnData";a:0:{}s:6:"method";s:3:"put";s:6:"action";s:4:"save";s:6:"formID";i:152;s:5:"error";b:0;s:8:"errorMsg";s:0:"";s:2:"id";i:152;}'),
(692, 155, '_edit_last', '1'),
(693, 155, '_wp_page_template', 'default'),
(694, 155, 'vsw_pmvw_video_source', 'YouTube'),
(695, 155, 'vsw_pmvw_video_id', ''),
(696, 155, 'vsw_pmvw_video_width', ''),
(697, 155, 'vsw_pmvw_video_height', ''),
(698, 155, 'vsw_pmvw_video_caption', ''),
(699, 155, 'vsw_pmvw_video_autoplay', '0'),
(700, 155, '_edit_lock', '1490931661:1'),
(701, 157, '_menu_item_type', 'post_type'),
(702, 157, '_menu_item_menu_item_parent', '0'),
(703, 157, '_menu_item_object_id', '155'),
(704, 157, '_menu_item_object', 'page'),
(705, 157, '_menu_item_target', ''),
(706, 157, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(707, 157, '_menu_item_xfn', ''),
(708, 157, '_menu_item_url', ''),
(710, 162, '_wp_attached_file', '2017/03/pencil1.png'),
(711, 162, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:120;s:4:"file";s:19:"2017/03/pencil1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(712, 161, '_edit_last', '1'),
(713, 161, '_visibility', 'visible'),
(714, 161, '_stock_status', 'instock'),
(715, 161, 'total_sales', '0'),
(716, 161, '_downloadable', 'yes'),
(717, 161, '_virtual', 'no'),
(718, 161, '_purchase_note', ''),
(719, 161, '_featured', 'no'),
(720, 161, '_weight', ''),
(721, 161, '_length', ''),
(722, 161, '_width', ''),
(723, 161, '_height', ''),
(724, 161, '_sku', ''),
(725, 161, '_product_attributes', 'a:0:{}'),
(726, 161, '_regular_price', '10'),
(727, 161, '_sale_price', '8'),
(728, 161, '_sale_price_dates_from', ''),
(729, 161, '_sale_price_dates_to', ''),
(730, 161, '_price', '8'),
(731, 161, '_sold_individually', ''),
(732, 161, '_manage_stock', 'no'),
(733, 161, '_backorders', 'no'),
(734, 161, '_stock', ''),
(735, 161, '_upsell_ids', 'a:0:{}'),
(736, 161, '_crosssell_ids', 'a:0:{}'),
(737, 161, '_product_version', '2.6.12'),
(738, 161, '_product_image_gallery', ''),
(739, 161, '_edit_lock', '1490934969:1'),
(740, 161, '_downloadable_files', 'a:0:{}'),
(741, 161, '_download_limit', ''),
(742, 161, '_download_expiry', ''),
(743, 161, '_download_type', ''),
(744, 161, '_thumbnail_id', '162'),
(745, 70, 'vsw_pmvw_video_source', 'YouTube'),
(746, 70, 'vsw_pmvw_video_id', ''),
(747, 70, 'vsw_pmvw_video_width', ''),
(748, 70, 'vsw_pmvw_video_height', ''),
(749, 70, 'vsw_pmvw_video_caption', ''),
(750, 70, 'vsw_pmvw_video_autoplay', '0'),
(751, 161, '_wc_rating_count', 'a:0:{}'),
(752, 161, '_wc_review_count', '0'),
(753, 161, '_wc_average_rating', '0'),
(754, 161, '_wp_old_slug', '161'),
(755, 168, '_edit_last', '1'),
(756, 168, '_edit_lock', '1490937490:1'),
(757, 168, '_thumbnail_id', '162'),
(758, 168, '_visibility', 'visible'),
(759, 168, '_stock_status', 'instock'),
(760, 168, 'total_sales', '0'),
(761, 168, '_downloadable', 'no'),
(762, 168, '_virtual', 'no'),
(763, 168, '_purchase_note', ''),
(764, 168, '_featured', 'no'),
(765, 168, '_weight', ''),
(766, 168, '_length', ''),
(767, 168, '_width', ''),
(768, 168, '_height', ''),
(769, 168, '_sku', ''),
(770, 168, '_product_attributes', 'a:0:{}'),
(771, 168, '_regular_price', '10'),
(772, 168, '_sale_price', '8'),
(773, 168, '_sale_price_dates_from', ''),
(774, 168, '_sale_price_dates_to', ''),
(775, 168, '_price', '8'),
(776, 168, '_sold_individually', ''),
(777, 168, '_manage_stock', 'no'),
(778, 168, '_backorders', 'no'),
(779, 168, '_stock', ''),
(780, 168, '_upsell_ids', 'a:0:{}'),
(781, 168, '_crosssell_ids', 'a:0:{}'),
(782, 168, '_product_version', '2.6.12'),
(783, 168, '_product_image_gallery', '162,135'),
(784, 168, '_wc_rating_count', 'a:0:{}'),
(785, 168, '_wc_review_count', '0'),
(786, 168, '_wc_average_rating', '0'),
(787, 78, '_wp_trash_meta_status', 'publish'),
(788, 78, '_wp_trash_meta_time', '1490937856'),
(789, 170, '_edit_last', '1'),
(790, 170, '_edit_lock', '1490940572:1'),
(791, 171, '_wp_attached_file', '2017/03/pen.jpg'),
(792, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:72;s:6:"height";i:120;s:4:"file";s:15:"2017/03/pen.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(793, 170, '_thumbnail_id', '171'),
(794, 172, '_wp_attached_file', '2017/03/pen1.jpg'),
(795, 172, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:167;s:6:"height";i:119;s:4:"file";s:16:"2017/03/pen1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pen1-150x119.jpg";s:5:"width";i:150;s:6:"height";i:119;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(796, 170, '_visibility', 'visible'),
(797, 170, '_stock_status', 'instock'),
(798, 170, 'total_sales', '0'),
(799, 170, '_downloadable', 'yes'),
(800, 170, '_virtual', 'no'),
(801, 170, '_purchase_note', ''),
(802, 170, '_featured', 'no'),
(803, 170, '_weight', ''),
(804, 170, '_length', ''),
(805, 170, '_width', ''),
(806, 170, '_height', ''),
(807, 170, '_sku', ''),
(808, 170, '_product_attributes', 'a:0:{}'),
(809, 170, '_regular_price', '10'),
(810, 170, '_sale_price', '8'),
(811, 170, '_sale_price_dates_from', ''),
(812, 170, '_sale_price_dates_to', ''),
(813, 170, '_price', '8'),
(814, 170, '_sold_individually', ''),
(815, 170, '_manage_stock', 'no'),
(816, 170, '_backorders', 'no'),
(817, 170, '_stock', ''),
(818, 170, '_upsell_ids', 'a:0:{}'),
(819, 170, '_crosssell_ids', 'a:0:{}'),
(820, 170, '_downloadable_files', 'a:0:{}'),
(821, 170, '_download_limit', '10'),
(822, 170, '_download_expiry', ''),
(823, 170, '_download_type', ''),
(824, 170, '_product_version', '2.6.12'),
(825, 170, '_product_image_gallery', '172,171'),
(826, 170, '_wc_rating_count', 'a:0:{}'),
(827, 170, '_wc_review_count', '0'),
(828, 170, '_wc_average_rating', '0'),
(829, 74, '_wp_trash_meta_status', 'publish'),
(830, 74, '_wp_trash_meta_time', '1490938981'),
(831, 174, '_menu_item_type', 'post_type'),
(832, 174, '_menu_item_menu_item_parent', '67'),
(833, 174, '_menu_item_object_id', '170'),
(834, 174, '_menu_item_object', 'product'),
(835, 174, '_menu_item_target', ''),
(836, 174, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(837, 174, '_menu_item_xfn', ''),
(838, 174, '_menu_item_url', ''),
(840, 175, '_edit_last', '1'),
(841, 175, '_edit_lock', '1490942499:1'),
(842, 176, '_wp_attached_file', '2017/03/book1.jpg'),
(843, 176, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:114;s:6:"height";i:120;s:4:"file";s:17:"2017/03/book1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(844, 175, '_thumbnail_id', '176'),
(845, 177, '_wp_attached_file', '2017/03/book2.jpg'),
(846, 177, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:174;s:6:"height";i:116;s:4:"file";s:17:"2017/03/book2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"book2-150x116.jpg";s:5:"width";i:150;s:6:"height";i:116;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(847, 178, '_wp_attached_file', '2017/03/book3.jpg'),
(848, 178, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:120;s:4:"file";s:17:"2017/03/book3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"book3-150x120.jpg";s:5:"width";i:150;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"book3-180x120.jpg";s:5:"width";i:180;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(849, 175, '_visibility', 'visible'),
(850, 175, '_stock_status', 'instock'),
(851, 175, 'total_sales', '0'),
(852, 175, '_downloadable', 'no'),
(853, 175, '_virtual', 'no'),
(854, 175, '_purchase_note', ''),
(855, 175, '_featured', 'no'),
(856, 175, '_weight', ''),
(857, 175, '_length', ''),
(858, 175, '_width', ''),
(859, 175, '_height', ''),
(860, 175, '_sku', ''),
(861, 175, '_product_attributes', 'a:0:{}'),
(862, 175, '_regular_price', '200'),
(863, 175, '_sale_price', '180'),
(864, 175, '_sale_price_dates_from', ''),
(865, 175, '_sale_price_dates_to', ''),
(866, 175, '_price', '180'),
(867, 175, '_sold_individually', ''),
(868, 175, '_manage_stock', 'no'),
(869, 175, '_backorders', 'no'),
(870, 175, '_stock', ''),
(871, 175, '_upsell_ids', 'a:0:{}'),
(872, 175, '_crosssell_ids', 'a:0:{}'),
(873, 175, '_product_version', '2.6.12'),
(874, 175, '_product_image_gallery', '177,176,178'),
(875, 175, '_wc_rating_count', 'a:0:{}'),
(876, 175, '_wc_review_count', '0'),
(877, 175, '_wc_average_rating', '0'),
(878, 76, 'vsw_pmvw_video_source', 'YouTube'),
(879, 76, 'vsw_pmvw_video_id', ''),
(880, 76, 'vsw_pmvw_video_width', ''),
(881, 76, 'vsw_pmvw_video_height', ''),
(882, 76, 'vsw_pmvw_video_caption', ''),
(883, 76, 'vsw_pmvw_video_autoplay', '0'),
(884, 182, '_menu_item_type', 'post_type'),
(885, 182, '_menu_item_menu_item_parent', '67'),
(886, 182, '_menu_item_object_id', '68'),
(887, 182, '_menu_item_object', 'page'),
(888, 182, '_menu_item_target', ''),
(889, 182, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(890, 182, '_menu_item_xfn', ''),
(891, 182, '_menu_item_url', ''),
(893, 76, '_thumbnail_id', '177'),
(894, 186, '_edit_last', '1'),
(895, 186, '_edit_lock', '1490942847:1'),
(896, 72, '_thumbnail_id', '178'),
(897, 72, 'vsw_pmvw_video_source', 'YouTube'),
(898, 72, 'vsw_pmvw_video_id', ''),
(899, 72, 'vsw_pmvw_video_width', ''),
(900, 72, 'vsw_pmvw_video_height', ''),
(901, 72, 'vsw_pmvw_video_caption', ''),
(902, 72, 'vsw_pmvw_video_autoplay', '0'),
(905, 189, '_edit_last', '1'),
(906, 189, '_edit_lock', '1490945799:1'),
(907, 189, '_mtphr_dnt_admin_tab', '#mtphr-dnt-type-select'),
(908, 189, '_mtphr_dnt_type', 'default'),
(909, 189, '_mtphr_dnt_mode', 'scroll'),
(910, 189, '_mtphr_dnt_line_breaks', ''),
(911, 189, '_mtphr_dnt_ticks', 'a:1:{i:0;a:4:{s:4:"tick";s:0:"";s:4:"link";s:0:"";s:6:"target";s:5:"_self";s:8:"nofollow";s:0:"";}}'),
(912, 189, '_mtphr_dnt_mixed_ticks', 'a:1:{i:0;a:3:{s:4:"type";s:7:"default";s:6:"offset";i:0;s:3:"all";s:0:"";}}'),
(913, 189, '_mtphr_dnt_scroll_direction', 'left'),
(914, 189, '_mtphr_dnt_scroll_init', ''),
(915, 189, '_mtphr_dnt_scroll_width', '0'),
(916, 189, '_mtphr_dnt_scroll_height', '0'),
(917, 189, '_mtphr_dnt_scroll_padding', '0'),
(918, 189, '_mtphr_dnt_scroll_margin', '0'),
(919, 189, '_mtphr_dnt_scroll_speed', '10'),
(920, 189, '_mtphr_dnt_scroll_pause', ''),
(921, 189, '_mtphr_dnt_scroll_tick_spacing', '40'),
(922, 189, '_mtphr_dnt_rotate_type', 'fade'),
(923, 189, '_mtphr_dnt_rotate_directional_nav_reverse', ''),
(924, 189, '_mtphr_dnt_rotate_height', '0'),
(925, 189, '_mtphr_dnt_rotate_padding', '0'),
(926, 189, '_mtphr_dnt_rotate_margin', '0'),
(927, 189, '_mtphr_dnt_auto_rotate', 'on'),
(928, 189, '_mtphr_dnt_rotate_delay', '7'),
(929, 189, '_mtphr_dnt_rotate_pause', ''),
(930, 189, '_mtphr_dnt_rotate_speed', '10'),
(931, 189, '_mtphr_dnt_rotate_ease', 'easeInOutQuint'),
(932, 189, '_mtphr_dnt_rotate_directional_nav', 'on'),
(933, 189, '_mtphr_dnt_rotate_directional_nav_hide', ''),
(934, 189, '_mtphr_dnt_rotate_control_nav', 'on'),
(935, 189, '_mtphr_dnt_rotate_control_nav_type', 'button'),
(936, 189, '_mtphr_dnt_rotate_disable_touchswipe', ''),
(937, 189, '_mtphr_dnt_list_padding', '0'),
(938, 189, '_mtphr_dnt_list_margin', '0'),
(939, 189, '_mtphr_dnt_list_tick_spacing', '10'),
(940, 189, '_mtphr_dnt_list_tick_paging', ''),
(941, 189, '_mtphr_dnt_list_tick_count', '10'),
(942, 189, '_mtphr_dnt_list_tick_prev_next', ''),
(943, 189, '_mtphr_dnt_list_tick_prev_text', '« Previous'),
(944, 189, '_mtphr_dnt_list_tick_next_text', 'Next »'),
(945, 189, '_mtphr_dnt_title', ''),
(946, 189, '_mtphr_dnt_inline_title', ''),
(947, 189, '_mtphr_dnt_shuffle', ''),
(948, 189, '_mtphr_dnt_ticker_width', '0'),
(949, 189, '_mtphr_dnt_offset', '20'),
(950, 189, '_mtphr_dnt_trim_ticks', ''),
(951, 189, '_mtphr_dnt_pause_button', ''),
(952, 189, '_mtphr_dnt_grid', ''),
(953, 189, '_mtphr_dnt_grid_empty_rows', ''),
(954, 189, '_mtphr_dnt_grid_equal_width', ''),
(955, 189, '_mtphr_dnt_grid_cols', '2'),
(956, 189, '_mtphr_dnt_grid_rows', '2'),
(957, 189, '_mtphr_dnt_grid_padding', '5'),
(958, 189, '_mtphr_dnt_grid_remove_padding', ''),
(959, 194, '_edit_last', '1'),
(960, 194, '_edit_lock', '1490946294:1'),
(961, 194, '_mtphr_dnt_admin_tab', '#mtphr-dnt-type-select'),
(962, 194, '_mtphr_dnt_type', 'default'),
(963, 194, '_mtphr_dnt_mode', 'scroll'),
(964, 194, '_mtphr_dnt_line_breaks', ''),
(965, 194, '_mtphr_dnt_ticks', 'a:1:{i:0;a:4:{s:4:"tick";s:0:"";s:4:"link";s:0:"";s:6:"target";s:5:"_self";s:8:"nofollow";s:0:"";}}'),
(966, 194, '_mtphr_dnt_mixed_ticks', 'a:1:{i:0;a:3:{s:4:"type";s:7:"default";s:6:"offset";i:0;s:3:"all";s:0:"";}}'),
(967, 194, '_mtphr_dnt_scroll_direction', 'left'),
(968, 194, '_mtphr_dnt_scroll_init', ''),
(969, 194, '_mtphr_dnt_scroll_width', '0'),
(970, 194, '_mtphr_dnt_scroll_height', '0'),
(971, 194, '_mtphr_dnt_scroll_padding', '0'),
(972, 194, '_mtphr_dnt_scroll_margin', '0'),
(973, 194, '_mtphr_dnt_scroll_speed', '10'),
(974, 194, '_mtphr_dnt_scroll_pause', ''),
(975, 194, '_mtphr_dnt_scroll_tick_spacing', '40'),
(976, 194, '_mtphr_dnt_rotate_type', 'fade'),
(977, 194, '_mtphr_dnt_rotate_directional_nav_reverse', ''),
(978, 194, '_mtphr_dnt_rotate_height', '0'),
(979, 194, '_mtphr_dnt_rotate_padding', '0'),
(980, 194, '_mtphr_dnt_rotate_margin', '0'),
(981, 194, '_mtphr_dnt_auto_rotate', 'on'),
(982, 194, '_mtphr_dnt_rotate_delay', '7'),
(983, 194, '_mtphr_dnt_rotate_pause', ''),
(984, 194, '_mtphr_dnt_rotate_speed', '10'),
(985, 194, '_mtphr_dnt_rotate_ease', 'easeInOutQuint'),
(986, 194, '_mtphr_dnt_rotate_directional_nav', 'on'),
(987, 194, '_mtphr_dnt_rotate_directional_nav_hide', ''),
(988, 194, '_mtphr_dnt_rotate_control_nav', 'on'),
(989, 194, '_mtphr_dnt_rotate_control_nav_type', 'button'),
(990, 194, '_mtphr_dnt_rotate_disable_touchswipe', ''),
(991, 194, '_mtphr_dnt_list_padding', '0'),
(992, 194, '_mtphr_dnt_list_margin', '0'),
(993, 194, '_mtphr_dnt_list_tick_spacing', '10'),
(994, 194, '_mtphr_dnt_list_tick_paging', ''),
(995, 194, '_mtphr_dnt_list_tick_count', '10'),
(996, 194, '_mtphr_dnt_list_tick_prev_next', ''),
(997, 194, '_mtphr_dnt_list_tick_prev_text', '« Previous'),
(998, 194, '_mtphr_dnt_list_tick_next_text', 'Next »'),
(999, 194, '_mtphr_dnt_title', ''),
(1000, 194, '_mtphr_dnt_inline_title', ''),
(1001, 194, '_mtphr_dnt_shuffle', ''),
(1002, 194, '_mtphr_dnt_ticker_width', '0'),
(1003, 194, '_mtphr_dnt_offset', '20'),
(1004, 194, '_mtphr_dnt_trim_ticks', ''),
(1005, 194, '_mtphr_dnt_pause_button', ''),
(1006, 194, '_mtphr_dnt_grid', ''),
(1007, 194, '_mtphr_dnt_grid_empty_rows', ''),
(1008, 194, '_mtphr_dnt_grid_equal_width', ''),
(1009, 194, '_mtphr_dnt_grid_cols', '2'),
(1010, 194, '_mtphr_dnt_grid_rows', '2'),
(1011, 194, '_mtphr_dnt_grid_padding', '5'),
(1012, 194, '_mtphr_dnt_grid_remove_padding', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-01-19 01:09:08', '2017-01-19 01:09:08', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-01-19 01:09:08', '2017-01-19 01:09:08', '', 0, 'http://localhost/wordpress3/wordpress/?p=1', 0, 'post', '', 1),
(5, 1, '2017-01-19 01:14:02', '2017-01-19 01:14:02', '', '20150718_103259-2', '', 'inherit', 'open', 'closed', '', '20150718_103259-2', '', '', '2017-03-31 03:40:27', '2017-03-31 03:40:27', '', 155, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/20150718_103259-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-01-19 01:19:49', '2017-01-19 01:19:49', '', '20160220073003', '', 'inherit', 'open', 'closed', '', '20160220073003', '', '', '2017-01-21 08:49:16', '2017-01-21 08:49:16', '', 0, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/20160220073003.jpg', 2, 'attachment', 'image/jpeg', 0),
(8, 1, '2017-01-19 01:34:18', '2017-01-19 01:34:18', '<strong>about games</strong>\r\n\r\n<strong><img class="alignnone size-full wp-image-9" src="http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/game.jpg" alt="game" width="205" height="115" /></strong>\r\n\r\n&nbsp;\r\n\r\nThere’s a false perception that PC gaming is unapproachable and alienating to newcomers, but it doesn’t have to be. In reality, it’s just another way to play, albeit with a more expansive selection of controllers and the option of better graphics and frame rates than consoles.\r\n\r\nIn fact, given the proper equipment, PC is the only way to achieve a no-frills 4K resolution owed to efforts from <a href="http://www.techradar.com/news/5-ways-nvidia-amd-and-intel-upped-the-ante-at-ces-2017">Nvidia, AMD and Intel</a>. What’s more, rather than being limited to what <a href="http://www.techradar.com/reviews/gaming/playstation-vr-1235379/review">PlayStation VR</a> has to offer, PC gamers can choose between a variety of headsets including a handful that are <a href="http://www.techradar.com/news/heres-what-the-first-wave-of-windows-10-vr-headsets-look-like">exclusive to Windows 10</a>.', 'games', '', 'publish', 'closed', 'closed', '', 'games', '', '', '2017-01-19 01:34:18', '2017-01-19 01:34:18', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-01-19 01:33:55', '2017-01-19 01:33:55', '', 'game', '', 'inherit', 'open', 'closed', '', 'game', '', '', '2017-01-21 08:49:16', '2017-01-21 08:49:16', '', 8, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/game.jpg', 1, 'attachment', 'image/jpeg', 0),
(10, 1, '2017-01-19 01:34:18', '2017-01-19 01:34:18', '<strong>about games</strong>\r\n\r\n<strong><img class="alignnone size-full wp-image-9" src="http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/game.jpg" alt="game" width="205" height="115" /></strong>\r\n\r\n&nbsp;\r\n\r\nThere’s a false perception that PC gaming is unapproachable and alienating to newcomers, but it doesn’t have to be. In reality, it’s just another way to play, albeit with a more expansive selection of controllers and the option of better graphics and frame rates than consoles.\r\n\r\nIn fact, given the proper equipment, PC is the only way to achieve a no-frills 4K resolution owed to efforts from <a href="http://www.techradar.com/news/5-ways-nvidia-amd-and-intel-upped-the-ante-at-ces-2017">Nvidia, AMD and Intel</a>. What’s more, rather than being limited to what <a href="http://www.techradar.com/reviews/gaming/playstation-vr-1235379/review">PlayStation VR</a> has to offer, PC gamers can choose between a variety of headsets including a handful that are <a href="http://www.techradar.com/news/heres-what-the-first-wave-of-windows-10-vr-headsets-look-like">exclusive to Windows 10</a>.', 'games', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-01-19 01:34:18', '2017-01-19 01:34:18', '', 8, 'http://localhost/wordpress3/wordpress/2017/01/19/8-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-01-19 01:38:43', '2017-01-19 01:38:43', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-01-19 01:38:43', '2017-01-19 01:38:43', '', 0, 'http://localhost/wordpress3/wordpress/shop/', 0, 'page', '', 0),
(16, 1, '2017-01-19 01:38:43', '2017-01-19 01:38:43', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-01-19 01:38:43', '2017-01-19 01:38:43', '', 0, 'http://localhost/wordpress3/wordpress/cart/', 0, 'page', '', 0),
(17, 1, '2017-01-19 01:38:43', '2017-01-19 01:38:43', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-01-19 01:38:43', '2017-01-19 01:38:43', '', 0, 'http://localhost/wordpress3/wordpress/checkout/', 0, 'page', '', 0),
(18, 1, '2017-01-19 01:38:43', '2017-01-19 01:38:43', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-01-19 01:38:43', '2017-01-19 01:38:43', '', 0, 'http://localhost/wordpress3/wordpress/my-account/', 0, 'page', '', 0),
(19, 1, '2017-01-19 01:59:55', '2017-01-19 01:59:55', '<img class="alignnone size-full wp-image-20" src="http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1.jpg" alt="dress1" width="94" height="94" />\r\n\r\ngggmjhdsaa gggmjhdsaagggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa\r\n\r\ngggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa,\r\n\r\ngggmjhdsaa gggmjhdsaagggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa\r\n\r\ngggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa', 'male_wear', 'gggmjhdsaa gggmjhdsaagggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa\r\n\r\ngggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa gggmjhdsaa', 'publish', 'open', 'closed', '', 'male_wear', '', '', '2017-01-19 01:59:55', '2017-01-19 01:59:55', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2017-01-19 01:56:21', '2017-01-19 01:56:21', '', 'dress1', '', 'inherit', 'open', 'closed', '', 'dress1', '', '', '2017-01-21 08:49:16', '2017-01-21 08:49:16', '', 19, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-01-19 01:59:40', '2017-01-19 01:59:40', '', 'dess', '', 'inherit', 'open', 'closed', '', 'dess', '', '', '2017-01-19 01:59:40', '2017-01-19 01:59:40', '', 19, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dess.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2017-01-19 02:08:57', '2017-01-19 02:08:57', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2017-03-31 06:37:34', '2017-03-31 06:37:34', '', 0, 'http://localhost/wordpress3/wordpress/?p=42', 12, 'nav_menu_item', '', 0),
(58, 1, '2017-01-21 08:29:22', '2017-01-21 08:29:22', '', 'Product', '', 'publish', 'closed', 'closed', '', 'product', '', '', '2017-01-21 08:29:22', '2017-01-21 08:29:22', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=58', 0, 'page', '', 0),
(59, 1, '2017-01-21 08:29:22', '2017-01-21 08:29:22', '', 'Product', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-01-21 08:29:22', '2017-01-21 08:29:22', '', 58, 'http://localhost/wordpress3/wordpress/2017/01/21/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-01-21 08:29:36', '2017-01-21 08:29:36', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-01-21 08:29:36', '2017-01-21 08:29:36', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=60', 0, 'page', '', 0),
(61, 1, '2017-01-21 08:29:36', '2017-01-21 08:29:36', '', 'About us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-01-21 08:29:36', '2017-01-21 08:29:36', '', 60, 'http://localhost/wordpress3/wordpress/2017/01/21/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-01-21 08:30:43', '2017-01-21 08:30:43', '[sform id=''152'']', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-01-21 10:22:34', '2017-01-21 10:22:34', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=62', 0, 'page', '', 0),
(63, 1, '2017-01-21 08:30:43', '2017-01-21 08:30:43', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2017-01-21 08:30:43', '2017-01-21 08:30:43', '', 62, 'http://localhost/wordpress3/wordpress/2017/01/21/62-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-01-21 08:33:37', '2017-01-21 08:33:37', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2017-03-31 06:37:34', '2017-03-31 06:37:34', '', 0, 'http://localhost/wordpress3/wordpress/?p=65', 11, 'nav_menu_item', '', 0),
(66, 1, '2017-01-21 08:33:37', '2017-01-21 08:33:37', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2017-03-31 06:37:34', '2017-03-31 06:37:34', '', 0, 'http://localhost/wordpress3/wordpress/?p=66', 10, 'nav_menu_item', '', 0),
(67, 1, '2017-01-21 08:33:36', '2017-01-21 08:33:36', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2017-03-31 06:37:33', '2017-03-31 06:37:33', '', 0, 'http://localhost/wordpress3/wordpress/?p=67', 3, 'nav_menu_item', '', 0),
(68, 1, '2017-01-21 08:34:42', '2017-01-21 08:34:42', '', 'Books', '', 'publish', 'closed', 'closed', '', 'books', '', '', '2017-01-21 08:34:42', '2017-01-21 08:34:42', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=68', 0, 'page', '', 0),
(69, 1, '2017-01-21 08:34:42', '2017-01-21 08:34:42', '', 'Books', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-01-21 08:34:42', '2017-01-21 08:34:42', '', 68, 'http://localhost/wordpress3/wordpress/2017/01/21/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-01-21 08:36:31', '2017-01-21 08:36:31', '<img src="http://localhost/wordpress3/wordpress/wp-content/uploads/2017/03/pencil1.png" alt="pencil1" width="120" height="120" class="alignnone size-full wp-image-162" />', 'pencil', '', 'publish', 'closed', 'closed', '', 'pelcil', '', '', '2017-03-31 04:08:32', '2017-03-31 04:08:32', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=70', 0, 'page', '', 0),
(71, 1, '2017-01-21 08:36:31', '2017-01-21 08:36:31', '', 'pelcil', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-01-21 08:36:31', '2017-01-21 08:36:31', '', 70, 'http://localhost/wordpress3/wordpress/2017/01/21/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-01-21 08:36:48', '2017-01-21 08:36:48', '<strong>Importance of diary in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.\r\n<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.', 'Diary', '', 'publish', 'closed', 'closed', '', 'diary', '', '', '2017-03-31 06:48:54', '2017-03-31 06:48:54', '', 68, 'http://localhost/wordpress3/wordpress/?page_id=72', 0, 'page', '', 0),
(73, 1, '2017-01-21 08:36:48', '2017-01-21 08:36:48', '', 'Diary', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2017-01-21 08:36:48', '2017-01-21 08:36:48', '', 72, 'http://localhost/wordpress3/wordpress/2017/01/21/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-01-21 08:37:08', '2017-01-21 08:37:08', '', 'pens', '', 'trash', 'closed', 'closed', '', 'pens', '', '', '2017-03-31 05:43:01', '2017-03-31 05:43:01', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=74', 0, 'page', '', 0),
(75, 1, '2017-01-21 08:37:08', '2017-01-21 08:37:08', '', 'pens', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2017-01-21 08:37:08', '2017-01-21 08:37:08', '', 74, 'http://localhost/wordpress3/wordpress/2017/01/21/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-01-21 08:37:57', '2017-01-21 08:37:57', '<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.\r\n<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.', 'story books', '', 'publish', 'closed', 'closed', '', 'story-books', '', '', '2017-03-31 06:46:01', '2017-03-31 06:46:01', '', 68, 'http://localhost/wordpress3/wordpress/?page_id=76', 0, 'page', '', 0),
(77, 1, '2017-01-21 08:37:57', '2017-01-21 08:37:57', '', 'story books', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-01-21 08:37:57', '2017-01-21 08:37:57', '', 76, 'http://localhost/wordpress3/wordpress/2017/01/21/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-01-21 08:38:15', '2017-01-21 08:38:15', '', 'pencil', '', 'trash', 'closed', 'closed', '', 'pencil', '', '', '2017-03-31 05:24:16', '2017-03-31 05:24:16', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=78', 0, 'page', '', 0),
(79, 1, '2017-01-21 08:38:15', '2017-01-21 08:38:15', '', 'pencil', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-01-21 08:38:15', '2017-01-21 08:38:15', '', 78, 'http://localhost/wordpress3/wordpress/2017/01/21/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-01-21 08:38:33', '2017-01-21 08:38:33', '', 'Others', '', 'publish', 'closed', 'closed', '', 'others', '', '', '2017-01-21 08:38:33', '2017-01-21 08:38:33', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=80', 0, 'page', '', 0),
(81, 1, '2017-01-21 08:38:33', '2017-01-21 08:38:33', '', 'Others', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-01-21 08:38:33', '2017-01-21 08:38:33', '', 80, 'http://localhost/wordpress3/wordpress/2017/01/21/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-01-21 08:38:45', '2017-01-21 08:38:45', '', 'name', '', 'publish', 'closed', 'closed', '', 'name', '', '', '2017-01-21 08:38:45', '2017-01-21 08:38:45', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=82', 0, 'page', '', 0),
(83, 1, '2017-01-21 08:38:45', '2017-01-21 08:38:45', '', 'name', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-01-21 08:38:45', '2017-01-21 08:38:45', '', 82, 'http://localhost/wordpress3/wordpress/2017/01/21/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2017-01-21 08:39:10', '2017-01-21 08:39:10', '', 'email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2017-01-21 08:39:10', '2017-01-21 08:39:10', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=84', 0, 'page', '', 0),
(85, 1, '2017-01-21 08:39:10', '2017-01-21 08:39:10', '', 'email', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2017-01-21 08:39:10', '2017-01-21 08:39:10', '', 84, 'http://localhost/wordpress3/wordpress/2017/01/21/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-01-21 08:39:23', '2017-01-21 08:39:23', '', 'phone num', '', 'publish', 'closed', 'closed', '', 'phone-num', '', '', '2017-01-21 08:39:23', '2017-01-21 08:39:23', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=86', 0, 'page', '', 0),
(87, 1, '2017-01-21 08:39:23', '2017-01-21 08:39:23', '', 'phone num', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-01-21 08:39:23', '2017-01-21 08:39:23', '', 86, 'http://localhost/wordpress3/wordpress/2017/01/21/86-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-01-21 08:43:07', '2017-01-21 08:43:07', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2017-03-31 06:37:34', '2017-03-31 06:37:34', '', 0, 'http://localhost/wordpress3/wordpress/?p=91', 9, 'nav_menu_item', '', 0),
(92, 1, '2017-01-21 08:43:07', '2017-01-21 08:43:07', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2017-03-31 06:37:34', '2017-03-31 06:37:34', '', 0, 'http://localhost/wordpress3/wordpress/?p=92', 7, 'nav_menu_item', '', 0),
(93, 1, '2017-01-21 08:43:06', '2017-01-21 08:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2017-03-31 06:37:33', '2017-03-31 06:37:33', '', 58, 'http://localhost/wordpress3/wordpress/?p=93', 6, 'nav_menu_item', '', 0),
(95, 1, '2017-01-21 08:43:06', '2017-01-21 08:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2017-03-31 06:37:33', '2017-03-31 06:37:33', '', 0, 'http://localhost/wordpress3/wordpress/?p=95', 5, 'nav_menu_item', '', 0),
(98, 1, '2017-01-21 08:48:16', '2017-01-21 08:48:16', '', 'New Slider', '', 'publish', 'closed', 'closed', '', 'new-slider', '', '', '2017-01-21 08:49:16', '2017-01-21 08:49:16', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=ml-slider&#038;p=98', 0, 'ml-slider', '', 0),
(110, 1, '2017-01-21 09:06:41', '2017-01-21 09:06:41', '[ditty_news_ticker id="194"]\r\n[metaslider id=98]\r\n', 'Slider', '', 'publish', 'closed', 'closed', '', 'slider', '', '', '2017-03-31 07:50:16', '2017-03-31 07:50:16', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=110', 0, 'page', '', 0),
(111, 1, '2017-01-21 09:06:41', '2017-01-21 09:06:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:06:41', '2017-01-21 09:06:41', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2017-01-21 09:07:40', '2017-01-21 09:07:40', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2017-03-31 06:37:33', '2017-03-31 06:37:33', '', 0, 'http://localhost/wordpress3/wordpress/?p=112', 2, 'nav_menu_item', '', 0),
(113, 1, '2017-01-21 09:08:50', '2017-01-21 09:08:50', '[metaslider id=98]', 'Home', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:08:50', '2017-01-21 09:08:50', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-01-21 09:10:58', '2017-01-21 09:10:58', '[metaslider id=98]', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:10:58', '2017-01-21 09:10:58', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2017-01-21 09:32:43', '2017-01-21 09:32:43', '', 'dress1', '', 'inherit', 'open', 'closed', '', 'dress1-2', '', '', '2017-01-21 09:32:43', '2017-01-21 09:32:43', '', 0, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2017-01-21 09:34:26', '2017-01-21 09:34:26', '[metaslider id=98]\r\n\r\n[envira-gallery id="118"]', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:34:26', '2017-01-21 09:34:26', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2017-01-21 09:35:01', '2017-01-21 09:35:01', '', 'dess', '', 'inherit', 'open', 'closed', '', 'dess-2', '', '', '2017-01-21 09:35:01', '2017-01-21 09:35:01', '', 0, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dess-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2017-01-21 09:36:15', '2017-01-21 09:36:15', '[metaslider id=98]\r\n\r\n[envira-gallery id="118"]\r\n\r\n<code id="envira_shortcode_id_122">[envira-gallery id="122"]</code>\r\n\r\n<code id="envira_shortcode_id_122">[envira-gallery id="122"]</code>', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:36:15', '2017-01-21 09:36:15', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2017-01-21 09:37:18', '2017-01-21 09:37:18', '', 'header', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2017-01-21 09:37:18', '2017-01-21 09:37:18', '', 0, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/header.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2017-01-21 09:37:59', '2017-01-21 09:37:59', '[metaslider id=98]\r\n\r\n[envira-gallery id="118"]\r\n\r\n<code id="envira_shortcode_id_122">[envira-gallery id="122"]</code>\r\n\r\n<code id="envira_shortcode_id_122">[envira-gallery id="122"]</code>\r\n\r\n[envira-gallery id="125"]', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:37:59', '2017-01-21 09:37:59', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2017-01-21 09:38:46', '2017-01-21 09:38:46', '[metaslider id=98]\r\n\r\n[envira-gallery id="118"]\r\n\r\n<code id="envira_shortcode_id_122">[envira-gallery id="122"]</code>\r\n\r\n[envira-gallery id="125"]', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:38:46', '2017-01-21 09:38:46', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2017-01-21 09:39:45', '2017-01-21 09:39:45', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2017-01-21 09:39:45', '2017-01-21 09:39:45', '', 0, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2017-01-21 09:40:32', '2017-01-21 09:40:32', '[metaslider id=98]\r\n\r\n[envira-gallery id="118"]\r\n\r\n<code id="envira_shortcode_id_122">[envira-gallery id="122"]</code>\r\n\r\n[envira-gallery id="125"]\r\n\r\n[envira-gallery id="129"]', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:40:32', '2017-01-21 09:40:32', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2017-01-21 09:43:26', '2017-01-21 09:43:26', '', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2017-01-21 09:46:15', '2017-01-21 09:46:15', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=envira&#038;p=132', 0, 'envira', '', 0),
(133, 1, '2017-01-21 09:42:53', '2017-01-21 09:42:53', '', 'dress1', '', 'inherit', 'open', 'closed', '', 'dress1-3', '', '', '2017-01-21 09:42:53', '2017-01-21 09:42:53', '', 132, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2017-01-21 09:43:03', '2017-01-21 09:43:03', '', 'game', '', 'inherit', 'open', 'closed', '', 'game-2', '', '', '2017-01-21 09:43:03', '2017-01-21 09:43:03', '', 132, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/game-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2017-01-21 09:43:10', '2017-01-21 09:43:10', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2017-01-21 09:43:10', '2017-01-21 09:43:10', '', 132, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2017-01-21 09:43:18', '2017-01-21 09:43:18', '', 'dess', '', 'inherit', 'open', 'closed', '', 'dess-3', '', '', '2017-01-21 09:43:18', '2017-01-21 09:43:18', '', 132, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dess-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2017-01-21 09:43:57', '2017-01-21 09:43:57', '[metaslider id=98]\r\n\r\n[envira-gallery id="132"]\r\n\r\n&nbsp;', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:43:57', '2017-01-21 09:43:57', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2017-01-21 09:45:24', '2017-01-21 09:45:24', '', 'dress1', '', 'inherit', 'open', 'closed', '', 'dress1-4', '', '', '2017-01-21 09:45:24', '2017-01-21 09:45:24', '', 132, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2017-01-21 09:45:36', '2017-01-21 09:45:36', '', 'dress1', '', 'inherit', 'open', 'closed', '', 'dress1-5', '', '', '2017-01-21 09:45:36', '2017-01-21 09:45:36', '', 132, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2017-01-21 09:46:09', '2017-01-21 09:46:09', '', 'dress1', '', 'inherit', 'open', 'closed', '', 'dress1-6', '', '', '2017-01-21 09:46:09', '2017-01-21 09:46:09', '', 132, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/dress1-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2017-01-21 09:46:46', '2017-01-21 09:46:46', '[metaslider id=98]\r\n\r\n<code id="envira_shortcode_id_132">[envira-gallery id="132"]</code>\r\n\r\n&nbsp;', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-21 09:46:46', '2017-01-21 09:46:46', '', 110, 'http://localhost/wordpress3/wordpress/2017/01/21/110-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2017-01-21 09:50:41', '2017-01-21 09:50:41', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nOnline Stationary Store "[your-subject]"\n[your-name] <tahmina@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Online Stationary Store (http://localhost/wordpress3/wordpress)\ntahmina@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nOnline Stationary Store "[your-subject]"\nOnline Stationary Store <tahmina@gmail.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Online Stationary Store (http://localhost/wordpress3/wordpress)\n[your-email]\nReply-To: tahmina@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-01-21 09:50:41', '2017-01-21 09:50:41', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=wpcf7_contact_form&p=144', 0, 'wpcf7_contact_form', '', 0),
(145, 1, '2017-01-21 09:53:02', '2017-01-21 09:53:02', '[contact-form-7 id="144" title="Contact form 1"]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2017-01-21 09:53:02', '2017-01-21 09:53:02', '', 62, 'http://localhost/wordpress3/wordpress/2017/01/21/62-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2017-01-21 09:57:35', '2017-01-21 09:57:35', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '62-autosave-v1', '', '', '2017-01-21 09:57:35', '2017-01-21 09:57:35', '', 62, 'http://localhost/wordpress3/wordpress/2017/01/21/62-autosave-v1/', 0, 'revision', '', 0),
(152, 1, '2017-01-21 10:19:39', '2017-01-21 10:19:39', '', 'Form Name', '', 'publish', 'closed', 'closed', '', 'form-name', '', '', '2017-01-21 10:21:36', '2017-01-21 10:21:36', '', 0, 'http://localhost/wordpress3/wordpress/smuzform/form-name/', 0, 'smuzform', '', 0),
(153, 1, '2017-01-21 10:22:34', '2017-01-21 10:22:34', '[sform id=''152'']', 'Contact us', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2017-01-21 10:22:34', '2017-01-21 10:22:34', '', 62, 'http://localhost/wordpress3/wordpress/2017/01/21/62-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2017-03-31 03:25:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-31 03:25:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/wordpress/?p=154', 0, 'post', '', 0),
(155, 1, '2017-03-31 03:33:46', '2017-03-31 03:33:46', 'I am Tahmina Akter.My major is computer science and telecommunication engineering.It''s royal dept in NSTU.\r\n<img src="http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/20150718_103259-2-230x300.jpg" alt="20150718_103259-2" width="230" height="300" class="alignnone size-medium wp-image-5" />\r\n<strong>About NSTU</strong>\r\nDepartment of Computer Science and Telecommunication Engineering in one of the four founding departments of Noakhali Science and Technology University. The department currently offers Bachelor of Science (Engineering) in CSTE and Masters of Science (Engineering) in Telecommunication Engineeing. The department is different than other traditional Computer Science departments in the way that, courses of Communication Technology is equally emphasized along with courses of Computer Science in the curriculum. The department has highly qualified faculty members and is equipped with state of the art Computer, Electronics and Communication Labs', 'About me', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-03-31 03:42:46', '2017-03-31 03:42:46', '', 0, 'http://localhost/wordpress3/wordpress/?page_id=155', 0, 'page', '', 0),
(156, 1, '2017-03-31 03:33:46', '2017-03-31 03:33:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-03-31 03:33:46', '2017-03-31 03:33:46', '', 155, 'http://localhost/wordpress3/wordpress/2017/03/31/155-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2017-03-31 03:34:37', '2017-03-31 03:34:37', ' ', '', '', 'publish', 'closed', 'closed', '', '157', '', '', '2017-03-31 06:37:33', '2017-03-31 06:37:33', '', 0, 'http://localhost/wordpress3/wordpress/?p=157', 1, 'nav_menu_item', '', 0),
(158, 1, '2017-03-31 03:38:56', '2017-03-31 03:38:56', 'I am Tahmina Akter.My major is computer science and telecommunication engineering.It''s ', 'Home', '', 'inherit', 'closed', 'closed', '', '155-autosave-v1', '', '', '2017-03-31 03:38:56', '2017-03-31 03:38:56', '', 155, 'http://localhost/wordpress3/wordpress/2017/03/31/155-autosave-v1/', 0, 'revision', '', 0),
(159, 1, '2017-03-31 03:40:37', '2017-03-31 03:40:37', 'I am Tahmina Akter.My major is computer science and telecommunication engineering.It''s royal dept in NSTU.\r\n<img src="http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/20150718_103259-2-230x300.jpg" alt="20150718_103259-2" width="230" height="300" class="alignnone size-medium wp-image-5" />\r\n<strong>About NSTU</strong>\r\nDepartment of Computer Science and Telecommunication Engineering in one of the four founding departments of Noakhali Science and Technology University. The department currently offers Bachelor of Science (Engineering) in CSTE and Masters of Science (Engineering) in Telecommunication Engineeing. The department is different than other traditional Computer Science departments in the way that, courses of Communication Technology is equally emphasized along with courses of Computer Science in the curriculum. The department has highly qualified faculty members and is equipped with state of the art Computer, Electronics and Communication Labs', 'Home', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-03-31 03:40:37', '2017-03-31 03:40:37', '', 155, 'http://localhost/wordpress3/wordpress/2017/03/31/155-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2017-03-31 03:42:46', '2017-03-31 03:42:46', 'I am Tahmina Akter.My major is computer science and telecommunication engineering.It''s royal dept in NSTU.\r\n<img src="http://localhost/wordpress3/wordpress/wp-content/uploads/2017/01/20150718_103259-2-230x300.jpg" alt="20150718_103259-2" width="230" height="300" class="alignnone size-medium wp-image-5" />\r\n<strong>About NSTU</strong>\r\nDepartment of Computer Science and Telecommunication Engineering in one of the four founding departments of Noakhali Science and Technology University. The department currently offers Bachelor of Science (Engineering) in CSTE and Masters of Science (Engineering) in Telecommunication Engineeing. The department is different than other traditional Computer Science departments in the way that, courses of Communication Technology is equally emphasized along with courses of Computer Science in the curriculum. The department has highly qualified faculty members and is equipped with state of the art Computer, Electronics and Communication Labs', 'About me', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-03-31 03:42:46', '2017-03-31 03:42:46', '', 155, 'http://localhost/wordpress3/wordpress/2017/03/31/155-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2017-03-31 03:56:17', '2017-03-31 03:56:17', '<img src="http://localhost/wordpress3/wordpress/wp-content/uploads/2017/03/pencil1.png" alt="pencil1" width="120" height="120" class="alignnone size-full wp-image-162" />', 'pencil', 'very necessary for drawing', 'publish', 'open', 'closed', '', 'pencil', '', '', '2017-03-31 04:17:50', '2017-03-31 04:17:50', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&#038;p=161', 0, 'product', '', 0),
(162, 1, '2017-03-31 03:55:49', '2017-03-31 03:55:49', '', 'pencil1', '', 'inherit', 'open', 'closed', '', 'pencil1', '', '', '2017-03-31 03:55:49', '2017-03-31 03:55:49', '', 161, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/03/pencil1.png', 0, 'attachment', 'image/png', 0),
(163, 1, '2017-03-31 04:08:01', '2017-03-31 04:08:01', '<img src="http://localhost/wordpress3/wordpress/wp-content/uploads/2017/03/pencil1.png" alt="pencil1" width="120" height="120" class="alignnone size-full wp-image-162" />', 'pencil', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-03-31 04:08:01', '2017-03-31 04:08:01', '', 70, 'http://localhost/wordpress3/wordpress/2017/03/31/70-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2017-03-31 04:10:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-03-31 04:10:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&p=164', 0, 'product', '', 0),
(165, 1, '2017-03-31 04:16:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-31 04:16:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/wordpress/?p=165', 0, 'post', '', 0),
(166, 1, '2017-03-31 04:23:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-31 04:23:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/wordpress/?p=166', 0, 'post', '', 0),
(167, 1, '2017-03-31 04:35:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-03-31 04:35:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&p=167', 0, 'product', '', 0),
(168, 1, '2017-03-31 05:11:07', '2017-03-31 05:11:07', 'need for drawing.need for drawing.need for drawing.need for drawing.need for drawing.need for drawing.need for drawing.need for drawing.\r\nneed for drawing.need for drawing.need for drawing.need for drawing.\r\nneed for drawing.need for drawing.need for drawing.', 'pencil', 'need for drawing.need for drawing.need for drawing.need for drawing.need for drawing.need for drawing.need for drawing.\r\nneed for drawing.need for drawing.need for drawing.need for drawing.need for drawing.', 'publish', 'open', 'closed', '', 'pencil-2', '', '', '2017-03-31 05:18:09', '2017-03-31 05:18:09', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&#038;p=168', 0, 'product', '', 0),
(169, 1, '2017-03-31 05:16:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-03-31 05:16:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&p=169', 0, 'product', '', 0),
(170, 1, '2017-03-31 05:37:53', '2017-03-31 05:37:53', 'necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. ', 'pen', 'necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. necessary for writting. ', 'publish', 'open', 'closed', '', 'pen', '', '', '2017-03-31 06:02:29', '2017-03-31 06:02:29', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&#038;p=170', 0, 'product', '', 0),
(171, 1, '2017-03-31 05:36:06', '2017-03-31 05:36:06', '', 'pen', '', 'inherit', 'open', 'closed', '', 'pen', '', '', '2017-03-31 05:36:06', '2017-03-31 05:36:06', '', 170, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/03/pen.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2017-03-31 05:36:27', '2017-03-31 05:36:27', '', 'pen1', '', 'inherit', 'open', 'closed', '', 'pen1', '', '', '2017-03-31 05:36:27', '2017-03-31 05:36:27', '', 170, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/03/pen1.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2017-03-31 06:03:10', '2017-03-31 06:03:10', 'necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. ', 'pen', 'necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. necessary for writting. \r\nnecessary for writting. necessary for writting. necessary for writting. necessary for writting. necessary for writting. ', 'inherit', 'closed', 'closed', '', '170-autosave-v1', '', '', '2017-03-31 06:03:10', '2017-03-31 06:03:10', '', 170, 'http://localhost/wordpress3/wordpress/2017/03/31/170-autosave-v1/', 0, 'revision', '', 0),
(174, 1, '2017-03-31 06:05:46', '2017-03-31 06:05:46', ' ', '', '', 'publish', 'closed', 'closed', '', '174', '', '', '2017-03-31 06:37:34', '2017-03-31 06:37:34', '', 0, 'http://localhost/wordpress3/wordpress/?p=174', 8, 'nav_menu_item', '', 0),
(175, 1, '2017-03-31 06:18:57', '2017-03-31 06:18:57', '<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.\r\n<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.', 'books', '<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.', 'publish', 'open', 'closed', '', 'books', '', '', '2017-03-31 06:41:52', '2017-03-31 06:41:52', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&#038;p=175', 0, 'product', '', 0),
(176, 1, '2017-03-31 06:17:17', '2017-03-31 06:17:17', '', 'book1', '', 'inherit', 'open', 'closed', '', 'book1', '', '', '2017-03-31 06:17:17', '2017-03-31 06:17:17', '', 175, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/03/book1.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2017-03-31 06:17:40', '2017-03-31 06:17:40', '', 'book2', '', 'inherit', 'open', 'closed', '', 'book2', '', '', '2017-03-31 06:17:40', '2017-03-31 06:17:40', '', 175, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/03/book2.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2017-03-31 06:18:02', '2017-03-31 06:18:02', '', 'book3', '', 'inherit', 'open', 'closed', '', 'book3', '', '', '2017-03-31 06:18:02', '2017-03-31 06:18:02', '', 175, 'http://localhost/wordpress3/wordpress/wp-content/uploads/2017/03/book3.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2017-03-31 06:22:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-03-31 06:22:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&p=180', 0, 'product', '', 0),
(181, 1, '2017-03-31 06:31:55', '2017-03-31 06:31:55', '<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.\r\n<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.', '', '<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.', 'inherit', 'closed', 'closed', '', '175-autosave-v1', '', '', '2017-03-31 06:31:55', '2017-03-31 06:31:55', '', 175, 'http://localhost/wordpress3/wordpress/2017/03/31/175-autosave-v1/', 0, 'revision', '', 0),
(182, 1, '2017-03-31 06:37:33', '2017-03-31 06:37:33', ' ', '', '', 'publish', 'closed', 'closed', '', '182', '', '', '2017-03-31 06:37:33', '2017-03-31 06:37:33', '', 0, 'http://localhost/wordpress3/wordpress/?p=182', 4, 'nav_menu_item', '', 0),
(184, 1, '2017-03-31 06:43:20', '2017-03-31 06:43:20', '<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.\r\n<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.', 'story books', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-03-31 06:43:20', '2017-03-31 06:43:20', '', 76, 'http://localhost/wordpress3/wordpress/2017/03/31/76-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2017-03-31 06:45:37', '2017-03-31 06:45:37', '<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.\r\n<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.', 'story books', '', 'inherit', 'closed', 'closed', '', '76-autosave-v1', '', '', '2017-03-31 06:45:37', '2017-03-31 06:45:37', '', 76, 'http://localhost/wordpress3/wordpress/2017/03/31/76-autosave-v1/', 0, 'revision', '', 0),
(186, 1, '2017-03-31 06:47:27', '0000-00-00 00:00:00', '', 'diary', '', 'draft', 'open', 'closed', '', '', '', '', '2017-03-31 06:47:27', '2017-03-31 06:47:27', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=product&#038;p=186', 0, 'product', '', 0),
(187, 1, '2017-03-31 06:48:54', '2017-03-31 06:48:54', '<strong>Importance of diary in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.\r\n<strong>Importance of Books in our Life</strong>\r\nBooks plays an important role in in our life. It is said that books are our best companions. Books are our friends in a real sense. They demand nothing from us. They give us plenty of joy. We also learn a lot from them. They take us into a different world of imagination.\r\n\r\nA books consists of long written work. It may be published form either in physical form or in electronic form.', 'Diary', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2017-03-31 06:48:54', '2017-03-31 06:48:54', '', 72, 'http://localhost/wordpress3/wordpress/2017/03/31/72-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2017-03-31 07:30:30', '2017-03-31 07:30:30', '', 'breaking news of nstu', '', 'publish', 'closed', 'closed', '', 'breaking-news-of-nstu', '', '', '2017-03-31 07:30:30', '2017-03-31 07:30:30', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=ditty_news_ticker&#038;p=189', 0, 'ditty_news_ticker', '', 0),
(190, 1, '2017-03-31 07:29:16', '2017-03-31 07:29:16', '[ditty_news_ticker id="189"]\r\n[metaslider id=98]\r\n\r\n<code id="envira_shortcode_id_132">[envira-gallery id="132"]</code>\r\n\r\n&nbsp;', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-03-31 07:29:16', '2017-03-31 07:29:16', '', 110, 'http://localhost/wordpress3/wordpress/2017/03/31/110-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2017-03-31 07:32:46', '2017-03-31 07:32:46', '[ditty_news_ticker id="189"]\r\n<?php if(function_exists(''ditty_news_ticker'')){ditty_news_ticker(189);} ?>\r\n[metaslider id=98]\r\n\r\n<code id="envira_shortcode_id_132">[envira-gallery id="132"]</code>\r\n\r\n&nbsp;', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-03-31 07:32:46', '2017-03-31 07:32:46', '', 110, 'http://localhost/wordpress3/wordpress/2017/03/31/110-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2017-03-31 07:49:55', '2017-03-31 07:49:55', '[ditty_news_ticker id="194"]\r\n[metaslider id=98]\r\n', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-autosave-v1', '', '', '2017-03-31 07:49:55', '2017-03-31 07:49:55', '', 110, 'http://localhost/wordpress3/wordpress/2017/03/31/110-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(193, 1, '2017-03-31 07:37:39', '2017-03-31 07:37:39', '[ditty_news_ticker id="189"]\r\n\r\n[metaslider id=98]\r\n\r\n', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-03-31 07:37:39', '2017-03-31 07:37:39', '', 110, 'http://localhost/wordpress3/wordpress/2017/03/31/110-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2017-03-31 07:40:32', '2017-03-31 07:40:32', '', 'i am tani', '', 'publish', 'closed', 'closed', '', 'i-am-tani', '', '', '2017-03-31 07:40:32', '2017-03-31 07:40:32', '', 0, 'http://localhost/wordpress3/wordpress/?post_type=ditty_news_ticker&#038;p=194', 0, 'ditty_news_ticker', '', 0),
(195, 1, '2017-03-31 07:39:48', '2017-03-31 07:39:48', '[ditty_news_ticker id="189"]\r\n[ditty_news_ticker id="194"]\r\n[metaslider id=98]\r\n\r\n', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-03-31 07:39:48', '2017-03-31 07:39:48', '', 110, 'http://localhost/wordpress3/wordpress/2017/03/31/110-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2017-03-31 07:43:25', '2017-03-31 07:43:25', '[ditty_news_ticker id="189"]\r\n[ditty_news_ticker id="194"]\r\n[metaslider id=98]\r\n\r\n[metaslider id=98]', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-03-31 07:43:25', '2017-03-31 07:43:25', '', 110, 'http://localhost/wordpress3/wordpress/2017/03/31/110-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2017-03-31 07:47:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-31 07:47:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/wordpress/?p=197', 0, 'post', '', 0),
(198, 1, '2017-03-31 07:50:16', '2017-03-31 07:50:16', '[ditty_news_ticker id="194"]\r\n[metaslider id=98]\r\n', 'Slider', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-03-31 07:50:16', '2017-03-31 07:50:16', '', 110, 'http://localhost/wordpress3/wordpress/2017/03/31/110-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_smuzform_entry`
--

CREATE TABLE `wp_smuzform_entry` (
  `id` mediumint(9) NOT NULL,
  `form_id` mediumint(9) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_ip` varchar(100) DEFAULT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_smuzform_entry_data`
--

CREATE TABLE `wp_smuzform_entry_data` (
  `id` int(11) NOT NULL,
  `form_id` mediumint(9) NOT NULL,
  `entry_id` mediumint(9) NOT NULL,
  `field_id` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(23, 19, 'order', '0'),
(24, 19, 'display_type', ''),
(25, 19, 'thumbnail_id', '0'),
(26, 20, 'order', '0'),
(27, 20, 'display_type', ''),
(28, 20, 'thumbnail_id', '162'),
(29, 21, 'order', '0'),
(30, 21, 'display_type', ''),
(31, 21, 'thumbnail_id', '0'),
(32, 22, 'order', '0'),
(33, 22, 'display_type', ''),
(34, 22, 'thumbnail_id', '0'),
(35, 19, 'product_count_product_cat', '4'),
(36, 21, 'product_count_product_cat', '0'),
(37, 20, 'product_count_product_cat', '1'),
(38, 23, 'order', '0'),
(39, 23, 'product_count_product_cat', '0'),
(40, 23, 'display_type', ''),
(41, 23, 'thumbnail_id', '172'),
(42, 22, 'product_count_product_cat', '1'),
(43, 24, 'order', '0'),
(44, 24, 'product_count_product_cat', '0'),
(45, 24, 'display_type', ''),
(46, 24, 'thumbnail_id', '176');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'clothing', 'clothing', 0),
(3, 'electronic', 'electronic', 0),
(4, 'music', 'music', 0),
(5, 'simple', 'simple', 0),
(6, 'grouped', 'grouped', 0),
(7, 'variable', 'variable', 0),
(8, 'external', 'external', 0),
(12, 'Menu 1', 'menu-1', 0),
(13, '98', '98', 0),
(19, 'product', 'product', 0),
(20, 'Book', 'book-product', 0),
(21, 'dairy', 'dairy', 0),
(22, 'story book', 'story-book', 0),
(23, 'pen', 'pen', 0),
(24, 'Books', 'books', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 13, 0),
(9, 13, 0),
(19, 5, 0),
(20, 13, 0),
(42, 12, 0),
(65, 12, 0),
(66, 12, 0),
(67, 12, 0),
(91, 12, 0),
(92, 12, 0),
(93, 12, 0),
(95, 12, 0),
(112, 12, 0),
(157, 12, 0),
(161, 5, 0),
(161, 19, 0),
(168, 5, 0),
(168, 19, 0),
(170, 5, 0),
(170, 19, 0),
(174, 12, 0),
(175, 5, 0),
(175, 22, 0),
(182, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'product_type', '', 0, 5),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(12, 12, 'nav_menu', '', 0, 12),
(13, 13, 'ml-slider', '', 0, 3),
(19, 19, 'product_cat', '', 0, 3),
(20, 20, 'product_cat', '', 19, 0),
(21, 21, 'product_cat', '', 20, 0),
(22, 22, 'product_cat', '', 20, 1),
(23, 23, 'product_cat', '', 19, 0),
(24, 24, 'product_cat', '', 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"07ca20cfdc11a673a8993478cd34434846a7431510ac8cdb5ed73c5cb025030a";a:4:{s:10:"expiration";i:1491103537;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 OPR/43.0.2442.1144";s:5:"login";i:1490930737;}s:64:"71d27dab0a4ca2a0478963cdab852bece09a41af73b15981800476d03da794ed";a:4:{s:10:"expiration";i:1491119585;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 OPR/43.0.2442.1144";s:5:"login";i:1490946785;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '154'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&mfold=o&cats=pop'),
(17, 1, 'wp_user-settings-time', '1490946497'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(21, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"1f0e3dad99908345f7439f8ffabdffc4";a:9:{s:10:"product_id";i:19;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:900;s:8:"line_tax";i:0;s:13:"line_subtotal";i:900;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(22, 1, 'nav_menu_recently_edited', '12'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BBEfbZ6l4a3fXiaS9XnIFJx3jEb/SN/', 'admin', 'tahmina@gmail.com', '', '2017-01-19 01:09:07', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(5, '1', 'a:18:{s:4:"cart";s:305:"a:1:{s:32:"1f0e3dad99908345f7439f8ffabdffc4";a:9:{s:10:"product_id";i:19;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:900;s:8:"line_tax";i:0;s:13:"line_subtotal";i:900;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:900;s:5:"total";d:900;s:8:"subtotal";i:900;s:15:"subtotal_ex_tax";i:900;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1491103551);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_smuzform_entry`
--
ALTER TABLE `wp_smuzform_entry`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_smuzform_entry_data`
--
ALTER TABLE `wp_smuzform_entry_data`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`(191)),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=725;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `wp_smuzform_entry`
--
ALTER TABLE `wp_smuzform_entry`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_smuzform_entry_data`
--
ALTER TABLE `wp_smuzform_entry_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
