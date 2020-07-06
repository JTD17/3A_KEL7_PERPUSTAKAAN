-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 11:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `ambil_no_buku`
-- (See below for the actual view)
--
CREATE TABLE `ambil_no_buku` (
`digits` varchar(10)
,`judul_buku` varchar(70)
,`isbn` varchar(25)
,`nama_penulis` varchar(50)
,`nama_penerbit` varchar(50)
,`nama_kategori` varchar(50)
,`tanggal_terbit` date
,`jumlah_halaman` int(11)
,`nama_rak` varchar(20)
,`tanggal_pengadaan` date
);

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `kode_anggota` int(11) NOT NULL,
  `username_anggota` varchar(50) NOT NULL,
  `password_anggota` text NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat_anggota` varchar(60) NOT NULL,
  `telp_anggota` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`kode_anggota`, `username_anggota`, `password_anggota`, `nama_anggota`, `jenis_kelamin`, `alamat_anggota`, `telp_anggota`, `tempat_lahir`, `tanggal_lahir`, `tanggal_pendaftaran`) VALUES
(1, 'yogie123', '$2y$10$WlfDXCotFi.pmpF0G4VrwOxday8u3hunpWF/wCZB6nRQ3ggzED76G', 'yogie tri', 'Laki-laki', 'Malang', '0821526142541', 'Malang', '1999-03-17', '2020-07-03'),
(2, 'cholilur', '$2y$10$QQT9yhUcIJT78blyzwXncOfkt6MFLZJlIH4LRbE0iCw5.zy/z/T.C', 'cholilur', '', '', '', '', '0000-00-00', '2020-07-05'),
(3, 'ijb23', '$2y$10$Cwtl2g0uU9/xSgAxfTK9OetVsVzgUYD.OabAvCgCgKUMjSB30gkEW', 'ilham jb', '', '', '', '', '0000-00-00', '2020-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(10) NOT NULL,
  `judul_buku` varchar(70) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `kode_penulis` int(11) NOT NULL,
  `kode_penerbit` int(11) NOT NULL,
  `kode_kategori` varchar(3) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `kode_rak` varchar(3) NOT NULL,
  `tanggal_pengadaan` date NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul_buku`, `isbn`, `kode_penulis`, `kode_penerbit`, `kode_kategori`, `tanggal_terbit`, `jumlah_halaman`, `kode_rak`, `tanggal_pengadaan`, `stok`) VALUES
('bk_1', 'Perahu Kertas', '978-602-291-177-7', 1, 1, 'nov', '2016-03-05', 444, 'A1', '2019-09-04', 8),
('bk_10', 'Youtuber for dummies', '9786024831530', 11, 15, 'Mot', '2018-10-29', 212, 'H1', '2018-11-12', 6),
('bk_11', 'Millennial power', '9786232167629', 11, 15, 'Mot', '2020-02-14', 224, 'H1', '2020-02-14', 0),
('bk_12', 'Mantra', '9789796948444', 11, 15, 'Mot', '2005-11-14', 210, 'H1', '2005-11-14', 0),
('bk_13', 'Kambing jantan', '9789797808952', 3, 4, 'kom', '2006-03-05', 235, 'D1', '2006-03-05', 11),
('bk_14', 'Babi ngesot', '9786022202318', 3, 3, 'kom', '2008-06-22', 240, 'D1', '2017-09-19', 0),
('bk_15', 'Ubur-ubur lembur', '9789797809157', 3, 4, 'kom', '2018-02-07', 231, 'D1', '2018-02-07', 14),
('bk_16', 'Radikus makankakus', '9789797808976', 3, 4, 'kom', '2007-02-07', 232, 'D1', '2018-02-04', 3),
('bk_17', 'Selena', '9786020639512', 4, 5, 'fik', '2020-03-16', 431, 'E1', '2020-03-16', 0),
('bk_18', 'Sungguh kau boleh pergi : kumpulan sajak', '9786020636153', 4, 9, 'rom', '2019-11-25', 96, 'C1', '2019-11-25', 12),
('bk_19', 'Si anak badai', '9786025734939', 4, 16, 'nov', '2019-06-28', 304, 'A1', '2019-06-29', 9),
('bk_2', 'Laskar Pelangi', '978-602-291-662-8', 2, 2, 'fil', '2019-10-02', 456, 'B1', '2020-05-02', 5),
('bk_20', 'About life', '9786020630212', 4, 9, 'Mot', '2019-05-27', 128, 'H1', '2019-06-25', 0),
('bk_21', 'Tentang kamu', '9786025734830', 4, 16, 'fik', '2016-02-26', 646, 'E1', '2019-02-20', 0),
('bk_22', 'About friends', '9786020626260', 4, 5, 'rom', '2017-04-25', 131, 'C1', '2019-04-25', 7),
('bk_23', 'Bulan', '9786020626406', 4, 5, 'fik', '2015-11-20', 501, 'E1', '2019-02-01', 7),
('bk_24', 'Tapak jejak', '9789797945862', 5, 6, 'rom', '2019-08-17', 316, 'C1', '2020-05-23', 7),
('bk_25', '11 : 11', '9789797945695', 5, 6, 'fik', '2018-11-11', 302, 'E1', '2020-05-23', 0),
('bk_26', 'Arah langkah', '9789797945619', 5, 6, 'kum', '2018-05-06', 304, 'I1', '2020-05-23', 7),
('bk_27', 'Catatan Juang', '9789797945497', 5, 6, 'fik', '2017-12-11', 306, 'E1', '2020-05-23', 5),
('bk_28', 'Garis Waktu', '9789797945251', 5, 6, 'kum', '2016-09-12', 216, 'I1', '2020-05-23', 0),
('bk_29', 'Pramoedya Ananta Toer : kisah di balik bumi manusia', '9786025752612', 6, 7, 'alk', '2019-09-03', 190, 'F1', '2020-11-10', 5),
('bk_3', 'Marmut Merah Jambu', '978-602-220-232-5', 3, 3, 'rom', '2010-03-01', 222, 'C1', '2020-05-03', 2),
('bk_30', '5 cm', '9786023751310', 7, 8, 'nov', '2005-11-20', 382, 'A1', '2006-10-01', 4),
('bk_31', 'Surprise me', '9786020619187', 13, 5, 'kom', '2018-02-08', 440, 'D1', '2019-04-16', 0),
('bk_32', 'Harry Potter dan batu bertuah ', '9786020638263', 14, 9, 'fik', '2000-06-29', 223, 'E1', '2020-02-19', 5),
('bk_33', 'Harry Potter dan kamar rahasia', '9786020379784', 14, 9, 'fik', '1998-07-02', 432, 'E1', '2018-03-23', 5),
('bk_34', 'Harry Potter dan tawanan Azkaban', '9786020383637', 14, 9, 'fik', '1999-07-09', 444, 'E1', '2020-05-20', 3),
('bk_35', 'Harry Potter dan piala api ilustrasi', '9786020638058', 14, 5, 'fik', '2000-07-08', 882, 'E1', '2020-02-23', 3),
('bk_36', ' Harry potter and the order of the phoenix', '9786020361314', 14, 9, 'fik', '2003-06-21', 1200, 'E1', '2020-10-25', 2),
('bk_37', 'Harry Potter dan pangeran berdarah-campuran', '9786020377414', 14, 9, 'fik', '2005-07-16', 816, 'E1', '2020-05-19', 1),
('bk_38', 'Harry Potter dan relikui kematian', '9786020379791', 14, 9, 'fik', '2007-07-21', 608, 'E1', '2020-02-12', 6),
('bk_39', 'Fantastic beasts and where to find them ', '9786020378992', 14, 5, 'fik', '2002-02-01', 88, 'E1', '2017-12-28', 8),
('bk_4', 'Manusia Setengah Salmon', '978-979-780-898-3', 3, 4, 'kom', '2011-12-05', 264, 'D1', '2020-05-03', 0),
('bk_40', 'Negeri 5 menara', '9786020362083', 8, 5, 'rom', '2009-07-01', 416, 'C1', '2017-07-01', 8),
('bk_41', 'Ranah 3 warna', '9786020390666', 8, 5, 'rom', '2011-01-20', 416, 'C1', '2018-02-01', 5),
('bk_42', 'Rantau 1 muara', '9786020364476', 8, 5, 'rom', '2013-05-27', 400, 'C1', '2017-05-28', 3),
('bk_43', 'Merdeka sejak hati', '9786020622965', 8, 5, 'fik', '2019-01-05', 400, 'F1', '2019-05-25', 2),
('bk_44', 'Larung', '9786024242862', 15, 20, 'Rmn', '2001-11-11', 260, 'J1', '2020-06-02', 1),
('bk_45', 'Manjali', '9786024812263', 15, 20, 'nov', '2010-06-12', 251, 'A1', '2020-06-05', 4),
('bk_46', 'Simple miracles : kisah nyata tentang doa dan arwah', '9786024811518', 15, 20, 'nov', '2014-10-20', 177, 'A1', '2020-06-10', 5),
('bk_5', 'Cinta Brontosaurus', '978-979-780-896-9', 3, 4, 'rom', '2006-05-01', 152, 'C1', '2020-05-03', 8),
('bk_6', 'Koala Kumal', '978-979-780-899-0', 3, 4, 'kom', '2015-02-17', 250, 'D1', '2020-05-03', 9),
('bk_7', 'Nebula', '978-602-06-3953-6', 4, 5, 'fik', '2020-03-16', 376, 'E1', '2020-05-05', 1),
('bk_8', 'Konspirasi alam semesta ', '978-979-794-535-0', 5, 6, 'fik', '2017-04-17', 244, 'E1', '2020-05-11', 4),
('bk_9', 'OCD 2.0 : wolverine & wonder woman project', '9786022499695', 11, 15, 'Mot', '2015-06-01', 144, 'H1', '2019-11-29', 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_peminjaman`
-- (See below for the actual view)
--
CREATE TABLE `detail_peminjaman` (
`kode_transaksi` varchar(50)
,`kode_buku` varchar(10)
,`judul_buku` varchar(70)
,`jumlah_buku` int(11)
,`tanggal_pinjam` date
,`tanggal_kembali` date
,`status` varchar(20)
,`tanggal_transaksi` date
,`kode_anggota` int(11)
,`nama_anggota` varchar(50)
,`kode_pegawai` int(11)
,`nama_pegawai` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `kode_transaksi` varchar(50) NOT NULL,
  `kode_buku` varchar(10) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`kode_transaksi`, `kode_buku`, `jumlah_buku`, `tanggal_pinjam`, `tanggal_kembali`, `status`) VALUES
('3bk_12020-07-06', 'bk_1', 2, '2020-07-06', '2020-07-13', 'Dikembalikan'),
('3bk_62020-07-06', 'bk_6', 1, '2020-07-06', '2020-07-13', 'Dibatalkan');

--
-- Triggers `detail_transaksi`
--
DELIMITER $$
CREATE TRIGGER `TG_ACC_BUKU` BEFORE UPDATE ON `detail_transaksi` FOR EACH ROW BEGIN IF NEW.status = 'Dipinjam' THEN UPDATE buku SET stok=stok-OLD.jumlah_buku WHERE kode_buku=OLD.kode_buku; END IF;
  END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TG_UPDATE_STATUS` BEFORE UPDATE ON `detail_transaksi` FOR EACH ROW BEGIN IF NEW.status = 'Dikembalikan' THEN UPDATE buku SET stok=stok+OLD.jumlah_buku WHERE kode_buku=OLD.kode_buku; END IF;
  END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` varchar(3) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `nama_kategori`) VALUES
('alk', 'alkisah'),
('Dra', 'Drama'),
('fik', 'Fiksi'),
('fil', 'FIlm'),
('kom', 'Komedi'),
('kum', 'Kumpulan cerpen'),
('Mot', 'Motivasi'),
('nov', 'Novel'),
('Rmn', 'Roman'),
('rom', 'romance'),
('sas', 'Sastra Perjalanan');

-- --------------------------------------------------------

--
-- Table structure for table `master_transaksi`
--

CREATE TABLE `master_transaksi` (
  `kode_transaksi` varchar(50) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `kode_anggota` int(11) NOT NULL,
  `kode_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_transaksi`
--

INSERT INTO `master_transaksi` (`kode_transaksi`, `tanggal_transaksi`, `kode_anggota`, `kode_pegawai`) VALUES
('3bk_12020-07-06', '2020-07-06', 3, 2),
('3bk_62020-07-06', '2020-07-06', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `kode_pegawai` int(11) NOT NULL,
  `username_pegawai` varchar(50) NOT NULL,
  `password_pegawai` text NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `alamat_pegawai` varchar(60) NOT NULL,
  `telp_pegawai` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`kode_pegawai`, `username_pegawai`, `password_pegawai`, `nama_pegawai`, `jenis_kelamin`, `alamat_pegawai`, `telp_pegawai`, `tempat_lahir`, `tanggal_lahir`) VALUES
(1, 'ilhamjb23', '$2y$10$Dh0ANLbc2FBbGXIalsS2Pua/jzebRlImtcQir9x/DjQpwOJgzg0W2', 'ilham jody', 'Laki-laki', 'Jl. Ikan Lodan No.46 Kel. Tunjungsekar Kec. Lowokwaru Malang', '081232117937', 'Malang', '1998-04-05'),
(2, 'joday', '$2y$10$Dh0ANLbc2FBbGXIalsS2Pua/jzebRlImtcQir9x/DjQpwOJgzg0W2', 'Jibes', 'Laki-laki', 'Jl. Ikan Lodan No.46 Kel. Tunjungsekar Kec. Lowokwaru Malang', '01829719271', 'Malang', '0199-05-13'),
(3, 'mona123', '$2y$10$mBATWYfWNRk2LMNzEGIjXeubKeS2t3h408NC2QUbIN56AFgCGK6L.', 'monalisa', 'Perempuan', 'Malang', '0812810213', 'Malang', '1998-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `kode_penerbit` int(11) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `alamat_penerbit` varchar(60) NOT NULL,
  `telp_penerbit` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`kode_penerbit`, `nama_penerbit`, `alamat_penerbit`, `telp_penerbit`) VALUES
(1, 'Erlangga', 'Jl. H. Baping Raya No. 100 Ciracas Jakarta 13740', '0218717006'),
(2, 'Bentang Pustaka', 'Jl. Palagan Tentara Pelajar No.101, RT.004/RW.035, Jongkang,', '(0274) 2839636'),
(3, 'PT. Bukune Kreatif Cipta', 'Jalan Haji Montong No. 57, Ciganjur', '(021) 78883030'),
(4, 'Gagasmedia', 'Jl. H. Montong No. 57 Ciganjur Jagakarsa Jakarta Selatan', '(021) 78883030'),
(5, 'PT Gramedia Pustaka Utama', 'Jl. Palmerah Barat 29-37 10270, RT.1/RW.2, Gelora, Central J', '(021) 53650110'),
(6, 'PT. Media Kita', 'Jl. H. Montong No.57 Jagakarsa Ciganjur Jakarta Selatan', '(021) 53650222'),
(7, 'Media Pressindo', 'JL. Godean, Km. 5, 6, No. 34B, 55223, Bener, Yogyakarta, Kot', '(0274) 620879'),
(8, 'Grasindo (Gramedia Widia Sarana Indonesia)', 'Kompas Gramedia, Jl. Palmerah Barat, RT.1/RW.2, Gelora, Keca', ' (021) 53650111'),
(9, 'PT. Gramedia Pustaka Utama', 'Jl. Palmerah Barat 29-37 10270, RT.1/RW.2, Gelora, Central J', '(021) 53650110'),
(15, 'PT. Bhuana Ilmu Populer', 'Jalan Palmerah Barat 29-37, Unit 1, Lantai 2, Jakarta', '02153677834'),
(16, 'Republika Penerbit', 'Jl. Kav. Polri J No.65 Kota Jakarta Selatan', '0217817702'),
(17, 'Bentang Belia', ' Sleman, Yogyakarta ', '027428396376'),
(18, 'Ufuk Press', 'Jakarta selatan', '08970324114'),
(19, 'Ufuk Press', 'Jakarta selatan', '08970324114'),
(20, 'Kepustakaan Populer Gramedia (KPG)', 'Jalan Permata Hijau Raya Blok A 18 Jakarta 12270', '021530929311');

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `kode_penulis` int(11) NOT NULL,
  `nama_penulis` varchar(50) NOT NULL,
  `alamat_penulis` varchar(60) NOT NULL,
  `telp_penulis` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`kode_penulis`, `nama_penulis`, `alamat_penulis`, `telp_penulis`) VALUES
(1, 'Dee Dewi Lestari', 'Bandung', '082321341214'),
(2, 'Andrea Hirata', 'Gantung, Belitung Timur, Bangka Belitung', '089289121871'),
(3, 'Raditya Dika', 'Jakarta', '081231341121'),
(4, 'Tere Liye', 'Lahat Sumatera Selatan', '085755628399'),
(5, 'Fiersa Besari', 'Bandung, Indonesia', '081223438910'),
(6, 'Agus Wahyudi', 'Blitar, jawa timur', '082169501207'),
(7, 'Donny Dhirgantoro', 'Jakarta', '082169501411'),
(8, ' Ahmad Fuadi', 'maninjau', '081280197318'),
(11, 'Deddy Corbuzier', 'Jakarta', '0814325626'),
(12, 'Dwitasari', 'Kopo Indah, Bandung', '081234567899'),
(13, 'Sophie Kinsela', 'london', '123456'),
(14, 'J.K. Rowling', 'United Kindom', '666666617'),
(15, 'Ayu Utami', 'Utan Kayu, Jakarta Timur', '085672345612');

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `kode_rak` varchar(3) CHARACTER SET utf8mb4 NOT NULL,
  `nama_rak` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `kode_kategori` varchar(3) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rak`
--

INSERT INTO `rak` (`kode_rak`, `nama_rak`, `kode_kategori`) VALUES
('A1', 'Rak A1', 'nov'),
('B1', 'Rak B1', 'fil'),
('C1', 'Rak C1', 'rom'),
('D1', 'Rak D1', 'kom'),
('E1', 'Rak E1', 'fik'),
('F1', 'RAK F1', 'alk'),
('G1', 'RAK G1', 'Dra'),
('H1', 'Rak H1', 'Mot'),
('I1', 'Rak I1', 'kum'),
('J1', 'Rak J1', 'Rmn');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tampil_buku`
-- (See below for the actual view)
--
CREATE TABLE `tampil_buku` (
`kode_buku` varchar(10)
,`judul_buku` varchar(70)
,`isbn` varchar(25)
,`nama_penulis` varchar(50)
,`nama_penerbit` varchar(50)
,`nama_kategori` varchar(50)
,`tanggal_terbit` date
,`jumlah_halaman` int(11)
,`nama_rak` varchar(20)
,`tanggal_pengadaan` date
,`stok` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tampil_buku_laris`
-- (See below for the actual view)
--
CREATE TABLE `tampil_buku_laris` (
`kode_buku` varchar(10)
,`judul_buku` varchar(70)
,`nama_penulis` varchar(50)
,`nama_penerbit` varchar(50)
,`nama_kategori` varchar(50)
,`nama_rak` varchar(20)
,`stok` int(11)
,`jumlah_buku` int(11)
,`status` varchar(20)
,`COUNT(*)` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tampil_rak`
-- (See below for the actual view)
--
CREATE TABLE `tampil_rak` (
`kode_rak` varchar(3)
,`nama_rak` varchar(20)
,`nama_kategori` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `ambil_no_buku`
--
DROP TABLE IF EXISTS `ambil_no_buku`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ambil_no_buku`  AS  select replace(replace(replace(`buku`.`kode_buku`,'bk_',''),',','.'),' ','') AS `digits`,`buku`.`judul_buku` AS `judul_buku`,`buku`.`isbn` AS `isbn`,`penulis`.`nama_penulis` AS `nama_penulis`,`penerbit`.`nama_penerbit` AS `nama_penerbit`,`kategori`.`nama_kategori` AS `nama_kategori`,`buku`.`tanggal_terbit` AS `tanggal_terbit`,`buku`.`jumlah_halaman` AS `jumlah_halaman`,`rak`.`nama_rak` AS `nama_rak`,`buku`.`tanggal_pengadaan` AS `tanggal_pengadaan` from ((((`buku` join `penerbit`) join `penulis`) join `kategori`) join `rak`) where `buku`.`kode_penulis` = `penulis`.`kode_penulis` and `buku`.`kode_penerbit` = `penerbit`.`kode_penerbit` and `buku`.`kode_kategori` = `kategori`.`kode_kategori` and `buku`.`kode_rak` = `rak`.`kode_rak` order by octet_length(`buku`.`kode_buku`) desc,`buku`.`kode_buku` desc ;

-- --------------------------------------------------------

--
-- Structure for view `detail_peminjaman`
--
DROP TABLE IF EXISTS `detail_peminjaman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_peminjaman`  AS  select `detail_transaksi`.`kode_transaksi` AS `kode_transaksi`,`buku`.`kode_buku` AS `kode_buku`,`buku`.`judul_buku` AS `judul_buku`,`detail_transaksi`.`jumlah_buku` AS `jumlah_buku`,`detail_transaksi`.`tanggal_pinjam` AS `tanggal_pinjam`,`detail_transaksi`.`tanggal_kembali` AS `tanggal_kembali`,`detail_transaksi`.`status` AS `status`,`master_transaksi`.`tanggal_transaksi` AS `tanggal_transaksi`,`master_transaksi`.`kode_anggota` AS `kode_anggota`,`anggota`.`nama_anggota` AS `nama_anggota`,`master_transaksi`.`kode_pegawai` AS `kode_pegawai`,`pegawai`.`nama_pegawai` AS `nama_pegawai` from ((((`buku` join `detail_transaksi`) join `master_transaksi`) join `anggota`) join `pegawai`) where `buku`.`kode_buku` = `detail_transaksi`.`kode_buku` and `detail_transaksi`.`kode_transaksi` = `master_transaksi`.`kode_transaksi` and `master_transaksi`.`kode_anggota` = `anggota`.`kode_anggota` and `master_transaksi`.`kode_pegawai` = `pegawai`.`kode_pegawai` ;

-- --------------------------------------------------------

--
-- Structure for view `tampil_buku`
--
DROP TABLE IF EXISTS `tampil_buku`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil_buku`  AS  select `buku`.`kode_buku` AS `kode_buku`,`buku`.`judul_buku` AS `judul_buku`,`buku`.`isbn` AS `isbn`,`penulis`.`nama_penulis` AS `nama_penulis`,`penerbit`.`nama_penerbit` AS `nama_penerbit`,`kategori`.`nama_kategori` AS `nama_kategori`,`buku`.`tanggal_terbit` AS `tanggal_terbit`,`buku`.`jumlah_halaman` AS `jumlah_halaman`,`rak`.`nama_rak` AS `nama_rak`,`buku`.`tanggal_pengadaan` AS `tanggal_pengadaan`,`buku`.`stok` AS `stok` from ((((`buku` join `penulis`) join `penerbit`) join `kategori`) join `rak`) where `penulis`.`kode_penulis` = `buku`.`kode_penulis` and `penerbit`.`kode_penerbit` = `buku`.`kode_penerbit` and `kategori`.`kode_kategori` = `buku`.`kode_kategori` and `rak`.`kode_rak` = `buku`.`kode_rak` ;

-- --------------------------------------------------------

--
-- Structure for view `tampil_buku_laris`
--
DROP TABLE IF EXISTS `tampil_buku_laris`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil_buku_laris`  AS  select `buku`.`kode_buku` AS `kode_buku`,`buku`.`judul_buku` AS `judul_buku`,`penulis`.`nama_penulis` AS `nama_penulis`,`penerbit`.`nama_penerbit` AS `nama_penerbit`,`kategori`.`nama_kategori` AS `nama_kategori`,`rak`.`nama_rak` AS `nama_rak`,`buku`.`stok` AS `stok`,`detail_transaksi`.`jumlah_buku` AS `jumlah_buku`,`detail_transaksi`.`status` AS `status`,count(0) AS `COUNT(*)` from (((((`detail_transaksi` join `buku`) join `penulis`) join `penerbit`) join `kategori`) join `rak`) where `detail_transaksi`.`kode_buku` = `buku`.`kode_buku` and `buku`.`kode_penulis` = `penulis`.`kode_penulis` and `buku`.`kode_penerbit` = `penerbit`.`kode_penerbit` and `buku`.`kode_kategori` = `kategori`.`kode_kategori` and `rak`.`kode_rak` = `buku`.`kode_rak` group by `buku`.`kode_buku` order by count(0) desc ;

-- --------------------------------------------------------

--
-- Structure for view `tampil_rak`
--
DROP TABLE IF EXISTS `tampil_rak`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil_rak`  AS  select `rak`.`kode_rak` AS `kode_rak`,`rak`.`nama_rak` AS `nama_rak`,`kategori`.`nama_kategori` AS `nama_kategori` from (`rak` join `kategori`) where `rak`.`kode_kategori` = `kategori`.`kode_kategori` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`kode_anggota`),
  ADD UNIQUE KEY `username_anggota` (`username_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `kode_penulis` (`kode_penulis`),
  ADD KEY `kode_penerbit` (`kode_penerbit`),
  ADD KEY `kode_kategori` (`kode_kategori`),
  ADD KEY `buku_ibfk_4` (`kode_rak`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `kode_buku` (`kode_buku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `master_transaksi`
--
ALTER TABLE `master_transaksi`
  ADD KEY `kode_transaksi` (`kode_transaksi`),
  ADD KEY `kode_anggota` (`kode_anggota`),
  ADD KEY `kode_pegawai` (`kode_pegawai`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`kode_pegawai`),
  ADD UNIQUE KEY `username_pegawai` (`username_pegawai`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`kode_penerbit`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`kode_penulis`);

--
-- Indexes for table `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`kode_rak`),
  ADD KEY `kode_kategori` (`kode_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `kode_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `kode_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `kode_penerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `kode_penulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kode_penulis`) REFERENCES `penulis` (`kode_penulis`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`kode_penerbit`) REFERENCES `penerbit` (`kode_penerbit`),
  ADD CONSTRAINT `buku_ibfk_3` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`),
  ADD CONSTRAINT `buku_ibfk_4` FOREIGN KEY (`kode_rak`) REFERENCES `rak` (`kode_rak`);

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`);

--
-- Constraints for table `master_transaksi`
--
ALTER TABLE `master_transaksi`
  ADD CONSTRAINT `master_transaksi_ibfk_1` FOREIGN KEY (`kode_transaksi`) REFERENCES `detail_transaksi` (`kode_transaksi`),
  ADD CONSTRAINT `master_transaksi_ibfk_2` FOREIGN KEY (`kode_anggota`) REFERENCES `anggota` (`kode_anggota`),
  ADD CONSTRAINT `master_transaksi_ibfk_3` FOREIGN KEY (`kode_pegawai`) REFERENCES `pegawai` (`kode_pegawai`);

--
-- Constraints for table `rak`
--
ALTER TABLE `rak`
  ADD CONSTRAINT `rak_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
