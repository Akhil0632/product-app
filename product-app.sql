-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 12:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(6, '0001_01_01_000000_create_users_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '2025_04_23_064649_create_products_table', 1),
(10, '2025_04_23_065318_create_personal_access_tokens_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'api_token', '7d7be085ede641a69fafdd0c7bc9e10553b94f3375909aa0015a7d630dd58701', '[\"*\"]', NULL, NULL, '2025-04-23 04:11:07', '2025-04-23 04:11:07'),
(2, 'App\\Models\\User', 1, 'api_token', 'bf625bd37bc646b127406af02575a7ea3032ae7f7529b74f027c78f34c24a871', '[\"*\"]', NULL, NULL, '2025-04-23 04:13:50', '2025-04-23 04:13:50'),
(3, 'App\\Models\\User', 3, 'api_token', 'db206ba93130a2d100694fad6a3f4d4cb255b232efcaa98363dddaa0f7813e93', '[\"*\"]', NULL, NULL, '2025-04-23 04:16:53', '2025-04-23 04:16:53'),
(4, 'App\\Models\\User', 1, 'api_token', 'e8b818192001918d68c71c78e231e3a0517f5c04ca472bfff880af7361adb549', '[\"*\"]', NULL, NULL, '2025-04-23 04:17:44', '2025-04-23 04:17:44'),
(5, 'App\\Models\\User', 1, 'api_token', '4e64ca7314a6ed87bd6856c9a17aa346f02e319c9b73e334179967c51e45bf6e', '[\"*\"]', '2025-04-23 05:18:38', NULL, '2025-04-23 04:26:30', '2025-04-23 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `status`, `created_at`, `updated_at`) VALUES
(1, 'at', 121.91, 4, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(2, 'aliquid', 11.14, 89, 1, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(3, 'non', 184.36, 91, 1, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(4, 'labore', 488.79, 59, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(5, 'neque', 428.43, 8, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(6, 'nam', 328.10, 59, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(7, 'fuga', 130.55, 27, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(8, 'incidunt', 403.29, 51, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(9, 'iste', 464.29, 52, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(10, 'eligendi', 130.73, 37, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(11, 'eos', 345.80, 35, 1, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(12, 'vel', 197.68, 93, 1, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(13, 'sint', 342.36, 98, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(14, 'voluptates', 190.94, 88, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(15, 'aspernatur', 67.05, 11, 0, '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(16, 'eos', 145.79, 77, 0, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(17, 'aut', 276.60, 14, 0, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(18, 'velit', 38.73, 14, 0, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(19, 'blanditiis', 301.25, 29, 1, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(20, 'impedit', 433.55, 1, 0, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(21, 'et', 463.99, 3, 0, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(22, 'nostrum', 430.21, 91, 0, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(23, 'consectetur', 136.02, 42, 0, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(24, 'nam', 441.14, 20, 0, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(25, 'deleniti', 23.06, 74, 1, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(26, 'et', 463.93, 62, 1, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(27, 'asperiores', 325.17, 58, 0, '2025-04-23 01:47:59', '2025-04-23 01:47:59'),
(28, 'consequuntur', 330.38, 60, 0, '2025-04-23 01:48:00', '2025-04-23 01:48:00'),
(29, 'quia', 486.52, 1, 1, '2025-04-23 01:48:00', '2025-04-23 01:48:00'),
(30, 'ipsam', 76.09, 42, 0, '2025-04-23 01:48:00', '2025-04-23 01:48:00'),
(31, 'quia', 39.77, 70, 1, '2025-04-23 01:48:00', '2025-04-23 01:48:00'),
(32, 'error', 274.98, 69, 1, '2025-04-23 01:48:00', '2025-04-23 01:48:00'),
(33, 'voluptate', 103.84, 30, 0, '2025-04-23 01:48:00', '2025-04-23 01:48:00'),
(34, 'non', 66.58, 2, 1, '2025-04-23 01:48:00', '2025-04-23 01:48:00'),
(35, 'dolor', 378.81, 72, 0, '2025-04-23 01:48:00', '2025-04-23 01:48:00'),
(36, 'consequatur', 393.22, 56, 0, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(37, 'est', 314.29, 39, 0, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(38, 'dolore', 234.01, 77, 1, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(39, 'repudiandae', 157.08, 76, 0, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(40, 'ex', 6.37, 64, 0, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(41, 'illum', 65.04, 41, 1, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(42, 'tempore', 147.01, 27, 0, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(43, 'nesciunt', 95.68, 23, 0, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(44, 'rerum', 203.49, 89, 0, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(45, 'corrupti', 464.53, 70, 0, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(46, 'officiis', 391.43, 80, 1, '2025-04-23 01:48:01', '2025-04-23 01:48:01'),
(47, 'nulla', 474.32, 41, 0, '2025-04-23 01:48:02', '2025-04-23 01:48:02'),
(48, 'nostrum', 405.98, 49, 1, '2025-04-23 01:48:02', '2025-04-23 01:48:02'),
(49, 'architecto', 301.74, 38, 1, '2025-04-23 01:48:02', '2025-04-23 01:48:02'),
(50, 'consectetur', 112.70, 82, 0, '2025-04-23 01:48:02', '2025-04-23 01:48:02'),
(52, 'Updated Laptop', 899.99, 45, 0, '2025-04-23 05:13:17', '2025-04-23 05:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Test User', 'test@example.com', '2025-04-23 01:47:57', '$2y$12$G0pf0FhAL3mG7qhlRurtWuek/pbKhOYMp0s0aO5sRCN4J20CcFLqa', 'r9LQlhEYW7', '2025-04-23 01:47:57', '2025-04-23 01:47:57'),
(2, 'User 1', 'user1@example.com', NULL, '$2y$12$95b8PD7L0y2.Pp9t6Jls7.A.S05dtxSZWxOfCORQ3Na2XQNnsxViO', NULL, '2025-04-23 04:11:05', '2025-04-23 04:11:05'),
(3, 'User2', 'user2@example.com', NULL, '$2y$12$SGNEUVxVOMV5YJdHLhA8Ju6zmakxEd/nWGm0O6vWHstNZuJ29.js.', NULL, '2025-04-23 04:16:53', '2025-04-23 04:16:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
