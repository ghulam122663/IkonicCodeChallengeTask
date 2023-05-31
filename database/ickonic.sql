-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2023 at 02:30 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ickonic`
--

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
CREATE TABLE IF NOT EXISTS `connections` (
  `id` int(11) NOT NULL,
  `user1_id` int(11) DEFAULT NULL,
  `user2_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`id`, `user1_id`, `user2_id`, `created_at`, `updated_at`) VALUES
(3, 53, 52, '2023-05-28 07:25:01', '2023-05-28 07:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `sender_id`, `receiver_id`, `status`, `created_at`, `updated_at`) VALUES
(28, 53, 52, 'pending', '2023-05-28 06:22:08', '2023-05-28 06:22:08'),
(29, 53, 50, 'pending', '2023-05-28 06:22:08', '2023-05-28 06:22:08'),
(30, 53, 49, 'pending', '2023-05-28 06:22:08', '2023-05-28 06:22:08'),
(31, 53, 48, 'pending', '2023-05-28 06:22:08', '2023-05-28 06:22:08'),
(32, 53, 47, 'pending', '2023-05-28 06:22:08', '2023-05-28 06:22:08'),
(33, 53, 46, 'pending', '2023-05-28 06:22:09', '2023-05-28 06:22:09'),
(35, 53, 45, 'pending', '2023-05-28 07:23:33', '2023-05-28 07:23:33'),
(37, 53, 1, 'pending', '2023-05-28 07:52:43', '2023-05-28 07:52:43'),
(38, 53, 2, 'pending', '2023-05-28 07:52:43', '2023-05-28 07:52:43'),
(39, 53, 3, 'pending', '2023-05-28 07:52:43', '2023-05-28 07:52:43'),
(40, 53, 4, 'pending', '2023-05-28 07:52:43', '2023-05-28 07:52:43'),
(41, 53, 5, 'pending', '2023-05-28 07:52:43', '2023-05-28 07:52:43'),
(42, 53, 6, 'pending', '2023-05-28 07:52:43', '2023-05-28 07:52:43'),
(43, 53, 7, 'pending', '2023-05-28 07:52:44', '2023-05-28 07:52:44'),
(44, 53, 8, 'pending', '2023-05-28 07:52:44', '2023-05-28 07:52:44'),
(45, 53, 9, 'pending', '2023-05-28 07:52:44', '2023-05-28 07:52:44'),
(46, 53, 10, 'pending', '2023-05-28 07:52:44', '2023-05-28 07:52:44'),
(47, 53, 11, 'pending', '2023-05-28 07:52:44', '2023-05-28 07:52:44'),
(48, 53, 12, 'pending', '2023-05-28 07:52:44', '2023-05-28 07:52:44'),
(49, 53, 13, 'pending', '2023-05-28 07:52:44', '2023-05-28 07:52:44'),
(50, 53, 14, 'pending', '2023-05-28 07:52:45', '2023-05-28 07:52:45'),
(51, 53, 15, 'pending', '2023-05-28 07:52:45', '2023-05-28 07:52:45'),
(52, 53, 16, 'pending', '2023-05-28 07:52:45', '2023-05-28 07:52:45'),
(53, 53, 17, 'pending', '2023-05-28 07:52:45', '2023-05-28 07:52:45'),
(54, 53, 18, 'pending', '2023-05-28 07:52:45', '2023-05-28 07:52:45'),
(55, 53, 19, 'pending', '2023-05-28 07:52:45', '2023-05-28 07:52:45'),
(56, 53, 20, 'pending', '2023-05-28 07:52:45', '2023-05-28 07:52:45'),
(57, 53, 21, 'pending', '2023-05-28 07:52:46', '2023-05-28 07:52:46'),
(58, 53, 22, 'pending', '2023-05-28 07:52:46', '2023-05-28 07:52:46'),
(59, 53, 23, 'pending', '2023-05-28 07:52:46', '2023-05-28 07:52:46'),
(60, 53, 24, 'pending', '2023-05-28 07:52:46', '2023-05-28 07:52:46'),
(61, 53, 25, 'pending', '2023-05-28 07:52:46', '2023-05-28 07:52:46'),
(62, 53, 26, 'pending', '2023-05-28 07:52:46', '2023-05-28 07:52:46'),
(63, 53, 27, 'pending', '2023-05-28 07:52:46', '2023-05-28 07:52:46'),
(64, 53, 28, 'pending', '2023-05-28 07:52:47', '2023-05-28 07:52:47'),
(65, 53, 29, 'pending', '2023-05-28 07:52:47', '2023-05-28 07:52:47'),
(66, 53, 30, 'pending', '2023-05-28 07:52:47', '2023-05-28 07:52:47'),
(67, 53, 31, 'pending', '2023-05-28 07:52:47', '2023-05-28 07:52:47'),
(68, 53, 32, 'pending', '2023-05-28 07:52:47', '2023-05-28 07:52:47'),
(69, 53, 33, 'pending', '2023-05-28 07:52:47', '2023-05-28 07:52:47'),
(70, 53, 34, 'pending', '2023-05-28 07:52:48', '2023-05-28 07:52:48'),
(71, 53, 35, 'pending', '2023-05-28 07:52:48', '2023-05-28 07:52:48'),
(72, 53, 36, 'pending', '2023-05-28 07:52:48', '2023-05-28 07:52:48'),
(73, 53, 37, 'pending', '2023-05-28 07:52:48', '2023-05-28 07:52:48'),
(74, 53, 38, 'pending', '2023-05-28 07:52:48', '2023-05-28 07:52:48'),
(75, 53, 39, 'pending', '2023-05-28 07:52:48', '2023-05-28 07:52:48'),
(76, 53, 40, 'pending', '2023-05-28 07:52:49', '2023-05-28 07:52:49'),
(77, 53, 41, 'pending', '2023-05-28 07:52:49', '2023-05-28 07:52:49'),
(78, 53, 42, 'pending', '2023-05-28 07:52:49', '2023-05-28 07:52:49'),
(86, 52, 53, 'pending', '2023-05-31 08:26:48', '2023-05-31 08:26:48'),
(87, 52, 51, 'pending', '2023-05-31 08:26:50', '2023-05-31 08:26:50'),
(88, 52, 50, 'pending', '2023-05-31 08:46:06', '2023-05-31 08:46:06'),
(89, 52, 48, 'pending', '2023-05-31 08:46:09', '2023-05-31 08:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'suggestions',
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'PVp71Adzck', 'L7tNlWFiSC@example.com', NULL, '$2y$10$Gz6i62TOfQj71sxzXXqtee1ugzcWVDHgbYVa6GS5P7ELzG9O9j8tG', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:25:15', '2023-05-28 03:27:33'),
(2, 'uBZMsDEyft', '8Xx6F2FASE@example.com', NULL, '$2y$10$.NSl0mlWx.rkUYBR1N4tuuLscgrMGLxOsW/yu6XENaAJcyU1qLmhu', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:21', '2023-05-27 03:26:21'),
(3, 'x07lNkm6Rh', 'JP84dO6wrb@example.com', NULL, '$2y$10$a883BiZ.BWI14YSZRBYANOeJQpBdJTD43w3SJKMGhb7O4ODHBKyba', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:21', '2023-05-27 03:26:21'),
(4, 'PyZN0Hfa1f', 'mHNdNDTegO@example.com', NULL, '$2y$10$/q2Gu52fnVN0Eh12.vuPJOpPMH98mT4G1UfuiE2niIq506q.bzIhi', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:21', '2023-05-28 03:27:53'),
(5, '619AgtSDMo', 'ME0AxsBvqL@example.com', NULL, '$2y$10$TUqS5dHW/dL4DARkQ6zgQODZMte.fQSUEcOkF7RFFmdbooqbG1Dw2', 'suggestions', NULL, NULL, NULL, NULL, '2023-05-27 03:26:21', '2023-05-27 03:26:21'),
(6, 'Ls5Ahnk0cl', 'sbvjZ9JgBx@example.com', NULL, '$2y$10$LM77ofWsS3INXlVdNffcTOlXJ8Qw7pFN0Ui3QgPqWVHa9PwXRSs7O', 'received', NULL, NULL, NULL, NULL, '2023-05-27 03:26:21', '2023-05-28 03:28:14'),
(7, 'r9ZhSxj06u', 'FxNuZcZFyP@example.com', NULL, '$2y$10$6hdU8XTAOXoFwMLBuDdlm.hdDdpV36mx4V7NIQNkYG5LEqbzuzwqi', 'received', NULL, NULL, NULL, NULL, '2023-05-27 03:26:21', '2023-05-28 03:28:13'),
(8, 'AzcMMjHrok', 'OWMomJVBN5@example.com', NULL, '$2y$10$ChHfhJRq65LeDwMNNh5pEOfbnw3CQK8UidWjtbazBK364e4zWdedO', 'received', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-27 03:26:22'),
(9, 'v3NgxmUHHW', 'tiZwbz3nYh@example.com', NULL, '$2y$10$T6VbnrsEucg2TC8s.BxTk.vwsuv4G8vISJQSVdQ3Va0ZfzUdm13ze', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:17'),
(10, 'SZ31lLJVr4', 'csdap4ohE7@example.com', NULL, '$2y$10$2BEyMAF4U2ZwUUmY28WE.eSYhJnncTf8F/Dg.6tWgf4hIvBso3g.m', 'suggestions', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-27 03:26:22'),
(11, 'yXs2zANXnd', 'SUzb3LIsCW@example.com', NULL, '$2y$10$tMtmh2PtYE8J7K9dPV8zG.jDp2C1B.JztLC9yE/5zzQ90XxT4FtsC', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:11'),
(12, 'tLtAy4AD0g', 'SdtdnP2lzH@example.com', NULL, '$2y$10$1hDL8zcrJ9NSf.nkjTm8Iefo2znFrQ1GYX1xmz0QrD3qALOp7.ZDy', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:04'),
(13, 'MiDCG7qTLj', 'Gwr4zVCaN4@example.com', NULL, '$2y$10$N815hDCaGKxk7Oqm8O/mmuAhkZ5N/.sMl8yO.VU1k.ziJyfuji.VC', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:04'),
(14, 'N8dxyw8Bgt', 'X0ZdLNJif0@example.com', NULL, '$2y$10$/oa1L4xkOcndu2vR0IZeM.NZv1yiTf.MpZpPJuqi98O4GhS5ZlQwC', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:27:57'),
(15, 'ec2Z8dfBbB', 'x7PHKXVSzv@example.com', NULL, '$2y$10$iJ7rLHQilNT5zWKwIScfo.yW4hkqFBFQE9NB9JY/9AlHax3jg8yia', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:01'),
(16, 'es1ppI8q0C', 'QybLr6Dwek@example.com', NULL, '$2y$10$EMXa8OPqXu0zdAqf.WztD.aBfSNCraPoeu6e/JYIhVw.XzXvo5iX6', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:03'),
(17, 'bYrYRwDfV6', 'DQgS2kiobH@example.com', NULL, '$2y$10$5juQBLavttiGZ6FF0Q8D/.zTPfhicttYb0p3iyGiZ1I1IdyS7YlDW', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:04'),
(18, 'ITeRw8gW69', 'urKTXmK1Xc@example.com', NULL, '$2y$10$PygZNXNtP5HkPVSYMNoCBeV2Ja.4WPDYEfrE/4WnZdUr56mZ/A0Ey', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:05'),
(19, 'sAsLefbPW0', '4RSE1pnO3m@example.com', NULL, '$2y$10$UUD0m1iqT/rYR8jEhHQKn.nRq1t1u8s6IwOqiVjgb2glA5QjSnfdW', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:05'),
(20, 'nmJsLpX5bz', 'kLfhahYD8Q@example.com', NULL, '$2y$10$CBRuWJBdSTTnPuybkVhrzen/MzRUa/HjH4JoG7iir69MVjli7oEZ6', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:05'),
(21, 'NtQZ7thJRL', 'jQlo63hRxK@example.com', NULL, '$2y$10$NlpomFUNQ34dyQdJYFYY0uPVX1ZjIHHa5dVcgrXmwjVI8eLBp9SSu', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:22', '2023-05-28 03:28:05'),
(22, 'ErBak6j9bE', 'y3YPhFf2Xy@example.com', NULL, '$2y$10$GEaCYVf2jYdV6ngffQh4BuNp29v8u4pZGWmXjMH.OXBF0cdnFPvoW', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:06'),
(23, 'Xs4XQIunfV', 'SI4n3pFacE@example.com', NULL, '$2y$10$PyddUTRpo3mciz8Ni3i.5uVZJqSzy0YzurrKB.KKbMF74aT9dxqRi', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:06'),
(24, 'K7ygm4AxPW', 'y0h9AHbKKy@example.com', NULL, '$2y$10$x7DQRV9jbhis4pHpHDdlBe6KX1uClkb67yAJeH3D.YVVHX7GFM4t.', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:06'),
(25, 'e0MgTjfTrs', 'sF2dmqZgeB@example.com', NULL, '$2y$10$b8zbPfAQdrgBEuKzY0vSkuMcGr9x8otvll8h0rdPBbc8QvS7Ecoka', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:00'),
(26, 'nxWAYytR0p', 'HFucmzrOiM@example.com', NULL, '$2y$10$9ur1zwhvSCVz6RgBFvWxOOn4k040z78e.r5skhijW2ZRbkRC2KQzK', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:06'),
(27, 'IZDcdQLmFq', 'dcE0wzZvld@example.com', NULL, '$2y$10$ItKktZ.znEiSMgQzK1TE9eRRRagX5xCSWLAfeEjSSGp1UcSuRIoR6', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:06'),
(28, 'DZ7SbwFosX', '4GdoCQ4RXC@example.com', NULL, '$2y$10$bJvFthUM3PlyajbWKRtjlOVx7sEZE6/0k4un3aBebhjtRFnbTIAIK', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:07'),
(29, 'faTuWdVbnc', 'cvebtQz8Sg@example.com', NULL, '$2y$10$91t.wLtHratnYP2qG/gj9.C68agXByrepe8t.5gt2fRkhJ6Whpd5G', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:07'),
(30, 'zyy1XX43VZ', 'C1rRkunRs1@example.com', NULL, '$2y$10$zmZOBt25wY.F7/yGPvuqa.5F1/mZySc1oWUbMKxy.JFSUX8N/hPSe', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:07'),
(31, '3tIU4KEAvQ', 'xPlyjl0ndf@example.com', NULL, '$2y$10$29nuwoNJ/QsAOdDGphyGg.dtLqPykh5N8HzItfqgBsmiHmyG90rRi', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:07'),
(32, 'XVYPegBV2y', 'MGhi9i1Jc0@example.com', NULL, '$2y$10$j0NCz0MgwXK1nc.E.3/4k.If.j5VqGb.7vWD2zfToMhsCQzD4Ag5S', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:07'),
(33, '1jUo7X74YF', 'UoLKGXmCst@example.com', NULL, '$2y$10$rPKsEZDOwq6gFI2Ae2NVSuewmeCFPjRvApinoT4AHwy5EZz.ApRnS', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:07'),
(34, 'Tg9J9cjA59', 'f3KXBnItfp@example.com', NULL, '$2y$10$ZAj9yTQ2bnv574oDD44J/e3eYV.z2yeA01xmzrA3cjodlJwWLrdhu', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:08'),
(35, 'scPK6n5f8a', 'NqBs6CzThv@example.com', NULL, '$2y$10$GJomjQp9zzXkwlO6emUzW.qmbSzDTxbd/5v4RcUzJR8H/fg9F4xwa', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:23', '2023-05-28 03:28:08'),
(36, 'ij4A8PMYBj', 'tbtuUV3ZQK@example.com', NULL, '$2y$10$PNQrgO741g9N7pnvP6j0Ke7i9OcozGdKN8zjG3i3DB.qzef08Qx/C', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:08'),
(37, 'XuqlDioiWw', 'FIh3ybJqVo@example.com', NULL, '$2y$10$2Y7ehPFE19uUKfcsVrrCZeXLTpqjw2QE2eSQ0Gj27J4lvKYEBugP.', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:08'),
(38, 'ki0I38R3Vc', 'fcTcMLGk27@example.com', NULL, '$2y$10$INFF6tOCmbEeLm20AoRWVuGazh3SzjO//W7BS0RTRmYmZc7vfd.K6', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:08'),
(39, 'YCuWW8z5kW', '6LNdoBwdqC@example.com', NULL, '$2y$10$Q6XanWvD3Indh5YtohLZ5uzGymU3UDiTY5ZMW5TMdoJAqiUih8E.6', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:09'),
(40, 'CGxo0ckEh6', 'GUFAYwDkzA@example.com', NULL, '$2y$10$uTdxFr8BPkbnJYbm0f7sQe2iZSvEoeCuvDyrM.m.uTgN38W48OH/y', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:09'),
(41, 'qQaaODAWDo', 'Ps2h6Sonmt@example.com', NULL, '$2y$10$cnumH9L/mlwgR7ZZQIK.8.FZX6I.bsSoD1Gdp9ChAjFULUqok7WGK', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:09'),
(42, 'M1B0Mj1csu', 'lFaMWZr4zK@example.com', NULL, '$2y$10$knDXHGlVwdhBMritTH6cL.jEs5HHZS0JfkrByfkLr76wGqrPL0cvm', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:09'),
(43, 'qvX5yJaiRh', 'DhcmS0IkN2@example.com', NULL, '$2y$10$Y6W6iWRrogjWbr.jNNIIgOnUdBIFQWgnGg1RNQTb16FK4/DVyvkKm', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:09'),
(44, 'SEfrUlbMla', 'P9pLXJkZbP@example.com', NULL, '$2y$10$spWh67iDZJ7POOzEFiA7TeURYZ4MAsCJIH2ry.wtdBEB.hhFIyIhu', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:09'),
(45, 'GBlMAhnAL0', 'onU4GZwfIc@example.com', NULL, '$2y$10$IaqMrRl1pHgaexDTvou5FeiTeyQ2lY92KU8bfhTB2VYtorsSL/Mra', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:10'),
(46, 's2I8mftzxa', 'Im8v8xoo1a@example.com', NULL, '$2y$10$U4uL6PN9F9XDAQY0dfDyzOvrH/xRKgAaU7e/90UPlgehyXujv/vNy', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:10'),
(47, 'ykLiQasZcD', 'mcQb7YscTB@example.com', NULL, '$2y$10$GRg.wrmkt52q8ztTYFdtvu.EW/A7O/JngGrR6rtdrCG4V53iYivtG', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:10'),
(48, 'R2YfCI10Cn', 'b9oMYBVjm3@example.com', NULL, '$2y$10$33N7OcKs5fmEAJ2t2gutK.6x/.Iy4T2R.9fvBEFY1/YH4rgRfZPzm', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:10'),
(49, 'c0uotzlN6D', 'AFS4qwOof7@example.com', NULL, '$2y$10$/96.JlY4N5llvZhU5zDwVuZLdl9/pa9Zni7lip9URxp8C.jAW7N7i', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:10'),
(50, 'OHrT06jjB5', 'NWA6cOBJIV@example.com', NULL, '$2y$10$nOAtMlhJPdjTwTB1fntP7.hYZ3MVmcl3Kz8BA5j8gKqZLNLfoCdr2', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:24', '2023-05-28 03:28:10'),
(51, 'z8lO4VvX0i', '8d1EeyQsDS@example.com', NULL, '$2y$10$2Wj5J9vcWNYTmXDOg6O/fuDRmMNaGOo97K4mJxF97CuoQGMO6jWZ.', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:25', '2023-05-28 03:28:11'),
(52, 'yVLUFY4yM8', 'eMed80qPck@example.com', NULL, '$2y$10$JUKMEdpyh4dCr2X7P0sPg.puSwy9H25ztmMlY7dYmf842PaHc1Ray', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:26:25', '2023-05-28 03:28:11'),
(53, 'Rehman Afzal', 'rehman@gmail.com', NULL, '$2y$10$R8ryX5hW5vWjMhiXzJndFO4rb2TUCua3pzGzrpL2jzpDh2ZEp0nA6', 'sent', NULL, NULL, NULL, NULL, '2023-05-27 03:28:15', '2023-05-28 03:28:17'),
(54, 'Muhammad Yar', 'yar@gmail.com', NULL, '$2y$10$tuSJqGz2q6ZI5bYm3B7FBeRVzzj6/YzeEisDPAmpYo1.wBQFBQAse', 'suggestions', NULL, NULL, NULL, NULL, '2023-05-28 06:33:44', '2023-05-28 06:33:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
