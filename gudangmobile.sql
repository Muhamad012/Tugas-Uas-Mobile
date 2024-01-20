-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 05:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudangmobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `KodeBarang` varchar(30) NOT NULL,
  `NamaBarang` varchar(50) NOT NULL,
  `JumlahStok` int(20) DEFAULT NULL,
  `Harga` double(15,2) DEFAULT NULL,
  `Satuan` varchar(15) NOT NULL,
  `TglAuditTerakhir` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`KodeBarang`, `NamaBarang`, `JumlahStok`, `Harga`, `Satuan`, `TglAuditTerakhir`) VALUES
('32212', 'Pena JOYKO', 101, 140000.00, 'Kotak', '2024-01-07 00:00:00'),
('4213', 'Penghapus GREEBEL', 200, 150000.00, 'Kotak', '2024-01-02 00:00:00'),
('5311', 'Pewarna FABLE CASTLE', 45, 450000.00, 'Kotak', '2023-11-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `username` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`username`, `password`) VALUES
('abrar', 'abrar');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `NomorPengiriman` varchar(50) NOT NULL,
  `NamaBarang` varchar(50) NOT NULL,
  `NamaPenerima` varchar(50) NOT NULL,
  `NomorTelepon` varchar(20) NOT NULL,
  `AlamatPenerima` varchar(100) NOT NULL,
  `JumlahKiriman` int(11) NOT NULL,
  `Berat` double(6,1) NOT NULL,
  `Pembayaran` varchar(20) NOT NULL,
  `Tanggal` varchar(50) NOT NULL,
  `Deskripsi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`NomorPengiriman`, `NamaBarang`, `NamaPenerima`, `NomorTelepon`, `AlamatPenerima`, `JumlahKiriman`, `Berat`, `Pembayaran`, `Tanggal`, `Deskripsi`) VALUES
('1234', 'Pena Joyko', 'Abrar', '083171779559', 'Fauzi', 2, 1.0, 'Tunai', '10 January 2024', 'Pembelian barang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KodeBarang`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`NomorPengiriman`),
  ADD UNIQUE KEY `NamaPengiriman` (`NomorPengiriman`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
