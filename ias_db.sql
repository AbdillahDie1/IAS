-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 05 Feb 2020 pada 04.35
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ias_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asset`
--

DROP TABLE IF EXISTS `asset`;
CREATE TABLE IF NOT EXISTS `asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `conditions` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `asset`
--

INSERT INTO `asset` (`id`, `code`, `name`, `description`, `conditions`, `created_date`, `status`) VALUES
(1, 'BR0001', 'LAPTOP ACCER', 'BARU', 'Baru', '2020-02-04', 'AVAILABLE'),
(2, 'BR0002', 'KAMERA', '', 'Baru', '2020-02-04', 'AVAILABLE'),
(3, 'BR0003', 'LAPTOP ASUS', '', 'Baru', '2020-02-04', 'AVAILABLE'),
(4, 'BR0004', 'LAPTOP HPP', '', 'Baru', '2020-02-04', 'AVAILABLE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `incoming`
--

DROP TABLE IF EXISTS `incoming`;
CREATE TABLE IF NOT EXISTS `incoming` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_number` varchar(20) NOT NULL,
  `id_pic` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rank` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `person`
--

INSERT INTO `person` (`id`, `nip`, `name`, `rank`, `position`, `phone_number`) VALUES
(1, '1234567890', 'ABU KHOERUL ISKANDAR ALI', 'ASDAS', 'ASDASDAS', '081218209581'),
(2, '1234165162123', 'UDIN', 'SAAD', 'ASDAS', '0912312123'),
(3, '1231231212', 'DADANG', 'ASDA', 'ASDASD', '123123123123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_number` varchar(20) NOT NULL,
  `id_pic` varchar(20) NOT NULL,
  `id_asset` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_lock`
--

DROP TABLE IF EXISTS `tr_lock`;
CREATE TABLE IF NOT EXISTS `tr_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_lock` tinyint(1) NOT NULL DEFAULT 0,
  `tr_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_outgoing`
--

DROP TABLE IF EXISTS `tr_outgoing`;
CREATE TABLE IF NOT EXISTS `tr_outgoing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_number` varchar(20) NOT NULL,
  `id_pic` varchar(20) NOT NULL,
  `total_asset` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Abu Khoerul', 'administrator');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
