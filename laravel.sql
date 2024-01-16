-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 02:00 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'amnsdnadsmamndsnsad', '2024-01-16 08:21:05', '2024-01-16 08:21:05'),
(9, 'dasdmnsa', '2024-01-16 08:25:00', '2024-01-16 08:25:00'),
(10, 'شنتيستنشيستننشتيس', '2024-01-16 08:49:18', '2024-01-16 08:49:18'),
(11, 'test333', '2024-01-16 09:12:05', '2024-01-16 09:12:05');

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `department_id`, `image`, `created_at`, `updated_at`) VALUES
(4, 'admamdmnasd', 1, '1705401497.png', '2024-01-16 07:38:17', '2024-01-16 07:38:17'),
(8, 'test', 2, 'sadm,as,mdma,sd,ma,md', '2024-01-16 09:06:54', '2024-01-16 09:06:54'),
(9, 'smmddd', 11, 'C:\\Users\\yagou\\AppData\\Local\\Temp\\php5E72.tmp', '2024-01-16 09:12:59', '2024-01-16 09:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2024_01_16_064107_create_logins_table', 1),
(6, '2024_01_16_071102_create_departments_table', 2),
(7, '2024_01_16_082206_create_items_table', 3);

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
(1, 'dadnsmnamnd', 'ndadmnsadmn', NULL, '$2y$12$0Oc7CFZInKD9mWnwqaBlMeZwjBAnJGTzIKA3BcBg1RaVbVD462JVq', NULL, '2024-01-16 07:41:44', '2024-01-16 07:41:44'),
(3, 'asdamndmn', 'nmdsamndsmn', NULL, '$2y$12$Rjhf6o56oLHEZz67L266.euxxH1vOmWXFHrSwyWUfJDvgL502kDOS', NULL, '2024-01-16 07:42:31', '2024-01-16 07:42:31'),
(6, 'asdamndmn', 'dsmadnansddma', NULL, '$2y$12$TpKGbsI/ao4LqpEDG78JJuKieOnVAnhIPHteb7.ke87G04Go05rPS', NULL, '2024-01-16 07:42:54', '2024-01-16 07:42:54'),
(8, 'andsnad', 'mnamsdmnadasdaads', NULL, '$2y$12$4gLEanEHnuKX8q6xq3tRQuxx27VBnnxCrCO9DfkCcEtwT2g4FH84a', NULL, '2024-01-16 07:43:37', '2024-01-16 07:43:37'),
(9, 'amdnsadmnanmd', 'dmnasdmnsadmnsadmn', NULL, '$2y$12$27iIQcvwc14ofvY7JPgR.uvmuMFsWveJkPGniJrfz2wNuFpYhIvv2', NULL, '2024-01-16 07:44:23', '2024-01-16 07:44:23'),
(10, 'dsamdsamn', 'mnsdsamndsadsamnd', NULL, '$2y$12$BOsvp4DJwkgDaT7th3w.6uHSZQttqv6HuUbZOxhsGyZQM006PszCi', NULL, '2024-01-16 07:44:34', '2024-01-16 07:44:34'),
(11, 'asdadsmnnm', 'dmnamndmnamndmn', NULL, '$2y$12$3UIwnuuPwEOZdy8Gawmrp.nGqa4n8NXvOiHtWjdLheqvOfLH9uJtO', NULL, '2024-01-16 07:45:43', '2024-01-16 07:45:43'),
(12, 'asndnsadmnads', 'mndsadmnadsnmamn', NULL, '$2y$12$gGqfrcLhb63TqsjVQMwKkOSWm1Ip0bh9oxSy.e8dgxNIt2x3J43T2', NULL, '2024-01-16 07:45:52', '2024-01-16 07:45:52'),
(13, 'adsm,amds,mas,md', ',md,msa,md,ma', NULL, '$2y$12$1OYGQil.f1xQACdWuvwTeeT2DvAk.FOeq2nGvpYy./lMEF/zXWkNG', NULL, '2024-01-16 07:47:06', '2024-01-16 07:47:06'),
(15, 'asdasdmnmn', 'dnmamndmnamdnsmn', NULL, '$2y$12$iJpHnvkOM8ak2/EdbINg2uoEghGcPetL/5YAZwe90r4t0pyXZrh1C', NULL, '2024-01-16 07:47:39', '2024-01-16 07:47:39'),
(16, 'dsadasmdnmn', 'dmnasdmnamnd', NULL, '$2y$12$HQ8rFLSCQ0xJ9NqLy1KTdu.Umaz.P8lUYRDh.rhIYvFaL3D1h6AsW', NULL, '2024-01-16 07:48:41', '2024-01-16 07:48:41'),
(17, 'hasan', 'yagouthasan3@gmail.com', NULL, '$2y$12$IXQodeTCCv8dK0ivVfoob.GMT.2gmLkSnx6s3AaH8jImptrEbTuaa', NULL, '2024-01-16 07:53:04', '2024-01-16 07:53:04'),
(18, 'asmd,sa,md,mma,', 'm,as,md,msa,md,msasd,m', NULL, '$2y$12$YyCp.ztbEag5WC4sB9ZgL.H5o5Yf.BlLM/VRV9duZ/yzjSILeSIpm', NULL, '2024-01-16 08:43:17', '2024-01-16 08:43:17'),
(21, 'asd,ma,msd,m', 'm,da,mds,ma,mds,ma,m', NULL, '$2y$12$WqOvsRX4B1a3ZUGa604EaOtKTpBFuhHV3B.26BFK/LSJldDNQfDpS', NULL, '2024-01-16 08:43:44', '2024-01-16 08:43:44'),
(24, 'asd,ma,msd,m', 'fffffffffffffffffffffffff', NULL, '$2y$12$.dOG7e3Un7kHV9ojb.mskucGBXsyl1V5a.0LRaAIZ5bKEZfQOi7jS', NULL, '2024-01-16 08:44:10', '2024-01-16 08:44:10'),
(26, 'asd,ma,msd,m', 'fffffffffffffffffffffffffdsamndsa', NULL, '$2y$12$T6nKtmE4nhovIKflTEjrMuSRTvmoFUnLUji4BCCkMdoyJJ6NGzOWe', NULL, '2024-01-16 08:44:59', '2024-01-16 08:44:59'),
(27, 'jamal', 'jamal@gmail.com', NULL, '$2y$12$PKwMqvuX2ekN7v/4GbcZYuwLakalp7UhUFVQc/zrxmjG3q0DoBRqO', NULL, '2024-01-16 09:09:56', '2024-01-16 09:09:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
