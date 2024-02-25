-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 05:57 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengiriman`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `del_no` varchar(15) NOT NULL,
  `id_kategori` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama`, `satuan`, `del_no`, `id_kategori`) VALUES
('BRG0001', 'BRAKE SHOE HONDA ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0002', 'BRAKE SHOE KHARISMA', 'SATUAN 1', 'Box', 'KTG02'),
('BRG0003', 'BRAKE SHOE SUPRA FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0004', 'BRAKE SHOE YAMAHA ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0005', 'PAD SET HONDA BLADE - ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0006', 'PAD SET HONDA SUPRA X 125 - AS', 'SATUAN 1', 'BOX', 'KTG01'),
('BRG0007', 'PAD SET SUPRA FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0008', 'PAD SET SUPRA X 125 - ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0009', 'PAD SET VIXION ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0010', 'PAD SET JUPITER-MX ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0011', 'PAD SET VEGA-ZR ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0012', 'PAD SET MIO FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0013', 'PAD SET FZR FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0014', 'PAD SET JUPITER-MX FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0015', 'PAD SET VEGA-ZR FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0016', 'PAD SET TORNADO ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0017', 'PAD SET TIGER F ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0018', 'PAD SET THUNDER 125 ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0019', 'PAD SET THUNDER 125 FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0020', 'PAD SET VARIO - ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0021', 'PAD SET SPIN - ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0022', 'PAD SET SPIN - FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0023', 'SPRING FRONT FORK KHARISMA ASP', 'SATUAN 2', 'Box', 'KTG02'),
('BRG0024', 'SPRING FRONT FORK SUPRA ASP', 'SATUAN 2', 'Box', 'KTG02'),
('BRG0025', 'BOTOL ULTRATEC 0.8L 2016 - RED', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0026', 'BOTOL SUPREME XX 50 0.8L 2016 ', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0027', 'BOTOL AHM OIL 0.8L MPX-1 10W-3', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0028', 'BOTOL MPX-1 0.8L', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0029', 'BOTOL SPX1 FEDERAL 0.8L', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0030', 'BOTOL SPX1 2014 REPSOL 1.0L', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0031', 'BOTOL SPX-1 1.2L 2016', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0032', 'BOTOL SUPREME XX 30 0.8L 2016-', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0033', 'BOTOL FEDERAL YMATIC 0.8L 2016', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0034', 'BOTOL AHM OIL 1.0L MPX-1 10W-3', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0035', 'BOTOL MPX1 AHM 2014 1.0L', 'SATUAN 3', 'PALLET', 'KTG03');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengiriman`
--

CREATE TABLE `detail_pengiriman` (
  `id_detail` int(4) NOT NULL,
  `id_pengiriman` varchar(14) NOT NULL,
  `id_barang` varchar(7) NOT NULL,
  `qty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pengiriman`
--

INSERT INTO `detail_pengiriman` (`id_detail`, `id_pengiriman`, `id_barang`, `qty`) VALUES
(1, 'KRM20160820001', 'BRG0001', 1),
(2, 'KRM20160820001', 'BRG0002', 3),
(3, 'KRM20161015001', 'BRG0006', 1),
(4, 'KRM20161015001', 'BRG0035', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`, `keterangan`) VALUES
('KTG01', 'KATEGORI 1', 'KATEGORI 1'),
('KTG02', 'KATEGORI 2', 'KATEGORI 2'),
('KTG03', 'KATEGORI 3', 'KATEGORI 3');

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `id_kurir` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`id_kurir`, `nama`, `jenis_kelamin`, `telepon`, `alamat`, `password`) VALUES
('KRR01', 'EKO ', 'Laki-Laki', '081385195955', 'TANGERANG', 'ee9cc68e583241dcb548e4217d8c8eb9'),
('KRR02', 'ERIK', 'Laki-Laki', '081284959589', 'TANGERANG', '6faae43d506a230beedcdbff231b478e'),
('KRR03', 'TRIBUDI', 'Laki-Laki', '081219900381', 'TANGERANG', 'b4ae1f68447e3df8a1ce6c4dc3660c5b'),
('KRR04', 'SUMANTA', 'Laki-Laki', '081382630321', 'TANGERANG', 'af7ece06ca8c285657e6a8860e58c44f'),
('KRR05', 'UDRI', 'Laki-Laki', '081210426881', 'TANGERANG', 'a82ae164e11127090055c6c7fbb6a888'),
('KRR06', 'SAEPUL', 'Laki-Laki', '081314485383', 'TANGERANG', '1cdb001697052dcdf055da6b82124bc3'),
('KRR07', 'yanto', 'Laki-Laki', '081284213311', 'Gandul, 16512', '81dc9bdb52d04dc20036dbd8313ed055'),
('KRR08', 'SUJONO', 'Laki-Laki', '0812345678', 'Jonggol, West Java', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `telepon`, `alamat`) VALUES
('CST0001', 'ASTRA OTOPART', '021-4603550', 'jakarta'),
('CST0002', 'Idemitsu Lube Indonesia', '021-8911 4611', 'JL Permata Raya, Kawasan Industri KIIC, Lot BB/4A, Karawang, Jawa Barat,'),
('CST0003', 'Federal Karyatama', '021-4613583', 'Jl. Pulobuaran Raya, RW.9, Jatinegara, Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13910');

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` varchar(14) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` varchar(7) NOT NULL,
  `id_kurir` varchar(5) NOT NULL,
  `no_kendaraan` varchar(8) NOT NULL,
  `no_po` varchar(15) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  `penerima` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `tanggal`, `id_pelanggan`, `id_kurir`, `no_kendaraan`, `no_po`, `keterangan`, `penerima`, `photo`, `status`) VALUES
('KRM20160820001', '2016-08-20', 'CST0001', 'KRR01', 'B021ZIG', '8732984732984', '', '', '', 1),
('KRM20161015001', '2016-10-15', 'CST0003', 'KRR08', 'B03L', 'km1230jg', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
('USR01', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
('USR02', 'finance', '1a1dc91c907325c69271ddf0c944bc72', 2),
('USR03', 'gudang', '1a1dc91c907325c69271ddf0c944bc72', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  MODIFY `id_detail` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
