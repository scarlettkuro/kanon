-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 09 2016 г., 02:52
-- Версия сервера: 5.1.71-community-log
-- Версия PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `closes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Мистер WordPress', '', 'https://wordpress.org/', '', '2016-01-07 00:46:02', '2016-01-06 21:46:02', 'Привет! Это комментарий.\nЧтобы удалить его, авторизуйтесь и просмотрите комментарии к записи. Там будут ссылки для их изменения или удаления.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=516 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://closes', 'yes'),
(2, 'home', 'http://closes', 'yes'),
(3, 'blogname', 'KʌNON', 'yes'),
(4, 'blogdescription', 'Магазин стильной одежды', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@host.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:3:{i:0;s:25:"easy-table/easy-table.php";i:1;s:37:"fruitful-shortcodes/ff-shortcodes.php";i:2;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '3', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'fruitful', 'yes'),
(40, 'stylesheet', 'fruitful', 'yes'),
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
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '2', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(92, 'WPLANG', 'ru_RU', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:8:"search-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:3:{i:0;s:25:"woocommerce_widget_cart-2";i:1;s:31:"woocommerce_product_tag_cloud-2";i:2;s:38:"woocommerce_recently_viewed_products-2";}s:9:"sidebar-5";a:3:{i:0;s:32:"woocommerce_product_categories-2";i:1;s:26:"woocommerce_price_filter-2";i:2;s:31:"woocommerce_product_tag_cloud-3";}s:9:"sidebar-6";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:11:{i:1452294803;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1452300459;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"d500441b538711fa00c3ef048e23faf3";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:51;}}}}i:1452308400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1452312960;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1452332763;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1452333986;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1452375997;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1452377186;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1452378819;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1454371200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(117, '_site_transient_timeout_browser_3a641b0529e1f6972e9faa1a64fcc08f', '1452721597', 'yes'),
(118, '_site_transient_browser_3a641b0529e1f6972e9faa1a64fcc08f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"43.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(120, 'can_compress_scripts', '1', 'yes'),
(138, 'recently_activated', 'a:0:{}', 'yes'),
(143, 'woocommerce_default_country', 'UA', 'yes'),
(144, 'woocommerce_allowed_countries', 'all', 'yes'),
(145, 'woocommerce_specific_allowed_countries', '', 'yes'),
(146, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(147, 'woocommerce_demo_store', 'no', 'yes'),
(148, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(149, 'woocommerce_currency', 'UAH', 'yes'),
(150, 'woocommerce_currency_pos', 'right_space', 'yes'),
(151, 'woocommerce_price_thousand_sep', '.', 'yes'),
(152, 'woocommerce_price_decimal_sep', ',', 'yes'),
(153, 'woocommerce_price_num_decimals', '2', 'yes'),
(154, 'woocommerce_weight_unit', 'kg', 'yes'),
(155, 'woocommerce_dimension_unit', 'cm', 'yes'),
(156, 'woocommerce_enable_review_rating', 'yes', 'no'),
(157, 'woocommerce_review_rating_required', 'yes', 'no'),
(158, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(159, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(160, 'woocommerce_shop_page_id', '5', 'yes'),
(161, 'woocommerce_shop_page_display', '', 'yes'),
(162, 'woocommerce_category_archive_display', '', 'yes'),
(163, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(164, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(165, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(166, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(167, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(168, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(169, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(170, 'woocommerce_manage_stock', 'yes', 'yes'),
(171, 'woocommerce_hold_stock_minutes', '60', 'no'),
(172, 'woocommerce_notify_low_stock', 'yes', 'no'),
(173, 'woocommerce_notify_no_stock', 'yes', 'no'),
(174, 'woocommerce_stock_email_recipient', 'admin@host.com', 'no'),
(175, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(176, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(177, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(178, 'woocommerce_stock_format', '', 'yes'),
(179, 'woocommerce_file_download_method', 'force', 'no'),
(180, 'woocommerce_downloads_require_login', 'no', 'no'),
(181, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(182, 'woocommerce_calc_taxes', 'no', 'yes'),
(183, 'woocommerce_prices_include_tax', 'no', 'yes'),
(184, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(185, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(186, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(187, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(188, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(189, 'woocommerce_tax_display_cart', 'excl', 'no'),
(190, 'woocommerce_price_display_suffix', '', 'yes'),
(191, 'woocommerce_tax_total_display', 'itemized', 'no'),
(192, 'woocommerce_enable_coupons', 'yes', 'no'),
(193, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(194, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(195, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(196, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(197, 'woocommerce_cart_page_id', '6', 'yes'),
(198, 'woocommerce_checkout_page_id', '7', 'yes'),
(199, 'woocommerce_terms_page_id', '', 'no'),
(200, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(201, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(202, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(203, 'woocommerce_calc_shipping', 'no', 'yes'),
(204, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(205, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(206, 'woocommerce_shipping_method_format', '', 'no'),
(207, 'woocommerce_ship_to_destination', 'billing', 'no'),
(208, 'woocommerce_ship_to_countries', '', 'yes'),
(209, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(210, 'woocommerce_myaccount_page_id', '8', 'yes'),
(211, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(212, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(213, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(214, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(215, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(216, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(217, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(218, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(219, 'woocommerce_registration_generate_username', 'yes', 'no'),
(220, 'woocommerce_registration_generate_password', 'no', 'no'),
(221, 'woocommerce_email_from_name', 'closes', 'no'),
(222, 'woocommerce_email_from_address', 'admin@host.com', 'no'),
(223, 'woocommerce_email_header_image', '', 'no'),
(224, 'woocommerce_email_footer_text', 'closes - Powered by WooCommerce', 'no'),
(225, 'woocommerce_email_base_color', '#557da1', 'no'),
(226, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(227, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(228, 'woocommerce_email_text_color', '#505050', 'no'),
(229, 'woocommerce_api_enabled', 'yes', 'yes'),
(231, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(234, 'woocommerce_db_version', '2.4.12', 'yes'),
(235, 'woocommerce_version', '2.4.12', 'yes'),
(237, 'woocommerce_language_pack_version', 'a:2:{i:0;s:6:"2.4.12";i:1;s:5:"ru_RU";}', 'yes'),
(238, '_transient_woocommerce_cache_excluded_uris', 'a:0:{}', 'yes'),
(239, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(240, 'widget_woocommerce_widget_cart', 'a:2:{i:2;a:2:{s:5:"title";s:14:"Корзина";s:13:"hide_if_empty";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(241, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(242, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(243, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:26:"Фильтр по цене";}s:12:"_multiwidget";i:1;}', 'yes'),
(244, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:6:{s:5:"title";s:33:"Категории товаров";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";s:1:"1";s:12:"hierarchical";s:1:"1";s:18:"show_children_only";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(245, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(246, 'widget_woocommerce_product_tag_cloud', 'a:3:{i:2;a:1:{s:5:"title";s:25:"Метки товаров";}i:3;a:1:{s:5:"title";s:25:"Метки товаров";}s:12:"_multiwidget";i:1;}', 'yes'),
(247, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:2;a:2:{s:5:"title";s:54:"Недавно просмотренные товары";s:6:"number";s:1:"3";}s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(253, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(254, '_transient_timeout_geoip_127.0.0.1', '1452722932', 'no'),
(255, '_transient_geoip_127.0.0.1', '', 'no'),
(256, '_transient_timeout_external_ip_address_127.0.0.1', '1452722933', 'no'),
(257, '_transient_external_ip_address_127.0.0.1', '95.133.238.142', 'no'),
(258, '_transient_timeout_geoip_95.133.238.142', '1452722934', 'no'),
(259, '_transient_geoip_95.133.238.142', 'UA', 'no'),
(260, 'woocommerce_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(261, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(262, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(263, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(264, 'woocommerce_allow_tracking', 'no', 'yes'),
(272, '_transient_twentysixteen_categories', '1', 'yes'),
(275, '_site_transient_timeout_wporg_theme_feature_list', '1452129881', 'yes'),
(276, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(279, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1452119126;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(280, 'current_theme', 'Fruitful', 'yes'),
(281, 'theme_mods_fruitful', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:6;}}', 'yes'),
(282, 'theme_switched', '', 'yes'),
(284, 'fruitful_theme_options', 'a:124:{s:10:"responsive";s:2:"on";s:11:"postcomment";s:2:"on";s:11:"pagecomment";s:2:"on";s:18:"latest_posts_templ";s:1:"0";s:17:"layout_page_templ";s:1:"1";s:19:"layout_single_templ";s:1:"1";s:20:"layout_archive_templ";s:1:"1";s:19:"layout_author_templ";s:1:"1";s:16:"layout_cat_templ";s:1:"1";s:16:"layout_tag_templ";s:1:"1";s:16:"layout_404_templ";s:1:"0";s:19:"layout_search_templ";s:1:"1";s:13:"menu_position";s:1:"2";s:20:"menu_type_responsive";s:10:"full_width";s:10:"header_img";s:1:"0";s:15:"header_bg_color";s:7:"#ffffff";s:15:"header_img_size";s:4:"full";s:13:"header_height";s:2:"80";s:14:"backgroung_img";s:0:"";s:16:"background_color";s:7:"#ffffff";s:18:"container_bg_color";s:7:"#ffffff";s:13:"logo_position";s:1:"0";s:6:"logo_w";s:1:"0";s:6:"logo_h";s:1:"0";s:8:"logo_img";s:1:"0";s:15:"logo_img_retina";s:1:"0";s:8:"fav_icon";s:1:"0";s:15:"fav_icon_iphone";s:1:"0";s:22:"fav_icon_iphone_retina";s:1:"0";s:13:"fav_icon_ipad";s:1:"0";s:20:"fav_icon_ipad_retina";s:1:"0";s:13:"menu_bg_color";s:7:"#ffffff";s:14:"menu_btn_color";s:7:"#F15A23";s:15:"menu_font_color";s:7:"#333333";s:16:"menu_hover_color";s:7:"#ffffff";s:16:"dd_menu_bg_color";s:7:"#ffffff";s:17:"dd_menu_btn_color";s:7:"#F15A23";s:18:"dd_menu_font_color";s:7:"#333333";s:19:"dd_menu_hover_color";s:7:"#ffffff";s:12:"p_font_color";s:7:"#333333";s:12:"a_font_color";s:7:"#333333";s:18:"a_hover_font_color";s:7:"#FF5D2A";s:18:"a_focus_font_color";s:7:"#FF5D2A";s:19:"a_active_font_color";s:7:"#FF5D2A";s:17:"widgets_sep_color";s:7:"#F15A23";s:20:"date_of_post_b_color";s:7:"#F15A23";s:20:"date_of_post_f_color";s:7:"#ffffff";s:9:"btn_color";s:7:"#333333";s:16:"btn_active_color";s:7:"#F15A23";s:17:"soc_icon_bg_color";s:7:"#333333";s:14:"soc_icon_color";s:7:"#ffffff";s:20:"woo_sale_price_color";s:7:"#919191";s:24:"woo_rating_color_regular";s:7:"#333333";s:23:"woo_rating_color_active";s:7:"#FF5D2A";s:13:"h_font_family";s:21:"Open Sans, sans-serif";s:13:"m_font_family";s:21:"Open Sans, sans-serif";s:13:"p_font_family";s:21:"Open Sans, sans-serif";s:7:"h1_size";s:2:"27";s:7:"h2_size";s:2:"34";s:7:"h3_size";s:2:"18";s:7:"h4_size";s:2:"17";s:7:"h5_size";s:2:"14";s:7:"h6_size";s:2:"12";s:6:"m_size";s:2:"14";s:6:"p_size";s:2:"14";s:13:"select_slider";s:1:"2";s:11:"s_animation";s:4:"fade";s:11:"s_direction";s:10:"horizontal";s:9:"s_reverse";s:5:"false";s:11:"s_slideshow";s:4:"true";s:16:"s_slideshowSpeed";s:4:"7000";s:16:"s_animationSpeed";s:3:"600";s:11:"s_initDelay";s:1:"0";s:11:"s_randomize";s:5:"false";s:12:"s_controlnav";s:4:"true";s:7:"s_touch";s:4:"true";s:8:"nv_skins";s:9:"theme-bar";s:12:"nv_animation";s:6:"random";s:8:"nv_slice";s:2:"15";s:10:"nv_boxCols";s:1:"8";s:10:"nv_boxRows";s:1:"4";s:12:"nv_animSpeed";s:3:"500";s:12:"nv_pauseTime";s:4:"3000";s:13:"nv_startSlide";s:1:"0";s:15:"nv_directionNav";s:4:"true";s:13:"nv_controlNav";s:4:"true";s:19:"nv_controlNavThumbs";s:5:"false";s:15:"nv_pauseOnHover";s:4:"true";s:16:"nv_manualAdvance";s:5:"false";s:11:"nv_prevText";s:4:"Prev";s:11:"nv_nextText";s:4:"Next";s:14:"nv_randomStart";s:5:"false";s:6:"slides";a:5:{s:7:"slide-3";a:2:{s:4:"link";s:0:"";s:9:"attach_id";s:2:"38";}s:7:"slide-4";a:2:{s:4:"link";s:0:"";s:9:"attach_id";s:2:"39";}s:7:"slide-5";a:2:{s:4:"link";s:0:"";s:9:"attach_id";s:2:"40";}s:7:"slide-6";a:2:{s:4:"link";s:0:"";s:9:"attach_id";s:2:"41";}s:7:"slide-7";a:2:{s:4:"link";s:0:"";s:9:"attach_id";s:2:"42";}}s:11:"sl_position";s:1:"0";s:12:"facebook_url";s:0:"";s:11:"twitter_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:14:"googleplus_url";s:0:"";s:12:"dribbble_url";s:0:"";s:10:"skype_link";s:0:"";s:11:"flickr_link";s:0:"";s:11:"youtube_url";s:0:"";s:9:"vimeo_url";s:0:"";s:8:"rss_link";s:0:"";s:7:"vk_link";s:0:"";s:13:"instagram_url";s:0:"";s:13:"pinterest_url";s:0:"";s:8:"yelp_url";s:0:"";s:10:"email_link";s:0:"";s:11:"github_link";s:0:"";s:11:"tumblr_link";s:0:"";s:15:"soundcloud_link";s:0:"";s:11:"footer_text";s:129:"Fruitful theme by <a href=\\"http://fruitfulcode.com\\">fruitfulcode</a> Powered by: <a href=\\"http://wordpress.org\\">WordPress</a>";s:10:"custom_css";s:0:"";s:8:"showcart";s:2:"on";s:16:"woo_shop_sidebar";s:1:"2";s:19:"woo_product_sidebar";s:1:"1";s:12:"shop_num_row";s:1:"4";s:17:"woo_shop_num_prod";s:2:"10";s:15:"is_fixed_header";s:3:"off";s:10:"styletheme";s:3:"off";s:13:"is_wpml_ready";s:3:"off";s:12:"bg_repeating";s:3:"off";}', 'yes'),
(289, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(293, 'category_children', 'a:0:{}', 'yes'),
(294, '_transient_product_query-transient-version', '1452288030', 'yes'),
(299, '_transient_product-transient-version', '1452288030', 'yes'),
(302, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(322, 'widget_widget_news_archive', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(329, '_transient_timeout_wc_rating_count_241452120239', '1454714320', 'no'),
(330, '_transient_wc_rating_count_241452120239', 'a:0:{}', 'no'),
(331, '_transient_timeout_wc_average_rating_241452120239', '1454714320', 'no'),
(332, '_transient_wc_average_rating_241452120239', '0', 'no'),
(333, '_transient_timeout_wc_rating_count_221452120239', '1454714320', 'no'),
(334, '_transient_wc_rating_count_221452120239', 'a:0:{}', 'no'),
(335, '_transient_timeout_wc_average_rating_221452120239', '1454714320', 'no'),
(336, '_transient_wc_average_rating_221452120239', '0', 'no'),
(369, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:6:"/tovar";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(395, 'rewrite_rules', 'a:187:{s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:33:"tovar/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"tovar/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"tovar/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"tovar/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"tovar/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"tovar/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"tovar/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:26:"tovar/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:46:"tovar/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:41:"tovar/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:34:"tovar/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:41:"tovar/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:31:"tovar/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:37:"tovar/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"tovar/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"tovar/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:22:"tovar/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"tovar/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"tovar/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"tovar/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"tovar/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"tovar/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(416, '_wc_session_880f1b0ee1791cbd7ea0ede9a3b274e7', 'a:23:{s:4:"cart";s:303:"a:1:{s:32:"b6d767d2f8ed5d21a44b0e5886680cb9";a:9:{s:10:"product_id";i:22;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:60;s:8:"line_tax";i:0;s:13:"line_subtotal";i:60;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:1419:"a:1:{s:32:"b6d767d2f8ed5d21a44b0e5886680cb9";a:10:{s:10:"product_id";i:22;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:60;s:8:"line_tax";i:0;s:13:"line_subtotal";i:60;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}s:4:"data";O:17:"WC_Product_Simple":6:{s:2:"id";i:22;s:4:"post";O:7:"WP_Post":24:{s:2:"ID";i:22;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2016-01-07 01:43:59";s:13:"post_date_gmt";s:19:"2016-01-06 22:43:59";s:12:"post_content";s:0:"";s:10:"post_title";s:38:"Шуба Кендрика Ламара";s:12:"post_excerpt";s:8:"Сваг";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:110:"%d1%88%d1%83%d0%b1%d0%b0-%d0%ba%d0%b5%d0%bd%d0%b4%d1%80%d0%b8%d0%ba%d0%b0-%d0%bb%d0%b0%d0%bc%d0%b0%d1%80%d0%b0";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2016-01-07 01:43:59";s:17:"post_modified_gmt";s:19:"2016-01-06 22:43:59";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:42:"http://closes/?post_type=product&#038;p=22";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}s:12:"product_type";s:6:"simple";s:17:"\0*\0shipping_class";s:0:"";s:20:"\0*\0shipping_class_id";i:0;s:5:"price";s:2:"60";}}}";s:19:"cart_contents_total";d:60;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:60;s:8:"subtotal";i:60;s:15:"subtotal_ex_tax";i:60;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:3:"cod";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"UA";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"UA";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";s:10:"wc_notices";N;}', 'no'),
(417, '_wc_session_expires_880f1b0ee1791cbd7ea0ede9a3b274e7', '1452352781', 'no'),
(428, '_transient_timeout_wc_admin_report', '1452373845', 'no'),
(429, '_transient_wc_admin_report', 'a:1:{s:32:"663b5f47148be34e097db5c5db033e14";a:0:{}}', 'no'),
(431, '_transient_timeout_plugin_slugs', '1452379686', 'no'),
(432, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:25:"easy-table/easy-table.php";i:2;s:37:"fruitful-shortcodes/ff-shortcodes.php";i:3;s:9:"hello.php";i:4;s:27:"woocommerce/woocommerce.php";}', 'no'),
(433, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1452330684', 'no'),
(434, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><p><strong>Ошибка RSS</strong>: WP HTTP Error: Operation timed out after 10530 milliseconds with 28314 out of -1 bytes received</p></div><div class="rss-widget"><p><strong>Ошибка RSS</strong>: WP HTTP Error: Operation timed out after 10530 milliseconds with 32491 out of 201646 bytes received</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(456, '_transient_timeout_wc_uf_pid_2e6fcf643f5c59f2c488cfaff7e83853', '1454880046', 'no'),
(457, '_transient_wc_uf_pid_2e6fcf643f5c59f2c488cfaff7e83853', 'a:2:{i:0;i:24;i:1;i:22;}', 'no'),
(459, '_transient_timeout_wc_rating_count_241452288030', '1454880047', 'no'),
(460, '_transient_wc_rating_count_241452288030', 'a:0:{}', 'no'),
(461, '_transient_timeout_wc_average_rating_241452288030', '1454880047', 'no'),
(462, '_transient_wc_average_rating_241452288030', '0', 'no'),
(463, '_transient_timeout_wc_rating_count_221452288030', '1454880047', 'no'),
(464, '_transient_wc_rating_count_221452288030', 'a:0:{}', 'no'),
(465, '_transient_timeout_wc_average_rating_221452288030', '1454880047', 'no'),
(466, '_transient_wc_average_rating_221452288030', '0', 'no'),
(467, '_transient_timeout_wc_term_counts', '1454880047', 'no'),
(468, '_transient_wc_term_counts', 'a:6:{i:12;s:1:"1";i:11;s:1:"1";i:7;s:1:"2";i:8;s:1:"1";i:9;s:1:"1";i:10;s:1:"1";}', 'no'),
(470, '_transient_timeout_wc_uf_pid_93e81295d322116ce1809121d029f76d', '1454880108', 'no'),
(471, '_transient_wc_uf_pid_93e81295d322116ce1809121d029f76d', 'a:1:{i:0;i:24;}', 'no'),
(474, '_transient_timeout_wc_uf_pid_bce1ae6f3fe96fb3d9f2532557ea75cf', '1454880214', 'no'),
(475, '_transient_wc_uf_pid_bce1ae6f3fe96fb3d9f2532557ea75cf', 'a:1:{i:0;i:22;}', 'no'),
(477, '_transient_timeout_wc_products_onsale', '1454880306', 'no'),
(478, '_transient_wc_products_onsale', 'a:1:{i:0;i:22;}', 'no'),
(493, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.4.1.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.4.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.1";s:7:"version";s:5:"4.4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.1-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.4.1-partial-0.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.1";s:7:"version";s:5:"4.4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:3:"4.4";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.4.1.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.4.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.1";s:7:"version";s:5:"4.4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1452293261;s:15:"version_checked";s:3:"4.4";s:12:"translations";a:0:{}}', 'yes'),
(494, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1452293263;s:7:"checked";a:4:{s:8:"fruitful";s:3:"2.7";s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.0";}s:8:"response";a:1:{s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.1";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.1.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(505, 'product_cat_children', 'a:4:{i:12;a:3:{i:0;i:14;i:1;i:17;i:2;i:22;}i:13;a:2:{i:0;i:20;i:1;i:21;}i:15;a:1:{i:0;i:23;}i:24;a:2:{i:0;i:25;i:1;i:26;}}', 'yes'),
(509, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1452304033', 'yes'),
(510, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5648";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3547";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3487";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3001";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2728";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2211";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2165";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2000";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1951";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1938";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1932";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1880";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1784";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1580";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1510";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1493";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1419";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1294";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1260";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1245";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1136";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1065";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1034";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"982";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"942";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"901";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"879";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"877";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"868";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"864";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"849";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"807";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"765";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"740";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"735";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"733";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"726";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"721";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"719";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"714";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"704";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"697";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"681";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"672";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"651";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"650";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"645";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"639";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"632";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"624";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"604";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"597";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"590";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"585";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"584";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"576";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"571";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"570";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"568";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"558";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"545";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"538";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"527";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"519";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"518";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"508";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"504";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"501";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"497";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"497";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"473";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"471";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"466";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"456";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"455";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"453";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"430";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"427";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"420";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"419";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"414";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"414";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"411";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"403";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"403";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"398";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"398";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"396";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"395";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"390";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"386";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"386";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"380";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"379";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"378";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"378";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"374";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"373";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"371";}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";s:3:"370";}}', 'yes'),
(511, '_site_transient_timeout_theme_roots', '1452295059', 'yes'),
(512, '_site_transient_theme_roots', 'a:4:{s:8:"fruitful";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(514, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1452293281;s:7:"checked";a:5:{s:19:"akismet/akismet.php";s:5:"3.1.5";s:25:"easy-table/easy-table.php";s:5:"1.5.3";s:37:"fruitful-shortcodes/ff-shortcodes.php";s:5:"1.4.1";s:9:"hello.php";s:3:"1.6";s:27:"woocommerce/woocommerce.php";s:6:"2.4.12";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.7.zip";}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"woocommerce";s:8:"language";s:5:"ru_RU";s:7:"version";s:6:"2.4.12";s:7:"updated";s:19:"2015-12-07 13:19:24";s:7:"package";s:79:"https://downloads.wordpress.org/translation/plugin/woocommerce/2.4.12/ru_RU.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:4:{s:25:"easy-table/easy-table.php";O:8:"stdClass":6:{s:2:"id";s:5:"31650";s:4:"slug";s:10:"easy-table";s:6:"plugin";s:25:"easy-table/easy-table.php";s:11:"new_version";s:5:"1.5.3";s:3:"url";s:41:"https://wordpress.org/plugins/easy-table/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/easy-table.1.5.3.zip";}s:37:"fruitful-shortcodes/ff-shortcodes.php";O:8:"stdClass":6:{s:2:"id";s:5:"50801";s:4:"slug";s:19:"fruitful-shortcodes";s:6:"plugin";s:37:"fruitful-shortcodes/ff-shortcodes.php";s:11:"new_version";s:5:"1.4.1";s:3:"url";s:50:"https://wordpress.org/plugins/fruitful-shortcodes/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/fruitful-shortcodes.1.4.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:6:"2.4.12";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/woocommerce.2.4.12.zip";}}}', 'yes'),
(515, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(6, 10, '_menu_item_type', 'custom'),
(7, 10, '_menu_item_menu_item_parent', '0'),
(8, 10, '_menu_item_object_id', '10'),
(9, 10, '_menu_item_object', 'custom'),
(10, 10, '_menu_item_target', ''),
(11, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12, 10, '_menu_item_xfn', ''),
(13, 10, '_menu_item_url', 'http://closes/'),
(14, 10, '_menu_item_orphaned', '1452119180'),
(15, 11, '_menu_item_type', 'post_type'),
(16, 11, '_menu_item_menu_item_parent', '0'),
(17, 11, '_menu_item_object_id', '6'),
(18, 11, '_menu_item_object', 'page'),
(19, 11, '_menu_item_target', ''),
(20, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(21, 11, '_menu_item_xfn', ''),
(22, 11, '_menu_item_url', ''),
(23, 11, '_menu_item_orphaned', '1452119180'),
(24, 12, '_menu_item_type', 'post_type'),
(25, 12, '_menu_item_menu_item_parent', '0'),
(26, 12, '_menu_item_object_id', '5'),
(27, 12, '_menu_item_object', 'page'),
(28, 12, '_menu_item_target', ''),
(29, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(30, 12, '_menu_item_xfn', ''),
(31, 12, '_menu_item_url', ''),
(32, 12, '_menu_item_orphaned', '1452119180'),
(33, 13, '_menu_item_type', 'post_type'),
(34, 13, '_menu_item_menu_item_parent', '0'),
(35, 13, '_menu_item_object_id', '8'),
(36, 13, '_menu_item_object', 'page'),
(37, 13, '_menu_item_target', ''),
(38, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 13, '_menu_item_xfn', ''),
(40, 13, '_menu_item_url', ''),
(41, 13, '_menu_item_orphaned', '1452119181'),
(42, 14, '_menu_item_type', 'post_type'),
(43, 14, '_menu_item_menu_item_parent', '0'),
(44, 14, '_menu_item_object_id', '7'),
(45, 14, '_menu_item_object', 'page'),
(46, 14, '_menu_item_target', ''),
(47, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 14, '_menu_item_xfn', ''),
(49, 14, '_menu_item_url', ''),
(50, 14, '_menu_item_orphaned', '1452119181'),
(51, 15, '_menu_item_type', 'post_type'),
(52, 15, '_menu_item_menu_item_parent', '0'),
(53, 15, '_menu_item_object_id', '2'),
(54, 15, '_menu_item_object', 'page'),
(55, 15, '_menu_item_target', ''),
(56, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 15, '_menu_item_xfn', ''),
(58, 15, '_menu_item_url', ''),
(59, 15, '_menu_item_orphaned', '1452119181'),
(60, 16, '_menu_item_type', 'custom'),
(61, 16, '_menu_item_menu_item_parent', '0'),
(62, 16, '_menu_item_object_id', '16'),
(63, 16, '_menu_item_object', 'custom'),
(64, 16, '_menu_item_target', ''),
(65, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 16, '_menu_item_xfn', ''),
(67, 16, '_menu_item_url', 'http://closes/'),
(114, 22, '_edit_last', '1'),
(115, 22, '_edit_lock', '1452287911:1'),
(116, 23, '_wp_attached_file', '2016/01/image67146328.jpg'),
(117, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:486;s:6:"height";i:321;s:4:"file";s:25:"2016/01/image67146328.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"image67146328-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"image67146328-300x198.jpg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"image67146328-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"image67146328-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"image67146328-486x270.jpg";s:5:"width";i:486;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:25:"image67146328-486x300.jpg";s:5:"width";i:486;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(118, 22, '_thumbnail_id', '23'),
(119, 22, '_visibility', 'visible'),
(120, 22, '_stock_status', 'instock'),
(121, 22, 'total_sales', '0'),
(122, 22, '_downloadable', 'no'),
(123, 22, '_virtual', 'no'),
(124, 22, '_regular_price', '100'),
(125, 22, '_sale_price', '60'),
(126, 22, '_purchase_note', ''),
(127, 22, '_featured', 'no'),
(128, 22, '_weight', ''),
(129, 22, '_length', ''),
(130, 22, '_width', ''),
(131, 22, '_height', ''),
(132, 22, '_sku', 'S001'),
(133, 22, '_product_attributes', 'a:0:{}'),
(134, 22, '_sale_price_dates_from', ''),
(135, 22, '_sale_price_dates_to', ''),
(136, 22, '_price', '60'),
(137, 22, '_sold_individually', ''),
(138, 22, '_manage_stock', 'no'),
(139, 22, '_backorders', 'no'),
(140, 22, '_stock', ''),
(141, 22, '_upsell_ids', 'a:0:{}'),
(142, 22, '_crosssell_ids', 'a:0:{}'),
(143, 22, '_product_version', '2.4.12'),
(144, 22, '_product_image_gallery', ''),
(145, 24, '_edit_last', '1'),
(146, 24, '_edit_lock', '1452287859:1'),
(147, 25, '_wp_attached_file', '2016/01/princess_bubblegum_by_wingeddragonlover-d5myuz1.jpg'),
(148, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:719;s:6:"height";i:1112;s:4:"file";s:59:"2016/01/princess_bubblegum_by_wingeddragonlover-d5myuz1.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"princess_bubblegum_by_wingeddragonlover-d5myuz1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"princess_bubblegum_by_wingeddragonlover-d5myuz1-194x300.jpg";s:5:"width";i:194;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:60:"princess_bubblegum_by_wingeddragonlover-d5myuz1-662x1024.jpg";s:5:"width";i:662;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"princess_bubblegum_by_wingeddragonlover-d5myuz1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"princess_bubblegum_by_wingeddragonlover-d5myuz1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:59:"princess_bubblegum_by_wingeddragonlover-d5myuz1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:59:"princess_bubblegum_by_wingeddragonlover-d5myuz1-604x270.jpg";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:59:"princess_bubblegum_by_wingeddragonlover-d5myuz1-608x300.jpg";s:5:"width";i:608;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"main-slider";a:4:{s:4:"file";s:59:"princess_bubblegum_by_wingeddragonlover-d5myuz1-719x900.jpg";s:5:"width";i:719;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(149, 24, '_thumbnail_id', '25'),
(150, 24, '_visibility', 'visible'),
(151, 24, '_stock_status', 'instock'),
(152, 24, 'total_sales', '0'),
(153, 24, '_downloadable', 'no'),
(154, 24, '_virtual', 'no'),
(155, 24, '_regular_price', '69'),
(156, 24, '_sale_price', ''),
(157, 24, '_purchase_note', ''),
(158, 24, '_featured', 'no'),
(159, 24, '_weight', ''),
(160, 24, '_length', ''),
(161, 24, '_width', ''),
(162, 24, '_height', ''),
(163, 24, '_sku', 'S002'),
(164, 24, '_product_attributes', 'a:0:{}'),
(165, 24, '_sale_price_dates_from', ''),
(166, 24, '_sale_price_dates_to', ''),
(167, 24, '_price', '69'),
(168, 24, '_sold_individually', ''),
(169, 24, '_manage_stock', 'no'),
(170, 24, '_backorders', 'no'),
(171, 24, '_stock', ''),
(172, 24, '_upsell_ids', 'a:0:{}'),
(173, 24, '_crosssell_ids', 'a:0:{}'),
(174, 24, '_product_version', '2.4.12'),
(175, 24, '_product_image_gallery', ''),
(176, 2, '_edit_lock', '1452124906:1'),
(177, 2, '_edit_last', '1'),
(178, 2, '_fruitful_page_layout', '1'),
(179, 2, '_fruitful_slider_layout', '1'),
(182, 31, '_wp_attached_file', '2016/01/S1e3_ice_king_slapping_buns.png'),
(183, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:511;s:6:"height";i:317;s:4:"file";s:39:"2016/01/S1e3_ice_king_slapping_buns.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"S1e3_ice_king_slapping_buns-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:39:"S1e3_ice_king_slapping_buns-300x186.png";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"S1e3_ice_king_slapping_buns-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"S1e3_ice_king_slapping_buns-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:39:"S1e3_ice_king_slapping_buns-511x270.png";s:5:"width";i:511;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:12:"slider-thumb";a:4:{s:4:"file";s:39:"S1e3_ice_king_slapping_buns-511x300.png";s:5:"width";i:511;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(184, 32, '_wp_attached_file', '2016/01/Ice_Kings_Drum_Set.png'),
(185, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:358;s:4:"file";s:30:"2016/01/Ice_Kings_Drum_Set.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"Ice_Kings_Drum_Set-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"Ice_Kings_Drum_Set-300x168.png";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"Ice_Kings_Drum_Set-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"Ice_Kings_Drum_Set-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:30:"Ice_Kings_Drum_Set-600x358.png";s:5:"width";i:600;s:6:"height";i:358;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"Ice_Kings_Drum_Set-604x270.png";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:12:"slider-thumb";a:4:{s:4:"file";s:30:"Ice_Kings_Drum_Set-608x300.png";s:5:"width";i:608;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(186, 33, '_wp_attached_file', '2016/01/S1e17_Demoniceyeandghostpouch.png'),
(187, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:360;s:4:"file";s:41:"2016/01/S1e17_Demoniceyeandghostpouch.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"S1e17_Demoniceyeandghostpouch-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:41:"S1e17_Demoniceyeandghostpouch-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:41:"S1e17_Demoniceyeandghostpouch-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:41:"S1e17_Demoniceyeandghostpouch-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:41:"S1e17_Demoniceyeandghostpouch-600x360.png";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:41:"S1e17_Demoniceyeandghostpouch-604x270.png";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:12:"slider-thumb";a:4:{s:4:"file";s:41:"S1e17_Demoniceyeandghostpouch-608x300.png";s:5:"width";i:608;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(188, 35, '_edit_last', '1'),
(189, 35, '_fruitful_page_layout', '1'),
(190, 35, '_edit_lock', '1452125473:1'),
(191, 37, '_menu_item_type', 'post_type'),
(192, 37, '_menu_item_menu_item_parent', '0'),
(193, 37, '_menu_item_object_id', '35'),
(194, 37, '_menu_item_object', 'page'),
(195, 37, '_menu_item_target', ''),
(196, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(197, 37, '_menu_item_xfn', ''),
(198, 37, '_menu_item_url', ''),
(200, 38, '_wp_attached_file', '2016/01/got-game-of-thrones-28293441-1680-1050.png'),
(201, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1680;s:6:"height";i:1050;s:4:"file";s:50:"2016/01/got-game-of-thrones-28293441-1680-1050.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"got-game-of-thrones-28293441-1680-1050-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:50:"got-game-of-thrones-28293441-1680-1050-300x188.png";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:50:"got-game-of-thrones-28293441-1680-1050-768x480.png";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:51:"got-game-of-thrones-28293441-1680-1050-1024x640.png";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:50:"got-game-of-thrones-28293441-1680-1050-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:50:"got-game-of-thrones-28293441-1680-1050-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:50:"got-game-of-thrones-28293441-1680-1050-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:50:"got-game-of-thrones-28293441-1680-1050-604x270.png";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:12:"slider-thumb";a:4:{s:4:"file";s:50:"got-game-of-thrones-28293441-1680-1050-608x300.png";s:5:"width";i:608;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"main-slider";a:4:{s:4:"file";s:51:"got-game-of-thrones-28293441-1680-1050-1680x900.png";s:5:"width";i:1680;s:6:"height";i:900;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(202, 39, '_wp_attached_file', '2016/01/wallpaper-baratheon-sigil-1600.jpg'),
(203, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:42:"2016/01/wallpaper-baratheon-sigil-1600.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"wallpaper-baratheon-sigil-1600-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"wallpaper-baratheon-sigil-1600-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"wallpaper-baratheon-sigil-1600-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:43:"wallpaper-baratheon-sigil-1600-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"wallpaper-baratheon-sigil-1600-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"wallpaper-baratheon-sigil-1600-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:42:"wallpaper-baratheon-sigil-1600-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:42:"wallpaper-baratheon-sigil-1600-604x270.jpg";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:42:"wallpaper-baratheon-sigil-1600-608x300.jpg";s:5:"width";i:608;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"main-slider";a:4:{s:4:"file";s:43:"wallpaper-baratheon-sigil-1600-1600x900.jpg";s:5:"width";i:1600;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(204, 40, '_wp_attached_file', '2016/01/House-Targaryen-game-of-thrones-20596041-1600-1200_1.jpg'),
(205, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:64:"2016/01/House-Targaryen-game-of-thrones-20596041-1600-1200_1.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:64:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:64:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:64:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:65:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:64:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:64:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:64:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:64:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-604x270.jpg";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:64:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-608x300.jpg";s:5:"width";i:608;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"main-slider";a:4:{s:4:"file";s:65:"House-Targaryen-game-of-thrones-20596041-1600-1200_1-1600x900.jpg";s:5:"width";i:1600;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(206, 41, '_wp_attached_file', '2016/01/wallpaper-lannister-1600.jpg'),
(207, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:36:"2016/01/wallpaper-lannister-1600.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"wallpaper-lannister-1600-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"wallpaper-lannister-1600-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"wallpaper-lannister-1600-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"wallpaper-lannister-1600-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"wallpaper-lannister-1600-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"wallpaper-lannister-1600-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:36:"wallpaper-lannister-1600-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:36:"wallpaper-lannister-1600-604x270.jpg";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:36:"wallpaper-lannister-1600-608x300.jpg";s:5:"width";i:608;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"main-slider";a:4:{s:4:"file";s:37:"wallpaper-lannister-1600-1600x900.jpg";s:5:"width";i:1600;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(208, 42, '_wp_attached_file', '2016/01/game-of-thrones-martell-wallpaper.jpg'),
(209, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:45:"2016/01/game-of-thrones-martell-wallpaper.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"game-of-thrones-martell-wallpaper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"game-of-thrones-martell-wallpaper-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"game-of-thrones-martell-wallpaper-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"game-of-thrones-martell-wallpaper-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"game-of-thrones-martell-wallpaper-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"game-of-thrones-martell-wallpaper-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:45:"game-of-thrones-martell-wallpaper-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:45:"game-of-thrones-martell-wallpaper-604x270.jpg";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:45:"game-of-thrones-martell-wallpaper-608x300.jpg";s:5:"width";i:608;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"main-slider";a:4:{s:4:"file";s:46:"game-of-thrones-martell-wallpaper-1600x900.jpg";s:5:"width";i:1600;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;s:8:"keywords";a:0:{}}}'),
(210, 43, '_wp_attached_file', '2016/01/cropped-image67146328.jpg'),
(211, 43, '_wp_attachment_context', 'site-icon'),
(212, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:33:"2016/01/cropped-image67146328.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"cropped-image67146328-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"cropped-image67146328-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"cropped-image67146328-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"cropped-image67146328-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"cropped-image67146328-512x270.jpg";s:5:"width";i:512;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:33:"cropped-image67146328-512x300.jpg";s:5:"width";i:512;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:33:"cropped-image67146328-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:33:"cropped-image67146328-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:33:"cropped-image67146328-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:31:"cropped-image67146328-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(213, 44, '_menu_item_type', 'custom'),
(214, 44, '_menu_item_menu_item_parent', '0'),
(215, 44, '_menu_item_object_id', '44'),
(216, 44, '_menu_item_object', 'custom'),
(217, 44, '_menu_item_target', ''),
(218, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(219, 44, '_menu_item_xfn', ''),
(220, 44, '_menu_item_url', 'http://closes/product-category/women/'),
(222, 45, '_menu_item_type', 'custom'),
(223, 45, '_menu_item_menu_item_parent', '0'),
(224, 45, '_menu_item_object_id', '45'),
(225, 45, '_menu_item_object', 'custom'),
(226, 45, '_menu_item_target', ''),
(227, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(228, 45, '_menu_item_xfn', ''),
(229, 45, '_menu_item_url', 'http://closes/product-category/men/'),
(231, 46, '_edit_last', '1'),
(232, 46, '_edit_lock', '1452293449:1'),
(233, 46, '_fruitful_page_layout', '1'),
(234, 48, '_menu_item_type', 'post_type'),
(235, 48, '_menu_item_menu_item_parent', '0'),
(236, 48, '_menu_item_object_id', '46'),
(237, 48, '_menu_item_object', 'page'),
(238, 48, '_menu_item_target', ''),
(239, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(240, 48, '_menu_item_xfn', ''),
(241, 48, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-01-07 00:46:02', '2016-01-06 21:46:02', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2016-01-07 00:46:02', '2016-01-06 21:46:02', '', 0, 'http://closes/?p=1', 0, 'post', '', 1),
(2, 1, '2016-01-07 00:46:02', '2016-01-06 21:46:02', '<p style="text-align: center;"><strong>Новые товары</strong></p>\r\n[recent_products per_page="12" columns="4"]\r\n\r\n&nbsp;', 'Главная', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-01-07 03:03:00', '2016-01-07 00:03:00', '', 0, 'http://closes/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-01-07 00:46:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-01-07 00:46:38', '0000-00-00 00:00:00', '', 0, 'http://closes/?p=3', 0, 'post', '', 0),
(5, 1, '2016-01-07 01:08:45', '2016-01-06 22:08:45', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-01-07 01:08:45', '2016-01-06 22:08:45', '', 0, 'http://closes/shop/', 0, 'page', '', 0),
(6, 1, '2016-01-07 01:08:45', '2016-01-06 22:08:45', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-01-07 01:08:45', '2016-01-06 22:08:45', '', 0, 'http://closes/cart/', 0, 'page', '', 0),
(7, 1, '2016-01-07 01:08:45', '2016-01-06 22:08:45', '[woocommerce_checkout]', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-01-07 01:08:45', '2016-01-06 22:08:45', '', 0, 'http://closes/checkout/', 0, 'page', '', 0),
(8, 1, '2016-01-07 01:08:45', '2016-01-06 22:08:45', '[woocommerce_my_account]', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-01-07 01:08:45', '2016-01-06 22:08:45', '', 0, 'http://closes/my-account/', 0, 'page', '', 0),
(10, 1, '2016-01-07 01:26:20', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-01-07 01:26:20', '0000-00-00 00:00:00', '', 0, 'http://closes/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2016-01-07 01:26:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-01-07 01:26:20', '0000-00-00 00:00:00', '', 0, 'http://closes/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2016-01-07 01:26:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-01-07 01:26:20', '0000-00-00 00:00:00', '', 0, 'http://closes/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2016-01-07 01:26:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-01-07 01:26:20', '0000-00-00 00:00:00', '', 0, 'http://closes/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2016-01-07 01:26:21', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-01-07 01:26:21', '0000-00-00 00:00:00', '', 0, 'http://closes/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2016-01-07 01:26:21', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-01-07 01:26:21', '0000-00-00 00:00:00', '', 0, 'http://closes/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2016-01-07 01:28:35', '2016-01-06 22:28:35', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2016-01-09 01:42:33', '2016-01-08 22:42:33', '', 0, 'http://closes/?p=16', 1, 'nav_menu_item', '', 0),
(22, 1, '2016-01-07 01:43:59', '2016-01-06 22:43:59', '', 'Шуба Кендрика Ламара', 'Сваг', 'publish', 'open', 'closed', '', '%d1%88%d1%83%d0%b1%d0%b0-%d0%ba%d0%b5%d0%bd%d0%b4%d1%80%d0%b8%d0%ba%d0%b0-%d0%bb%d0%b0%d0%bc%d0%b0%d1%80%d0%b0', '', '', '2016-01-09 00:20:30', '2016-01-08 21:20:30', '', 0, 'http://closes/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2016-01-07 01:41:26', '2016-01-06 22:41:26', '', 'image67146328', '', 'inherit', 'open', 'closed', '', 'image67146328', '', '', '2016-01-07 01:41:26', '2016-01-06 22:41:26', '', 22, 'http://closes/wp-content/uploads/2016/01/image67146328.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2016-01-07 02:18:37', '2016-01-06 23:18:37', '', 'Новое платье короля', 'bubblegum', 'publish', 'open', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%be%d0%b5-%d0%bf%d0%bb%d0%b0%d1%82%d1%8c%d0%b5-%d0%ba%d0%be%d1%80%d0%be%d0%bb%d1%8f', '', '', '2016-01-09 00:19:41', '2016-01-08 21:19:41', '', 0, 'http://closes/?post_type=product&#038;p=24', 0, 'product', '', 0),
(25, 1, '2016-01-07 02:18:05', '2016-01-06 23:18:05', '', 'princess_bubblegum_by_wingeddragonlover-d5myuz1', '', 'inherit', 'open', 'closed', '', 'princess_bubblegum_by_wingeddragonlover-d5myuz1', '', '', '2016-01-07 02:18:05', '2016-01-06 23:18:05', '', 24, 'http://closes/wp-content/uploads/2016/01/princess_bubblegum_by_wingeddragonlover-d5myuz1.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-01-07 02:23:40', '2016-01-06 23:23:40', 'Open up you mind and <em>ku ku ku</em>, baby', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-07 02:23:40', '2016-01-06 23:23:40', '', 2, 'http://closes/2016/01/07/2-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-01-07 02:35:36', '2016-01-06 23:35:36', '', 'Новое платье короля', '<p>bubblegum</p>', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2016-01-07 02:35:36', '2016-01-06 23:35:36', '', 24, 'http://closes/2016/01/07/24-autosave-v1/', 0, 'revision', '', 0),
(29, 1, '2016-01-07 02:58:35', '2016-01-06 23:58:35', 'Open up you mind and <em>ku ku ku</em>, baby\r\n\r\n[recent_products per_page="12" columns="4"]\r\n\r\n&nbsp;', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2016-01-07 02:58:35', '2016-01-06 23:58:35', '', 2, 'http://closes/2016/01/07/2-autosave-v1/', 0, 'revision', '', 0),
(30, 1, '2016-01-07 02:58:47', '2016-01-06 23:58:47', 'Open up you mind and <em>ku ku ku</em>, baby\r\n\r\n[recent_products per_page="12" columns="4"]\r\n\r\n&nbsp;', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-07 02:58:47', '2016-01-06 23:58:47', '', 2, 'http://closes/2016/01/07/2-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-01-07 03:01:18', '2016-01-07 00:01:18', '', 'S1e3_ice_king_slapping_buns', '', 'inherit', 'open', 'closed', '', 's1e3_ice_king_slapping_buns', '', '', '2016-01-07 03:01:18', '2016-01-07 00:01:18', '', 0, 'http://closes/wp-content/uploads/2016/01/S1e3_ice_king_slapping_buns.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2016-01-07 03:01:22', '2016-01-07 00:01:22', '', 'Ice_King''s_Drum_Set', '', 'inherit', 'open', 'closed', '', 'ice_kings_drum_set', '', '', '2016-01-07 03:01:22', '2016-01-07 00:01:22', '', 0, 'http://closes/wp-content/uploads/2016/01/Ice_Kings_Drum_Set.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2016-01-07 03:01:26', '2016-01-07 00:01:26', '', 'S1e17_Demoniceyeandghostpouch', '', 'inherit', 'open', 'closed', '', 's1e17_demoniceyeandghostpouch', '', '', '2016-01-07 03:01:26', '2016-01-07 00:01:26', '', 0, 'http://closes/wp-content/uploads/2016/01/S1e17_Demoniceyeandghostpouch.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2016-01-07 03:03:00', '2016-01-07 00:03:00', '<p style="text-align: center;"><strong>Новые товары</strong></p>\r\n[recent_products per_page="12" columns="4"]\r\n\r\n&nbsp;', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-07 03:03:00', '2016-01-07 00:03:00', '', 2, 'http://closes/2016/01/07/2-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-01-07 03:13:25', '2016-01-07 00:13:25', '[sale_products per_page="12"]', 'Акции', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%ba%d1%86%d0%b8%d0%b8', '', '', '2016-01-07 03:13:25', '2016-01-07 00:13:25', '', 0, 'http://closes/?page_id=35', 0, 'page', '', 0),
(36, 1, '2016-01-07 03:13:25', '2016-01-07 00:13:25', '[sale_products per_page="12"]', 'Акции', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-07 03:13:25', '2016-01-07 00:13:25', '', 35, 'http://closes/2016/01/07/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-01-07 03:13:57', '2016-01-07 00:13:57', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2016-01-09 01:42:33', '2016-01-08 22:42:33', '', 0, 'http://closes/?p=37', 4, 'nav_menu_item', '', 0),
(38, 1, '2016-01-07 03:18:12', '2016-01-07 00:18:12', '', 'got-game-of-thrones-28293441-1680-1050', '', 'inherit', 'open', 'closed', '', 'got-game-of-thrones-28293441-1680-1050', '', '', '2016-01-07 03:18:12', '2016-01-07 00:18:12', '', 0, 'http://closes/wp-content/uploads/2016/01/got-game-of-thrones-28293441-1680-1050.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2016-01-07 03:18:33', '2016-01-07 00:18:33', '', 'wallpaper-baratheon-sigil-1600', '', 'inherit', 'open', 'closed', '', 'wallpaper-baratheon-sigil-1600', '', '', '2016-01-07 03:18:33', '2016-01-07 00:18:33', '', 0, 'http://closes/wp-content/uploads/2016/01/wallpaper-baratheon-sigil-1600.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2016-01-07 03:19:06', '2016-01-07 00:19:06', '', 'House-Targaryen-game-of-thrones-20596041-1600-1200_(1)', '', 'inherit', 'open', 'closed', '', 'house-targaryen-game-of-thrones-20596041-1600-1200_1', '', '', '2016-01-07 03:19:06', '2016-01-07 00:19:06', '', 0, 'http://closes/wp-content/uploads/2016/01/House-Targaryen-game-of-thrones-20596041-1600-1200_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2016-01-07 03:19:48', '2016-01-07 00:19:48', '', 'wallpaper-lannister-1600', '', 'inherit', 'open', 'closed', '', 'wallpaper-lannister-1600', '', '', '2016-01-07 03:19:48', '2016-01-07 00:19:48', '', 0, 'http://closes/wp-content/uploads/2016/01/wallpaper-lannister-1600.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-01-07 03:20:15', '2016-01-07 00:20:15', '', 'game-of-thrones-martell-wallpaper', '', 'inherit', 'open', 'closed', '', 'game-of-thrones-martell-wallpaper', '', '', '2016-01-07 03:20:15', '2016-01-07 00:20:15', '', 0, 'http://closes/wp-content/uploads/2016/01/game-of-thrones-martell-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2016-01-09 00:13:19', '2016-01-08 21:13:19', 'http://closes/wp-content/uploads/2016/01/cropped-image67146328.jpg', 'cropped-image67146328.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-image67146328-jpg', '', '', '2016-01-09 00:13:19', '2016-01-08 21:13:19', '', 0, 'http://closes/wp-content/uploads/2016/01/cropped-image67146328.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2016-01-09 00:23:02', '2016-01-08 21:23:02', '', 'Женская одежда', '', 'publish', 'closed', 'closed', '', '%d0%b6%d0%b5%d0%bd%d1%81%d0%ba%d0%b0%d1%8f-%d0%be%d0%b4%d0%b5%d0%b6%d0%b4%d0%b0', '', '', '2016-01-09 01:42:33', '2016-01-08 22:42:33', '', 0, 'http://closes/?p=44', 3, 'nav_menu_item', '', 0),
(45, 1, '2016-01-09 00:23:02', '2016-01-08 21:23:02', '', 'Мужская одежда', '', 'publish', 'closed', 'closed', '', '%d0%bc%d1%83%d0%b6%d1%81%d0%ba%d0%b0%d1%8f-%d0%be%d0%b4%d0%b5%d0%b6%d0%b4%d0%b0', '', '', '2016-01-09 01:42:33', '2016-01-08 22:42:33', '', 0, 'http://closes/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2016-01-09 01:41:50', '2016-01-08 22:41:50', '[table]\r\nОбхват груди (см), 	78-82, 	82-86, 	86-90, 	90-94, 	94-98, 	98-102, 	102-106, 	106-110, 	110-114, 	114-118\r\nОбхват талии (см), 	58-62, 	62-66, 	66-70, 	70-74, 	74-78, 	78-82, 	82-86, 	86-90, 	90-94, 	94-98\r\nУкраинский размер (UKR), 	40, 	42, 	44, 	46, 	48, 	50, 	52, 	54, 	56, 	58\r\nЕвропа / Германия (EUR / GER), 	32, 	34, 	36, 	38, 	40, 	42, 	44, 	46, 	48, 	50\r\nФранция (FR), 	34, 	36, 	38, 	40, 	42, 	44, 	46, 	48, 	50, 	52\r\nИталия (IT), 	36, 	38, 	40, 	42, 	44, 	46, 	48, 	50, 	52, 	54\r\nСША (USA), 	0, 	2, 	4, 	6, 	8, 	10, 	12, 	14, 	16, 	18\r\nВеликобритания (UK), 	4, 	6, 	8, 	10, 	12, 	14, 	16, 	18, 	20, 	22\r\nМеждународный (INT), 	XXS/XS, 	XS/S, 	S, 	M, 	L, 	L/XL, 	XL, 	XXL, 	XXL, 	XXXL\r\nЕвропа (EUR2), 	 , 	0, 	1, 	2, 	3, 	 , 	 , 	 , 	 , 	 \r\nМеждународный (BM), 	T1, 	T1, 	T2, 	T2, 	T3, 	T3, 	T3\r\n[/table]\r\n\r\n&nbsp;\r\n\r\n<aside>\r\n<h3>Как выбрать одежду своего размера?</h3>\r\nВам понадобится провести измерения с помощью сантиметровой ленты. Для определения подходящего размера необходимо соотнести полученные измерения с размерами в таблице.\r\n\r\nПри измерении обхвата груди лента должна плотно прилегать к телу, спереди проходить по наиболее выступающим точкам, сбоку через подмышечные впадины, сзади обхватывая лопатки.\r\n\r\nОбхват талии измеряется строго горизонтально по самой узкой части тела, проходя через самую выступающую точку живота.\r\n\r\nПри измерении обхвата бедер лента должна находиться горизонтально, проходя посредине бедра и сзади по наиболее выступающим точкам ягодиц.\r\n\r\n</aside>', 'Размеры', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%bc%d0%b5%d1%80%d1%8b', '', '', '2016-01-09 01:50:46', '2016-01-08 22:50:46', '', 0, 'http://closes/?page_id=46', 0, 'page', '', 0),
(47, 1, '2016-01-09 01:41:50', '2016-01-08 22:41:50', 'мч', 'Размеры', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2016-01-09 01:41:50', '2016-01-08 22:41:50', '', 46, 'http://closes/2016/01/09/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-01-09 01:42:34', '2016-01-08 22:42:34', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2016-01-09 01:42:34', '2016-01-08 22:42:34', '', 0, 'http://closes/?p=48', 5, 'nav_menu_item', '', 0),
(49, 1, '2016-01-09 01:50:19', '2016-01-08 22:50:19', '[table]\n[/table]\n\n&nbsp;\n\n<aside>\n<h3>Как выбрать одежду своего размера?</h3>\nВам понадобится провести измерения с помощью сантиметровой ленты. Для определения подходящего размера необходимо соотнести полученные измерения с размерами в таблице.\n\nПри измерении обхвата груди лента должна плотно прилегать к телу, спереди проходить по наиболее выступающим точкам, сбоку через подмышечные впадины, сзади обхватывая лопатки.\n\nОбхват талии измеряется строго горизонтально по самой узкой части тела, проходя через самую выступающую точку живота.\n\nПри измерении обхвата бедер лента должна находиться горизонтально, проходя посредине бедра и сзади по наиболее выступающим точкам ягодиц.\n\n</aside>', 'Размеры', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2016-01-09 01:50:19', '2016-01-08 22:50:19', '', 46, 'http://closes/2016/01/09/46-autosave-v1/', 0, 'revision', '', 0),
(50, 1, '2016-01-09 01:46:43', '2016-01-08 22:46:43', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n<aside>\r\n<h3>Как выбрать одежду своего размера?</h3>\r\nВам понадобится провести измерения с помощью сантиметровой ленты. Для определения подходящего размера необходимо соотнести полученные измерения с размерами в таблице.\r\n\r\nПри измерении обхвата груди лента должна плотно прилегать к телу, спереди проходить по наиболее выступающим точкам, сбоку через подмышечные впадины, сзади обхватывая лопатки.\r\n\r\nОбхват талии измеряется строго горизонтально по самой узкой части тела, проходя через самую выступающую точку живота.\r\n\r\nПри измерении обхвата бедер лента должна находиться горизонтально, проходя посредине бедра и сзади по наиболее выступающим точкам ягодиц.\r\n\r\n</aside>', 'Размеры', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2016-01-09 01:46:43', '2016-01-08 22:46:43', '', 46, 'http://closes/2016/01/09/46-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-01-09 01:50:46', '2016-01-08 22:50:46', '[table]\r\nОбхват груди (см), 	78-82, 	82-86, 	86-90, 	90-94, 	94-98, 	98-102, 	102-106, 	106-110, 	110-114, 	114-118\r\nОбхват талии (см), 	58-62, 	62-66, 	66-70, 	70-74, 	74-78, 	78-82, 	82-86, 	86-90, 	90-94, 	94-98\r\nУкраинский размер (UKR), 	40, 	42, 	44, 	46, 	48, 	50, 	52, 	54, 	56, 	58\r\nЕвропа / Германия (EUR / GER), 	32, 	34, 	36, 	38, 	40, 	42, 	44, 	46, 	48, 	50\r\nФранция (FR), 	34, 	36, 	38, 	40, 	42, 	44, 	46, 	48, 	50, 	52\r\nИталия (IT), 	36, 	38, 	40, 	42, 	44, 	46, 	48, 	50, 	52, 	54\r\nСША (USA), 	0, 	2, 	4, 	6, 	8, 	10, 	12, 	14, 	16, 	18\r\nВеликобритания (UK), 	4, 	6, 	8, 	10, 	12, 	14, 	16, 	18, 	20, 	22\r\nМеждународный (INT), 	XXS/XS, 	XS/S, 	S, 	M, 	L, 	L/XL, 	XL, 	XXL, 	XXL, 	XXXL\r\nЕвропа (EUR2), 	 , 	0, 	1, 	2, 	3, 	 , 	 , 	 , 	 , 	 \r\nМеждународный (BM), 	T1, 	T1, 	T2, 	T2, 	T3, 	T3, 	T3\r\n[/table]\r\n\r\n&nbsp;\r\n\r\n<aside>\r\n<h3>Как выбрать одежду своего размера?</h3>\r\nВам понадобится провести измерения с помощью сантиметровой ленты. Для определения подходящего размера необходимо соотнести полученные измерения с размерами в таблице.\r\n\r\nПри измерении обхвата груди лента должна плотно прилегать к телу, спереди проходить по наиболее выступающим точкам, сбоку через подмышечные впадины, сзади обхватывая лопатки.\r\n\r\nОбхват талии измеряется строго горизонтально по самой узкой части тела, проходя через самую выступающую точку живота.\r\n\r\nПри измерении обхвата бедер лента должна находиться горизонтально, проходя посредине бедра и сзади по наиболее выступающим точкам ягодиц.\r\n\r\n</aside>', 'Размеры', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2016-01-09 01:50:46', '2016-01-08 22:50:46', '', 46, 'http://closes/2016/01/09/46-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'Меню 1', '%d0%bc%d0%b5%d0%bd%d1%8e-1', 0),
(7, 'swag', 'swag', 0),
(8, 'rap', 'rap', 0),
(9, 'hustle', 'hustle', 0),
(10, 'cool', 'cool', 0),
(11, 'Мужская одежда', 'men', 0),
(12, 'Женская одежда', 'women', 0),
(13, 'Верхняя одежда', 'outerwear', 0),
(14, 'Платья', 'dresses', 0),
(15, 'Футболки', 't-shirts', 0),
(16, 'Рубашки', 'shirts', 0),
(17, 'Юбки', 'skirts', 0),
(18, 'Джинсы', 'jeans', 0),
(19, 'Толстовки', 'hoody', 0),
(20, 'Пальто', 'coat', 0),
(21, 'Куртки', 'jacket', 0),
(22, 'Блузы', 'blouse', 0),
(23, 'Поло', 'polo', 0),
(24, 'Свитеры', 'sweater', 0),
(25, 'Кардиганы', 'cardigan', 0),
(26, 'Джемперы', 'jumper', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 6, 0),
(22, 2, 0),
(22, 7, 0),
(22, 8, 0),
(22, 9, 0),
(22, 10, 0),
(22, 11, 0),
(24, 2, 0),
(24, 7, 0),
(24, 12, 0),
(37, 6, 0),
(44, 6, 0),
(45, 6, 0),
(48, 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 5),
(7, 7, 'product_tag', '', 0, 2),
(8, 8, 'product_tag', '', 0, 1),
(9, 9, 'product_tag', '', 0, 1),
(10, 10, 'product_tag', '', 0, 1),
(11, 11, 'product_cat', '', 0, 1),
(12, 12, 'product_cat', '', 0, 1),
(13, 13, 'product_cat', '', 0, 0),
(14, 14, 'product_cat', '', 12, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 12, 0),
(18, 18, 'product_cat', '', 0, 0),
(19, 19, 'product_cat', '', 0, 0),
(20, 20, 'product_cat', '', 13, 0),
(21, 21, 'product_cat', '', 13, 0),
(22, 22, 'product_cat', '', 12, 0),
(23, 23, 'product_cat', '', 15, 0),
(24, 24, 'product_cat', '', 0, 0),
(25, 25, 'product_cat', '', 24, 0),
(26, 26, 'product_cat', '', 24, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `wp_usermeta`
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
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wporg_favorites', ''),
(17, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"b6d767d2f8ed5d21a44b0e5886680cb9";a:9:{s:10:"product_id";i:22;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:60;s:8:"line_tax";i:0;s:13:"line_subtotal";i:60;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:21:"add-post-type-product";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:15:"add-product_cat";i:5;s:15:"add-product_tag";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1452293444'),
(22, 1, 'nav_menu_recently_edited', '6'),
(23, 1, 'session_tokens', 'a:1:{s:64:"3e07e320cc443e2a8e17fcf9d98c13aff9ad995e6fc8deb6000d59f0c8f0c6eb";a:4:{s:10:"expiration";i:1452460231;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0";s:5:"login";i:1452287431;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BWqqaOvX3O.iOxvGOzQyBnJkkZ7ulr/', 'admin', 'admin@host.com', '', '2016-01-06 21:46:01', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`,`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`),
  KEY `tax_rate_class` (`tax_rate_class`),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Дамп данных таблицы `wp_woocommerce_termmeta`
--

INSERT INTO `wp_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 7, 'product_count_product_tag', '2'),
(2, 8, 'product_count_product_tag', '1'),
(3, 9, 'product_count_product_tag', '1'),
(4, 10, 'product_count_product_tag', '1'),
(5, 11, 'order', '0'),
(6, 11, 'display_type', ''),
(7, 11, 'thumbnail_id', '0'),
(8, 12, 'order', '0'),
(9, 12, 'display_type', ''),
(10, 12, 'thumbnail_id', '0'),
(11, 12, 'product_count_product_cat', '1'),
(12, 11, 'product_count_product_cat', '1'),
(13, 13, 'order', '0'),
(14, 13, 'display_type', ''),
(15, 13, 'thumbnail_id', '0'),
(16, 14, 'order', '0'),
(17, 14, 'display_type', ''),
(18, 14, 'thumbnail_id', '0'),
(19, 15, 'order', '0'),
(20, 15, 'display_type', ''),
(21, 15, 'thumbnail_id', '0'),
(22, 16, 'order', '0'),
(23, 16, 'display_type', ''),
(24, 16, 'thumbnail_id', '0'),
(25, 17, 'order', '0'),
(26, 17, 'display_type', ''),
(27, 17, 'thumbnail_id', '0'),
(28, 18, 'order', '0'),
(29, 18, 'display_type', ''),
(30, 18, 'thumbnail_id', '0'),
(31, 19, 'order', '0'),
(32, 19, 'display_type', ''),
(33, 19, 'thumbnail_id', '0'),
(34, 20, 'order', '0'),
(35, 20, 'display_type', ''),
(36, 20, 'thumbnail_id', '0'),
(37, 21, 'order', '0'),
(38, 21, 'display_type', ''),
(39, 21, 'thumbnail_id', '0'),
(40, 22, 'order', '0'),
(41, 22, 'display_type', ''),
(42, 22, 'thumbnail_id', '0'),
(43, 23, 'order', '0'),
(44, 23, 'display_type', ''),
(45, 23, 'thumbnail_id', '0'),
(46, 24, 'order', '0'),
(47, 24, 'display_type', ''),
(48, 24, 'thumbnail_id', '0'),
(49, 25, 'order', '0'),
(50, 25, 'display_type', ''),
(51, 25, 'thumbnail_id', '0'),
(52, 26, 'order', '0'),
(53, 26, 'display_type', ''),
(54, 26, 'thumbnail_id', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
