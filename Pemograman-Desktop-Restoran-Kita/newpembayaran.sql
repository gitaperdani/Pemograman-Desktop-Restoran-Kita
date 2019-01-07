-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2018 at 04:57 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newpembayaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `kodemenu` varchar(4) NOT NULL,
  `namamenu` varchar(20) NOT NULL,
  `namamakanan_minuman` varchar(60) NOT NULL,
  `harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`kodemenu`, `namamenu`, `namamakanan_minuman`, `harga`) VALUES
('M001', 'Paket 1', ' Ayam Goreng + Es Teh / Teh Panas', 12000),
('M002', 'Paket 2', ' Ayam Bakar + Es Teh / Teh Panas', 15000),
('M003', 'Paket 3', ' Nila Goreng + Es Teh / Teh Panas', 16000),
('M004', 'Paket 4', ' Nila Bakar + Es Teh / Teh Panas', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
`kodepenjualan` int(5) NOT NULL,
  `kodemenu` varchar(4) NOT NULL,
  `namamenu` varchar(20) NOT NULL,
  `banyak` int(4) NOT NULL,
  `totalbayar` int(7) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`kodepenjualan`, `kodemenu`, `namamenu`, `banyak`, `totalbayar`) VALUES
(33, 'M001', 'Paket 1', 4, 48000),
(34, 'M002', 'Paket 2', 2, 30000),
(35, 'M002', 'Paket 2', 1, 15000),
(36, 'M004', 'Paket 4', 1, 18000),
(37, 'M004', 'Paket 4', 30, 540000),
(38, 'M001', 'Paket 1', 6, 72000),
(39, 'M003', 'Paket 3', 2, 32000),
(40, 'M002', 'Paket 2', 1, 15000),
(41, 'M004', 'Paket 4', 1, 18000),
(42, 'M001', 'Paket 1', 1, 12000),
(43, 'M002', 'Paket 2', 1, 15000),
(44, 'M003', 'Paket 3', 1, 16000),
(45, 'M004', 'Paket 4', 1, 18000),
(46, 'M004', 'Paket 4', 4, 72000),
(47, 'M004', 'Paket 4', 2, 36000),
(48, 'M001', 'Paket 1', 2, 24000),
(49, 'M004', 'Paket 4', 4, 72000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `notransaksi` varchar(4) NOT NULL,
  `jumlahbayar` int(7) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`notransaksi`, `jumlahbayar`, `tanggal`) VALUES
('T001', 78000, '2018-01-16'),
('T002', 33000, '2018-01-16'),
('T003', 540000, '2018-01-16'),
('T004', 104000, '2018-01-16'),
('T005', 33000, '2018-01-16'),
('T006', 61000, '2018-01-16'),
('T007', 72000, '2018-01-16'),
('T008', 36000, '2018-01-16'),
('T009', 24000, '2018-01-16'),
('T010', 72000, '2018-01-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`kodemenu`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
 ADD PRIMARY KEY (`kodepenjualan`), ADD KEY `kodemenu` (`kodemenu`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`notransaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
MODIFY `kodepenjualan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`kodemenu`) REFERENCES `menu` (`kodemenu`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
