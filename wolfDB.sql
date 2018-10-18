-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2018 at 03:02 PM
-- Server version: 5.6.37
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wolfDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, NULL, 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, NULL, 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, NULL, 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, NULL, 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, NULL, 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(53, 3, 'role_id', 'text', 'role_id', 0, 1, 1, 1, 1, 1, NULL, 9),
(54, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(55, 7, 'Name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(56, 7, 'Description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, NULL, 3),
(57, 7, 'Image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 4),
(58, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 5),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(60, 7, 'ClientId', 'select_dropdown', 'ClientId', 1, 1, 1, 1, 1, 1, NULL, 7),
(61, 7, 'project_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"ClientId\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"Projects\",\"pivot\":\"0\"}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-01-24 02:49:30', '2018-01-24 02:49:30'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '2018-01-24 02:49:30', '2018-01-24 09:16:10'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-01-24 02:49:30', '2018-01-24 02:49:30'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-01-24 02:49:30', '2018-01-24 02:49:30'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, NULL, NULL, 1, 0, '2018-01-24 02:49:30', '2018-01-24 09:15:54'),
(7, 'Projects', 'projects', 'Project', 'Projects', 'voyager-paw', 'App\\Project', NULL, NULL, NULL, 0, 0, '2018-01-24 09:15:46', '2018-01-24 09:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-01-24 02:49:30', '2018-01-24 02:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-01-24 02:49:30', '2018-01-24 09:56:44', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-01-24 02:49:30', '2018-01-24 09:56:44', 'voyager.media.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', '#3e6be3', NULL, 3, '2018-01-24 02:49:30', '2018-01-24 09:56:44', 'voyager.users.index', 'null'),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 6, '2018-01-24 02:49:30', '2018-01-24 09:56:44', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 5, '2018-01-24 02:49:30', '2018-01-24 09:56:44', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-01-24 02:49:30', '2018-01-24 09:56:44', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2018-01-24 02:49:30', '2018-01-24 09:53:35', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-01-24 02:49:30', '2018-01-24 09:36:28', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-01-24 02:49:30', '2018-01-24 09:36:28', 'voyager.database.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-01-24 02:49:30', '2018-01-24 09:56:45', 'voyager.settings.index', NULL),
(13, 1, 'Projects', '/app/projects', '_self', 'voyager-paw', '#2791de', NULL, 9, '2018-01-24 09:15:46', '2018-01-24 10:52:47', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2018_02_11_181606_add_stripe_id_field_to_users_table', 2),
(25, '2018_02_11_190109_add_cashier_tables', 3),
(26, '2018_02_12_160533_add_is_subscribed_to_users', 4),
(27, '2018_02_13_012937_add_sub_cancelled_to_users', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(2, 'browse_database', NULL, '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(3, 'browse_media', NULL, '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(4, 'browse_compass', NULL, '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(5, 'browse_menus', 'menus', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(6, 'read_menus', 'menus', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(7, 'edit_menus', 'menus', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(8, 'add_menus', 'menus', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(9, 'delete_menus', 'menus', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(10, 'browse_pages', 'pages', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(11, 'read_pages', 'pages', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(12, 'edit_pages', 'pages', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(13, 'add_pages', 'pages', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(14, 'delete_pages', 'pages', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(15, 'browse_roles', 'roles', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(16, 'read_roles', 'roles', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(17, 'edit_roles', 'roles', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(18, 'add_roles', 'roles', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(19, 'delete_roles', 'roles', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(20, 'browse_users', 'users', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(21, 'read_users', 'users', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(22, 'edit_users', 'users', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(23, 'add_users', 'users', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(24, 'delete_users', 'users', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(30, 'browse_categories', 'categories', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(31, 'read_categories', 'categories', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(32, 'edit_categories', 'categories', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(33, 'add_categories', 'categories', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(34, 'delete_categories', 'categories', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(35, 'browse_settings', 'settings', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(36, 'read_settings', 'settings', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(37, 'edit_settings', 'settings', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(38, 'add_settings', 'settings', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(39, 'delete_settings', 'settings', '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(40, 'browse_hooks', NULL, '2018-01-24 02:49:30', '2018-01-24 02:49:30', NULL),
(41, 'browse_themes', 'admin', '2018-01-24 03:12:29', '2018-01-24 03:12:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 6),
(1, 7),
(1, 8),
(2, 1),
(2, 8),
(3, 1),
(3, 2),
(3, 6),
(3, 7),
(3, 8),
(5, 1),
(5, 8),
(6, 1),
(6, 8),
(7, 1),
(7, 8),
(8, 1),
(8, 8),
(9, 1),
(9, 8),
(15, 1),
(15, 8),
(16, 1),
(16, 8),
(17, 1),
(17, 8),
(18, 1),
(18, 8),
(19, 1),
(19, 8),
(20, 1),
(20, 6),
(20, 8),
(21, 1),
(21, 6),
(21, 8),
(22, 1),
(22, 8),
(23, 1),
(23, 8),
(24, 1),
(24, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'images/Wolf.jpeg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ClientId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectsUsers`
--

CREATE TABLE `ProjectsUsers` (
  `ProjectId` int(10) UNSIGNED NOT NULL,
  `UserId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-01-24 02:49:30', '2018-01-24 02:49:30'),
(2, 'user', 'Client', '2018-01-24 02:49:30', '2018-01-24 03:27:37'),
(6, 'manager', 'Project Manager', '2018-01-24 03:28:18', '2018-01-24 03:28:18'),
(7, 'prog', 'Programmer', '2018-01-24 10:55:53', '2018-01-24 10:55:53'),
(8, 'subscriber', 'Subscriber', '2018-02-11 16:34:18', '2018-02-11 16:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Wolves', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Be wise and rise.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/January2018/ZzF8Qix38gGWTjTiX8od.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/January2018/aSy2UAh7E6GwfRcKYfsX.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Wolf', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Freedom your soul.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/January2018/PCFNXSswne7qyHYu4Mk2.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_plan`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(1, 15, 'main', 'sub_CJVElTUPJp1DWw', 'plan_CJUUzkky9XfYbY', 1, NULL, NULL, '2018-02-12 23:04:34', '2018-02-12 23:04:34'),
(2, 16, 'main', 'sub_CJVHv8H9Ds1MVn', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-12 23:08:17', '2018-02-12 23:08:17'),
(3, 17, 'main', 'sub_CJVOH7Pi0Jjv45', 'plan_CJUWChnXxFVit7', 1, NULL, '2018-03-12 23:15:00', '2018-02-12 23:15:04', '2018-02-12 23:28:02'),
(4, 17, 'main', 'sub_CJVzXz4h34Tg7F', 'plan_CJUWChnXxFVit7', 1, NULL, '2018-03-12 23:51:43', '2018-02-12 23:51:47', '2018-02-12 23:54:10'),
(5, 17, 'main', 'sub_CJW2br4ujcqCai', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-12 23:54:57', '2018-02-12 23:54:57'),
(6, 17, 'main', 'sub_CJW8ATx1bx42kf', 'plan_CJUWChnXxFVit7', 1, NULL, '2018-03-13 00:00:37', '2018-02-13 00:00:41', '2018-02-13 00:10:05'),
(7, 17, 'main', 'sub_CJWLjzCu3lqxBv', 'plan_CJUWChnXxFVit7', 1, NULL, '2018-03-13 00:13:25', '2018-02-13 00:13:29', '2018-02-13 00:16:53'),
(8, 17, 'main', 'sub_CJWQoPDhCcV79b', 'plan_CJUWChnXxFVit7', 1, NULL, '2018-02-13 00:19:34', '2018-02-13 00:18:36', '2018-02-13 00:19:34'),
(9, 18, 'main', 'sub_CJWXKyu77F8ncB', 'plan_CJUWChnXxFVit7', 1, NULL, '2018-03-13 00:26:01', '2018-02-13 00:26:05', '2018-02-13 00:26:30'),
(10, 18, 'main', 'sub_CJWdBuwOIYWtE4', 'plan_CJUWChnXxFVit7', 1, NULL, '2018-03-13 00:31:27', '2018-02-13 00:31:32', '2018-02-13 00:37:09'),
(11, 18, 'main', 'sub_CJWmktrywq7qGb', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 00:40:50', '2018-02-13 03:30:56'),
(12, 19, 'main', 'sub_CJX9u5vrroWwWt', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 01:04:10', '2018-02-13 01:08:31'),
(13, 1, 'main', 'sub_CJZYaun1Hkc7PR', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 03:32:58', '2018-02-13 03:32:58'),
(14, 20, 'main', 'sub_CJZchMxZ8CnIjc', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 03:36:53', '2018-02-13 03:36:53'),
(15, 21, 'main', 'sub_CJhQfFC2k5PE8n', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 11:41:20', '2018-02-13 11:42:01'),
(16, 28, 'main', 'sub_CJiI5dqGonGFHz', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 12:34:43', '2018-02-13 12:34:43'),
(17, 29, 'main', 'sub_CJiJkA9XHbST2W', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 12:35:47', '2018-02-13 12:35:47'),
(18, 34, 'main', 'sub_CJiobueJBmQEBl', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 13:06:40', '2018-02-13 13:06:40'),
(19, 37, 'main', 'sub_CJjedzhEbiqQSo', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 13:59:03', '2018-02-13 13:59:03'),
(20, 38, 'main', 'sub_CJjh9wwllITtYJ', 'plan_CJUWChnXxFVit7', 1, NULL, '2018-03-13 14:01:33', '2018-02-13 14:01:36', '2018-02-13 14:01:56'),
(21, 39, 'main', 'sub_CJjyg3T8U3CpxO', 'plan_CJUWChnXxFVit7', 1, NULL, '2018-03-13 14:19:11', '2018-02-13 14:19:15', '2018-02-13 14:19:53'),
(22, 40, 'main', 'sub_CJnWsvWjXWalQz', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-13 17:58:24', '2018-02-13 17:59:21'),
(23, 41, 'main', 'sub_CK2pwENjptXUhq', 'plan_CJUWChnXxFVit7', 1, NULL, NULL, '2018-02-14 09:48:18', '2018-02-14 09:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 1, 'Wolf', 'wolf@admin.com', 'users/January2018/oHe07HKS0p7tkl1t4mvz.jpeg', '$2y$10$4pemuU6yRaS/Rsh2jk.4Se5iSR5OgqnMLjlqOn0gDNa93p6mWPCBK', '9BLM8vJpzxnwEtLc0D8VlAxlGLlitR81n1hMDPddpwdkEMRqPzFApV59oe8K', '2018-01-24 02:52:48', '2018-02-13 03:32:56', 'cus_CJZYAj5sWgxLHB', 'MasterCard', '4444', NULL),
(3, 2, 'User', 'user@admin.com', 'users/January2018/MiIDiJqxZ3oqwAMiZf21.jpg', '$2y$10$49K4btYpXZ3j8fOih3nmfOVgGi/eXO2hRJBuyzXeWXtKaJfBfeTBW', 'yvNwJiMJW9S87h8LdIKGGG5bgDh8kXT1XifVVbJt4CmsriOMabo9a9XfKbWF', '2018-01-24 10:39:28', '2018-01-24 10:57:07', NULL, NULL, NULL, NULL),
(4, 1, 'Manager', 'man@admin.com', 'users/January2018/maENuuvZupxnr5ZTnk0C.png', '$2y$10$muSUcZU7JwLUlW1WeDPwvO8fOwiPER7VPfrmCgWtneFysGdblpcWO', 'BIDCRCVHF9tguuoBWnLHM3z0zSx2alYerx7tiC28fk15Jj6YFztCxMAk6oH3', '2018-01-24 11:05:32', '2018-01-24 11:06:10', NULL, NULL, NULL, NULL),
(18, 2, 'test11', 'test11@gmail.com', 'users/default.png', '$2y$10$fImSDcXNRfKe7MO/c9LbauoBnYmA3ukk7fctL9MOem5fOMDwatHnu', '0aNEY7TzOWvUNOx7Pbe1a0xPOErTGZYd6tAwipzvIILUqb7nzHHTMIJjc8KS', '2018-02-13 00:25:36', '2018-02-13 01:11:56', 'cus_CJWXnUsofsjeR1', 'JCB', '0000', NULL),
(19, 2, 'test12', 'test12@gmail.com', 'users/default.png', '$2y$10$qWtr5eMu./rA07NvewW3.uUuqnUpq3P/nDz4mBGsWWgwohVWJybZK', '64iEWS43zxywJpEM2U6BZwghIdHrWfqQkXTcZLCTKPfQoCeIcWDoPYKHA5PN', '2018-02-13 01:03:19', '2018-02-13 01:04:54', 'cus_CJX9EoCWjN7BTG', 'Visa', '4242', NULL),
(20, 2, 'prog', 'prog@gmail.com', 'users/default.png', '$2y$10$QRcB4PAQglx5KihfEnMn5eLujKcsm5Ky44di4apdVk.WdLYJaJ0Uu', '4VlLqMl0dUgXYPsn1Co8uugEOmThSRoVz7cFdRHARuViXysjixY7K9Gu7LKX', '2018-02-13 03:36:17', '2018-02-13 03:37:42', 'cus_CJZcwOY4YFh4JR', 'Visa', '4242', NULL),
(21, 2, 'test', 'test@gmail.com', 'users/default.png', '$2y$10$GbgEaQnTJ1xgkYpI/FgNSuruPe2vYkwCSh3C8FFRzFYp6BX80VIly', '6jOipyBMXEwfoYWxNsFc7cTXp3SqL241N1BOLYDuv23wPuJ7R1BBOU4UoJvP', '2018-02-13 11:40:40', '2018-02-13 11:41:17', 'cus_CJhQwro755LKjd', 'Visa', '4242', NULL),
(22, 2, 'tesss', 'tess@gmail.com', 'users/default.png', '$2y$10$M4q6ReNzpC/tG3JCeDs4aOzv2UXw4R1UAG7UwLwRbWXJ3/DnblYEK', 'ifLtxpVJIxfcK9o8f2pGYGgZcVvxYVEXRJTgwlINHq1ammyzdOP6ap2z2eoA', '2018-02-13 11:42:50', '2018-02-13 11:42:50', NULL, NULL, NULL, NULL),
(23, 2, '123', '123@123.com', 'users/default.png', '$2y$10$9CbRFo11p9MwQCaASlzpTuH/vsu32paoyhTbFdrnp7lxY9s99lrBm', 'jKhkDV314N21aQUB7DLf39V6xp0eCqiq9a5Ke5rEqeYJz1yH0tuBGSnCjVK3', '2018-02-13 11:45:17', '2018-02-13 11:45:17', NULL, NULL, NULL, NULL),
(24, 2, 'testMe', 'tst@gmail.com', 'users/default.png', '$2y$10$Mbgy7X7aUV8VT1XcpMq10.FLY5X520HZYobXKUdlU.8fXnQ68ZEd2', 'BiUmJz97QB2Ww4cicWu7RPpOyUbZA9mMCJ6r4tDDootIGiIVrPAbYNJ7r3OF', '2018-02-13 12:11:21', '2018-02-13 12:11:21', NULL, NULL, NULL, NULL),
(25, 2, 'now', 'now@gmail.com', 'users/default.png', '$2y$10$O2Z6LpQTNrHQ35QFdbvsb.nQg3eHt5Mmktt/VFTJW4FzXK2ekwfdC', 'G6uQCfUps6871dGtLkfYjU2ChujzKrcA7XygsgGEmafOyIZfp9ujOVLGLziJ', '2018-02-13 12:13:14', '2018-02-13 12:13:15', NULL, NULL, NULL, NULL),
(26, 2, 'qwe', 'qwe@gmail.com', 'users/default.png', '$2y$10$fPfPTYdC1F7SzYs.X522POequ2BaRP9S4.ma8hLwJnc4xmtQNNZu6', 'y6ac11t2FwZr9o45CBdSInl0B1XpO3j2mkE3x2TCXXbFu7s8l00T25moBJXf', '2018-02-13 12:29:17', '2018-02-13 12:29:17', NULL, NULL, NULL, NULL),
(27, 2, 'asd', 'asd@sd1.sd', 'users/default.png', '$2y$10$fNJqL.aIdcx9OAWHKOPQC.WJNmdTBtnR3k6Ah.bzjhMaQRT15gTOO', NULL, '2018-02-13 12:30:25', '2018-02-13 12:30:25', NULL, NULL, NULL, NULL),
(28, 2, 'qwe1', 'qwe1@gmail.com', 'users/default.png', '$2y$10$vQ7zntovYMZZ73vDbFgBB.hj9MZrYsBSv4s9aZoN4/Mt.iSAI7bxC', 'IEc0AfDT0Dz6FDVRQyLlVVY9fCa64RjDz5P8gBcsl7af0QVdV6A5xJteAe2i', '2018-02-13 12:33:19', '2018-02-13 12:34:41', 'cus_CJiI30cYb8g54l', 'Visa', '4242', NULL),
(29, 2, 'rewq', 'rewq@sdf.dsf', 'users/default.png', '$2y$10$moCYhYm5BGZle5XOVDgRR.ragHFGSZPZORfTHEDnnXTVy2o1SDzri', 'TJmji9UkwopX5mroUn8gQnXngZFrrfhfFUBxdshRXTL9AXf1isp7K47t3OVx', '2018-02-13 12:35:16', '2018-02-13 12:35:46', 'cus_CJiJorp95a5CRP', 'Visa', '4242', NULL),
(30, 2, 'abc', 'abc@gmail.com', 'users/default.png', '$2y$10$RhGDzqSuHljQa7PTOB9yvul21gd.bUAx7Iedwzo8Ev31YqmC8rDeK', '71XqkrT1ZqlyAtBEzpNYJarmJwItbBCWg24acrPUbeNCAZ7NKghyw5WlgE9E', '2018-02-13 12:46:53', '2018-02-13 12:46:53', NULL, NULL, NULL, NULL),
(31, 2, 'big', 'dig@big.com', 'users/default.png', '$2y$10$Ch51eqMpcp4gnlBp5zLeB.T465Hd6.A0AKF71.jE27t54tn1.P1Na', 'KFQ6aaGcsNQjJNq4ZCNSbWJJqvrczVCTtBEhyuszMtiO37ZC62z9pw4T2QDh', '2018-02-13 12:58:06', '2018-02-13 12:58:06', NULL, NULL, NULL, NULL),
(32, 2, 'qwe2', 'qwe2@gmail.com', 'users/default.png', '$2y$10$9T2FQGJBYRqwnIAkRNlgduXFFuCP2xcA09DA0wuY1BQYiyuCtEYyy', 'ELr2U7c8qRPYgvxe00tzyeXgpGs6cnJRoAybTFD1R8IqbPkz9UnM2jKMYdwk', '2018-02-13 12:59:11', '2018-02-13 12:59:11', NULL, NULL, NULL, NULL),
(33, 2, '111', '111@111.com', 'users/default.png', '$2y$10$ITwy.DyMWweGTyOJnakOPeGuLR3aJsyBYSQVqbh4oFxt8VSCilLPS', 'eEWvhL8GSuHqWfAzGdd7531c1Cloo42Jad7QO2CRhB6ibyCrEkjMfV9qhzWJ', '2018-02-13 13:04:22', '2018-02-13 13:04:22', NULL, NULL, NULL, NULL),
(34, 2, 'work', 'work@123.com', 'users/default.png', '$2y$10$/H8yTl7wXaOlvt2n41t3puwqCRH6Y8o79eu54TWWSZAR/CaYksovm', 'L6reXFEbB0IUHCk24wFDXhOgOPuUoWpMp5pHEp9GLskZ2wbKaynbxJJAQpXt', '2018-02-13 13:05:40', '2018-02-13 13:06:38', 'cus_CJioCTVVLZxBNP', 'Visa', '4242', NULL),
(35, 2, '456', '456@567.com', 'users/default.png', '$2y$10$ZVkCHJmMqL2.CiMEno0ZN.BOublJiJPsUyOgsv11cNAg3s8FAbFDS', 'Axxmx80mfndmEBlpje8kMtVHg0Rys20DGwyI4XpXBAeK1cZtLFGGmUAW97CI', '2018-02-13 13:15:18', '2018-02-13 13:15:18', NULL, NULL, NULL, NULL),
(36, 2, 'us', 'us@us.com', 'users/default.png', '$2y$10$a8fGRQGhktTsaKJK07JWvust/4E8Pc4NMib2M4MXqhB7IW4i9Dvdy', 'M0g5ruT6vlT2GA5g1OXXIvbZ5K5MhHevBBsVVjUkYENWGhk5LxXyIwp0lIHh', '2018-02-13 13:16:06', '2018-02-13 13:16:06', NULL, NULL, NULL, NULL),
(37, 2, '1test', 'q@gmail.com', 'users/default.png', '$2y$10$UEWG54cl4bIVtaFvuQbbf.guuM8VJsGk5opBwzerFI1IA/LUs7VxO', 'TOlPFOwU1XEp8wGQJ20lTbvaUZfdVu4PLPu2MdLxOQJEY7AWn5HnVpqRLckP', '2018-02-13 13:58:01', '2018-02-13 13:59:01', 'cus_CJjehLubkFkhDe', 'Visa', '4242', NULL),
(38, 2, 'testtttt', 'testtt@gmail.com', 'users/default.png', '$2y$10$8ztH31KZYW9PI/2h6lpN3uP9uiDZ/Onoo4t5Oc3q.Y1fMqQxI/2UG', 'qFkOUPaXtrjDgxdBPDGGiAFcGFXeATaWMCb6bKueUgCTPP191ygXEKtrsDTT', '2018-02-13 14:00:58', '2018-02-13 14:01:34', 'cus_CJjhKY2pr6TRRl', 'Visa', '4242', NULL),
(39, 2, 'qweqwe', 'qweqwe@qwe.com', 'users/default.png', '$2y$10$4tCZx6ecoDMxgtUyLmZNsO94Zzw5aP/Y0vnRFyHUIMmMw4DwmIOBe', 'HOQ9nbfA09UHoJtnmnE2Rs4QW44A7TvXUagCLApjWkT0zwm1vsquJTYEQmt5', '2018-02-13 14:18:37', '2018-02-13 14:21:18', 'cus_CJjyu5hPrVDy7b', 'MasterCard', '4444', NULL),
(40, 2, 'final', 'final@gmail.com', 'users/default.png', '$2y$10$YLLQzQpvNPaif6bN4fpLsuvOTA/HJ4xDjt1tBojFdmj7EOffnP12e', 'yh0M5pNHyEr9VUJmWZsjY32LMpd6D3UJhf2jydmT5l03whwhK9jbHenoV35x', '2018-02-13 17:57:01', '2018-02-13 17:59:49', 'cus_CJnVRn1tu5o8KV', 'MasterCard', '4444', NULL),
(41, 2, 'ff', 'ff@gmail.com', 'users/default.png', '$2y$10$xDJzNYtlZURXK14z7NcrBOogn8GqcFUVLi7CaN/4gGYhjzOLhP/0i', '8izZyRdvbPAFSTOOddDrLNl2XbBVjRYjkMvlHvRELYjNMlXeW86com63AIFF', '2018-02-14 09:47:46', '2018-02-14 09:49:02', 'cus_CK2pjo4v7Pstyt', 'Visa', '4242', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`Name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Projects`
--
ALTER TABLE `Projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
