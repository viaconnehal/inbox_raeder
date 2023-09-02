-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 01:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_contents`
--

CREATE TABLE `api_contents` (
  `id` int(11) NOT NULL,
  `request_types` varchar(200) NOT NULL,
  `url` varchar(300) NOT NULL,
  `header` varchar(1200) NOT NULL,
  `content_type` varchar(300) DEFAULT NULL,
  `authorization_types` varchar(300) DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`body`))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `api_contents`
--

INSERT INTO `api_contents` (`id`, `request_types`, `url`, `header`, `content_type`, `authorization_types`, `body`) VALUES
(1, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"test\", \"address\": \"test2\"}'),
(3, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"test\", \"address\": \"test2\"}'),
(4, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"rehan\", \"address\": \"67Asd\"}'),
(32, 'POST', 'http://127.0.0.1:8000/api/post_info/8', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"sahin\"}'),
(31, 'POST', 'http://127.0.0.1:8000/api/post_info/8', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"ydd\"}'),
(8, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"ydd\"}'),
(9, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '[]'),
(10, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(11, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(12, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(13, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(14, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(15, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(16, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(17, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(18, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(19, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(20, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(21, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfs\"}'),
(22, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"sdfsdfsl;\"}'),
(23, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"sdfsd\": \"sdfsdfs\"}'),
(24, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"sdfsd\": \"sdfsdfs\"}'),
(25, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '[]'),
(26, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '[]'),
(27, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"v\": \"sdf\", \"sdfs\": \"sdfsdfsdfsfsf\"}'),
(28, 'POST', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"v\": \"sdf\", \"sdfs\": \"sdfsdfsdfsfsf\"}'),
(29, 'PUT', 'http://127.0.0.1:8000/api/post_info', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"v\": \"sdf\", \"sdfs\": \"sdfsdfsdfsfsf\"}'),
(33, 'POST', 'http://127.0.0.1:8000/api/post_info/8', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"sahin\"}'),
(34, 'POST', 'http://127.0.0.1:8000/api/post_info/8', '{\"id\":\"200\"}', 'application/json', 'bearer', '{\"name\": \"shara\", \"contat\": \"sahin\"}');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_models`
--

CREATE TABLE `dynamic_models` (
  `id` bigint(20) NOT NULL,
  `model_name` text NOT NULL,
  `table1` varchar(250) NOT NULL,
  `table1key` varchar(250) NOT NULL,
  `table2` varchar(250) DEFAULT NULL,
  `table2key` varchar(250) DEFAULT NULL,
  `intermediate_table` varchar(250) DEFAULT NULL,
  `intermediate_table1_map_key` varchar(250) DEFAULT NULL,
  `intermediate_table2_map_key` varchar(250) DEFAULT NULL,
  `relation_type` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dynamic_models`
--

INSERT INTO `dynamic_models` (`id`, `model_name`, `table1`, `table1key`, `table2`, `table2key`, `intermediate_table`, `intermediate_table1_map_key`, `intermediate_table2_map_key`, `relation_type`, `created_at`, `updated_at`) VALUES
(1, 'projects', 'projects', 'id', NULL, NULL, NULL, NULL, NULL, 'self', '2023-08-28 08:47:37', '2023-08-28 08:47:37'),
(2, 'projects_users', 'projects', 'id', 'users', 'id', 'project_users', 'project_id', 'user_id', 'belong-to-many', '2023-08-28 09:32:11', '2023-08-28 15:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_25_085737_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user-create', 'web', '2023-08-26 04:56:53', '2023-08-26 04:56:53'),
(2, 'user-create', 'api', '2023-08-26 04:56:53', '2023-08-26 04:56:53'),
(3, 'user-update', 'web', '2023-08-26 04:56:53', '2023-08-26 04:56:53'),
(4, 'user-update', 'api', '2023-08-26 04:56:53', '2023-08-26 04:56:53'),
(5, 'user-view', 'web', '2023-08-26 04:56:53', '2023-08-26 04:56:53'),
(6, 'user-view', 'api', '2023-08-26 04:56:53', '2023-08-26 04:56:53'),
(7, 'user-delete', 'web', '2023-08-26 04:56:53', '2023-08-26 04:56:53'),
(8, 'user-delete', 'api', '2023-08-26 04:56:53', '2023-08-26 04:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` varchar(300) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `query_logs`
--

CREATE TABLE `query_logs` (
  `id` varchar(300) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `query` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `query_logs`
--

INSERT INTO `query_logs` (`id`, `user_id`, `query`, `created_at`, `updated_at`) VALUES
('1adefa18-046c-4ad3-abf5-683c6da01490', 1, 'alter table `projects` add constraint `projects_user_id_foreign` foreign key (`user_id`) references `users` (`id`) on delete cascade on update cascade', '2023-08-22 05:30:35', '2023-08-22 05:30:35'),
('20566f1e-64a3-4879-b866-2259a2003995', 1, 'select * from information_schema.tables where table_schema = \'api_builder\' and table_name = \'projects\' and table_type = \'BASE TABLE\'', '2023-08-22 05:30:35', '2023-08-22 05:30:35'),
('80392a1b-734b-4786-8afc-8210ac28356a', 1, 'create table `projects` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(200) not null, `user_id` bigint unsigned not null, `description` text not null, `created_by` bigint unsigned not null, `status` enum(\'active\', \'inactive\') null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'', '2023-08-22 05:17:52', '2023-08-22 05:17:52'),
('b5011461-d533-41df-b28b-8b89cbc242a8', 1, 'alter table `projects` add constraint `projects_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete cascade on update cascade', '2023-08-22 05:30:35', '2023-08-22 05:30:35'),
('ec383ee8-0e90-44d8-80ec-ad1b615d8221', 1, 'select * from information_schema.tables where table_schema = \'api_builder\' and table_name = \'projects\' and table_type = \'BASE TABLE\'', '2023-08-22 05:17:52', '2023-08-22 05:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2023-08-26 04:29:49', '2023-08-26 04:29:49'),
(2, 'super-admin', 'api', '2023-08-26 04:29:49', '2023-08-26 04:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 1),
(8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `value` text NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `slug`, `description`, `value`, `created_at`, `update_at`) VALUES
(1, 'db_prefix', 'DB Prefix', 'akdwvq', '2023-08-25 08:06:33', '2023-08-25 11:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `task_name` text NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super@example.com', NULL, '$2y$10$z/hJI10ewABJiVUeDPLnDOf0ndwDJqxIpgG7hUmgkUq3N2hUYQqi2', NULL, '2023-08-25 01:53:43', '2023-08-25 01:53:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_contents`
--
ALTER TABLE `api_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_models`
--
ALTER TABLE `dynamic_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model_name` (`model_name`) USING HASH;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`),
  ADD KEY `projects_created_by_foreign` (`created_by`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query_logs`
--
ALTER TABLE `query_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_project_fk` (`project_id`);

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
-- AUTO_INCREMENT for table `api_contents`
--
ALTER TABLE `api_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `dynamic_models`
--
ALTER TABLE `dynamic_models`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `task_project_fk` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
