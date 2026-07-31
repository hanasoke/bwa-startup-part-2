-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 31, 2026 at 07:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bwastartup`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_description` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `goal_amount` int(11) NOT NULL,
  `current_amount` int(11) NOT NULL,
  `perks` text NOT NULL,
  `backer_count` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `name`, `short_description`, `description`, `goal_amount`, `current_amount`, `perks`, `backer_count`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Campaign 1', 'Short Description', 'Loooooooooooooooooooooooong', 100000000, 0, 'perks satu, disini yang dua, disitu yang tiga', 0, 'campaign-satu', '2026-07-17 09:51:05', '2026-07-17 09:51:05'),
(2, 1, 'Campaign 2', 'Short Description', 'Loooooooooooooooooooooooong', 100000000, 0, 'perks satu, disini yang dua, disitu yang tiga', 0, 'campaign-dua', '2026-07-17 09:51:05', '2026-07-17 09:51:05'),
(3, 2, 'Campaign 3', 'Short Description', 'Loooooooooooooooooooooooong', 100000000, 0, 'perks satu, disini yang dua, disitu yang tiga', 0, 'campaign-tiga', '2026-07-17 09:51:05', '2026-07-17 09:51:05'),
(4, 1, 'Penggalangan Dana Startup', 'short', 'Looooooooooong', 100000000, 0, 'hadiah satu, dua, dan tiga', 0, 'penggalangan-dana-startup-s-int-1', '2026-07-31 21:29:59', '2026-07-31 21:29:59'),
(5, 1, 'Penggalangan Dana Startup', 'short', 'Looooooooooong', 100000000, 0, 'hadiah satu, dua, dan tiga', 0, 'penggalangan-dana-startup-s-int-1', '2026-08-01 00:21:16', '2026-08-01 00:21:16'),
(6, 0, 'Penggalangan Dana Startup', 'short', 'Looooooooooong', 100000000, 0, 'hadiah satu, dua, dan tiga', 0, 'penggalangan-dana-startup-s-int-0', '2026-08-01 00:23:50', '2026-08-01 00:23:50'),
(7, 22, 'Penggalangan Dana Startup', 'short', 'Looooooooooong', 100000000, 0, 'hadiah satu, dua, dan tiga', 0, 'penggalangan-dana-startup-s-int-22', '2026-08-01 00:25:37', '2026-08-01 00:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_images`
--

CREATE TABLE `campaign_images` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign_images`
--

INSERT INTO `campaign_images` (`id`, `campaign_id`, `file_name`, `is_primary`, `created_at`, `updated_at`) VALUES
(5, 1, 'campaign-images/satu.jpg', 0, '2026-07-17 11:06:38', '2026-07-17 11:06:38'),
(6, 1, 'campaign-images/dua.jpg', 1, '2026-07-17 11:06:38', '2026-07-17 11:06:38'),
(7, 1, 'campaign-images/tiga.jpg', 0, '2026-07-17 11:06:38', '2026-07-17 11:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password_hash` varchar(100) DEFAULT NULL,
  `avatar_file_name` varchar(100) DEFAULT NULL,
  `role` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `occupation`, `email`, `password_hash`, `avatar_file_name`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Agung', 'programmer', 'com.agungsetiawan@gmail.com', '$2a$04$l3ZfrH0a0o2PK4FrRsl/t.34hzpHEUt3WdxuZ.plahsHR/e6qapDS', 'images/1-hatsune_miku_4.jpg', 'user', NULL, '2026-07-10 15:44:27', '2026-07-16 09:18:17'),
(2, 'Setiawan', 'musician', 'agungsetiawan@yahoo.com', '$2a$04$l3ZfrH0a0o2PK4FrRsl/t.34hzpHEUt3WdxuZ.plahsHR/e6qapDS', 'images/2-john.jpg', 'user', NULL, '2026-07-07 03:29:25', '2026-07-16 09:38:08'),
(5, 'Tes simpan dari service', 'anak band', 'contoh@gmail.com', '$2a$04$l3ZfrH0a0o2PK4FrRsl/t.34hzpHEUt3WdxuZ.plahsHR/e6qapDS', 'images/5-hatsune_miku_4.jpg', 'user', NULL, '2026-06-28 16:38:10', '2026-07-16 09:34:37'),
(6, 'Name dari POSTMAN', 'UI designer', 'email@domain.com', '$2a$04$mUaZGIA7Zpy6gKcBeVigJOwmJKytXonJqf1ZH03spAccah822.zau', '', 'user', NULL, '2026-06-29 13:12:00', '2026-06-29 13:12:00'),
(10, 'Nama', 'CEO', 'email@domain.com', '$2a$04$ts4flRVxDUB8oAu9KAZ/W.f1espEXo40qlB9ETtdOa0lOAJVq2iku', '', 'user', NULL, '2026-07-01 04:49:21', '2026-07-01 04:49:21'),
(22, 'Hanas', 'CTO', 'hanasoke@email.com', '$2a$04$M9YtfALBfbAO.aeHKpx1luOy9um/TYYmzQP1OI2xRLY1Fnzzj0sX6', '', 'user', NULL, '2026-07-03 17:07:34', '2026-07-03 17:07:34'),
(23, 'test jwt', 'arsitek', 'jwt@gmail.com', '$2a$04$bEQ0JHfe70c9rtkMqm2Y1OB/x6Z1wzx1J8Ix5KRAWeZDHoqgcVf5e', '', 'user', NULL, '2026-07-12 15:35:57', '2026-07-12 15:35:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_images`
--
ALTER TABLE `campaign_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
