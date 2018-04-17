-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 17 2018 г., 19:07
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rda`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Дамп данных таблицы `data_rows`
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
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(55, 7, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(56, 7, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(57, 7, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 4),
(58, 7, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 5),
(59, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(60, 8, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(61, 8, 'image', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(62, 8, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 4),
(63, 8, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 5),
(64, 9, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(65, 9, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(66, 9, 'body', 'rich_text_box', 'Описание статьи', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:4000\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(67, 9, 'feature', 'checkbox', 'Головна новина', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Звичайна подiя\",\"1\":\"Головна подiя\"}}', 4),
(68, 9, 'status', 'radio_btn', 'Статус', 0, 1, 1, 1, 1, 1, '{\"default\":\"published\",\"options\":{\"published\":\"Опубликованный\",\"pending\":\"В ожидании\",\"closed\":\"Закрыто\"}}', 5),
(69, 9, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 6),
(70, 9, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(71, 9, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-04-02 14:26:47', '2018-04-02 14:26:47'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-04-02 14:26:47', '2018-04-02 14:26:47'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-04-02 14:26:47', '2018-04-02 14:26:47'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-04-02 14:26:47', '2018-04-02 14:26:47'),
(7, 'galleries', 'galleries', 'Gallery', 'Galleries', 'voyager-images', 'App\\Gallery', NULL, NULL, NULL, 1, 0, '2018-04-13 10:53:38', '2018-04-13 10:53:38'),
(8, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-play', 'App\\Slider', NULL, NULL, NULL, 1, 0, '2018-04-13 11:12:15', '2018-04-13 11:12:15'),
(9, 'news', 'news', 'News', 'News', 'voyager-news', 'App\\News', NULL, NULL, NULL, 1, 0, '2018-04-17 06:05:40', '2018-04-17 06:05:40');

-- --------------------------------------------------------

--
-- Структура таблицы `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(2, '1', 'galleries/April2018/mi7zv7JbuqAkA6QDnItq.png', '2018-04-13 10:54:19', '2018-04-13 10:54:19'),
(3, '2', 'galleries/April2018/5NeWMcTM9Sqbf8F8EI5s.png', '2018-04-13 10:55:32', '2018-04-13 10:55:32'),
(4, '3', 'galleries/April2018/inLsUmV8WX9myXl1eluP.png', '2018-04-13 10:55:49', '2018-04-13 10:55:49'),
(5, '4', 'galleries/April2018/PQ628dYQGM94aOx9OcYR.png', '2018-04-13 10:56:14', '2018-04-13 10:56:14');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-02 14:26:48', '2018-04-02 14:26:48');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.media.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.users.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 10, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 11, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 12, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 13, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.hooks', NULL),
(14, 1, 'Galleries', '/admin/galleries', '_self', 'voyager-images', NULL, NULL, 15, '2018-04-13 10:53:38', '2018-04-13 10:53:38', NULL, NULL),
(15, 1, 'Sliders', '/admin/sliders', '_self', 'voyager-play', NULL, NULL, 16, '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL, NULL),
(16, 1, 'News', '/admin/news', '_self', 'voyager-news', NULL, NULL, 17, '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
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
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) DEFAULT '0',
  `status` enum('published','pending','closed') COLLATE utf8_unicode_ci DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `image`, `feature`, `status`, `created_at`, `updated_at`) VALUES
(1, 'На Сумщине в ДТП пострадал водитель мотороллера', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">В Ахтырке произошло ДТП с участием автомобиля Opel Astra и мотороллера Yamaha Jog, пишет Панорама со ссылкой на отдел коммуникации ГУНП в Сумской области.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Управляя автомобилем Opel, 60-летний мужчина допустил столкновение с 40-летним водителем мотороллера. В результате аварии последний получил травмы, с которыми был госпитализирован в хирургию местной больницы. У мужчины диагностировали ушибленную рану переносицы, закрытую черепно-мозговую травму, сотрясение головного мозга и ушиб левого плечевого сустава.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Полиция открыла уголовное производство по ч. 1 ст. 286 &laquo;Нарушение правил безопасности дорожного движения или эксплуатации транспорта лицами, управляющими транспортными средствами&raquo;. Причины и обстоятельства аварии выясняются.</span></p>', 'news/April2018/G8EZVIsqTOvzTF14Dt0f.jpg', 0, 'published', '2018-04-17 06:08:23', '2018-04-17 06:22:41'),
(2, 'На Сумщине двое мужчин могут сесть за самовольную вырубку леса', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">На Сумщине работники полиции обнаружили жителей Тростянецкого и Великописаривского районов, которые занимались незаконной вырубкой сосны и ясеня. За содеянное нарушителям грозит уголовная ответственность, сообщает Отдел коммуникации полиции в Сумской области.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">За последние два дня в ходе проверки полицейские задокументировали два факта похищения древесины твердой породы. Нарушителями оказались двое мужчин - 44-летний житель Великописаривского района 69-летний пенсионер из Тростянецкого района, которые в местных лесных массивах осуществили незаконный выруб деревьев породы &laquo;Акация&raquo; и &laquo;Сосны&raquo;. И если более младший мужчина спилил пять деревьев акации, дедушка совершил незаконную порубку пяти сосен и четырех деревьев акации.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Во время беседы с работниками полиции мужчины рассказали, что деревья выбирали для себя, для собственного пользования, выбирая твердые породы.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Древесину работники полиции изъяли и устанавливают нанесенный нарушителями убытки. А по данному факту открыли уголовные производства по ч.1 ст.246 Уголовного кодекса Украины &laquo;Незаконная порубка леса&raquo;, которая предусматривает штраф или ограничение или лишение свободы сроком до трех лет.</span></p>', 'news/April2018/bRxvDwU6LmRT0a7k8ooT.jpg', 0, 'published', '2018-04-17 06:10:00', '2018-04-17 06:22:07'),
(3, 'В Сумах планируют обустроить 4 площадки для выгула собак', '<div class=\"row\" style=\"box-sizing: border-box; margin-left: -10px; margin-right: -10px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 13px; background-color: #f0f0f0;\">\r\n<div class=\"col-xs-12 col-sm-9\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 10px; padding-right: 10px; float: left; width: 710.438px;\">\r\n<div class=\"article-text\" style=\"box-sizing: border-box; margin-bottom: 10px; font-size: 16px; line-height: 1.4;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">В единой системе местных петиций время от времени продолжают появляться обращения с просьбой обустроить специальные площадки для выгула собак. Летом 2016 года, отвечая на петицию о необходимости обустройства площадок для выгула, власть посоветовала собаководам убирать за своими питомцами.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">Зимой 2017 года, рассмотрев очередную петицию, власти пообещали в первом квартале 2018&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; text-decoration-line: none; box-shadow: #90b400 0px -1px inset;\" href=\"https://www.0542.ua/news/1892363\">разработать предложения относительно определения мест расположения площадок для выгула животных</a>, просчитать стоимость работ, а также подготовить соответствующую документацию для финансирования мероприятий по строительству этих объектов благоустройства.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">Чтобы узнать, что было сделано в данном направлении, мы направили запрос в департамент инфраструктуры г. Сумы. Как выяснилось, департамент обработал данный вопрос и определил следующие места, в которых планируется обустроить площадки:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">- район детского парка &laquo;Сказка&raquo; возле прибрежно-защитной полосы р. Сумка;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">- район водоема по ул. Интернационалистов;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">- район железнодорожной дороги по ул. Ковпака;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">- возле жилых домов №44 А, 44 Б, 44 В, 44 Г по ул. Прокофьева.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">Однако, как сообщают в департаменте инфраструктуры, прежде чем провести работы по определению стоимости специализированных площадок для выгула животных, необходимо чтобы поданные предложения утвердило управление архитектуры и градостроительства. Также они должны утвердить и архитектурное решение объектов благоустройства.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\" style=\"box-sizing: border-box; margin-left: -10px; margin-right: -10px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 13px; background-color: #f0f0f0;\">\r\n<div class=\"col-xs-12 col-sm-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 10px; padding-right: 10px; float: left; width: 236.813px;\">&nbsp;</div>\r\n<div class=\"col-xs-12 col-sm-9\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 10px; padding-right: 10px; float: left; width: 710.438px;\">\r\n<div class=\"article-photo intext-photo\" style=\"box-sizing: border-box; max-height: none; margin-bottom: 20px; text-align: center; overflow: hidden;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; max-height: 100%;\" src=\"https://www.s.0542.ua/s/44/section/newsInText/upload/images/news/intext/000/032/591/3018496816082590758946852109298139n_5ad5a4005e6da.jpg\" alt=\"\" /></div>\r\n</div>\r\n</div>', 'news/April2018/h4WOLX38kZJ02adkbQ7B.jpg', 0, 'published', '2018-04-17 06:10:25', '2018-04-17 06:21:36'),
(4, 'В Сумах некоторые дома остались без воды', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">В связи с проведением аварийно-ремонтных работ на насосной станции третьего подъема сегодня, 17 апреля, с 9:00 до 15:00 прекращено водоснабжение домов №№ 41, 42, 43 по ул. Интернационалистов и дома № 35 по ул. Прокофьева.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">После завершения работ водоснабжение будет восстановлено.</span></p>', 'news/April2018/GK6cib6pnGAcHSor6C1J.jpg', 1, 'published', '2018-04-17 06:10:46', '2018-04-17 06:20:56');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(2, 'browse_database', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(3, 'browse_media', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(4, 'browse_compass', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(5, 'browse_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(6, 'read_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(7, 'edit_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(8, 'add_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(9, 'delete_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(10, 'browse_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(11, 'read_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(12, 'edit_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(13, 'add_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(14, 'delete_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(15, 'browse_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(16, 'read_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(17, 'edit_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(18, 'add_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(19, 'delete_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(20, 'browse_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(21, 'read_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(22, 'edit_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(23, 'add_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(24, 'delete_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(35, 'browse_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(36, 'read_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(37, 'edit_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(38, 'add_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(39, 'delete_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(40, 'browse_hooks', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(41, 'browse_galleries', 'galleries', '2018-04-13 10:53:38', '2018-04-13 10:53:38', NULL),
(42, 'read_galleries', 'galleries', '2018-04-13 10:53:38', '2018-04-13 10:53:38', NULL),
(43, 'edit_galleries', 'galleries', '2018-04-13 10:53:38', '2018-04-13 10:53:38', NULL),
(44, 'add_galleries', 'galleries', '2018-04-13 10:53:38', '2018-04-13 10:53:38', NULL),
(45, 'delete_galleries', 'galleries', '2018-04-13 10:53:38', '2018-04-13 10:53:38', NULL),
(46, 'browse_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(47, 'read_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(48, 'edit_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(49, 'add_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(50, 'delete_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(51, 'browse_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL),
(52, 'read_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL),
(53, 'edit_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL),
(54, 'add_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL),
(55, 'delete_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-04-02 14:26:48', '2018-04-02 14:26:48'),
(2, 'user', 'Normal User', '2018-04-02 14:26:48', '2018-04-02 14:26:48');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Відділ освіти', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Відділ освіти', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/April2018/ddHODMzRMNx1hLKxblde.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'site.facebook_link', 'facebook', 'http://www.facebook.com/', NULL, 'text', 6, 'Site'),
(12, 'site.twitter_link', 'twitter', 'https://twitter.com/?lang=en', NULL, 'text', 7, 'Site'),
(13, 'site.youtube_link', 'youtube', 'https://www.youtube.com/', NULL, 'text', 8, 'Site'),
(14, 'site.rss_link', 'rss', 'https://en.wikipedia.org/wiki/RSS', NULL, 'text', 9, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'sliders/April2018/DQxsPhFEspd5biFKglyA.png', '2018-04-13 11:15:33', '2018-04-13 11:15:33'),
(2, '2', 'sliders/April2018/fj77uQUliCg4JpIkEzYR.png', '2018-04-13 11:17:53', '2018-04-13 11:17:53');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$6MgBiipg.s8TLvWcsSn1BOXcL6IqT8/NjTo39ykDDLt66ouAt4a4S', NULL, '2018-04-02 14:27:07', '2018-04-02 14:27:07');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT для таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
