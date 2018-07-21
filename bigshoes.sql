-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2018 at 03:55 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigshoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'admin', 'Big Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Jabodetabek', 13000),
(2, 'Luar Jabodetabek', 17000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(1, 'madzkur@gmail.com', 'madzkur', 'madzkur', '082238952502', 'perumahan'),
(2, 'hasanmadzkur@gmail.com', 'hasan', 'hasan madzkur', '082238952503', 'muia'),
(3, 'hasan@gmail.com', 'hasan123', 'hasan', '0812345667', 'indah'),
(7, 'b@yahoo.com', '123', 'b aja dong', '123123123', 'kudus');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`) VALUES
(1, 1, 1, '2018-07-02', 1700000, '', 0, 0),
(2, 1, 1, '2018-07-19', 800000, '', 0, 0),
(3, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(4, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(5, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(6, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(7, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(8, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(9, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(10, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(11, 3, 2, '2018-07-18', 4117000, '', 0, 0),
(12, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(13, 3, 1, '2018-07-18', 4113000, '', 0, 0),
(14, 3, 2, '2018-07-18', 4117000, '', 0, 0),
(15, 3, 1, '2018-07-18', 3013000, '', 0, 0),
(16, 3, 1, '2018-07-18', 3013000, '', 0, 0),
(17, 3, 1, '2018-07-18', 3013000, '', 0, 0),
(18, 3, 1, '2018-07-18', 1913000, '', 0, 0),
(19, 2, 1, '2018-07-18', 1113000, '', 0, 0),
(20, 2, 1, '2018-07-18', 13000, '', 0, 0),
(21, 2, 2, '2018-07-18', 17000, '', 0, 0),
(22, 2, 2, '2018-07-18', 1117000, '', 0, 0),
(23, 2, 2, '2018-07-18', 1117000, '', 0, 0),
(24, 2, 1, '2018-07-18', 1113000, '', 0, 0),
(25, 3, 1, '2018-07-18', 1113000, '', 0, 0),
(26, 3, 1, '2018-07-18', 13000, '', 0, 0),
(27, 3, 1, '2018-07-18', 13000, '', 0, 0),
(28, 3, 1, '2018-07-18', 13000, '', 0, 0),
(29, 3, 2, '2018-07-18', 1117000, '', 0, 0),
(30, 2, 1, '2018-07-18', 1913000, '', 0, 0),
(31, 3, 1, '2018-07-18', 1913000, '', 0, 0),
(32, 4, 1, '2018-07-19', 1913000, 'Jabodetabek', 13000, 321321);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 1, 1, '', 0, 0, 0, 0),
(2, 1, 2, 3, '', 0, 0, 0, 0),
(3, 0, 3, 2, '', 0, 0, 0, 0),
(4, 0, 4, 1, '', 0, 0, 0, 0),
(5, 0, 3, 2, '', 0, 0, 0, 0),
(6, 0, 4, 1, '', 0, 0, 0, 0),
(7, 0, 3, 2, '', 0, 0, 0, 0),
(8, 0, 4, 1, '', 0, 0, 0, 0),
(9, 0, 3, 2, '', 0, 0, 0, 0),
(10, 0, 4, 1, '', 0, 0, 0, 0),
(11, 0, 3, 2, '', 0, 0, 0, 0),
(12, 0, 4, 1, '', 0, 0, 0, 0),
(13, 0, 3, 2, '', 0, 0, 0, 0),
(14, 0, 4, 1, '', 0, 0, 0, 0),
(15, 0, 3, 2, '', 0, 0, 0, 0),
(16, 0, 4, 1, '', 0, 0, 0, 0),
(17, 0, 3, 2, '', 0, 0, 0, 0),
(18, 0, 4, 1, '', 0, 0, 0, 0),
(19, 0, 3, 2, '', 0, 0, 0, 0),
(20, 0, 4, 1, '', 0, 0, 0, 0),
(21, 13, 3, 2, '', 0, 0, 0, 0),
(22, 13, 4, 1, '', 0, 0, 0, 0),
(23, 14, 3, 2, '', 0, 0, 0, 0),
(24, 14, 4, 1, '', 0, 0, 0, 0),
(25, 15, 3, 1, '', 0, 0, 0, 0),
(26, 15, 4, 1, '', 0, 0, 0, 0),
(27, 19, 3, 1, 'vans 2011', 1100000, 1000, 0, 0),
(28, 0, 3, 1, 'vans 2011', 1100000, 1000, 1000, 1100000),
(29, 0, 3, 1, 'vans 2011', 1100000, 1000, 1000, 1100000),
(30, 0, 4, 1, 'nike', 1900000, 1400, 1400, 1900000),
(31, 0, 4, 1, 'nike', 1900000, 1400, 1400, 1900000),
(32, 0, 3, 1, 'vans 2011', 1100000, 1000, 1000, 1100000),
(33, 0, 6, 1, 'Nike Air Jordan', 4500000, 2100, 2100, 4500000),
(34, 0, 4, 1, 'reebok', 2500000, 1900, 1900, 2500000),
(35, 0, 1, 1, 'vans 2011', 1100000, 1000, 1000, 1100000),
(36, 0, 6, 1, 'Nike Air Jordan', 4500000, 2100, 2100, 4500000),
(37, 0, 2, 1, 'nike', 1900000, 1400, 1400, 1900000),
(38, 0, 1, 1, 'vans 2011', 1100000, 1000, 1000, 1100000),
(39, 0, 2, 1, 'nike', 1900000, 1400, 1400, 1900000),
(40, 32, 2, 1, 'nike', 1900000, 1400, 1400, 1900000),
(41, 0, 1, 1, 'vans 2011', 1100000, 1000, 1000, 1100000),
(42, 0, 3, 1, 'vans sk8', 1200000, 1800, 1800, 1200000),
(43, 0, 4, 1, 'reebok', 2500000, 1900, 1900, 2500000),
(44, 0, 6, 1, 'Nike Air Jordan', 4500000, 2100, 2100, 4500000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(1, 'vans 2011', 1100000, 1000, 'vans.png', 'baru gan									'),
(2, 'nike', 1900000, 1400, 'nike.png', 'nike ori gan'),
(3, 'vans sk8', 1200000, 1800, 'vanssk8.JPG', 'vans sk8 ori				'),
(4, 'reebok', 2500000, 1900, 'reebok.png', 'Reebok Authentic				'),
(5, 'Skechers', 1400000, 1900, 'skechers.jpg', 'Skechers Authentic'),
(6, 'Nike Air Jordan', 4500000, 2100, 'nikeairjordan.jpg', 'Nike Air Jordan Authentic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
