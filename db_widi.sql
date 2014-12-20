-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2014 at 01:37 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `db_tugas_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(20) NOT NULL auto_increment,
  `nm_admin` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nm_admin`, `username`, `password`) VALUES
(1, 'Ingeu', 'ingeu', 'ingeu'),
(2, 'Eno', 'eno', 'eno');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayaran`
--

CREATE TABLE IF NOT EXISTS `tb_bayaran` (
  `nim` int(20) NOT NULL,
  `semester` int(1) NOT NULL,
  `bayar` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bayaran`
--

INSERT INTO `tb_bayaran` (`nim`, `semester`, `bayar`) VALUES
(322011001, 1, 1550000),
(322011001, 2, 1550000),
(322011001, 3, 1550000),
(322011002, 1, 1550000),
(322011002, 2, 1550000),
(322011001, 4, 1550000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE IF NOT EXISTS `tb_dosen` (
  `nip` int(20) NOT NULL auto_increment,
  `nm_dosen` varchar(50) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` int(2) NOT NULL,
  `bln_lahir` int(2) NOT NULL,
  `thn_lahir` int(2) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`nip`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`nip`, `nm_dosen`, `jk`, `tmpt_lahir`, `tgl_lahir`, `bln_lahir`, `thn_lahir`, `alamat`, `no_hp`, `email`, `username`, `password`) VALUES
(102, 'Nonda Muldani', 'Laki-laki', 'Sukabumi', 1, 2, 2, 'a', '1', 'b', '123', '123'),
(103, 'Lina', 'Perempuan', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '123', '123'),
(104, 'Ajat Sudrajat', 'Laki-laki', 'Cianjur', 1, 2, 3, 'a', '1', 'b', '123', '123'),
(105, 'Ismail Goro', 'Laki-laki', 'NTT', 1, 2, 3, 'a', '1', 'b', '123', '123'),
(106, 'Eris Riswandi', 'Laki-laki', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '123', '123'),
(107, 'Eka Hidayat', 'Laki-laki', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '123', '123'),
(108, 'Ayi', 'Laki-laki', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '123', '123'),
(109, 'Yuniar Supardi', 'Laki-laki', 'Surabaya', 1, 2, 3, 'a', '1', 'b', '123', '123'),
(110, 'Rina', 'Perempuan', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '123', '123'),
(111, 'Slamet Mulyono', 'Laki-laki', 'Sulawesi', 1, 2, 3, 'a', '1', 'b', '123', '123'),
(101, 'Yudha Haryanto', 'Laki-laki', 'Depok', 1, 1, 1, 'Sukabumi', '1', 'yudha.hr@gmail.com', '101', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE IF NOT EXISTS `tb_jurusan` (
  `kd_jurusan` int(20) NOT NULL,
  `nm_jurusan` varchar(50) NOT NULL,
  PRIMARY KEY  (`kd_jurusan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`kd_jurusan`, `nm_jurusan`) VALUES
(31, 'Teknik Komputer'),
(32, 'Teknik Komputer Jaringan'),
(11, 'Administrasi Bisnis'),
(21, 'Teknik Mesin'),
(41, 'Teknik Sipil');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `nim` int(20) NOT NULL,
  `nm_mhs` varchar(50) NOT NULL,
  `thn_masuk` int(20) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` int(2) NOT NULL,
  `bln_lahir` int(2) NOT NULL,
  `thn_lahir` int(4) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `kd_jurusan` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`nim`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`nim`, `nm_mhs`, `thn_masuk`, `tmpt_lahir`, `tgl_lahir`, `bln_lahir`, `thn_lahir`, `alamat`, `jk`, `no_hp`, `email`, `foto`, `kd_jurusan`, `username`, `password`) VALUES
(322011001, 'Widiawati', 2011, 'Sukabumi', 16, 10, 1993, 'Kp. Ciawi RT 03/04 Bantar Kalong - Warungkiara', 'Perempuan', '085722239150', 'widiawati16101993@gmail.com', 'img/profile/widi.jpg', 32, 'widi', 'widi'),
(322011002, 'Agus Hermawan', 2011, 'Sukabumii', 10, 8, 1993, 'Kp. Pasir Malang', 'Laki-laki', '0857111111111', 'agus.herma@gmail.com', 'img/profile/agus.jpg', 32, 'agus', 'agus'),
(312011001, 'Anggit Maulana', 2011, 'bebas', 12, 1, 1991, 'bebas', 'Laki-laki', '089', 'bebas@yahoo.com', '', 31, 'anggit', 'anggit'),
(123, 'sidiq', 2011, 'adsfsd', 1, 2, 3, 'jampunk', 'Laki-laki', '9087', 'sidiq.jampunk@yahoo.com', '', 32, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE IF NOT EXISTS `tb_matkul` (
  `kd_matkul` varchar(20) NOT NULL,
  `nm_matkul` varchar(50) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `sks` int(2) NOT NULL,
  `nip` int(20) NOT NULL,
  PRIMARY KEY  (`kd_matkul`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`kd_matkul`, `nm_matkul`, `semester`, `sks`, `nip`) VALUES
('KJ-MKK11', 'Arsitektur Komputer', '1', 3, 107),
('KJ-MKK12', 'Konsep Teknologi Informasi', '1', 2, 111),
('KJ-MKB13', 'JAVA I', '1', 3, 101),
('KJ-MKK14', 'Algoritma dan Pemrograman', '1', 3, 107),
('KJ-MKK15', 'Bahasa Inggris I', '1', 2, 108),
('KJ-MKB16', 'Jaringan Komputer I', '1', 3, 102),
('KJ-MKB17', 'KKPI', '1', 3, 105),
('KJ-MKK18', 'Sistem Operasi', '1', 3, 101),
('KJ-MKK21', 'Administrasi Sistem', '2', 3, 101),
('KJ-MKB22', 'JAVA II', '2', 3, 109),
('KJ-MKB23', 'JAVA III', '2', 3, 101),
('KJ-MKK24', 'Basis Data I', '2', 2, 105),
('KJ-MKB25', 'Jaringan Komputer II', '2', 3, 102),
('KJ-MKK26', 'Bahasa Inggris II', '2', 2, 108),
('KJ-MPK27', 'Matematika Logika', '2', 2, 110),
('TK-MKK01', 'VB I', '1', 4, 101),
('TK-MKK02', 'Komunikasi Data', '2', 3, 101),
('TK-MKK03', 'VB II', '2', 4, 101),
('KJ-MKK029', 'RSI II', '3', 3, 108);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE IF NOT EXISTS `tb_nilai` (
  `nim` int(20) NOT NULL,
  `kd_matkul` varchar(20) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`nim`, `kd_matkul`, `nilai`) VALUES
(322011001, 'KJ-MKK11', 'A'),
(322011001, 'KJ-MKK12', 'B'),
(322011001, 'KJ-MKB13', 'C'),
(322011001, 'KJ-MKK14', 'D'),
(322011001, 'KJ-MKK15', 'B'),
(322011001, 'KJ-MKB16', 'C'),
(322011001, 'KJ-MKK21', 'B'),
(322011001, 'KJ-MKK18', 'B'),
(322011001, 'KJ-MKB17', 'B'),
(322011001, 'KJ-MKB22', 'B'),
(322011001, 'KJ-MKB23', 'A'),
(322011001, 'KJ-MKK24', 'C'),
(322011001, 'KJ-MKB25', 'B'),
(322011001, 'KJ-MKK26', 'A'),
(322011001, 'KJ-MPK27', 'C'),
(322011002, 'KJ-MKK11', 'B'),
(312011001, 'TK-MKK01', 'B'),
(322011002, 'null', 'null'),
(322011001, 'KJ-MKK029', 'c'),
(322011002, 'KJ-MKK12', 'B'),
(322011002, 'KJ-MKB13', 'A'),
(322011002, 'KJ-MKB17', 'C'),
(322011002, 'KJ-MKB16', 'B'),
(123, 'KJ-MKK11', 'B');
