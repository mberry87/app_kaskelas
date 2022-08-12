-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2022 at 07:29 AM
-- Server version: 10.3.35-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jatranse_kaskelas4b`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan_pembayaran`
--

CREATE TABLE `bulan_pembayaran` (
  `id_bulan_pembayaran` int(11) NOT NULL,
  `nama_bulan` enum('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember') NOT NULL,
  `tahun` int(4) NOT NULL,
  `pembayaran_perminggu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bulan_pembayaran`
--

INSERT INTO `bulan_pembayaran` (`id_bulan_pembayaran`, `nama_bulan`, `tahun`, `pembayaran_perminggu`) VALUES
(5, 'agustus', 2022, 1000),
(6, 'september', 2022, 1000),
(7, 'oktober', 2022, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'administrator'),
(2, 'Bendahara'),
(3, 'Guru'),
(9, 'Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `jumlah_pengeluaran`, `keterangan`, `tanggal_pengeluaran`, `id_user`) VALUES
(10, 13500, 'sapu lantai nilon', 1659887568, 4),
(11, 25000, 'pel lantai putih', 1659887625, 4),
(12, 16500, 'pengki sampah', 1659887641, 4),
(13, 31500, 'ember lion star', 1659887660, 4);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_uang_kas` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_user`, `id_uang_kas`, `aksi`, `tanggal`) VALUES
(24, 4, 20, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886425),
(25, 4, 20, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886431),
(26, 4, 20, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659886440),
(27, 4, 20, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659886445),
(28, 4, 22, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886454),
(29, 4, 21, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886464),
(30, 4, 21, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886469),
(31, 4, 21, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659886477),
(32, 4, 21, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659886483),
(33, 4, 23, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886492),
(34, 4, 23, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886500),
(35, 4, 24, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886511),
(36, 4, 26, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886525),
(37, 4, 26, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886531),
(38, 4, 26, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659886537),
(39, 4, 26, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659886542),
(40, 4, 27, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886552),
(41, 4, 31, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886726),
(42, 4, 29, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886751),
(43, 4, 29, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886766),
(44, 4, 29, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659886772),
(45, 4, 29, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. ', 1659886779),
(46, 4, 29, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659886786),
(47, 4, 30, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886802),
(48, 4, 30, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886810),
(49, 4, 30, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659886818),
(50, 4, 30, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659886827),
(51, 4, 34, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886840),
(52, 4, 32, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886855),
(53, 4, 33, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886865),
(54, 4, 33, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886874),
(55, 4, 33, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659886886),
(56, 4, 33, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659886893),
(57, 4, 35, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886904),
(58, 4, 35, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886911),
(59, 4, 36, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886924),
(60, 4, 36, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886931),
(61, 4, 36, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659886938),
(62, 4, 36, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659886944),
(63, 4, 37, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886961),
(64, 4, 37, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886967),
(65, 4, 37, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659886973),
(66, 4, 37, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659886979),
(67, 4, 38, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659886985),
(68, 4, 38, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659886993),
(69, 4, 38, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659887002),
(70, 4, 38, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659887012),
(71, 4, 39, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887022),
(72, 4, 39, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887028),
(73, 4, 40, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887037),
(74, 4, 40, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887056),
(75, 4, 41, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887072),
(76, 4, 41, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887079),
(77, 4, 41, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659887087),
(78, 4, 41, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659887094),
(79, 4, 42, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887105),
(80, 4, 42, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887112),
(81, 4, 42, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659887121),
(82, 4, 43, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887129),
(83, 4, 43, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887135),
(84, 4, 43, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659887141),
(85, 4, 43, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. ', 1659887148),
(86, 4, 43, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659887163),
(87, 4, 44, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887173),
(88, 4, 45, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887186),
(89, 4, 45, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887197),
(90, 4, 45, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659887205),
(91, 4, 45, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659887211),
(92, 4, 46, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887279),
(93, 4, 46, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887285),
(94, 4, 46, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659887293),
(95, 4, 46, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659887298),
(96, 4, 47, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887306),
(97, 4, 47, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887313),
(98, 4, 47, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659887318),
(99, 4, 47, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659887323),
(100, 4, 52, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887330),
(101, 4, 61, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887342),
(102, 4, 61, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887367),
(103, 4, 62, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887374),
(104, 4, 62, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887382),
(105, 4, 66, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887396),
(106, 4, 68, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887416),
(107, 4, 68, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887425),
(108, 4, 68, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659887432),
(109, 4, 68, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659887443),
(110, 4, 71, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887492),
(111, 4, 71, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1659887498),
(112, 4, 71, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659887503),
(113, 4, 93, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659887522),
(114, 4, 42, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659937275),
(115, 4, 55, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659937310),
(116, 4, 62, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 1,000', 1659937344),
(117, 4, 62, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 1,000', 1659937363),
(118, 4, 67, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,000', 1659937379),
(119, 4, 52, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 1,000', 1660056710);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id_riwayat_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_pengeluaran`
--

INSERT INTO `riwayat_pengeluaran` (`id_riwayat_pengeluaran`, `id_user`, `aksi`, `tanggal`) VALUES
(4, 4, 'telah menambahkan pengeluaran sapu lantai nilon dengan biaya Rp. 13,500', 1659887568),
(5, 4, 'telah menambahkan pengeluaran pel lantai putih dengan biaya Rp. 25,000', 1659887625),
(6, 4, 'telah menambahkan pengeluaran pengki sampah dengan biaya Rp. 16,500', 1659887641),
(7, 4, 'telah menambahkan pengeluaran ember lion star dengan biaya Rp. 31,500', 1659887660);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `jenis_kelamin`, `no_telepon`, `email`) VALUES
(6, 'Aisyah dita fitriani', 'wanita', '083145672610', 'aisyahdita452@gmail.com'),
(7, 'Aris Erlangga H.', 'pria', '', ''),
(8, 'Aqeela Qisya B.', 'wanita', '', ''),
(9, 'Ayla Syafiqah', 'wanita', '', ''),
(10, 'Deniz Rastafa', 'pria', '', ''),
(11, 'Dony Saputra', 'pria', '', ''),
(12, 'Farikhatul Jannah', 'wanita', '', ''),
(13, 'Febrian Erlangga', 'pria', '', ''),
(15, 'Hermawati Dwi Putri M.', 'wanita', '', ''),
(16, 'Hikmatul Azzahra', 'wanita', '', ''),
(17, 'Haykal Atthaya S.', 'pria', '', ''),
(18, 'Lathifah Qurratuain', 'wanita', '', ''),
(19, 'Lianny Safitri', 'wanita', '', ''),
(20, 'La Fahri', 'pria', '', ''),
(21, 'Muhamad Azrun Iqbal', 'pria', '', ''),
(22, 'Muhamad Pardika', 'pria', '', ''),
(23, 'Nita Rahmawati', 'wanita', '', ''),
(24, 'Nizam Maulana Akbar', 'pria', '', ''),
(25, 'Puja Anjani', 'wanita', '', ''),
(26, 'Queen Alisha Eileen', 'wanita', '', ''),
(27, 'Resya Irnawan', 'wanita', '', ''),
(28, 'Riski Ramadan', 'pria', '', ''),
(29, 'Syaza Fadiya Kinaya', 'wanita', '', ''),
(30, 'Yogi Alfiansa', 'pria', '', ''),
(31, 'Zacky Ahmad', 'pria', '', ''),
(32, 'Alrisky Romadhon', 'pria', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id_uang_kas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_bulan_pembayaran` int(11) NOT NULL,
  `minggu_ke_1` int(11) DEFAULT NULL,
  `minggu_ke_2` int(11) DEFAULT NULL,
  `minggu_ke_3` int(11) DEFAULT NULL,
  `minggu_ke_4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uang_kas`
--

INSERT INTO `uang_kas` (`id_uang_kas`, `id_siswa`, `id_bulan_pembayaran`, `minggu_ke_1`, `minggu_ke_2`, `minggu_ke_3`, `minggu_ke_4`) VALUES
(20, 6, 5, 1000, 1000, 1000, 1000),
(21, 7, 5, 1000, 1000, 1000, 1000),
(22, 8, 5, 1000, 0, 0, 0),
(23, 9, 5, 1000, 1000, 0, 0),
(24, 10, 5, 1000, 0, 0, 0),
(25, 11, 5, 0, 0, 0, 0),
(26, 12, 5, 1000, 1000, 1000, 1000),
(27, 13, 5, 1000, 0, 0, 0),
(28, 14, 5, 0, 0, 0, 0),
(29, 15, 5, 1000, 1000, 1000, 1000),
(30, 16, 5, 1000, 1000, 1000, 1000),
(31, 17, 5, 1000, 0, 0, 0),
(32, 18, 5, 1000, 0, 0, 0),
(33, 19, 5, 1000, 1000, 1000, 1000),
(34, 20, 5, 1000, 0, 0, 0),
(35, 21, 5, 1000, 1000, 0, 0),
(36, 22, 5, 1000, 1000, 1000, 1000),
(37, 23, 5, 1000, 1000, 1000, 1000),
(38, 24, 5, 1000, 1000, 1000, 1000),
(39, 25, 5, 1000, 1000, 0, 0),
(40, 26, 5, 1000, 1000, 0, 0),
(41, 27, 5, 1000, 1000, 1000, 1000),
(42, 28, 5, 1000, 1000, 1000, 1000),
(43, 29, 5, 1000, 1000, 1000, 1000),
(44, 30, 5, 1000, 0, 0, 0),
(45, 31, 5, 1000, 1000, 1000, 1000),
(46, 6, 6, 1000, 1000, 1000, 1000),
(47, 7, 6, 1000, 1000, 1000, 1000),
(48, 8, 6, 0, 0, 0, 0),
(49, 9, 6, 0, 0, 0, 0),
(50, 10, 6, 0, 0, 0, 0),
(51, 11, 6, 0, 0, 0, 0),
(52, 12, 6, 1000, 1000, 0, 0),
(53, 13, 6, 0, 0, 0, 0),
(54, 15, 6, 0, 0, 0, 0),
(55, 16, 6, 1000, 0, 0, 0),
(56, 17, 6, 0, 0, 0, 0),
(57, 18, 6, 0, 0, 0, 0),
(58, 19, 6, 0, 0, 0, 0),
(59, 20, 6, 0, 0, 0, 0),
(60, 21, 6, 0, 0, 0, 0),
(61, 22, 6, 1000, 1000, 0, 0),
(62, 23, 6, 1000, 1000, 1000, 1000),
(63, 24, 6, 0, 0, 0, 0),
(64, 25, 6, 0, 0, 0, 0),
(65, 26, 6, 0, 0, 0, 0),
(66, 27, 6, 1000, 0, 0, 0),
(67, 28, 6, 1000, 0, 0, 0),
(68, 29, 6, 1000, 1000, 1000, 1000),
(69, 30, 6, 0, 0, 0, 0),
(70, 31, 6, 0, 0, 0, 0),
(71, 6, 7, 1000, 1000, 1000, 0),
(72, 7, 7, 0, 0, 0, 0),
(73, 8, 7, 0, 0, 0, 0),
(74, 9, 7, 0, 0, 0, 0),
(75, 10, 7, 0, 0, 0, 0),
(76, 11, 7, 0, 0, 0, 0),
(77, 12, 7, 0, 0, 0, 0),
(78, 13, 7, 0, 0, 0, 0),
(79, 15, 7, 0, 0, 0, 0),
(80, 16, 7, 0, 0, 0, 0),
(81, 17, 7, 0, 0, 0, 0),
(82, 18, 7, 0, 0, 0, 0),
(83, 19, 7, 0, 0, 0, 0),
(84, 20, 7, 0, 0, 0, 0),
(85, 21, 7, 0, 0, 0, 0),
(86, 22, 7, 0, 0, 0, 0),
(87, 23, 7, 0, 0, 0, 0),
(88, 24, 7, 0, 0, 0, 0),
(89, 25, 7, 0, 0, 0, 0),
(90, 26, 7, 0, 0, 0, 0),
(91, 27, 7, 0, 0, 0, 0),
(92, 28, 7, 0, 0, 0, 0),
(93, 29, 7, 1000, 0, 0, 0),
(94, 30, 7, 0, 0, 0, 0),
(95, 31, 7, 0, 0, 0, 0),
(96, 32, 5, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_jabatan`) VALUES
(1, 'Administrator', 'admin', '$2y$10$RtlG8gY2cp/2BYEeMBJ2C.tMli1qvWGCoT/jkKIZVNrRJ/4cGbbTm', 1),
(4, 'Aisyah Dita Fitriani', 'aisyah', '$2y$10$XTLz.RXqJV4nQzqWkOlfweCZFxqGGcHwzCFVS3pQ6ywO1Sc51imeO', 2),
(5, 'Cahya Ramadaniati Lius', 'cahya', '$2y$10$idZ9n5Oa2dLCqikUT9SPAeouYeUVzby1HumG97gQzHwuOaOW/YcBq', 3),
(6, 'Siswa kelas 4 b', 'Siswa ', '$2y$10$lRnGh84rmRsb3MTwGPz6I.qwOCTJrPqlyVCkj6JY0tu7qXKEaGX7u', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  ADD PRIMARY KEY (`id_bulan_pembayaran`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_uang_kas` (`id_uang_kas`);

--
-- Indexes for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  ADD PRIMARY KEY (`id_riwayat_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD PRIMARY KEY (`id_uang_kas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_bulan_pembayaran` (`id_bulan_pembayaran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  MODIFY `id_bulan_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id_riwayat_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `uang_kas`
--
ALTER TABLE `uang_kas`
  MODIFY `id_uang_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
