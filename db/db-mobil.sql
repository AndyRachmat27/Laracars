-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.25-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk db-mobil
CREATE DATABASE IF NOT EXISTS `db-mobil` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db-mobil`;

-- membuang struktur untuk table db-mobil.category_models
CREATE TABLE IF NOT EXISTS `category_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.category_models: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `category_models` DISABLE KEYS */;
INSERT INTO `category_models` (`id`, `nama`, `created_at`, `updated_at`, `deleted`) VALUES
	(1, 'Mobil 3 Kursi', '2023-06-04 23:35:38', '2023-07-17 09:55:19', 'Y'),
	(2, 'Mobil 4 Kursi', '2023-06-04 23:35:54', '2023-07-17 09:55:04', 'Y'),
	(3, 'Mobil 5 Kursi', '2023-06-04 23:36:05', '2023-07-17 09:54:46', 'Y');
/*!40000 ALTER TABLE `category_models` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.customers_models
CREATE TABLE IF NOT EXISTS `customers_models` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.customers_models: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `customers_models` DISABLE KEYS */;
INSERT INTO `customers_models` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`, `deleted`) VALUES
	(1, 'Ucup', 'ucupubang@gmail.com', 83727271, 'Adoh', '2023-06-04 23:36:30', '2023-06-04 23:36:30', NULL),
	(2, 'Zeus', 'gacor@gmail.com', 87883828, 'Maxwin', '2023-06-04 23:37:13', '2023-06-04 23:37:14', NULL);
/*!40000 ALTER TABLE `customers_models` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.migrations: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2023_05_09_013019_create_permission_tables', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.model_has_permissions: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.model_has_roles: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(1, 'App\\Models\\User', 4),
	(1, 'App\\Models\\User', 7),
	(2, 'App\\Models\\User', 3),
	(3, 'App\\Models\\User', 2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.order_items_models
CREATE TABLE IF NOT EXISTS `order_items_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK__order_models` (`id_order`) USING BTREE,
  KEY `FK_order_items_models_products_models` (`id_product`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.order_items_models: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `order_items_models` DISABLE KEYS */;
INSERT INTO `order_items_models` (`id`, `id_item`, `id_order`, `id_product`, `quantity`, `price`, `created_at`, `updated_at`, `deleted`) VALUES
	(1, 1, 1, 3, 2, 90000, '2023-06-04 23:38:37', '2023-06-04 23:38:37', NULL);
/*!40000 ALTER TABLE `order_items_models` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.order_models
CREATE TABLE IF NOT EXISTS `order_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `total_amount` int(11) NOT NULL,
  `payment_status` varchar(50) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK__customers_models` (`id_customer`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.order_models: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `order_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_models` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.permissions: ~8 rows (lebih kurang)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'role-list', 'web', '2023-05-09 03:03:35', '2023-05-09 03:03:35'),
	(2, 'role-create', 'web', '2023-05-09 03:03:35', '2023-05-09 03:03:35'),
	(3, 'role-edit', 'web', '2023-05-09 03:03:35', '2023-05-09 03:03:35'),
	(4, 'role-delete', 'web', '2023-05-09 03:03:35', '2023-05-09 03:03:35'),
	(5, 'product-list', 'web', '2023-05-09 03:03:35', '2023-05-09 03:03:35'),
	(6, 'product-create', 'web', '2023-05-09 03:03:35', '2023-05-09 03:03:35'),
	(7, 'product-edit', 'web', '2023-05-09 03:03:35', '2023-05-09 03:03:35'),
	(8, 'product-delete', 'web', '2023-05-09 03:03:35', '2023-05-09 03:03:35');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.products_models
CREATE TABLE IF NOT EXISTS `products_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` varchar(255) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.products_models: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `products_models` DISABLE KEYS */;
INSERT INTO `products_models` (`id`, `id_category`, `product_name`, `image`, `description`, `price`, `quantity`, `created_at`, `updated_at`, `deleted`) VALUES
	(1, '1', 'Mobil Landcruiser', '', 'Ini mobil landcruiser ygy', 680000, 2, NULL, '2023-07-17 10:00:35', 'Y'),
	(2, '2', 'Mobil Alphard', '', 'Ini mobil alphard ygy', 700000, 2, '2023-06-04 23:34:58', '2023-07-17 09:59:32', 'Y'),
	(3, '3', 'Mobil Xenia', '', 'Ini mobil xenia ygy', 280000, 4, '2023-06-04 23:35:22', '2023-07-17 09:58:28', 'Y'),
	(4, '1', 'Mobil Avanza', '', 'Ini mobil avanza ygy', 300000, 3, '2023-07-09 23:08:29', '2023-07-17 09:57:53', 'Y'),
	(5, '5', 'Mobil Innova', '', 'Ini mobil innova ygy', 300000, 3, NULL, '2023-07-17 09:57:08', 'Y');
/*!40000 ALTER TABLE `products_models` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.review_models
CREATE TABLE IF NOT EXISTS `review_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_review_models_customers_models` (`id_customer`) USING BTREE,
  KEY `FK_review_models_products_models` (`id_products`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.review_models: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `review_models` DISABLE KEYS */;
INSERT INTO `review_models` (`id`, `id_customer`, `id_products`, `rating`, `comment`, `date`, `created_at`, `updated_at`, `deleted`) VALUES
	(1, 1, 3, 10, 'Bablas Angine', '2023-06-04 23:40:00', '2023-06-04 23:40:01', '2023-06-04 23:40:02', NULL);
/*!40000 ALTER TABLE `review_models` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.roles: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'web', '2023-05-09 03:05:47', '2023-05-09 03:05:47'),
	(2, 'Staff', 'web', '2023-05-11 08:48:14', '2023-05-11 08:48:14'),
	(3, 'Member', 'web', '2023-05-11 08:48:48', '2023-05-11 08:48:48');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.role_has_permissions: ~24 rows (lebih kurang)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 2),
	(2, 3),
	(3, 1),
	(3, 2),
	(3, 3),
	(4, 1),
	(4, 2),
	(4, 3),
	(5, 1),
	(5, 2),
	(5, 3),
	(6, 1),
	(6, 2),
	(6, 3),
	(7, 1),
	(7, 2),
	(7, 3),
	(8, 1),
	(8, 2),
	(8, 3);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.setting_menu
CREATE TABLE IF NOT EXISTS `setting_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_label` varchar(255) DEFAULT NULL,
  `menu_url` text DEFAULT NULL,
  `menu_color` varchar(255) DEFAULT NULL,
  `menu_parent` int(11) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `type` enum('label','menu','submenu') DEFAULT 'label',
  `ord` int(11) DEFAULT NULL,
  `extensiontarget` int(11) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `deleted` enum('true','false') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.setting_menu: ~14 rows (lebih kurang)
/*!40000 ALTER TABLE `setting_menu` DISABLE KEYS */;
INSERT INTO `setting_menu` (`id`, `menu_name`, `menu_label`, `menu_url`, `menu_color`, `menu_parent`, `menu_icon`, `type`, `ord`, `extensiontarget`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
	(1, 'MASTER', NULL, '#', NULL, 0, NULL, 'label', 1, NULL, NULL, 'false', NULL, '2023-05-23 02:26:29'),
	(2, 'Auth', NULL, '#', NULL, 1, 'ki-address-book', 'menu', 1, NULL, NULL, 'false', NULL, '2023-07-09 15:31:15'),
	(3, 'Users', NULL, 'users', NULL, 2, 'ki-address-book', 'menu', 1, NULL, NULL, 'false', NULL, '2023-05-22 09:56:14'),
	(4, 'Roles', NULL, 'roles', NULL, 2, 'ki-address-book', 'menu', 2, NULL, NULL, 'false', NULL, '2023-05-23 03:37:13'),
	(5, 'Customer', NULL, 'customers_models', NULL, 1, 'ki-address-book', 'menu', 2, NULL, NULL, 'false', NULL, '2023-07-09 15:31:29'),
	(6, 'category_models', NULL, 'category_models', NULL, 1, 'ki-address-book', 'menu', 3, NULL, NULL, 'false', NULL, '2023-07-09 15:32:30'),
	(7, 'products_models', NULL, 'products_models', NULL, 1, 'ki-address-book', 'menu', 4, NULL, NULL, 'false', NULL, '2023-07-09 15:32:30'),
	(8, 'order_models', NULL, 'order_models', NULL, 1, 'ki-address-book', 'menu', 5, NULL, NULL, 'true', NULL, '2023-07-09 15:32:30'),
	(9, 'TRANSAKSI', NULL, '#', NULL, 0, 'ki-address-book', 'label', 2, NULL, NULL, 'false', NULL, '2023-07-09 14:19:41'),
	(10, 'order_models', NULL, 'order_models', NULL, 9, 'ki-address-book', 'menu', 1, NULL, NULL, 'false', NULL, '2023-07-09 14:19:41'),
	(11, 'Pengembalian', NULL, 'pengembalian', NULL, 9, 'ki-address-book', 'menu', 2, NULL, NULL, 'true', NULL, '2023-07-09 14:19:41'),
	(12, 'Edit Stock', NULL, NULL, NULL, 12, 'ki-address-book', 'menu', NULL, NULL, NULL, 'false', NULL, NULL),
	(13, 'Order History', NULL, NULL, NULL, 12, 'ki-address-book', 'menu', NULL, NULL, NULL, 'false', NULL, NULL),
	(14, 'Discount Product', NULL, NULL, NULL, 12, 'ki-address-book', 'menu', NULL, NULL, NULL, 'false', NULL, NULL);
/*!40000 ALTER TABLE `setting_menu` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.setting_route
CREATE TABLE IF NOT EXISTS `setting_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` varchar(255) DEFAULT NULL,
  `grp` enum('web','api') DEFAULT 'web',
  `type` varchar(255) DEFAULT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `stats` varchar(255) DEFAULT 'false',
  `deleted` enum('false','true') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.setting_route: ~93 rows (lebih kurang)
/*!40000 ALTER TABLE `setting_route` DISABLE KEYS */;
INSERT INTO `setting_route` (`id`, `route_name`, `grp`, `type`, `controller_name`, `method`, `stats`, `deleted`, `created_at`, `update_at`) VALUES
	(1, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_web\\Setting_webController', NULL, NULL, 'true', NULL, NULL),
	(2, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
	(3, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
	(4, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
	(5, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
	(6, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\BackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
	(7, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_webSetting_webController', '', '', 'true', NULL, NULL),
	(8, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_webSetting_webController', '', '', 'true', NULL, NULL),
	(9, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_web\\Setting_webController', '', '', 'true', NULL, NULL),
	(10, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_web\\Setting_webController', '', '', 'true', NULL, NULL),
	(11, 'setting_menu', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_menu\\Setting_menuController', '', '', 'false', NULL, NULL),
	(12, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(13, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(14, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(15, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(16, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(17, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(18, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(19, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(20, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(21, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(22, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(23, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(24, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(25, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(26, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(27, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(28, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(29, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(30, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(31, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(32, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(33, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(34, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(35, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(36, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(37, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(38, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(39, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(40, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(41, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(42, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(43, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(44, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(45, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(46, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(47, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(48, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(49, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(50, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(51, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(52, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(53, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(54, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(55, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(56, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(57, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(58, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(59, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(60, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(61, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(62, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(63, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(64, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(65, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(66, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(67, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(68, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(69, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(70, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(71, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(72, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(73, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(74, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(75, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(76, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(77, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(78, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(79, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
	(80, 'anggota', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Anggota\\AnggotaController', '', '', 'false', NULL, NULL),
	(81, 'kategori_buku', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Kategori_buku\\Kategori_bukuController', '', '', 'false', NULL, NULL),
	(82, 'buku', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Buku\\BukuController', '', '', 'false', NULL, NULL),
	(83, 'pustakawan', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pustakawan\\PustakawanController', '', '', 'false', NULL, NULL),
	(84, 'peminjaman', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Peminjaman\\PeminjamanController', '', '', 'false', NULL, NULL),
	(85, 'pengembalian', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pengembalian\\PengembalianController', '', '', 'false', NULL, NULL),
	(86, 'customers_models', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Customers_models\\Customers_modelsController', '', '', 'false', NULL, NULL),
	(87, 'category_models', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Category_models\\Category_modelsController', '', '', 'false', NULL, NULL),
	(88, 'products_models', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Products_models\\Products_modelsController', '', '', 'false', NULL, NULL),
	(89, 'order_models', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Order_models\\Order_modelsController', '', '', 'false', NULL, NULL),
	(90, 'products_models', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Products_models\\Products_modelsController', '', '', 'false', NULL, NULL),
	(91, 'products_models', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Products_models\\Products_modelsController', '', '', 'false', NULL, NULL),
	(92, 'products_models', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Products_models\\Products_modelsController', '', '', 'false', NULL, NULL),
	(93, 'products_models', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Products_models\\Products_modelsController', '', '', 'false', NULL, NULL);
/*!40000 ALTER TABLE `setting_route` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.setting_web
CREATE TABLE IF NOT EXISTS `setting_web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) DEFAULT NULL,
  `site_detail` text DEFAULT NULL,
  `site_type` varchar(255) DEFAULT NULL,
  `site_currency` varchar(255) DEFAULT NULL,
  `site_logo_front` varchar(255) DEFAULT NULL,
  `site_logo_admin` varchar(255) DEFAULT NULL,
  `stripe_screet_key` varchar(255) DEFAULT NULL,
  `stripe_publishable_key` varchar(255) DEFAULT NULL,
  `stripe_webhook_screet` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `gst` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.setting_web: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `setting_web` DISABLE KEYS */;
INSERT INTO `setting_web` (`id`, `site_name`, `site_detail`, `site_type`, `site_currency`, `site_logo_front`, `site_logo_admin`, `stripe_screet_key`, `stripe_publishable_key`, `stripe_webhook_screet`, `domain`, `price`, `gst`, `created_at`, `updated_at`) VALUES
	(4, 'Supresso', 'supresso branch singapore', '1', '2', '', '', 'qwerty', 'asdfg', 'zxcvb', 'poiuyt', 'lkjhgf', 8, NULL, NULL),
	(5, 'qwerty gaes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-16 07:13:34', '2023-05-16 07:14:20');
/*!40000 ALTER TABLE `setting_web` ENABLE KEYS */;

-- membuang struktur untuk table db-mobil.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db-mobil.users: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `address`, `phone`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.com', NULL, NULL, '081217173406', '$2y$10$d5/YyDOALW5i/9CxEsbdsOaYrmMa6VrYY5MttBTlCFxfSeAKut3kW', 'superwpdev.png', NULL, '2023-05-09 02:43:39', '2023-05-09 02:43:39'),
	(2, 'Suryo Atmojo', 'suryoatm@gmail.com', NULL, NULL, '085649224822', '$2y$10$NQfNc3uN3U3t5IzfPiN2ZuGkikVH2uzq2Y3oTx84lXF3.h6dB2P9S', 'superwpdev.png', NULL, '2023-05-09 03:05:47', '2023-05-09 03:05:47'),
	(3, 'atmojo', 'suryoatmojo@uwp.ac.id', NULL, NULL, NULL, '$2y$10$z/jeK7/cfQ.eGQuAP74wDOr53nmui.OiR9JYlQ6lMDaP85F.tAuey', NULL, NULL, '2023-05-11 08:37:39', '2023-05-12 02:44:03'),
	(4, 'sigit', 'sigitwahyu05@gmail.com', NULL, NULL, NULL, '$2y$10$//L19Sf8c7gpp6RMstpgkulVv89vs96NZI19K2rPq.P.Q4qgwy08a', '', NULL, '2023-05-11 09:09:28', '2023-05-12 06:03:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
