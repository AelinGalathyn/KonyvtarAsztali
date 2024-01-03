-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 05:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vizsga-2022-14s-wip-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publish_year` int(11) NOT NULL,
  `page_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publish_year`, `page_count`, `created_at`, `updated_at`) VALUES
(1, 'Quo Animi Quia Eveniet Aut', 'Jaida Nitzsche', 1965, 120, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(2, 'Eum Magni Fugit', 'Ardella Bauch', 2000, 774, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(3, 'Id Voluptas Omnis', 'Kyla Kertzmann III', 1996, 676, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(4, 'Saepe Totam Magnam Sit', 'Briana Kihn', 1906, 872, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(5, 'Voluptatum Sit Quia', 'Ardella Bauch', 1921, 953, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(6, 'Ratione Quo', 'Dr. Judah Armstrong IV', 2015, 801, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(7, 'Voluptates Accusamus Est Vitae', 'Sabina O\'Connell', 1981, 93, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(8, 'Nesciunt Sed Est Enim', 'Asha Kreiger', 1943, 767, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(9, 'Aut Ad Aut', 'Mrs. Mozelle Nader', 1950, 693, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(10, 'Repellendus Ut Mollitia Quo', 'Sabina O\'Connell', 2020, 507, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(11, 'Veritatis Consectetur', 'Briana Kihn', 1986, 506, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(12, 'Libero Quia', 'Sabina O\'Connell', 1960, 971, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(13, 'Quia Nulla Eum Quo', 'Asha Kreiger', 1997, 228, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(14, 'Non Consectetur Ut', 'Kyla Kertzmann III', 1954, 865, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(15, 'Velit Modi', 'Briana Kihn', 1936, 570, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(16, 'Quibusdam Cumque Perspiciatis Sed Nihil', 'Asha Kreiger', 1957, 186, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(17, 'Cupiditate Libero', 'Kyla Kertzmann III', 1962, 944, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(18, 'Vel Amet Eum Suscipit Earum', 'Briana Kihn', 1917, 896, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(19, 'Veniam Placeat Omnis Voluptas Deleniti', 'Prof. Jon Armstrong I', 2014, 288, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(20, 'Sed Ipsa', 'Asha Kreiger', 1977, 616, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(21, 'Nobis Sapiente Velit Minima', 'Prof. Jon Armstrong I', 1993, 792, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(22, 'Quasi Eum Qui Et Molestiae', 'Jaida Nitzsche', 1932, 673, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(23, 'Libero Voluptas Unde Iure', 'Kyla Kertzmann III', 1959, 1000, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(24, 'Cupiditate Odio Repellat', 'Jaida Nitzsche', 2007, 524, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(25, 'Vitae Dolor Quisquam Veritatis', 'Briana Kihn', 1970, 607, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(26, 'Quisquam Fugit Aut', 'Ardella Bauch', 1984, 172, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(27, 'Rem Delectus Iusto Reprehenderit Omnis', 'Jaida Nitzsche', 1946, 556, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(28, 'Exercitationem Et Quidem', 'Briana Kihn', 1906, 142, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(29, 'Neque Velit Saepe Non', 'Asha Kreiger', 2005, 373, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(30, 'Recusandae Earum Illo Et Dolorum', 'Dr. Judah Armstrong IV', 1994, 592, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(31, 'Id Qui Aut', 'Sarai Stiedemann DVM', 1971, 587, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(32, 'Expedita Est A Nihil', 'Jaida Nitzsche', 1953, 106, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(33, 'Non Nostrum Possimus', 'Briana Kihn', 1913, 149, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(34, 'Et Quidem Enim', 'Kyla Kertzmann III', 1978, 105, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(35, 'Officia Officiis Quaerat Dolorum Repudiandae', 'Sarai Stiedemann DVM', 1997, 597, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(36, 'Id Distinctio Accusamus Possimus Non', 'Kyla Kertzmann III', 1920, 530, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(37, 'Aut Et Sed Nemo Assumenda', 'Asha Kreiger', 1965, 756, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(38, 'Reiciendis Dolorem Itaque Illum', 'Mrs. Mozelle Nader', 1989, 782, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(39, 'Deserunt Non', 'Sabina O\'Connell', 1965, 309, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(40, 'Vero Exercitationem', 'Sabina O\'Connell', 1949, 885, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(41, 'Omnis Aut', 'Mrs. Mozelle Nader', 2005, 850, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(42, 'Magnam Quia', 'Mrs. Mozelle Nader', 1956, 168, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(43, 'Aut Omnis', 'Ardella Bauch', 1934, 726, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(44, 'Esse Consequuntur Vero Sed', 'Asha Kreiger', 1987, 808, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(45, 'Tempora Sint Quia Quidem Rerum', 'Jaida Nitzsche', 2017, 890, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(46, 'Sunt Eveniet Non', 'Briana Kihn', 1984, 511, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(47, 'Esse Omnis Reiciendis Dolorem', 'Kyla Kertzmann III', 2012, 460, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(48, 'Corporis Eveniet Possimus Saepe Velit', 'Kyla Kertzmann III', 2010, 726, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(49, 'Nihil Nisi Atque Voluptate Dolor', 'Dr. Judah Armstrong IV', 1928, 610, '2022-03-10 14:18:07', '2022-03-10 14:18:07'),
(50, 'Odio Itaque', 'Asha Kreiger', 2006, 283, '2022-03-10 14:18:07', '2022-03-10 14:18:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
