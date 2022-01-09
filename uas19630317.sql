-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2022 pada 12.31
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas19630317`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `nop` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alm` varchar(100) NOT NULL,
  `dur` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `mob` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`nop`, `nama`, `alm`, `dur`, `note`, `mob`) VALUES
('1', 'ASEP', 'BANJARMASIN', 'HARIAN', '08111222333', 'XPANDER'),
('2', 'ADITYA', 'GANG NILAM N0 7 LOTABAT', 'HARIAN', '08123456789', 'XENIA'),
('3', 'UDIN', 'MARTAPURA JL BERKAT', 'HARIAN', '0812345678', 'JAZZ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `noktp` varchar(100) NOT NULL,
  `nopinjam` varchar(100) NOT NULL,
  `namalengkap` varchar(100) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `nohp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`noktp`, `nopinjam`, `namalengkap`, `ttl`, `nohp`, `alamat`) VALUES
('12', '20', 'asep', 'bjb, 17 01 2001', '098756566', 'bjb'),
('000111222333', '1', 'ASEP', 'BATOLA, 17 JUNI 1997', '08111222333', 'BINA MURNI DESA BUNGAS'),
('01234', '1', 'ADITYA', 'MARTAPURA, 17 MEI 2001', '08123456789', 'GANG NILAM NO 7 LOKTABAT'),
('12345678', '3', 'UDIN', 'BANJARMASIN, 13 MEI 2003', '0812345678', 'MARTAPURA JL BERKAT NO 11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `nmpenyewa` varchar(300) NOT NULL,
  `notrans` varchar(300) NOT NULL,
  `tglsewa` varchar(300) NOT NULL,
  `tglkembali` varchar(300) NOT NULL,
  `biaya` varchar(300) NOT NULL,
  `lmsewa` varchar(300) NOT NULL,
  `merkmobil` varchar(300) NOT NULL,
  `subtotal` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`nmpenyewa`, `notrans`, `tglsewa`, `tglkembali`, `biaya`, `lmsewa`, `merkmobil`, `subtotal`) VALUES
('UDIN', '3', 'Jan 9, 2022', 'Jan 11, 2022', '250000', '3', 'JAZZ', 750000),
('ADITYA', '2', 'Jan 10, 2022', 'Jan 12, 2022', '150000', '3', 'XENIA', 450000),
('ASEP', '1', 'Jan 6, 2022', 'Jan 8, 2022', '200000', '3', 'XPANDER', 600000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
