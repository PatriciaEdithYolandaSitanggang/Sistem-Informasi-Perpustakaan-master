-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 18. Januari 2019 jam 10:42
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `loker_buku` varchar(25) NOT NULL,
  `no_rak` int(5) NOT NULL,
  `no_laci` int(5) NOT NULL,
  `no_boks` int(5) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `nama_pengarang` varchar(100) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=42 ;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `loker_buku`, `no_rak`, `no_laci`, `no_boks`, `judul_buku`, `nama_pengarang`, `tahun_terbit`, `penerima`, `penerbit`, `status`, `keterangan`) VALUES
(20, 'Buku Novel', 22, 23, 24, 'Harry Potter dan Batu Bertuah', 'J.K. Rowling', '1997-06-26', 'Karina', 'Bloomsbury', 'Ada', '5'),
(22, 'Buku Anak Anak', 89, 898, 989, 'Majalah Genie', 'Mahkamah', '2019-12-31', 'Permata', 'CV. Badai', 'Ada', '12'),
(24, 'Buku Resep Masakan', 23, 221, 21, 'Masakan Tradisional Indonesia', 'Chef Juna', '2018-12-02', 'Ronaldo', 'UD. Skyscraper', 'Ada', '20'),
(25, 'Buku Novel', 2, 2, 12, 'Hujan', 'Tere Liye', '2016-01-03', 'Diva', 'Gramedia Pustaka Utama', 'Ada', '15'),
(26, 'Buku Novel', 3, 3, 12, 'Tentang Kamu', 'Tere Liye', '2016-10-24', 'Winter', 'Gramedia Pustaka Utama', 'Ada', '45'),
(27, 'Buku Novel', 3, 3, 3, 'Harry Potter dan Kamar Rahasia', 'J.K. Rowling', '1998-07-08', 'Karina', 'Bloomsbury', 'Ada', '12'),
(28, 'Buku Anak Anak', 4, 4, 123, 'Bermain dengan alat tradisional', 'Aan sutejo', '2019-01-03', 'Mark', 'Gramedia', 'Ada', '31'),
(29, 'Buku Novel', 5, 5, 5, 'Harry Potter dan Tawanan Azkaban', 'J.K. Rowling', '1999-07-8', 'Giselle', 'Bloomsbury', 'Ada', '16'),
(30, 'Buku Novel', 6, 6, 6, 'Harry Potter dan Piala Api', 'J.K. Rowling', '2000-07-08', 'Renjun', 'Bloomsbury', 'Ada', '11'),
(31, 'Buku Anak Anak', 7, 7, 7, 'Cara mudah membaca tanpa mengeja', 'irma yani', '2019-01-06', 'Jeno', 'Gramdia', 'Ada', '25'),
(32, 'Buku Anak Anak', 8, 8, 8, 'belajar menebalkan', 'tri hawanda', '2018-12-30', 'Lisa', 'Andalas', 'Ada', '8'),
(33, 'Buku Novel', 8, 8, 8, 'Bumi Manusia', 'Pramoedya Ananta Toer', '1980-08-25', 'Karina', 'Lentera Dipantara', 'Ada', '21'),
(34, 'Buku Anak Anak', 9, 9, 9, 'Mari bernyanyi bersama', 'Darwin', '2019-01-10', 'Winter', 'Erlangga', 'Ada', '20'),
(35, 'Buku Anak Anak', 10, 10, 10, 'Makanan sehat', 'endang Mr', '2019-01-17', 'Giselle', 'Swedia', 'Ada', '15'),
(36, 'Buku Novel', 11, 111, 1, 'Cantik Itu Luka', 'Eka Kurniawan', '2002-01-01', 'Ningning', 'Penerbit Jendela', 'Ada', '16'),
(37, 'Buku Anak Anak', 12, 12, 12, 'Mewarnai gambar', 'Irma yani', '2019-01-14', 'Mark', 'Gria husada', 'Ada', '18'),
(38, 'Buku Anak Anak', 13, 13, 13, 'Menggunting dan menempel', 'nuraini', '2019-01-12', 'Renjun', 'Gagas media', 'Ada', '15'),
(39, 'Buku Anak Anak', 14, 14, 14, 'Mengenal Hewan', 'Astuti', '2019-01-06', 'Jeno', 'Aksara', 'Ada', '20'),
(40, 'Buku Anak Anak', 15, 15, 15, '4 sehat 5 sempurna', 'tri aksara', '2019-01-02', 'Jaemin', 'Elfata Andi', 'Ada', '25'),
(41, 'Buku Novel', 16, 16, 16, 'Laskar Pelangi', 'Andrea Hirata', '2005-01-01', 'Jisung', 'Bentang Pustaka', 'Ada', '28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `judul_buku` varchar(50) NOT NULL,
  `peminjam` varchar(50) NOT NULL,
  `tgl_pinjam` varchar(25) NOT NULL,
  `tgl_kembali` varchar(25) NOT NULL,
  `lama_pinjam` int(5) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`judul_buku`, `peminjam`, `tgl_pinjam`, `tgl_kembali`, `lama_pinjam`, `keterangan`, `id`) VALUES
('Harry Potter dan Piala Api', 'Winter', '2024-03-23', '2024-04-11', 19, 'Untuk Remaja', 15),
('Hujan', 'Mark', '2024-04-02', '2024-04-14', 12, 'untuk Remaja', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'patriciastg251004@gmail.com', 'Patricia Edith Yolanda Sitanggang', 1, 'Staff Perpustakaan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
