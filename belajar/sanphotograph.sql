-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 06:29 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanphotograph`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `idcomment` int(10) NOT NULL,
  `tanggal_comment` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `idpost` int(10) NOT NULL,
  `user` int(11) NOT NULL,
  `comment` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`idcomment`, `tanggal_comment`, `idpost`, `user`, `comment`, `email`) VALUES
(39, '2005-07-18 17:00:00.000000', 0, 0, 'tes', 'maulananurulikhsan@gmail.com'),
(40, '2005-07-18 17:00:00.000000', 0, 0, 'tes', 'maulananurulikhsan@gmail.com'),
(41, '2005-07-18 17:00:00.000000', 0, 0, 'satu\r\n', 'Maulana01'),
(42, '2005-07-18 17:00:00.000000', 0, 0, 'tes', 'admin'),
(43, '2006-07-18 17:00:00.000000', 0, 0, 'tes', 'maulananurulikhsan@gmail.com'),
(44, '2006-07-18 17:00:00.000000', 0, 0, 'tes', 'Maulana01'),
(45, '2006-07-18 17:00:00.000000', 0, 0, 'tes', 'maulananurulikhsan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(10) NOT NULL,
  `waktu_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idsession` varchar(50) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `page` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `waktu_visit`, `idsession`, `ipaddress`, `page`) VALUES
(1, '2019-07-04 17:00:00', 'ci131tviikq7u4o01hgnhp62bk', '::1', ''),
(2, '2019-07-04 17:00:00', 'ci131tviikq7u4o01hgnhp62bk', '::1', ''),
(3, '2019-07-04 17:00:00', 'ci131tviikq7u4o01hgnhp62bk', '::1', ''),
(4, '2019-07-04 17:00:00', 'ci131tviikq7u4o01hgnhp62bk', '::1', ''),
(5, '2019-07-04 17:00:00', 'ci131tviikq7u4o01hgnhp62bk', '::1', ''),
(6, '2019-07-04 17:00:00', '', '::1', ''),
(7, '2019-07-04 17:00:00', '', '::1', ''),
(8, '2019-07-04 17:00:00', '', '::1', ''),
(9, '2019-07-05 16:33:06', 'ci131tviikq7u4o01hgnhp62bk', '::1', ''),
(10, '2019-07-04 17:00:00', '', '::1', 'Chrome/Opera'),
(11, '2019-07-05 16:41:48', '', '::1', ''),
(13, '2019-07-05 16:44:48', '', '::1', ''),
(14, '2019-07-05 16:45:00', '', '::1', ''),
(15, '2019-07-05 17:06:33', '', '::1', ''),
(18, '2019-07-05 17:18:37', '', '::1', ''),
(19, '2019-07-05 17:19:33', '', '::1', ''),
(20, '2019-07-05 17:22:27', '', '::1', ''),
(21, '2019-07-05 17:30:18', '', '::1', ''),
(22, '2019-07-05 17:35:20', '', '::1', ''),
(23, '2019-07-05 17:38:13', '', '::1', ''),
(24, '2019-07-05 17:45:48', '', '::1', ''),
(30, '2019-07-05 18:00:02', '', '::1', ''),
(31, '2019-07-06 03:57:59', '', '::1', ''),
(32, '2019-07-06 04:01:03', '', '::1', ''),
(33, '2019-07-06 04:23:40', '', '::1', ''),
(34, '2019-07-06 04:24:54', '', '::1', ''),
(35, '2019-07-06 04:25:29', '', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(10) NOT NULL,
  `namakategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`) VALUES
(1, 'Berita'),
(2, 'Profil'),
(3, 'Pengumuman');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `idpost` int(10) NOT NULL,
  `tanggal_post` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `penulis` varchar(25) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `idkategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`idpost`, `tanggal_post`, `penulis`, `judul`, `isi`, `idkategori`) VALUES
(1, '2019-06-10 17:00:00.000000', 'ikhsan', 'FOTOGRAFI', 'Fotografi adalah proses melukis/menulis dengan menggunakan media cahaya. Sebagai istilah umum, fotografi berarti proses atau metode untuk menghasilkan gambar atau foto dari suatu objek dengan merekam pantulan cahaya yang mengenai objek tersebut pada media yang peka cahaya.', '1'),
(2, '2019-06-11 15:33:48.445013', 'maulana', 'teknik fotografi', 'Teknik-teknik fotografi:\r\n\r\nZooming\r\nZooming adalah sebuah Teknik yang membuat objek utama terlihat jelas, sementara background terlihat kabur. Teknik ini berfungsi untuk mempertegas objek dan membuatnya makin mencolok. Perubahan panjang fokus hanya dapat dilakukan dengan lensa zoom, gunakan kecepatan rana tidak lebih dari 1/30 detik untuk menghasilkan kesan gerak, sebaiknya pakailah tripod.\r\nTeknik Panning\r\nPada teknik ini objek yang bergerak akan terlihat tajam, sementara background yang diam justru terlihat kabur. Harus mengikuti objek ketika membidik, untuk mendapatkan foto secara maksimal: gunakan speed rendah (8-60) dan pakailah tripod.\r\n\r\nTeknik Macro\r\nTeknik foto macro merupakan sebuah teknik memotret dalam jarak yang sangat dekat, sehingga objek terlihat sangat besar, teknik ini biasanya menggunakan teknik jenis macro.\r\n\r\nTeknik Siluet\r\nSiluet artinya bayangan. Seperti sebutannya foto siluet hanya berupa bayangan. Siluet merupakan objek yang menutupi cahaya sehingga ia diterangi dari belakang secara total. Aturan dasar dari foto siluet adalah objek harus benar-benar terlihat hitam. Ini artinya tidak ada berkas cahaya pun yang menerobos masuk.\r\n\r\nTeknik Bulb\r\nKecepatan rana dapat diatur sesuai dengan waktu yang kita inginkan, dilakukan dengan menahan tombol pelepas rana dengan lebih lama, dapat digunakan kabel release dan tripod', '2'),
(3, '2019-06-29 08:36:18.639726', 'teknik pencahayaan', 'Teknik Pencahayaan', 'Teknik Fotografi: Contoh 1.Penataan Pencahayaan yang Berbeda\r\nPenataan satu cahaya. Sesuai dengan sebutannya, penataan satu cahaya menggunakan satu sumber cahaya. ...\r\n2.Penataan dua cahaya. ...\r\n3.Penataan pencahayaan dengan tiga cahaya atau lebih.', '3'),
(4, '2019-06-25 17:00:00.000000', 'ikhsan', 'abc', 'adad', '3'),
(8, '2019-06-28 17:00:00.000000', '', 'aaaku', 'cdafaada', '2'),
(9, '2019-06-28 17:00:00.000000', '', 'hantu', 'hantu disana', '1'),
(10, '2019-07-06 04:09:16.274232', 'maulana', 'php', 'web php', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(99) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`) VALUES
(1, 'admin', 'maulana01', 'maulananurulikhsan@gmail.com', 'admin'),
(11, 'faris', 'faris123', 'faris.fadilla99@gmail.com', 'mahasiswa'),
(12, 'Maulana', 'Maulana01', 'maulananurulikhsan@gmail.com', 'mahasiswa'),
(13, 'hafit', 'hafit123', 'hafitirfan@gmail.com', 'dosen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idcomment`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `idcomment` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `idpost` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
