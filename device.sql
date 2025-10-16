-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Okt 2025 pada 11.53
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guestbook`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `device`
--

CREATE TABLE `device` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `brand` varchar(191) NOT NULL,
  `state` enum('available','in-use','inactive') NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `device`
--

INSERT INTO `device` (`id`, `name`, `brand`, `state`, `createdAt`, `updatedAt`) VALUES
('1', 'Router X100', 'TP-Link', '', '2025-10-16 10:00:00.000', '2025-10-16 10:00:00.000'),
('10', 'Edge Device E1000', 'HP', '', '2025-10-16 10:45:00.000', '2025-10-16 10:45:00.000'),
('2', 'Switch S200', 'Cisco', 'inactive', '2025-10-16 10:05:00.000', '2025-10-16 10:05:00.000'),
('3', 'Access Point A300', 'Ubiquiti', '', '2025-10-16 10:10:00.000', '2025-10-16 10:10:00.000'),
('4', 'Firewall F400', 'Fortinet', '', '2025-10-16 10:15:00.000', '2025-10-16 10:15:00.000'),
('5', 'Server Blade S500', 'Dell', 'inactive', '2025-10-16 10:20:00.000', '2025-10-16 10:20:00.000'),
('6', 'Modem M600', 'Huawei', '', '2025-10-16 10:25:00.000', '2025-10-16 10:25:00.000'),
('7', 'NAS Storage N700', 'Synology', '', '2025-10-16 10:30:00.000', '2025-10-16 10:30:00.000'),
('8', 'Load Balancer L800', 'F5 Networks', '', '2025-10-16 10:35:00.000', '2025-10-16 10:35:00.000'),
('9', 'IoT Gateway G900', 'Siemens', 'inactive', '2025-10-16 10:40:00.000', '2025-10-16 10:40:00.000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
