-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2023 pada 02.37
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblelang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_lelang`
--

CREATE TABLE `history_lelang` (
  `id_history` int(11) NOT NULL,
  `id_lelang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `penawaran_harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `history_lelang`
--

INSERT INTO `history_lelang` (`id_history`, `id_lelang`, `id_barang`, `id_user`, `penawaran_harga`) VALUES
(33, 67, 73, 7, 750000000),
(39, 75, 88, 7, 900000000),
(40, 74, 87, 7, 9000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `tgl` date NOT NULL,
  `harga_awal` int(20) NOT NULL,
  `status_barang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `keterangan`, `photo`, `tgl`, `harga_awal`, `status_barang`) VALUES
(72, 'Tas Channel White Shine', 'New Item KB01', 'cl15.jpg', '2023-03-02', 75000000, 'terjual'),
(73, 'Tas Channel Broken White', 'New Item KB02', 'cl24.jpg', '2023-03-02', 70000000, 'terjual'),
(74, 'Tas Channel Classy Black', 'New Item KB03', 'cl34.jpg', '2023-03-02', 80000000, 'terjual'),
(75, 'Tas Channel White Rgold', 'New Item KB04', 'cl45.jpg', '2023-03-02', 75000000, 'terjual'),
(76, 'Tas Dior White Belt ', 'New Item KB01', 'dr13.JPG', '2023-03-02', 90000000, 'terjual'),
(77, 'Tas Dior Creamy Acc', 'New Item KB02', 'dr22.JPG', '2023-03-02', 80000000, 'terjual'),
(78, 'Tas Dior Classy White S', 'New Item KB03', 'dr32.JPG', '2023-03-02', 90000000, 'terjual'),
(79, 'Tas Dior Square White', 'New Item KB04', 'dr41.JPG', '2023-03-02', 90000000, 'terjual'),
(80, 'Tas Dior Mint Green', 'New Item KB05', 'dr52.JPG', '2023-03-02', 95000000, 'terjual'),
(81, 'Tas Dior Mini White S', 'New Item KB06', 'dr63.JPG', '2023-03-02', 90000000, 'terjual'),
(83, 'Buku ceritas', 'y', 'lv66.jpg', '2023-03-02', 7000, 'terjual'),
(84, 'tass', 'y', 'lv81.jpg', '2023-03-04', 9000, 'terjual'),
(85, 'oke', 'yy', 'lv7.jpg', '2023-03-04', 8000, 'terjual'),
(86, 'y', 'oke', 'lv71.jpg', '2023-03-04', 900000, 'terjual'),
(87, 'rwr', 'y', 'lv72.jpg', '2023-03-04', 8000, 'terjual'),
(88, 'rawrrrr', 'saya', 'lv91.jpg', '2023-03-05', 80000, 'terjual'),
(89, 'yoo', 'jhgfds', 'lv67.jpg', '2023-03-05', 7000, 'Terjual'),
(90, 'Gucci black mamba', 'warna hitam', 'lv73.jpg', '2023-03-05', 90000000, 'terjual'),
(92, 'MINI LADY DIOR BAG', 'The Lady Dior handbag epitomizes the House\'s vision of elegance and beauty. Refined and sleek, the timeless creation is crafted in latte lambskin and covered with Cannage stitching, creating an instantly recognizable quilted texture. The pale gold-finish ', 'dr15.JPG', '2023-03-05', 60000000, 'terjual'),
(93, 'MEDIUM LADY D-JOY BAG', 'The Lady D-Joy bag captures the House\'s vision of elegance and beauty. Refined and sleek, this timeless style showcases the iconic streamlined aesthetic of the Lady Dior line. Crafted in latte lambskin with Cannage stitching, it is enhanced by pale gold-f', 'dr23.JPG', '2023-03-04', 61000000, 'terjual'),
(94, 'SMALL LADY DIOR MY ABCDIO', 'The Lady Dior My ABCDior bag epitomizes Dior\'s vision of elegance and beauty. Sleek and refined, the timeless style is crafted in latte lambskin with Cannage stitching, creating the instantly recognizable quilted texture. Pale gold-finish metal \'D.I.O.R.\'', 'dr33.JPG', '2023-03-02', 64000000, 'terjual'),
(95, 'MEDIUM DIOR CARO BAG', 'The Dior Caro bag combines modernity with timeless elegance. The medium silhouette is crafted in ivory calfskin with Cannage topstitching. The supple bag features a flap adorned with an antique gold-finish metal \'CD\' twist clasp, inspired by the seal of a', 'dr42.JPG', '2023-03-03', 65000000, 'terjual'),
(96, 'SMALL DIOR BOBBY BAG', 'The Dior Bobby bag is a hobo style showcasing sophisticated lines and harmonious proportions. The silhouette is crafted from latte box calfskin with a supple suede calfskin interior, and is enhanced by antique gold-finish metal hardware. Its removable and', 'dr64.JPG', '2023-03-05', 67000000, 'terjual');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_lelang`
--

CREATE TABLE `tb_lelang` (
  `id_lelang` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_lelang` datetime NOT NULL,
  `harga_akhir` int(20) UNSIGNED DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_petugas` int(11) NOT NULL,
  `status` enum('dibuka','ditutup') NOT NULL,
  `tgl_akhir` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_lelang`
--

INSERT INTO `tb_lelang` (`id_lelang`, `nama_barang`, `id_barang`, `tgl_lelang`, `harga_akhir`, `id_user`, `id_petugas`, `status`, `tgl_akhir`) VALUES
(59, '', 81, '2023-02-02 11:55:00', NULL, NULL, 2, 'ditutup', NULL),
(60, '', 80, '2023-02-06 11:56:00', NULL, NULL, 2, 'ditutup', '2023-03-05 11:46:00'),
(61, '', 79, '2023-03-08 11:59:00', 95000000, 0, 2, 'ditutup', '2023-03-04 12:14:00'),
(62, '', 78, '2023-03-10 12:02:00', NULL, NULL, 2, 'ditutup', NULL),
(63, '', 77, '2023-03-13 12:02:00', NULL, NULL, 2, 'ditutup', '2023-03-05 07:33:01'),
(67, '', 73, '2023-02-23 12:05:00', 750000000, 7, 2, 'ditutup', '2023-03-03 11:26:40'),
(74, '', 87, '2023-03-05 05:49:00', 9000, 7, 2, 'ditutup', '2023-03-06 05:52:00'),
(75, '', 88, '2023-03-05 14:02:00', 900000000, 7, 2, 'ditutup', '2023-03-05 15:02:00'),
(77, '', 92, '2023-03-05 21:08:00', NULL, NULL, 2, 'dibuka', '2023-03-26 00:08:00'),
(78, '', 95, '2023-03-05 21:18:00', NULL, NULL, 2, 'dibuka', '2023-03-28 00:00:00'),
(79, '', 94, '2023-03-05 21:19:00', NULL, NULL, 2, 'dibuka', '2023-03-22 21:19:00'),
(80, '', 93, '2023-03-05 21:19:00', NULL, NULL, 2, 'dibuka', '2023-03-25 21:20:00'),
(81, '', 96, '2023-03-05 21:22:00', NULL, NULL, 2, 'dibuka', '2023-03-27 21:22:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` enum('administrator','petugas','masyarakat') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'administrator'),
(2, 'petugas'),
(3, 'masyarakat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_masyarakat`
--

CREATE TABLE `tb_masyarakat` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(125) NOT NULL,
  `telp` varchar(25) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_masyarakat`
--

INSERT INTO `tb_masyarakat` (`id_user`, `nama_lengkap`, `username`, `password`, `telp`, `id_level`) VALUES
(1, 'Hilyatus zahro', 'hilya', '202cb962ac59075b964b07152d234b70', '082273615476', 3),
(2, 'shinta niasari', 'shinta', '202cb962ac59075b964b07152d234b70', '085567871123', 3),
(3, 'yaya', 'yaya', '202cb962ac59075b964b07152d234b70', '0867876765456', 3),
(4, 'admin2', 'admin2', '202cb962ac59075b964b07152d234b70', '093738928898', 3),
(5, 'popo', 'popo', '202cb962ac59075b964b07152d234b70', '0928228262826', 3),
(6, 'dinn', 'dinn', '202cb962ac59075b964b07152d234b70', '086567876567', 3),
(7, 'dindun', 'dindun', 'ac9b4e0b6a21758534db2a6324d34a54', '098989786765', 3),
(8, 'discaa', 'discaa', '827ccb0eea8a706c4c34a16891f84e7b', '089765432123', 3),
(9, 'Bianca', 'bianca', 'ac9b4e0b6a21758534db2a6324d34a54', '085678987654', 3),
(10, 'Dinda Putri Aisyah', 'dindaputriaisyah', 'ac9b4e0b6a21758534db2a6324d34a54', '085204576924', 3),
(11, 'rara', 'rara', 'ac9b4e0b6a21758534db2a6324d34a54', '086567876567', 3),
(12, 'Sekar', 'sekar', '81dc9bdb52d04dc20036dbd8313ed055', '082123123124', 3),
(13, 'Rani Tania Putri', 'Rani', 'ac9b4e0b6a21758534db2a6324d34a54', '098789876567', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `id_level`) VALUES
(2, 'aisyah', 'aisyah', 'sandi', 2),
(12, 'dinda', 'dinda', 'ac9b4e0b6a21758534db2a6324d34a54', 1),
(17, 'rani', 'rani', 'ac9b4e0b6a21758534db2a6324d34a54', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `history_lelang`
--
ALTER TABLE `history_lelang`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `id_lelang` (`id_lelang`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tb_lelang`
--
ALTER TABLE `tb_lelang`
  ADD PRIMARY KEY (`id_lelang`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`id_level`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `history_lelang`
--
ALTER TABLE `history_lelang`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `tb_lelang`
--
ALTER TABLE `tb_lelang`
  MODIFY `id_lelang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `history_lelang`
--
ALTER TABLE `history_lelang`
  ADD CONSTRAINT `history_lelang_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `history_lelang_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `tb_masyarakat` (`id_user`),
  ADD CONSTRAINT `history_lelang_ibfk_4` FOREIGN KEY (`id_lelang`) REFERENCES `tb_lelang` (`id_lelang`);

--
-- Ketidakleluasaan untuk tabel `tb_lelang`
--
ALTER TABLE `tb_lelang`
  ADD CONSTRAINT `tb_lelang_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`),
  ADD CONSTRAINT `tb_lelang_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_masyarakat` (`id_user`),
  ADD CONSTRAINT `tb_lelang_ibfk_3` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`);

--
-- Ketidakleluasaan untuk tabel `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  ADD CONSTRAINT `tb_masyarakat_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`);

--
-- Ketidakleluasaan untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD CONSTRAINT `tb_petugas_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
