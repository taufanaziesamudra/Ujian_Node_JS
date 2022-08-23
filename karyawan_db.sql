-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Agu 2022 pada 17.26
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bonus`
--

CREATE TABLE `bonus` (
  `id` int(11) NOT NULL,
  `WORKER_REF_ID` varchar(255) DEFAULT NULL,
  `BONUS_DATE` varchar(255) DEFAULT NULL,
  `BONUS_AMOUNT` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bonus`
--

INSERT INTO `bonus` (`id`, `WORKER_REF_ID`, `BONUS_DATE`, `BONUS_AMOUNT`, `createdAt`, `updatedAt`) VALUES
(1, '1', '2016-02-20 00:00:00', '5000', '2022-08-23 15:23:52', '2022-08-23 15:23:52'),
(2, '2', '2016-06-11 00:00:00', '3000', '2022-08-23 15:24:13', '2022-08-23 15:24:13'),
(3, '3', '2016-06-20 00:00:00', '4000', '2022-08-23 15:24:42', '2022-08-23 15:24:42'),
(4, '1', '2016-02-20 00:00:00', '4500', '2022-08-23 15:25:05', '2022-08-23 15:25:05'),
(5, '2', '2016-06-11 00:00:00', '4500', '2022-08-23 15:25:42', '2022-08-23 15:25:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `WORKER_REF_ID` varchar(255) DEFAULT NULL,
  `WORKER_TITLE` varchar(255) DEFAULT NULL,
  `AFFECTED_FROM` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `title`
--

INSERT INTO `title` (`id`, `WORKER_REF_ID`, `WORKER_TITLE`, `AFFECTED_FROM`, `createdAt`, `updatedAt`) VALUES
(1, '1', 'Manager', '2016-02-20 00:00:00', '2022-08-23 14:22:54', '2022-08-23 14:22:54'),
(2, '2', 'Executive', '2016-06-1 00:00:00', '2022-08-23 14:25:31', '2022-08-23 14:25:31'),
(3, '8', 'Executive', '2016-06-1 00:00:00', '2022-08-23 14:26:09', '2022-08-23 14:26:09'),
(4, '5', 'Manager', '2016-06-1 00:00:00', '2022-08-23 14:26:37', '2022-08-23 14:26:37'),
(5, '4', 'Asst. Manager', '2016-06-1 00:00:00', '2022-08-23 14:27:00', '2022-08-23 14:27:00'),
(6, '7', 'Executive', '2016-06-1 00:00:00', '2022-08-23 14:27:25', '2022-08-23 14:27:25'),
(7, '6', 'Lead', '2016-06-1 00:00:00', '2022-08-23 14:27:54', '2022-08-23 14:27:54'),
(8, '3', 'Lead', '2016-06-1 00:00:00', '2022-08-23 14:28:03', '2022-08-23 14:28:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `worker`
--

CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `WORKER_ID` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `SALARY` varchar(255) DEFAULT NULL,
  `JOINING_DATE` varchar(255) DEFAULT NULL,
  `DEPARTMENT` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `worker`
--

INSERT INTO `worker` (`id`, `WORKER_ID`, `FIRST_NAME`, `LAST_NAME`, `SALARY`, `JOINING_DATE`, `DEPARTMENT`, `createdAt`, `updatedAt`) VALUES
(1, '001', 'Monika', 'Arora', '100000', '2014-02-20 09:00:00', 'HR', '2022-08-23 14:50:11', '2022-08-23 14:52:22'),
(2, '002', 'Niharika', 'Verma', '80000', '2014-06-11 09:00:00', 'HR', '2022-08-23 14:52:49', '2022-08-23 15:03:30'),
(3, '003', 'Vishal', 'Singhal', '3000000', '2014-06-11 09:00:00', 'HR', '2022-08-23 14:53:58', '2022-08-23 15:02:46'),
(4, '004', 'Amitabh', 'Singh', '5000000', '2014-02-20 09:00:00', 'Admin', '2022-08-23 14:54:57', '2022-08-23 14:54:57'),
(5, '005', 'Vivek', 'Bhati', '5000000', '2014-06-11 09:00:00', 'Admin', '2022-08-23 14:55:44', '2022-08-23 14:55:44'),
(6, '006', 'Vipul', 'Diwan', '2000000', '2014-06-11 09:00:00', 'Account', '2022-08-23 14:57:20', '2022-08-23 14:57:20'),
(7, '007', 'Satish', 'Kumar', '75000', '2014-01-21 09:00:00', 'Account', '2022-08-23 14:58:11', '2022-08-23 14:58:11'),
(8, '008', 'Geetika', 'Chauhan', '90000', '2014-01-20 09:00:00', 'Admin', '2022-08-23 14:59:05', '2022-08-23 14:59:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `worker`
--
ALTER TABLE `worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
