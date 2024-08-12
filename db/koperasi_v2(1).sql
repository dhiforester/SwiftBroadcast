-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 12, 2024 at 04:06 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses`
--

DROP TABLE IF EXISTS `akses`;
CREATE TABLE IF NOT EXISTS `akses` (
  `id_akses` int(10) NOT NULL AUTO_INCREMENT,
  `nama_akses` text NOT NULL,
  `kontak_akses` varchar(20) DEFAULT NULL,
  `email_akses` text NOT NULL,
  `password` text NOT NULL,
  `image_akses` text,
  `akses` varchar(20) NOT NULL,
  `datetime_daftar` datetime NOT NULL,
  `datetime_update` datetime NOT NULL,
  PRIMARY KEY (`id_akses`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses`
--

INSERT INTO `akses` (`id_akses`, `nama_akses`, `kontak_akses`, `email_akses`, `password`, `image_akses`, `akses`, `datetime_daftar`, `datetime_update`) VALUES
(1, 'Solihul Hadi', '6289601154723', 'dhiforester@gmail.com', 'f4a3229c9c5f1bdd9c6a6791080791b7', '9bf5b8e474a5927eb87d5084a85b5a.jpg', 'Admin', '2022-08-29 11:10:06', '2024-07-12 02:55:04'),
(4, 'Santi Nursari', '6289601154724', 'animaryani@gmail.com', '1ebc7a02439687420f4f18ebe6bd03ac', '64ffa523717340c164e75f3f74302f.png', 'Sekretaris', '2024-07-12 01:23:54', '2024-07-12 01:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `akses_anggota`
--

DROP TABLE IF EXISTS `akses_anggota`;
CREATE TABLE IF NOT EXISTS `akses_anggota` (
  `id_akses_anggota` int(15) NOT NULL AUTO_INCREMENT,
  `id_anggota` int(12) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `nama_anggota` text NOT NULL,
  `email` text NOT NULL,
  `kontak` varchar(20) DEFAULT NULL,
  `password` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `photo_profile` text,
  PRIMARY KEY (`id_akses_anggota`),
  KEY `id_anggota` (`id_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_anggota`
--

INSERT INTO `akses_anggota` (`id_akses_anggota`, `id_anggota`, `tanggal`, `nama_anggota`, `email`, `kontak`, `password`, `status`, `photo_profile`) VALUES
(1, 7, '2023-02-17 11:55:32', 'Solihul Hadi', 'solihulhadi141213@gmail.com', '89601154726', 'f4a3229c9c5f1bdd9c6a6791080791b7', 'Active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `akses_entitas`
--

DROP TABLE IF EXISTS `akses_entitas`;
CREATE TABLE IF NOT EXISTS `akses_entitas` (
  `uuid_akses_entitas` varchar(32) NOT NULL,
  `akses` varchar(20) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_entitas`
--

INSERT INTO `akses_entitas` (`uuid_akses_entitas`, `akses`, `keterangan`) VALUES
('hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 'Admin', 'Pihak yang berwenang untuk mengelola fitur'),
('x5MHSyAQsnniwnwgYqho6hTwKRhxgOXU', 'Sekretaris', 'Pihak yang bertugas input poendaftaran anggota baru');

-- --------------------------------------------------------

--
-- Table structure for table `akses_fitur`
--

DROP TABLE IF EXISTS `akses_fitur`;
CREATE TABLE IF NOT EXISTS `akses_fitur` (
  `id_akses_fitur` int(12) NOT NULL AUTO_INCREMENT,
  `kode` varchar(32) NOT NULL,
  `nama` text NOT NULL,
  `kategori` text NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_akses_fitur`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_fitur`
--

INSERT INTO `akses_fitur` (`id_akses_fitur`, `kode`, `nama`, `kategori`, `keterangan`) VALUES
(31, '8KbdfArJ7UmoX916kO7', 'Entitas Akses', 'Akses', 'Halaman untuk mengelola entitas akses'),
(32, 'FGPgsQeVDKPGoQPNGJH', 'Akun Pengguna', 'Akses', 'Halaman untuk mengelola pengguna aplikasi'),
(34, 'rfLn8WEkAqzC1gu5z45', 'Setting Email Gateway', 'Setting', 'Halaman untuk mengatur setting email'),
(35, 'QcDypIyCg8tX76Zzs2I', 'Akses Token', 'Akses', 'Halaman untuk mengelola token akses oleh admin'),
(36, 'mU0dghJfZr6GFXAazZ8', 'Komponen Gaji', 'Penggajian', 'Halaman untuk mengelola komponen gaji'),
(37, 'RAkbS0nrHV10GVxnvXy', 'Peride Gaji', 'Penggajian', 'Kella data periode penggajian'),
(38, 'wY4kURZ8cjrjjtUiAhH', 'Potongan Gaji', 'Penggajian', 'Halaman untuk mengelola potongan gaji karyawan'),
(39, 'gd7YgKyL1WMQctJLgaq', 'Setting API Key', 'Setting', 'Halaman untuk mengelola API Key'),
(40, 'rA8MRFArw1qPeVySjAC', 'Halaman fitur', 'Akses', 'Halaman untuk mengelola data fitur aplikasi'),
(41, 'hNtci80mXl9jwCj19pI', 'Halaman Entitas Akses', 'Akses', 'Halaman utama entitas akses'),
(42, 'oWpF1xPn8dLgRi8hRJx', 'Halaman Anggota', 'Anggota', 'Halaman utama anggota'),
(43, 'n77olEDwon5RO3RYQPD', 'Halaman Simpanan', 'Simpanan', 'Halaman utama simpanan'),
(44, 'JxjfFOxUHimcP0WXqy0', 'Halaman pinjaman', 'Pinjaman', 'Halaman utama pinjaman\r\n'),
(45, 'N6O5Qc64hOEhPQukZSh', 'Halaman Laporan', 'Laporan', 'Halaman utama laporan'),
(46, 'X61viKZwNQuNrQ1Vrrg', 'Tagihan', 'Pinjaman', 'Halaman utama tagihan'),
(47, '5MH1cfu7LzOpalmhbT2', 'Kelola Data Bantuan', 'Bantuan', 'Halaman untuk mengelola data bantuan untuk pengguna aplikasi'),
(48, 'QbQ4qF57AzCEp5qG0KG', 'Form Tambah Bantuan', 'Bantuan', 'Halaman form untuk menambahkan konten bantuan'),
(49, 'GA4iqizxbIlTU5mMo0W', 'Halaman Edit Bantuan', 'Bantuan', 'Fitur/Halaman untuk form edit bantuan'),
(50, 'VTouzOD2eM57Onno1Ql', 'Halaman Utama Jurnal Keuangan', 'Jurnal', 'Halaman utama yang menampilkan semua data jurnal keuangan'),
(51, 'a1nsbsSzX2L1LYHuVop', 'Form Tambah Jurnal', 'Jurnal', 'Halaman form untuk menambahkan jurnal secara manual');

-- --------------------------------------------------------

--
-- Table structure for table `akses_ijin`
--

DROP TABLE IF EXISTS `akses_ijin`;
CREATE TABLE IF NOT EXISTS `akses_ijin` (
  `id_akses` int(12) NOT NULL,
  `id_akses_fitur` int(12) NOT NULL,
  `kode` varchar(32) NOT NULL,
  `nama` text NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_ijin`
--

INSERT INTO `akses_ijin` (`id_akses`, `id_akses_fitur`, `kode`, `nama`, `kategori`) VALUES
(4, 42, 'oWpF1xPn8dLgRi8hRJx', 'Halaman Anggota', 'Anggota'),
(4, 45, 'N6O5Qc64hOEhPQukZSh', 'Halaman Laporan', 'Laporan'),
(4, 36, 'mU0dghJfZr6GFXAazZ8', 'Komponen Gaji', 'Penggajian'),
(4, 37, 'RAkbS0nrHV10GVxnvXy', 'Peride Gaji', 'Penggajian'),
(4, 38, 'wY4kURZ8cjrjjtUiAhH', 'Potongan Gaji', 'Penggajian'),
(4, 44, 'JxjfFOxUHimcP0WXqy0', 'Halaman pinjaman', 'Pinjaman'),
(4, 43, 'n77olEDwon5RO3RYQPD', 'Halaman Simpanan', 'Simpanan'),
(1, 35, 'QcDypIyCg8tX76Zzs2I', 'Akses Token', 'Akses'),
(1, 32, 'FGPgsQeVDKPGoQPNGJH', 'Akun Pengguna', 'Akses'),
(1, 31, '8KbdfArJ7UmoX916kO7', 'Entitas Akses', 'Akses'),
(1, 41, 'hNtci80mXl9jwCj19pI', 'Halaman Entitas Akses', 'Akses'),
(1, 40, 'rA8MRFArw1qPeVySjAC', 'Halaman fitur', 'Akses'),
(1, 42, 'oWpF1xPn8dLgRi8hRJx', 'Halaman Anggota', 'Anggota'),
(1, 48, 'QbQ4qF57AzCEp5qG0KG', 'Form Tambah Bantuan', 'Bantuan'),
(1, 49, 'GA4iqizxbIlTU5mMo0W', 'Halaman Edit Bantuan', 'Bantuan'),
(1, 47, '5MH1cfu7LzOpalmhbT2', 'Kelola Data Bantuan', 'Bantuan'),
(1, 51, 'a1nsbsSzX2L1LYHuVop', 'Form Tambah Jurnal', 'Jurnal'),
(1, 50, 'VTouzOD2eM57Onno1Ql', 'Halaman Utama Jurnal Keuangan', 'Jurnal'),
(1, 45, 'N6O5Qc64hOEhPQukZSh', 'Halaman Laporan', 'Laporan'),
(1, 36, 'mU0dghJfZr6GFXAazZ8', 'Komponen Gaji', 'Penggajian'),
(1, 37, 'RAkbS0nrHV10GVxnvXy', 'Peride Gaji', 'Penggajian'),
(1, 38, 'wY4kURZ8cjrjjtUiAhH', 'Potongan Gaji', 'Penggajian'),
(1, 44, 'JxjfFOxUHimcP0WXqy0', 'Halaman pinjaman', 'Pinjaman'),
(1, 39, 'gd7YgKyL1WMQctJLgaq', 'Setting API Key', 'Setting'),
(1, 34, 'rfLn8WEkAqzC1gu5z45', 'Setting Email Gateway', 'Setting'),
(1, 43, 'n77olEDwon5RO3RYQPD', 'Halaman Simpanan', 'Simpanan');

-- --------------------------------------------------------

--
-- Table structure for table `akses_login`
--

DROP TABLE IF EXISTS `akses_login`;
CREATE TABLE IF NOT EXISTS `akses_login` (
  `id_akses` int(12) NOT NULL,
  `kategori` varchar(10) NOT NULL COMMENT 'Anggota/Pengurus',
  `token` varchar(32) NOT NULL,
  `date_creat` datetime NOT NULL,
  `date_expired` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_login`
--

INSERT INTO `akses_login` (`id_akses`, `kategori`, `token`, `date_creat`, `date_expired`) VALUES
(1, 'Pengurus', '9f3ab14db7bf58aca690fa1160e4e969', '2024-08-11 23:31:16', '2024-08-12 06:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `akses_referensi`
--

DROP TABLE IF EXISTS `akses_referensi`;
CREATE TABLE IF NOT EXISTS `akses_referensi` (
  `id_akses_referensi` int(12) NOT NULL AUTO_INCREMENT,
  `uuid_akses_entitas` varchar(32) NOT NULL,
  `id_akses_fitur` int(12) NOT NULL,
  PRIMARY KEY (`id_akses_referensi`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_referensi`
--

INSERT INTO `akses_referensi` (`id_akses_referensi`, `uuid_akses_entitas`, `id_akses_fitur`) VALUES
(1, 'x5MHSyAQsnniwnwgYqho6hTwKRhxgOXU', 42),
(2, 'x5MHSyAQsnniwnwgYqho6hTwKRhxgOXU', 45),
(3, 'x5MHSyAQsnniwnwgYqho6hTwKRhxgOXU', 36),
(4, 'x5MHSyAQsnniwnwgYqho6hTwKRhxgOXU', 37),
(5, 'x5MHSyAQsnniwnwgYqho6hTwKRhxgOXU', 38),
(6, 'x5MHSyAQsnniwnwgYqho6hTwKRhxgOXU', 44),
(7, 'x5MHSyAQsnniwnwgYqho6hTwKRhxgOXU', 43),
(77, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 35),
(78, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 32),
(79, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 31),
(80, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 41),
(81, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 40),
(82, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 42),
(83, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 48),
(84, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 49),
(85, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 47),
(86, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 51),
(87, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 50),
(88, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 45),
(89, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 36),
(90, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 37),
(91, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 38),
(92, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 44),
(93, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 39),
(94, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 34),
(95, 'hkobwSGykIYhh3AZGNJqhzeohg7k9ORA', 43);

-- --------------------------------------------------------

--
-- Table structure for table `akses_validasi`
--

DROP TABLE IF EXISTS `akses_validasi`;
CREATE TABLE IF NOT EXISTS `akses_validasi` (
  `id_akses_validasi` int(10) NOT NULL AUTO_INCREMENT,
  `id_akses_anggota` int(20) NOT NULL,
  `token` text NOT NULL,
  `datetime` text NOT NULL,
  PRIMARY KEY (`id_akses_validasi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_validasi`
--

INSERT INTO `akses_validasi` (`id_akses_validasi`, `id_akses_anggota`, `token`, `datetime`) VALUES
(3, 2, '50e17bf06d0d8e5b856aa6ace83b0b', '2023-02-17 19:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `akun_perkiraan`
--

DROP TABLE IF EXISTS `akun_perkiraan`;
CREATE TABLE IF NOT EXISTS `akun_perkiraan` (
  `id_perkiraan` int(12) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` text,
  `level` int(12) NOT NULL,
  `saldo_normal` varchar(10) NOT NULL COMMENT 'Debet, Kredit',
  `kd1` varchar(25) DEFAULT NULL,
  `kd2` varchar(25) DEFAULT NULL,
  `kd3` varchar(25) DEFAULT NULL,
  `kd4` varchar(25) DEFAULT NULL,
  `kd5` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_perkiraan`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_perkiraan`
--

INSERT INTO `akun_perkiraan` (`id_perkiraan`, `kode`, `nama`, `level`, `saldo_normal`, `kd1`, `kd2`, `kd3`, `kd4`, `kd5`) VALUES
(1, '1', 'Aset', 1, 'Debet', '1', NULL, NULL, NULL, NULL),
(2, '2', 'Kewajiban', 1, 'Kredit', '2', NULL, NULL, NULL, NULL),
(3, '3', 'Ekuitas', 1, 'Kredit', '3', NULL, NULL, NULL, NULL),
(4, '4', 'Pendapatan', 1, 'Kredit', '4', NULL, NULL, NULL, NULL),
(17, '5', 'Beban Usaha', 1, 'Debet', '5', NULL, NULL, NULL, NULL),
(18, '1.1', 'Aset Lancar', 2, 'Debet', '1', '1.1', NULL, NULL, NULL),
(23, '1.2', 'Aset Tetap', 2, 'Debet', '1', '1.2', NULL, NULL, NULL),
(25, '1.2.2', 'Gedung Dan Bangunan', 3, 'Debet', '1', '1.2', '1.2.2', NULL, NULL),
(27, '2.1', 'Kewajiban Jangka Pendek', 2, 'Kredit', '2', '2.1', NULL, NULL, NULL),
(28, '2.1.1', 'Hutang Usaha', 3, 'Kredit', '2', '2.1', '2.1.1', NULL, NULL),
(29, '2.1.2', 'Hutang Pajak', 3, 'Kredit', '2', '2.1', '2.1.2', NULL, NULL),
(30, '3.1', 'Ekuitas Awal', 2, 'Kredit', '3', '3.1', NULL, NULL, NULL),
(31, '3.2', 'Surplus Dan Defisit', 2, 'Kredit', '3', '3.2', NULL, NULL, NULL),
(36, '5.1', 'Beban Administrasi Dan Umum', 2, 'Debet', '5', '5.1', NULL, NULL, NULL),
(38, '5.3', 'Beban Operasional', 2, 'Debet', '5', '5.3', NULL, NULL, NULL),
(39, '4.1', 'Pendapatan Jasa', 2, 'Kredit', '4', '4.4', NULL, NULL, NULL),
(65, '1.2.4', 'Jalan Dan Jaringan', 3, 'Debet', '1', '1.2', '1.2.4', NULL, NULL),
(66, '1.2.4.1', 'Jaringan Listrik', 4, 'Debet', '1', '1.2', '1.2.4', '1.2.4.1', NULL),
(73, '1.3', 'Aset Lainnya', 2, 'Debet', '1', '1.3', NULL, NULL, NULL),
(77, '2.1.3', 'Hutang Lainnya', 3, 'Kredit', '2', '2.1', '2.1.3', NULL, NULL),
(78, '3.2.1', 'Surplus Dan Defisit Tahun Lalu', 3, 'Kredit', '3', '3.2', '3.2.1', NULL, NULL),
(79, '3.2.2', 'Surplus Dan Defisit Tahun Berjalan', 3, 'Kredit', '3', '3.2', '3.2.2', NULL, NULL),
(80, '5.1.1', 'Beban Gaji', 3, 'Debet', '5', '5.1', '5.1.1', NULL, NULL),
(81, '5.1.2', 'Beban Adm. Kendaraan', 3, 'Debet', '5', '5.1', '5.1.2', NULL, NULL),
(82, '5.1.3', 'Beban Asuransi', 3, 'Debet', '5', '5.1', '5.1.3', NULL, NULL),
(83, '5.1.4', 'Beban PBB', 3, 'Debet', '5', '5.1', '5.1.4', NULL, NULL),
(84, '5.1.5', 'Beban Restribusi', 3, 'Debet', '5', '5.1', '5.1.5', NULL, NULL),
(85, '5.1.6', 'Beban Diklat', 3, 'Debet', '5', '5.1', '5.1.6', NULL, NULL),
(86, '5.1.7', 'Perizinan', 3, 'Debet', '5', '5.1', '5.1.7', NULL, NULL),
(87, '5.1.8', 'Pajak Air', 3, 'Debet', '5', '5.1', '5.1.8', NULL, NULL),
(95, '5.3.1', 'Beban Pembelian Koran', 3, 'Debet', '5', '5.3', '5.3.1', NULL, NULL),
(96, '5.3.2', 'Beban Air Minum', 3, 'Debet', '5', '5.3', '5.3.2', NULL, NULL),
(98, '5.3.4', 'Beban Utilitas', 3, 'Debet', '5', '5.3', '5.3.4', NULL, NULL),
(100, '5.3.6', 'Beban Konsumsi', 3, 'Debet', '5', '5.3', '5.3.6', NULL, NULL),
(101, '5.3.7', 'Beban Pemeliharaan Kendaraan', 3, 'Debet', '5', '5.3', '5.3.7', NULL, NULL),
(102, '5.3.8', 'Beban Pemeliharaan Bangunan', 3, 'Debet', '5', '5.3', '5.3.8', NULL, NULL),
(105, '5.3.10', 'Beban Pemeliharaan Alat Kantor', 3, 'Debet', '5', '5.3', '5.3.10', NULL, NULL),
(110, '5.3.11', 'Beban Penyusutan Bangunan', 3, 'Debet', '5', '5.3', '5.3.11', NULL, NULL),
(111, '5.3.12', 'Beban Penyusutan Alat Belajar', 3, 'Debet', '5', '5.3', '5.3.12', NULL, NULL),
(112, '5.3.13', 'Penyusutan Kendaraan', 3, 'Debet', '5', '5.3', '5.3.13', NULL, NULL),
(113, '5.3.14', 'Beban Promosi', 3, 'Debet', '5', '5.3', '5.3.14', NULL, NULL),
(114, '5.3.15', 'Beban Listrik', 3, 'Debet', '5', '5.3', '5.3.15', NULL, NULL),
(119, '5.4', 'Beban Lainnya', 2, 'Debet', '5', '5.4', NULL, NULL, NULL),
(120, '1.1.1', 'kas', 3, 'Debet', '1', '1.1', '1.1.1', NULL, NULL),
(121, '1.1.1.1', 'Kas Kecil', 4, 'Debet', '1', '1.1', '1.1.1', '1.1.1.1', NULL),
(122, '1.1.1.2', 'Kas Bank', 4, 'Debet', '1', '1.1', '1.1.1', '1.1.1.2', NULL),
(123, '1.2.4.2', 'Lahan/Tanah', 4, 'Debet', '1', '1.2', '1.2.4', '1.2.4.2', NULL),
(124, '4.2', 'Pendapatan Denda', 2, 'Kredit', '4', '4.6', NULL, NULL, NULL),
(125, '1.1.2', 'Persediaan Obat', 3, 'Debet', '1', '1.1', '1.1.2', NULL, NULL),
(130, '1.3.1', 'Aset Saham Di Perusahaan Lain', 3, 'Debet', '1', '1.3', '1.3.1', NULL, NULL),
(131, '1.3.2', 'Aset Sisa BHP', 3, 'Debet', '1', '1.3', '1.3.2', NULL, NULL),
(133, '2.2', 'Kewajiban Pembayaran Prive Investor', 2, 'Kredit', '2', '2.2', NULL, NULL, NULL),
(134, '1.3.3', 'Aset Lainnya', 3, 'Debet', '1', '1.3', '1.3.3', NULL, NULL),
(135, '1.1.1.3', 'Kas Berangkas', 4, 'Debet', '1', '1.1', '1.1.1', '1.1.1.3', NULL),
(136, '1.1.3', 'Piutang usaha', 3, 'Debet', '1', '1.1', '1.1.3', NULL, NULL),
(147, '5.3.14.1', 'Beban Promosi Iklan Digital', 4, 'Debet', '5', '5.3', '5.3.14', '5.3.14.1', NULL),
(148, '5.3.14.2', 'Beban Promosi Iklan Koran', 4, 'Debet', '5', '5.3', '5.3.14', '5.3.14.2', NULL),
(149, '1.1.1.2.1', 'Kas Bank BRI', 5, 'Debet', '1', '1.1', '1.1.1', '1.1.1.2', '1.1.1.2.1'),
(151, '1.1.1.2.2', 'Kas Bank Central Asia', 5, 'Debet', '1', '1.1', '1.1.1', '1.1.1.2', '1.1.1.2.2'),
(152, '1.1.1.2.3', 'Kas Bank Mandiri', 5, 'Debet', '1', '1.1', '1.1.1', '1.1.1.2', '1.1.1.2.3'),
(154, '1.1.1.2.5', 'Kas Bank Jabar', 5, 'Debet', '1', '1.1', '1.1.1', '1.1.1.2', '1.1.1.2.5'),
(155, '1.1.1.1.1', 'Kas Brangkas', 5, 'Debet', '1', '1.1', '1.1.1', '1.1.1.1', '1.1.1.1.1'),
(159, '1.1.1.1.2', 'Kas Sorog', 5, 'Debet', '1', '1.1', '1.1.1', '1.1.1.1', '1.1.1.1.2');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

DROP TABLE IF EXISTS `anggota`;
CREATE TABLE IF NOT EXISTS `anggota` (
  `id_anggota` int(12) NOT NULL AUTO_INCREMENT,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date DEFAULT NULL COMMENT 'hanya untuk anggota yang sudah keluar',
  `nip` varchar(32) NOT NULL COMMENT 'nomor induk anggota',
  `nama` text NOT NULL,
  `email` text,
  `password` text COMMENT 'MD5 hanya untuk yang memiliki akses',
  `kontak` varchar(20) DEFAULT NULL,
  `lembaga` text NOT NULL,
  `ranking` int(12) NOT NULL,
  `foto` varchar(35) DEFAULT NULL,
  `akses_anggota` tinyint(1) NOT NULL COMMENT 'true/false',
  `status` varchar(10) NOT NULL COMMENT 'Aktif, Keluar',
  `alasan_keluar` text COMMENT 'Diisi Hanya Apabila Keluar',
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `tanggal_masuk`, `tanggal_keluar`, `nip`, `nama`, `email`, `password`, `kontak`, `lembaga`, `ranking`, `foto`, `akses_anggota`, `status`, `alasan_keluar`) VALUES
(1, '2024-01-13', '2024-07-14', '2024/07/Contoh-01', 'Adam Saputra', 'adam.saputra@example.com', 'anggota1', '890000001', 'Lembaga A', 1, '', 1, 'Aktif', NULL),
(2, '2024-01-14', '2024-07-14', '2024/07/Contoh-02', 'Budi Santoso', 'budi.santoso@example.com', 'anggota2', '890000002', 'Lembaga A', 1, '', 1, 'Aktif', NULL),
(3, '2024-01-15', '2024-07-14', '2024/07/Contoh-111', 'Citra Dewi', 'citra.dewi@example.com', 'anggota3', '890000003', 'Lembaga D', 1, '', 1, 'Aktif', ''),
(4, '2024-01-16', '2024-06-14', '2024/07/Contoh-04', 'Dian Rahmawati', 'dian.rahmawati@example.com', 'anggota4', '890000004', 'Lembaga A', 1, '', 1, 'Keluar', NULL),
(5, '2024-01-17', '2024-07-14', '2024/07/Contoh-05', 'Eka Prasetyo', 'eka.prasetyo@example.com', 'anggota5', '890000005', 'Lembaga A', 1, '', 1, 'Aktif', NULL),
(6, '2024-01-18', '2024-07-14', '2024/07/Contoh-06', 'Farah Amalia', 'farah.amalia@example.com', 'anggota6', '890000006', 'Lembaga A', 2, '', 1, 'Aktif', NULL),
(7, '2024-01-19', '2024-07-14', '2024/07/Contoh-07', 'Guntur Wibowo', 'guntur.wibowo@example.com', 'anggota7', '890000007', 'Lembaga A', 2, '', 1, 'Aktif', NULL),
(8, '2024-01-20', '2024-06-14', '2024/07/Contoh-08', 'Hendra Wijaya', 'hendra.wijaya@example.com', 'anggota8', '890000008', 'Lembaga A', 2, '', 1, 'Keluar', NULL),
(9, '2024-01-21', '2024-07-14', '2024/07/Contoh-09', 'Indah Permatasari', 'indah.permatasari@example.com', 'anggota9', '890000009', 'Lembaga A', 2, '', 1, 'Aktif', NULL),
(10, '2024-01-22', '2024-07-14', '2024/07/Contoh-10', 'Joko Susanto', 'joko.susanto@example.com', 'anggota10', '890000010', 'Lembaga A', 2, '', 1, 'Aktif', NULL),
(11, '2024-01-23', '2024-07-14', '2024/07/Contoh-11', 'Karina Putri', 'karina.putri@example.com', 'anggota11', '890000011', 'Lembaga B', 1, '6e768c8545787762e097543ecd20c7.jpg', 1, 'Aktif', NULL),
(12, '2024-01-24', '2024-07-14', '2024/07/Contoh-12', 'Leo Pradipta', 'leo.pradipta@example.com', 'anggota12', '890000012', 'Lembaga B', 1, '', 1, 'Aktif', NULL),
(13, '2024-01-25', '2024-07-14', '2024/07/Contoh-13', 'Maya Sari', 'maya.sari@example.com', 'anggota13', '890000013', 'Lembaga B', 1, '', 1, 'Aktif', NULL),
(14, '2024-01-26', '2024-07-14', '2024/07/Contoh-14', 'Nanda Kusuma', 'nanda.kusuma@example.com', 'anggota14', '890000014', 'Lembaga B', 1, '', 1, 'Aktif', NULL),
(15, '2024-01-27', '2024-07-14', '2024/07/Contoh-15', 'Oki Pratama', 'oki.pratama@example.com', 'anggota15', '890000015', 'Lembaga B', 1, '', 1, 'Aktif', NULL),
(16, '2024-01-28', '2024-07-14', '2024/07/Contoh-16', 'Putri Ayu', 'putri.ayu@example.com', 'anggota16', '890000016', 'Lembaga B', 2, '', 1, 'Aktif', NULL),
(17, '2024-01-29', '2024-06-14', '2024/07/Contoh-17', 'Rizki Setiawan', 'rizki.setiawan@example.com', 'anggota17', '890000017', 'Lembaga B', 2, '', 1, 'Keluar', NULL),
(18, '2024-01-30', '2024-07-14', '2024/07/Contoh-18', 'Sinta Maharani', 'sinta.maharani@example.com', 'anggota18', '890000018', 'Lembaga B', 2, '', 1, 'Aktif', NULL),
(19, '2024-01-31', '2024-07-14', '2024/07/Contoh-19', 'Tio Nugroho', 'tio.nugroho@example.com', 'anggota19', '890000019', 'Lembaga B', 2, '', 1, 'Aktif', NULL),
(21, '2024-07-23', '2024-07-23', 'sdfsfsdf', 'sfsdfsdf', '', '', '', 'Lembaga A', 1, '', 0, 'Aktif', '');

-- --------------------------------------------------------

--
-- Table structure for table `auto_jurnal`
--

DROP TABLE IF EXISTS `auto_jurnal`;
CREATE TABLE IF NOT EXISTS `auto_jurnal` (
  `id_auto_jurnal` int(15) NOT NULL AUTO_INCREMENT,
  `kategori_transaksi` text NOT NULL,
  `debet_id` int(12) DEFAULT NULL,
  `debet_name` text,
  `kredit_id` int(12) DEFAULT NULL,
  `kredit_name` text,
  PRIMARY KEY (`id_auto_jurnal`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto_jurnal`
--

INSERT INTO `auto_jurnal` (`id_auto_jurnal`, `kategori_transaksi`, `debet_id`, `debet_name`, `kredit_id`, `kredit_name`) VALUES
(5, 'Simpanan', 135, 'Kas Berangkas', 136, 'Piutang usaha'),
(6, 'Penarikan', 133, 'Kewajiban Pembayaran Prive Investor', 135, 'Kas Berangkas'),
(7, 'Pinjaman', 136, 'Piutang usaha', 135, 'Kas Berangkas '),
(8, 'Angsuran', 155, 'Kas Brangkas', 136, 'Piutang usaha ');

-- --------------------------------------------------------

--
-- Table structure for table `auto_jurnal_angsuran`
--

DROP TABLE IF EXISTS `auto_jurnal_angsuran`;
CREATE TABLE IF NOT EXISTS `auto_jurnal_angsuran` (
  `id_auto_jurnal_angsuran` int(12) NOT NULL AUTO_INCREMENT,
  `komponen` varchar(20) NOT NULL COMMENT 'Jasa, Denda',
  `id_perkiraan` int(12) DEFAULT NULL,
  `kode` varchar(25) DEFAULT NULL,
  `nama` text,
  PRIMARY KEY (`id_auto_jurnal_angsuran`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='pengaturan pada saat pembayaran angsuran';

--
-- Dumping data for table `auto_jurnal_angsuran`
--

INSERT INTO `auto_jurnal_angsuran` (`id_auto_jurnal_angsuran`, `komponen`, `id_perkiraan`, `kode`, `nama`) VALUES
(1, 'Jasa', 39, '4.1', 'Pendapatan Jasa '),
(2, 'Denda', 124, '4.2', 'Pendapatan Denda ');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(10) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(25) NOT NULL,
  `nama_barang` text NOT NULL,
  `kategori_barang` varchar(20) NOT NULL,
  `satuan_barang` varchar(20) NOT NULL,
  `konversi` int(10) NOT NULL,
  `harga_beli` int(10) DEFAULT NULL,
  `stok_barang` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `nama_barang`, `kategori_barang`, `satuan_barang`, `konversi`, `harga_beli`, `stok_barang`) VALUES
(1, '9415007034414', 'Boneeto Stoberi 115ml', 'MNM', 'KTK', 1, 2600, 87),
(2, '9415007014423', 'Boneeto Coklat 115ml', 'MNM', 'KTK', 1, 2600, 100),
(3, '9415007009818', 'Anlene Gold Cokelat 250g', 'MNM', 'DUS', 1, 38000, 80),
(4, '9311931201208', 'Max Tea Tarik', 'MNM', 'RCG', 1, 15250, 100),
(5, '8999999710880', 'Pepsodent Herbal 75g', 'BC', 'PCS', 1, 6600, 100),
(6, '8999999706081', 'Pepsodent White 75g', 'BC', 'PCS', 1, 3875, 100),
(7, '8999999549480', 'Sunlight Lime Cream', 'BC', 'PCS', 1, 4500, 100),
(8, '8999999538712', 'Rinso Cair 21ml', 'BC', 'RCG', 1, 2400, 100),
(9, '8999999533496', 'Bango Soya Manis 20ml', 'BD', 'RCG', 1, 9600, 99),
(10, '8999999533298', 'Dove Dandruff 20ml', 'BC', 'RCG', 1, 4500, 100),
(11, '8999999533281', 'Dove Rambut Rontok 20ml', 'BC', 'RCG', 1, 4500, 100),
(12, '8999999531485', 'Molto Luxury Rose 10ml', 'BC', 'KTG', 1, 4680, 100),
(13, '8999999531478', 'Molto Edp Purple 10ml', 'BC', 'RCG', 1, 4680, 100),
(14, '8999999530426', 'Rinso Cair Gentle Pouch 200ml', 'BD', 'PCH', 1, 3977, 100),
(15, '8999999530341', 'Citra Rcg 9ml', 'KC', 'RCG', 1, 4500, 100),
(16, '8999999530228', 'Lifebuoy Matcha 250ml', 'BC', 'REF', 1, 13150, 100),
(17, '8999999529918', 'Clear Superfresh Apple 80ml', 'BC', 'BTL', 1, 9100, 100),
(18, '8999999529833', 'Clear Ice Cool 10ml', 'BC', 'RCG', 1, 4650, 100),
(19, '8999999529819', 'Clear Anti Ketombe 10ml', 'BC', 'RCG', 1, 4650, 100),
(20, '8999999529703', 'Clear Cool Sport Menthol 80ml', 'BC', 'BTL', 1, 9700, 100),
(21, '8999999529673', 'Clear Ice Cool Menthol 80ml', 'BC', 'BTL', 1, 9100, 100),
(22, '8999999529550', 'Clear Complete Soft Care 80ml', 'BC', 'BTL', 1, 9100, 100),
(23, '8999999529291', 'Molto Pure 10ml', 'BC', 'RCG', 1, 4680, 100),
(24, '8999999528942', 'Citra Pearly white 120ml', 'KC', 'BTL', 1, 9750, 12),
(25, '8999999528935', 'Citra Nat Glow 120ml', 'KC', 'BTL', 1, 9750, 54),
(26, '8999999528881', 'Citra Nat Glow 230ml', 'KC', 'BTL', 1, 17150, 100),
(27, '8999999528850', 'Citra Nat Glow 60ml', 'KC', 'BTL', 1, 5450, 90),
(28, '8999999528843', 'Citra Pearly White 60ml', 'KC', 'BAG', 1, 5450, 100),
(29, '8999999528805', 'Citra Pearly White Uv 230ml', 'KC', 'BTL', 1, 17150, 100),
(30, '8999999526894', 'Rinso Molto Cair Royal Gold', 'BC', 'RCG', 1, 4830, 100),
(31, '8999999526887', 'Rinso Royal Gold 770g', 'BC', 'PCS', 1, 17508, 100),
(32, '8999999526863', 'Molto All In1 Pink 11ml', 'BC', 'RCG', 1, 4680, 100),
(33, '8999999526856', 'Molto All In One Biru 11ml', 'BC', 'RCG', 1, 4680, 100),
(34, '8999999524821', 'Sunlight Habbatus Pouch 100ml', 'BC', 'PCS', 1, 1488, 100),
(35, '8999999524722', 'Sunlight Lime Pouch 435ml', 'BC', 'REF', 1, 9308333, 100),
(36, '8999999520885', 'Wifol Karbol 500ml', 'BC', 'PCS', 1, 8600, 100),
(37, '8999999520878', 'Wipol Karbol 240ml', 'BC', 'PCH', 1, 4249, 100),
(38, '8999999518998', 'Rinso Molto Essence 770g', 'BC', 'BAG', 1, 18050, 100),
(39, '8999999518516', 'Molto Detergen cair glowing Elegance 700ml', 'Lainnya', 'REF', 1, 14375, 100),
(40, '8999999518417', 'Molto Detergent 40gr', 'Lainnya', 'SCH', 1, 908333, 100),
(41, '8999999514617', 'Bango Pouch 400ml', 'MKN', 'PCH', 1, 15520, 120),
(42, '8999999514518', 'Rinso Cair Essence Pouch', 'BC', 'PCH', 1, 4074, 100),
(43, '8999999514495', 'Rinso Cair Rose Fresh Pouch', 'BC', 'PCH', 1, 4074, 100),
(44, '8999999514006', 'Korek Gas', 'ALAT', 'PCS', 1, 2400, 95),
(45, '8999999514006', 'Bango Manis 60ml', 'BD', 'pcs', 1, 2400, 78),
(46, '8999999504014', 'Molto Higiene Perisai Aktif 12ml', 'Lainnya', 'SCH', 1, 426111, 100),
(47, '8999999502409', 'Royco Fds Sapi 9g', 'BD', 'RCG', 1, 4479167, 100),
(48, '8999999500672', 'Vixal Pemb Pors Biru 200ml', 'BC', 'BTL', 1, 4200, 100),
(49, '8999999500641', 'Rinso Molto Pink 250g', 'BC', 'BKS', 1, 4200, 100),
(50, '8999999407872', 'Wipol Classic Pine 450 ml', 'Lainnya', 'REF', 1, 11625, 100),
(51, '8999999406936', 'Super Pell Pouch 380ml', 'BC', 'PCH', 1, 5529, 100),
(52, '8999999406912', 'Super Pell Pouch Cherry Rose', 'BC', 'PCH', 1, 9744, 100),
(53, '8999999401221', 'Rinso Anti Noda 430g', 'BC', 'PCS', 1, 9500, 95),
(54, '8999999401023', 'Molto Pewangi Pink 900ml', 'BC', 'REF', 1, 10100, 100),
(55, '8999999400958', 'Molto Pewangi Blue 900ml', 'BC', 'REF', 1, 10100, 100),
(56, '8999999400903', 'Molto Pewangi Floral Bliss 450 ml', 'BC', 'REF', 1, 5208, 100),
(57, '8999999390181', 'Sunlight Lime 400ml', 'BC', 'PCH', 1, 9000, 100),
(58, '8999999195656', 'Sariwangi Kotak Tb 50', 'MNM', 'PAK', 1, 9249, 100),
(59, '8999999195649', 'Sariwangi Kotak 1,85g', 'MNM', 'KTK', 1, 4800021, 100),
(61, '8999999059781', 'Sunlight Lime Pouch 210ml', 'BC', 'REF', 1, 4300, 100),
(62, '8999999059354', 'Lifebuoy Vita Protect', 'BC', 'BH', 1, 2700, 100),
(63, '8999999059323', 'Lifebuoy Lemon Fresh', 'BC', 'BH', 1, 2700, 100),
(64, '8999999059316', 'Lifebuoy Mild Care 80g', 'KC', 'BH', 1, 2700, 100),
(73, '8999999052959', 'Pons White Beauty Foam 50g', 'BC', 'TUB', 1, 16300, 100),
(74, '8999999050009', 'Sunlight Lime Pouch 95ml', 'BC', 'BKS', 1, 1600, 98),
(75, '8999999049669', 'Rexona Motionsense', 'BC', 'BH', 1, 13550, 100),
(76, '8999999049492', 'Rexona Powder Dry 45ml', 'KC', 'BTL', 1, 13550, 100),
(77, '8999999049454', 'Rexona Free Spirit 50ml', 'BC', 'BH', 1, 13550, 99),
(78, '8999999049409', 'Rexona Men Cool Ice 50ml', 'BC', 'BH', 1, 13550, 100),
(79, '8999999049034', 'Sunlight Lime Pouch 45ml', 'BC', 'SCH', 1, 825, 100),
(80, '8999999047245', 'Rinso Molto 44g', 'BC', 'RCG', 1, 4830, 100),
(81, '8999999047221', 'Rinso Anti Noda 44g', 'BC', 'RCG', 1, 4830, 100),
(82, '8999999036942', 'Lux Magical Spell 250ml', 'BC', 'REF', 1, 12114, 100),
(83, '8999999036904', 'Lux Velvet Pouch 250ml', 'BC', 'PCS', 1, 12112, 100),
(84, '8999999036898', 'Lux Soft Rose 250ml', 'BC', 'REF', 1, 12114, 100),
(85, '8999999036843', 'Lux Aqua Delight 450ml', 'BC', 'PCH', 1, 20320, 100),
(86, '8999999036829', 'Lux Soft Rose 450ml', 'BC', 'PCS', 1, 20320, 100),
(87, '8999999036690', 'Lux Magical Spell 80g', 'KC', 'BH', 1, 2800, 100),
(88, '8999999036676', 'Lux Aqua Delight 80g', 'KC', 'BH', 1, 2800, 100),
(89, '8999999036638', 'Lux Velvet Jasmine 80g', 'KC', 'BH', 1, 2800, 100),
(91, '8999999034153', 'Blue Band Serbaguna 200g', 'MKN', 'PCS', 1, 6733333, 109),
(92, '8999999033200', 'Lifebuoy Anti - Dandruff 70ml', 'BC', 'BTL', 1, 6850, 100),
(93, '8999999033163', 'Lifebuoy Strong & Shiny 70 ml', 'BC', 'BTL', 1, 6850, 100),
(94, '8999999033125', 'Lifebuoy Anti Hair Fall 70ml', 'BC', 'BTL', 1, 6850, 100),
(95, '8999999027605', 'Clear Complete Soft Care 10ml Unisex', 'Lainnya', 'pcs', 1, 783125, 100),
(96, '8999999027278', 'Lifebuoy Lemon Fresh 250ml', 'BC', 'REF', 1, 13150, 100),
(97, '8999999027261', 'Lifebuoy Lemon Fresh 450ml', 'BC', 'REF', 1, 21700, 100),
(98, '8999999027049', 'Lifebuoy Hairfall Trmt 9ml', 'BC', 'RCG', 1, 2250, 97),
(99, '6676', 'Pulsa Tree 5000', 'Pulsa', 'Rp', 1, 5000, 100),
(100, '2345654631', 'Pulsa Telkomsel 5000', 'Pulsa', 'Rp', 1, 5000, 200);

-- --------------------------------------------------------

--
-- Table structure for table `barang_bacth`
--

DROP TABLE IF EXISTS `barang_bacth`;
CREATE TABLE IF NOT EXISTS `barang_bacth` (
  `id_barang_bacth` int(10) NOT NULL AUTO_INCREMENT,
  `id_barang` int(10) NOT NULL,
  `id_barang_satuan` int(10) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` text NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `no_batch` varchar(20) NOT NULL,
  `expired_date` varchar(20) NOT NULL,
  `qty_batch` int(11) NOT NULL,
  `reminder_date` varchar(20) NOT NULL,
  `status` varchar(25) NOT NULL COMMENT 'Terdaftar, Terjual, None',
  PRIMARY KEY (`id_barang_bacth`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_bacth`
--

INSERT INTO `barang_bacth` (`id_barang_bacth`, `id_barang`, `id_barang_satuan`, `kode_barang`, `nama_barang`, `satuan`, `no_batch`, `expired_date`, `qty_batch`, `reminder_date`, `status`) VALUES
(1, 96, 0, '8999999027278', 'Lifebuoy Lemon Fresh 250ml', 'REF', '89999990272781', '2022-09-24', 10, '2022-09-18', 'Terjual'),
(2, 95, 0, '8999999027605', 'Clear Complete Soft Care 10ml Unisex', 'pcs', '89999990276051', '2022-09-10', 10, '2022-09-11', 'Terjual'),
(3, 91, 0, '8999999034153', 'Blue Band Serbaguna 200g', 'PCS', '89999990341531', '2022-09-24', 15, '2022-09-18', 'Terjual'),
(4, 91, 0, '8999999034153', 'Blue Band Serbaguna 200g', 'PCS', '89999990341532', '2022-09-24', 15, '2022-09-18', 'Terjual'),
(5, 91, 0, '8999999034153', 'Blue Band Serbaguna 200g', 'PCS', '89999990341533', '2022-09-24', 15, '2022-09-18', 'Terjual');

-- --------------------------------------------------------

--
-- Table structure for table `barang_harga`
--

DROP TABLE IF EXISTS `barang_harga`;
CREATE TABLE IF NOT EXISTS `barang_harga` (
  `id_barang_harga` int(10) NOT NULL AUTO_INCREMENT,
  `id_barang` int(10) NOT NULL,
  `id_barang_satuan` int(10) DEFAULT NULL,
  `kategori_harga` text NOT NULL,
  `harga` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_barang_harga`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_harga`
--

INSERT INTO `barang_harga` (`id_barang_harga`, `id_barang`, `id_barang_satuan`, `kategori_harga`, `harga`) VALUES
(1, 4, 0, 'Harga Jual Eceran', 35000),
(2, 4, 2, 'Harga Jual Eceran', 3500000),
(3, 4, 1, 'Harga Jual Eceran', 350000),
(4, 3, 0, 'Harga Jual Eceran', 9000),
(5, 3, 3, 'Harga Jual Eceran', 900000),
(6, 1, 0, 'Harga Jual Eceran', 1600),
(7, 1, 5, 'Harga Jual Eceran', 6500),
(8, 1, 6, 'Harga Jual Eceran', 650000),
(9, 5, 0, 'Harga Eceren', 5000),
(10, 5, 0, 'Harga Medis', 4900),
(13, 5, 0, 'Harga BPJS', 4800),
(14, 5, 0, 'Harga Teman', 4700),
(15, 6, 0, 'Harga Eceren', 1500),
(16, 6, 0, 'Harga Medis', 1600),
(17, 6, 0, 'Harga BPJS', 1350),
(25, 7, 0, 'Harga Eceran', 22000),
(30, 99, 0, 'Eceran', 5000),
(31, 100, 0, 'Eceran', 5700),
(32, 1, 0, 'Eceran', 2600),
(33, 2, 0, 'Eceran', 2600),
(34, 3, 0, 'Eceran', 38000),
(35, 4, 0, 'Eceran', 15250),
(36, 5, 0, 'Eceran', 6600),
(37, 6, 0, 'Eceran', 3875),
(38, 7, 0, 'Eceran', 4500),
(39, 8, 0, 'Eceran', 2400),
(40, 9, 0, 'Eceran', 9600),
(41, 10, 0, 'Eceran', 4500),
(42, 11, 0, 'Eceran', 4500),
(43, 12, 0, 'Eceran', 4680),
(44, 13, 0, 'Eceran', 4680),
(45, 14, 0, 'Eceran', 3977),
(46, 15, 0, 'Eceran', 4500),
(47, 16, 0, 'Eceran', 13150),
(48, 17, 0, 'Eceran', 9100),
(49, 18, 0, 'Eceran', 4650),
(50, 19, 0, 'Eceran', 4650),
(51, 20, 0, 'Eceran', 9700),
(52, 21, 0, 'Eceran', 9100),
(53, 22, 0, 'Eceran', 9100),
(54, 23, 0, 'Eceran', 4680),
(55, 24, 0, 'Eceran', 9750),
(56, 25, 0, 'Eceran', 9750),
(57, 26, 0, 'Eceran', 17150),
(58, 27, 0, 'Eceran', 5450),
(59, 28, 0, 'Eceran', 5450),
(60, 29, 0, 'Eceran', 17150),
(61, 30, 0, 'Eceran', 4830),
(62, 31, 0, 'Eceran', 17508),
(63, 32, 0, 'Eceran', 4680),
(64, 33, 0, 'Eceran', 4680),
(65, 34, 0, 'Eceran', 1488),
(66, 35, 0, 'Eceran', 9308333),
(67, 36, 0, 'Eceran', 8600),
(68, 37, 0, 'Eceran', 4249),
(69, 38, 0, 'Eceran', 18050),
(70, 39, 0, 'Eceran', 14375),
(71, 40, 0, 'Eceran', 908333),
(72, 41, 0, 'Eceran', 15520),
(73, 42, 0, 'Eceran', 4074),
(74, 43, 0, 'Eceran', 4074),
(75, 44, 0, 'Eceran', 2400),
(76, 45, 0, 'Eceran', 2400),
(77, 46, 0, 'Eceran', 426111),
(78, 47, 0, 'Eceran', 4479167),
(79, 48, 0, 'Eceran', 4200),
(80, 49, 0, 'Eceran', 4200),
(81, 50, 0, 'Eceran', 11625),
(82, 51, 0, 'Eceran', 5529),
(83, 52, 0, 'Eceran', 9744),
(84, 53, 0, 'Eceran', 9500),
(85, 54, 0, 'Eceran', 10100),
(86, 55, 0, 'Eceran', 10100),
(87, 56, 0, 'Eceran', 5208),
(88, 57, 0, 'Eceran', 9000),
(89, 58, 0, 'Eceran', 9249),
(90, 59, 0, 'Eceran', 4800021),
(91, 61, 0, 'Eceran', 4300),
(92, 62, 0, 'Eceran', 2700),
(93, 63, 0, 'Eceran', 2700),
(94, 64, 0, 'Eceran', 2700),
(95, 73, 0, 'Eceran', 16300),
(96, 74, 0, 'Eceran', 1600),
(97, 75, 0, 'Eceran', 13550),
(98, 76, 0, 'Eceran', 13550),
(99, 77, 0, 'Eceran', 13550),
(100, 78, 0, 'Eceran', 13550),
(101, 79, 0, 'Eceran', 825),
(102, 80, 0, 'Eceran', 4830),
(103, 81, 0, 'Eceran', 4830),
(104, 82, 0, 'Eceran', 12114),
(105, 83, 0, 'Eceran', 12112),
(106, 84, 0, 'Eceran', 12114),
(107, 85, 0, 'Eceran', 20320),
(108, 86, 0, 'Eceran', 20320),
(109, 87, 0, 'Eceran', 2800),
(110, 88, 0, 'Eceran', 2800),
(111, 89, 0, 'Eceran', 2800),
(112, 91, 0, 'Eceran', 6733333),
(113, 92, 0, 'Eceran', 6850),
(114, 93, 0, 'Eceran', 6850),
(115, 94, 0, 'Eceran', 6850),
(116, 95, 0, 'Eceran', 783125),
(117, 96, 0, 'Eceran', 13150),
(118, 97, 0, 'Eceran', 22000),
(120, 98, 0, 'Eceran', 5000),
(121, 98, 19, 'Eceran', 50000),
(123, 98, 19, '', 25000),
(124, 97, 21, '', 200000),
(125, 97, 21, 'Eceran', 220000),
(126, 100, 20, '', 50000),
(127, 100, 20, 'Eceran', 57000);

-- --------------------------------------------------------

--
-- Table structure for table `barang_kategori_harga`
--

DROP TABLE IF EXISTS `barang_kategori_harga`;
CREATE TABLE IF NOT EXISTS `barang_kategori_harga` (
  `id_barang_kategori_harga` int(15) NOT NULL AUTO_INCREMENT,
  `kategori_harga` varchar(25) NOT NULL,
  PRIMARY KEY (`id_barang_kategori_harga`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_kategori_harga`
--

INSERT INTO `barang_kategori_harga` (`id_barang_kategori_harga`, `kategori_harga`) VALUES
(3, 'Eceran');

-- --------------------------------------------------------

--
-- Table structure for table `barang_satuan`
--

DROP TABLE IF EXISTS `barang_satuan`;
CREATE TABLE IF NOT EXISTS `barang_satuan` (
  `id_barang_satuan` int(10) NOT NULL AUTO_INCREMENT,
  `id_barang` int(10) NOT NULL,
  `kode_barang` varchar(25) NOT NULL,
  `satuan_multi` varchar(20) NOT NULL,
  `konversi_multi` int(10) DEFAULT NULL,
  `stok_multi` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_barang_satuan`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_satuan`
--

INSERT INTO `barang_satuan` (`id_barang_satuan`, `id_barang`, `kode_barang`, `satuan_multi`, `konversi_multi`, `stok_multi`) VALUES
(1, 4, '909', 'Krat', 10, 10),
(2, 4, '909', 'Dus', 100, 1),
(3, 3, '9032', 'Dus', 100, 1),
(5, 1, '906', 'Strip', 4, 25),
(6, 1, '906', 'Dus', 400, 0),
(7, 5, '108837348547', 'Strip', 4, 350),
(8, 5, '108837348547', 'Box', 40, 35),
(9, 6, '2345654634', 'Set', 4, 1417),
(11, 6, '2345654634', 'Boss', 10, 567),
(12, 6, '2345654634', 'Kontener', 1000, 6),
(19, 98, '8999999027049', 'Dus', 10, 10),
(20, 100, '2345654631', 'Bos', 10, 20),
(21, 97, '8999999027261', 'Dus', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi_api`
--

DROP TABLE IF EXISTS `dokumentasi_api`;
CREATE TABLE IF NOT EXISTS `dokumentasi_api` (
  `id_dokumentasi_api` int(10) NOT NULL AUTO_INCREMENT,
  `updatetime_api` varchar(25) NOT NULL,
  `judul_api` text NOT NULL,
  `kategori_api` varchar(20) NOT NULL,
  `metode_api` varchar(20) NOT NULL,
  `url_api` text NOT NULL,
  `request_api` text NOT NULL,
  `response_api` text NOT NULL,
  PRIMARY KEY (`id_dokumentasi_api`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
CREATE TABLE IF NOT EXISTS `help` (
  `id_help` int(12) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `datetime_creat` datetime NOT NULL,
  `datetime_update` datetime NOT NULL,
  `status` varchar(15) NOT NULL COMMENT 'Publish, Draft',
  PRIMARY KEY (`id_help`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`id_help`, `author`, `judul`, `kategori`, `deskripsi`, `datetime_creat`, `datetime_update`, `status`) VALUES
(2, 'Solihul Hadi', 'Cara Mengirim Pengajuan Akses', 'Pengajuan Akses', '&lt;p&gt;Tahap awal yang harus dilakukan pertama kali untuk dapat menggunakan aplikasi adalah mengirimkan permohonan akses.&lt;/p&gt;', '2024-08-09 05:07:14', '2024-08-10 01:09:35', 'Publish'),
(3, 'Solihul Hadi', 'Melakukan Login', 'Akses', '&lt;p&gt;Untuk melakukan login, ikuti tahapan berikut ini&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;assets/img/Help/43ac4062b48a1b8e.png&quot; alt=&quot;&quot; width=&quot;389&quot; height=&quot;409&quot; /&gt;&lt;/p&gt;', '2024-08-09 05:16:33', '2024-08-10 01:09:28', 'Publish'),
(4, 'Solihul Hadi', 'Mengubah Password', 'Akses', '&lt;p&gt;Berikut ini adalah langkah-langkah untuk merubah password&lt;/p&gt;\n&lt;ol&gt;\n&lt;li&gt;Login pada akun anda seperti biasa&lt;/li&gt;\n&lt;li&gt;Pada bagian menu kanan atas (profil pengguna) pilih profil saya.&lt;/li&gt;\n&lt;li&gt;Pilih sub menu ubah password&lt;/li&gt;\n&lt;li&gt;Masukan password baru anda pada form yang disediakan&lt;/li&gt;\n&lt;li&gt;Simpan perubahan dan sistem akan menampilkan notifikasi berhasil.&lt;/li&gt;\n&lt;/ol&gt;', '2024-08-10 00:58:00', '2024-08-12 02:12:30', 'Publish'),
(5, 'Solihul Hadi', 'Menambahkan Data Anggota', 'Anggota', '&lt;p&gt;&lt;img src=&quot;assets/img/Help/4566e4616b855f6d.jpg&quot; alt=&quot;&quot; width=&quot;100%&quot; /&gt;&lt;/p&gt;', '2024-08-12 02:24:22', '2024-08-12 02:24:46', 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

DROP TABLE IF EXISTS `jurnal`;
CREATE TABLE IF NOT EXISTS `jurnal` (
  `id_jurnal` int(12) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(30) NOT NULL COMMENT 'Simpanan, Penarikan, Transaksi, Pinjaman, Angsuran, ',
  `uuid` char(36) NOT NULL,
  `tanggal` date NOT NULL COMMENT 'tanggal transaksi',
  `kode_perkiraan` varchar(20) NOT NULL,
  `nama_perkiraan` text NOT NULL,
  `d_k` varchar(5) NOT NULL COMMENT 'D/K',
  `nilai` int(12) DEFAULT NULL,
  PRIMARY KEY (`id_jurnal`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal`
--

INSERT INTO `jurnal` (`id_jurnal`, `kategori`, `uuid`, `tanggal`, `kode_perkiraan`, `nama_perkiraan`, `d_k`, `nilai`) VALUES
(9, 'Simpanan', 'scOFcDNHoYM0ZKW7njU63TIcIYRezvMyvSBk', '2024-07-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 250000),
(10, 'Simpanan', 'scOFcDNHoYM0ZKW7njU63TIcIYRezvMyvSBk', '2024-07-01', '1.1.3', 'Piutang usaha', 'K', 250000),
(11, 'Simpanan', 'hCqh8Z2lrW5YW3Wn6q4Z3BJf72gwyg9KFcnf', '2024-07-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 150000),
(12, 'Simpanan', 'hCqh8Z2lrW5YW3Wn6q4Z3BJf72gwyg9KFcnf', '2024-07-01', '1.1.3', 'Piutang usaha', 'K', 150000),
(13, 'Simpanan', '4swlziAOE2cNnXAPYHxyEIkUaTkWoK9iu9Uk', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(14, 'Simpanan', '4swlziAOE2cNnXAPYHxyEIkUaTkWoK9iu9Uk', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(15, 'Simpanan', 'ZIxwLBImDjPsEvc4aFPGQ4ioiHeBvVl1W73V', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(16, 'Simpanan', 'ZIxwLBImDjPsEvc4aFPGQ4ioiHeBvVl1W73V', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(17, 'Simpanan', 'URN54IRL2qQS8j51WwlWm2yDpPCcz2St6xcF', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(18, 'Simpanan', 'URN54IRL2qQS8j51WwlWm2yDpPCcz2St6xcF', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(19, 'Simpanan', 'Q5aRPZGUvxiVYFsQsGKhJC7M9CtNXSiFzRJI', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(20, 'Simpanan', 'Q5aRPZGUvxiVYFsQsGKhJC7M9CtNXSiFzRJI', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(21, 'Simpanan', 'zRn2SgKQNF1bSAkyGq6AavjeMxrmwRATQs7J', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(22, 'Simpanan', 'zRn2SgKQNF1bSAkyGq6AavjeMxrmwRATQs7J', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(23, 'Simpanan', 'YARyANVJ5GzNKps62N8AEWOHlXMWeqAVN6Vs', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(24, 'Simpanan', 'YARyANVJ5GzNKps62N8AEWOHlXMWeqAVN6Vs', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(25, 'Simpanan', 'hepRd0QLHqvEoNFRk3lanq2XZkwAvVZvqdDy', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(26, 'Simpanan', 'hepRd0QLHqvEoNFRk3lanq2XZkwAvVZvqdDy', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(27, 'Simpanan', '9kLBbyZWIVgmASPRlUeNpPAkvw0NXNFCOBV1', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(28, 'Simpanan', '9kLBbyZWIVgmASPRlUeNpPAkvw0NXNFCOBV1', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(29, 'Simpanan', '4uxspSpBsFRda5sa0nVhu8F2WidR24daqgFF', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(30, 'Simpanan', '4uxspSpBsFRda5sa0nVhu8F2WidR24daqgFF', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(31, 'Simpanan', 'Av0I0p3emkS5G6X1EpfGx8xkshYkWHwRrMUV', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(32, 'Simpanan', 'Av0I0p3emkS5G6X1EpfGx8xkshYkWHwRrMUV', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(33, 'Simpanan', 'Fsbh376rXT3pnJg1KIEbS13JBhhQTe3CijIu', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(34, 'Simpanan', 'Fsbh376rXT3pnJg1KIEbS13JBhhQTe3CijIu', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(35, 'Simpanan', 'Mz2ptwqcmf4ECqdztWGHt3N3WFijgq6NTc0E', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(36, 'Simpanan', 'Mz2ptwqcmf4ECqdztWGHt3N3WFijgq6NTc0E', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(37, 'Simpanan', 'l6WMPehE87AXVxGYlgNbRtgRlzo7QJYNrkUj', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(38, 'Simpanan', 'l6WMPehE87AXVxGYlgNbRtgRlzo7QJYNrkUj', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(39, 'Simpanan', '4Ra0PToiOhiclcW3U0ANJcrGVwqKyZRK1TgC', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(40, 'Simpanan', '4Ra0PToiOhiclcW3U0ANJcrGVwqKyZRK1TgC', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(41, 'Simpanan', 'GFhg1wUbPl2LSsPWHTsRLNvKgMvcZXRF9hJ6', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(42, 'Simpanan', 'GFhg1wUbPl2LSsPWHTsRLNvKgMvcZXRF9hJ6', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(43, 'Simpanan', 'TpOE5u3HQumwJ3lmlt5Sp20VXxcjrfd7FvM1', '2024-01-01', 'No Value Count', 'No Value Count', 'D', 200000),
(44, 'Simpanan', 'TpOE5u3HQumwJ3lmlt5Sp20VXxcjrfd7FvM1', '2024-01-01', 'No Value Count', 'No Value Count', 'K', 200000),
(77, 'Simpanan', 'v30SUIK8KbXGfK6rgaVMZmHiTU2JPlkw8qWl', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(78, 'Simpanan', 'v30SUIK8KbXGfK6rgaVMZmHiTU2JPlkw8qWl', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(79, 'Simpanan', 'Xkwru6Rdum23VFy2Y5w0e3l568pvVdbTRf3J', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(80, 'Simpanan', 'Xkwru6Rdum23VFy2Y5w0e3l568pvVdbTRf3J', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(81, 'Simpanan', 'GniC7tVh1nkqfKgk3749f4Df5XICpos1XMFL', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(82, 'Simpanan', 'GniC7tVh1nkqfKgk3749f4Df5XICpos1XMFL', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(83, 'Simpanan', 'Mzh5CBWTbqsLjLeazzfbcy8yDT67A4KnqH4M', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(84, 'Simpanan', 'Mzh5CBWTbqsLjLeazzfbcy8yDT67A4KnqH4M', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(85, 'Simpanan', 'H7fM5JFo69uWyOaD3dsS44VWqa2wLo64j3pS', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(86, 'Simpanan', 'H7fM5JFo69uWyOaD3dsS44VWqa2wLo64j3pS', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(87, 'Simpanan', 'HogSwlxpOhGRDpAJaVJBEKThIoIElM2KD0b7', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(88, 'Simpanan', 'HogSwlxpOhGRDpAJaVJBEKThIoIElM2KD0b7', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(89, 'Simpanan', '0cREm6HTXIqPidthtpuTPV737EP5h2zkcHsn', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(90, 'Simpanan', '0cREm6HTXIqPidthtpuTPV737EP5h2zkcHsn', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(91, 'Simpanan', '0loVtJWziDlwD8C3t2BA4Wcv3NreY08BRjGL', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(92, 'Simpanan', '0loVtJWziDlwD8C3t2BA4Wcv3NreY08BRjGL', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(93, 'Simpanan', 'N8FdF5ltfTzuV9ixyVigUZ3pwHoY8zBHD1Lg', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(94, 'Simpanan', 'N8FdF5ltfTzuV9ixyVigUZ3pwHoY8zBHD1Lg', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(95, 'Simpanan', 'VpMrX2YIW9Xml7AD4oOp7Qw6MhCmfoBV3VZc', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(96, 'Simpanan', 'VpMrX2YIW9Xml7AD4oOp7Qw6MhCmfoBV3VZc', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(97, 'Simpanan', 'Vf1Ar6hsKUJtgaVCyrgamV4F69eWMsMBVnHW', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(98, 'Simpanan', 'Vf1Ar6hsKUJtgaVCyrgamV4F69eWMsMBVnHW', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(99, 'Simpanan', 'OPX1ldiOhc7rqfnwB64Xv2w0bE7kXJpOrdmI', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(100, 'Simpanan', 'OPX1ldiOhc7rqfnwB64Xv2w0bE7kXJpOrdmI', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(101, 'Simpanan', '5Gw2GSkzRcT32s2ONZr9CGGuuAdpCSy4Vf4a', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(102, 'Simpanan', '5Gw2GSkzRcT32s2ONZr9CGGuuAdpCSy4Vf4a', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(103, 'Simpanan', 'yDdSS3icmLARUPfNnJkS7dsiVuu03nR0RVM8', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(104, 'Simpanan', 'yDdSS3icmLARUPfNnJkS7dsiVuu03nR0RVM8', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(105, 'Simpanan', 'U6TzXD3Mn5DeSMkOs9X38fOXmwLeAZdxmolk', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(106, 'Simpanan', 'U6TzXD3Mn5DeSMkOs9X38fOXmwLeAZdxmolk', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(107, 'Simpanan', 'cuZsU9lYkgUXuzcjYFtjPEcfy6g2kSeixzuj', '2024-03-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(108, 'Simpanan', 'cuZsU9lYkgUXuzcjYFtjPEcfy6g2kSeixzuj', '2024-03-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(109, 'Simpanan', 'eE51t1oDkA8B8Ep1M8IY9mcKVGVbu6ZHAB0G', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(110, 'Simpanan', 'eE51t1oDkA8B8Ep1M8IY9mcKVGVbu6ZHAB0G', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(111, 'Simpanan', 'vZs3T3DzhuMKNcgsoG7Z4BcwF5BxVAy2Nfo4', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(112, 'Simpanan', 'vZs3T3DzhuMKNcgsoG7Z4BcwF5BxVAy2Nfo4', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(113, 'Simpanan', 'BWybxQNHdJNcmrDyyKRyTjsDy19EF7TC2PLb', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(114, 'Simpanan', 'BWybxQNHdJNcmrDyyKRyTjsDy19EF7TC2PLb', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(115, 'Simpanan', 'AA5wQgz1TapS3QkmCd9q5TDGPH3mPkBBqI1y', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(116, 'Simpanan', 'AA5wQgz1TapS3QkmCd9q5TDGPH3mPkBBqI1y', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(117, 'Simpanan', 'Bygbuqvy0ePRYWlXG0eMOmB5rXy54VyssNZF', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(118, 'Simpanan', 'Bygbuqvy0ePRYWlXG0eMOmB5rXy54VyssNZF', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(119, 'Simpanan', 'Yno0wUXwYvzzJd5UqLe9uwxlucTVVlvIbQTm', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(120, 'Simpanan', 'Yno0wUXwYvzzJd5UqLe9uwxlucTVVlvIbQTm', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(121, 'Simpanan', 'OjXl4sBo4NVlr8b0rm7pXBcyUNfxcyafcRLn', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(122, 'Simpanan', 'OjXl4sBo4NVlr8b0rm7pXBcyUNfxcyafcRLn', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(123, 'Simpanan', '1TuBV87E7h6rzPIvcHMHNkNVcg9qIQQPUBSA', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(124, 'Simpanan', '1TuBV87E7h6rzPIvcHMHNkNVcg9qIQQPUBSA', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(125, 'Simpanan', 'zGos4koPCGYVCBlAaoiHpaMZ4iXoXfplTZIP', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(126, 'Simpanan', 'zGos4koPCGYVCBlAaoiHpaMZ4iXoXfplTZIP', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(127, 'Simpanan', 'h7sRhwibmjFjCUBzGzMrRCcUa1umBJgk7beH', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(128, 'Simpanan', 'h7sRhwibmjFjCUBzGzMrRCcUa1umBJgk7beH', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(129, 'Simpanan', 'cWt1JQ8RIykxo8sO3RBhTijnswJC6m9aWcau', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(130, 'Simpanan', 'cWt1JQ8RIykxo8sO3RBhTijnswJC6m9aWcau', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(131, 'Simpanan', 'GYFXE95SkK2xs0eJmFidfVdrp76EBBhS6B16', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(132, 'Simpanan', 'GYFXE95SkK2xs0eJmFidfVdrp76EBBhS6B16', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(133, 'Simpanan', 'TNZ8tS9ccKnEsLa35YcR2Z84K5G7bFcuaQva', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(134, 'Simpanan', 'TNZ8tS9ccKnEsLa35YcR2Z84K5G7bFcuaQva', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(135, 'Simpanan', 'JcyYUkCat4ZHqJCfMDRBlTlNdTyCeWlMGwiF', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(136, 'Simpanan', 'JcyYUkCat4ZHqJCfMDRBlTlNdTyCeWlMGwiF', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(137, 'Simpanan', 'ar4jpTr63cKBO3FafCMNqDnURivnKjBZJx9m', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(138, 'Simpanan', 'ar4jpTr63cKBO3FafCMNqDnURivnKjBZJx9m', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(139, 'Simpanan', 'acBOeReg1D9HZLwzBFX3ieY0IJBleRBaighc', '2024-04-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(140, 'Simpanan', 'acBOeReg1D9HZLwzBFX3ieY0IJBleRBaighc', '2024-04-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(141, 'Simpanan', 'o1yCVHA1JNqJcGTweck7kEjwdZpNphcTGLR8', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(142, 'Simpanan', 'o1yCVHA1JNqJcGTweck7kEjwdZpNphcTGLR8', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(143, 'Simpanan', 'wfUTQ643ZC5Fl66VX1iDBJnl51Kz7XSyiMUq', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(144, 'Simpanan', 'wfUTQ643ZC5Fl66VX1iDBJnl51Kz7XSyiMUq', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(145, 'Simpanan', '08JmoKSG959oQ5O1ihxLh8QzlCxbx1eGhgAd', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(146, 'Simpanan', '08JmoKSG959oQ5O1ihxLh8QzlCxbx1eGhgAd', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(147, 'Simpanan', '780b0q5JJcQLBODVG2fP5bqOSqCMudWsqD0R', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(148, 'Simpanan', '780b0q5JJcQLBODVG2fP5bqOSqCMudWsqD0R', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(149, 'Simpanan', 'BsLTx4FeLam1RVIRTFYNyKNjzc0JNu97ct1o', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(150, 'Simpanan', 'BsLTx4FeLam1RVIRTFYNyKNjzc0JNu97ct1o', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(151, 'Simpanan', 'wknxuvcQNGVCAqOGvybWarjk5fVrkEiIOOEQ', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(152, 'Simpanan', 'wknxuvcQNGVCAqOGvybWarjk5fVrkEiIOOEQ', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(153, 'Simpanan', 'LoLBNysMER0RtAcFmPoG4xQn5pJYL3enBaXD', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(154, 'Simpanan', 'LoLBNysMER0RtAcFmPoG4xQn5pJYL3enBaXD', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(155, 'Simpanan', 'mKlvjPFIYefmuC31X4Mumr3o23zrWkaWjp6q', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(156, 'Simpanan', 'mKlvjPFIYefmuC31X4Mumr3o23zrWkaWjp6q', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(157, 'Simpanan', 'EHKopzYRlX7VeXPOSt9Y0JquYsF2src8yFej', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(158, 'Simpanan', 'EHKopzYRlX7VeXPOSt9Y0JquYsF2src8yFej', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(159, 'Simpanan', 'onu4SvFoxWR9Vl6WqWFYfTRZoJH9xi8rT6Bj', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(160, 'Simpanan', 'onu4SvFoxWR9Vl6WqWFYfTRZoJH9xi8rT6Bj', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(161, 'Simpanan', 'FbwiTQyTy8hoCyEQQKOL5OoIRt8UfugyPiVY', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(162, 'Simpanan', 'FbwiTQyTy8hoCyEQQKOL5OoIRt8UfugyPiVY', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(163, 'Simpanan', 'ncNo5OVsRiTg9SJ9i2rKJJnx6ZI2AkDXqMn7', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(164, 'Simpanan', 'ncNo5OVsRiTg9SJ9i2rKJJnx6ZI2AkDXqMn7', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(165, 'Simpanan', '7eklnX8KrEDsBkskngpXjYdiNjBEBzIqtJU2', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(166, 'Simpanan', '7eklnX8KrEDsBkskngpXjYdiNjBEBzIqtJU2', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(167, 'Simpanan', 'gdJjXYWrKbTqhw5DxsiSGQZi6arboCRBN22f', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(168, 'Simpanan', 'gdJjXYWrKbTqhw5DxsiSGQZi6arboCRBN22f', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(169, 'Simpanan', 'WwMm7fUcUyONxDghByyng4oFtrp7us0Red4b', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(170, 'Simpanan', 'WwMm7fUcUyONxDghByyng4oFtrp7us0Red4b', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(171, 'Simpanan', '8enTxARpZV2o323beCxEz6Pbvtk3kQCvLk3o', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 200000),
(172, 'Simpanan', '8enTxARpZV2o323beCxEz6Pbvtk3kQCvLk3o', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 200000),
(205, 'Simpanan', 'yg3bMisPUkE5rHnN3HUYstlSDe7zAVNv6xqh', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(206, 'Simpanan', 'yg3bMisPUkE5rHnN3HUYstlSDe7zAVNv6xqh', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(207, 'Simpanan', 'IgDFSZpp9E3mhjVZBE83QcpgxYMDJmU5Xa4L', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(208, 'Simpanan', 'IgDFSZpp9E3mhjVZBE83QcpgxYMDJmU5Xa4L', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(209, 'Simpanan', 'axze8ePA2dLo7pDgppD11z2VIqrqysgQTnY5', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(210, 'Simpanan', 'axze8ePA2dLo7pDgppD11z2VIqrqysgQTnY5', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(211, 'Simpanan', 'lEb3sG1xynt9VhDsotEkJvDplVBwGchkWuDP', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(212, 'Simpanan', 'lEb3sG1xynt9VhDsotEkJvDplVBwGchkWuDP', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(213, 'Simpanan', 'VTcvRYx5ybRa24GfeG3IlVWvQG7SxgWziMjX', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(214, 'Simpanan', 'VTcvRYx5ybRa24GfeG3IlVWvQG7SxgWziMjX', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(215, 'Simpanan', 'bMw2JhILUVPsfDz3NpGSDZEEe2IkTXOsDYrp', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(216, 'Simpanan', 'bMw2JhILUVPsfDz3NpGSDZEEe2IkTXOsDYrp', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(217, 'Simpanan', '5X4uopDjHhQnGfmCSA1jSAT8oxXm1HPLnZoS', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(218, 'Simpanan', '5X4uopDjHhQnGfmCSA1jSAT8oxXm1HPLnZoS', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(219, 'Simpanan', 'ixYJzPrC3Y0F9RNfgEXtSQy5VBUvxnJaW8Sk', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(220, 'Simpanan', 'ixYJzPrC3Y0F9RNfgEXtSQy5VBUvxnJaW8Sk', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(221, 'Simpanan', 'cVmW3DdTombsIRC3EGcZ6ustbM1W2Tb1byNq', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(222, 'Simpanan', 'cVmW3DdTombsIRC3EGcZ6ustbM1W2Tb1byNq', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(223, 'Simpanan', 'H2JBvgxeFyLsHFRxZ6VLpX4m6A9OSog61L8B', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(224, 'Simpanan', 'H2JBvgxeFyLsHFRxZ6VLpX4m6A9OSog61L8B', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(225, 'Simpanan', 'C9oLJzQLx8gmWAGxmHCcSsoxvb1kPcVTsQKe', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(226, 'Simpanan', 'C9oLJzQLx8gmWAGxmHCcSsoxvb1kPcVTsQKe', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(227, 'Simpanan', '581wdco8qSyj51csZpV10XL7Yi9m7wJPjVsH', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(228, 'Simpanan', '581wdco8qSyj51csZpV10XL7Yi9m7wJPjVsH', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(229, 'Simpanan', 'faMd6dmzMP0AWnt0YLoKTJF5VCwj4fjQLb3s', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(230, 'Simpanan', 'faMd6dmzMP0AWnt0YLoKTJF5VCwj4fjQLb3s', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(233, 'Simpanan', 'Bg2bt3ff05bOiP7GxJS26w6APwNhdyBPWxP3', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(234, 'Simpanan', 'Bg2bt3ff05bOiP7GxJS26w6APwNhdyBPWxP3', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(235, 'Simpanan', 'QcL7v7vBqLzNwXKgTvHF7EJ9aVRQTMZcEAiT', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 100000),
(236, 'Simpanan', 'QcL7v7vBqLzNwXKgTvHF7EJ9aVRQTMZcEAiT', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 100000),
(237, 'Simpanan', 'EBANrlxJYZwgFSMvYdvCvey7SGjecOGPKspx', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(238, 'Simpanan', 'EBANrlxJYZwgFSMvYdvCvey7SGjecOGPKspx', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(239, 'Simpanan', 'JuvaYjZxStYVPxvfXnI1hXTCHi8k2Uieuttw', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(240, 'Simpanan', 'JuvaYjZxStYVPxvfXnI1hXTCHi8k2Uieuttw', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(241, 'Simpanan', 'luxMQRNhmesQQXdEdzEeMGpgNSaTWhbCoS74', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(242, 'Simpanan', 'luxMQRNhmesQQXdEdzEeMGpgNSaTWhbCoS74', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(243, 'Simpanan', 'ppCf1ecWBtMPPuSFncTX6Kfp8M7SteXbHNR1', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(244, 'Simpanan', 'ppCf1ecWBtMPPuSFncTX6Kfp8M7SteXbHNR1', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(245, 'Simpanan', 'NMVas5us0xdo7AEaKhuJhsoeLu9uu2agKChy', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(246, 'Simpanan', 'NMVas5us0xdo7AEaKhuJhsoeLu9uu2agKChy', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(247, 'Simpanan', '5rOGCwx9J11mYjuNcfE7c8DrLJdGbOfpgVXA', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(248, 'Simpanan', '5rOGCwx9J11mYjuNcfE7c8DrLJdGbOfpgVXA', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(249, 'Simpanan', 'udpsHARqYuSjg5ZnPB3C132hPS44WKmpZ6wY', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(250, 'Simpanan', 'udpsHARqYuSjg5ZnPB3C132hPS44WKmpZ6wY', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(251, 'Simpanan', 'jeDkD676fGs0wTM7Q4wQMEsXtOO8qafHXKUT', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(252, 'Simpanan', 'jeDkD676fGs0wTM7Q4wQMEsXtOO8qafHXKUT', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(253, 'Simpanan', 'rnJFwgrVFIyitqPzovIK4sNo12FM59LKpYoO', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(254, 'Simpanan', 'rnJFwgrVFIyitqPzovIK4sNo12FM59LKpYoO', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(255, 'Simpanan', 'ZRcY4Zux1igdPNn2XMIOYliADYRVhWBDnjkN', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(256, 'Simpanan', 'ZRcY4Zux1igdPNn2XMIOYliADYRVhWBDnjkN', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(257, 'Simpanan', '00rBgZcEyhxEiiDNRlTt1iHJIeaTvwyumltm', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(258, 'Simpanan', '00rBgZcEyhxEiiDNRlTt1iHJIeaTvwyumltm', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(259, 'Simpanan', 'QLHdTt4eto5biD0NwoDb4sMHW2nQe6zijezJ', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(260, 'Simpanan', 'QLHdTt4eto5biD0NwoDb4sMHW2nQe6zijezJ', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(261, 'Simpanan', '3Cg7LvGc6gxeXg8nqKcTadnSB0mUh8R44wCV', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(262, 'Simpanan', '3Cg7LvGc6gxeXg8nqKcTadnSB0mUh8R44wCV', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(263, 'Simpanan', 'gBnACe5R9a7D4r5Xwy3ppX4dxE9nf3KObnFG', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(264, 'Simpanan', 'gBnACe5R9a7D4r5Xwy3ppX4dxE9nf3KObnFG', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(265, 'Simpanan', '9YEWw53rM2gFK5mnAwW1ci9jIdY7LAaEcI5I', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(266, 'Simpanan', '9YEWw53rM2gFK5mnAwW1ci9jIdY7LAaEcI5I', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(267, 'Simpanan', 'AbMlSygoLSkbibeWnGR93voxf8BpqLAJYsXY', '2024-01-01', '1.1.1.2.2', 'Kas Bank Central Asia', 'D', 1000000),
(268, 'Simpanan', 'AbMlSygoLSkbibeWnGR93voxf8BpqLAJYsXY', '2024-01-01', '1.1.3', 'Piutang usaha', 'K', 1000000),
(269, 'Simpanan', 'EiixffHEeoHoHt165AowomvvcyXQQFYazitF', '2024-02-01', '1.1.1.2.3', 'Kas Bank Mandiri', 'D', 250000),
(270, 'Simpanan', 'EiixffHEeoHoHt165AowomvvcyXQQFYazitF', '2024-02-01', '1.1.3', 'Piutang usaha', 'K', 250000),
(273, 'Simpanan', '3QVZkzrsBsZ1rj9LR8DnmHrUQC4uM8ml6IV9', '2024-07-21', '2.2', 'Kewajiban Pembayaran Prive Investor', 'D', 150000),
(274, 'Simpanan', '3QVZkzrsBsZ1rj9LR8DnmHrUQC4uM8ml6IV9', '2024-07-21', '1.1.1.3', 'Kas Berangkas', 'K', 150000),
(279, 'Pinjaman', 'tdNOmps3REakH8ruoqe5Xu9JjNJXBRJr5jYt', '2024-07-23', '1.1.1.3', 'Kas Berangkas', 'K', 12000000),
(280, 'Pinjaman', 'tdNOmps3REakH8ruoqe5Xu9JjNJXBRJr5jYt', '2024-07-23', '1.1.3', 'Piutang usaha', 'D', 12000000),
(281, 'Pinjaman', 'V2KxE9HiuoEfA4oLedCGJYj55zG9B405lEeQ', '2024-02-01', '1.1.1.3', 'Kas Berangkas', 'K', 13000000),
(282, 'Pinjaman', 'V2KxE9HiuoEfA4oLedCGJYj55zG9B405lEeQ', '2024-02-01', '1.1.3', 'Piutang usaha', 'D', 13000000),
(283, 'Pinjaman', 'gN0oKbiTLpMYqlE0da5eLXvmzhsx7mLFiiK0', '2024-06-01', '1.1.1.3', 'Kas Berangkas', 'K', 10000000),
(284, 'Pinjaman', 'gN0oKbiTLpMYqlE0da5eLXvmzhsx7mLFiiK0', '2024-06-01', '1.1.3', 'Piutang usaha', 'D', 10000000),
(285, 'Pinjaman', '1Ot3u1haDX7PDpRfaq2e9eIY64SMaSgo6o7D', '2024-01-01', '1.1.1.3', 'Kas Berangkas', 'K', 120000000),
(286, 'Pinjaman', '1Ot3u1haDX7PDpRfaq2e9eIY64SMaSgo6o7D', '2024-01-01', '1.1.3', 'Piutang usaha', 'D', 120000000),
(287, 'Pinjaman', 'BrFhaVsfG24FcTBW9teNMc3PzktYllnTuxVL', '2024-01-07', '1.1.3', 'Piutang usaha', 'K', 120000000),
(288, 'Pinjaman', 'BrFhaVsfG24FcTBW9teNMc3PzktYllnTuxVL', '2024-01-07', '1.1.1.3', 'Kas Berangkas', 'D', 120000000),
(289, 'Angsuran', 'CXTZU5uJ0FfGzuQdqoTD1dXHDX2Z3LjJryMI', '2024-07-24', '1.1.3', 'Piutang usaha', 'K', 12480000),
(290, 'Angsuran', 'CXTZU5uJ0FfGzuQdqoTD1dXHDX2Z3LjJryMI', '2024-07-24', '1.1.1.1.1', 'Kas Brangkas', 'D', 12480000),
(291, 'Angsuran', 'TNh75T7OEOvyPBjmUsirJvgK8WnZDZPJYQcQ', '2024-06-01', '1.1.3', 'Piutang usaha', 'K', 12780000),
(292, 'Angsuran', 'TNh75T7OEOvyPBjmUsirJvgK8WnZDZPJYQcQ', '2024-06-01', '1.1.1.1.1', 'Kas Brangkas', 'D', 12780000),
(293, 'Angsuran', 'HLKy7SATnZjtSUfkqDEDlITkAhhUdtJ9XRS2', '2024-07-24', '1.1.3', 'Piutang usaha', 'K', 12580000),
(294, 'Angsuran', 'HLKy7SATnZjtSUfkqDEDlITkAhhUdtJ9XRS2', '2024-07-24', '1.1.1.1.1', 'Kas Brangkas', 'D', 12580000),
(295, 'Angsuran', 'aUCjY6OWrG8womPQJkgoCdk8XXDUy40wFmiQ', '2024-07-24', '1.1.3', 'Piutang usaha', 'K', 12580000),
(296, 'Angsuran', 'aUCjY6OWrG8womPQJkgoCdk8XXDUy40wFmiQ', '2024-07-24', '1.1.1.1.1', 'Kas Brangkas', 'D', 12580000),
(297, 'Angsuran', 'lGOf2JCiwwXU4hB9qyhckPTPrsrW423IzTyS', '2024-07-24', '1.1.3', 'Piutang usaha', 'K', 12580000),
(298, 'Angsuran', 'lGOf2JCiwwXU4hB9qyhckPTPrsrW423IzTyS', '2024-07-24', '1.1.1.1.1', 'Kas Brangkas', 'D', 12580000),
(307, 'Angsuran', '1EcChg4M8QtRK7kQtuPEzqGxuTUEtpZBGdHa', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 12580000),
(308, 'Angsuran', '1EcChg4M8QtRK7kQtuPEzqGxuTUEtpZBGdHa', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 12580000),
(309, 'Angsuran', '3d1zMpdZChgU6eHlTEK8gleT3zbeg0OmBH8t', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 12580000),
(310, 'Angsuran', '3d1zMpdZChgU6eHlTEK8gleT3zbeg0OmBH8t', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 12580000),
(317, 'Angsuran', 'QZXYxZIujUHxbRn8Dgldb17LS0qEbwXtE9Er', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 12580000),
(318, 'Angsuran', 'QZXYxZIujUHxbRn8Dgldb17LS0qEbwXtE9Er', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 12580000),
(321, 'Angsuran', 'MLTd7NsR7OVprOOBdcEiOVVKuWxufRaxCwq3', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(322, 'Angsuran', 'MLTd7NsR7OVprOOBdcEiOVVKuWxufRaxCwq3', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(323, 'Angsuran', 'PxPP4jRyhF8s23VAWYYfuTp2oIBw0MEr2IIE', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(324, 'Angsuran', 'PxPP4jRyhF8s23VAWYYfuTp2oIBw0MEr2IIE', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(325, 'Angsuran', 'k5oDjBqSiAmRJ3FEVJvtqza6qvy86IDLS1Ww', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(326, 'Angsuran', 'k5oDjBqSiAmRJ3FEVJvtqza6qvy86IDLS1Ww', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(327, 'Angsuran', 'rzBTJ6FxUOxPpXGtO6iy51DYZZLzkbH5UKaf', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(328, 'Angsuran', 'rzBTJ6FxUOxPpXGtO6iy51DYZZLzkbH5UKaf', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(329, 'Angsuran', 'C3RnCshfov77RJypUZlVDYac6iEFOTVWGsNZ', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(330, 'Angsuran', 'C3RnCshfov77RJypUZlVDYac6iEFOTVWGsNZ', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(331, 'Angsuran', 'LdylVqVBUaskq4HazIpH5fdFRhrRR28W9REa', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(332, 'Angsuran', 'LdylVqVBUaskq4HazIpH5fdFRhrRR28W9REa', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(333, 'Angsuran', 'xsOl7RYXBrkVJ33Q2kieft2jx8YdqHedL20O', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(334, 'Angsuran', 'xsOl7RYXBrkVJ33Q2kieft2jx8YdqHedL20O', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(335, 'Angsuran', 'wux6d9uvCSi1MUhXp5Jx3jI0EkKhIHiSQVku', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(336, 'Angsuran', 'wux6d9uvCSi1MUhXp5Jx3jI0EkKhIHiSQVku', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(337, 'Angsuran', 'pMS6Wu8hQgrD84RxHUTyvx4gzKtm6sk4kBmg', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(338, 'Angsuran', 'pMS6Wu8hQgrD84RxHUTyvx4gzKtm6sk4kBmg', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(339, 'Angsuran', 'VOIdoFdb9YG77HhCFW7nTYYmwu23e4LhScMy', '2024-07-26', '1.1.3', 'Piutang usaha', 'K', 13203000),
(340, 'Angsuran', 'VOIdoFdb9YG77HhCFW7nTYYmwu23e4LhScMy', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 13203000),
(341, 'Angsuran', 'nl1I0dcPG7obtJpOug4106A1VXHtpL8ErOlb', '2024-07-26', '1.1.3', 'Piutang usaha ', 'K', 2000000),
(342, 'Angsuran', 'nl1I0dcPG7obtJpOug4106A1VXHtpL8ErOlb', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 2101000),
(357, 'Angsuran', 'trCNDlP3SHN0Sp9G4mUVq1s3nxA6eZsfjlQv', '2024-07-26', '1.1.3', 'Piutang usaha ', 'K', 2000000),
(358, 'Angsuran', 'trCNDlP3SHN0Sp9G4mUVq1s3nxA6eZsfjlQv', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 2100000),
(365, 'Angsuran', 'eW1Z6EjLR6SJs3gA7F5KGlkVqFwQpJjWZwQa', '2024-07-26', '1.1.3', 'Piutang usaha ', 'K', 12000000),
(366, 'Angsuran', 'eW1Z6EjLR6SJs3gA7F5KGlkVqFwQpJjWZwQa', '2024-07-26', '1.1.1.1.1', 'Kas Brangkas', 'D', 12580000),
(370, 'Pinjaman', 'OhSx2vAHqc1NFE8xMBQTXwATuXWyZ2rBvT3J', '2024-02-02', '1.1.1.3', 'Kas Berangkas ', 'K', 13000000),
(371, 'Pinjaman', 'OhSx2vAHqc1NFE8xMBQTXwATuXWyZ2rBvT3J', '2024-02-02', '1.1.3', 'Piutang usaha', 'D', 13000000),
(372, 'Pinjaman', 'ghUyw34D1ujphLGCQE7qw8UbKMnBYKqrqkrj', '2023-10-03', '1.1.1.3', 'Kas Berangkas ', 'K', 12000000),
(373, 'Pinjaman', 'ghUyw34D1ujphLGCQE7qw8UbKMnBYKqrqkrj', '2023-10-03', '1.1.3', 'Piutang usaha', 'D', 12000000),
(374, 'Pinjaman', '1VGmCdIF4XxuNGyOwb5VHEs1xnavloL8Rt2n', '2024-03-07', '1.1.1.3', 'Kas Berangkas ', 'K', 8000000),
(375, 'Pinjaman', '1VGmCdIF4XxuNGyOwb5VHEs1xnavloL8Rt2n', '2024-03-07', '1.1.3', 'Piutang usaha', 'D', 8000000),
(376, 'Angsuran', 'Q9JtqK4CQvMxBpDGAQE49kqVt9tLDd3GFCxp', '2024-07-29', '1.1.3', 'Piutang usaha ', 'K', 800000),
(377, 'Angsuran', 'Q9JtqK4CQvMxBpDGAQE49kqVt9tLDd3GFCxp', '2024-07-29', '1.1.1.1.1', 'Kas Brangkas', 'D', 995000),
(378, 'Angsuran', 'Q9JtqK4CQvMxBpDGAQE49kqVt9tLDd3GFCxp', '2024-07-29', '3.2.1', 'Surplus Dan Defisit Tahun Lalu ', 'K', 115000),
(379, 'Angsuran', 'Q9JtqK4CQvMxBpDGAQE49kqVt9tLDd3GFCxp', '2024-07-29', '3.2.1', 'Surplus Dan Defisit Tahun Lalu ', 'K', 80000),
(380, 'Angsuran', '0NfrapHcLLx8lNhEO2A80HP0owoMT8XFla3V', '2024-07-29', '1.1.3', 'Piutang usaha ', 'K', 800000),
(381, 'Angsuran', '0NfrapHcLLx8lNhEO2A80HP0owoMT8XFla3V', '2024-07-29', '1.1.1.1.1', 'Kas Brangkas', 'D', 965000),
(382, 'Angsuran', '0NfrapHcLLx8lNhEO2A80HP0owoMT8XFla3V', '2024-07-29', '3.2.1', 'Surplus Dan Defisit Tahun Lalu ', 'K', 85000),
(383, 'Angsuran', '0NfrapHcLLx8lNhEO2A80HP0owoMT8XFla3V', '2024-07-29', '3.2.1', 'Surplus Dan Defisit Tahun Lalu ', 'K', 80000),
(384, 'Angsuran', 'MrOyPc74B1SYCIA8tBn5vnHaIXltjcUGcgqt', '2024-07-29', '1.1.3', 'Piutang usaha ', 'K', 800000),
(385, 'Angsuran', 'MrOyPc74B1SYCIA8tBn5vnHaIXltjcUGcgqt', '2024-07-29', '1.1.1.1.1', 'Kas Brangkas', 'D', 934000),
(386, 'Angsuran', 'MrOyPc74B1SYCIA8tBn5vnHaIXltjcUGcgqt', '2024-07-29', '4.2', 'Pendapatan Denda ', 'K', 54000),
(387, 'Angsuran', 'MrOyPc74B1SYCIA8tBn5vnHaIXltjcUGcgqt', '2024-07-29', '4.1', 'Pendapatan Jasa ', 'K', 80000),
(396, 'Transaksi', 'X1crhyZmG2RanlaiIwvuunn0rUmbBEQX', '2024-08-11', '5.3.15', 'Beban Listrik', 'D', 12000),
(397, 'Transaksi', 'X1crhyZmG2RanlaiIwvuunn0rUmbBEQX', '2024-08-11', '1.1.1.1.1', 'Kas Brangkas', 'K', 12000),
(399, 'Transaksi', 'PPjFbUTUEkyWeJV5IdFoWId4egCKUaJ9', '2024-08-11', '5.3.4', 'Beban Utilitas', 'D', 15000),
(400, 'Transaksi', 'PPjFbUTUEkyWeJV5IdFoWId4egCKUaJ9', '2024-08-11', '1.1.1.3', 'Kas Berangkas', 'K', 15000),
(401, 'Transaksi', 'Vm9DsHeGiU9VjVX9gGn9TcdZ8Nb3NyO0', '2024-08-11', '5.3.4', 'Beban Utilitas', 'D', 35000),
(402, 'Transaksi', 'Vm9DsHeGiU9VjVX9gGn9TcdZ8Nb3NyO0', '2024-08-11', '1.1.1.3', 'Kas Berangkas', 'K', 35000),
(403, 'Transaksi', 'U6D6GAHo5GiWv9MacJW2XkfypHkTWfjS', '2024-01-05', '5.1.1', 'Beban Gaji', 'D', 6500000),
(404, 'Transaksi', 'U6D6GAHo5GiWv9MacJW2XkfypHkTWfjS', '2024-01-05', '1.1.1.2.3', 'Kas Bank Mandiri', 'K', 6500000);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id_log` int(10) NOT NULL AUTO_INCREMENT,
  `id_akses` int(10) NOT NULL,
  `datetime_log` varchar(25) NOT NULL,
  `kategori_log` varchar(20) NOT NULL,
  `deskripsi_log` text NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `id_akses`, `datetime_log`, `kategori_log`, `deskripsi_log`) VALUES
(1, 1, '2024-06-01 19:21:10', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(2, 1, '2024-06-13 21:20:42', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(3, 1, '2024-06-13 21:21:34', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(4, 1, '2024-06-13 21:46:55', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(5, 1, '2024-06-13 21:53:50', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(6, 1, '2024-06-13 22:28:35', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(7, 1, '2024-06-13 22:35:14', 'Akses', 'Edit Akses Berhasil'),
(8, 1, '2024-06-13 22:35:14', 'Akses', 'Edit Akses Berhasil'),
(9, 1, '2024-06-13 22:35:14', 'Akses', 'Edit Akses Berhasil'),
(10, 1, '2024-06-29 18:54:30', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(11, 1, '2024-06-30 16:50:42', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(12, 1, '2024-06-30 17:44:04', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(13, 1, '2024-07-01 01:31:38', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(14, 1, '2024-07-01 22:39:03', 'Login', 'dhiforester@gmail.com Berhasil Melakukan Login'),
(15, 1, '2024-07-02 02:08:01', 'Akses', 'Input Fitur Akses'),
(16, 1, '2024-07-02 02:12:15', 'Akses', 'Input Fitur Akses'),
(17, 1, '2024-07-02 02:13:50', 'Akses', 'Input Fitur Akses'),
(18, 1, '2024-07-02 02:14:53', 'Akses', 'Input Fitur Akses'),
(19, 1, '2024-07-02 02:15:52', 'Akses', 'Input Fitur Akses'),
(20, 1, '2024-07-02 02:17:24', 'Akses', 'Input Fitur Akses'),
(21, 1, '2024-07-02 02:22:29', 'Fitur Akses', 'Edit Fitur Akses'),
(22, 1, '2024-07-02 02:22:38', 'Fitur Akses', 'Edit Fitur Akses'),
(23, 1, '2024-07-02 02:55:36', 'Fitur Akses', 'Hapus Fitur Akses'),
(24, 1, '2024-07-02 02:56:05', 'Fitur Akses', 'Edit Fitur Akses'),
(25, 1, '2024-07-02 04:58:00', 'Entitas Akses', 'Input Entitas Akses'),
(26, 1, '2024-07-02 04:58:43', 'Entitas Akses', 'Input Entitas Akses'),
(27, 1, '2024-07-11 00:58:11', 'Entitas Akses', 'Edit Entitas Akses'),
(28, 1, '2024-07-11 01:00:03', 'Entitas Akses', 'Edit Entitas Akses'),
(29, 1, '2024-07-11 01:00:25', 'Entitas Akses', 'Input Entitas Akses'),
(30, 1, '2024-07-11 01:01:17', 'Entitas Akses', 'Edit Entitas Akses'),
(31, 1, '2024-07-11 01:01:48', 'Entitas Akses', 'Edit Entitas Akses'),
(32, 1, '2024-07-11 01:02:00', 'Entitas Akses', 'Edit Entitas Akses'),
(33, 1, '2024-07-11 01:02:21', 'Entitas Akses', 'Edit Entitas Akses'),
(34, 1, '2024-07-11 01:11:59', 'Entitas Akses', 'Hapus Entitas Akses'),
(35, 1, '2024-07-11 01:12:07', 'Entitas Akses', 'Hapus Entitas Akses'),
(36, 1, '2024-07-13 22:10:59', 'Angggota', 'Tambah Anggota baru'),
(37, 1, '2024-07-13 22:35:30', 'Angggota', 'Tambah Anggota baru'),
(38, 1, '2024-07-14 00:08:12', 'Angggota', 'Edit Anggota Berhasil'),
(39, 1, '2024-07-14 00:53:35', 'Angggota', 'Ubah Foto Anggota'),
(40, 1, '2024-07-14 01:01:58', 'Angggota', 'Ubah Foto Anggota'),
(41, 1, '2024-07-14 01:45:28', 'Angggota', 'Hapus Anggota'),
(42, 1, '2024-07-14 01:46:16', 'Angggota', 'Hapus Anggota'),
(43, 1, '2024-07-14 01:47:26', 'Angggota', 'Hapus Anggota'),
(44, 1, '2024-07-14 01:53:25', 'Angggota', 'Tambah Anggota baru'),
(45, 1, '2024-07-14 01:54:47', 'Angggota', 'Tambah Anggota baru'),
(46, 1, '2024-07-14 04:14:12', 'Angggota', 'Tambah Anggota baru'),
(47, 1, '2024-07-14 04:25:14', 'Angggota', 'Edit Anggota Berhasil'),
(48, 1, '2024-07-14 04:25:32', 'Angggota', 'Edit Anggota Berhasil'),
(49, 1, '2024-07-14 04:34:09', 'Angggota', 'Ubah Foto Anggota'),
(50, 1, '2024-07-15 23:06:10', 'Jenis Simpanan', 'Tambah Jenis Simpanan'),
(51, 1, '2024-07-15 23:15:01', 'Jenis Simpanan', 'Tambah Jenis Simpanan'),
(52, 1, '2024-07-15 23:29:44', 'Jenis Simpanan', 'Tambah Jenis Simpanan'),
(53, 1, '2024-07-15 23:50:03', 'Jenis Simpanan', 'Edit Jenis Simpanan'),
(54, 1, '2024-07-15 23:50:11', 'Jenis Simpanan', 'Edit Jenis Simpanan'),
(55, 1, '2024-07-16 00:03:29', 'Jenis Simpanan', 'Hapus Jenis Simpanan'),
(56, 1, '2024-07-16 00:04:06', 'Jenis Simpanan', 'Tambah Jenis Simpanan'),
(57, 1, '2024-07-16 00:04:28', 'Jenis Simpanan', 'Edit Jenis Simpanan'),
(58, 1, '2024-07-16 00:45:45', 'Jenis Simpanan', 'Tambah Jenis Simpanan'),
(59, 1, '2024-07-16 03:01:59', 'Jenis Simpanan', 'Tambah Jenis Simpanan'),
(60, 1, '2024-07-16 03:06:58', 'Jenis Simpanan', 'Edit Jenis Simpanan'),
(61, 1, '2024-07-16 03:07:08', 'Jenis Simpanan', 'Edit Jenis Simpanan'),
(62, 1, '2024-07-16 03:34:19', 'Jenis Simpanan', 'Edit Jenis Simpanan'),
(63, 1, '2024-07-16 03:34:44', 'Jenis Simpanan', 'Edit Jenis Simpanan'),
(64, 1, '2024-07-16 04:18:02', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(65, 1, '2024-07-16 04:18:58', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(66, 1, '2024-07-16 04:19:02', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(67, 1, '2024-07-16 04:19:21', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(68, 1, '2024-07-16 05:28:15', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(69, 1, '2024-07-16 05:28:36', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(70, 1, '2024-07-18 15:05:22', 'Simpanan Wajib', 'Edit Simpanan Wajib'),
(71, 1, '2024-07-18 15:05:30', 'Simpanan Wajib', 'Edit Simpanan Wajib'),
(72, 1, '2024-07-18 17:15:09', 'Simpanan Wajib', 'Hapus Simpanan Wajib'),
(73, 1, '2024-07-19 01:22:40', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(74, 1, '2024-07-19 01:22:48', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(75, 1, '2024-07-19 01:23:50', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(76, 1, '2024-07-21 01:06:28', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(77, 1, '2024-07-21 01:10:51', 'Log Simpanan', 'Tambah Simpanan'),
(78, 1, '2024-07-21 01:11:42', 'Log Simpanan', 'Tambah Simpanan'),
(79, 1, '2024-07-21 01:30:27', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(80, 1, '2024-07-21 01:33:57', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(81, 1, '2024-07-21 01:34:41', 'Log Simpanan', 'Tambah Simpanan'),
(82, 1, '2024-07-21 01:46:40', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(83, 1, '2024-07-21 01:47:32', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(84, 1, '2024-07-21 02:38:25', 'Log Simpanan', 'Tambah Simpanan'),
(85, 1, '2024-07-21 02:39:10', 'Angggota', 'Edit Anggota Berhasil'),
(86, 1, '2024-07-21 19:08:07', 'Log Simpanan', 'Edit Simpanan'),
(87, 1, '2024-07-21 19:13:46', 'Log Simpanan', 'Edit Simpanan'),
(88, 1, '2024-07-21 19:14:14', 'Log Simpanan', 'Edit Simpanan'),
(89, 1, '2024-07-21 22:13:46', 'Angggota', 'Hapus Anggota'),
(90, 1, '2024-07-21 22:22:55', 'Log Simpanan', 'Hapus Simpanan'),
(91, 1, '2024-07-21 22:23:21', 'Log Simpanan', 'Hapus Simpanan'),
(92, 1, '2024-07-21 22:44:25', 'Log Simpanan', 'Tambah Simpanan'),
(93, 1, '2024-07-21 22:48:36', 'Log Simpanan', 'Tambah Simpanan'),
(94, 1, '2024-07-21 22:48:46', 'Log Simpanan', 'Tambah Simpanan'),
(95, 1, '2024-07-21 22:49:31', 'Log Simpanan', 'Tambah Simpanan'),
(96, 1, '2024-07-21 22:49:50', 'Log Simpanan', 'Tambah Simpanan'),
(97, 1, '2024-07-21 22:51:07', 'Log Simpanan', 'Tambah Simpanan'),
(98, 1, '2024-07-21 22:53:48', 'Log Simpanan', 'Tambah Simpanan'),
(99, 1, '2024-07-21 23:04:05', 'Log Simpanan', 'Tambah Simpanan'),
(100, 1, '2024-07-21 23:04:24', 'Log Simpanan', 'Edit Simpanan'),
(101, 1, '2024-07-21 23:05:23', 'Log Simpanan', 'Hapus Simpanan'),
(102, 1, '2024-07-21 23:06:10', 'Log Simpanan', 'Tambah Simpanan'),
(103, 1, '2024-07-21 23:06:19', 'Log Simpanan', 'Edit Simpanan'),
(104, 1, '2024-07-21 23:06:52', 'Log Simpanan', 'Hapus Simpanan'),
(105, 1, '2024-07-21 23:07:05', 'Log Simpanan', 'Tambah Simpanan'),
(106, 1, '2024-07-21 23:07:39', 'Log Simpanan', 'Edit Simpanan'),
(107, 1, '2024-07-21 23:16:24', 'Log Simpanan', 'Edit Simpanan'),
(108, 1, '2024-07-21 23:47:32', 'Log Simpanan', 'Tambah Simpanan'),
(109, 1, '2024-07-22 00:24:57', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(110, 1, '2024-07-22 00:26:45', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(111, 1, '2024-07-22 00:27:15', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(112, 1, '2024-07-22 00:28:39', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(113, 1, '2024-07-22 00:32:50', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(114, 1, '2024-07-22 00:33:10', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(115, 1, '2024-07-22 00:33:25', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(116, 1, '2024-07-22 00:33:52', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(117, 1, '2024-07-22 00:46:26', 'Simpanan Wajib', 'Hapus Simpanan Wajib'),
(118, 1, '2024-07-22 00:51:38', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(119, 1, '2024-07-22 00:53:56', 'Simpanan Wajib', 'Tambah Simpanan Wajib'),
(120, 1, '2024-07-22 01:00:54', 'Simpanan Wajib', 'Edit Simpanan Wajib'),
(121, 1, '2024-07-22 01:01:15', 'Simpanan Wajib', 'Edit Simpanan Wajib'),
(122, 1, '2024-07-22 01:24:41', 'Log Simpanan', 'Tambah Simpanan'),
(123, 1, '2024-07-22 01:33:23', 'Log Simpanan', 'Edit Simpanan'),
(124, 1, '2024-07-23 03:37:02', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(125, 1, '2024-07-23 03:40:24', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(126, 1, '2024-07-23 03:59:25', 'Angggota', 'Tambah Anggota baru'),
(127, 1, '2024-07-23 05:02:56', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(128, 1, '2024-07-23 05:35:38', 'Pinjaman', 'Hapus Data Pinjaman'),
(129, 1, '2024-07-23 05:35:45', 'Pinjaman', 'Hapus Data Pinjaman'),
(130, 1, '2024-07-23 21:54:55', 'Pinjaman', 'Edit Pinjaman Berhasil    '),
(131, 1, '2024-07-23 21:55:22', 'Pinjaman', 'Edit Pinjaman Berhasil    '),
(132, 1, '2024-07-24 00:56:27', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(133, 1, '2024-07-24 01:00:22', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(134, 1, '2024-07-24 01:05:10', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(135, 1, '2024-07-24 02:30:08', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(136, 1, '2024-07-24 04:12:20', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(137, 1, '2024-07-24 04:29:25', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(138, 1, '2024-07-24 04:30:45', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(139, 1, '2024-07-24 04:30:50', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(140, 1, '2024-07-24 04:30:55', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(141, 1, '2024-07-24 04:31:30', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(142, 1, '2024-07-24 04:32:36', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(143, 1, '2024-07-25 02:12:58', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(144, 1, '2024-07-25 03:53:29', 'Angsuran', 'Hapus Angsuran Berhasil'),
(145, 1, '2024-07-25 03:53:33', 'Angsuran', 'Hapus Angsuran Berhasil'),
(146, 1, '2024-07-25 03:53:42', 'Angsuran', 'Hapus Angsuran Berhasil'),
(147, 1, '2024-07-26 00:28:41', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(148, 1, '2024-07-26 00:28:44', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(149, 1, '2024-07-26 00:28:58', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(150, 1, '2024-07-26 00:29:01', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(151, 1, '2024-07-26 00:29:05', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(152, 1, '2024-07-26 00:30:17', 'Angsuran', 'Hapus Angsuran Berhasil'),
(153, 1, '2024-07-26 00:30:20', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(154, 1, '2024-07-26 00:30:34', 'Angsuran', 'Hapus Angsuran Berhasil'),
(155, 1, '2024-07-26 00:30:38', 'Angsuran', 'Hapus Angsuran Berhasil'),
(156, 1, '2024-07-26 00:31:03', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(157, 1, '2024-07-26 00:31:08', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(158, 1, '2024-07-26 00:32:00', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(159, 1, '2024-07-26 00:32:03', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(160, 1, '2024-07-26 00:32:05', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(161, 1, '2024-07-26 00:32:08', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(162, 1, '2024-07-26 00:32:10', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(163, 1, '2024-07-26 00:32:13', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(164, 1, '2024-07-26 00:32:16', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(165, 1, '2024-07-26 00:32:20', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(166, 1, '2024-07-26 00:32:22', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(167, 1, '2024-07-26 00:32:25', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(168, 1, '2024-07-26 02:20:00', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(169, 1, '2024-07-26 02:22:26', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(170, 1, '2024-07-26 02:23:24', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(171, 1, '2024-07-26 02:23:59', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(172, 1, '2024-07-26 02:26:25', 'Angsuran', 'Hapus Angsuran Berhasil'),
(173, 1, '2024-07-26 02:26:29', 'Angsuran', 'Hapus Angsuran Berhasil'),
(174, 1, '2024-07-26 02:26:32', 'Angsuran', 'Hapus Angsuran Berhasil'),
(175, 1, '2024-07-26 02:26:42', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(176, 1, '2024-07-26 02:28:50', 'Angsuran', 'Hapus Angsuran Berhasil'),
(177, 1, '2024-07-26 02:29:37', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(178, 1, '2024-07-26 03:04:20', 'Angsuran', 'Hapus Angsuran Berhasil'),
(179, 1, '2024-07-26 03:05:17', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(180, 1, '2024-07-26 03:15:47', 'Pinjaman', 'Tambah Jurnal Pinjaman Berhasil'),
(181, 1, '2024-07-26 03:16:24', 'Pinjaman', 'Tambah Jurnal Pinjaman Berhasil'),
(182, 1, '2024-07-26 03:40:36', 'Pinjaman', 'Edit Jurnal Pinjaman Berhasil'),
(183, 1, '2024-07-26 03:40:45', 'Pinjaman', 'Edit Jurnal Pinjaman Berhasil'),
(184, 1, '2024-07-26 03:45:43', 'Pinjaman', 'Edit Jurnal Pinjaman Berhasil'),
(185, 1, '2024-07-26 03:45:57', 'Pinjaman', 'Edit Jurnal Pinjaman Berhasil'),
(186, 1, '2024-07-26 03:46:05', 'Pinjaman', 'Edit Jurnal Pinjaman Berhasil'),
(187, 1, '2024-07-26 04:16:20', 'Jurnal', 'Hapus Jurnal Berhhasil'),
(188, 1, '2024-07-26 04:16:38', 'Jurnal', 'Hapus Jurnal Berhhasil'),
(189, 1, '2024-07-26 05:25:18', 'Angsuran', 'Hapus Angsuran Berhasil'),
(190, 1, '2024-07-26 05:25:22', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(191, 1, '2024-07-26 23:06:24', 'Angsuran', 'Tambah Jurnal Angsuran Berhasil'),
(192, 1, '2024-07-26 23:53:16', 'Angsuran', 'Edit Jurnal Angsuran Berhasil'),
(193, 1, '2024-07-26 23:53:26', 'Angsuran', 'Edit Jurnal Angsuran Berhasil'),
(194, 1, '2024-07-26 23:53:33', 'Angsuran', 'Edit Jurnal Angsuran Berhasil'),
(195, 1, '2024-07-27 00:00:18', 'Angsuran', 'Edit Jurnal Angsuran Berhasil'),
(196, 1, '2024-07-27 00:00:22', 'Jurnal', 'Hapus Jurnal Berhhasil'),
(197, 1, '2024-07-27 00:03:25', 'Angsuran', 'Hapus Angsuran Berhasil'),
(198, 1, '2024-07-27 01:32:00', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(199, 1, '2024-07-27 01:46:19', 'Akses', 'Input Fitur Akses'),
(200, 1, '2024-07-27 04:09:02', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(201, 1, '2024-07-27 04:09:33', 'Pinjaman', 'Tambah Pinjaman Berhasil    '),
(202, 1, '2024-07-28 23:14:39', 'Akun Perkiraan', 'Tambah Akun Perkiraan'),
(203, 1, '2024-07-29 00:06:15', 'Akun Perkiraan', 'Tambah Akun Perkiraan'),
(204, 1, '2024-07-29 00:07:05', 'Akun Perkiraan', 'Tambah Akun Perkiraan'),
(205, 1, '2024-07-29 01:17:12', 'Akun Perkiraan', 'Edit Akun Perkiraan'),
(206, 1, '2024-07-29 01:17:20', 'Akun Perkiraan', 'Edit Akun Perkiraan'),
(207, 1, '2024-07-29 01:17:30', 'Akun Perkiraan', 'Edit Akun Perkiraan'),
(208, 1, '2024-07-29 01:17:49', 'Akun Perkiraan', 'Edit Akun Perkiraan'),
(209, 1, '2024-07-29 01:18:06', 'Akun Perkiraan', 'Edit Akun Perkiraan'),
(210, 1, '2024-07-29 01:18:17', 'Akun Perkiraan', 'Edit Akun Perkiraan'),
(211, 1, '2024-07-29 01:58:03', 'Akun Perkiraan', 'Hapus Akun Perkiraan'),
(212, 1, '2024-07-29 01:58:19', 'Akun Perkiraan', 'Hapus Akun Perkiraan'),
(213, 1, '2024-07-29 01:58:26', 'Akun Perkiraan', 'Hapus Akun Perkiraan'),
(214, 1, '2024-07-29 03:43:18', 'Akun Perkiraan', 'Edit Akun Perkiraan'),
(215, 1, '2024-07-29 03:43:27', 'Akun Perkiraan', 'Edit Akun Perkiraan'),
(216, 1, '2024-07-29 03:43:50', 'Akun Perkiraan', 'Edit Akun Perkiraan'),
(217, 1, '2024-07-29 03:53:41', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(218, 1, '2024-07-29 03:55:21', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(219, 1, '2024-07-29 03:58:47', 'Angsuran', 'Tambah Angsuran Berhasil    '),
(220, 1, '2024-08-10 19:25:54', 'Jenis Transaksi', 'Tambah Jenis Transaksi'),
(221, 1, '2024-08-10 19:34:47', 'Jenis Transaksi', 'Tambah Jenis Transaksi'),
(222, 1, '2024-08-10 19:35:31', 'Jenis Transaksi', 'Tambah Jenis Transaksi'),
(223, 1, '2024-08-10 20:21:35', 'Jenis Transaksi', 'Edit Jenis Transaksi'),
(224, 1, '2024-08-10 20:22:00', 'Jenis Transaksi', 'Edit Jenis Transaksi'),
(225, 1, '2024-08-10 20:29:31', 'Jenis Transaksi', 'Tambah Jenis Transaksi'),
(226, 1, '2024-08-10 20:29:36', 'Jenis Transaksi', 'Hapus Jenis Transaksi'),
(227, 1, '2024-08-11 02:28:52', 'Transaksi', 'Hapus Transaksi'),
(228, 1, '2024-08-11 04:47:51', 'Transaksi', 'Tambah Jurnal Transaksi'),
(229, 1, '2024-08-11 05:16:18', 'Transaksi', 'Update Jurnal Transaksi'),
(230, 1, '2024-08-11 05:16:25', 'Transaksi', 'Update Jurnal Transaksi'),
(231, 1, '2024-08-11 05:16:51', 'Transaksi', 'Update Jurnal Transaksi'),
(232, 1, '2024-08-11 05:33:58', 'Transaksi', 'Hapus Jurnal'),
(233, 1, '2024-08-12 01:52:59', 'Akses', 'Input Fitur Akses'),
(234, 1, '2024-08-12 01:53:08', 'Entitas Akses', 'Edit Entitas Akses'),
(235, 1, '2024-08-12 01:58:44', 'Akses', 'Input Fitur Akses'),
(236, 1, '2024-08-12 01:59:34', 'Akses', 'Input Fitur Akses'),
(237, 1, '2024-08-12 01:59:45', 'Entitas Akses', 'Edit Entitas Akses'),
(238, 1, '2024-08-12 02:10:26', 'Bantuan', 'Edit Konten Bantuan'),
(239, 1, '2024-08-12 02:12:30', 'Bantuan', 'Edit Konten Bantuan'),
(240, 1, '2024-08-12 02:24:22', 'Bantuan', 'Tambah Konten Bantuan'),
(241, 1, '2024-08-12 02:24:46', 'Bantuan', 'Edit Konten Bantuan'),
(242, 1, '2024-08-12 03:06:54', 'Akses', 'Input Fitur Akses'),
(243, 1, '2024-08-12 03:07:10', 'Entitas Akses', 'Edit Entitas Akses'),
(244, 1, '2024-08-12 03:18:10', 'Akses', 'Input Fitur Akses'),
(245, 1, '2024-08-12 03:18:22', 'Entitas Akses', 'Edit Entitas Akses');

-- --------------------------------------------------------

--
-- Table structure for table `log_email`
--

DROP TABLE IF EXISTS `log_email`;
CREATE TABLE IF NOT EXISTS `log_email` (
  `id_log_email` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text,
  `email` text NOT NULL,
  `subjek` text NOT NULL,
  `pesan` text NOT NULL,
  `datetime` text NOT NULL,
  PRIMARY KEY (`id_log_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

DROP TABLE IF EXISTS `lupa_password`;
CREATE TABLE IF NOT EXISTS `lupa_password` (
  `id_lupa_password` int(10) NOT NULL AUTO_INCREMENT,
  `id_akses_anggota` int(20) NOT NULL,
  `tanggal_dibuat` varchar(25) NOT NULL,
  `tanggal_expired` varchar(25) NOT NULL,
  `code_unik` text NOT NULL,
  PRIMARY KEY (`id_lupa_password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

DROP TABLE IF EXISTS `notifikasi`;
CREATE TABLE IF NOT EXISTS `notifikasi` (
  `id_notifikasi` int(20) NOT NULL AUTO_INCREMENT,
  `id_akses` int(20) NOT NULL,
  `datetime_notifikasi` varchar(30) NOT NULL,
  `kategori_notifikasi` text NOT NULL,
  `notifikasi` text NOT NULL,
  `status_notifikasi` varchar(25) NOT NULL,
  PRIMARY KEY (`id_notifikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

DROP TABLE IF EXISTS `pinjaman`;
CREATE TABLE IF NOT EXISTS `pinjaman` (
  `id_pinjaman` int(12) NOT NULL AUTO_INCREMENT,
  `uuid_pinjaman` char(36) NOT NULL,
  `id_anggota` int(12) NOT NULL,
  `nama` text NOT NULL,
  `nip` varchar(32) NOT NULL,
  `lembaga` text NOT NULL,
  `ranking` int(12) NOT NULL,
  `tanggal` date NOT NULL COMMENT 'tanggal perriode mulainya pinjaman',
  `jatuh_tempo` smallint(6) NOT NULL COMMENT 'tanggal jatuh tempo 1-31',
  `denda` int(12) NOT NULL COMMENT 'Rp denda keterlambatan',
  `sistem_denda` varchar(10) DEFAULT NULL COMMENT 'Harian, Bulanan',
  `jumlah_pinjaman` int(12) NOT NULL,
  `persen_jasa` decimal(12,2) NOT NULL COMMENT 'persen/bulan',
  `rp_jasa` int(12) NOT NULL COMMENT 'nominal jasa=pinjaman x bunga',
  `angsuran_pokok` int(12) NOT NULL COMMENT 'angsuran tanpa bunga',
  `angsuran_total` int(12) NOT NULL COMMENT 'angsuran plus bunga',
  `periode_angsuran` int(12) NOT NULL COMMENT 'frekuensi angsuran',
  `status` varchar(10) NOT NULL COMMENT 'Berjalan, Lunas, Macet',
  PRIMARY KEY (`id_pinjaman`),
  KEY `id_anggota` (`id_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjaman`, `uuid_pinjaman`, `id_anggota`, `nama`, `nip`, `lembaga`, `ranking`, `tanggal`, `jatuh_tempo`, `denda`, `sistem_denda`, `jumlah_pinjaman`, `persen_jasa`, `rp_jasa`, `angsuran_pokok`, `angsuran_total`, `periode_angsuran`, `status`) VALUES
(3, 'tdNOmps3REakH8ruoqe5Xu9JjNJXBRJr5jYt', 3, 'Citra Dewi', '2024/07/Contoh-111', 'Lembaga D', 1, '2024-07-23', 5, 10000, 'Harian', 12000000, '2.00', 240000, 1200000, 1440000, 10, 'Berjalan'),
(4, 'V2KxE9HiuoEfA4oLedCGJYj55zG9B405lEeQ', 1, 'Adam Saputra', '2024/07/Contoh-01', 'Lembaga A', 1, '2024-02-01', 5, 2500, 'Harian', 13000000, '1.00', 130000, 1300000, 1430000, 10, 'Berjalan'),
(5, 'gN0oKbiTLpMYqlE0da5eLXvmzhsx7mLFiiK0', 5, 'Eka Prasetyo', '2024/07/Contoh-05', 'Lembaga A', 1, '2024-06-01', 5, 1000, 'Bulanan', 10000000, '1.00', 100000, 2000000, 2100000, 5, 'Berjalan'),
(6, '1Ot3u1haDX7PDpRfaq2e9eIY64SMaSgo6o7D', 7, 'Guntur Wibowo', '2024/07/Contoh-07', 'Lembaga A', 2, '2024-01-01', 5, 3000, 'Bulanan', 120000000, '1.00', 1200000, 12000000, 13200000, 10, 'Lunas'),
(7, 'BrFhaVsfG24FcTBW9teNMc3PzktYllnTuxVL', 10, 'Joko Susanto', '2024/07/Contoh-10', 'Lembaga A', 2, '2024-01-07', 10, 100000, 'Bulanan', 120000000, '0.40', 480000, 12000000, 12480000, 10, 'Lunas'),
(8, 'OhSx2vAHqc1NFE8xMBQTXwATuXWyZ2rBvT3J', 10, 'Joko Susanto', '2024/07/Contoh-10', 'Lembaga A', 2, '2024-02-02', 2, 15000, 'Bulanan', 13000000, '0.50', 65000, 1300000, 1365000, 10, 'Berjalan'),
(9, 'ghUyw34D1ujphLGCQE7qw8UbKMnBYKqrqkrj', 19, 'Tio Nugroho', '2024/07/Contoh-19', 'Lembaga B', 2, '2023-10-03', 5, 10000, 'Bulanan', 12000000, '0.60', 72000, 1000000, 1072000, 12, 'Berjalan'),
(10, '1VGmCdIF4XxuNGyOwb5VHEs1xnavloL8Rt2n', 18, 'Sinta Maharani', '2024/07/Contoh-18', 'Lembaga B', 2, '2024-03-07', 5, 1000, 'Harian', 8000000, '1.00', 80000, 800000, 880000, 10, 'Berjalan');

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman_angsuran`
--

DROP TABLE IF EXISTS `pinjaman_angsuran`;
CREATE TABLE IF NOT EXISTS `pinjaman_angsuran` (
  `id_pinjaman_angsuran` int(12) NOT NULL AUTO_INCREMENT,
  `uuid_angsuran` char(36) NOT NULL,
  `id_pinjaman` int(12) NOT NULL,
  `id_anggota` int(12) NOT NULL,
  `tanggal_angsuran` date NOT NULL,
  `tanggal_bayar` date NOT NULL COMMENT 'tanggal angsuran',
  `keterlambatan` int(12) NOT NULL COMMENT 'hari',
  `pokok` int(12) NOT NULL,
  `jasa` int(12) NOT NULL,
  `denda` int(12) NOT NULL,
  `jumlah` int(12) NOT NULL,
  PRIMARY KEY (`id_pinjaman_angsuran`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman_angsuran`
--

INSERT INTO `pinjaman_angsuran` (`id_pinjaman_angsuran`, `uuid_angsuran`, `id_pinjaman`, `id_anggota`, `tanggal_angsuran`, `tanggal_bayar`, `keterlambatan`, `pokok`, `jasa`, `denda`, `jumlah`) VALUES
(1, 'CXTZU5uJ0FfGzuQdqoTD1dXHDX2Z3LjJryMI', 7, 10, '2024-02-10', '2024-07-24', 6, 12000000, 480000, 600000, 12480000),
(2, 'TNh75T7OEOvyPBjmUsirJvgK8WnZDZPJYQcQ', 7, 10, '2024-03-10', '2024-06-01', 3, 12000000, 480000, 300000, 12780000),
(3, 'HLKy7SATnZjtSUfkqDEDlITkAhhUdtJ9XRS2', 7, 10, '2024-04-10', '2024-07-24', 4, 12000000, 480000, 400000, 12580000),
(4, 'aUCjY6OWrG8womPQJkgoCdk8XXDUy40wFmiQ', 7, 10, '2024-05-10', '2024-07-24', 3, 12000000, 480000, 300000, 12580000),
(5, 'lGOf2JCiwwXU4hB9qyhckPTPrsrW423IzTyS', 7, 10, '2024-06-10', '2024-07-24', 2, 12000000, 480000, 200000, 12580000),
(10, '1EcChg4M8QtRK7kQtuPEzqGxuTUEtpZBGdHa', 7, 10, '2024-08-10', '2024-07-26', 0, 12000000, 480000, 0, 12580000),
(11, '3d1zMpdZChgU6eHlTEK8gleT3zbeg0OmBH8t', 7, 10, '2024-09-10', '2024-07-26', 0, 12000000, 480000, 0, 12580000),
(15, 'QZXYxZIujUHxbRn8Dgldb17LS0qEbwXtE9Er', 7, 10, '2024-10-10', '2024-07-26', 0, 12000000, 480000, 0, 12580000),
(17, 'MLTd7NsR7OVprOOBdcEiOVVKuWxufRaxCwq3', 6, 7, '2024-02-05', '2024-07-26', 6, 12000000, 1200000, 18000, 13203000),
(18, 'PxPP4jRyhF8s23VAWYYfuTp2oIBw0MEr2IIE', 6, 7, '2024-03-05', '2024-07-26', 5, 12000000, 1200000, 15000, 13203000),
(19, 'k5oDjBqSiAmRJ3FEVJvtqza6qvy86IDLS1Ww', 6, 7, '2024-04-05', '2024-07-26', 4, 12000000, 1200000, 12000, 13203000),
(20, 'rzBTJ6FxUOxPpXGtO6iy51DYZZLzkbH5UKaf', 6, 7, '2024-05-05', '2024-07-26', 3, 12000000, 1200000, 9000, 13203000),
(21, 'C3RnCshfov77RJypUZlVDYac6iEFOTVWGsNZ', 6, 7, '2024-06-05', '2024-07-26', 2, 12000000, 1200000, 6000, 13203000),
(22, 'LdylVqVBUaskq4HazIpH5fdFRhrRR28W9REa', 6, 7, '2024-07-05', '2024-07-26', 1, 12000000, 1200000, 3000, 13203000),
(23, 'xsOl7RYXBrkVJ33Q2kieft2jx8YdqHedL20O', 6, 7, '2024-08-05', '2024-07-26', 0, 12000000, 1200000, 0, 13203000),
(24, 'wux6d9uvCSi1MUhXp5Jx3jI0EkKhIHiSQVku', 6, 7, '2024-09-05', '2024-07-26', 0, 12000000, 1200000, 0, 13203000),
(25, 'pMS6Wu8hQgrD84RxHUTyvx4gzKtm6sk4kBmg', 6, 7, '2024-10-05', '2024-07-26', 0, 12000000, 1200000, 0, 13203000),
(26, 'VOIdoFdb9YG77HhCFW7nTYYmwu23e4LhScMy', 6, 7, '2024-11-05', '2024-07-26', 0, 12000000, 1200000, 0, 13203000),
(27, 'nl1I0dcPG7obtJpOug4106A1VXHtpL8ErOlb', 5, 5, '2024-07-05', '2024-07-26', 1, 2000000, 100000, 1000, 2101000),
(32, 'trCNDlP3SHN0Sp9G4mUVq1s3nxA6eZsfjlQv', 5, 5, '2024-08-05', '2024-07-26', 0, 2000000, 100000, 0, 2100000),
(34, 'eW1Z6EjLR6SJs3gA7F5KGlkVqFwQpJjWZwQa', 7, 10, '2024-07-10', '2024-07-26', 1, 12000000, 480000, 100000, 12580000),
(35, 'Q9JtqK4CQvMxBpDGAQE49kqVt9tLDd3GFCxp', 10, 18, '2024-04-05', '2024-07-29', 115, 800000, 80000, 115000, 995000),
(36, '0NfrapHcLLx8lNhEO2A80HP0owoMT8XFla3V', 10, 18, '2024-05-05', '2024-07-29', 85, 800000, 80000, 85000, 965000),
(37, 'MrOyPc74B1SYCIA8tBn5vnHaIXltjcUGcgqt', 10, 18, '2024-06-05', '2024-07-29', 54, 800000, 80000, 54000, 934000);

-- --------------------------------------------------------

--
-- Table structure for table `setting_autojurnal`
--

DROP TABLE IF EXISTS `setting_autojurnal`;
CREATE TABLE IF NOT EXISTS `setting_autojurnal` (
  `id_setting_autojurnal` int(10) NOT NULL AUTO_INCREMENT,
  `id_akses` int(10) NOT NULL,
  `trans_account1` int(10) DEFAULT NULL,
  `cash_account1` int(10) DEFAULT NULL,
  `debt_account1` int(10) DEFAULT NULL,
  `receivables_account1` int(10) DEFAULT NULL,
  `trans_account2` int(10) DEFAULT NULL,
  `cash_account2` int(10) DEFAULT NULL,
  `debt_account2` int(10) DEFAULT NULL,
  `receivables_account2` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_setting_autojurnal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_autojurnal`
--

INSERT INTO `setting_autojurnal` (`id_setting_autojurnal`, `id_akses`, `trans_account1`, `cash_account1`, `debt_account1`, `receivables_account1`, `trans_account2`, `cash_account2`, `debt_account2`, `receivables_account2`) VALUES
(3, 6, 125, 121, 28, 136, 125, 135, 77, 136),
(5, 1, 125, 155, 28, 136, 41, 135, 28, 136);

-- --------------------------------------------------------

--
-- Table structure for table `setting_email_gateway`
--

DROP TABLE IF EXISTS `setting_email_gateway`;
CREATE TABLE IF NOT EXISTS `setting_email_gateway` (
  `id_setting_email_gateway` int(10) NOT NULL AUTO_INCREMENT,
  `email_gateway` text,
  `password_gateway` varchar(20) DEFAULT NULL,
  `url_provider` text,
  `port_gateway` varchar(10) DEFAULT NULL,
  `nama_pengirim` varchar(25) DEFAULT NULL,
  `url_service` text NOT NULL,
  `validasi_email` varchar(10) NOT NULL,
  `redirect_validasi` text NOT NULL,
  `pesan_validasi_email` text NOT NULL,
  PRIMARY KEY (`id_setting_email_gateway`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_email_gateway`
--

INSERT INTO `setting_email_gateway` (`id_setting_email_gateway`, `email_gateway`, `password_gateway`, `url_provider`, `port_gateway`, `nama_pengirim`, `url_service`, `validasi_email`, `redirect_validasi`, `pesan_validasi_email`) VALUES
(1, 'dhiforester@rsuelsyifa.com', 'solihulhadi1412', 'mail.rsuelsyifa.com', '465', 'Insan Muamalah', 'https://mailer.rsuelsyifa.com/index.php', 'No', '', 'Berikut ini kami kirimkan URL untuk melakukan validasi pendaftaran anda');

-- --------------------------------------------------------

--
-- Table structure for table `setting_general`
--

DROP TABLE IF EXISTS `setting_general`;
CREATE TABLE IF NOT EXISTS `setting_general` (
  `id_setting_general` int(10) NOT NULL AUTO_INCREMENT,
  `title_page` varchar(20) NOT NULL,
  `kata_kunci` text NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat_bisnis` text NOT NULL,
  `email_bisnis` text NOT NULL,
  `telepon_bisnis` varchar(15) NOT NULL,
  `favicon` text NOT NULL,
  `logo` text NOT NULL,
  `base_url` text NOT NULL,
  PRIMARY KEY (`id_setting_general`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_general`
--

INSERT INTO `setting_general` (`id_setting_general`, `title_page`, `kata_kunci`, `deskripsi`, `alamat_bisnis`, `email_bisnis`, `telepon_bisnis`, `favicon`, `logo`, `base_url`) VALUES
(1, 'Insan Muamalah', 'Koperasi', 'Aplikasi POS Koperasi', 'Jalan RE Martadinata No 108 Ancaran Kuningan', 'dhiforester@gmail.com', '0232876240', 'dcca66866a9303c4b9c5d7f088e66d.jpg', '1b682d94a616003a0acd393e31b98f.jpg', 'http://localhost:81/koperasi_v2');

-- --------------------------------------------------------

--
-- Table structure for table `shu_rincian`
--

DROP TABLE IF EXISTS `shu_rincian`;
CREATE TABLE IF NOT EXISTS `shu_rincian` (
  `id_shu_rincian` int(15) NOT NULL AUTO_INCREMENT,
  `id_shu_session` int(15) NOT NULL,
  `id_anggota` int(15) NOT NULL,
  `nama_anggota` text NOT NULL,
  `simpanan` int(15) DEFAULT NULL,
  `pinjaman` int(15) DEFAULT NULL,
  `penjualan` int(15) DEFAULT NULL,
  `jasa_simpanan` int(15) DEFAULT NULL,
  `jasa_pinjaman` int(15) DEFAULT NULL,
  `jasa_penjualan` int(15) DEFAULT NULL,
  `shu` int(15) DEFAULT NULL,
  PRIMARY KEY (`id_shu_rincian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shu_session`
--

DROP TABLE IF EXISTS `shu_session`;
CREATE TABLE IF NOT EXISTS `shu_session` (
  `id_shu_session` int(15) NOT NULL AUTO_INCREMENT,
  `sesi_shu` varchar(30) NOT NULL,
  `periode_hitung1` varchar(30) NOT NULL,
  `periode_hitung2` varchar(30) NOT NULL,
  `modal_anggota` int(20) DEFAULT NULL,
  `penjualan` int(20) DEFAULT NULL,
  `pinjaman` int(20) DEFAULT NULL,
  `jasa_modal_anggota` int(20) DEFAULT NULL,
  `laba_penjualan` int(20) DEFAULT NULL,
  `jasa_pinjaman` int(20) DEFAULT NULL,
  `persen_usaha` int(20) DEFAULT NULL,
  `persen_modal` int(20) DEFAULT NULL,
  `persen_pinjaman` int(15) DEFAULT NULL,
  `alokasi_hitung` int(20) DEFAULT NULL,
  `alokasi_nyata` int(30) DEFAULT NULL,
  `status` varchar(20) NOT NULL COMMENT 'Pending, Realisasi',
  PRIMARY KEY (`id_shu_session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

DROP TABLE IF EXISTS `simpanan`;
CREATE TABLE IF NOT EXISTS `simpanan` (
  `id_simpanan` int(12) NOT NULL AUTO_INCREMENT,
  `uuid_simpanan` char(36) NOT NULL,
  `id_anggota` int(12) NOT NULL,
  `id_akses` int(12) NOT NULL,
  `id_simpanan_jenis` int(12) DEFAULT NULL,
  `rutin` int(2) DEFAULT NULL COMMENT 'true/false',
  `nip` varchar(32) NOT NULL COMMENT 'nip anggota',
  `nama` text NOT NULL COMMENT 'nama anggota',
  `lembaga` text NOT NULL COMMENT 'lembaga anggota',
  `ranking` int(12) NOT NULL COMMENT 'ranking anggota',
  `tanggal` date NOT NULL COMMENT 'tanggal simpanan',
  `kategori` varchar(30) NOT NULL COMMENT 'Simpanan Pokok\r\nSimpanan Wajib\r\nSimpanan Sukarela\r\nPenarikan',
  `keterangan` text,
  `jumlah` int(12) NOT NULL,
  PRIMARY KEY (`id_simpanan`),
  KEY `id_anggota` (`id_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`id_simpanan`, `uuid_simpanan`, `id_anggota`, `id_akses`, `id_simpanan_jenis`, `rutin`, `nip`, `nama`, `lembaga`, `ranking`, `tanggal`, `kategori`, `keterangan`, `jumlah`) VALUES
(3, 'scOFcDNHoYM0ZKW7njU63TIcIYRezvMyvSBk', 1, 1, 3, 0, '2024/07/Contoh-01', 'Adam Saputra', 'Lembaga A', 1, '2024-07-01', 'Simpanan Suka rela', '', 250000),
(4, 'hCqh8Z2lrW5YW3Wn6q4Z3BJf72gwyg9KFcnf', 11, 1, 3, 0, '2024/07/Contoh-11', 'Karina Putri', 'Lembaga B', 1, '2024-07-01', 'Simpanan Suka rela', '', 150000),
(5, '4swlziAOE2cNnXAPYHxyEIkUaTkWoK9iu9Uk', 1, 1, 1, 1, '2024/07/Contoh-01', 'Adam Saputra', 'Lembaga A', 1, '2024-01-01', 'Simpanan Wajib', '', 200000),
(6, 'ZIxwLBImDjPsEvc4aFPGQ4ioiHeBvVl1W73V', 2, 1, 1, 1, '2024/07/Contoh-02', 'Budi Santoso', 'Lembaga A', 1, '2024-01-01', 'Simpanan Wajib', '', 200000),
(7, 'URN54IRL2qQS8j51WwlWm2yDpPCcz2St6xcF', 3, 1, 1, 1, '2024/07/Contoh-111', 'Citra Dewi', 'Lembaga D', 1, '2024-01-01', 'Simpanan Wajib', '', 200000),
(8, 'Q5aRPZGUvxiVYFsQsGKhJC7M9CtNXSiFzRJI', 5, 1, 1, 1, '2024/07/Contoh-05', 'Eka Prasetyo', 'Lembaga A', 1, '2024-01-01', 'Simpanan Wajib', '', 200000),
(9, 'zRn2SgKQNF1bSAkyGq6AavjeMxrmwRATQs7J', 6, 1, 1, 1, '2024/07/Contoh-06', 'Farah Amalia', 'Lembaga A', 2, '2024-01-01', 'Simpanan Wajib', '', 200000),
(10, 'YARyANVJ5GzNKps62N8AEWOHlXMWeqAVN6Vs', 7, 1, 1, 1, '2024/07/Contoh-07', 'Guntur Wibowo', 'Lembaga A', 2, '2024-01-01', 'Simpanan Wajib', '', 200000),
(11, 'hepRd0QLHqvEoNFRk3lanq2XZkwAvVZvqdDy', 9, 1, 1, 1, '2024/07/Contoh-09', 'Indah Permatasari', 'Lembaga A', 2, '2024-01-01', 'Simpanan Wajib', '', 200000),
(12, '9kLBbyZWIVgmASPRlUeNpPAkvw0NXNFCOBV1', 10, 1, 1, 1, '2024/07/Contoh-10', 'Joko Susanto', 'Lembaga A', 2, '2024-01-01', 'Simpanan Wajib', '', 200000),
(13, '4uxspSpBsFRda5sa0nVhu8F2WidR24daqgFF', 11, 1, 1, 1, '2024/07/Contoh-11', 'Karina Putri', 'Lembaga B', 1, '2024-01-01', 'Simpanan Wajib', '', 200000),
(14, 'Av0I0p3emkS5G6X1EpfGx8xkshYkWHwRrMUV', 12, 1, 1, 1, '2024/07/Contoh-12', 'Leo Pradipta', 'Lembaga B', 1, '2024-01-01', 'Simpanan Wajib', '', 200000),
(15, 'Fsbh376rXT3pnJg1KIEbS13JBhhQTe3CijIu', 13, 1, 1, 1, '2024/07/Contoh-13', 'Maya Sari', 'Lembaga B', 1, '2024-01-01', 'Simpanan Wajib', '', 200000),
(16, 'Mz2ptwqcmf4ECqdztWGHt3N3WFijgq6NTc0E', 14, 1, 1, 1, '2024/07/Contoh-14', 'Nanda Kusuma', 'Lembaga B', 1, '2024-01-01', 'Simpanan Wajib', '', 200000),
(17, 'l6WMPehE87AXVxGYlgNbRtgRlzo7QJYNrkUj', 15, 1, 1, 1, '2024/07/Contoh-15', 'Oki Pratama', 'Lembaga B', 1, '2024-01-01', 'Simpanan Wajib', '', 200000),
(18, '4Ra0PToiOhiclcW3U0ANJcrGVwqKyZRK1TgC', 16, 1, 1, 1, '2024/07/Contoh-16', 'Putri Ayu', 'Lembaga B', 2, '2024-01-01', 'Simpanan Wajib', '', 200000),
(19, 'GFhg1wUbPl2LSsPWHTsRLNvKgMvcZXRF9hJ6', 18, 1, 1, 1, '2024/07/Contoh-18', 'Sinta Maharani', 'Lembaga B', 2, '2024-01-01', 'Simpanan Wajib', '', 200000),
(20, 'TpOE5u3HQumwJ3lmlt5Sp20VXxcjrfd7FvM1', 19, 1, 1, 1, '2024/07/Contoh-19', 'Tio Nugroho', 'Lembaga B', 2, '2024-01-01', 'Simpanan Wajib', '', 200000),
(21, 'o1yCVHA1JNqJcGTweck7kEjwdZpNphcTGLR8', 1, 1, 1, 1, '2024/07/Contoh-01', 'Adam Saputra', 'Lembaga A', 1, '2024-02-01', 'Simpanan Wajib', '', 200000),
(22, 'wfUTQ643ZC5Fl66VX1iDBJnl51Kz7XSyiMUq', 2, 1, 1, 1, '2024/07/Contoh-02', 'Budi Santoso', 'Lembaga A', 1, '2024-02-01', 'Simpanan Wajib', '', 200000),
(23, '08JmoKSG959oQ5O1ihxLh8QzlCxbx1eGhgAd', 3, 1, 1, 1, '2024/07/Contoh-111', 'Citra Dewi', 'Lembaga D', 1, '2024-02-01', 'Simpanan Wajib', '', 200000),
(24, '780b0q5JJcQLBODVG2fP5bqOSqCMudWsqD0R', 5, 1, 1, 1, '2024/07/Contoh-05', 'Eka Prasetyo', 'Lembaga A', 1, '2024-02-01', 'Simpanan Wajib', '', 200000),
(25, 'BsLTx4FeLam1RVIRTFYNyKNjzc0JNu97ct1o', 6, 1, 1, 1, '2024/07/Contoh-06', 'Farah Amalia', 'Lembaga A', 2, '2024-02-01', 'Simpanan Wajib', '', 200000),
(26, 'wknxuvcQNGVCAqOGvybWarjk5fVrkEiIOOEQ', 7, 1, 1, 1, '2024/07/Contoh-07', 'Guntur Wibowo', 'Lembaga A', 2, '2024-02-01', 'Simpanan Wajib', '', 200000),
(27, 'LoLBNysMER0RtAcFmPoG4xQn5pJYL3enBaXD', 9, 1, 1, 1, '2024/07/Contoh-09', 'Indah Permatasari', 'Lembaga A', 2, '2024-02-01', 'Simpanan Wajib', '', 200000),
(28, 'mKlvjPFIYefmuC31X4Mumr3o23zrWkaWjp6q', 10, 1, 1, 1, '2024/07/Contoh-10', 'Joko Susanto', 'Lembaga A', 2, '2024-02-01', 'Simpanan Wajib', '', 200000),
(29, 'EHKopzYRlX7VeXPOSt9Y0JquYsF2src8yFej', 11, 1, 1, 1, '2024/07/Contoh-11', 'Karina Putri', 'Lembaga B', 1, '2024-02-01', 'Simpanan Wajib', '', 200000),
(30, 'onu4SvFoxWR9Vl6WqWFYfTRZoJH9xi8rT6Bj', 12, 1, 1, 1, '2024/07/Contoh-12', 'Leo Pradipta', 'Lembaga B', 1, '2024-02-01', 'Simpanan Wajib', '', 200000),
(31, 'FbwiTQyTy8hoCyEQQKOL5OoIRt8UfugyPiVY', 13, 1, 1, 1, '2024/07/Contoh-13', 'Maya Sari', 'Lembaga B', 1, '2024-02-01', 'Simpanan Wajib', '', 200000),
(32, 'ncNo5OVsRiTg9SJ9i2rKJJnx6ZI2AkDXqMn7', 14, 1, 1, 1, '2024/07/Contoh-14', 'Nanda Kusuma', 'Lembaga B', 1, '2024-02-01', 'Simpanan Wajib', '', 200000),
(33, '7eklnX8KrEDsBkskngpXjYdiNjBEBzIqtJU2', 15, 1, 1, 1, '2024/07/Contoh-15', 'Oki Pratama', 'Lembaga B', 1, '2024-02-01', 'Simpanan Wajib', '', 200000),
(34, 'gdJjXYWrKbTqhw5DxsiSGQZi6arboCRBN22f', 16, 1, 1, 1, '2024/07/Contoh-16', 'Putri Ayu', 'Lembaga B', 2, '2024-02-01', 'Simpanan Wajib', '', 200000),
(35, 'WwMm7fUcUyONxDghByyng4oFtrp7us0Red4b', 18, 1, 1, 1, '2024/07/Contoh-18', 'Sinta Maharani', 'Lembaga B', 2, '2024-02-01', 'Simpanan Wajib', '', 200000),
(36, '8enTxARpZV2o323beCxEz6Pbvtk3kQCvLk3o', 19, 1, 1, 1, '2024/07/Contoh-19', 'Tio Nugroho', 'Lembaga B', 2, '2024-02-01', 'Simpanan Wajib', '', 200000),
(37, 'v30SUIK8KbXGfK6rgaVMZmHiTU2JPlkw8qWl', 1, 1, 1, 1, '2024/07/Contoh-01', 'Adam Saputra', 'Lembaga A', 1, '2024-03-01', 'Simpanan Wajib', '', 200000),
(38, 'Xkwru6Rdum23VFy2Y5w0e3l568pvVdbTRf3J', 2, 1, 1, 1, '2024/07/Contoh-02', 'Budi Santoso', 'Lembaga A', 1, '2024-03-01', 'Simpanan Wajib', '', 200000),
(39, 'GniC7tVh1nkqfKgk3749f4Df5XICpos1XMFL', 3, 1, 1, 1, '2024/07/Contoh-111', 'Citra Dewi', 'Lembaga D', 1, '2024-03-01', 'Simpanan Wajib', '', 200000),
(40, 'Mzh5CBWTbqsLjLeazzfbcy8yDT67A4KnqH4M', 5, 1, 1, 1, '2024/07/Contoh-05', 'Eka Prasetyo', 'Lembaga A', 1, '2024-03-01', 'Simpanan Wajib', '', 200000),
(41, 'H7fM5JFo69uWyOaD3dsS44VWqa2wLo64j3pS', 6, 1, 1, 1, '2024/07/Contoh-06', 'Farah Amalia', 'Lembaga A', 2, '2024-03-01', 'Simpanan Wajib', '', 200000),
(42, 'HogSwlxpOhGRDpAJaVJBEKThIoIElM2KD0b7', 7, 1, 1, 1, '2024/07/Contoh-07', 'Guntur Wibowo', 'Lembaga A', 2, '2024-03-01', 'Simpanan Wajib', '', 200000),
(43, '0cREm6HTXIqPidthtpuTPV737EP5h2zkcHsn', 9, 1, 1, 1, '2024/07/Contoh-09', 'Indah Permatasari', 'Lembaga A', 2, '2024-03-01', 'Simpanan Wajib', '', 200000),
(44, '0loVtJWziDlwD8C3t2BA4Wcv3NreY08BRjGL', 10, 1, 1, 1, '2024/07/Contoh-10', 'Joko Susanto', 'Lembaga A', 2, '2024-03-01', 'Simpanan Wajib', '', 200000),
(45, 'N8FdF5ltfTzuV9ixyVigUZ3pwHoY8zBHD1Lg', 11, 1, 1, 1, '2024/07/Contoh-11', 'Karina Putri', 'Lembaga B', 1, '2024-03-01', 'Simpanan Wajib', '', 200000),
(46, 'VpMrX2YIW9Xml7AD4oOp7Qw6MhCmfoBV3VZc', 12, 1, 1, 1, '2024/07/Contoh-12', 'Leo Pradipta', 'Lembaga B', 1, '2024-03-01', 'Simpanan Wajib', '', 200000),
(47, 'Vf1Ar6hsKUJtgaVCyrgamV4F69eWMsMBVnHW', 13, 1, 1, 1, '2024/07/Contoh-13', 'Maya Sari', 'Lembaga B', 1, '2024-03-01', 'Simpanan Wajib', '', 200000),
(48, 'OPX1ldiOhc7rqfnwB64Xv2w0bE7kXJpOrdmI', 14, 1, 1, 1, '2024/07/Contoh-14', 'Nanda Kusuma', 'Lembaga B', 1, '2024-03-01', 'Simpanan Wajib', '', 200000),
(49, '5Gw2GSkzRcT32s2ONZr9CGGuuAdpCSy4Vf4a', 15, 1, 1, 1, '2024/07/Contoh-15', 'Oki Pratama', 'Lembaga B', 1, '2024-03-01', 'Simpanan Wajib', '', 200000),
(50, 'yDdSS3icmLARUPfNnJkS7dsiVuu03nR0RVM8', 16, 1, 1, 1, '2024/07/Contoh-16', 'Putri Ayu', 'Lembaga B', 2, '2024-03-01', 'Simpanan Wajib', '', 200000),
(51, 'U6TzXD3Mn5DeSMkOs9X38fOXmwLeAZdxmolk', 18, 1, 1, 1, '2024/07/Contoh-18', 'Sinta Maharani', 'Lembaga B', 2, '2024-03-01', 'Simpanan Wajib', '', 200000),
(52, 'cuZsU9lYkgUXuzcjYFtjPEcfy6g2kSeixzuj', 19, 1, 1, 1, '2024/07/Contoh-19', 'Tio Nugroho', 'Lembaga B', 2, '2024-03-01', 'Simpanan Wajib', '', 200000),
(53, 'eE51t1oDkA8B8Ep1M8IY9mcKVGVbu6ZHAB0G', 1, 1, 5, 1, '2024/07/Contoh-01', 'Adam Saputra', 'Lembaga A', 1, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(54, 'vZs3T3DzhuMKNcgsoG7Z4BcwF5BxVAy2Nfo4', 2, 1, 5, 1, '2024/07/Contoh-02', 'Budi Santoso', 'Lembaga A', 1, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(55, 'BWybxQNHdJNcmrDyyKRyTjsDy19EF7TC2PLb', 3, 1, 5, 1, '2024/07/Contoh-111', 'Citra Dewi', 'Lembaga D', 1, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(56, 'AA5wQgz1TapS3QkmCd9q5TDGPH3mPkBBqI1y', 5, 1, 5, 1, '2024/07/Contoh-05', 'Eka Prasetyo', 'Lembaga A', 1, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(57, 'Bygbuqvy0ePRYWlXG0eMOmB5rXy54VyssNZF', 6, 1, 5, 1, '2024/07/Contoh-06', 'Farah Amalia', 'Lembaga A', 2, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(58, 'Yno0wUXwYvzzJd5UqLe9uwxlucTVVlvIbQTm', 7, 1, 5, 1, '2024/07/Contoh-07', 'Guntur Wibowo', 'Lembaga A', 2, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(59, 'OjXl4sBo4NVlr8b0rm7pXBcyUNfxcyafcRLn', 9, 1, 5, 1, '2024/07/Contoh-09', 'Indah Permatasari', 'Lembaga A', 2, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(60, '1TuBV87E7h6rzPIvcHMHNkNVcg9qIQQPUBSA', 10, 1, 5, 1, '2024/07/Contoh-10', 'Joko Susanto', 'Lembaga A', 2, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(61, 'zGos4koPCGYVCBlAaoiHpaMZ4iXoXfplTZIP', 11, 1, 5, 1, '2024/07/Contoh-11', 'Karina Putri', 'Lembaga B', 1, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(62, 'h7sRhwibmjFjCUBzGzMrRCcUa1umBJgk7beH', 12, 1, 5, 1, '2024/07/Contoh-12', 'Leo Pradipta', 'Lembaga B', 1, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(63, 'cWt1JQ8RIykxo8sO3RBhTijnswJC6m9aWcau', 13, 1, 5, 1, '2024/07/Contoh-13', 'Maya Sari', 'Lembaga B', 1, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(64, 'GYFXE95SkK2xs0eJmFidfVdrp76EBBhS6B16', 14, 1, 5, 1, '2024/07/Contoh-14', 'Nanda Kusuma', 'Lembaga B', 1, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(65, 'TNZ8tS9ccKnEsLa35YcR2Z84K5G7bFcuaQva', 15, 1, 5, 1, '2024/07/Contoh-15', 'Oki Pratama', 'Lembaga B', 1, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(66, 'JcyYUkCat4ZHqJCfMDRBlTlNdTyCeWlMGwiF', 16, 1, 5, 1, '2024/07/Contoh-16', 'Putri Ayu', 'Lembaga B', 2, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(67, 'ar4jpTr63cKBO3FafCMNqDnURivnKjBZJx9m', 18, 1, 5, 1, '2024/07/Contoh-18', 'Sinta Maharani', 'Lembaga B', 2, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(68, 'acBOeReg1D9HZLwzBFX3ieY0IJBleRBaighc', 19, 1, 5, 1, '2024/07/Contoh-19', 'Tio Nugroho', 'Lembaga B', 2, '2024-04-01', 'Simpanan Hari Raya', '', 1000000),
(69, 'yg3bMisPUkE5rHnN3HUYstlSDe7zAVNv6xqh', 1, 1, 6, 1, '2024/07/Contoh-01', 'Adam Saputra', 'Lembaga A', 1, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(70, 'IgDFSZpp9E3mhjVZBE83QcpgxYMDJmU5Xa4L', 2, 1, 6, 1, '2024/07/Contoh-02', 'Budi Santoso', 'Lembaga A', 1, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(71, 'axze8ePA2dLo7pDgppD11z2VIqrqysgQTnY5', 3, 1, 6, 1, '2024/07/Contoh-111', 'Citra Dewi', 'Lembaga D', 1, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(72, 'lEb3sG1xynt9VhDsotEkJvDplVBwGchkWuDP', 5, 1, 6, 1, '2024/07/Contoh-05', 'Eka Prasetyo', 'Lembaga A', 1, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(73, 'VTcvRYx5ybRa24GfeG3IlVWvQG7SxgWziMjX', 6, 1, 6, 1, '2024/07/Contoh-06', 'Farah Amalia', 'Lembaga A', 2, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(74, 'bMw2JhILUVPsfDz3NpGSDZEEe2IkTXOsDYrp', 7, 1, 6, 1, '2024/07/Contoh-07', 'Guntur Wibowo', 'Lembaga A', 2, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(75, '5X4uopDjHhQnGfmCSA1jSAT8oxXm1HPLnZoS', 9, 1, 6, 1, '2024/07/Contoh-09', 'Indah Permatasari', 'Lembaga A', 2, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(76, 'ixYJzPrC3Y0F9RNfgEXtSQy5VBUvxnJaW8Sk', 10, 1, 6, 1, '2024/07/Contoh-10', 'Joko Susanto', 'Lembaga A', 2, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(77, 'cVmW3DdTombsIRC3EGcZ6ustbM1W2Tb1byNq', 11, 1, 6, 1, '2024/07/Contoh-11', 'Karina Putri', 'Lembaga B', 1, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(78, 'H2JBvgxeFyLsHFRxZ6VLpX4m6A9OSog61L8B', 12, 1, 6, 1, '2024/07/Contoh-12', 'Leo Pradipta', 'Lembaga B', 1, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(79, 'C9oLJzQLx8gmWAGxmHCcSsoxvb1kPcVTsQKe', 13, 1, 6, 1, '2024/07/Contoh-13', 'Maya Sari', 'Lembaga B', 1, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(80, '581wdco8qSyj51csZpV10XL7Yi9m7wJPjVsH', 14, 1, 6, 1, '2024/07/Contoh-14', 'Nanda Kusuma', 'Lembaga B', 1, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(81, 'faMd6dmzMP0AWnt0YLoKTJF5VCwj4fjQLb3s', 15, 1, 6, 1, '2024/07/Contoh-15', 'Oki Pratama', 'Lembaga B', 1, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(83, 'Bg2bt3ff05bOiP7GxJS26w6APwNhdyBPWxP3', 18, 1, 6, 1, '2024/07/Contoh-18', 'Sinta Maharani', 'Lembaga B', 2, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(84, 'QcL7v7vBqLzNwXKgTvHF7EJ9aVRQTMZcEAiT', 19, 1, 6, 1, '2024/07/Contoh-19', 'Tio Nugroho', 'Lembaga B', 2, '2024-01-01', 'Simpanan Loyalitas', '', 100000),
(85, 'EBANrlxJYZwgFSMvYdvCvey7SGjecOGPKspx', 1, 1, 5, 1, '2024/07/Contoh-01', 'Adam Saputra', 'Lembaga A', 1, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(86, 'JuvaYjZxStYVPxvfXnI1hXTCHi8k2Uieuttw', 2, 1, 5, 1, '2024/07/Contoh-02', 'Budi Santoso', 'Lembaga A', 1, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(87, 'luxMQRNhmesQQXdEdzEeMGpgNSaTWhbCoS74', 3, 1, 5, 1, '2024/07/Contoh-111', 'Citra Dewi', 'Lembaga D', 1, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(88, 'ppCf1ecWBtMPPuSFncTX6Kfp8M7SteXbHNR1', 5, 1, 5, 1, '2024/07/Contoh-05', 'Eka Prasetyo', 'Lembaga A', 1, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(89, 'NMVas5us0xdo7AEaKhuJhsoeLu9uu2agKChy', 6, 1, 5, 1, '2024/07/Contoh-06', 'Farah Amalia', 'Lembaga A', 2, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(90, '5rOGCwx9J11mYjuNcfE7c8DrLJdGbOfpgVXA', 7, 1, 5, 1, '2024/07/Contoh-07', 'Guntur Wibowo', 'Lembaga A', 2, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(91, 'udpsHARqYuSjg5ZnPB3C132hPS44WKmpZ6wY', 9, 1, 5, 1, '2024/07/Contoh-09', 'Indah Permatasari', 'Lembaga A', 2, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(92, 'jeDkD676fGs0wTM7Q4wQMEsXtOO8qafHXKUT', 10, 1, 5, 1, '2024/07/Contoh-10', 'Joko Susanto', 'Lembaga A', 2, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(93, 'rnJFwgrVFIyitqPzovIK4sNo12FM59LKpYoO', 11, 1, 5, 1, '2024/07/Contoh-11', 'Karina Putri', 'Lembaga B', 1, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(94, 'ZRcY4Zux1igdPNn2XMIOYliADYRVhWBDnjkN', 12, 1, 5, 1, '2024/07/Contoh-12', 'Leo Pradipta', 'Lembaga B', 1, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(95, '00rBgZcEyhxEiiDNRlTt1iHJIeaTvwyumltm', 13, 1, 5, 1, '2024/07/Contoh-13', 'Maya Sari', 'Lembaga B', 1, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(96, 'QLHdTt4eto5biD0NwoDb4sMHW2nQe6zijezJ', 14, 1, 5, 1, '2024/07/Contoh-14', 'Nanda Kusuma', 'Lembaga B', 1, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(97, '3Cg7LvGc6gxeXg8nqKcTadnSB0mUh8R44wCV', 15, 1, 5, 1, '2024/07/Contoh-15', 'Oki Pratama', 'Lembaga B', 1, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(98, 'gBnACe5R9a7D4r5Xwy3ppX4dxE9nf3KObnFG', 16, 1, 5, 1, '2024/07/Contoh-16', 'Putri Ayu', 'Lembaga B', 2, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(99, '9YEWw53rM2gFK5mnAwW1ci9jIdY7LAaEcI5I', 18, 1, 5, 1, '2024/07/Contoh-18', 'Sinta Maharani', 'Lembaga B', 2, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(100, 'AbMlSygoLSkbibeWnGR93voxf8BpqLAJYsXY', 19, 1, 5, 1, '2024/07/Contoh-19', 'Tio Nugroho', 'Lembaga B', 2, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(101, 'oELKhCGfPMPs0k6oFyYfJbOagLGz57rhagLR', 17, 1, 5, 1, '2024/07/Contoh-17', 'Rizki Setiawan', 'Lembaga B', 2, '2024-01-01', 'Simpanan Hari Raya', '', 1000000),
(102, 'EiixffHEeoHoHt165AowomvvcyXQQFYazitF', 17, 1, 1, 1, '2024/07/Contoh-17', 'Rizki Setiawan', 'Lembaga B', 2, '2024-02-01', 'Simpanan Wajib', '', 250000),
(103, '3QVZkzrsBsZ1rj9LR8DnmHrUQC4uM8ml6IV9', 1, 1, 0, 0, '2024/07/Contoh-01', 'Adam Saputra', 'Lembaga A', 1, '2024-07-21', 'Penarikan', '', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `simpanan_jenis`
--

DROP TABLE IF EXISTS `simpanan_jenis`;
CREATE TABLE IF NOT EXISTS `simpanan_jenis` (
  `id_simpanan_jenis` int(12) NOT NULL AUTO_INCREMENT,
  `nama_simpanan` varchar(30) NOT NULL,
  `keterangan` text,
  `rutin` tinyint(1) NOT NULL COMMENT 'True/False',
  `nominal` int(12) DEFAULT NULL,
  `id_perkiraan_debet` int(12) NOT NULL,
  `id_perkiraan_kredit` int(12) NOT NULL,
  PRIMARY KEY (`id_simpanan_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan_jenis`
--

INSERT INTO `simpanan_jenis` (`id_simpanan_jenis`, `nama_simpanan`, `keterangan`, `rutin`, `nominal`, `id_perkiraan_debet`, `id_perkiraan_kredit`) VALUES
(1, 'Simpanan Wajib', '', 1, 200000, 152, 136),
(3, 'Simpanan Suka rela', 'Simpanan anggota atas dasar suka rela', 0, NULL, 152, 136),
(4, 'Simpanan Pokok', 'Simpanan yang wajib masuk pada saat pertama kali menjadi anggota', 0, NULL, 155, 136),
(5, 'Simpanan Hari Raya', 'Adalah simpanan yang wajib pada saat hari raya', 1, 1000000, 151, 136),
(6, 'Simpanan Loyalitas', 'Simpanan wajib atas dasar loyalitas', 1, 100000, 151, 136);

-- --------------------------------------------------------

--
-- Table structure for table `stok_opename`
--

DROP TABLE IF EXISTS `stok_opename`;
CREATE TABLE IF NOT EXISTS `stok_opename` (
  `id_stok_opename` int(15) NOT NULL AUTO_INCREMENT,
  `id_akses` int(15) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id_stok_opename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_opename_barang`
--

DROP TABLE IF EXISTS `stok_opename_barang`;
CREATE TABLE IF NOT EXISTS `stok_opename_barang` (
  `id_stok_opename_barang` int(20) NOT NULL AUTO_INCREMENT,
  `id_stok_opename` int(20) NOT NULL,
  `id_barang` int(20) NOT NULL,
  `nama_barang` text NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `stok_awal` int(15) NOT NULL,
  `stok_akhir` int(15) NOT NULL,
  `stok_gap` int(15) NOT NULL,
  `harga` int(15) NOT NULL,
  `jumlah` int(20) NOT NULL,
  PRIMARY KEY (`id_stok_opename_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_opename_barang`
--

INSERT INTO `stok_opename_barang` (`id_stok_opename_barang`, `id_stok_opename`, `id_barang`, `nama_barang`, `satuan`, `stok_awal`, `stok_akhir`, `stok_gap`, `harga`, `jumlah`) VALUES
(1, 2, 3, 'Anlene Gold Cokelat 250g', 'DUS', 90, 80, -10, 38000, 3040000),
(2, 2, 45, 'Bango Manis 60ml', 'pcs', 90, 78, -12, 2400, 187200),
(3, 2, 41, 'Bango Pouch 400ml', 'PCH', 101, 120, 19, 15520, 1862400),
(4, 2, 9, 'Bango Soya Manis 20ml', 'RCG', 99, 99, 0, 9600, 950400),
(5, 2, 91, 'Blue Band Serbaguna 200g', 'PCS', 100, 109, 9, 6733333, 733933297),
(6, 2, 2, 'Boneeto Coklat 115ml', 'KTK', 100, 100, 0, 2600, 260000),
(7, 2, 1, 'Boneeto Stoberi 115ml', 'KTK', 99, 87, -12, 2600, 226200),
(8, 2, 25, 'Citra Nat Glow 120ml', 'BTL', 100, 54, -46, 9750, 526500),
(9, 2, 26, 'Citra Nat Glow 230ml', 'BTL', 102, 100, -2, 17150, 1715000),
(10, 2, 27, 'Citra Nat Glow 60ml', 'BTL', 99, 90, -9, 5450, 490500),
(11, 2, 24, 'Citra Pearly white 120ml', 'BTL', 102, 12, -90, 9750, 117000),
(12, 2, 28, 'Citra Pearly White 60ml', 'BAG', 100, 100, 0, 5450, 545000),
(13, 2, 29, 'Citra Pearly White Uv 230ml', 'BTL', 100, 100, 0, 17150, 1715000),
(14, 2, 15, 'Citra Rcg 9ml', 'RCG', 100, 100, 0, 4500, 450000),
(15, 2, 19, 'Clear Anti Ketombe 10ml', 'RCG', 100, 100, 0, 4650, 465000),
(16, 2, 95, 'Clear Complete Soft Care 10ml Unisex', 'pcs', 100, 100, 0, 783125, 78312500),
(17, 2, 22, 'Clear Complete Soft Care 80ml', 'BTL', 100, 100, 0, 9100, 910000),
(18, 2, 20, 'Clear Cool Sport Menthol 80ml', 'BTL', 100, 100, 0, 9700, 970000),
(19, 2, 18, 'Clear Ice Cool 10ml', 'RCG', 100, 100, 0, 4650, 465000),
(20, 2, 21, 'Clear Ice Cool Menthol 80ml', 'BTL', 100, 100, 0, 9100, 910000),
(21, 2, 17, 'Clear Superfresh Apple 80ml', 'BTL', 100, 100, 0, 9100, 910000),
(22, 2, 10, 'Dove Dandruff 20ml', 'RCG', 100, 100, 0, 4500, 450000),
(23, 2, 11, 'Dove Rambut Rontok 20ml', 'RCG', 100, 100, 0, 4500, 450000),
(24, 2, 44, 'Korek Gas', 'PCS', 95, 95, 0, 2400, 228000),
(25, 2, 92, 'Lifebuoy Anti - Dandruff 70ml', 'BTL', 100, 100, 0, 6850, 685000),
(26, 2, 94, 'Lifebuoy Anti Hair Fall 70ml', 'BTL', 100, 100, 0, 6850, 685000),
(27, 2, 98, 'Lifebuoy Hairfall Trmt 9ml', 'RCG', 97, 97, 0, 2250, 218250),
(28, 2, 63, 'Lifebuoy Lemon Fresh', 'BH', 100, 100, 0, 2700, 270000),
(29, 2, 96, 'Lifebuoy Lemon Fresh 250ml', 'REF', 100, 100, 0, 13150, 1315000),
(30, 2, 97, 'Lifebuoy Lemon Fresh 450ml', 'REF', 100, 100, 0, 21700, 2170000),
(31, 2, 16, 'Lifebuoy Matcha 250ml', 'REF', 100, 100, 0, 13150, 1315000),
(32, 2, 64, 'Lifebuoy Mild Care 80g', 'BH', 100, 100, 0, 2700, 270000),
(33, 2, 93, 'Lifebuoy Strong & Shiny 70 ml', 'BTL', 100, 100, 0, 6850, 685000),
(34, 2, 62, 'Lifebuoy Vita Protect', 'BH', 100, 100, 0, 2700, 270000),
(35, 2, 85, 'Lux Aqua Delight 450ml', 'PCH', 100, 100, 0, 20320, 2032000),
(36, 2, 88, 'Lux Aqua Delight 80g', 'BH', 100, 100, 0, 2800, 280000),
(37, 2, 82, 'Lux Magical Spell 250ml', 'REF', 100, 100, 0, 12114, 1211400),
(38, 2, 87, 'Lux Magical Spell 80g', 'BH', 100, 100, 0, 2800, 280000),
(39, 2, 84, 'Lux Soft Rose 250ml', 'REF', 100, 100, 0, 12114, 1211400),
(40, 2, 86, 'Lux Soft Rose 450ml', 'PCS', 100, 100, 0, 20320, 2032000),
(41, 2, 89, 'Lux Velvet Jasmine 80g', 'BH', 100, 100, 0, 2800, 280000),
(42, 2, 83, 'Lux Velvet Pouch 250ml', 'PCS', 100, 100, 0, 12112, 1211200),
(43, 2, 4, 'Max Tea Tarik', 'RCG', 100, 100, 0, 15250, 1525000),
(44, 2, 33, 'Molto All In One Biru 11ml', 'RCG', 100, 100, 0, 4680, 468000),
(45, 2, 32, 'Molto All In1 Pink 11ml', 'RCG', 100, 100, 0, 4680, 468000),
(46, 2, 39, 'Molto Detergen cair glowing Elegance 700ml', 'REF', 100, 100, 0, 14375, 1437500),
(47, 2, 40, 'Molto Detergent 40gr', 'SCH', 100, 100, 0, 908333, 90833300),
(48, 2, 13, 'Molto Edp Purple 10ml', 'RCG', 100, 100, 0, 4680, 468000),
(49, 2, 46, 'Molto Higiene Perisai Aktif 12ml', 'SCH', 100, 100, 0, 426111, 42611100),
(50, 2, 12, 'Molto Luxury Rose 10ml', 'KTG', 100, 100, 0, 4680, 468000),
(51, 2, 55, 'Molto Pewangi Blue 900ml', 'REF', 100, 100, 0, 10100, 1010000),
(52, 2, 56, 'Molto Pewangi Floral Bliss 450 ml', 'REF', 100, 100, 0, 5208, 520800),
(53, 2, 54, 'Molto Pewangi Pink 900ml', 'REF', 100, 100, 0, 10100, 1010000),
(54, 2, 23, 'Molto Pure 10ml', 'RCG', 100, 100, 0, 4680, 468000),
(55, 2, 5, 'Pepsodent Herbal 75g', 'PCS', 100, 100, 0, 6600, 660000),
(56, 2, 6, 'Pepsodent White 75g', 'PCS', 100, 100, 0, 3875, 387500),
(57, 2, 73, 'Pons White Beauty Foam 50g', 'TUB', 100, 100, 0, 16300, 1630000),
(58, 2, 100, 'Pulsa Telkomsel 5000', 'Rp', 200, 200, 0, 5000, 1000000),
(59, 2, 99, 'Pulsa Tree 5000', 'Rp', 100, 100, 0, 5000, 500000),
(60, 2, 77, 'Rexona Free Spirit 50ml', 'BH', 99, 99, 0, 13550, 1341450),
(61, 2, 78, 'Rexona Men Cool Ice 50ml', 'BH', 100, 100, 0, 13550, 1355000),
(62, 2, 75, 'Rexona Motionsense', 'BH', 100, 100, 0, 13550, 1355000),
(63, 2, 76, 'Rexona Powder Dry 45ml', 'BTL', 100, 100, 0, 13550, 1355000),
(64, 2, 53, 'Rinso Anti Noda 430g', 'PCS', 95, 95, 0, 9500, 902500),
(65, 2, 81, 'Rinso Anti Noda 44g', 'RCG', 100, 100, 0, 4830, 483000),
(66, 2, 8, 'Rinso Cair 21ml', 'RCG', 100, 100, 0, 2400, 240000),
(67, 2, 42, 'Rinso Cair Essence Pouch', 'PCH', 100, 100, 0, 4074, 407400),
(68, 2, 14, 'Rinso Cair Gentle Pouch 200ml', 'PCH', 100, 100, 0, 3977, 397700),
(69, 2, 43, 'Rinso Cair Rose Fresh Pouch', 'PCH', 100, 100, 0, 4074, 407400),
(70, 2, 80, 'Rinso Molto 44g', 'RCG', 100, 100, 0, 4830, 483000),
(71, 2, 30, 'Rinso Molto Cair Royal Gold', 'RCG', 100, 100, 0, 4830, 483000),
(72, 2, 38, 'Rinso Molto Essence 770g', 'BAG', 100, 100, 0, 18050, 1805000),
(73, 2, 49, 'Rinso Molto Pink 250g', 'BKS', 100, 100, 0, 4200, 420000),
(74, 2, 31, 'Rinso Royal Gold 770g', 'PCS', 100, 100, 0, 17508, 1750800),
(75, 2, 47, 'Royco Fds Sapi 9g', 'RCG', 100, 100, 0, 4479167, 447916700),
(76, 2, 59, 'Sariwangi Kotak 1,85g', 'KTK', 100, 100, 0, 4800021, 480002100),
(77, 2, 58, 'Sariwangi Kotak Tb 50', 'PAK', 100, 100, 0, 9249, 924900),
(78, 2, 34, 'Sunlight Habbatus Pouch 100ml', 'PCS', 100, 100, 0, 1488, 148800),
(79, 2, 57, 'Sunlight Lime 400ml', 'PCH', 100, 100, 0, 9000, 900000),
(80, 2, 7, 'Sunlight Lime Cream', 'PCS', 100, 100, 0, 4500, 450000),
(81, 2, 61, 'Sunlight Lime Pouch 210ml', 'REF', 100, 100, 0, 4300, 430000),
(82, 2, 35, 'Sunlight Lime Pouch 435ml', 'REF', 100, 100, 0, 9308333, 930833300),
(83, 2, 79, 'Sunlight Lime Pouch 45ml', 'SCH', 100, 100, 0, 825, 82500),
(84, 2, 74, 'Sunlight Lime Pouch 95ml', 'BKS', 98, 98, 0, 1600, 156800),
(85, 2, 51, 'Super Pell Pouch 380ml', 'PCH', 100, 100, 0, 5529, 552900),
(86, 2, 52, 'Super Pell Pouch Cherry Rose', 'PCH', 100, 100, 0, 9744, 974400),
(87, 2, 48, 'Vixal Pemb Pors Biru 200ml', 'BTL', 100, 100, 0, 4200, 420000),
(88, 2, 36, 'Wifol Karbol 500ml', 'PCS', 100, 100, 0, 8600, 860000),
(89, 2, 50, 'Wipol Classic Pine 450 ml', 'REF', 100, 100, 0, 11625, 1162500),
(90, 2, 37, 'Wipol Karbol 240ml', 'PCH', 100, 100, 0, 4249, 424900);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `id_supplier` int(10) NOT NULL AUTO_INCREMENT,
  `nama_supplier` text NOT NULL,
  `alamat_supplier` text,
  `email_supplier` text,
  `kontak_supplier` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `email_supplier`, `kontak_supplier`) VALUES
(1, 'PT.Kimia Farma', 'Jalan anggrek 4 no 15', 'kimiafarma@gmail.com', '2176444553'),
(2, 'PT.Sanbe Farma', 'Jalan Raya Pasar Pagi No 14', 'sanbefarma@gmail.com', '2315634512'),
(5, 'PT. RAJAWALI NUSINDO', 'Jalan anggrek 4 no 15 - 02315634544', 'rajawalinusindo@gmail.com', '2315634544'),
(6, 'PT.Armala Putra', 'Jalan Anggrek 4 no 15', 'armalaputra@gmail.com', '23254647'),
(7, 'CV. SANITA KARUNIA MANDIRI', 'Jalan Raya Pasar Pagi No 14', 'mandirikaruniasanita@gmail.com', '2176444553'),
(8, 'PT. MTA ALKES INDO', 'Jalan Raya Pasar Pagi No 14', '123@GMAIL.COM', '2176444553'),
(9, 'PT.Indah Medis Jaya', 'Jalan Siliwangi no 15', 'indahmedis@gmail.com', '2328765585'),
(10, 'PT.Wings Food', 'Jalan Raya Pasar Pagi No 14', 'wingsfood@gmail.com', '227856'),
(13, 'PT.Indah Medis Jaya', 'Jalan Raya Pasar Pagi No 142', 'wingsfood22@gmail.com', '2278562'),
(14, 'PT.Indofood tbk', 'Jalamn', 'indofood@gmail.com', '345345667'),
(15, 'JVC Kuningan', 'Jalamn', 'jvc@gmail.com', '4235456'),
(16, 'PT.Medic Islam', 'Jalan Hayam Wuruk no 12 Jakarta timur', 'MedicIsalam@gmail.com', '22546467'),
(17, 'PTT.Indah Permai', 'Jalan Raya Pasar Pagi No 14', 'indahpermai@gmail.com', '123123'),
(18, 'PTT.Indah Permai2', 'Jalan Raya Pasar Pagi No 14', 'indahpermai2@gmail.com', '12121212');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(12) NOT NULL AUTO_INCREMENT,
  `uuid_transaksi` char(32) NOT NULL,
  `id_transaksi_jenis` int(12) DEFAULT NULL,
  `nama_transaksi` text NOT NULL COMMENT 'Nama transaksi dari jenis',
  `kategori` text NOT NULL COMMENT 'Kategori dari jenis',
  `tanggal` datetime NOT NULL COMMENT 'Tanggal beralngsungnnya transaksi',
  `jumlah` int(12) DEFAULT NULL,
  `pembayaran` int(12) DEFAULT NULL,
  `status` varchar(7) DEFAULT NULL COMMENT 'Lunas, Utang, Piutang',
  PRIMARY KEY (`id_transaksi`),
  KEY `id_transaksi_jenis` (`id_transaksi_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `uuid_transaksi`, `id_transaksi_jenis`, `nama_transaksi`, `kategori`, `tanggal`, `jumlah`, `pembayaran`, `status`) VALUES
(13, 'Vm9DsHeGiU9VjVX9gGn9TcdZ8Nb3NyO0', 3, 'ATK', 'Beban Perlengkapan', '2024-08-11 00:05:27', 35000, 35000, 'Lunas'),
(14, '4PuJ6Jot3QuaZjFbKptb3GhFk9PPNRWi', 2, 'Gaji Staf', 'Gaji', '2024-08-11 00:17:26', 11000000, 6000000, 'Lunas'),
(16, 'X1crhyZmG2RanlaiIwvuunn0rUmbBEQX', 1, 'Listrik dan Air', 'Biaya Operasional Kantor', '2024-08-11 02:08:12', 12000, 12000, 'Lunas'),
(17, 'PPjFbUTUEkyWeJV5IdFoWId4egCKUaJ9', 3, 'ATK', 'Beban Perlengkapan', '2024-08-11 05:35:56', 15000, 15000, 'Lunas'),
(18, 'U6D6GAHo5GiWv9MacJW2XkfypHkTWfjS', 2, 'Gaji Staf', 'Gaji', '2024-01-05 01:37:03', 6500000, 6500000, 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_jenis`
--

DROP TABLE IF EXISTS `transaksi_jenis`;
CREATE TABLE IF NOT EXISTS `transaksi_jenis` (
  `id_transaksi_jenis` int(12) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `kategori` text NOT NULL COMMENT 'Operasional, Gaji dll',
  `deskripsi` text,
  `id_akun_debet` int(12) DEFAULT NULL COMMENT 'Akun perkiraan di lajur debet',
  `id_akun_kredit` int(12) NOT NULL COMMENT 'Akun perkiraan di lajur kredit',
  PRIMARY KEY (`id_transaksi_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_jenis`
--

INSERT INTO `transaksi_jenis` (`id_transaksi_jenis`, `nama`, `kategori`, `deskripsi`, `id_akun_debet`, `id_akun_kredit`) VALUES
(1, 'Listrik dan Air', 'Biaya Operasional Kantor', 'Pembayaran iuran listrik dan air kantor', 114, 155),
(2, 'Gaji Staf', 'Gaji', 'Pembayaran gaji staf bulanan', 80, 152),
(3, 'ATK', 'Beban Perlengkapan', 'Pembelian ATK sepoerti pencil, pena, tinta dll', 98, 135);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_pembayaran`
--

DROP TABLE IF EXISTS `transaksi_pembayaran`;
CREATE TABLE IF NOT EXISTS `transaksi_pembayaran` (
  `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(10) DEFAULT NULL,
  `id_akses` int(10) DEFAULT NULL,
  `id_anggota` int(15) DEFAULT NULL,
  `id_supplier` int(15) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `tanggal` varchar(30) NOT NULL,
  `metode` varchar(20) NOT NULL,
  `jumlah` int(15) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_ppn`
--

DROP TABLE IF EXISTS `transaksi_ppn`;
CREATE TABLE IF NOT EXISTS `transaksi_ppn` (
  `id_transaksi_ppn` int(15) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(15) DEFAULT NULL,
  `id_akses` int(15) NOT NULL,
  `ppn_persen` int(15) NOT NULL,
  `ppn_rp` int(15) NOT NULL,
  PRIMARY KEY (`id_transaksi_ppn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_rincian`
--

DROP TABLE IF EXISTS `transaksi_rincian`;
CREATE TABLE IF NOT EXISTS `transaksi_rincian` (
  `id_transaksi_rincian` int(15) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(12) DEFAULT NULL,
  `uuid_transaksi` char(32) DEFAULT NULL,
  `rincian_transaksi` text,
  `harga` int(12) DEFAULT NULL,
  `qty` int(12) DEFAULT NULL,
  `satuan` text,
  `jumlah` int(12) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi_rincian`),
  KEY `id_transaksi` (`id_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_rincian`
--

INSERT INTO `transaksi_rincian` (`id_transaksi_rincian`, `id_transaksi`, `uuid_transaksi`, `rincian_transaksi`, `harga`, `qty`, `satuan`, `jumlah`) VALUES
(9, 14, '4PuJ6Jot3QuaZjFbKptb3GhFk9PPNRWi', 'Syamsul', 1500000, 1, 'Bulan', 1500000),
(10, 14, '4PuJ6Jot3QuaZjFbKptb3GhFk9PPNRWi', 'Bayu Anugerah', 2000000, 1, 'Bulan', 2000000),
(11, 14, '4PuJ6Jot3QuaZjFbKptb3GhFk9PPNRWi', 'Solihul hadi', 2500000, 1, 'Bulan', 2500000),
(12, 14, '4PuJ6Jot3QuaZjFbKptb3GhFk9PPNRWi', 'Maya', 3000000, 1, 'Bulan', 3000000),
(13, 14, '4PuJ6Jot3QuaZjFbKptb3GhFk9PPNRWi', 'Dewi Widiastuti', 2000000, 1, 'Bulan', 2000000),
(14, 17, 'PPjFbUTUEkyWeJV5IdFoWId4egCKUaJ9', 'Pulpen', 2000, 5, 'PCS', 10000),
(15, 17, 'PPjFbUTUEkyWeJV5IdFoWId4egCKUaJ9', 'Penghapus', 500, 10, 'PCS', 5000),
(16, 13, 'Vm9DsHeGiU9VjVX9gGn9TcdZ8Nb3NyO0', 'Pena', 1500, 10, 'PCS', 15000),
(17, 13, 'Vm9DsHeGiU9VjVX9gGn9TcdZ8Nb3NyO0', 'Tinta', 20000, 1, 'PCS', 20000),
(18, 18, 'U6D6GAHo5GiWv9MacJW2XkfypHkTWfjS', 'Syamsul maarif', 1500000, 1, 'Bulan', 1500000),
(19, 18, 'U6D6GAHo5GiWv9MacJW2XkfypHkTWfjS', 'Bayu Anugerah', 2000000, 1, 'Bulan', 2000000),
(20, 18, 'U6D6GAHo5GiWv9MacJW2XkfypHkTWfjS', 'Nida Amalia', 3000000, 1, 'Bulan', 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_setting`
--

DROP TABLE IF EXISTS `transaksi_setting`;
CREATE TABLE IF NOT EXISTS `transaksi_setting` (
  `id_transaksi_setting` int(15) NOT NULL AUTO_INCREMENT,
  `id_akses` int(15) NOT NULL,
  `ppn` varchar(20) NOT NULL,
  `ppn_set_persen` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_setting`
--

INSERT INTO `transaksi_setting` (`id_transaksi_setting`, `id_akses`, `ppn`, `ppn_set_persen`) VALUES
(1, 1, 'Yes', 10);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akses_anggota`
--
ALTER TABLE `akses_anggota`
  ADD CONSTRAINT `akses_anggota_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD CONSTRAINT `simpanan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_transaksi_jenis`) REFERENCES `transaksi_jenis` (`id_transaksi_jenis`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `transaksi_rincian`
--
ALTER TABLE `transaksi_rincian`
  ADD CONSTRAINT `transaksi_rincian_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
