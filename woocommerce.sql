-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2019 at 09:02 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woocommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `skz_commentmeta`
--

CREATE TABLE `skz_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_commentmeta`
--

INSERT INTO `skz_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '5'),
(2, 2, 'verified', '0'),
(3, 3, 'rating', '5'),
(4, 3, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `skz_comments`
--

CREATE TABLE `skz_comments` (
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
-- Dumping data for table `skz_comments`
--

INSERT INTO `skz_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-24 06:14:48', '2018-06-24 06:14:48', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 13, 'woocommerce', 'shakzee171@gmail.com', '', '::1', '2018-07-15 09:03:07', '2018-07-15 09:03:07', 'Here is my review...!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1),
(3, 13, 'woocommerce', 'shakzee171@gmail.com', '', '::1', '2018-07-15 09:03:32', '2018-07-15 09:03:32', 'dfdfdfddf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1),
(4, 44, 'WooCommerce', '', '', '', '2018-07-15 09:29:18', '2018-07-15 09:29:18', 'Order cancelled by customer. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 52, 'WooCommerce', '', '', '', '2018-07-15 10:20:31', '2018-07-15 10:20:31', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 52, 'WooCommerce', '', '', '', '2018-07-15 10:20:31', '2018-07-15 10:20:31', 'Iphone 6x plus (iphone6splus)<span class=\"description\">Internal Storage: 32GB</span> stock reduced from 100 to 99.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 52, 'woocommerce', 'shakzee171@gmail.com', '', '', '2018-07-15 10:25:47', '2018-07-15 10:25:47', 'Order status changed by bulk edit: Order status changed from Processing to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 52, 'woocommerce', 'shakzee171@gmail.com', '', '', '2018-07-15 10:26:34', '2018-07-15 10:26:34', 'Order status changed by bulk edit: Order status changed from On hold to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 53, 'woocommerce', 'shakzee171@gmail.com', '', '', '2018-07-15 10:28:58', '2018-07-15 10:28:58', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 45, 'WooCommerce', '', '', '', '2018-07-15 11:29:59', '2018-07-15 11:29:59', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 101, 'WooCommerce', '', '', '', '2018-07-15 13:06:19', '2018-07-15 13:06:19', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `skz_failed_jobs`
--

CREATE TABLE `skz_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_links`
--

CREATE TABLE `skz_links` (
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
-- Table structure for table `skz_mailchimp_carts`
--

CREATE TABLE `skz_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_options`
--

CREATE TABLE `skz_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_options`
--

INSERT INTO `skz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/woocommerce', 'yes'),
(2, 'home', 'http://localhost/woocommerce', 'yes'),
(3, 'blogname', 'woocommerce', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shakzee171@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=54&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:25:\"baltic-kit/baltic-kit.php\";i:1;s:59:\"campaign-kit-twitter-widget/campaign-kit-twitter-widget.php\";i:2;s:15:\"kirki/kirki.php\";i:3;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:33:\"wp-term-images/wp-term-images.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'baltic', 'yes'),
(41, 'stylesheet', 'baltic', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '54', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'skz_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:4:\"Meta\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:6:\"meta-3\";i:2;s:10:\"calendar-6\";}s:9:\"sidebar-1\";a:4:{i:0;s:17:\"recent-comments-2\";i:1;s:10:\"archives-2\";i:2;s:12:\"categories-2\";i:3;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:10:\"nav_menu-2\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:2:{i:6;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:8:\"Site map\";s:8:\"nav_menu\";i:23;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:14:{i:1566801781;a:1:{s:28:\"wp_1_wc_privacy_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:37:\"wp_1_wc_privacy_cleanup_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1566803756;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1566804405;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1566805354;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1566811383;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566822183;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566843289;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566864000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566886509;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566886983;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566886993;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566887872;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567468800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529821646;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(139, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"shakzee171@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1566801778;}', 'no'),
(142, 'recently_activated', 'a:1:{s:34:\"yith-woocommerce-wishlist/init.php\";i:1531645174;}', 'yes'),
(150, 'woocommerce_store_address', 'C 5 Defence view phase 1', 'yes'),
(151, 'woocommerce_store_address_2', '', 'yes'),
(152, 'woocommerce_store_city', 'karachi', 'yes'),
(153, 'woocommerce_default_country', 'PK:SD', 'yes'),
(154, 'woocommerce_store_postcode', '71000', 'yes'),
(155, 'woocommerce_allowed_countries', 'all', 'yes'),
(156, 'woocommerce_all_except_countries', '', 'yes'),
(157, 'woocommerce_specific_allowed_countries', '', 'yes'),
(158, 'woocommerce_ship_to_countries', '', 'yes'),
(159, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(160, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(161, 'woocommerce_calc_taxes', 'no', 'yes'),
(162, 'woocommerce_enable_coupons', 'yes', 'yes'),
(163, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(164, 'woocommerce_currency', 'USD', 'yes'),
(165, 'woocommerce_currency_pos', 'left', 'yes'),
(166, 'woocommerce_price_thousand_sep', ',', 'yes'),
(167, 'woocommerce_price_decimal_sep', '.', 'yes'),
(168, 'woocommerce_price_num_decimals', '2', 'yes'),
(169, 'woocommerce_shop_page_id', '4', 'yes'),
(170, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(171, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(172, 'woocommerce_weight_unit', 'kg', 'yes'),
(173, 'woocommerce_dimension_unit', 'cm', 'yes'),
(174, 'woocommerce_enable_reviews', 'yes', 'yes'),
(175, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(176, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(177, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(178, 'woocommerce_review_rating_required', 'yes', 'no'),
(179, 'woocommerce_manage_stock', 'yes', 'yes'),
(180, 'woocommerce_hold_stock_minutes', '60', 'no'),
(181, 'woocommerce_notify_low_stock', 'yes', 'no'),
(182, 'woocommerce_notify_no_stock', 'yes', 'no'),
(183, 'woocommerce_stock_email_recipient', 'shakzee171@gmail.com', 'no'),
(184, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(185, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(186, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(187, 'woocommerce_stock_format', '', 'yes'),
(188, 'woocommerce_file_download_method', 'force', 'no'),
(189, 'woocommerce_downloads_require_login', 'no', 'no'),
(190, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(191, 'woocommerce_prices_include_tax', 'no', 'yes'),
(192, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(193, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(194, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(195, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(196, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(197, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(198, 'woocommerce_price_display_suffix', '', 'yes'),
(199, 'woocommerce_tax_total_display', 'itemized', 'no'),
(200, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(201, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(202, 'woocommerce_ship_to_destination', 'billing', 'no'),
(203, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(204, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(205, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(206, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(207, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(208, 'woocommerce_registration_generate_username', 'yes', 'no'),
(209, 'woocommerce_registration_generate_password', 'yes', 'no'),
(210, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(211, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(212, 'wp_page_for_privacy_policy', '46', 'yes'),
(213, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(214, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(215, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(216, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(217, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(218, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(219, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(220, 'woocommerce_email_from_name', 'woocommerce', 'no'),
(221, 'woocommerce_email_from_address', 'shakzee171@gmail.com', 'no'),
(222, 'woocommerce_email_header_image', '', 'no'),
(223, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(224, 'woocommerce_email_base_color', '#96588a', 'no'),
(225, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(226, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(227, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(228, 'woocommerce_cart_page_id', '5', 'yes'),
(229, 'woocommerce_checkout_page_id', '6', 'yes'),
(230, 'woocommerce_myaccount_page_id', '7', 'yes'),
(231, 'woocommerce_terms_page_id', '', 'no'),
(232, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(233, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(234, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(235, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(236, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(237, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(238, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(239, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(240, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(241, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(242, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(243, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(244, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(245, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(246, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(247, 'woocommerce_api_enabled', 'no', 'yes'),
(248, 'woocommerce_single_image_width', '600', 'yes'),
(249, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(250, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(251, 'woocommerce_demo_store', 'no', 'no'),
(252, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(253, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(254, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(255, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(257, 'default_product_cat', '15', 'yes'),
(260, 'woocommerce_version', '3.4.3', 'yes'),
(261, 'woocommerce_db_version', '3.4.3', 'yes'),
(262, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:1;s:14:\"template_files\";}', 'yes'),
(263, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(264, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:18:\"Product categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(285, 'woocommerce_product_type', 'both', 'yes'),
(286, 'woocommerce_allow_tracking', 'yes', 'yes'),
(288, 'woocommerce_tracker_last_send', '1566801782', 'yes'),
(293, 'woocommerce_ppec_paypal_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:16:\"reroute_requests\";s:3:\"yes\";s:5:\"email\";s:20:\"shakzee171@gmail.com\";}', 'yes'),
(294, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(295, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(296, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(297, '_transient_shipping-transient-version', '1531649962', 'yes'),
(298, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"2\";}', 'yes'),
(304, 'jetpack_activated', '1', 'yes'),
(307, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(308, 'jetpack_sync_settings_disable', '0', 'yes'),
(312, 'jetpack_available_modules', 'a:1:{s:5:\"6.2.1\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(313, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"6.2.1:1529821611\";s:11:\"old_version\";s:16:\"6.2.1:1529821611\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;}', 'yes'),
(321, 'jetpack_testimonial', '0', 'yes'),
(326, 'current_theme', 'Baltic', 'yes'),
(327, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531650794;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(328, 'theme_switched', '', 'yes'),
(329, 'wc_ppec_version', '1.5.6', 'yes'),
(330, 'do_activate', '0', 'yes'),
(343, 'mailchimp_woocommerce_version', '2.1.7', 'no'),
(344, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(346, 'mailchimp-woocommerce-store_id', '5b2f39dc6ca31', 'yes'),
(347, 'woocommerce_catalog_rows', '4', 'yes'),
(348, 'woocommerce_catalog_columns', '3', 'yes'),
(349, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(351, 'storefront_nux_fresh_site', '0', 'yes'),
(352, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(356, '_transient_product_query-transient-version', '1531653606', 'yes'),
(361, 'woocommerce_new_order_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:9:\"recipient\";s:59:\"shakzee171@gmail.com,info@shakzee.com,yourAccount@gmail.com\";s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:10:\"email_type\";s:4:\"html\";}', 'yes'),
(376, '_transient_product-transient-version', '1531653606', 'yes'),
(410, 'woocommerce_tracker_ua', 'a:1:{i:0;s:114:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36\";}', 'yes'),
(805, 'yit_recently_activated', 'a:0:{}', 'yes'),
(833, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(840, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:\"yith_wcwl_panel\";b:1;}', 'yes'),
(895, '_transient_orders-transient-version', '1531659979', 'yes'),
(908, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:20:\"shakzee171@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:3:\"yes\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:2:\"no\";s:14:\"receiver_email\";s:20:\"shakzee171@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:25:\"shakzee171_api1.gmail.com\";s:12:\"api_password\";s:16:\"MEY6QHDU8N9M4CB3\";s:13:\"api_signature\";s:56:\"AnZRnQARxx-EcjfC4fAOPJWVQZ-wAlEqbDvQUo0in1HneEfXBb0pgRKS\";s:20:\"sandbox_api_username\";s:5:\"admin\";s:20:\"sandbox_api_password\";s:5:\"admin\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(909, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(923, 'storefront_nux_dismissed', '1', 'yes'),
(924, 'storefront_nux_guided_tour', '1', 'yes'),
(976, 'theme_mods_ultimate-ecommerce-shop', 'a:3:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531650884;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:11:\"social-icon\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(977, 'widget_wpb_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `skz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(998, 'theme_mods_vw-ecommerce-shop', 'a:18:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:23;}s:18:\"custom_css_post_id\";i:-1;s:39:\"vw_ecommerce_shop_slidersettings-page-1\";i:56;s:39:\"vw_ecommerce_shop_slidersettings-page-2\";i:61;s:39:\"vw_ecommerce_shop_slidersettings-page-3\";i:63;s:26:\"vw_ecommerce_shop_shipping\";s:6:\"test 1\";s:24:\"vw_ecommerce_shop_return\";s:6:\"test 2\";s:22:\"vw_ecommerce_shop_cash\";s:6:\"test 3\";s:25:\"vw_ecommerce_shop_contact\";s:10:\"0337276335\";s:29:\"vw_ecommerce_shop_youtube_url\";s:43:\"https://www.youtube.com/watch?v=ZQ6WQMU6QEg\";s:30:\"vw_ecommerce_shop_facebook_url\";s:25:\"https://www.facebook.com/\";s:29:\"vw_ecommerce_shop_twitter_url\";s:28:\"https://twitter.com/?lang=en\";s:27:\"vw_ecommerce_shop_insta_url\";s:30:\"http://omaliyachoudhary/?hl=en\";s:27:\"vw_ecommerce_shop_maintitle\";s:17:\"Trending Products\";s:23:\"vw_ecommerce_shop_page0\";i:80;s:29:\"vw_ecommerce_shop_footer_text\";s:7:\"Shakzee\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531653847;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:17:\"recent-comments-2\";i:1;s:10:\"archives-2\";i:2;s:12:\"categories-2\";i:3;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-2\";a:1:{i:0;s:32:\"woocommerce_product_categories-2\";}s:8:\"footer-3\";a:1:{i:0;s:6:\"meta-3\";}s:8:\"footer-4\";a:1:{i:0;s:10:\"calendar-6\";}}}}', 'yes'),
(1003, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1072, 'product_cat_children', 'a:2:{i:16;a:1:{i:0;i:17;}i:17;a:1:{i:0;i:18;}}', 'yes'),
(1087, 'theme_mods_baltic', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:23;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(1089, 'widget_campaign-kit-twitter-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1090, 'widget_baltic-kit-ajax-recent-viewed-products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1099, 'wpdb_term_image_version', '201701160001', 'yes'),
(1129, '_site_transient_timeout_theme_roots', '1566803552', 'no'),
(1130, '_site_transient_theme_roots', 'a:7:{s:6:\"baltic\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:23:\"ultimate-ecommerce-shop\";s:7:\"/themes\";s:17:\"vw-ecommerce-shop\";s:7:\"/themes\";}', 'no'),
(1131, '_transient_timeout_external_ip_address_::1', '1567406553', 'no'),
(1132, '_transient_external_ip_address_::1', '27.96.95.218', 'no'),
(1134, '_transient_timeout_baltic_kit_get_categories', '1566844954', 'no'),
(1135, '_transient_baltic_kit_get_categories', 'a:1:{i:1;s:13:\"Uncategorized\";}', 'no'),
(1136, '_transient_timeout_wc_term_counts', '1569393754', 'no'),
(1137, '_transient_wc_term_counts', 'a:4:{i:18;s:1:\"1\";i:16;s:1:\"1\";i:17;s:1:\"1\";i:21;s:1:\"5\";}', 'no'),
(1138, '_transient_timeout_baltic_kit_get_product_cats', '1566844954', 'no'),
(1139, '_transient_baltic_kit_get_product_cats', 'a:4:{i:18;s:5:\"Apple\";i:16;s:11:\"Electronics\";i:17;s:7:\"Mobiles\";i:21;s:6:\"shirts\";}', 'no'),
(1140, '_transient_timeout_baltic_kit_get_slug_product_cats', '1566844954', 'no'),
(1141, '_transient_baltic_kit_get_slug_product_cats', 'a:4:{s:5:\"apple\";s:5:\"Apple\";s:11:\"electronics\";s:11:\"Electronics\";s:7:\"mobiles\";s:7:\"Mobiles\";s:6:\"shirts\";s:6:\"shirts\";}', 'no'),
(1142, '_site_transient_timeout_kirki_googlefonts_cache', '1566805354', 'no');
INSERT INTO `skz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1143, '_site_transient_kirki_googlefonts_cache', 'a:877:{s:7:\"ABeeZee\";a:3:{s:5:\"label\";s:7:\"ABeeZee\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Abel\";a:3:{s:5:\"label\";s:4:\"Abel\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Abhaya Libre\";a:3:{s:5:\"label\";s:12:\"Abhaya Libre\";s:8:\"variants\";a:5:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Abril Fatface\";a:3:{s:5:\"label\";s:13:\"Abril Fatface\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Aclonica\";a:3:{s:5:\"label\";s:8:\"Aclonica\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Acme\";a:3:{s:5:\"label\";s:4:\"Acme\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Actor\";a:3:{s:5:\"label\";s:5:\"Actor\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Adamina\";a:3:{s:5:\"label\";s:7:\"Adamina\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Advent Pro\";a:3:{s:5:\"label\";s:10:\"Advent Pro\";s:8:\"variants\";a:7:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Aguafina Script\";a:3:{s:5:\"label\";s:15:\"Aguafina Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Akronim\";a:3:{s:5:\"label\";s:7:\"Akronim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Aladin\";a:3:{s:5:\"label\";s:6:\"Aladin\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Aldrich\";a:3:{s:5:\"label\";s:7:\"Aldrich\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Alef\";a:3:{s:5:\"label\";s:4:\"Alef\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Alegreya\";a:3:{s:5:\"label\";s:8:\"Alegreya\";s:8:\"variants\";a:10:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"800\";i:5;s:9:\"800italic\";i:6;s:3:\"900\";i:7;s:9:\"900italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Alegreya SC\";a:3:{s:5:\"label\";s:11:\"Alegreya SC\";s:8:\"variants\";a:10:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"800\";i:5;s:9:\"800italic\";i:6;s:3:\"900\";i:7;s:9:\"900italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Alegreya Sans\";a:3:{s:5:\"label\";s:13:\"Alegreya Sans\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Alegreya Sans SC\";a:3:{s:5:\"label\";s:16:\"Alegreya Sans SC\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Alex Brush\";a:3:{s:5:\"label\";s:10:\"Alex Brush\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Alfa Slab One\";a:3:{s:5:\"label\";s:13:\"Alfa Slab One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Alice\";a:3:{s:5:\"label\";s:5:\"Alice\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Alike\";a:3:{s:5:\"label\";s:5:\"Alike\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Alike Angular\";a:3:{s:5:\"label\";s:13:\"Alike Angular\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Allan\";a:3:{s:5:\"label\";s:5:\"Allan\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Allerta\";a:3:{s:5:\"label\";s:7:\"Allerta\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Allerta Stencil\";a:3:{s:5:\"label\";s:15:\"Allerta Stencil\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Allura\";a:3:{s:5:\"label\";s:6:\"Allura\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Almendra\";a:3:{s:5:\"label\";s:8:\"Almendra\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:16:\"Almendra Display\";a:3:{s:5:\"label\";s:16:\"Almendra Display\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Almendra SC\";a:3:{s:5:\"label\";s:11:\"Almendra SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Amarante\";a:3:{s:5:\"label\";s:8:\"Amarante\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Amaranth\";a:3:{s:5:\"label\";s:8:\"Amaranth\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Amatic SC\";a:3:{s:5:\"label\";s:9:\"Amatic SC\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Amethysta\";a:3:{s:5:\"label\";s:9:\"Amethysta\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Amiko\";a:3:{s:5:\"label\";s:5:\"Amiko\";s:8:\"variants\";a:3:{i:0;s:3:\"600\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Amiri\";a:3:{s:5:\"label\";s:5:\"Amiri\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Amita\";a:3:{s:5:\"label\";s:5:\"Amita\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Anaheim\";a:3:{s:5:\"label\";s:7:\"Anaheim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Andada\";a:3:{s:5:\"label\";s:6:\"Andada\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Andika\";a:3:{s:5:\"label\";s:6:\"Andika\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Angkor\";a:3:{s:5:\"label\";s:6:\"Angkor\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:24:\"Annie Use Your Telescope\";a:3:{s:5:\"label\";s:24:\"Annie Use Your Telescope\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Anonymous Pro\";a:3:{s:5:\"label\";s:13:\"Anonymous Pro\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:5:\"Antic\";a:3:{s:5:\"label\";s:5:\"Antic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Antic Didone\";a:3:{s:5:\"label\";s:12:\"Antic Didone\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Antic Slab\";a:3:{s:5:\"label\";s:10:\"Antic Slab\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Anton\";a:3:{s:5:\"label\";s:5:\"Anton\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Arapey\";a:3:{s:5:\"label\";s:6:\"Arapey\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Arbutus\";a:3:{s:5:\"label\";s:7:\"Arbutus\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Arbutus Slab\";a:3:{s:5:\"label\";s:12:\"Arbutus Slab\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:19:\"Architects Daughter\";a:3:{s:5:\"label\";s:19:\"Architects Daughter\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Archivo\";a:3:{s:5:\"label\";s:7:\"Archivo\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Archivo Black\";a:3:{s:5:\"label\";s:13:\"Archivo Black\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Archivo Narrow\";a:3:{s:5:\"label\";s:14:\"Archivo Narrow\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Aref Ruqaa\";a:3:{s:5:\"label\";s:10:\"Aref Ruqaa\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Arima Madurai\";a:3:{s:5:\"label\";s:13:\"Arima Madurai\";s:8:\"variants\";a:8:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:3:\"900\";i:7;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Arimo\";a:3:{s:5:\"label\";s:5:\"Arimo\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Arizonia\";a:3:{s:5:\"label\";s:8:\"Arizonia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Armata\";a:3:{s:5:\"label\";s:6:\"Armata\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Arsenal\";a:3:{s:5:\"label\";s:7:\"Arsenal\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Artifika\";a:3:{s:5:\"label\";s:8:\"Artifika\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Arvo\";a:3:{s:5:\"label\";s:4:\"Arvo\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Arya\";a:3:{s:5:\"label\";s:4:\"Arya\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Asap\";a:3:{s:5:\"label\";s:4:\"Asap\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Asap Condensed\";a:3:{s:5:\"label\";s:14:\"Asap Condensed\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Asar\";a:3:{s:5:\"label\";s:4:\"Asar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Asset\";a:3:{s:5:\"label\";s:5:\"Asset\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Assistant\";a:3:{s:5:\"label\";s:9:\"Assistant\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Astloch\";a:3:{s:5:\"label\";s:7:\"Astloch\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Asul\";a:3:{s:5:\"label\";s:4:\"Asul\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Athiti\";a:3:{s:5:\"label\";s:6:\"Athiti\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Atma\";a:3:{s:5:\"label\";s:4:\"Atma\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Atomic Age\";a:3:{s:5:\"label\";s:10:\"Atomic Age\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Aubrey\";a:3:{s:5:\"label\";s:6:\"Aubrey\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Audiowide\";a:3:{s:5:\"label\";s:9:\"Audiowide\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Autour One\";a:3:{s:5:\"label\";s:10:\"Autour One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Average\";a:3:{s:5:\"label\";s:7:\"Average\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Average Sans\";a:3:{s:5:\"label\";s:12:\"Average Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Averia Gruesa Libre\";a:3:{s:5:\"label\";s:19:\"Averia Gruesa Libre\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Averia Libre\";a:3:{s:5:\"label\";s:12:\"Averia Libre\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Averia Sans Libre\";a:3:{s:5:\"label\";s:17:\"Averia Sans Libre\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:18:\"Averia Serif Libre\";a:3:{s:5:\"label\";s:18:\"Averia Serif Libre\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Bad Script\";a:3:{s:5:\"label\";s:10:\"Bad Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Bahiana\";a:3:{s:5:\"label\";s:7:\"Bahiana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Baloo\";a:3:{s:5:\"label\";s:5:\"Baloo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Baloo Bhai\";a:3:{s:5:\"label\";s:10:\"Baloo Bhai\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Baloo Bhaijaan\";a:3:{s:5:\"label\";s:14:\"Baloo Bhaijaan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Baloo Bhaina\";a:3:{s:5:\"label\";s:12:\"Baloo Bhaina\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Baloo Chettan\";a:3:{s:5:\"label\";s:13:\"Baloo Chettan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Baloo Da\";a:3:{s:5:\"label\";s:8:\"Baloo Da\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Baloo Paaji\";a:3:{s:5:\"label\";s:11:\"Baloo Paaji\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Baloo Tamma\";a:3:{s:5:\"label\";s:11:\"Baloo Tamma\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Baloo Tammudu\";a:3:{s:5:\"label\";s:13:\"Baloo Tammudu\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Baloo Thambi\";a:3:{s:5:\"label\";s:12:\"Baloo Thambi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Balthazar\";a:3:{s:5:\"label\";s:9:\"Balthazar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Bangers\";a:3:{s:5:\"label\";s:7:\"Bangers\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Barlow\";a:3:{s:5:\"label\";s:6:\"Barlow\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Barlow Condensed\";a:3:{s:5:\"label\";s:16:\"Barlow Condensed\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Barlow Semi Condensed\";a:3:{s:5:\"label\";s:21:\"Barlow Semi Condensed\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Barrio\";a:3:{s:5:\"label\";s:6:\"Barrio\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Basic\";a:3:{s:5:\"label\";s:5:\"Basic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Battambang\";a:3:{s:5:\"label\";s:10:\"Battambang\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Baumans\";a:3:{s:5:\"label\";s:7:\"Baumans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Bayon\";a:3:{s:5:\"label\";s:5:\"Bayon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Belgrano\";a:3:{s:5:\"label\";s:8:\"Belgrano\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Bellefair\";a:3:{s:5:\"label\";s:9:\"Bellefair\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Belleza\";a:3:{s:5:\"label\";s:7:\"Belleza\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"BenchNine\";a:3:{s:5:\"label\";s:9:\"BenchNine\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Bentham\";a:3:{s:5:\"label\";s:7:\"Bentham\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"Berkshire Swash\";a:3:{s:5:\"label\";s:15:\"Berkshire Swash\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Bevan\";a:3:{s:5:\"label\";s:5:\"Bevan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Bigelow Rules\";a:3:{s:5:\"label\";s:13:\"Bigelow Rules\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Bigshot One\";a:3:{s:5:\"label\";s:11:\"Bigshot One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Bilbo\";a:3:{s:5:\"label\";s:5:\"Bilbo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:16:\"Bilbo Swash Caps\";a:3:{s:5:\"label\";s:16:\"Bilbo Swash Caps\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"BioRhyme\";a:3:{s:5:\"label\";s:8:\"BioRhyme\";s:8:\"variants\";a:5:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"BioRhyme Expanded\";a:3:{s:5:\"label\";s:17:\"BioRhyme Expanded\";s:8:\"variants\";a:5:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Biryani\";a:3:{s:5:\"label\";s:7:\"Biryani\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Bitter\";a:3:{s:5:\"label\";s:6:\"Bitter\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:23:\"Black And White Picture\";a:3:{s:5:\"label\";s:23:\"Black And White Picture\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Black Han Sans\";a:3:{s:5:\"label\";s:14:\"Black Han Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Black Ops One\";a:3:{s:5:\"label\";s:13:\"Black Ops One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Bokor\";a:3:{s:5:\"label\";s:5:\"Bokor\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Bonbon\";a:3:{s:5:\"label\";s:6:\"Bonbon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Boogaloo\";a:3:{s:5:\"label\";s:8:\"Boogaloo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Bowlby One\";a:3:{s:5:\"label\";s:10:\"Bowlby One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Bowlby One SC\";a:3:{s:5:\"label\";s:13:\"Bowlby One SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Brawler\";a:3:{s:5:\"label\";s:7:\"Brawler\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Bree Serif\";a:3:{s:5:\"label\";s:10:\"Bree Serif\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Bubblegum Sans\";a:3:{s:5:\"label\";s:14:\"Bubblegum Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Bubbler One\";a:3:{s:5:\"label\";s:11:\"Bubbler One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Buda\";a:3:{s:5:\"label\";s:4:\"Buda\";s:8:\"variants\";a:1:{i:0;s:3:\"300\";}s:8:\"category\";s:7:\"display\";}s:7:\"Buenard\";a:3:{s:5:\"label\";s:7:\"Buenard\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Bungee\";a:3:{s:5:\"label\";s:6:\"Bungee\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Bungee Hairline\";a:3:{s:5:\"label\";s:15:\"Bungee Hairline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Bungee Inline\";a:3:{s:5:\"label\";s:13:\"Bungee Inline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Bungee Outline\";a:3:{s:5:\"label\";s:14:\"Bungee Outline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Bungee Shade\";a:3:{s:5:\"label\";s:12:\"Bungee Shade\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Butcherman\";a:3:{s:5:\"label\";s:10:\"Butcherman\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Butterfly Kids\";a:3:{s:5:\"label\";s:14:\"Butterfly Kids\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Cabin\";a:3:{s:5:\"label\";s:5:\"Cabin\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Cabin Condensed\";a:3:{s:5:\"label\";s:15:\"Cabin Condensed\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Cabin Sketch\";a:3:{s:5:\"label\";s:12:\"Cabin Sketch\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Caesar Dressing\";a:3:{s:5:\"label\";s:15:\"Caesar Dressing\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Cagliostro\";a:3:{s:5:\"label\";s:10:\"Cagliostro\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Cairo\";a:3:{s:5:\"label\";s:5:\"Cairo\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Calligraffitti\";a:3:{s:5:\"label\";s:14:\"Calligraffitti\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Cambay\";a:3:{s:5:\"label\";s:6:\"Cambay\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Cambo\";a:3:{s:5:\"label\";s:5:\"Cambo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Candal\";a:3:{s:5:\"label\";s:6:\"Candal\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Cantarell\";a:3:{s:5:\"label\";s:9:\"Cantarell\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Cantata One\";a:3:{s:5:\"label\";s:11:\"Cantata One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Cantora One\";a:3:{s:5:\"label\";s:11:\"Cantora One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Capriola\";a:3:{s:5:\"label\";s:8:\"Capriola\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Cardo\";a:3:{s:5:\"label\";s:5:\"Cardo\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Carme\";a:3:{s:5:\"label\";s:5:\"Carme\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Carrois Gothic\";a:3:{s:5:\"label\";s:14:\"Carrois Gothic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:17:\"Carrois Gothic SC\";a:3:{s:5:\"label\";s:17:\"Carrois Gothic SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Carter One\";a:3:{s:5:\"label\";s:10:\"Carter One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Catamaran\";a:3:{s:5:\"label\";s:9:\"Catamaran\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Caudex\";a:3:{s:5:\"label\";s:6:\"Caudex\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Caveat\";a:3:{s:5:\"label\";s:6:\"Caveat\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Caveat Brush\";a:3:{s:5:\"label\";s:12:\"Caveat Brush\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:18:\"Cedarville Cursive\";a:3:{s:5:\"label\";s:18:\"Cedarville Cursive\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:11:\"Ceviche One\";a:3:{s:5:\"label\";s:11:\"Ceviche One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Changa\";a:3:{s:5:\"label\";s:6:\"Changa\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Changa One\";a:3:{s:5:\"label\";s:10:\"Changa One\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Chango\";a:3:{s:5:\"label\";s:6:\"Chango\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Chathura\";a:3:{s:5:\"label\";s:8:\"Chathura\";s:8:\"variants\";a:5:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"Chau Philomene One\";a:3:{s:5:\"label\";s:18:\"Chau Philomene One\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Chela One\";a:3:{s:5:\"label\";s:9:\"Chela One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Chelsea Market\";a:3:{s:5:\"label\";s:14:\"Chelsea Market\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Chenla\";a:3:{s:5:\"label\";s:6:\"Chenla\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Cherry Cream Soda\";a:3:{s:5:\"label\";s:17:\"Cherry Cream Soda\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Cherry Swash\";a:3:{s:5:\"label\";s:12:\"Cherry Swash\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Chewy\";a:3:{s:5:\"label\";s:5:\"Chewy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Chicle\";a:3:{s:5:\"label\";s:6:\"Chicle\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Chivo\";a:3:{s:5:\"label\";s:5:\"Chivo\";s:8:\"variants\";a:8:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"900\";i:5;s:9:\"900italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Chonburi\";a:3:{s:5:\"label\";s:8:\"Chonburi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Cinzel\";a:3:{s:5:\"label\";s:6:\"Cinzel\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Cinzel Decorative\";a:3:{s:5:\"label\";s:17:\"Cinzel Decorative\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Clicker Script\";a:3:{s:5:\"label\";s:14:\"Clicker Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Coda\";a:3:{s:5:\"label\";s:4:\"Coda\";s:8:\"variants\";a:2:{i:0;s:3:\"800\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Coda Caption\";a:3:{s:5:\"label\";s:12:\"Coda Caption\";s:8:\"variants\";a:1:{i:0;s:3:\"800\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Codystar\";a:3:{s:5:\"label\";s:8:\"Codystar\";s:8:\"variants\";a:2:{i:0;s:3:\"300\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Coiny\";a:3:{s:5:\"label\";s:5:\"Coiny\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Combo\";a:3:{s:5:\"label\";s:5:\"Combo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Comfortaa\";a:3:{s:5:\"label\";s:9:\"Comfortaa\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Coming Soon\";a:3:{s:5:\"label\";s:11:\"Coming Soon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:11:\"Concert One\";a:3:{s:5:\"label\";s:11:\"Concert One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Condiment\";a:3:{s:5:\"label\";s:9:\"Condiment\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Content\";a:3:{s:5:\"label\";s:7:\"Content\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Contrail One\";a:3:{s:5:\"label\";s:12:\"Contrail One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Convergence\";a:3:{s:5:\"label\";s:11:\"Convergence\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Cookie\";a:3:{s:5:\"label\";s:6:\"Cookie\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Copse\";a:3:{s:5:\"label\";s:5:\"Copse\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Corben\";a:3:{s:5:\"label\";s:6:\"Corben\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Cormorant\";a:3:{s:5:\"label\";s:9:\"Cormorant\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:18:\"Cormorant Garamond\";a:3:{s:5:\"label\";s:18:\"Cormorant Garamond\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:16:\"Cormorant Infant\";a:3:{s:5:\"label\";s:16:\"Cormorant Infant\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Cormorant SC\";a:3:{s:5:\"label\";s:12:\"Cormorant SC\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Cormorant Unicase\";a:3:{s:5:\"label\";s:17:\"Cormorant Unicase\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Cormorant Upright\";a:3:{s:5:\"label\";s:17:\"Cormorant Upright\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Courgette\";a:3:{s:5:\"label\";s:9:\"Courgette\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Cousine\";a:3:{s:5:\"label\";s:7:\"Cousine\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:8:\"Coustard\";a:3:{s:5:\"label\";s:8:\"Coustard\";s:8:\"variants\";a:2:{i:0;s:3:\"900\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:21:\"Covered By Your Grace\";a:3:{s:5:\"label\";s:21:\"Covered By Your Grace\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Crafty Girls\";a:3:{s:5:\"label\";s:12:\"Crafty Girls\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Creepster\";a:3:{s:5:\"label\";s:9:\"Creepster\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Crete Round\";a:3:{s:5:\"label\";s:11:\"Crete Round\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Crimson Text\";a:3:{s:5:\"label\";s:12:\"Crimson Text\";s:8:\"variants\";a:6:{i:0;s:3:\"600\";i:1;s:9:\"600italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:13:\"Croissant One\";a:3:{s:5:\"label\";s:13:\"Croissant One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Crushed\";a:3:{s:5:\"label\";s:7:\"Crushed\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Cuprum\";a:3:{s:5:\"label\";s:6:\"Cuprum\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Cute Font\";a:3:{s:5:\"label\";s:9:\"Cute Font\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Cutive\";a:3:{s:5:\"label\";s:6:\"Cutive\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Cutive Mono\";a:3:{s:5:\"label\";s:11:\"Cutive Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:6:\"Damion\";a:3:{s:5:\"label\";s:6:\"Damion\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"Dancing Script\";a:3:{s:5:\"label\";s:14:\"Dancing Script\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Dangrek\";a:3:{s:5:\"label\";s:7:\"Dangrek\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"David Libre\";a:3:{s:5:\"label\";s:11:\"David Libre\";s:8:\"variants\";a:3:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:20:\"Dawning of a New Day\";a:3:{s:5:\"label\";s:20:\"Dawning of a New Day\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Days One\";a:3:{s:5:\"label\";s:8:\"Days One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Dekko\";a:3:{s:5:\"label\";s:5:\"Dekko\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Delius\";a:3:{s:5:\"label\";s:6:\"Delius\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:17:\"Delius Swash Caps\";a:3:{s:5:\"label\";s:17:\"Delius Swash Caps\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"Delius Unicase\";a:3:{s:5:\"label\";s:14:\"Delius Unicase\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Della Respira\";a:3:{s:5:\"label\";s:13:\"Della Respira\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Denk One\";a:3:{s:5:\"label\";s:8:\"Denk One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Devonshire\";a:3:{s:5:\"label\";s:10:\"Devonshire\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Dhurjati\";a:3:{s:5:\"label\";s:8:\"Dhurjati\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Didact Gothic\";a:3:{s:5:\"label\";s:13:\"Didact Gothic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Diplomata\";a:3:{s:5:\"label\";s:9:\"Diplomata\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Diplomata SC\";a:3:{s:5:\"label\";s:12:\"Diplomata SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Do Hyeon\";a:3:{s:5:\"label\";s:8:\"Do Hyeon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Dokdo\";a:3:{s:5:\"label\";s:5:\"Dokdo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Domine\";a:3:{s:5:\"label\";s:6:\"Domine\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Donegal One\";a:3:{s:5:\"label\";s:11:\"Donegal One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Doppio One\";a:3:{s:5:\"label\";s:10:\"Doppio One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Dorsa\";a:3:{s:5:\"label\";s:5:\"Dorsa\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Dosis\";a:3:{s:5:\"label\";s:5:\"Dosis\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Dr Sugiyama\";a:3:{s:5:\"label\";s:11:\"Dr Sugiyama\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Duru Sans\";a:3:{s:5:\"label\";s:9:\"Duru Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Dynalight\";a:3:{s:5:\"label\";s:9:\"Dynalight\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"EB Garamond\";a:3:{s:5:\"label\";s:11:\"EB Garamond\";s:8:\"variants\";a:10:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"800\";i:7;s:9:\"800italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Eagle Lake\";a:3:{s:5:\"label\";s:10:\"Eagle Lake\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"East Sea Dokdo\";a:3:{s:5:\"label\";s:14:\"East Sea Dokdo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Eater\";a:3:{s:5:\"label\";s:5:\"Eater\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Economica\";a:3:{s:5:\"label\";s:9:\"Economica\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Eczar\";a:3:{s:5:\"label\";s:5:\"Eczar\";s:8:\"variants\";a:5:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"El Messiri\";a:3:{s:5:\"label\";s:10:\"El Messiri\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Electrolize\";a:3:{s:5:\"label\";s:11:\"Electrolize\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Elsie\";a:3:{s:5:\"label\";s:5:\"Elsie\";s:8:\"variants\";a:2:{i:0;s:3:\"900\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Elsie Swash Caps\";a:3:{s:5:\"label\";s:16:\"Elsie Swash Caps\";s:8:\"variants\";a:2:{i:0;s:3:\"900\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Emblema One\";a:3:{s:5:\"label\";s:11:\"Emblema One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Emilys Candy\";a:3:{s:5:\"label\";s:12:\"Emilys Candy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Encode Sans\";a:3:{s:5:\"label\";s:11:\"Encode Sans\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Encode Sans Condensed\";a:3:{s:5:\"label\";s:21:\"Encode Sans Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:20:\"Encode Sans Expanded\";a:3:{s:5:\"label\";s:20:\"Encode Sans Expanded\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:26:\"Encode Sans Semi Condensed\";a:3:{s:5:\"label\";s:26:\"Encode Sans Semi Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:25:\"Encode Sans Semi Expanded\";a:3:{s:5:\"label\";s:25:\"Encode Sans Semi Expanded\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Engagement\";a:3:{s:5:\"label\";s:10:\"Engagement\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Englebert\";a:3:{s:5:\"label\";s:9:\"Englebert\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Enriqueta\";a:3:{s:5:\"label\";s:9:\"Enriqueta\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Erica One\";a:3:{s:5:\"label\";s:9:\"Erica One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Esteban\";a:3:{s:5:\"label\";s:7:\"Esteban\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"Euphoria Script\";a:3:{s:5:\"label\";s:15:\"Euphoria Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Ewert\";a:3:{s:5:\"label\";s:5:\"Ewert\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:3:\"Exo\";a:3:{s:5:\"label\";s:3:\"Exo\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Exo 2\";a:3:{s:5:\"label\";s:5:\"Exo 2\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Expletus Sans\";a:3:{s:5:\"label\";s:13:\"Expletus Sans\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Fanwood Text\";a:3:{s:5:\"label\";s:12:\"Fanwood Text\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Farsan\";a:3:{s:5:\"label\";s:6:\"Farsan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Fascinate\";a:3:{s:5:\"label\";s:9:\"Fascinate\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Fascinate Inline\";a:3:{s:5:\"label\";s:16:\"Fascinate Inline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Faster One\";a:3:{s:5:\"label\";s:10:\"Faster One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Fasthand\";a:3:{s:5:\"label\";s:8:\"Fasthand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Fauna One\";a:3:{s:5:\"label\";s:9:\"Fauna One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Faustina\";a:3:{s:5:\"label\";s:8:\"Faustina\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Federant\";a:3:{s:5:\"label\";s:8:\"Federant\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Federo\";a:3:{s:5:\"label\";s:6:\"Federo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Felipa\";a:3:{s:5:\"label\";s:6:\"Felipa\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Fenix\";a:3:{s:5:\"label\";s:5:\"Fenix\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Finger Paint\";a:3:{s:5:\"label\";s:12:\"Finger Paint\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Fira Mono\";a:3:{s:5:\"label\";s:9:\"Fira Mono\";s:8:\"variants\";a:3:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:9:\"Fira Sans\";a:3:{s:5:\"label\";s:9:\"Fira Sans\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Fira Sans Condensed\";a:3:{s:5:\"label\";s:19:\"Fira Sans Condensed\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:25:\"Fira Sans Extra Condensed\";a:3:{s:5:\"label\";s:25:\"Fira Sans Extra Condensed\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Fjalla One\";a:3:{s:5:\"label\";s:10:\"Fjalla One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Fjord One\";a:3:{s:5:\"label\";s:9:\"Fjord One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Flamenco\";a:3:{s:5:\"label\";s:8:\"Flamenco\";s:8:\"variants\";a:2:{i:0;s:3:\"300\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Flavors\";a:3:{s:5:\"label\";s:7:\"Flavors\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Fondamento\";a:3:{s:5:\"label\";s:10:\"Fondamento\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:16:\"Fontdiner Swanky\";a:3:{s:5:\"label\";s:16:\"Fontdiner Swanky\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Forum\";a:3:{s:5:\"label\";s:5:\"Forum\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Francois One\";a:3:{s:5:\"label\";s:12:\"Francois One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Frank Ruhl Libre\";a:3:{s:5:\"label\";s:16:\"Frank Ruhl Libre\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"700\";i:3;s:3:\"900\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Freckle Face\";a:3:{s:5:\"label\";s:12:\"Freckle Face\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Fredericka the Great\";a:3:{s:5:\"label\";s:20:\"Fredericka the Great\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Fredoka One\";a:3:{s:5:\"label\";s:11:\"Fredoka One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Freehand\";a:3:{s:5:\"label\";s:8:\"Freehand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Fresca\";a:3:{s:5:\"label\";s:6:\"Fresca\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Frijole\";a:3:{s:5:\"label\";s:7:\"Frijole\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Fruktur\";a:3:{s:5:\"label\";s:7:\"Fruktur\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Fugaz One\";a:3:{s:5:\"label\";s:9:\"Fugaz One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"GFS Didot\";a:3:{s:5:\"label\";s:9:\"GFS Didot\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"GFS Neohellenic\";a:3:{s:5:\"label\";s:15:\"GFS Neohellenic\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Gabriela\";a:3:{s:5:\"label\";s:8:\"Gabriela\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Gaegu\";a:3:{s:5:\"label\";s:5:\"Gaegu\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Gafata\";a:3:{s:5:\"label\";s:6:\"Gafata\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Galada\";a:3:{s:5:\"label\";s:6:\"Galada\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Galdeano\";a:3:{s:5:\"label\";s:8:\"Galdeano\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Galindo\";a:3:{s:5:\"label\";s:7:\"Galindo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Gamja Flower\";a:3:{s:5:\"label\";s:12:\"Gamja Flower\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Gentium Basic\";a:3:{s:5:\"label\";s:13:\"Gentium Basic\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:18:\"Gentium Book Basic\";a:3:{s:5:\"label\";s:18:\"Gentium Book Basic\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:3:\"Geo\";a:3:{s:5:\"label\";s:3:\"Geo\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Geostar\";a:3:{s:5:\"label\";s:7:\"Geostar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Geostar Fill\";a:3:{s:5:\"label\";s:12:\"Geostar Fill\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Germania One\";a:3:{s:5:\"label\";s:12:\"Germania One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Gidugu\";a:3:{s:5:\"label\";s:6:\"Gidugu\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Gilda Display\";a:3:{s:5:\"label\";s:13:\"Gilda Display\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Give You Glory\";a:3:{s:5:\"label\";s:14:\"Give You Glory\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Glass Antiqua\";a:3:{s:5:\"label\";s:13:\"Glass Antiqua\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Glegoo\";a:3:{s:5:\"label\";s:6:\"Glegoo\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Gloria Hallelujah\";a:3:{s:5:\"label\";s:17:\"Gloria Hallelujah\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Goblin One\";a:3:{s:5:\"label\";s:10:\"Goblin One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Gochi Hand\";a:3:{s:5:\"label\";s:10:\"Gochi Hand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Gorditas\";a:3:{s:5:\"label\";s:8:\"Gorditas\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Gothic A1\";a:3:{s:5:\"label\";s:9:\"Gothic A1\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Goudy Bookletter 1911\";a:3:{s:5:\"label\";s:21:\"Goudy Bookletter 1911\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Graduate\";a:3:{s:5:\"label\";s:8:\"Graduate\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Grand Hotel\";a:3:{s:5:\"label\";s:11:\"Grand Hotel\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Gravitas One\";a:3:{s:5:\"label\";s:12:\"Gravitas One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Great Vibes\";a:3:{s:5:\"label\";s:11:\"Great Vibes\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Griffy\";a:3:{s:5:\"label\";s:6:\"Griffy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Gruppo\";a:3:{s:5:\"label\";s:6:\"Gruppo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Gudea\";a:3:{s:5:\"label\";s:5:\"Gudea\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Gugi\";a:3:{s:5:\"label\";s:4:\"Gugi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Gurajada\";a:3:{s:5:\"label\";s:8:\"Gurajada\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Habibi\";a:3:{s:5:\"label\";s:6:\"Habibi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Halant\";a:3:{s:5:\"label\";s:6:\"Halant\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"Hammersmith One\";a:3:{s:5:\"label\";s:15:\"Hammersmith One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Hanalei\";a:3:{s:5:\"label\";s:7:\"Hanalei\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Hanalei Fill\";a:3:{s:5:\"label\";s:12:\"Hanalei Fill\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Handlee\";a:3:{s:5:\"label\";s:7:\"Handlee\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Hanuman\";a:3:{s:5:\"label\";s:7:\"Hanuman\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Happy Monkey\";a:3:{s:5:\"label\";s:12:\"Happy Monkey\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Harmattan\";a:3:{s:5:\"label\";s:9:\"Harmattan\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Headland One\";a:3:{s:5:\"label\";s:12:\"Headland One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Heebo\";a:3:{s:5:\"label\";s:5:\"Heebo\";s:8:\"variants\";a:7:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Henny Penny\";a:3:{s:5:\"label\";s:11:\"Henny Penny\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Herr Von Muellerhoff\";a:3:{s:5:\"label\";s:20:\"Herr Von Muellerhoff\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Hi Melody\";a:3:{s:5:\"label\";s:9:\"Hi Melody\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Hind\";a:3:{s:5:\"label\";s:4:\"Hind\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Hind Guntur\";a:3:{s:5:\"label\";s:11:\"Hind Guntur\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Hind Madurai\";a:3:{s:5:\"label\";s:12:\"Hind Madurai\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Hind Siliguri\";a:3:{s:5:\"label\";s:13:\"Hind Siliguri\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Hind Vadodara\";a:3:{s:5:\"label\";s:13:\"Hind Vadodara\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Holtwood One SC\";a:3:{s:5:\"label\";s:15:\"Holtwood One SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Homemade Apple\";a:3:{s:5:\"label\";s:14:\"Homemade Apple\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Homenaje\";a:3:{s:5:\"label\";s:8:\"Homenaje\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"IBM Plex Mono\";a:3:{s:5:\"label\";s:13:\"IBM Plex Mono\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:13:\"IBM Plex Sans\";a:3:{s:5:\"label\";s:13:\"IBM Plex Sans\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:23:\"IBM Plex Sans Condensed\";a:3:{s:5:\"label\";s:23:\"IBM Plex Sans Condensed\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"IBM Plex Serif\";a:3:{s:5:\"label\";s:14:\"IBM Plex Serif\";s:8:\"variants\";a:14:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"IM Fell DW Pica\";a:3:{s:5:\"label\";s:15:\"IM Fell DW Pica\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:18:\"IM Fell DW Pica SC\";a:3:{s:5:\"label\";s:18:\"IM Fell DW Pica SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:19:\"IM Fell Double Pica\";a:3:{s:5:\"label\";s:19:\"IM Fell Double Pica\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:22:\"IM Fell Double Pica SC\";a:3:{s:5:\"label\";s:22:\"IM Fell Double Pica SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"IM Fell English\";a:3:{s:5:\"label\";s:15:\"IM Fell English\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:18:\"IM Fell English SC\";a:3:{s:5:\"label\";s:18:\"IM Fell English SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:20:\"IM Fell French Canon\";a:3:{s:5:\"label\";s:20:\"IM Fell French Canon\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:23:\"IM Fell French Canon SC\";a:3:{s:5:\"label\";s:23:\"IM Fell French Canon SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:20:\"IM Fell Great Primer\";a:3:{s:5:\"label\";s:20:\"IM Fell Great Primer\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:23:\"IM Fell Great Primer SC\";a:3:{s:5:\"label\";s:23:\"IM Fell Great Primer SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Iceberg\";a:3:{s:5:\"label\";s:7:\"Iceberg\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Iceland\";a:3:{s:5:\"label\";s:7:\"Iceland\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Imprima\";a:3:{s:5:\"label\";s:7:\"Imprima\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Inconsolata\";a:3:{s:5:\"label\";s:11:\"Inconsolata\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:5:\"Inder\";a:3:{s:5:\"label\";s:5:\"Inder\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Indie Flower\";a:3:{s:5:\"label\";s:12:\"Indie Flower\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Inika\";a:3:{s:5:\"label\";s:5:\"Inika\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Inknut Antiqua\";a:3:{s:5:\"label\";s:14:\"Inknut Antiqua\";s:8:\"variants\";a:7:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Irish Grover\";a:3:{s:5:\"label\";s:12:\"Irish Grover\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Istok Web\";a:3:{s:5:\"label\";s:9:\"Istok Web\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Italiana\";a:3:{s:5:\"label\";s:8:\"Italiana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Italianno\";a:3:{s:5:\"label\";s:9:\"Italianno\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Itim\";a:3:{s:5:\"label\";s:4:\"Itim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:16:\"Jacques Francois\";a:3:{s:5:\"label\";s:16:\"Jacques Francois\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:23:\"Jacques Francois Shadow\";a:3:{s:5:\"label\";s:23:\"Jacques Francois Shadow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Jaldi\";a:3:{s:5:\"label\";s:5:\"Jaldi\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Jim Nightshade\";a:3:{s:5:\"label\";s:14:\"Jim Nightshade\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Jockey One\";a:3:{s:5:\"label\";s:10:\"Jockey One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Jolly Lodger\";a:3:{s:5:\"label\";s:12:\"Jolly Lodger\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Jomhuria\";a:3:{s:5:\"label\";s:8:\"Jomhuria\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Josefin Sans\";a:3:{s:5:\"label\";s:12:\"Josefin Sans\";s:8:\"variants\";a:10:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Josefin Slab\";a:3:{s:5:\"label\";s:12:\"Josefin Slab\";s:8:\"variants\";a:10:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Joti One\";a:3:{s:5:\"label\";s:8:\"Joti One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:3:\"Jua\";a:3:{s:5:\"label\";s:3:\"Jua\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Judson\";a:3:{s:5:\"label\";s:6:\"Judson\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Julee\";a:3:{s:5:\"label\";s:5:\"Julee\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:15:\"Julius Sans One\";a:3:{s:5:\"label\";s:15:\"Julius Sans One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Junge\";a:3:{s:5:\"label\";s:5:\"Junge\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Jura\";a:3:{s:5:\"label\";s:4:\"Jura\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:17:\"Just Another Hand\";a:3:{s:5:\"label\";s:17:\"Just Another Hand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:23:\"Just Me Again Down Here\";a:3:{s:5:\"label\";s:23:\"Just Me Again Down Here\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Kadwa\";a:3:{s:5:\"label\";s:5:\"Kadwa\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Kalam\";a:3:{s:5:\"label\";s:5:\"Kalam\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Kameron\";a:3:{s:5:\"label\";s:7:\"Kameron\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Kanit\";a:3:{s:5:\"label\";s:5:\"Kanit\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Kantumruy\";a:3:{s:5:\"label\";s:9:\"Kantumruy\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Karla\";a:3:{s:5:\"label\";s:5:\"Karla\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Karma\";a:3:{s:5:\"label\";s:5:\"Karma\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Katibeh\";a:3:{s:5:\"label\";s:7:\"Katibeh\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Kaushan Script\";a:3:{s:5:\"label\";s:14:\"Kaushan Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Kavivanar\";a:3:{s:5:\"label\";s:9:\"Kavivanar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Kavoon\";a:3:{s:5:\"label\";s:6:\"Kavoon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Kdam Thmor\";a:3:{s:5:\"label\";s:10:\"Kdam Thmor\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Keania One\";a:3:{s:5:\"label\";s:10:\"Keania One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Kelly Slab\";a:3:{s:5:\"label\";s:10:\"Kelly Slab\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Kenia\";a:3:{s:5:\"label\";s:5:\"Kenia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Khand\";a:3:{s:5:\"label\";s:5:\"Khand\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Khmer\";a:3:{s:5:\"label\";s:5:\"Khmer\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Khula\";a:3:{s:5:\"label\";s:5:\"Khula\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Kirang Haerang\";a:3:{s:5:\"label\";s:14:\"Kirang Haerang\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Kite One\";a:3:{s:5:\"label\";s:8:\"Kite One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Knewave\";a:3:{s:5:\"label\";s:7:\"Knewave\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Kotta One\";a:3:{s:5:\"label\";s:9:\"Kotta One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Koulen\";a:3:{s:5:\"label\";s:6:\"Koulen\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Kranky\";a:3:{s:5:\"label\";s:6:\"Kranky\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Kreon\";a:3:{s:5:\"label\";s:5:\"Kreon\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Kristi\";a:3:{s:5:\"label\";s:6:\"Kristi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Krona One\";a:3:{s:5:\"label\";s:9:\"Krona One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Kumar One\";a:3:{s:5:\"label\";s:9:\"Kumar One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Kumar One Outline\";a:3:{s:5:\"label\";s:17:\"Kumar One Outline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Kurale\";a:3:{s:5:\"label\";s:6:\"Kurale\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"La Belle Aurore\";a:3:{s:5:\"label\";s:15:\"La Belle Aurore\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Laila\";a:3:{s:5:\"label\";s:5:\"Laila\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Lakki Reddy\";a:3:{s:5:\"label\";s:11:\"Lakki Reddy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Lalezar\";a:3:{s:5:\"label\";s:7:\"Lalezar\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Lancelot\";a:3:{s:5:\"label\";s:8:\"Lancelot\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Lateef\";a:3:{s:5:\"label\";s:6:\"Lateef\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Lato\";a:3:{s:5:\"label\";s:4:\"Lato\";s:8:\"variants\";a:10:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"900\";i:7;s:9:\"900italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"League Script\";a:3:{s:5:\"label\";s:13:\"League Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Leckerli One\";a:3:{s:5:\"label\";s:12:\"Leckerli One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Ledger\";a:3:{s:5:\"label\";s:6:\"Ledger\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Lekton\";a:3:{s:5:\"label\";s:6:\"Lekton\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Lemon\";a:3:{s:5:\"label\";s:5:\"Lemon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Lemonada\";a:3:{s:5:\"label\";s:8:\"Lemonada\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Libre Barcode 128\";a:3:{s:5:\"label\";s:17:\"Libre Barcode 128\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:22:\"Libre Barcode 128 Text\";a:3:{s:5:\"label\";s:22:\"Libre Barcode 128 Text\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Libre Barcode 39\";a:3:{s:5:\"label\";s:16:\"Libre Barcode 39\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:25:\"Libre Barcode 39 Extended\";a:3:{s:5:\"label\";s:25:\"Libre Barcode 39 Extended\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:30:\"Libre Barcode 39 Extended Text\";a:3:{s:5:\"label\";s:30:\"Libre Barcode 39 Extended Text\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:21:\"Libre Barcode 39 Text\";a:3:{s:5:\"label\";s:21:\"Libre Barcode 39 Text\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Libre Baskerville\";a:3:{s:5:\"label\";s:17:\"Libre Baskerville\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Libre Franklin\";a:3:{s:5:\"label\";s:14:\"Libre Franklin\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Life Savers\";a:3:{s:5:\"label\";s:11:\"Life Savers\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Lilita One\";a:3:{s:5:\"label\";s:10:\"Lilita One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Lily Script One\";a:3:{s:5:\"label\";s:15:\"Lily Script One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Limelight\";a:3:{s:5:\"label\";s:9:\"Limelight\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Linden Hill\";a:3:{s:5:\"label\";s:11:\"Linden Hill\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Lobster\";a:3:{s:5:\"label\";s:7:\"Lobster\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Lobster Two\";a:3:{s:5:\"label\";s:11:\"Lobster Two\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Londrina Outline\";a:3:{s:5:\"label\";s:16:\"Londrina Outline\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Londrina Shadow\";a:3:{s:5:\"label\";s:15:\"Londrina Shadow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Londrina Sketch\";a:3:{s:5:\"label\";s:15:\"Londrina Sketch\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Londrina Solid\";a:3:{s:5:\"label\";s:14:\"Londrina Solid\";s:8:\"variants\";a:4:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Lora\";a:3:{s:5:\"label\";s:4:\"Lora\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:21:\"Love Ya Like A Sister\";a:3:{s:5:\"label\";s:21:\"Love Ya Like A Sister\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:17:\"Loved by the King\";a:3:{s:5:\"label\";s:17:\"Loved by the King\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"Lovers Quarrel\";a:3:{s:5:\"label\";s:14:\"Lovers Quarrel\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Luckiest Guy\";a:3:{s:5:\"label\";s:12:\"Luckiest Guy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Lusitana\";a:3:{s:5:\"label\";s:8:\"Lusitana\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Lustria\";a:3:{s:5:\"label\";s:7:\"Lustria\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Macondo\";a:3:{s:5:\"label\";s:7:\"Macondo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:18:\"Macondo Swash Caps\";a:3:{s:5:\"label\";s:18:\"Macondo Swash Caps\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Mada\";a:3:{s:5:\"label\";s:4:\"Mada\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Magra\";a:3:{s:5:\"label\";s:5:\"Magra\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Maiden Orange\";a:3:{s:5:\"label\";s:13:\"Maiden Orange\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Maitree\";a:3:{s:5:\"label\";s:7:\"Maitree\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Mako\";a:3:{s:5:\"label\";s:4:\"Mako\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Mallanna\";a:3:{s:5:\"label\";s:8:\"Mallanna\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Mandali\";a:3:{s:5:\"label\";s:7:\"Mandali\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Manuale\";a:3:{s:5:\"label\";s:7:\"Manuale\";s:8:\"variants\";a:8:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Marcellus\";a:3:{s:5:\"label\";s:9:\"Marcellus\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Marcellus SC\";a:3:{s:5:\"label\";s:12:\"Marcellus SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Marck Script\";a:3:{s:5:\"label\";s:12:\"Marck Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Margarine\";a:3:{s:5:\"label\";s:9:\"Margarine\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Marko One\";a:3:{s:5:\"label\";s:9:\"Marko One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Marmelad\";a:3:{s:5:\"label\";s:8:\"Marmelad\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Martel\";a:3:{s:5:\"label\";s:6:\"Martel\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Martel Sans\";a:3:{s:5:\"label\";s:11:\"Martel Sans\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Marvel\";a:3:{s:5:\"label\";s:6:\"Marvel\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Mate\";a:3:{s:5:\"label\";s:4:\"Mate\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Mate SC\";a:3:{s:5:\"label\";s:7:\"Mate SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Maven Pro\";a:3:{s:5:\"label\";s:9:\"Maven Pro\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"McLaren\";a:3:{s:5:\"label\";s:7:\"McLaren\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Meddon\";a:3:{s:5:\"label\";s:6:\"Meddon\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"MedievalSharp\";a:3:{s:5:\"label\";s:13:\"MedievalSharp\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Medula One\";a:3:{s:5:\"label\";s:10:\"Medula One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Meera Inimai\";a:3:{s:5:\"label\";s:12:\"Meera Inimai\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Megrim\";a:3:{s:5:\"label\";s:6:\"Megrim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Meie Script\";a:3:{s:5:\"label\";s:11:\"Meie Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Merienda\";a:3:{s:5:\"label\";s:8:\"Merienda\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Merienda One\";a:3:{s:5:\"label\";s:12:\"Merienda One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Merriweather\";a:3:{s:5:\"label\";s:12:\"Merriweather\";s:8:\"variants\";a:8:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"900\";i:5;s:9:\"900italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Merriweather Sans\";a:3:{s:5:\"label\";s:17:\"Merriweather Sans\";s:8:\"variants\";a:8:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"800\";i:5;s:9:\"800italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Metal\";a:3:{s:5:\"label\";s:5:\"Metal\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Metal Mania\";a:3:{s:5:\"label\";s:11:\"Metal Mania\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Metamorphous\";a:3:{s:5:\"label\";s:12:\"Metamorphous\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Metrophobic\";a:3:{s:5:\"label\";s:11:\"Metrophobic\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Michroma\";a:3:{s:5:\"label\";s:8:\"Michroma\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Milonga\";a:3:{s:5:\"label\";s:7:\"Milonga\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Miltonian\";a:3:{s:5:\"label\";s:9:\"Miltonian\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Miltonian Tattoo\";a:3:{s:5:\"label\";s:16:\"Miltonian Tattoo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Mina\";a:3:{s:5:\"label\";s:4:\"Mina\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Miniver\";a:3:{s:5:\"label\";s:7:\"Miniver\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Miriam Libre\";a:3:{s:5:\"label\";s:12:\"Miriam Libre\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Mirza\";a:3:{s:5:\"label\";s:5:\"Mirza\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Miss Fajardose\";a:3:{s:5:\"label\";s:14:\"Miss Fajardose\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Mitr\";a:3:{s:5:\"label\";s:4:\"Mitr\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Modak\";a:3:{s:5:\"label\";s:5:\"Modak\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Modern Antiqua\";a:3:{s:5:\"label\";s:14:\"Modern Antiqua\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Mogra\";a:3:{s:5:\"label\";s:5:\"Mogra\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Molengo\";a:3:{s:5:\"label\";s:7:\"Molengo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Molle\";a:3:{s:5:\"label\";s:5:\"Molle\";s:8:\"variants\";a:1:{i:0;s:6:\"italic\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Monda\";a:3:{s:5:\"label\";s:5:\"Monda\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Monofett\";a:3:{s:5:\"label\";s:8:\"Monofett\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Monoton\";a:3:{s:5:\"label\";s:7:\"Monoton\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Monsieur La Doulaise\";a:3:{s:5:\"label\";s:20:\"Monsieur La Doulaise\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Montaga\";a:3:{s:5:\"label\";s:7:\"Montaga\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Montez\";a:3:{s:5:\"label\";s:6:\"Montez\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Montserrat\";a:3:{s:5:\"label\";s:10:\"Montserrat\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Montserrat Alternates\";a:3:{s:5:\"label\";s:21:\"Montserrat Alternates\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:20:\"Montserrat Subrayada\";a:3:{s:5:\"label\";s:20:\"Montserrat Subrayada\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Moul\";a:3:{s:5:\"label\";s:4:\"Moul\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Moulpali\";a:3:{s:5:\"label\";s:8:\"Moulpali\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:22:\"Mountains of Christmas\";a:3:{s:5:\"label\";s:22:\"Mountains of Christmas\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Mouse Memoirs\";a:3:{s:5:\"label\";s:13:\"Mouse Memoirs\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Mr Bedfort\";a:3:{s:5:\"label\";s:10:\"Mr Bedfort\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Mr Dafoe\";a:3:{s:5:\"label\";s:8:\"Mr Dafoe\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:14:\"Mr De Haviland\";a:3:{s:5:\"label\";s:14:\"Mr De Haviland\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:19:\"Mrs Saint Delafield\";a:3:{s:5:\"label\";s:19:\"Mrs Saint Delafield\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Mrs Sheppards\";a:3:{s:5:\"label\";s:13:\"Mrs Sheppards\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Mukta\";a:3:{s:5:\"label\";s:5:\"Mukta\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Mukta Mahee\";a:3:{s:5:\"label\";s:11:\"Mukta Mahee\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Mukta Malar\";a:3:{s:5:\"label\";s:11:\"Mukta Malar\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Mukta Vaani\";a:3:{s:5:\"label\";s:11:\"Mukta Vaani\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"800\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Muli\";a:3:{s:5:\"label\";s:4:\"Muli\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Mystery Quest\";a:3:{s:5:\"label\";s:13:\"Mystery Quest\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:3:\"NTR\";a:3:{s:5:\"label\";s:3:\"NTR\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"Nanum Brush Script\";a:3:{s:5:\"label\";s:18:\"Nanum Brush Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Nanum Gothic\";a:3:{s:5:\"label\";s:12:\"Nanum Gothic\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"800\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Nanum Gothic Coding\";a:3:{s:5:\"label\";s:19:\"Nanum Gothic Coding\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:14:\"Nanum Myeongjo\";a:3:{s:5:\"label\";s:14:\"Nanum Myeongjo\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"800\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:16:\"Nanum Pen Script\";a:3:{s:5:\"label\";s:16:\"Nanum Pen Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Neucha\";a:3:{s:5:\"label\";s:6:\"Neucha\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Neuton\";a:3:{s:5:\"label\";s:6:\"Neuton\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"New Rocker\";a:3:{s:5:\"label\";s:10:\"New Rocker\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"News Cycle\";a:3:{s:5:\"label\";s:10:\"News Cycle\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Niconne\";a:3:{s:5:\"label\";s:7:\"Niconne\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Nixie One\";a:3:{s:5:\"label\";s:9:\"Nixie One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Nobile\";a:3:{s:5:\"label\";s:6:\"Nobile\";s:8:\"variants\";a:6:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Nokora\";a:3:{s:5:\"label\";s:6:\"Nokora\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Norican\";a:3:{s:5:\"label\";s:7:\"Norican\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Nosifer\";a:3:{s:5:\"label\";s:7:\"Nosifer\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Nothing You Could Do\";a:3:{s:5:\"label\";s:20:\"Nothing You Could Do\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:12:\"Noticia Text\";a:3:{s:5:\"label\";s:12:\"Noticia Text\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Noto Sans\";a:3:{s:5:\"label\";s:9:\"Noto Sans\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Noto Serif\";a:3:{s:5:\"label\";s:10:\"Noto Serif\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Nova Cut\";a:3:{s:5:\"label\";s:8:\"Nova Cut\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Nova Flat\";a:3:{s:5:\"label\";s:9:\"Nova Flat\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Nova Mono\";a:3:{s:5:\"label\";s:9:\"Nova Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:9:\"Nova Oval\";a:3:{s:5:\"label\";s:9:\"Nova Oval\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Nova Round\";a:3:{s:5:\"label\";s:10:\"Nova Round\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Nova Script\";a:3:{s:5:\"label\";s:11:\"Nova Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Nova Slim\";a:3:{s:5:\"label\";s:9:\"Nova Slim\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Nova Square\";a:3:{s:5:\"label\";s:11:\"Nova Square\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Numans\";a:3:{s:5:\"label\";s:6:\"Numans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Nunito\";a:3:{s:5:\"label\";s:6:\"Nunito\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Nunito Sans\";a:3:{s:5:\"label\";s:11:\"Nunito Sans\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"800\";i:9;s:9:\"800italic\";i:10;s:3:\"900\";i:11;s:9:\"900italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Odor Mean Chey\";a:3:{s:5:\"label\";s:14:\"Odor Mean Chey\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Offside\";a:3:{s:5:\"label\";s:7:\"Offside\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Old Standard TT\";a:3:{s:5:\"label\";s:15:\"Old Standard TT\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Oldenburg\";a:3:{s:5:\"label\";s:9:\"Oldenburg\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Oleo Script\";a:3:{s:5:\"label\";s:11:\"Oleo Script\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:22:\"Oleo Script Swash Caps\";a:3:{s:5:\"label\";s:22:\"Oleo Script Swash Caps\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Open Sans\";a:3:{s:5:\"label\";s:9:\"Open Sans\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"800\";i:7;s:9:\"800italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Open Sans Condensed\";a:3:{s:5:\"label\";s:19:\"Open Sans Condensed\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Oranienbaum\";a:3:{s:5:\"label\";s:11:\"Oranienbaum\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Orbitron\";a:3:{s:5:\"label\";s:8:\"Orbitron\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Oregano\";a:3:{s:5:\"label\";s:7:\"Oregano\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Orienta\";a:3:{s:5:\"label\";s:7:\"Orienta\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Original Surfer\";a:3:{s:5:\"label\";s:15:\"Original Surfer\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Oswald\";a:3:{s:5:\"label\";s:6:\"Oswald\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Over the Rainbow\";a:3:{s:5:\"label\";s:16:\"Over the Rainbow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Overlock\";a:3:{s:5:\"label\";s:8:\"Overlock\";s:8:\"variants\";a:6:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:3:\"900\";i:3;s:9:\"900italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Overlock SC\";a:3:{s:5:\"label\";s:11:\"Overlock SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Overpass\";a:3:{s:5:\"label\";s:8:\"Overpass\";s:8:\"variants\";a:16:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:3:\"800\";i:11;s:9:\"800italic\";i:12;s:3:\"900\";i:13;s:9:\"900italic\";i:14;s:6:\"italic\";i:15;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Overpass Mono\";a:3:{s:5:\"label\";s:13:\"Overpass Mono\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:3:\"Ovo\";a:3:{s:5:\"label\";s:3:\"Ovo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Oxygen\";a:3:{s:5:\"label\";s:6:\"Oxygen\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Oxygen Mono\";a:3:{s:5:\"label\";s:11:\"Oxygen Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:7:\"PT Mono\";a:3:{s:5:\"label\";s:7:\"PT Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:7:\"PT Sans\";a:3:{s:5:\"label\";s:7:\"PT Sans\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"PT Sans Caption\";a:3:{s:5:\"label\";s:15:\"PT Sans Caption\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"PT Sans Narrow\";a:3:{s:5:\"label\";s:14:\"PT Sans Narrow\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"PT Serif\";a:3:{s:5:\"label\";s:8:\"PT Serif\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:16:\"PT Serif Caption\";a:3:{s:5:\"label\";s:16:\"PT Serif Caption\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Pacifico\";a:3:{s:5:\"label\";s:8:\"Pacifico\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Padauk\";a:3:{s:5:\"label\";s:6:\"Padauk\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Palanquin\";a:3:{s:5:\"label\";s:9:\"Palanquin\";s:8:\"variants\";a:7:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Palanquin Dark\";a:3:{s:5:\"label\";s:14:\"Palanquin Dark\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Pangolin\";a:3:{s:5:\"label\";s:8:\"Pangolin\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Paprika\";a:3:{s:5:\"label\";s:7:\"Paprika\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Parisienne\";a:3:{s:5:\"label\";s:10:\"Parisienne\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:11:\"Passero One\";a:3:{s:5:\"label\";s:11:\"Passero One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Passion One\";a:3:{s:5:\"label\";s:11:\"Passion One\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:18:\"Pathway Gothic One\";a:3:{s:5:\"label\";s:18:\"Pathway Gothic One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Patrick Hand\";a:3:{s:5:\"label\";s:12:\"Patrick Hand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:15:\"Patrick Hand SC\";a:3:{s:5:\"label\";s:15:\"Patrick Hand SC\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Pattaya\";a:3:{s:5:\"label\";s:7:\"Pattaya\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Patua One\";a:3:{s:5:\"label\";s:9:\"Patua One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Pavanam\";a:3:{s:5:\"label\";s:7:\"Pavanam\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Paytone One\";a:3:{s:5:\"label\";s:11:\"Paytone One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Peddana\";a:3:{s:5:\"label\";s:7:\"Peddana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Peralta\";a:3:{s:5:\"label\";s:7:\"Peralta\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Permanent Marker\";a:3:{s:5:\"label\";s:16:\"Permanent Marker\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:19:\"Petit Formal Script\";a:3:{s:5:\"label\";s:19:\"Petit Formal Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Petrona\";a:3:{s:5:\"label\";s:7:\"Petrona\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Philosopher\";a:3:{s:5:\"label\";s:11:\"Philosopher\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Piedra\";a:3:{s:5:\"label\";s:6:\"Piedra\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Pinyon Script\";a:3:{s:5:\"label\";s:13:\"Pinyon Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Pirata One\";a:3:{s:5:\"label\";s:10:\"Pirata One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Plaster\";a:3:{s:5:\"label\";s:7:\"Plaster\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Play\";a:3:{s:5:\"label\";s:4:\"Play\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Playball\";a:3:{s:5:\"label\";s:8:\"Playball\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Playfair Display\";a:3:{s:5:\"label\";s:16:\"Playfair Display\";s:8:\"variants\";a:6:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:3:\"900\";i:3;s:9:\"900italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:19:\"Playfair Display SC\";a:3:{s:5:\"label\";s:19:\"Playfair Display SC\";s:8:\"variants\";a:6:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:3:\"900\";i:3;s:9:\"900italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Podkova\";a:3:{s:5:\"label\";s:7:\"Podkova\";s:8:\"variants\";a:5:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Poiret One\";a:3:{s:5:\"label\";s:10:\"Poiret One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Poller One\";a:3:{s:5:\"label\";s:10:\"Poller One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Poly\";a:3:{s:5:\"label\";s:4:\"Poly\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Pompiere\";a:3:{s:5:\"label\";s:8:\"Pompiere\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Pontano Sans\";a:3:{s:5:\"label\";s:12:\"Pontano Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Poor Story\";a:3:{s:5:\"label\";s:10:\"Poor Story\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Poppins\";a:3:{s:5:\"label\";s:7:\"Poppins\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Port Lligat Sans\";a:3:{s:5:\"label\";s:16:\"Port Lligat Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Port Lligat Slab\";a:3:{s:5:\"label\";s:16:\"Port Lligat Slab\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Pragati Narrow\";a:3:{s:5:\"label\";s:14:\"Pragati Narrow\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Prata\";a:3:{s:5:\"label\";s:5:\"Prata\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Preahvihear\";a:3:{s:5:\"label\";s:11:\"Preahvihear\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"Press Start 2P\";a:3:{s:5:\"label\";s:14:\"Press Start 2P\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Pridi\";a:3:{s:5:\"label\";s:5:\"Pridi\";s:8:\"variants\";a:6:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Princess Sofia\";a:3:{s:5:\"label\";s:14:\"Princess Sofia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Prociono\";a:3:{s:5:\"label\";s:8:\"Prociono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Prompt\";a:3:{s:5:\"label\";s:6:\"Prompt\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Prosto One\";a:3:{s:5:\"label\";s:10:\"Prosto One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Proza Libre\";a:3:{s:5:\"label\";s:11:\"Proza Libre\";s:8:\"variants\";a:10:{i:0;s:3:\"500\";i:1;s:9:\"500italic\";i:2;s:3:\"600\";i:3;s:9:\"600italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"800\";i:7;s:9:\"800italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Puritan\";a:3:{s:5:\"label\";s:7:\"Puritan\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Purple Purse\";a:3:{s:5:\"label\";s:12:\"Purple Purse\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Quando\";a:3:{s:5:\"label\";s:6:\"Quando\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Quantico\";a:3:{s:5:\"label\";s:8:\"Quantico\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Quattrocento\";a:3:{s:5:\"label\";s:12:\"Quattrocento\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:17:\"Quattrocento Sans\";a:3:{s:5:\"label\";s:17:\"Quattrocento Sans\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Questrial\";a:3:{s:5:\"label\";s:9:\"Questrial\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Quicksand\";a:3:{s:5:\"label\";s:9:\"Quicksand\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Quintessential\";a:3:{s:5:\"label\";s:14:\"Quintessential\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Qwigley\";a:3:{s:5:\"label\";s:7:\"Qwigley\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:15:\"Racing Sans One\";a:3:{s:5:\"label\";s:15:\"Racing Sans One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Radley\";a:3:{s:5:\"label\";s:6:\"Radley\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Rajdhani\";a:3:{s:5:\"label\";s:8:\"Rajdhani\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Rakkas\";a:3:{s:5:\"label\";s:6:\"Rakkas\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Raleway\";a:3:{s:5:\"label\";s:7:\"Raleway\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Raleway Dots\";a:3:{s:5:\"label\";s:12:\"Raleway Dots\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Ramabhadra\";a:3:{s:5:\"label\";s:10:\"Ramabhadra\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Ramaraja\";a:3:{s:5:\"label\";s:8:\"Ramaraja\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Rambla\";a:3:{s:5:\"label\";s:6:\"Rambla\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Rammetto One\";a:3:{s:5:\"label\";s:12:\"Rammetto One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Ranchers\";a:3:{s:5:\"label\";s:8:\"Ranchers\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Rancho\";a:3:{s:5:\"label\";s:6:\"Rancho\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Ranga\";a:3:{s:5:\"label\";s:5:\"Ranga\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Rasa\";a:3:{s:5:\"label\";s:4:\"Rasa\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Rationale\";a:3:{s:5:\"label\";s:9:\"Rationale\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Ravi Prakash\";a:3:{s:5:\"label\";s:12:\"Ravi Prakash\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Redressed\";a:3:{s:5:\"label\";s:9:\"Redressed\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Reem Kufi\";a:3:{s:5:\"label\";s:9:\"Reem Kufi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Reenie Beanie\";a:3:{s:5:\"label\";s:13:\"Reenie Beanie\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Revalia\";a:3:{s:5:\"label\";s:7:\"Revalia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Rhodium Libre\";a:3:{s:5:\"label\";s:13:\"Rhodium Libre\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Ribeye\";a:3:{s:5:\"label\";s:6:\"Ribeye\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Ribeye Marrow\";a:3:{s:5:\"label\";s:13:\"Ribeye Marrow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Righteous\";a:3:{s:5:\"label\";s:9:\"Righteous\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Risque\";a:3:{s:5:\"label\";s:6:\"Risque\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Roboto\";a:3:{s:5:\"label\";s:6:\"Roboto\";s:8:\"variants\";a:12:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"900\";i:9;s:9:\"900italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Roboto Condensed\";a:3:{s:5:\"label\";s:16:\"Roboto Condensed\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:6:\"italic\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Roboto Mono\";a:3:{s:5:\"label\";s:11:\"Roboto Mono\";s:8:\"variants\";a:10:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:11:\"Roboto Slab\";a:3:{s:5:\"label\";s:11:\"Roboto Slab\";s:8:\"variants\";a:4:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Rochester\";a:3:{s:5:\"label\";s:9:\"Rochester\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Rock Salt\";a:3:{s:5:\"label\";s:9:\"Rock Salt\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Rokkitt\";a:3:{s:5:\"label\";s:7:\"Rokkitt\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Romanesco\";a:3:{s:5:\"label\";s:9:\"Romanesco\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Ropa Sans\";a:3:{s:5:\"label\";s:9:\"Ropa Sans\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Rosario\";a:3:{s:5:\"label\";s:7:\"Rosario\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Rosarivo\";a:3:{s:5:\"label\";s:8:\"Rosarivo\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:12:\"Rouge Script\";a:3:{s:5:\"label\";s:12:\"Rouge Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Rozha One\";a:3:{s:5:\"label\";s:9:\"Rozha One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Rubik\";a:3:{s:5:\"label\";s:5:\"Rubik\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:3:\"900\";i:7;s:9:\"900italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Rubik Mono One\";a:3:{s:5:\"label\";s:14:\"Rubik Mono One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:4:\"Ruda\";a:3:{s:5:\"label\";s:4:\"Ruda\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Rufina\";a:3:{s:5:\"label\";s:6:\"Rufina\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Ruge Boogie\";a:3:{s:5:\"label\";s:11:\"Ruge Boogie\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Ruluko\";a:3:{s:5:\"label\";s:6:\"Ruluko\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Rum Raisin\";a:3:{s:5:\"label\";s:10:\"Rum Raisin\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:14:\"Ruslan Display\";a:3:{s:5:\"label\";s:14:\"Ruslan Display\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Russo One\";a:3:{s:5:\"label\";s:9:\"Russo One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Ruthie\";a:3:{s:5:\"label\";s:6:\"Ruthie\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:3:\"Rye\";a:3:{s:5:\"label\";s:3:\"Rye\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Sacramento\";a:3:{s:5:\"label\";s:10:\"Sacramento\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Sahitya\";a:3:{s:5:\"label\";s:7:\"Sahitya\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Sail\";a:3:{s:5:\"label\";s:4:\"Sail\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Saira\";a:3:{s:5:\"label\";s:5:\"Saira\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Saira Condensed\";a:3:{s:5:\"label\";s:15:\"Saira Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:21:\"Saira Extra Condensed\";a:3:{s:5:\"label\";s:21:\"Saira Extra Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:20:\"Saira Semi Condensed\";a:3:{s:5:\"label\";s:20:\"Saira Semi Condensed\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Salsa\";a:3:{s:5:\"label\";s:5:\"Salsa\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Sanchez\";a:3:{s:5:\"label\";s:7:\"Sanchez\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Sancreek\";a:3:{s:5:\"label\";s:8:\"Sancreek\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Sansita\";a:3:{s:5:\"label\";s:7:\"Sansita\";s:8:\"variants\";a:8:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:3:\"800\";i:3;s:9:\"800italic\";i:4;s:3:\"900\";i:5;s:9:\"900italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Sarala\";a:3:{s:5:\"label\";s:6:\"Sarala\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Sarina\";a:3:{s:5:\"label\";s:6:\"Sarina\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Sarpanch\";a:3:{s:5:\"label\";s:8:\"Sarpanch\";s:8:\"variants\";a:6:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Satisfy\";a:3:{s:5:\"label\";s:7:\"Satisfy\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:5:\"Scada\";a:3:{s:5:\"label\";s:5:\"Scada\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Scheherazade\";a:3:{s:5:\"label\";s:12:\"Scheherazade\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Schoolbell\";a:3:{s:5:\"label\";s:10:\"Schoolbell\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Scope One\";a:3:{s:5:\"label\";s:9:\"Scope One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Seaweed Script\";a:3:{s:5:\"label\";s:14:\"Seaweed Script\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Secular One\";a:3:{s:5:\"label\";s:11:\"Secular One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Sedgwick Ave\";a:3:{s:5:\"label\";s:12:\"Sedgwick Ave\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:20:\"Sedgwick Ave Display\";a:3:{s:5:\"label\";s:20:\"Sedgwick Ave Display\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Sevillana\";a:3:{s:5:\"label\";s:9:\"Sevillana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Seymour One\";a:3:{s:5:\"label\";s:11:\"Seymour One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"Shadows Into Light\";a:3:{s:5:\"label\";s:18:\"Shadows Into Light\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:22:\"Shadows Into Light Two\";a:3:{s:5:\"label\";s:22:\"Shadows Into Light Two\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Shanti\";a:3:{s:5:\"label\";s:6:\"Shanti\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Share\";a:3:{s:5:\"label\";s:5:\"Share\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Share Tech\";a:3:{s:5:\"label\";s:10:\"Share Tech\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:15:\"Share Tech Mono\";a:3:{s:5:\"label\";s:15:\"Share Tech Mono\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:9:\"Shojumaru\";a:3:{s:5:\"label\";s:9:\"Shojumaru\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:11:\"Short Stack\";a:3:{s:5:\"label\";s:11:\"Short Stack\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Shrikhand\";a:3:{s:5:\"label\";s:9:\"Shrikhand\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Siemreap\";a:3:{s:5:\"label\";s:8:\"Siemreap\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Sigmar One\";a:3:{s:5:\"label\";s:10:\"Sigmar One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Signika\";a:3:{s:5:\"label\";s:7:\"Signika\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Signika Negative\";a:3:{s:5:\"label\";s:16:\"Signika Negative\";s:8:\"variants\";a:4:{i:0;s:3:\"300\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Simonetta\";a:3:{s:5:\"label\";s:9:\"Simonetta\";s:8:\"variants\";a:4:{i:0;s:3:\"900\";i:1;s:9:\"900italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Sintony\";a:3:{s:5:\"label\";s:7:\"Sintony\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Sirin Stencil\";a:3:{s:5:\"label\";s:13:\"Sirin Stencil\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Six Caps\";a:3:{s:5:\"label\";s:8:\"Six Caps\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Skranji\";a:3:{s:5:\"label\";s:7:\"Skranji\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Slabo 13px\";a:3:{s:5:\"label\";s:10:\"Slabo 13px\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Slabo 27px\";a:3:{s:5:\"label\";s:10:\"Slabo 27px\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Slackey\";a:3:{s:5:\"label\";s:7:\"Slackey\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Smokum\";a:3:{s:5:\"label\";s:6:\"Smokum\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Smythe\";a:3:{s:5:\"label\";s:6:\"Smythe\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Sniglet\";a:3:{s:5:\"label\";s:7:\"Sniglet\";s:8:\"variants\";a:2:{i:0;s:3:\"800\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Snippet\";a:3:{s:5:\"label\";s:7:\"Snippet\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:13:\"Snowburst One\";a:3:{s:5:\"label\";s:13:\"Snowburst One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Sofadi One\";a:3:{s:5:\"label\";s:10:\"Sofadi One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Sofia\";a:3:{s:5:\"label\";s:5:\"Sofia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Song Myung\";a:3:{s:5:\"label\";s:10:\"Song Myung\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Sonsie One\";a:3:{s:5:\"label\";s:10:\"Sonsie One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:16:\"Sorts Mill Goudy\";a:3:{s:5:\"label\";s:16:\"Sorts Mill Goudy\";s:8:\"variants\";a:2:{i:0;s:6:\"italic\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:15:\"Source Code Pro\";a:3:{s:5:\"label\";s:15:\"Source Code Pro\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"600\";i:4;s:3:\"700\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:15:\"Source Sans Pro\";a:3:{s:5:\"label\";s:15:\"Source Sans Pro\";s:8:\"variants\";a:12:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"900\";i:9;s:9:\"900italic\";i:10;s:6:\"italic\";i:11;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Source Serif Pro\";a:3:{s:5:\"label\";s:16:\"Source Serif Pro\";s:8:\"variants\";a:3:{i:0;s:3:\"600\";i:1;s:3:\"700\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Space Mono\";a:3:{s:5:\"label\";s:10:\"Space Mono\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:13:\"Special Elite\";a:3:{s:5:\"label\";s:13:\"Special Elite\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Spectral\";a:3:{s:5:\"label\";s:8:\"Spectral\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:3:\"800\";i:11;s:9:\"800italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Spectral SC\";a:3:{s:5:\"label\";s:11:\"Spectral SC\";s:8:\"variants\";a:14:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"500\";i:5;s:9:\"500italic\";i:6;s:3:\"600\";i:7;s:9:\"600italic\";i:8;s:3:\"700\";i:9;s:9:\"700italic\";i:10;s:3:\"800\";i:11;s:9:\"800italic\";i:12;s:6:\"italic\";i:13;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Spicy Rice\";a:3:{s:5:\"label\";s:10:\"Spicy Rice\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Spinnaker\";a:3:{s:5:\"label\";s:9:\"Spinnaker\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:6:\"Spirax\";a:3:{s:5:\"label\";s:6:\"Spirax\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Squada One\";a:3:{s:5:\"label\";s:10:\"Squada One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Sree Krushnadevaraya\";a:3:{s:5:\"label\";s:20:\"Sree Krushnadevaraya\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Sriracha\";a:3:{s:5:\"label\";s:8:\"Sriracha\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Stalemate\";a:3:{s:5:\"label\";s:9:\"Stalemate\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:13:\"Stalinist One\";a:3:{s:5:\"label\";s:13:\"Stalinist One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Stardos Stencil\";a:3:{s:5:\"label\";s:15:\"Stardos Stencil\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:21:\"Stint Ultra Condensed\";a:3:{s:5:\"label\";s:21:\"Stint Ultra Condensed\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:20:\"Stint Ultra Expanded\";a:3:{s:5:\"label\";s:20:\"Stint Ultra Expanded\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Stoke\";a:3:{s:5:\"label\";s:5:\"Stoke\";s:8:\"variants\";a:2:{i:0;s:3:\"300\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Strait\";a:3:{s:5:\"label\";s:6:\"Strait\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Stylish\";a:3:{s:5:\"label\";s:7:\"Stylish\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:19:\"Sue Ellen Francisco\";a:3:{s:5:\"label\";s:19:\"Sue Ellen Francisco\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Suez One\";a:3:{s:5:\"label\";s:8:\"Suez One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Sumana\";a:3:{s:5:\"label\";s:6:\"Sumana\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Sunflower\";a:3:{s:5:\"label\";s:9:\"Sunflower\";s:8:\"variants\";a:3:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"700\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Sunshiney\";a:3:{s:5:\"label\";s:9:\"Sunshiney\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:16:\"Supermercado One\";a:3:{s:5:\"label\";s:16:\"Supermercado One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Sura\";a:3:{s:5:\"label\";s:4:\"Sura\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Suranna\";a:3:{s:5:\"label\";s:7:\"Suranna\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Suravaram\";a:3:{s:5:\"label\";s:9:\"Suravaram\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Suwannaphum\";a:3:{s:5:\"label\";s:11:\"Suwannaphum\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:18:\"Swanky and Moo Moo\";a:3:{s:5:\"label\";s:18:\"Swanky and Moo Moo\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Syncopate\";a:3:{s:5:\"label\";s:9:\"Syncopate\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Tajawal\";a:3:{s:5:\"label\";s:7:\"Tajawal\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"800\";i:5;s:3:\"900\";i:6;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Tangerine\";a:3:{s:5:\"label\";s:9:\"Tangerine\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Taprom\";a:3:{s:5:\"label\";s:6:\"Taprom\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:5:\"Tauri\";a:3:{s:5:\"label\";s:5:\"Tauri\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:7:\"Taviraj\";a:3:{s:5:\"label\";s:7:\"Taviraj\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Teko\";a:3:{s:5:\"label\";s:4:\"Teko\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Telex\";a:3:{s:5:\"label\";s:5:\"Telex\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"Tenali Ramakrishna\";a:3:{s:5:\"label\";s:18:\"Tenali Ramakrishna\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:10:\"Tenor Sans\";a:3:{s:5:\"label\";s:10:\"Tenor Sans\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Text Me One\";a:3:{s:5:\"label\";s:11:\"Text Me One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:18:\"The Girl Next Door\";a:3:{s:5:\"label\";s:18:\"The Girl Next Door\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Tienne\";a:3:{s:5:\"label\";s:6:\"Tienne\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:3:\"900\";i:2;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Tillana\";a:3:{s:5:\"label\";s:7:\"Tillana\";s:8:\"variants\";a:5:{i:0;s:3:\"500\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";i:4;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:7:\"Timmana\";a:3:{s:5:\"label\";s:7:\"Timmana\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Tinos\";a:3:{s:5:\"label\";s:5:\"Tinos\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:9:\"Titan One\";a:3:{s:5:\"label\";s:9:\"Titan One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:13:\"Titillium Web\";a:3:{s:5:\"label\";s:13:\"Titillium Web\";s:8:\"variants\";a:11:{i:0;s:3:\"200\";i:1;s:9:\"200italic\";i:2;s:3:\"300\";i:3;s:9:\"300italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:3:\"900\";i:9;s:6:\"italic\";i:10;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Trade Winds\";a:3:{s:5:\"label\";s:11:\"Trade Winds\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Trirong\";a:3:{s:5:\"label\";s:7:\"Trirong\";s:8:\"variants\";a:18:{i:0;s:3:\"100\";i:1;s:9:\"100italic\";i:2;s:3:\"200\";i:3;s:9:\"200italic\";i:4;s:3:\"300\";i:5;s:9:\"300italic\";i:6;s:3:\"500\";i:7;s:9:\"500italic\";i:8;s:3:\"600\";i:9;s:9:\"600italic\";i:10;s:3:\"700\";i:11;s:9:\"700italic\";i:12;s:3:\"800\";i:13;s:9:\"800italic\";i:14;s:3:\"900\";i:15;s:9:\"900italic\";i:16;s:6:\"italic\";i:17;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Trocchi\";a:3:{s:5:\"label\";s:7:\"Trocchi\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:7:\"Trochut\";a:3:{s:5:\"label\";s:7:\"Trochut\";s:8:\"variants\";a:3:{i:0;s:3:\"700\";i:1;s:6:\"italic\";i:2;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Trykker\";a:3:{s:5:\"label\";s:7:\"Trykker\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:10:\"Tulpen One\";a:3:{s:5:\"label\";s:10:\"Tulpen One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Ubuntu\";a:3:{s:5:\"label\";s:6:\"Ubuntu\";s:8:\"variants\";a:8:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"700\";i:5;s:9:\"700italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:16:\"Ubuntu Condensed\";a:3:{s:5:\"label\";s:16:\"Ubuntu Condensed\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Ubuntu Mono\";a:3:{s:5:\"label\";s:11:\"Ubuntu Mono\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:5:\"Ultra\";a:3:{s:5:\"label\";s:5:\"Ultra\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:14:\"Uncial Antiqua\";a:3:{s:5:\"label\";s:14:\"Uncial Antiqua\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:8:\"Underdog\";a:3:{s:5:\"label\";s:8:\"Underdog\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Unica One\";a:3:{s:5:\"label\";s:9:\"Unica One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:14:\"UnifrakturCook\";a:3:{s:5:\"label\";s:14:\"UnifrakturCook\";s:8:\"variants\";a:1:{i:0;s:3:\"700\";}s:8:\"category\";s:7:\"display\";}s:18:\"UnifrakturMaguntia\";a:3:{s:5:\"label\";s:18:\"UnifrakturMaguntia\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Unkempt\";a:3:{s:5:\"label\";s:7:\"Unkempt\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Unlock\";a:3:{s:5:\"label\";s:6:\"Unlock\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:4:\"Unna\";a:3:{s:5:\"label\";s:4:\"Unna\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"VT323\";a:3:{s:5:\"label\";s:5:\"VT323\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:9:\"monospace\";}s:11:\"Vampiro One\";a:3:{s:5:\"label\";s:11:\"Vampiro One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:6:\"Varela\";a:3:{s:5:\"label\";s:6:\"Varela\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:12:\"Varela Round\";a:3:{s:5:\"label\";s:12:\"Varela Round\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Vast Shadow\";a:3:{s:5:\"label\";s:11:\"Vast Shadow\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:12:\"Vesper Libre\";a:3:{s:5:\"label\";s:12:\"Vesper Libre\";s:8:\"variants\";a:4:{i:0;s:3:\"500\";i:1;s:3:\"700\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:5:\"Vibur\";a:3:{s:5:\"label\";s:5:\"Vibur\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Vidaloka\";a:3:{s:5:\"label\";s:8:\"Vidaloka\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:4:\"Viga\";a:3:{s:5:\"label\";s:4:\"Viga\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:5:\"Voces\";a:3:{s:5:\"label\";s:5:\"Voces\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:7:\"Volkhov\";a:3:{s:5:\"label\";s:7:\"Volkhov\";s:8:\"variants\";a:4:{i:0;s:3:\"700\";i:1;s:9:\"700italic\";i:2;s:6:\"italic\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Vollkorn\";a:3:{s:5:\"label\";s:8:\"Vollkorn\";s:8:\"variants\";a:8:{i:0;s:3:\"600\";i:1;s:9:\"600italic\";i:2;s:3:\"700\";i:3;s:9:\"700italic\";i:4;s:3:\"900\";i:5;s:9:\"900italic\";i:6;s:6:\"italic\";i:7;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:11:\"Vollkorn SC\";a:3:{s:5:\"label\";s:11:\"Vollkorn SC\";s:8:\"variants\";a:4:{i:0;s:3:\"600\";i:1;s:3:\"700\";i:2;s:3:\"900\";i:3;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:8:\"Voltaire\";a:3:{s:5:\"label\";s:8:\"Voltaire\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:23:\"Waiting for the Sunrise\";a:3:{s:5:\"label\";s:23:\"Waiting for the Sunrise\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:8:\"Wallpoet\";a:3:{s:5:\"label\";s:8:\"Wallpoet\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:15:\"Walter Turncoat\";a:3:{s:5:\"label\";s:15:\"Walter Turncoat\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:6:\"Warnes\";a:3:{s:5:\"label\";s:6:\"Warnes\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Wellfleet\";a:3:{s:5:\"label\";s:9:\"Wellfleet\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:9:\"Wendy One\";a:3:{s:5:\"label\";s:9:\"Wendy One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:8:\"Wire One\";a:3:{s:5:\"label\";s:8:\"Wire One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Work Sans\";a:3:{s:5:\"label\";s:9:\"Work Sans\";s:8:\"variants\";a:9:{i:0;s:3:\"100\";i:1;s:3:\"200\";i:2;s:3:\"300\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";i:7;s:3:\"900\";i:8;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:17:\"Yanone Kaffeesatz\";a:3:{s:5:\"label\";s:17:\"Yanone Kaffeesatz\";s:8:\"variants\";a:4:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:3:\"700\";i:3;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:11:\"Yantramanav\";a:3:{s:5:\"label\";s:11:\"Yantramanav\";s:8:\"variants\";a:6:{i:0;s:3:\"100\";i:1;s:3:\"300\";i:2;s:3:\"500\";i:3;s:3:\"700\";i:4;s:3:\"900\";i:5;s:7:\"regular\";}s:8:\"category\";s:10:\"sans-serif\";}s:9:\"Yatra One\";a:3:{s:5:\"label\";s:9:\"Yatra One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Yellowtail\";a:3:{s:5:\"label\";s:10:\"Yellowtail\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:9:\"Yeon Sung\";a:3:{s:5:\"label\";s:9:\"Yeon Sung\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Yeseva One\";a:3:{s:5:\"label\";s:10:\"Yeseva One\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}s:10:\"Yesteryear\";a:3:{s:5:\"label\";s:10:\"Yesteryear\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:4:\"Yrsa\";a:3:{s:5:\"label\";s:4:\"Yrsa\";s:8:\"variants\";a:5:{i:0;s:3:\"300\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";i:4;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:6:\"Zeyada\";a:3:{s:5:\"label\";s:6:\"Zeyada\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:8:\"category\";s:11:\"handwriting\";}s:10:\"Zilla Slab\";a:3:{s:5:\"label\";s:10:\"Zilla Slab\";s:8:\"variants\";a:10:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:3:\"500\";i:3;s:9:\"500italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";i:6;s:3:\"700\";i:7;s:9:\"700italic\";i:8;s:6:\"italic\";i:9;s:7:\"regular\";}s:8:\"category\";s:5:\"serif\";}s:20:\"Zilla Slab Highlight\";a:3:{s:5:\"label\";s:20:\"Zilla Slab Highlight\";s:8:\"variants\";a:2:{i:0;s:3:\"700\";i:1;s:7:\"regular\";}s:8:\"category\";s:7:\"display\";}}', 'no');
INSERT INTO `skz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1146, '_transient_timeout_wc_product_children_13', '1569393769', 'no'),
(1147, '_transient_wc_product_children_13', 'a:2:{s:3:\"all\";a:3:{i:0;i:39;i:1;i:40;i:2;i:41;}s:7:\"visible\";a:3:{i:0;i:39;i:1;i:40;i:2;i:41;}}', 'no'),
(1148, '_transient_timeout_wc_var_prices_13', '1569393769', 'no'),
(1149, '_transient_wc_var_prices_13', '{\"version\":\"1531653606\",\"4ec41a796cd88a5c6a85e008e6fa7fcd\":{\"price\":{\"39\":\"250.00\",\"40\":\"350.00\",\"41\":\"400.00\"},\"regular_price\":{\"39\":\"300.00\",\"40\":\"400.00\",\"41\":\"500.00\"},\"sale_price\":{\"39\":\"250.00\",\"40\":\"350.00\",\"41\":\"400.00\"}}}', 'no'),
(1150, '_transient_timeout_wc_product_children_25', '1569393769', 'no'),
(1151, '_transient_wc_product_children_25', 'a:2:{s:3:\"all\";a:3:{i:0;i:32;i:1;i:33;i:2;i:34;}s:7:\"visible\";a:3:{i:0;i:32;i:1;i:33;i:2;i:34;}}', 'no'),
(1152, '_transient_timeout_wc_var_prices_25', '1569393769', 'no'),
(1153, '_transient_wc_var_prices_25', '{\"version\":\"1531653606\",\"4ec41a796cd88a5c6a85e008e6fa7fcd\":{\"price\":{\"32\":\"25.00\",\"33\":\"30.00\",\"34\":\"35.00\"},\"regular_price\":{\"32\":\"25.00\",\"33\":\"30.00\",\"34\":\"35.00\"},\"sale_price\":{\"32\":\"25.00\",\"33\":\"30.00\",\"34\":\"35.00\"}}}', 'no'),
(1154, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1566801775;s:15:\"version_checked\";s:6:\"4.9.10\";s:12:\"translations\";a:0:{}}', 'no'),
(1155, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1566801777;s:7:\"checked\";a:7:{s:6:\"baltic\";s:5:\"1.0.2\";s:10:\"storefront\";s:5:\"2.3.2\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";s:23:\"ultimate-ecommerce-shop\";s:5:\"0.3.1\";s:17:\"vw-ecommerce-shop\";s:5:\"0.3.3\";}s:8:\"response\";a:7:{s:6:\"baltic\";a:6:{s:5:\"theme\";s:6:\"baltic\";s:11:\"new_version\";s:5:\"1.1.2\";s:3:\"url\";s:36:\"https://wordpress.org/themes/baltic/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/baltic.1.1.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";b:0;}s:10:\"storefront\";a:6:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.5.3\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.5.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";b:0;}s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:23:\"ultimate-ecommerce-shop\";a:6:{s:5:\"theme\";s:23:\"ultimate-ecommerce-shop\";s:11:\"new_version\";s:5:\"0.3.2\";s:3:\"url\";s:53:\"https://wordpress.org/themes/ultimate-ecommerce-shop/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/theme/ultimate-ecommerce-shop.0.3.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";b:0;}s:17:\"vw-ecommerce-shop\";a:6:{s:5:\"theme\";s:17:\"vw-ecommerce-shop\";s:11:\"new_version\";s:5:\"0.3.8\";s:3:\"url\";s:47:\"https://wordpress.org/themes/vw-ecommerce-shop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/vw-ecommerce-shop.0.3.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:6:\"7.2.14\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1156, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1566801780;s:7:\"checked\";a:11:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:25:\"baltic-kit/baltic-kit.php\";s:5:\"1.0.0\";s:9:\"hello.php\";s:3:\"1.6\";s:19:\"jetpack/jetpack.php\";s:5:\"6.3.2\";s:15:\"kirki/kirki.php\";s:6:\"3.0.33\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.1.9\";s:59:\"campaign-kit-twitter-widget/campaign-kit-twitter-widget.php\";s:5:\"1.0.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.3\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.6.1\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.15.1\";s:33:\"wp-term-images/wp-term-images.php\";s:5:\"1.0.0\";}s:8:\"response\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:15:\"kirki/kirki.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:19:\"w.org/plugins/kirki\";s:4:\"slug\";s:5:\"kirki\";s:6:\"plugin\";s:15:\"kirki/kirki.php\";s:11:\"new_version\";s:6:\"3.0.44\";s:3:\"url\";s:36:\"https://wordpress.org/plugins/kirki/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/kirki.3.0.44.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:58:\"https://ps.w.org/kirki/assets/icon-256x256.png?rev=1330852\";s:2:\"1x\";s:50:\"https://ps.w.org/kirki/assets/icon.svg?rev=1330186\";s:3:\"svg\";s:50:\"https://ps.w.org/kirki/assets/icon.svg?rev=1330186\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/kirki/assets/banner-1544x500.png?rev=1330852\";s:2:\"1x\";s:60:\"https://ps.w.org/kirki/assets/banner-772x250.png?rev=1330852\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:6:\"2.1.17\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:6:\"1.6.17\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:93:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1948167\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1948167\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.21.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.21.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"7.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.7.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";a:0:{}}s:33:\"wp-term-images/wp-term-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-term-images\";s:4:\"slug\";s:14:\"wp-term-images\";s:6:\"plugin\";s:33:\"wp-term-images/wp-term-images.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-term-images/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-term-images.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-term-images/assets/icon-256x256.png?rev=1534007\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-term-images/assets/icon-128x128.png?rev=1534007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-term-images/assets/banner-1544x500.png?rev=1534007\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-term-images/assets/banner-772x250.png?rev=1534007\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `skz_postmeta`
--

CREATE TABLE `skz_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_postmeta`
--

INSERT INTO `skz_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(17, 13, '_wc_review_count', '2'),
(18, 13, '_wc_rating_count', 'a:1:{i:5;i:2;}'),
(19, 13, '_wc_average_rating', '5.00'),
(20, 14, '_wp_attached_file', '2018/06/images.jpg'),
(21, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:18:\"2018/06/images.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 15, '_wp_attached_file', '2018/06/download-1.jpg'),
(23, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:252;s:4:\"file\";s:22:\"2018/06/download-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 16, '_wp_attached_file', '2018/06/download-2.jpg'),
(25, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:206;s:6:\"height\";i:244;s:4:\"file\";s:22:\"2018/06/download-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 17, '_wp_attached_file', '2018/06/download.jpg'),
(27, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2018/06/download.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 13, '_edit_last', '1'),
(29, 13, '_thumbnail_id', '14'),
(30, 13, '_sku', 'iphone6splus'),
(33, 13, '_sale_price_dates_from', ''),
(34, 13, '_sale_price_dates_to', ''),
(35, 13, 'total_sales', '2'),
(36, 13, '_tax_status', 'taxable'),
(37, 13, '_tax_class', ''),
(38, 13, '_manage_stock', 'yes'),
(39, 13, '_backorders', 'no'),
(40, 13, '_sold_individually', 'no'),
(41, 13, '_weight', ''),
(42, 13, '_length', ''),
(43, 13, '_width', ''),
(44, 13, '_height', ''),
(45, 13, '_upsell_ids', 'a:0:{}'),
(46, 13, '_crosssell_ids', 'a:0:{}'),
(47, 13, '_purchase_note', ''),
(48, 13, '_default_attributes', 'a:0:{}'),
(49, 13, '_virtual', 'no'),
(50, 13, '_downloadable', 'no'),
(51, 13, '_product_image_gallery', '15,16,17'),
(52, 13, '_download_limit', '-1'),
(53, 13, '_download_expiry', '-1'),
(54, 13, '_stock', '99'),
(55, 13, '_stock_status', 'instock'),
(56, 13, '_product_version', '3.4.3'),
(58, 13, '_edit_lock', '1531651488:1'),
(211, 19, '_wc_review_count', '0'),
(212, 19, '_wc_rating_count', 'a:0:{}'),
(213, 19, '_wc_average_rating', '0'),
(217, 25, '_wc_review_count', '0'),
(218, 25, '_wc_rating_count', 'a:0:{}'),
(219, 25, '_wc_average_rating', '0'),
(220, 26, '_wp_attached_file', '2018/07/black.jpg'),
(221, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:219;s:6:\"height\";i:230;s:4:\"file\";s:17:\"2018/07/black.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"black-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 27, '_wp_attached_file', '2018/07/red.jpg'),
(223, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2018/07/red.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"red-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"red-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"red-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 28, '_wp_attached_file', '2018/07/white.jpg'),
(225, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1050;s:4:\"file\";s:17:\"2018/07/white.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"white-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"white-600x630.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:630;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"white-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"white-286x300.jpg\";s:5:\"width\";i:286;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"white-768x806.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:806;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"white-975x1024.jpg\";s:5:\"width\";i:975;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"white-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"white-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"white-600x630.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:630;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"white-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 25, '_sku', ''),
(229, 25, '_sale_price_dates_from', ''),
(230, 25, '_sale_price_dates_to', ''),
(231, 25, 'total_sales', '0'),
(232, 25, '_tax_status', 'taxable'),
(233, 25, '_tax_class', ''),
(234, 25, '_manage_stock', 'no'),
(235, 25, '_backorders', 'no'),
(236, 25, '_sold_individually', 'no'),
(237, 25, '_weight', ''),
(238, 25, '_length', ''),
(239, 25, '_width', ''),
(240, 25, '_height', ''),
(241, 25, '_upsell_ids', 'a:0:{}'),
(242, 25, '_crosssell_ids', 'a:0:{}'),
(243, 25, '_purchase_note', ''),
(244, 25, '_default_attributes', 'a:0:{}'),
(245, 25, '_virtual', 'no'),
(246, 25, '_downloadable', 'no'),
(247, 25, '_product_image_gallery', '28,27'),
(248, 25, '_download_limit', '-1'),
(249, 25, '_download_expiry', '-1'),
(250, 25, '_stock', NULL),
(251, 25, '_stock_status', 'instock'),
(252, 25, '_product_attributes', 'a:1:{s:5:\"color\";a:6:{s:4:\"name\";s:5:\"color\";s:5:\"value\";s:19:\"Red | White | Green\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(253, 25, '_product_version', '3.4.3'),
(254, 25, '_edit_lock', '1531651487:1'),
(255, 25, '_edit_last', '1'),
(256, 25, '_thumbnail_id', '26'),
(332, 32, '_variation_description', ''),
(333, 32, '_sku', ''),
(334, 32, '_regular_price', '25'),
(335, 32, '_sale_price', ''),
(336, 32, '_sale_price_dates_from', ''),
(337, 32, '_sale_price_dates_to', ''),
(338, 32, 'total_sales', '0'),
(339, 32, '_tax_status', 'taxable'),
(340, 32, '_tax_class', 'parent'),
(341, 32, '_manage_stock', 'no'),
(342, 32, '_backorders', 'no'),
(343, 32, '_sold_individually', 'no'),
(344, 32, '_weight', ''),
(345, 32, '_length', ''),
(346, 32, '_width', ''),
(347, 32, '_height', ''),
(348, 32, '_upsell_ids', 'a:0:{}'),
(349, 32, '_crosssell_ids', 'a:0:{}'),
(350, 32, '_purchase_note', ''),
(351, 32, '_default_attributes', 'a:0:{}'),
(352, 32, '_virtual', 'no'),
(353, 32, '_downloadable', 'no'),
(354, 32, '_product_image_gallery', ''),
(355, 32, '_download_limit', '-1'),
(356, 32, '_download_expiry', '-1'),
(357, 32, '_stock', NULL),
(358, 32, '_stock_status', 'instock'),
(359, 32, '_wc_average_rating', '0'),
(360, 32, '_wc_rating_count', 'a:0:{}'),
(361, 32, '_wc_review_count', '0'),
(362, 32, '_downloadable_files', 'a:0:{}'),
(363, 32, 'attribute_color', 'Red'),
(364, 32, '_price', '25'),
(365, 32, '_product_version', '3.4.3'),
(366, 33, '_variation_description', ''),
(367, 33, '_sku', ''),
(368, 33, '_regular_price', '30'),
(369, 33, '_sale_price', ''),
(370, 33, '_sale_price_dates_from', ''),
(371, 33, '_sale_price_dates_to', ''),
(372, 33, 'total_sales', '0'),
(373, 33, '_tax_status', 'taxable'),
(374, 33, '_tax_class', 'parent'),
(375, 33, '_manage_stock', 'no'),
(376, 33, '_backorders', 'no'),
(377, 33, '_sold_individually', 'no'),
(378, 33, '_weight', ''),
(379, 33, '_length', ''),
(380, 33, '_width', ''),
(381, 33, '_height', ''),
(382, 33, '_upsell_ids', 'a:0:{}'),
(383, 33, '_crosssell_ids', 'a:0:{}'),
(384, 33, '_purchase_note', ''),
(385, 33, '_default_attributes', 'a:0:{}'),
(386, 33, '_virtual', 'no'),
(387, 33, '_downloadable', 'no'),
(388, 33, '_product_image_gallery', ''),
(389, 33, '_download_limit', '-1'),
(390, 33, '_download_expiry', '-1'),
(391, 33, '_stock', NULL),
(392, 33, '_stock_status', 'instock'),
(393, 33, '_wc_average_rating', '0'),
(394, 33, '_wc_rating_count', 'a:0:{}'),
(395, 33, '_wc_review_count', '0'),
(396, 33, '_downloadable_files', 'a:0:{}'),
(397, 33, 'attribute_color', 'White'),
(398, 33, '_price', '30'),
(399, 33, '_product_version', '3.4.3'),
(400, 34, '_variation_description', ''),
(401, 34, '_sku', ''),
(402, 34, '_regular_price', '35'),
(403, 34, '_sale_price', ''),
(404, 34, '_sale_price_dates_from', ''),
(405, 34, '_sale_price_dates_to', ''),
(406, 34, 'total_sales', '0'),
(407, 34, '_tax_status', 'taxable'),
(408, 34, '_tax_class', 'parent'),
(409, 34, '_manage_stock', 'no'),
(410, 34, '_backorders', 'no'),
(411, 34, '_sold_individually', 'no'),
(412, 34, '_weight', ''),
(413, 34, '_length', ''),
(414, 34, '_width', ''),
(415, 34, '_height', ''),
(416, 34, '_upsell_ids', 'a:0:{}'),
(417, 34, '_crosssell_ids', 'a:0:{}'),
(418, 34, '_purchase_note', ''),
(419, 34, '_default_attributes', 'a:0:{}'),
(420, 34, '_virtual', 'no'),
(421, 34, '_downloadable', 'no'),
(422, 34, '_product_image_gallery', ''),
(423, 34, '_download_limit', '-1'),
(424, 34, '_download_expiry', '-1'),
(425, 34, '_stock', NULL),
(426, 34, '_stock_status', 'instock'),
(427, 34, '_wc_average_rating', '0'),
(428, 34, '_wc_rating_count', 'a:0:{}'),
(429, 34, '_wc_review_count', '0'),
(430, 34, '_downloadable_files', 'a:0:{}'),
(431, 34, 'attribute_color', 'Green'),
(432, 34, '_price', '35'),
(433, 34, '_product_version', '3.4.3'),
(436, 25, '_price', '25'),
(437, 25, '_price', '30'),
(438, 25, '_price', '35'),
(439, 25, '_regular_price', ''),
(440, 25, '_sale_price', ''),
(441, 13, '_product_attributes', 'a:2:{s:5:\"color\";a:6:{s:4:\"name\";s:5:\"Color\";s:5:\"value\";s:20:\"gold | White | Black\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}s:16:\"internal-storage\";a:6:{s:4:\"name\";s:16:\"Internal Storage\";s:5:\"value\";s:19:\"32GB | 64GB | 128GB\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(546, 39, '_variation_description', ''),
(547, 39, '_sku', ''),
(548, 39, '_regular_price', '300'),
(549, 39, '_sale_price', '250'),
(550, 39, '_sale_price_dates_from', ''),
(551, 39, '_sale_price_dates_to', ''),
(552, 39, 'total_sales', '0'),
(553, 39, '_tax_status', 'taxable'),
(554, 39, '_tax_class', 'parent'),
(555, 39, '_manage_stock', 'no'),
(556, 39, '_backorders', 'no'),
(557, 39, '_sold_individually', 'no'),
(558, 39, '_weight', ''),
(559, 39, '_length', ''),
(560, 39, '_width', ''),
(561, 39, '_height', ''),
(562, 39, '_upsell_ids', 'a:0:{}'),
(563, 39, '_crosssell_ids', 'a:0:{}'),
(564, 39, '_purchase_note', ''),
(565, 39, '_default_attributes', 'a:0:{}'),
(566, 39, '_virtual', 'no'),
(567, 39, '_downloadable', 'no'),
(568, 39, '_product_image_gallery', ''),
(569, 39, '_download_limit', '-1'),
(570, 39, '_download_expiry', '-1'),
(571, 39, '_stock', '0'),
(572, 39, '_stock_status', 'instock'),
(573, 39, '_wc_average_rating', '0'),
(574, 39, '_wc_rating_count', 'a:0:{}'),
(575, 39, '_wc_review_count', '0'),
(576, 39, '_downloadable_files', 'a:0:{}'),
(577, 39, 'attribute_internal-storage', '32GB'),
(578, 39, '_price', '250'),
(579, 39, '_product_version', '3.4.3'),
(580, 40, '_variation_description', ''),
(581, 40, '_sku', ''),
(582, 40, '_regular_price', '400'),
(583, 40, '_sale_price', '350'),
(584, 40, '_sale_price_dates_from', ''),
(585, 40, '_sale_price_dates_to', ''),
(586, 40, 'total_sales', '0'),
(587, 40, '_tax_status', 'taxable'),
(588, 40, '_tax_class', 'parent'),
(589, 40, '_manage_stock', 'no'),
(590, 40, '_backorders', 'no'),
(591, 40, '_sold_individually', 'no'),
(592, 40, '_weight', ''),
(593, 40, '_length', ''),
(594, 40, '_width', ''),
(595, 40, '_height', ''),
(596, 40, '_upsell_ids', 'a:0:{}'),
(597, 40, '_crosssell_ids', 'a:0:{}'),
(598, 40, '_purchase_note', ''),
(599, 40, '_default_attributes', 'a:0:{}'),
(600, 40, '_virtual', 'no'),
(601, 40, '_downloadable', 'no'),
(602, 40, '_product_image_gallery', ''),
(603, 40, '_download_limit', '-1'),
(604, 40, '_download_expiry', '-1'),
(605, 40, '_stock', '0'),
(606, 40, '_stock_status', 'instock'),
(607, 40, '_wc_average_rating', '0'),
(608, 40, '_wc_rating_count', 'a:0:{}'),
(609, 40, '_wc_review_count', '0'),
(610, 40, '_downloadable_files', 'a:0:{}'),
(611, 40, 'attribute_internal-storage', '64GB'),
(612, 40, '_price', '350'),
(613, 40, '_product_version', '3.4.3'),
(614, 41, '_variation_description', ''),
(615, 41, '_sku', ''),
(616, 41, '_regular_price', '500'),
(617, 41, '_sale_price', '400'),
(618, 41, '_sale_price_dates_from', ''),
(619, 41, '_sale_price_dates_to', ''),
(620, 41, 'total_sales', '0'),
(621, 41, '_tax_status', 'taxable'),
(622, 41, '_tax_class', 'parent'),
(623, 41, '_manage_stock', 'no'),
(624, 41, '_backorders', 'no'),
(625, 41, '_sold_individually', 'no'),
(626, 41, '_weight', ''),
(627, 41, '_length', ''),
(628, 41, '_width', ''),
(629, 41, '_height', ''),
(630, 41, '_upsell_ids', 'a:0:{}'),
(631, 41, '_crosssell_ids', 'a:0:{}'),
(632, 41, '_purchase_note', ''),
(633, 41, '_default_attributes', 'a:0:{}'),
(634, 41, '_virtual', 'no'),
(635, 41, '_downloadable', 'no'),
(636, 41, '_product_image_gallery', ''),
(637, 41, '_download_limit', '-1'),
(638, 41, '_download_expiry', '-1'),
(639, 41, '_stock', '0'),
(640, 41, '_stock_status', 'instock'),
(641, 41, '_wc_average_rating', '0'),
(642, 41, '_wc_rating_count', 'a:0:{}'),
(643, 41, '_wc_review_count', '0'),
(644, 41, '_downloadable_files', 'a:0:{}'),
(645, 41, 'attribute_internal-storage', '128GB'),
(646, 41, '_price', '400'),
(647, 41, '_product_version', '3.4.3'),
(674, 13, '_price', '250'),
(675, 13, '_price', '350'),
(676, 13, '_price', '400'),
(677, 13, '_regular_price', ''),
(678, 13, '_sale_price', ''),
(679, 44, '_order_key', 'wc_order_5b4b13dbe8a8b'),
(680, 44, '_customer_user', '1'),
(681, 44, '_payment_method', 'paypal'),
(682, 44, '_payment_method_title', 'PayPal'),
(683, 44, '_transaction_id', ''),
(684, 44, '_customer_ip_address', '::1'),
(685, 44, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(686, 44, '_created_via', 'checkout'),
(687, 44, '_date_completed', ''),
(688, 44, '_completed_date', ''),
(689, 44, '_date_paid', ''),
(690, 44, '_paid_date', ''),
(691, 44, '_cart_hash', 'fce67f9a080272c915d5367c49b3678c'),
(692, 44, '_billing_first_name', 'dfd'),
(693, 44, '_billing_last_name', 'fdfdf'),
(694, 44, '_billing_company', 'Mr.'),
(695, 44, '_billing_address_1', 'C5 Defence view'),
(696, 44, '_billing_address_2', ''),
(697, 44, '_billing_city', 'Karachi'),
(698, 44, '_billing_state', 'BA'),
(699, 44, '_billing_postcode', '71000'),
(700, 44, '_billing_country', 'PK'),
(701, 44, '_billing_email', 'shakzee171@gmail.com'),
(702, 44, '_billing_phone', '03337276335'),
(703, 44, '_shipping_first_name', 'dfd'),
(704, 44, '_shipping_last_name', 'fdfdf'),
(705, 44, '_shipping_company', 'Mr.'),
(706, 44, '_shipping_address_1', 'C5 Defence view'),
(707, 44, '_shipping_address_2', ''),
(708, 44, '_shipping_city', 'Karachi'),
(709, 44, '_shipping_state', 'BA'),
(710, 44, '_shipping_postcode', '71000'),
(711, 44, '_shipping_country', 'PK'),
(712, 44, '_order_currency', 'USD'),
(713, 44, '_cart_discount', '0'),
(714, 44, '_cart_discount_tax', '0'),
(715, 44, '_order_shipping', '2.00'),
(716, 44, '_order_shipping_tax', '0'),
(717, 44, '_order_tax', '0'),
(718, 44, '_order_total', '402.00'),
(719, 44, '_order_version', '3.4.3'),
(720, 44, '_prices_include_tax', 'no'),
(721, 44, '_billing_address_index', 'dfd fdfdf Mr. C5 Defence view  Karachi BA 71000 PK shakzee171@gmail.com 03337276335'),
(722, 44, '_shipping_address_index', 'dfd fdfdf Mr. C5 Defence view  Karachi BA 71000 PK'),
(723, 45, '_order_key', 'wc_order_5b4b173192e3c'),
(724, 45, '_customer_user', '1'),
(725, 45, '_payment_method', 'paypal'),
(726, 45, '_payment_method_title', 'PayPal'),
(727, 45, '_transaction_id', ''),
(728, 45, '_customer_ip_address', '::1'),
(729, 45, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(730, 45, '_created_via', 'checkout'),
(731, 45, '_date_completed', ''),
(732, 45, '_completed_date', ''),
(733, 45, '_date_paid', ''),
(734, 45, '_paid_date', ''),
(735, 45, '_cart_hash', 'fce67f9a080272c915d5367c49b3678c'),
(736, 45, '_billing_first_name', 'dfd'),
(737, 45, '_billing_last_name', 'fdfdf'),
(738, 45, '_billing_company', 'Mr.'),
(739, 45, '_billing_address_1', 'C5 Defence view'),
(740, 45, '_billing_address_2', ''),
(741, 45, '_billing_city', 'Karachi'),
(742, 45, '_billing_state', 'BA'),
(743, 45, '_billing_postcode', '71000'),
(744, 45, '_billing_country', 'PK'),
(745, 45, '_billing_email', 'shakzee171@gmail.com'),
(746, 45, '_billing_phone', '03337276335'),
(747, 45, '_shipping_first_name', 'dfd'),
(748, 45, '_shipping_last_name', 'fdfdf'),
(749, 45, '_shipping_company', 'Mr.'),
(750, 45, '_shipping_address_1', 'C5 Defence view'),
(751, 45, '_shipping_address_2', ''),
(752, 45, '_shipping_city', 'Karachi'),
(753, 45, '_shipping_state', 'BA'),
(754, 45, '_shipping_postcode', '71000'),
(755, 45, '_shipping_country', 'PK'),
(756, 45, '_order_currency', 'USD'),
(757, 45, '_cart_discount', '0'),
(758, 45, '_cart_discount_tax', '0'),
(759, 45, '_order_shipping', '2.00'),
(760, 45, '_order_shipping_tax', '0'),
(761, 45, '_order_tax', '0'),
(762, 45, '_order_total', '402.00'),
(763, 45, '_order_version', '3.4.3'),
(764, 45, '_prices_include_tax', 'no'),
(765, 45, '_billing_address_index', 'dfd fdfdf Mr. C5 Defence view  Karachi BA 71000 PK shakzee171@gmail.com 03337276335'),
(766, 45, '_shipping_address_index', 'dfd fdfdf Mr. C5 Defence view  Karachi BA 71000 PK'),
(767, 46, '_edit_last', '1'),
(768, 46, '_wp_page_template', 'default'),
(769, 46, '_edit_lock', '1531648629:1'),
(775, 51, '_edit_last', '1'),
(776, 51, '_edit_lock', '1531650116:1'),
(777, 51, 'discount_type', 'percent'),
(778, 51, 'coupon_amount', '100'),
(779, 51, 'individual_use', 'yes'),
(780, 51, 'product_ids', '13'),
(781, 51, 'exclude_product_ids', ''),
(782, 51, 'usage_limit', '200'),
(783, 51, 'usage_limit_per_user', '1'),
(784, 51, 'limit_usage_to_x_items', '0'),
(785, 51, 'usage_count', '1'),
(786, 51, 'date_expires', '1531785600'),
(787, 51, 'expiry_date', '2018-07-17'),
(788, 51, 'free_shipping', 'no'),
(789, 51, 'product_categories', 'a:0:{}'),
(790, 51, 'exclude_product_categories', 'a:0:{}'),
(791, 51, 'exclude_sale_items', 'no'),
(792, 51, 'minimum_amount', ''),
(793, 51, 'maximum_amount', ''),
(794, 51, 'customer_email', 'a:0:{}'),
(795, 52, '_order_key', 'wc_order_5b4b1fecc0e0f'),
(796, 52, '_customer_user', '1'),
(797, 52, '_payment_method', ''),
(798, 52, '_payment_method_title', ''),
(799, 52, '_transaction_id', ''),
(800, 52, '_customer_ip_address', '::1'),
(801, 52, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(802, 52, '_created_via', 'checkout'),
(803, 52, '_date_completed', '1531650393'),
(804, 52, '_completed_date', '2018-07-15 10:26:33'),
(805, 52, '_date_paid', '1531650029'),
(806, 52, '_paid_date', '2018-07-15 10:20:29'),
(807, 52, '_cart_hash', '11b09310404ca68817280083013ae140'),
(808, 52, '_billing_first_name', 'dfd'),
(809, 52, '_billing_last_name', 'fdfdf'),
(810, 52, '_billing_company', 'Mr.'),
(811, 52, '_billing_address_1', 'C5 Defence view'),
(812, 52, '_billing_address_2', ''),
(813, 52, '_billing_city', 'Karachi'),
(814, 52, '_billing_state', 'BA'),
(815, 52, '_billing_postcode', '71000'),
(816, 52, '_billing_country', 'PK'),
(817, 52, '_billing_email', 'shakzee171@gmail.com'),
(818, 52, '_billing_phone', '03337276335'),
(819, 52, '_shipping_first_name', ''),
(820, 52, '_shipping_last_name', ''),
(821, 52, '_shipping_company', ''),
(822, 52, '_shipping_address_1', ''),
(823, 52, '_shipping_address_2', ''),
(824, 52, '_shipping_city', ''),
(825, 52, '_shipping_state', ''),
(826, 52, '_shipping_postcode', ''),
(827, 52, '_shipping_country', ''),
(828, 52, '_order_currency', 'USD'),
(829, 52, '_cart_discount', '250'),
(830, 52, '_cart_discount_tax', '0'),
(831, 52, '_order_shipping', '0.00'),
(832, 52, '_order_shipping_tax', '0'),
(833, 52, '_order_tax', '0'),
(834, 52, '_order_total', '0.00'),
(835, 52, '_order_version', '3.4.3'),
(836, 52, '_prices_include_tax', 'no'),
(837, 52, '_billing_address_index', 'dfd fdfdf Mr. C5 Defence view  Karachi BA 71000 PK shakzee171@gmail.com 03337276335'),
(838, 52, '_shipping_address_index', '        '),
(839, 52, '_download_permissions_granted', 'yes'),
(840, 52, '_recorded_sales', 'yes'),
(841, 52, '_recorded_coupon_usage_counts', 'yes'),
(842, 51, '_used_by', '1'),
(843, 52, '_order_stock_reduced', 'yes'),
(844, 52, '_edit_lock', '1531650171:1'),
(845, 45, '_edit_lock', '1531650269:1'),
(846, 53, '_order_key', 'wc_order_5b4b21e890905'),
(847, 53, '_customer_user', '1'),
(848, 53, '_payment_method', ''),
(849, 53, '_payment_method_title', ''),
(850, 53, '_transaction_id', ''),
(851, 53, '_customer_ip_address', ''),
(852, 53, '_customer_user_agent', ''),
(853, 53, '_created_via', 'admin'),
(854, 53, '_date_completed', '1531650536'),
(855, 53, '_completed_date', '2018-07-15 10:28:56'),
(856, 53, '_date_paid', ''),
(857, 53, '_paid_date', ''),
(858, 53, '_cart_hash', ''),
(859, 53, '_billing_first_name', 'dfd'),
(860, 53, '_billing_last_name', 'fdfdf'),
(861, 53, '_billing_company', 'Mr.'),
(862, 53, '_billing_address_1', 'C5 Defence view'),
(863, 53, '_billing_address_2', ''),
(864, 53, '_billing_city', 'Karachi'),
(865, 53, '_billing_state', ''),
(866, 53, '_billing_postcode', '71000'),
(867, 53, '_billing_country', 'PK'),
(868, 53, '_billing_email', 'shakzee171@gmail.com'),
(869, 53, '_billing_phone', '03337276335'),
(870, 53, '_shipping_first_name', 'dfd'),
(871, 53, '_shipping_last_name', 'fdfdf'),
(872, 53, '_shipping_company', 'Mr.'),
(873, 53, '_shipping_address_1', 'C5 Defence view'),
(874, 53, '_shipping_address_2', ''),
(875, 53, '_shipping_city', 'Karachi'),
(876, 53, '_shipping_state', ''),
(877, 53, '_shipping_postcode', '71000'),
(878, 53, '_shipping_country', 'PK'),
(879, 53, '_order_currency', 'USD'),
(880, 53, '_cart_discount', '0'),
(881, 53, '_cart_discount_tax', '0'),
(882, 53, '_order_shipping', '0'),
(883, 53, '_order_shipping_tax', '0'),
(884, 53, '_order_tax', '0'),
(885, 53, '_order_total', '250.00'),
(886, 53, '_order_version', '3.4.3'),
(887, 53, '_prices_include_tax', 'no'),
(888, 53, '_billing_address_index', 'dfd fdfdf Mr. C5 Defence view  Karachi  71000 PK shakzee171@gmail.com 03337276335'),
(889, 53, '_shipping_address_index', 'dfd fdfdf Mr. C5 Defence view  Karachi  71000 PK'),
(890, 53, '_edit_last', '1'),
(891, 53, '_download_permissions_granted', 'yes'),
(892, 53, '_recorded_sales', 'yes'),
(893, 53, '_recorded_coupon_usage_counts', 'yes'),
(894, 53, '_edit_lock', '1531650399:1'),
(895, 54, '_edit_last', '1'),
(896, 54, '_edit_lock', '1531652262:1'),
(897, 54, '_wp_page_template', 'page-template/custom-home-page.php'),
(898, 57, '_wp_attached_file', '2018/07/A_party_tray_of_sliders_at_a_restaurant.jpg'),
(899, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:686;s:4:\"file\";s:51:\"2018/07/A_party_tray_of_sliders_at_a_restaurant.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-768x439.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:52:\"A_party_tray_of_sliders_at_a_restaurant-1024x585.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"vw-ecommerce-shop-homepage-thumb\";a:4:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-600x343.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-600x343.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"A_party_tray_of_sliders_at_a_restaurant-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(900, 58, '_wp_attached_file', '2018/07/download-3.jpg'),
(901, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:282;s:6:\"height\";i:179;s:4:\"file\";s:22:\"2018/07/download-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"vw-ecommerce-shop-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"download-3-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(902, 59, '_wp_attached_file', '2018/07/images-1.jpg'),
(903, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:168;s:4:\"file\";s:20:\"2018/07/images-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"vw-ecommerce-shop-homepage-thumb\";a:4:{s:4:\"file\";s:20:\"images-1-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(904, 56, '_edit_last', '1'),
(905, 56, '_thumbnail_id', '59'),
(906, 56, '_wp_page_template', 'default'),
(907, 56, '_edit_lock', '1531651020:1'),
(908, 61, '_edit_last', '1'),
(909, 61, '_edit_lock', '1531651045:1'),
(910, 61, '_thumbnail_id', '58'),
(911, 61, '_wp_page_template', 'default'),
(912, 63, '_edit_last', '1'),
(913, 63, '_edit_lock', '1531651075:1'),
(914, 63, '_thumbnail_id', '57'),
(915, 63, '_wp_page_template', 'default'),
(919, 66, '_menu_item_type', 'post_type'),
(920, 66, '_menu_item_menu_item_parent', '0'),
(921, 66, '_menu_item_object_id', '54'),
(922, 66, '_menu_item_object', 'page'),
(923, 66, '_menu_item_target', ''),
(924, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(925, 66, '_menu_item_xfn', ''),
(926, 66, '_menu_item_url', ''),
(928, 67, '_menu_item_type', 'post_type'),
(929, 67, '_menu_item_menu_item_parent', '0'),
(930, 67, '_menu_item_object_id', '5'),
(931, 67, '_menu_item_object', 'page'),
(932, 67, '_menu_item_target', ''),
(933, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(934, 67, '_menu_item_xfn', ''),
(935, 67, '_menu_item_url', ''),
(937, 68, '_menu_item_type', 'post_type'),
(938, 68, '_menu_item_menu_item_parent', '0'),
(939, 68, '_menu_item_object_id', '6'),
(940, 68, '_menu_item_object', 'page'),
(941, 68, '_menu_item_target', ''),
(942, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(943, 68, '_menu_item_xfn', ''),
(944, 68, '_menu_item_url', ''),
(946, 69, '_menu_item_type', 'post_type'),
(947, 69, '_menu_item_menu_item_parent', '0'),
(948, 69, '_menu_item_object_id', '54'),
(949, 69, '_menu_item_object', 'page'),
(950, 69, '_menu_item_target', ''),
(951, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(952, 69, '_menu_item_xfn', ''),
(953, 69, '_menu_item_url', ''),
(955, 70, '_menu_item_type', 'post_type'),
(956, 70, '_menu_item_menu_item_parent', '0'),
(957, 70, '_menu_item_object_id', '7'),
(958, 70, '_menu_item_object', 'page'),
(959, 70, '_menu_item_target', ''),
(960, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(961, 70, '_menu_item_xfn', ''),
(962, 70, '_menu_item_url', ''),
(964, 71, '_menu_item_type', 'post_type'),
(965, 71, '_menu_item_menu_item_parent', '0'),
(966, 71, '_menu_item_object_id', '46'),
(967, 71, '_menu_item_object', 'page'),
(968, 71, '_menu_item_target', ''),
(969, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(970, 71, '_menu_item_xfn', ''),
(971, 71, '_menu_item_url', ''),
(973, 72, '_menu_item_type', 'post_type'),
(974, 72, '_menu_item_menu_item_parent', '0'),
(975, 72, '_menu_item_object_id', '2'),
(976, 72, '_menu_item_object', 'page'),
(977, 72, '_menu_item_target', ''),
(978, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(979, 72, '_menu_item_xfn', ''),
(980, 72, '_menu_item_url', ''),
(982, 73, '_menu_item_type', 'post_type'),
(983, 73, '_menu_item_menu_item_parent', '0'),
(984, 73, '_menu_item_object_id', '4'),
(985, 73, '_menu_item_object', 'page'),
(986, 73, '_menu_item_target', ''),
(987, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(988, 73, '_menu_item_xfn', ''),
(989, 73, '_menu_item_url', ''),
(991, 74, '_menu_item_type', 'post_type'),
(992, 74, '_menu_item_menu_item_parent', '0'),
(993, 74, '_menu_item_object_id', '56'),
(994, 74, '_menu_item_object', 'page'),
(995, 74, '_menu_item_target', ''),
(996, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(997, 74, '_menu_item_xfn', ''),
(998, 74, '_menu_item_url', ''),
(999, 74, '_menu_item_orphaned', '1531651273'),
(1000, 75, '_menu_item_type', 'post_type'),
(1001, 75, '_menu_item_menu_item_parent', '0'),
(1002, 75, '_menu_item_object_id', '61'),
(1003, 75, '_menu_item_object', 'page'),
(1004, 75, '_menu_item_target', ''),
(1005, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1006, 75, '_menu_item_xfn', ''),
(1007, 75, '_menu_item_url', ''),
(1008, 75, '_menu_item_orphaned', '1531651273'),
(1009, 76, '_menu_item_type', 'post_type'),
(1010, 76, '_menu_item_menu_item_parent', '0'),
(1011, 76, '_menu_item_object_id', '63'),
(1012, 76, '_menu_item_object', 'page'),
(1013, 76, '_menu_item_target', ''),
(1014, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1015, 76, '_menu_item_xfn', ''),
(1016, 76, '_menu_item_url', ''),
(1017, 76, '_menu_item_orphaned', '1531651273'),
(1027, 80, '_edit_last', '1'),
(1028, 80, '_edit_lock', '1531653504:1'),
(1029, 80, '_wp_page_template', 'default'),
(1037, 89, '_edit_last', '1'),
(1038, 89, '_edit_lock', '1531652876:1'),
(1117, 95, '_wc_review_count', '0'),
(1118, 95, '_wc_rating_count', 'a:0:{}'),
(1119, 95, '_wc_average_rating', '0'),
(1120, 95, '_edit_last', '1'),
(1121, 95, '_edit_lock', '1531653342:1'),
(1122, 95, '_thumbnail_id', '27'),
(1123, 95, '_sku', ''),
(1124, 95, '_regular_price', '250'),
(1125, 95, '_sale_price', '200'),
(1126, 95, '_sale_price_dates_from', ''),
(1127, 95, '_sale_price_dates_to', ''),
(1128, 95, 'total_sales', '0'),
(1129, 95, '_tax_status', 'taxable'),
(1130, 95, '_tax_class', ''),
(1131, 95, '_manage_stock', 'no'),
(1132, 95, '_backorders', 'no'),
(1133, 95, '_sold_individually', 'no'),
(1134, 95, '_weight', ''),
(1135, 95, '_length', ''),
(1136, 95, '_width', ''),
(1137, 95, '_height', ''),
(1138, 95, '_upsell_ids', 'a:0:{}'),
(1139, 95, '_crosssell_ids', 'a:0:{}'),
(1140, 95, '_purchase_note', ''),
(1141, 95, '_default_attributes', 'a:0:{}'),
(1142, 95, '_virtual', 'no'),
(1143, 95, '_downloadable', 'no'),
(1144, 95, '_product_image_gallery', '26,28'),
(1145, 95, '_download_limit', '-1'),
(1146, 95, '_download_expiry', '-1'),
(1147, 95, '_stock', NULL),
(1148, 95, '_stock_status', 'instock'),
(1149, 95, '_product_version', '3.4.3'),
(1150, 95, '_price', '200'),
(1151, 96, '_wc_review_count', '0'),
(1152, 96, '_wc_rating_count', 'a:0:{}'),
(1153, 96, '_wc_average_rating', '0'),
(1154, 96, '_edit_last', '1'),
(1155, 96, '_edit_lock', '1531653383:1'),
(1156, 96, '_thumbnail_id', '28'),
(1157, 96, '_sku', ''),
(1158, 96, '_regular_price', '300'),
(1159, 96, '_sale_price', '250'),
(1160, 96, '_sale_price_dates_from', ''),
(1161, 96, '_sale_price_dates_to', ''),
(1162, 96, 'total_sales', '0'),
(1163, 96, '_tax_status', 'taxable'),
(1164, 96, '_tax_class', ''),
(1165, 96, '_manage_stock', 'no'),
(1166, 96, '_backorders', 'no'),
(1167, 96, '_sold_individually', 'no'),
(1168, 96, '_weight', ''),
(1169, 96, '_length', ''),
(1170, 96, '_width', ''),
(1171, 96, '_height', ''),
(1172, 96, '_upsell_ids', 'a:0:{}'),
(1173, 96, '_crosssell_ids', 'a:0:{}'),
(1174, 96, '_purchase_note', ''),
(1175, 96, '_default_attributes', 'a:0:{}'),
(1176, 96, '_virtual', 'no'),
(1177, 96, '_downloadable', 'no'),
(1178, 96, '_product_image_gallery', '26,27'),
(1179, 96, '_download_limit', '-1'),
(1180, 96, '_download_expiry', '-1'),
(1181, 96, '_stock', NULL),
(1182, 96, '_stock_status', 'instock'),
(1183, 96, '_product_version', '3.4.3'),
(1184, 96, '_price', '250'),
(1185, 97, '_wc_review_count', '0'),
(1186, 97, '_wc_rating_count', 'a:0:{}'),
(1187, 97, '_wc_average_rating', '0'),
(1188, 97, '_edit_last', '1'),
(1189, 97, '_edit_lock', '1531653430:1'),
(1190, 97, '_thumbnail_id', '27'),
(1191, 97, '_sku', ''),
(1192, 97, '_regular_price', '500'),
(1193, 97, '_sale_price', '250'),
(1194, 97, '_sale_price_dates_from', ''),
(1195, 97, '_sale_price_dates_to', ''),
(1196, 97, 'total_sales', '0'),
(1197, 97, '_tax_status', 'taxable'),
(1198, 97, '_tax_class', ''),
(1199, 97, '_manage_stock', 'no'),
(1200, 97, '_backorders', 'no'),
(1201, 97, '_sold_individually', 'no'),
(1202, 97, '_weight', ''),
(1203, 97, '_length', ''),
(1204, 97, '_width', ''),
(1205, 97, '_height', ''),
(1206, 97, '_upsell_ids', 'a:0:{}'),
(1207, 97, '_crosssell_ids', 'a:0:{}'),
(1208, 97, '_purchase_note', ''),
(1209, 97, '_default_attributes', 'a:0:{}'),
(1210, 97, '_virtual', 'no'),
(1211, 97, '_downloadable', 'no'),
(1212, 97, '_product_image_gallery', '28,26'),
(1213, 97, '_download_limit', '-1'),
(1214, 97, '_download_expiry', '-1'),
(1215, 97, '_stock', NULL),
(1216, 97, '_stock_status', 'instock'),
(1217, 97, '_product_version', '3.4.3'),
(1218, 97, '_price', '250'),
(1219, 98, '_wc_review_count', '0'),
(1220, 98, '_wc_rating_count', 'a:0:{}'),
(1221, 98, '_wc_average_rating', '0'),
(1222, 98, '_edit_last', '1'),
(1223, 98, '_edit_lock', '1531653474:1'),
(1224, 98, '_thumbnail_id', '26'),
(1225, 98, '_sku', ''),
(1226, 98, '_regular_price', '400'),
(1227, 98, '_sale_price', '150'),
(1228, 98, '_sale_price_dates_from', ''),
(1229, 98, '_sale_price_dates_to', ''),
(1230, 98, 'total_sales', '0'),
(1231, 98, '_tax_status', 'taxable'),
(1232, 98, '_tax_class', ''),
(1233, 98, '_manage_stock', 'no'),
(1234, 98, '_backorders', 'no'),
(1235, 98, '_sold_individually', 'no'),
(1236, 98, '_weight', ''),
(1237, 98, '_length', ''),
(1238, 98, '_width', ''),
(1239, 98, '_height', ''),
(1240, 98, '_upsell_ids', 'a:0:{}'),
(1241, 98, '_crosssell_ids', 'a:0:{}'),
(1242, 98, '_purchase_note', ''),
(1243, 98, '_default_attributes', 'a:0:{}'),
(1244, 98, '_virtual', 'no'),
(1245, 98, '_downloadable', 'no'),
(1246, 98, '_product_image_gallery', '28,27'),
(1247, 98, '_download_limit', '-1'),
(1248, 98, '_download_expiry', '-1'),
(1249, 98, '_stock', NULL),
(1250, 98, '_stock_status', 'instock'),
(1251, 98, '_product_version', '3.4.3'),
(1252, 98, '_price', '150'),
(1253, 101, '_order_key', 'wc_order_5b4b2eaa61b7c'),
(1254, 101, '_customer_user', '1'),
(1255, 101, '_payment_method', 'paypal'),
(1256, 101, '_payment_method_title', 'PayPal'),
(1257, 101, '_transaction_id', ''),
(1258, 101, '_customer_ip_address', '::1'),
(1259, 101, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(1260, 101, '_created_via', 'checkout'),
(1261, 101, '_date_completed', ''),
(1262, 101, '_completed_date', ''),
(1263, 101, '_date_paid', ''),
(1264, 101, '_paid_date', ''),
(1265, 101, '_cart_hash', '355c1f9841f73eda1ea338ff091e9244'),
(1266, 101, '_billing_first_name', 'dfd'),
(1267, 101, '_billing_last_name', 'fdfdf'),
(1268, 101, '_billing_company', 'Mr.'),
(1269, 101, '_billing_address_1', 'C5 Defence view'),
(1270, 101, '_billing_address_2', ''),
(1271, 101, '_billing_city', 'Karachi'),
(1272, 101, '_billing_state', 'BA'),
(1273, 101, '_billing_postcode', '71000'),
(1274, 101, '_billing_country', 'PK'),
(1275, 101, '_billing_email', 'shakzee171@gmail.com'),
(1276, 101, '_billing_phone', '03337276335'),
(1277, 101, '_shipping_first_name', ''),
(1278, 101, '_shipping_last_name', ''),
(1279, 101, '_shipping_company', ''),
(1280, 101, '_shipping_address_1', ''),
(1281, 101, '_shipping_address_2', ''),
(1282, 101, '_shipping_city', ''),
(1283, 101, '_shipping_state', ''),
(1284, 101, '_shipping_postcode', ''),
(1285, 101, '_shipping_country', ''),
(1286, 101, '_order_currency', 'USD'),
(1287, 101, '_cart_discount', '0'),
(1288, 101, '_cart_discount_tax', '0'),
(1289, 101, '_order_shipping', '0.00'),
(1290, 101, '_order_shipping_tax', '0'),
(1291, 101, '_order_tax', '0'),
(1292, 101, '_order_total', '350.00'),
(1293, 101, '_order_version', '3.4.3'),
(1294, 101, '_prices_include_tax', 'no'),
(1295, 101, '_billing_address_index', 'dfd fdfdf Mr. C5 Defence view  Karachi BA 71000 PK shakzee171@gmail.com 03337276335'),
(1296, 101, '_shipping_address_index', '        ');

-- --------------------------------------------------------

--
-- Table structure for table `skz_posts`
--

CREATE TABLE `skz_posts` (
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
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
-- Dumping data for table `skz_posts`
--

INSERT INTO `skz_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-24 06:14:48', '2018-06-24 06:14:48', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-24 06:14:48', '2018-06-24 06:14:48', '', 0, 'http://localhost/woocommerce/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-24 06:14:48', '2018-06-24 06:14:48', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/woocommerce/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-24 06:14:48', '2018-06-24 06:14:48', '', 0, 'http://localhost/woocommerce/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-06-24 06:24:48', '2018-06-24 06:24:48', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-06-24 06:24:48', '2018-06-24 06:24:48', '', 0, 'http://localhost/woocommerce/shop/', 0, 'page', '', 0),
(5, 1, '2018-06-24 06:24:48', '2018-06-24 06:24:48', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-06-24 06:24:48', '2018-06-24 06:24:48', '', 0, 'http://localhost/woocommerce/cart/', 0, 'page', '', 0),
(6, 1, '2018-06-24 06:24:48', '2018-06-24 06:24:48', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-06-24 06:24:48', '2018-06-24 06:24:48', '', 0, 'http://localhost/woocommerce/checkout/', 0, 'page', '', 0),
(7, 1, '2018-06-24 06:24:48', '2018-06-24 06:24:48', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-06-24 06:24:48', '2018-06-24 06:24:48', '', 0, 'http://localhost/woocommerce/my-account/', 0, 'page', '', 0),
(13, 1, '2018-06-24 10:24:35', '2018-06-24 10:24:35', 'Your product description here', 'Iphone 6x plus', 'Iphone 6s plus 32 GB', 'publish', 'open', 'closed', '', 'iphone-6x-plus', '', '', '2018-07-15 10:20:31', '2018-07-15 10:20:31', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=13', 0, 'product', '', 2),
(14, 1, '2018-06-24 10:18:55', '2018-06-24 10:18:55', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-06-24 10:18:55', '2018-06-24 10:18:55', '', 13, 'http://localhost/woocommerce/wp-content/uploads/2018/06/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-06-24 10:19:13', '2018-06-24 10:19:13', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2018-06-24 10:19:13', '2018-06-24 10:19:13', '', 13, 'http://localhost/woocommerce/wp-content/uploads/2018/06/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-06-24 10:19:14', '2018-06-24 10:19:14', '', 'download (2)', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2018-06-24 10:19:14', '2018-06-24 10:19:14', '', 13, 'http://localhost/woocommerce/wp-content/uploads/2018/06/download-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-06-24 10:19:14', '2018-06-24 10:19:14', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2018-06-24 10:19:14', '2018-06-24 10:19:14', '', 13, 'http://localhost/woocommerce/wp-content/uploads/2018/06/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-07-14 13:52:15', '2018-07-14 13:52:15', 'My shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirt', 'My shirt', 'about t-shirt here', 'publish', 'open', 'closed', '', 'my-shirt', '', '', '2018-07-14 14:01:45', '2018-07-14 14:01:45', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=25', 0, 'product', '', 0),
(26, 1, '2018-07-14 13:50:40', '2018-07-14 13:50:40', '', 'black', '', 'inherit', 'open', 'closed', '', 'black', '', '', '2018-07-14 13:50:40', '2018-07-14 13:50:40', '', 25, 'http://localhost/woocommerce/wp-content/uploads/2018/07/black.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-07-14 13:50:41', '2018-07-14 13:50:41', '', 'red', '', 'inherit', 'open', 'closed', '', 'red', '', '', '2018-07-14 13:50:41', '2018-07-14 13:50:41', '', 25, 'http://localhost/woocommerce/wp-content/uploads/2018/07/red.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-07-14 13:50:41', '2018-07-14 13:50:41', '', 'white', '', 'inherit', 'open', 'closed', '', 'white', '', '', '2018-07-14 13:50:41', '2018-07-14 13:50:41', '', 25, 'http://localhost/woocommerce/wp-content/uploads/2018/07/white.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-07-14 13:54:56', '2018-07-14 13:54:56', '', 'My shirt - Red', '', 'publish', 'closed', 'closed', '', 'my-shirt-red', '', '', '2018-07-14 13:55:25', '2018-07-14 13:55:25', '', 25, 'http://localhost/woocommerce/product/my-shirt/', 1, 'product_variation', '', 0),
(33, 1, '2018-07-14 13:54:56', '2018-07-14 13:54:56', '', 'My shirt - White', '', 'publish', 'closed', 'closed', '', 'my-shirt-white', '', '', '2018-07-14 13:55:25', '2018-07-14 13:55:25', '', 25, 'http://localhost/woocommerce/product/my-shirt/', 2, 'product_variation', '', 0),
(34, 1, '2018-07-14 13:54:57', '2018-07-14 13:54:57', '', 'My shirt - Green', '', 'publish', 'closed', 'closed', '', 'my-shirt-green', '', '', '2018-07-14 13:55:25', '2018-07-14 13:55:25', '', 25, 'http://localhost/woocommerce/product/my-shirt/', 3, 'product_variation', '', 0),
(35, 1, '2018-07-14 13:55:36', '2018-07-14 13:55:36', 'My shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirtMy shirt', 'My shirt', 'about t-shirt here', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2018-07-14 13:55:36', '2018-07-14 13:55:36', '', 25, 'http://localhost/woocommerce/2018/07/14/25-autosave-v1/', 0, 'revision', '', 0),
(39, 1, '2018-07-15 08:36:12', '2018-07-15 08:36:12', '', 'Iphone 6x plus', '', 'publish', 'closed', 'closed', '', 'iphone-6x-plus-32gb', '', '', '2018-07-15 09:01:45', '2018-07-15 09:01:45', '', 13, 'http://localhost/woocommerce/product/iphone-6x-plus/', 1, 'product_variation', '', 0),
(40, 1, '2018-07-15 08:36:12', '2018-07-15 08:36:12', '', 'Iphone 6x plus', '', 'publish', 'closed', 'closed', '', 'iphone-6x-plus-64gb', '', '', '2018-07-15 09:01:45', '2018-07-15 09:01:45', '', 13, 'http://localhost/woocommerce/product/iphone-6x-plus/', 2, 'product_variation', '', 0),
(41, 1, '2018-07-15 08:36:12', '2018-07-15 08:36:12', '', 'Iphone 6x plus', '', 'publish', 'closed', 'closed', '', 'iphone-6x-plus-128gb', '', '', '2018-07-15 09:01:45', '2018-07-15 09:01:45', '', 13, 'http://localhost/woocommerce/product/iphone-6x-plus/', 3, 'product_variation', '', 0),
(43, 1, '2018-07-15 09:01:50', '2018-07-15 09:01:50', 'Your product description here', 'Iphone 6x plus', 'Iphone 6s plus 32 GB', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2018-07-15 09:01:50', '2018-07-15 09:01:50', '', 13, 'http://localhost/woocommerce/2018/07/15/13-autosave-v1/', 0, 'revision', '', 0),
(44, 1, '2018-07-15 09:28:59', '2018-07-15 09:28:59', '', 'Order &ndash; July 15, 2018 @ 09:28 AM', '', 'wc-cancelled', 'open', 'closed', 'order_5b4b13dbe8b35', 'order-jul-15-2018-0928-am', '', '', '2018-07-15 09:29:18', '2018-07-15 09:29:18', '', 0, 'http://localhost/woocommerce/?post_type=shop_order&#038;p=44', 0, 'shop_order', '', 1),
(45, 1, '2018-07-15 09:43:13', '2018-07-15 09:43:13', '', 'Order &ndash; July 15, 2018 @ 09:43 AM', '', 'wc-cancelled', 'open', 'closed', 'order_5b4b173192eaf', 'order-jul-15-2018-0943-am', '', '', '2018-07-15 11:29:59', '2018-07-15 11:29:59', '', 0, 'http://localhost/woocommerce/?post_type=shop_order&#038;p=45', 0, 'shop_order', '', 1),
(46, 1, '2018-07-15 09:57:09', '2018-07-15 09:57:09', 'privacy here', 'privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2018-07-15 09:57:09', '2018-07-15 09:57:09', '', 0, 'http://localhost/woocommerce/?page_id=46', 0, 'page', '', 0),
(47, 1, '2018-07-15 09:57:09', '2018-07-15 09:57:09', 'privacy here', 'privacy', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-07-15 09:57:09', '2018-07-15 09:57:09', '', 46, 'http://localhost/woocommerce/2018/07/15/46-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-07-15 10:15:00', '2018-07-15 10:15:00', '', 'Woocommerce-Coupon', 'description here', 'publish', 'closed', 'closed', '', 'woocommerce-coupon', '', '', '2018-07-15 10:15:00', '2018-07-15 10:15:00', '', 0, 'http://localhost/woocommerce/?post_type=shop_coupon&#038;p=51', 0, 'shop_coupon', '', 0),
(52, 1, '2018-07-15 10:20:28', '2018-07-15 10:20:28', '', 'Order &ndash; July 15, 2018 @ 10:20 AM', '', 'wc-completed', 'open', 'closed', 'order_5b4b1fecc0e8c', 'order-jul-15-2018-1020-am', '', '', '2018-07-15 10:26:33', '2018-07-15 10:26:33', '', 0, 'http://localhost/woocommerce/?post_type=shop_order&#038;p=52', 0, 'shop_order', '', 4),
(53, 1, '2018-07-15 10:28:01', '2018-07-15 10:28:01', '', 'Order &ndash; July 15, 2018 @ 10:28 AM', '', 'wc-completed', 'closed', 'closed', '', 'order-july-15-2018-1028-am', '', '', '2018-07-15 10:28:56', '2018-07-15 10:28:56', '', 0, 'http://localhost/woocommerce/?post_type=shop_order&#038;p=53', 0, 'shop_order', '', 1),
(54, 1, '2018-07-15 10:36:50', '2018-07-15 10:36:50', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-15 10:36:50', '2018-07-15 10:36:50', '', 0, 'http://localhost/woocommerce/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-07-15 10:36:50', '2018-07-15 10:36:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-07-15 10:36:50', '2018-07-15 10:36:50', '', 54, 'http://localhost/woocommerce/2018/07/15/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-07-15 10:39:19', '2018-07-15 10:39:19', 'This is about slider 1', 'slide1', '', 'publish', 'closed', 'closed', '', 'slide1', '', '', '2018-07-15 10:39:19', '2018-07-15 10:39:19', '', 0, 'http://localhost/woocommerce/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-07-15 10:38:56', '2018-07-15 10:38:56', '', 'A_party_tray_of_sliders_at_a_restaurant', '', 'inherit', 'open', 'closed', '', 'a_party_tray_of_sliders_at_a_restaurant', '', '', '2018-07-15 10:38:56', '2018-07-15 10:38:56', '', 56, 'http://localhost/woocommerce/wp-content/uploads/2018/07/A_party_tray_of_sliders_at_a_restaurant.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-07-15 10:38:57', '2018-07-15 10:38:57', '', 'download (3)', '', 'inherit', 'open', 'closed', '', 'download-3', '', '', '2018-07-15 10:38:57', '2018-07-15 10:38:57', '', 56, 'http://localhost/woocommerce/wp-content/uploads/2018/07/download-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-07-15 10:38:58', '2018-07-15 10:38:58', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2018-07-15 10:38:58', '2018-07-15 10:38:58', '', 56, 'http://localhost/woocommerce/wp-content/uploads/2018/07/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-07-15 10:39:19', '2018-07-15 10:39:19', 'This is about slider 1', 'slide1', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-07-15 10:39:19', '2018-07-15 10:39:19', '', 56, 'http://localhost/woocommerce/2018/07/15/56-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-07-15 10:39:45', '2018-07-15 10:39:45', 'this is about slide 2', 'slide2', '', 'publish', 'closed', 'closed', '', 'slide2', '', '', '2018-07-15 10:39:45', '2018-07-15 10:39:45', '', 0, 'http://localhost/woocommerce/?page_id=61', 0, 'page', '', 0),
(62, 1, '2018-07-15 10:39:45', '2018-07-15 10:39:45', 'this is about slide 2', 'slide2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-07-15 10:39:45', '2018-07-15 10:39:45', '', 61, 'http://localhost/woocommerce/2018/07/15/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-07-15 10:40:03', '2018-07-15 10:40:03', 'this is about slide 3', 'slide3', '', 'publish', 'closed', 'closed', '', 'slide3', '', '', '2018-07-15 10:40:03', '2018-07-15 10:40:03', '', 0, 'http://localhost/woocommerce/?page_id=63', 0, 'page', '', 0),
(64, 1, '2018-07-15 10:40:03', '2018-07-15 10:40:03', 'this is about slide 3', 'slide3', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-07-15 10:40:03', '2018-07-15 10:40:03', '', 63, 'http://localhost/woocommerce/2018/07/15/63-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-07-15 10:41:34', '2018-07-15 10:41:34', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-07-15 10:41:47', '2018-07-15 10:41:47', '', 0, 'http://localhost/woocommerce/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2018-07-15 10:41:34', '2018-07-15 10:41:34', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2018-07-15 10:41:47', '2018-07-15 10:41:47', '', 0, 'http://localhost/woocommerce/?p=67', 2, 'nav_menu_item', '', 0),
(68, 1, '2018-07-15 10:41:34', '2018-07-15 10:41:34', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2018-07-15 10:41:47', '2018-07-15 10:41:47', '', 0, 'http://localhost/woocommerce/?p=68', 3, 'nav_menu_item', '', 0),
(69, 1, '2018-07-15 10:41:34', '2018-07-15 10:41:34', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2018-07-15 10:41:47', '2018-07-15 10:41:47', '', 0, 'http://localhost/woocommerce/?p=69', 4, 'nav_menu_item', '', 0),
(70, 1, '2018-07-15 10:41:34', '2018-07-15 10:41:34', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-07-15 10:41:47', '2018-07-15 10:41:47', '', 0, 'http://localhost/woocommerce/?p=70', 5, 'nav_menu_item', '', 0),
(71, 1, '2018-07-15 10:41:35', '2018-07-15 10:41:35', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2018-07-15 10:41:47', '2018-07-15 10:41:47', '', 0, 'http://localhost/woocommerce/?p=71', 6, 'nav_menu_item', '', 0),
(72, 1, '2018-07-15 10:41:35', '2018-07-15 10:41:35', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-07-15 10:41:47', '2018-07-15 10:41:47', '', 0, 'http://localhost/woocommerce/?p=72', 7, 'nav_menu_item', '', 0),
(73, 1, '2018-07-15 10:41:35', '2018-07-15 10:41:35', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2018-07-15 10:41:47', '2018-07-15 10:41:47', '', 0, 'http://localhost/woocommerce/?p=73', 8, 'nav_menu_item', '', 0),
(74, 1, '2018-07-15 10:41:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-15 10:41:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocommerce/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2018-07-15 10:41:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-15 10:41:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocommerce/?p=75', 1, 'nav_menu_item', '', 0),
(76, 1, '2018-07-15 10:41:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-15 10:41:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocommerce/?p=76', 1, 'nav_menu_item', '', 0),
(80, 1, '2018-07-15 11:00:39', '2018-07-15 11:00:39', '<div class=\"theme-instruction-block\">\r\n<div class=\"theme-instruction-block\"><article id=\"top-header\"><span class=\"strong\">[product_category category=\"shirts\" columns=\"4\"]</span></article></div>\r\n</div>\r\n&nbsp;', 'Trending', '', 'publish', 'closed', 'closed', '', 'trending', '', '', '2018-07-15 11:20:36', '2018-07-15 11:20:36', '', 0, 'http://localhost/woocommerce/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-07-15 11:00:39', '2018-07-15 11:00:39', '', 'Trending', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-15 11:00:39', '2018-07-15 11:00:39', '', 80, 'http://localhost/woocommerce/2018/07/15/80-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-07-15 11:03:27', '2018-07-15 11:03:27', '<div class=\"theme-instruction-block\">\r\n<div class=\"theme-instruction-block\"><article id=\"top-header\"><span class=\"strong\">[product_category category=\"Mobile\" columns=\"4\"]</span>\r\n\r\n</article></div>\r\n</div>\r\n&nbsp;', 'Trending', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-15 11:03:27', '2018-07-15 11:03:27', '', 80, 'http://localhost/woocommerce/2018/07/15/80-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-07-15 11:03:53', '2018-07-15 11:03:53', '<div class=\"theme-instruction-block\">\r\n<div class=\"theme-instruction-block\"><article id=\"top-header\"><span class=\"strong\">[product_category category=\"mobile\" columns=\"4\"]</span></article></div>\r\n</div>\r\n&nbsp;', 'Trending', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-15 11:03:53', '2018-07-15 11:03:53', '', 80, 'http://localhost/woocommerce/2018/07/15/80-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-07-15 11:04:48', '2018-07-15 11:04:48', '<div class=\"theme-instruction-block\">\r\n<div class=\"theme-instruction-block\"><article id=\"top-header\"><span class=\"strong\">[product_category category=\"shirts\" columns=\"4\"]</span></article></div>\r\n</div>\r\n&nbsp;', 'Trending', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-15 11:04:48', '2018-07-15 11:04:48', '', 80, 'http://localhost/woocommerce/2018/07/15/80-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-07-15 11:04:58', '2018-07-15 11:04:58', '<div class=\"theme-instruction-block\">\n<div class=\"theme-instruction-block\"><article id=\"top-header\"><span class=\"strong\">[product_category category=\"shirts\" columns=\"2\"]</span></article></div>\n</div>\n&nbsp;', 'Trending', '', 'inherit', 'closed', 'closed', '', '80-autosave-v1', '', '', '2018-07-15 11:04:58', '2018-07-15 11:04:58', '', 80, 'http://localhost/woocommerce/2018/07/15/80-autosave-v1/', 0, 'revision', '', 0),
(89, 1, '2018-07-15 11:07:56', '0000-00-00 00:00:00', '', 'two here', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-15 11:07:56', '2018-07-15 11:07:56', '', 0, 'http://localhost/woocommerce/?page_id=89', 0, 'page', '', 0),
(95, 1, '2018-07-15 11:17:56', '2018-07-15 11:17:56', 'Second product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product hereSecond product here', 'Second product here', '', 'publish', 'open', 'closed', '', 'second-product-here', '', '', '2018-07-15 11:17:57', '2018-07-15 11:17:57', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2018-07-15 11:18:39', '2018-07-15 11:18:39', 'Third product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product hereThird product here', 'Third product here', '', 'publish', 'open', 'closed', '', 'third-product-here', '', '', '2018-07-15 11:18:39', '2018-07-15 11:18:39', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=96', 0, 'product', '', 0),
(97, 1, '2018-07-15 11:19:23', '2018-07-15 11:19:23', 'fourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth productfourth product', 'fourth product', '', 'publish', 'open', 'closed', '', 'fourth-product', '', '', '2018-07-15 11:19:23', '2018-07-15 11:19:23', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2018-07-15 11:20:05', '2018-07-15 11:20:05', 'Fifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth productFifth product', 'Fifth product', '', 'publish', 'open', 'closed', '', 'fifth-product', '', '', '2018-07-15 11:20:06', '2018-07-15 11:20:06', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=98', 0, 'product', '', 0),
(99, 1, '2018-07-15 11:20:26', '2018-07-15 11:20:26', '<div class=\"theme-instruction-block\">\r\n<div class=\"theme-instruction-block\"><article id=\"top-header\"><span class=\"strong\">[product_category category=\"shirts\" columns=\"5\"]</span></article></div>\r\n</div>\r\n&nbsp;', 'Trending', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-15 11:20:26', '2018-07-15 11:20:26', '', 80, 'http://localhost/woocommerce/2018/07/15/80-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-07-15 11:20:36', '2018-07-15 11:20:36', '<div class=\"theme-instruction-block\">\r\n<div class=\"theme-instruction-block\"><article id=\"top-header\"><span class=\"strong\">[product_category category=\"shirts\" columns=\"4\"]</span></article></div>\r\n</div>\r\n&nbsp;', 'Trending', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-15 11:20:36', '2018-07-15 11:20:36', '', 80, 'http://localhost/woocommerce/2018/07/15/80-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-07-15 11:23:22', '2018-07-15 11:23:22', '', 'Order &ndash; July 15, 2018 @ 11:23 AM', '', 'wc-cancelled', 'open', 'closed', 'order_5b4b2eaa61bee', 'order-jul-15-2018-1123-am', '', '', '2018-07-15 13:06:19', '2018-07-15 13:06:19', '', 0, 'http://localhost/woocommerce/?post_type=shop_order&#038;p=101', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skz_queue`
--

CREATE TABLE `skz_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_termmeta`
--

CREATE TABLE `skz_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_termmeta`
--

INSERT INTO `skz_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 16, 'display_type', ''),
(3, 16, 'thumbnail_id', '0'),
(4, 17, 'order', '0'),
(5, 17, 'display_type', ''),
(6, 17, 'thumbnail_id', '17'),
(7, 18, 'order', '0'),
(8, 17, 'product_count_product_cat', '1'),
(9, 18, 'product_count_product_cat', '1'),
(10, 16, 'product_count_product_cat', '1'),
(11, 19, 'product_count_product_tag', '1'),
(12, 20, 'product_count_product_tag', '1'),
(13, 15, 'product_count_product_cat', '0'),
(14, 21, 'order', '0'),
(15, 21, 'product_count_product_cat', '5'),
(16, 22, 'product_count_product_tag', '1'),
(17, 21, 'display_type', ''),
(18, 21, 'thumbnail_id', '26');

-- --------------------------------------------------------

--
-- Table structure for table `skz_terms`
--

CREATE TABLE `skz_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_terms`
--

INSERT INTO `skz_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Electronics', 'electronics', 0),
(17, 'Mobiles', 'mobiles', 0),
(18, 'Apple', 'apple', 0),
(19, '32GB Ram', '32gb-ram', 0),
(20, 'Another tag', 'another-tag', 0),
(21, 'shirts', 'shirts', 0),
(22, 'tshirt', 'tshirt', 0),
(23, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `skz_term_relationships`
--

CREATE TABLE `skz_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_term_relationships`
--

INSERT INTO `skz_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 4, 0),
(13, 14, 0),
(13, 17, 0),
(13, 18, 0),
(13, 19, 0),
(13, 20, 0),
(25, 4, 0),
(25, 21, 0),
(25, 22, 0),
(66, 23, 0),
(67, 23, 0),
(68, 23, 0),
(69, 23, 0),
(70, 23, 0),
(71, 23, 0),
(72, 23, 0),
(73, 23, 0),
(95, 2, 0),
(95, 21, 0),
(96, 2, 0),
(96, 21, 0),
(97, 2, 0),
(97, 21, 0),
(98, 2, 0),
(98, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `skz_term_taxonomy`
--

CREATE TABLE `skz_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_term_taxonomy`
--

INSERT INTO `skz_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 4),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 1),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 16, 1),
(18, 18, 'product_cat', '', 17, 1),
(19, 19, 'product_tag', '', 0, 1),
(20, 20, 'product_tag', '', 0, 1),
(21, 21, 'product_cat', '', 0, 5),
(22, 22, 'product_tag', '', 0, 1),
(23, 23, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `skz_usermeta`
--

CREATE TABLE `skz_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_usermeta`
--

INSERT INTO `skz_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'woocommerce'),
(2, 1, 'first_name', 'dfd'),
(3, 1, 'last_name', 'fdfdf'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'skz_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'skz_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,yith_wcwl_panel'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"d5d54fe34ccf46cb36ed04738f20348db693c64396894fffdea39c0dcdee78bf\";a:4:{s:10:\"expiration\";i:1531747622;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531574822;}s:64:\"72f9ccd3cb72364c67e3990dde6cafe48da37287c3e44fb714740832d08d2d86\";a:4:{s:10:\"expiration\";i:1531817644;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531644844;}s:64:\"5601aee2212ede4d7be1d5ca7b43c861b2cbf4060c3a1b1bbaca74e00d9852d1\";a:4:{s:10:\"expiration\";i:1531817678;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531644878;}}'),
(17, 1, 'skz_dashboard_quick_press_last_post_id', '18'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(20, 1, 'wc_last_active', '1531612800'),
(21, 1, 'skz_user-settings', 'libraryContent=browse'),
(22, 1, 'skz_user-settings-time', '1529835872'),
(23, 1, 'closedpostboxes_product', 'a:0:{}'),
(24, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(25, 1, 'last_update', '1531653802'),
(26, 1, 'billing_first_name', 'dfd'),
(27, 1, 'billing_last_name', 'fdfdf'),
(28, 1, 'billing_company', 'Mr.'),
(29, 1, 'billing_address_1', 'C5 Defence view'),
(30, 1, 'billing_city', 'Karachi'),
(31, 1, 'billing_state', 'BA'),
(32, 1, 'billing_postcode', '71000'),
(33, 1, 'billing_country', 'PK'),
(34, 1, 'billing_email', 'shakzee171@gmail.com'),
(35, 1, 'billing_phone', '03337276335'),
(36, 1, 'shipping_first_name', 'dfd'),
(37, 1, 'shipping_last_name', 'fdfdf'),
(38, 1, 'shipping_company', 'Mr.'),
(39, 1, 'shipping_address_1', 'C5 Defence view'),
(40, 1, 'shipping_city', 'Karachi'),
(41, 1, 'shipping_state', 'BA'),
(42, 1, 'shipping_postcode', '71000'),
(43, 1, 'shipping_country', 'PK'),
(50, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"ed5024437e8aab0939fa6d7d7c81cec4\";a:11:{s:3:\"key\";s:32:\"ed5024437e8aab0939fa6d7d7c81cec4\";s:10:\"product_id\";i:13;s:12:\"variation_id\";i:40;s:9:\"variation\";a:2:{s:15:\"attribute_color\";s:4:\"gold\";s:26:\"attribute_internal-storage\";s:4:\"64GB\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"f4bbf042760551db89656b6318933051\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:350;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:350;s:8:\"line_tax\";i:0;}}}'),
(51, 1, 'paying_customer', '1'),
(52, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(53, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(54, 1, 'nav_menu_recently_edited', '23'),
(55, 1, 'shipping_method', '');

-- --------------------------------------------------------

--
-- Table structure for table `skz_users`
--

CREATE TABLE `skz_users` (
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
-- Dumping data for table `skz_users`
--

INSERT INTO `skz_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'woocommerce', '$P$Br//YVc3utoTmlL/sVPmJTkx3g3.7K.', 'woocommerce', 'shakzee171@gmail.com', '', '2018-06-24 06:14:48', '', 0, 'woocommerce');

-- --------------------------------------------------------

--
-- Table structure for table `skz_wc_download_log`
--

CREATE TABLE `skz_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_wc_webhooks`
--

CREATE TABLE `skz_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_api_keys`
--

CREATE TABLE `skz_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_attribute_taxonomies`
--

CREATE TABLE `skz_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `skz_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_log`
--

CREATE TABLE `skz_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_order_itemmeta`
--

CREATE TABLE `skz_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_woocommerce_order_itemmeta`
--

INSERT INTO `skz_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '13'),
(2, 1, '_variation_id', '41'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '400'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '400'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 1, 'color', 'gold'),
(11, 1, 'internal-storage', '128GB'),
(12, 2, 'method_id', 'flat_rate'),
(13, 2, 'instance_id', '1'),
(14, 2, 'cost', '2.00'),
(15, 2, 'total_tax', '0'),
(16, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(17, 2, 'Items', 'Iphone 6x plus &times; 1'),
(69, 9, '_product_id', '13'),
(70, 9, '_variation_id', '41'),
(71, 9, '_qty', '1'),
(72, 9, '_tax_class', ''),
(73, 9, '_line_subtotal', '400'),
(74, 9, '_line_subtotal_tax', '0'),
(75, 9, '_line_total', '400'),
(76, 9, '_line_tax', '0'),
(77, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(78, 9, 'color', 'gold'),
(79, 9, 'internal-storage', '128GB'),
(80, 10, 'method_id', 'flat_rate'),
(81, 10, 'instance_id', '1'),
(82, 10, 'cost', '2.00'),
(83, 10, 'total_tax', '0'),
(84, 10, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(85, 10, 'Items', 'Iphone 6x plus &times; 1'),
(86, 11, '_product_id', '13'),
(87, 11, '_variation_id', '39'),
(88, 11, '_qty', '1'),
(89, 11, '_tax_class', ''),
(90, 11, '_line_subtotal', '250'),
(91, 11, '_line_subtotal_tax', '0'),
(92, 11, '_line_total', '0'),
(93, 11, '_line_tax', '0'),
(94, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(95, 11, 'color', 'gold'),
(96, 11, 'internal-storage', '32GB'),
(97, 12, 'discount_amount', '250'),
(98, 12, 'discount_amount_tax', '0'),
(99, 12, 'coupon_data', 'a:24:{s:2:\"id\";i:51;s:4:\"code\";s:18:\"woocommerce-coupon\";s:6:\"amount\";s:3:\"100\";s:12:\"date_created\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-07-15 10:15:00.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:13:\"date_modified\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-07-15 10:15:00.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:12:\"date_expires\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-07-17 00:00:00.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:13:\"discount_type\";s:7:\"percent\";s:11:\"description\";s:16:\"description here\";s:11:\"usage_count\";i:0;s:14:\"individual_use\";b:1;s:11:\"product_ids\";a:1:{i:0;i:13;}s:20:\"excluded_product_ids\";a:0:{}s:11:\"usage_limit\";i:200;s:20:\"usage_limit_per_user\";i:1;s:22:\"limit_usage_to_x_items\";N;s:13:\"free_shipping\";b:0;s:18:\"product_categories\";a:0:{}s:27:\"excluded_product_categories\";a:0:{}s:18:\"exclude_sale_items\";b:0;s:14:\"minimum_amount\";s:0:\"\";s:14:\"maximum_amount\";s:0:\"\";s:18:\"email_restrictions\";a:0:{}s:7:\"virtual\";b:0;s:9:\"meta_data\";a:0:{}}'),
(100, 13, '_product_id', '13'),
(101, 13, '_variation_id', '0'),
(102, 13, '_qty', '1'),
(103, 13, '_tax_class', ''),
(104, 13, '_line_subtotal', '250'),
(105, 13, '_line_subtotal_tax', '0'),
(106, 13, '_line_total', '250'),
(107, 13, '_line_tax', '0'),
(108, 13, '_line_tax_data', 'a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}'),
(109, 14, '_product_id', '13'),
(110, 14, '_variation_id', '40'),
(111, 14, '_qty', '1'),
(112, 14, '_tax_class', ''),
(113, 14, '_line_subtotal', '350'),
(114, 14, '_line_subtotal_tax', '0'),
(115, 14, '_line_total', '350'),
(116, 14, '_line_tax', '0'),
(117, 14, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(118, 14, 'color', 'gold'),
(119, 14, 'internal-storage', '64GB');

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_order_items`
--

CREATE TABLE `skz_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_woocommerce_order_items`
--

INSERT INTO `skz_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Iphone 6x plus', 'line_item', 44),
(2, 'Flat rate', 'shipping', 44),
(9, 'Iphone 6x plus', 'line_item', 45),
(10, 'Flat rate', 'shipping', 45),
(11, 'Iphone 6x plus', 'line_item', 52),
(12, 'woocommerce-coupon', 'coupon', 52),
(13, 'Iphone 6x plus', 'line_item', 53),
(14, 'Iphone 6x plus', 'line_item', 101);

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_payment_tokenmeta`
--

CREATE TABLE `skz_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_payment_tokens`
--

CREATE TABLE `skz_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_sessions`
--

CREATE TABLE `skz_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_shipping_zones`
--

CREATE TABLE `skz_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_shipping_zone_locations`
--

CREATE TABLE `skz_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_shipping_zone_methods`
--

CREATE TABLE `skz_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_tax_rates`
--

CREATE TABLE `skz_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_tax_rate_locations`
--

CREATE TABLE `skz_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skz_commentmeta`
--
ALTER TABLE `skz_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `skz_comments`
--
ALTER TABLE `skz_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `skz_failed_jobs`
--
ALTER TABLE `skz_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skz_links`
--
ALTER TABLE `skz_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `skz_options`
--
ALTER TABLE `skz_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `skz_postmeta`
--
ALTER TABLE `skz_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `skz_posts`
--
ALTER TABLE `skz_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `skz_queue`
--
ALTER TABLE `skz_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skz_termmeta`
--
ALTER TABLE `skz_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `skz_terms`
--
ALTER TABLE `skz_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `skz_term_relationships`
--
ALTER TABLE `skz_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `skz_term_taxonomy`
--
ALTER TABLE `skz_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `skz_usermeta`
--
ALTER TABLE `skz_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `skz_users`
--
ALTER TABLE `skz_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `skz_wc_download_log`
--
ALTER TABLE `skz_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `skz_wc_webhooks`
--
ALTER TABLE `skz_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skz_woocommerce_api_keys`
--
ALTER TABLE `skz_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `skz_woocommerce_attribute_taxonomies`
--
ALTER TABLE `skz_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `skz_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `skz_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `skz_woocommerce_log`
--
ALTER TABLE `skz_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `skz_woocommerce_order_itemmeta`
--
ALTER TABLE `skz_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `skz_woocommerce_order_items`
--
ALTER TABLE `skz_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `skz_woocommerce_payment_tokenmeta`
--
ALTER TABLE `skz_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `skz_woocommerce_payment_tokens`
--
ALTER TABLE `skz_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skz_woocommerce_sessions`
--
ALTER TABLE `skz_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `skz_woocommerce_shipping_zones`
--
ALTER TABLE `skz_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `skz_woocommerce_shipping_zone_locations`
--
ALTER TABLE `skz_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `skz_woocommerce_shipping_zone_methods`
--
ALTER TABLE `skz_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `skz_woocommerce_tax_rates`
--
ALTER TABLE `skz_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `skz_woocommerce_tax_rate_locations`
--
ALTER TABLE `skz_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `skz_commentmeta`
--
ALTER TABLE `skz_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skz_comments`
--
ALTER TABLE `skz_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `skz_failed_jobs`
--
ALTER TABLE `skz_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_links`
--
ALTER TABLE `skz_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_options`
--
ALTER TABLE `skz_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1160;

--
-- AUTO_INCREMENT for table `skz_postmeta`
--
ALTER TABLE `skz_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1298;

--
-- AUTO_INCREMENT for table `skz_posts`
--
ALTER TABLE `skz_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `skz_queue`
--
ALTER TABLE `skz_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_termmeta`
--
ALTER TABLE `skz_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `skz_terms`
--
ALTER TABLE `skz_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `skz_term_taxonomy`
--
ALTER TABLE `skz_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `skz_usermeta`
--
ALTER TABLE `skz_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `skz_users`
--
ALTER TABLE `skz_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skz_wc_download_log`
--
ALTER TABLE `skz_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_wc_webhooks`
--
ALTER TABLE `skz_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_api_keys`
--
ALTER TABLE `skz_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_attribute_taxonomies`
--
ALTER TABLE `skz_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `skz_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_log`
--
ALTER TABLE `skz_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_order_itemmeta`
--
ALTER TABLE `skz_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `skz_woocommerce_order_items`
--
ALTER TABLE `skz_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `skz_woocommerce_payment_tokenmeta`
--
ALTER TABLE `skz_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_payment_tokens`
--
ALTER TABLE `skz_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_sessions`
--
ALTER TABLE `skz_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `skz_woocommerce_shipping_zones`
--
ALTER TABLE `skz_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_shipping_zone_locations`
--
ALTER TABLE `skz_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_shipping_zone_methods`
--
ALTER TABLE `skz_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_tax_rates`
--
ALTER TABLE `skz_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_tax_rate_locations`
--
ALTER TABLE `skz_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skz_wc_download_log`
--
ALTER TABLE `skz_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `skz_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
