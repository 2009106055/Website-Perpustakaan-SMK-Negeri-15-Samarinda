-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2025 at 02:07 PM
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `kode_admin` varchar(12) NOT NULL,
  `no_tlp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`, `kode_admin`, `no_tlp`) VALUES
(1, 'bambang subroto', '1234', 'admin1', '085749051409');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `buku_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `buku_deskripsi`) VALUES
('654e505d7eda4.jpg', 'bis01', 'bisnis', 'Bussiness is fun', 'Coach yohannes g pauly', 'Rejove', '2016-11-10', 500, '7 strategi untuk membangun bisnis'),
('654e62742ef40.jpg', 'bis02', 'bisnis', 'Digital Marketing Strategy', 'Simon kings north', '-', '2023-11-11', 250, 'Belajar strategi pemasaran digital'),
('654e4dc4dc0c6.jpg', 'fil01', 'filsafat', 'Filosofi Teras', 'Henry Manampiring ', 'Kompas', '2018-11-26', 320, 'Filosofi Teras adalah sebuah buku pengantar filsafat Stoa yang dibuat khusus sebagai panduan moral anak muda. Buku ini ditulis untuk menjawab permasalahan tentang tingkat kekhawatiran yang cukup tinggi dalam skala nasional, terutama yang dialami oleh anak muda.'),
('654e4f5e85f75.jpg', 'fil02', 'filsafat', 'Sejarah dunia yang disembunyikan ', 'Jonathan Black ', '-', '2007-11-10', 633, 'Banyak orang mengatakan bahwa sejarah ditulis oleh para pemenang. Hal ini sama sekali tak mengejutkan alias wajar belaka. Tetapi, bagaimana jika sejarahâ€”atau apa yang kita ketahui sebagai sejarahâ€”ditulis oleh orang yang salah? '),
('654e48e1a1680.jpg', 'inf01', 'informatika', 'Dasar dasar pemrogramman web', 'Sandhika Galih ', 'Inkara', '2023-10-18', 414, 'Website di era sekarang sudah menjadi kebutuhan utama yang tidak bisa diabaikan. Seluruh sektor bisnis atau edukasi dapat memanfaatkan website sebagai alat untuk promosi, tukar informasi, dan lainnya. Berdasarkan data dari World Wide Web Technology Surveys, dari seluruh website yang aktif, 88.2% menggunakan HTML dan 95.6% menggunakan CSS. Buku ini membahas tuntas mengenai HTML dan CSS sebagai fondasi dalam pembuatan website serta dilengkapi dengan Studi Kasus yang Relevan dan sesuai trend.'),
('654e4a1c80441.jpg', 'inf02', 'informatika', 'Kursus Mandiri Python', 'Budi Raharjo', 'Informatika', '2022-05-10', 550, 'Belajar pemrogramman python dengan 5 tahapan yaitu : \r\n1. Dasar dasar python\r\n2. PBO(OOP)\r\n3. Eksplorasi Pustaka\r\n4. SQL &amp; MySql\r\n5. Pemrogramman GUI'),
('654e4b44d4d0e.png', 'inf03', 'informatika', 'Pemrogramman Javascript Dan NodeJS untuk teknologi web', 'Budi Raharjo', 'Informatika', '2022-09-16', 500, 'Panduan membuat sistem aplikasi berbasis web dengan javascript dan nodeJs'),
('654e4c1154bdd.jpg', 'inf04', 'informatika', 'Panduan Dasar ubuntu untuk pemula', 'Muhammad Ulil Fahri', 'Informatika', '2017-11-10', 404, 'Panduan awal ubuntu untuk pemula'),
('654e4cd06e0de.jpeg', 'inf05', 'informatika', 'Belajar dasar Pemrogramman C++', 'Muhammad Taufik Dwi Putra', 'Informatika', '2018-11-10', 512, 'Panduan dasar belajar pemrogramman C++ untuk pemula'),
('654e3d8b359df.jpg', 'nov01', 'novel', 'Dunia Sophie', 'Jostein Gardeer', 'Mizan', '1996-11-10', 800, 'Anda ingin tahu apa filsafat,  tetapi selalu tidak sempat,  terlalu kabur, abstrak, susah dan bertele tele?  Bacalah buku manis ini dimana sophie anak putri 14 tahun, menjadi terpesona karenanya. '),
('654e402a8ad79.jpg', 'nov02', 'novel', 'Perahu Kertas', 'Dewi Lestari', 'Bentang Pustaka', '2003-11-10', 444, 'Perahu Kertas bercerita tentang dua orang yang sama-sama unik bernama Kugy dan Keenan. '),
('654e4417e323e.jpeg', 'nov03', 'novel', 'Pulang', 'Tere Liye ', 'Sabak grip Nusantara ', '2015-11-10', 838, 'Pulangâ€ ini adalah novel yang menceritakan perjalanan hidup seorang anak laki-laki bernama Bujang, yang sejak berumur lima belas tahun di sebuah hutan rimba pedalaman Sumatera, rasa takutnya telah direnggut oleh seekor monster mengerikan (induk babi hutan).'),
('654e456c2e275.jpg', 'nov04', 'novel', 'Surat Kecil Untuk Tuhan', 'Agnes Danovar', 'Inandra Publised', '2008-11-10', 200, 'Surat kecil untuk Tuhan adalah sebuah buku yang diangkat dari kisah nyata perjuangan gadis remaja bernama Gita Sesa Wanda Cantika alias Keke melawan kanker ganas.'),
('654e46a08484e.jpg', 'nov05', 'novel', 'Ancika : dia yang bersamaku tahun 1995', 'Pidi baiq', 'Pastel books', '2021-09-02', 180, 'menceritakan tentang persahabatan antara Dilan dan Ancika Mehrunisa Rabu. Hubungan mereka yang semakin dekat membuat benih-benih cinta tumbuh dan hubungan mereka pun naik tingkat menjadi hubungan sepasang kekasih.'),
('677b6ce61bf57.jpeg', 'pel01', 'pelajaran', 'Pendidikan Agama Islam Kelas X', 'K13 Edisi Revisi 2017', 'Kemendikbud RI', '2016-03-01', 208, 'Buku ini disusun berdasarkan amanat Permendikbud Nomor 59 Tahun 2014 tentang Standar Isi Kurikulum 2013. Sedangkan sistematika penyusunan buku didasarkan pada Permendikbud Nomor 65 Tahun 2013 tentang Standar Proses. Dalam standar proses, pembelajaran dilakukan dengan memaksimalkan kemapuan siswa melalui pendekatan saintifik melalui langkah-langkah mengamati, menanya, mencoba, menalar, dan mengomunikasikan. Selanjutnya, langkah-langkah tersebut diintegrasikan ke dalam penulisan buku melalui proses dan rubrikasi Membuka Relung Hati (mengamati), Mengkritisi Sekitar Kita (menanya), Memperkaya Khazanah Peserta Didik (menalar), Menerapkan Perilaku Mulia (mencoba dan mengomunikasikan).\r\n\r\nAkhirnya, penulis menyadari sepenuh hati bahwa dalam penulisan buku ini masih banyak terdapat kekurangan dan kelemahan baik dari segi cakupan materi maupun sistematika dan pemilhan bahasa yang digunakan. Oleh karena itu, kepada para pembaca atau pengguna buku ini baik siswa maupun guru sangat diharapkan kritik dan saran untuk penyempurnaan buku ini dan kepada Allah Swt. kami berserah diri.'),
('677b97b2b84f5.jpg', 'pel02', 'pelajaran', 'Pendidikan Kewarganegaraan Kelas X', 'K13 Edisi Revisi 2017', 'Kemendikbud RI', '2016-03-01', 252, 'Buku ini disusun berdasarkan amanat Permendikbud Nomor 59 Tahun 2014 tentang Standar Isi Kurikulum 2013. Sedangkan sistematika penyusunan buku didasarkan pada Permendikbud Nomor 65 Tahun 2013 tentang Standar Proses. Dalam standar proses, pembelajaran dilakukan dengan memaksimalkan kemapuan siswa melalui pendekatan saintifik melalui langkah-langkah mengamati, menanya, mencoba, menalar, dan mengomunikasikan. Selanjutnya, langkah-langkah tersebut diintegrasikan ke dalam penulisan buku melalui proses dan rubrikasi Membuka Relung Hati (mengamati), Mengkritisi Sekitar Kita (menanya), Memperkaya Khazanah Peserta Didik (menalar), Menerapkan Perilaku Mulia (mencoba dan mengomunikasikan).\r\n\r\nAkhirnya, penulis menyadari sepenuh hati bahwa dalam penulisan buku ini masih banyak terdapat kekurangan dan kelemahan baik dari segi cakupan materi maupun sistematika dan pemilhan bahasa yang digunakan. Oleh karena itu, kepada para pembaca atau pengguna buku ini baik siswa maupun guru sangat diharapkan kritik dan saran untuk penyempurnaan buku ini dan kepada Allah Swt. kami berserah diri.'),
('6784a2975047f.jpeg', 'pel03', 'pelajaran', 'Pendidikan Pancasila Kelas X', 'Kurikulum13', 'airlangga', '2025-01-13', 108, 'pendidikan pancasila'),
('654e63b7841f5.jpg', 'sai01', 'sains', 'Cosmos', 'Karl sagan', '-', '2016-12-18', 488, 'Buku â€œKOSMOSâ€ adalah salah satu buku sains yang paling laris sepanjang sejarah. Dengan prosa jernih yang memukau, ahli astronomi Carl Sagan mengungkapkan alam semesta yang dihuni oleh suatu bentuk kehidupan yang baru saja mulai berpetualang menjelajahi luasnya antariksa.'),
('654e64ee16c9a.jpg', 'sai02', 'sains', 'Kanker : Biografi suatu penyakit', 'Siddhartha mukherjee', '-', '2020-04-16', 682, 'kanker bukan hanya satu penyakit, melainkan banyak penyakit dengan ciri sama: pertumbuhan sel tak terkendali. Melawan kanker seolah melawan tubuh yang berkhianat: sel-sel kita sendiri yang berubah jadi ganas dan lepas kendali.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('filsafat'),
('informatika'),
('novel'),
('pelajaran'),
('sains');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `kode_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`nisn`, `kode_member`, `nama`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `no_tlp`, `tgl_pendaftaran`) VALUES
(12345678, '11', 'm alfarezy cannavaro', '$2y$10$QBFjxLrPS0JDLgVS18IuCOiCBIETjoVgxw1s.2tFl8xhxxoqO5GAy', 'Laki laki', 'XII', 'Teknik Komputer Jaringan', '085171681131', '2025-01-06'),
(30967280, '05', 'muh alfarezy cannavaro', '$2y$10$7vMWvQ8hVxkJpii9c1wUF.4Joe5hh3.pWUgvw53atLHB3Xgf.w0gK', 'Laki laki', 'XII', 'Teknik Komputer Jaringan', '085171681131', '2024-11-25'),
(71304708, '060', 'muhammad rizky fachreal', '$2y$10$lDrdX9MOZemknoKKlnwjgukFKsuYViEerREyEkOML8kDpnILTJjHC', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(71792989, '031', 'revaldo ryan sofian', '$2y$10$y55Px8WIGapqXTxZQuInPOlVLOLIXnCTsSjL1cXJlR3/hByQxOl1K', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(71793302, '033', 'dominikus igo koten', '$2y$10$0EJ9x3GDIVcnccKOZ1n1Ru1QIelibb5sGcy2mLoJFHWrB0K5WNU4e', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(72137411, '004', 'ahmad maulana', '$2y$10$UMAvxAsb.rdN6XCqBTHY/eVd2eiP9N/LcZ0I8ZhKg84JfwJBNwmma', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(75465442, '039', 'andi arfian', '$2y$10$dmzhYxH9oNPRYcuJY8VLDeeW/azy18Av.EBrk9H862QiArpFoz6Yi', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(76139407, '024', 'muhammad nur rosyid sadillah', '$2y$10$zSBNyCSp6BmCFFYDnuchlOxdO801hn8gXXaPyCC9kpYMaDrSoJeWS', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(76803518, '003', 'agustian', '$2y$10$eZ3yspazdYI3Chgu5IRFVuhM14HRqgnBXq6p.hgbMtvkO66iGuTb.', 'Laki laki', 'X', 'Teknik Geomatika', '081122334454', '2025-01-20'),
(78053459, '025', 'muhammad renaldi satria perkasa', '$2y$10$xX6hlGk0yygU9jLhqmr52eaYMg/LeYRgfRon2UHVM1Egs/4To/kv6', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(79456008, '048', 'iqbal dwi syahputra', '$2y$10$NGkpaStxU4oftn/e4IudSuXP3N/RU4yiH8B5agVsGfWisASAhYnUO', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(81244459, '022', 'muhammad fari fauzan', '$2y$10$Ro2psXCt4fVR1jJj.Vlc1OGuM./XhD6..kmevD.uoeycnoA6JxoC.', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(81473191, '068', 'zhen rivaldo naim', '$2y$10$.QdDvzGBdR4arsgqci3owe86D1riqtzzL7EwK4JUbDx5jy4MCP0Yq', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(81661623, '053', 'marcello adritian yuda putra pratama', '$2y$10$m8WIw9NzWWyQVryvwkLkD.3CjyXqdTelIq7rTk6JFypanptNxGabS', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(81789298, '035', 'achmad farhan', '$2y$10$JXHM7SJu90vFRKIpZhz1aeeBdMoLHlrEzjGxffUu3BGnP4XbpNHwa', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(82502725, '013', 'fariz al hafizd', '$2y$10$bXYhxKfCwD/wnmQL7/C00uwUFcYtmqeO72Kt0236pyA.liBDPoj2e', 'Laki laki', 'X', 'Teknik Geomatika', '81122334455', '2025-01-20'),
(82618914, '014', 'fenna rindana', '$2y$10$.uL5biBaxgoMiJwbrHgrFOeSsIB4szM8CHzosCa5wdUgIJnuMQj5C', 'Perempuan', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(82762926, '032', 'rian saputra', '$2y$10$eSuaAJUgUWQMT2QoBaue.OEGSZBWcf4nWheP652q4rabQdRPSF0HC', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(82814534, '020', 'muhamad zakaria febian pahlevi', '$2y$10$dmQxW8DHKI/rQvoBLeMv4uSvzFa2OmnMI.QKGdPjVqsMfzwlvQ5nW', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(83157283, '029', 'pathir maalikal mulki', '$2y$10$95dS8vOc9XJhWZgRQ8e8BOfeOeCquFzFvPgxqAjKLkfSOns6VkEKy', 'Laki laki', 'X', 'Teknik Geomatika', '81122334455', '2025-01-20'),
(84064352, '044', 'fahmi', '$2y$10$TOn3kHX5Q5pDlqhCpcv05u7ZHeACeSgwpnovYhx9Kk.MzH1vyPJ1C', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(84165275, '012', 'evan satria pradana', '$2y$10$CBtigSdZTbo8OWV/nkScF.FBkOB9rzvXvPkNaWOUtzOgmzvmyEiVS', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(84440305, '026', 'muhammad ridho', '$2y$10$1WQ45zzU7UYfFtNHRRG4.e9eHiEas8uRXOKfaWpI/9IRlMcWK/lrq', 'Laki laki', 'X', 'Teknik Geomatika', '081122334454', '2025-01-20'),
(84798536, '049', 'ivan ikwanu zaky', '$2y$10$wrbLs3JHSqqG60ZUIPzvoeftmeV8vWu5/x5B2mgBAb7kyGqm9tnDe', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(85082192, '011', 'dody prananda', '$2y$10$0Lw8jpyeHcuEmvb/cXuEduPmscSwPYKcClCd08r05o5pUyx912Z2m', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(85259146, '007', 'aldi rhamadhan', '$2y$10$NBGxMj73i0GLenIT3cT/keRVSiWS1hiK5zFUhpGeZNY.CCyFJwLtq', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(85363145, '045', 'fajar rinda putra pratama', '$2y$10$qE5rUNPfYwp4Jm5ynKINnu2.HXzXqpBy86OF5Vf3YR5wJAGOYEmoa', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(85411722, '062', 'rafael christian sinaga', '$2y$10$Ha2FWL8kynt6uKxL9fJyZuyX6r48wTrsoBFjt2570bGkoEVAHrruC', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(85915260, '067', 'syauqi firosaisy', '$2y$10$KdFO1rwWFpOJ7s6BAqiEcOXz2LE1B8ZV4gT6nRl0FHTDNDwRieUla', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(86038474, '036', 'aditya astra arya saputra', '$2y$10$dllSxbYRdoYRcl4w/0DQYeUMRgnqxAd4JKhmqTzDoG9ZW.yZNQE32', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(86113551, '046', 'fasya ilham pratama', '$2y$10$4iUq6QTJ9bwwa4b9pnM5..An6EELHICvI4L5DZ/TVjRX6x.KhG.SG', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(86320987, '057', 'muhammad naufal syahdan', '$2y$10$.NtTpM.GMD9DhyRancK0qeJa5MkCDIlif/KJg32qI9zCUVQ3EMgBy', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(86837733, '041', 'asila', '$2y$10$TA4.y88jIGVyzy0iPGm.j.WbQWzmAbdoCuv6Dc.03qY.5mu7Cvz.i', 'Perempuan', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(86973940, '028', 'nur anjani', '$2y$10$ev0ifrUnSJ2hm/zCMubc7O0epdDvzzJyrKL18g3XnyFNE6EE3d1IG', 'Perempuan', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(87379427, '065', 'rosika febriyani', '$2y$10$bkzLVQwwvdaiPzckwCH5gO2/cbN51EM/Lw2CQ6yej7cgJ1yv3z00.', 'Perempuan', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(88230602, '066', 'sofia putri jelita', '$2y$10$sbn4Mv4Hv8Jxha5J4BwXkuhVnFwixHG1D.l9UKAnpAFdkgQH7vfwa', 'Perempuan', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(88661635, '038', 'airlangga nur wicaksono', '$2y$10$JnK9lkrmtqoHTb5lw9I0HOSracb5VTE/oGlof6aYWc2aswZNdIFpe', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(89043903, '008', 'amelia', '$2y$10$FOm2Tny21znjbbltzr6ASOA0HmlfpqaXHrBtmRqfOk8EAQ5YPQEBe', 'Perempuan', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(91190590, '054', 'muh fadhil rohman', '$2y$10$fbDAdo2i/WYcfoAfK11JDOaFThaBFZE6bvhguPdwuCTAUifTuUs5C', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(91345557, '015', 'fitri azkia', '$2y$10$04ZyyTIytUrLJpDC1lTmYuUzPyRQvw//nFPnyyZDiAW2vsoQ8Mza2', 'Perempuan', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(91586582, '001', 'abdul aziz', '$2y$10$mV.Qkl0MotjI1FxpBPa/Zeq1bn4klEiqqjSd5urBCxZeLVAqUlI.e', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(91777252, '051', 'kevin faizs pratama', '$2y$10$c2BCdyPtB7kiJaapRzHJxeBvVRcpK5hStNEyNkcuzUAqds/mSrlm2', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(91800649, '017', 'hero', '$2y$10$lJAl3XsvCd1ZqhR8n.pne./PItI6XMUh3JWDVUd8jAgRoIsrVwAwG', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(92532901, '064', 'riza qowiyyun febryanto', '$2y$10$uXveXc.9OT46mw9.yeKvZ.TGZYjjZrJAc3HiztSnzXagn4ycl1umS', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(92769218, '056', 'muhammad farel', '$2y$10$.B5x41glnXuK91sy4fv9Vua//N5TJ81s7.3m0h2QhVTf7CvuQateK', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(92884690, '030', 'raja penggeng', '$2y$10$7HM2NeVFK84dkdK2ZH/UOOaSSlSKhF0tlK5dFf.rStbYbW1dOC/ji', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(93106499, '037', 'ahmad rafi', '$2y$10$ncUgLIynxTNEgsNjzmXdlejFIqzcKYiPsOoGAkdznxwxnBKFKipY6', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(93236411, '050', 'januar darussalam', '$2y$10$buLITxV7FF8N7hXKHGbqWejwCHgsDQiSFfzb.1hxhR5O9gZXa2Nai', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(94578692, '055', 'muhammad amar siregar', '$2y$10$Q9VAT5gkzHXfOnPU4yt3l.1bh1enuSx7gaKOeUYZPMm7HHaEfp2Yy', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(95275603, '023', 'muhammad rahman danny', '$2y$10$OQWdf7LeGTN9uGAz58S/W.1IsWqaBKAwQVzdHIZIFiw8MrpP8HDdm', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(95300879, '016', 'hafizh ahmad fairus', '$2y$10$fHq6sAbXewgdVpOaeNBaw.0nI//0keV7Qh8NATzLTX0YVhj/S7lPy', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(95761154, '027', 'muhammad rivaldi saifahmi', '$2y$10$Q2QrXjn/.Ep5oX/djReTLuORQWt9P6dIZc.kbCtdgF4URG2Y9xReq', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(95764459, '010', 'balkis nor aina', '$2y$10$yyPRd5QCacoP4F3swOsP6.m7vDRarK1gzONg2FjO.ntDa1w0paBRO', 'Perempuan', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(95928788, '047', 'hevan jedi herlangga', '$2y$10$wmrLMSuT.lUUxVSRBBXCGeNq5uPxrVOv1AHEXj0h5RTqjaUjfswOS', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(96445840, '009', 'aryo dwi putranto', '$2y$10$Ff/.ec66ZKB9c31tuQSyEu4Yck9lV78.RS1HMt/HvVRGAZeQviqTO', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(96507626, '002', 'afrizal mikael andrian napitupulu', '$2y$10$7m9X8F5Gfl1zuXI0m1wAdurFjihS8gWpe5edG2wcNzwpTidG.iURy', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(96703004, '063', 'rama aditya', '$2y$10$9LxhW48IPgdstYRgHaDXt.5c23ytAF2w3PnQe/Sns6bpwvPVQNqIO', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(96965634, '040', 'aryanda pratama', '$2y$10$TYtwOlBfGGXsUPy.iYwZ0enlnXXlrEU8.7356HAi/5fdu5YDvzGY6', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(97033058, '043', 'devinsya nindi atamimi', '$2y$10$6vS1mXG7Cd0wdShsPG5YAu9CxaEfU56ifA0JAKZPBvIGnno4U9FAC', 'Perempuan', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(97560794, '034', 'abu risqi jalalludin', '$2y$10$Zane52rZEd0eNMnE49iUxuqFHafxB/2qEFxikvM9yGmGeuxtZ0mx2', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(97739600, '005', 'aiman dafied ramadhan', '$2y$10$EEmMMLUkPKTWgj45taA/iekH1296tY0YF3kGLDp.a5qF1ehsyG6J.', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(97884330, '042', 'azizah kirana az zahra', '$2y$10$xN48Gj7zYq1dRp2gU3NAsuHeLwj6hbe.kEsEw9TOieMMeVoGnfuPS', 'Perempuan', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(97922640, '006', 'akhsay mar dafa sofyan', '$2y$10$pgu/9HI0BEi3QiVP/mUpSOsvgoZG9gQlpesn6M7vi8V4BgrvIRhRi', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(99298753, '021', 'muhammad arya pratama', '$2y$10$vbQLjj.kWPI0n1DOobuCj.bgpJZjqLVil7pwm1Tjpqf6wrbeWwVY6', 'Laki laki', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(99647071, '059', 'muhammad rega alfianur', '$2y$10$4x9EUUsE06ARx1XnaeYG/eMgaCLKjqkRuRmco3IK60EPOYqbUIhje', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(308975723, '058', 'muhammad nufail faiz ramadhan', '$2y$10$9v.z2vqOKHBNaAIfUBJodONUxEETcIe6wj6Xdkonxxcca66gDr/0W', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(309016683, '052', 'maharudin ilham', '$2y$10$NIWV3UPq8ORsXD.L/77ds.PnBp.ZeMVdO1KcTTd2VjYWvWZJXEhRy', 'Laki laki', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(309325194, '061', 'nuri auliya zakaria', '$2y$10$QDbI6HbWvw1GuHNeUmvTBuOo.fgOr31p.aONbYgzvJSsBpYIAmeKa', 'Perempuan', 'X', 'Teknik Komputer Jaringan', '081122334455', '2025-01-20'),
(309924180, '019', 'meilandry alqalivi', '$2y$10$mGhtXFva6h6bHce4ZFCrjuytx7Ap9xJ91d43s4oZeEgHLjiLL9Fzu', 'Perempuan', 'X', 'Teknik Geomatika', '081122334455', '2025-01-20'),
(2147483647, '018', 'lingga satya resandrya', '$2y$10$dXqmnqsyi2dBUUEDwbv8k.vQpjZXasxNxa.t2E.RumRj/RvVU5Q0.', 'Laki laki', 'Choos', 'Teknik Geomatika', '081122334455', '2025-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `buku_kembali` date NOT NULL,
  `keterlambatan` enum('YA','TIDAK') NOT NULL,
  `denda` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_peminjaman`, `id_buku`, `nisn`, `id_admin`, `buku_kembali`, `keterlambatan`, `denda`) VALUES
(61, 77, 'bis02', 30967280, 1, '2024-11-25', 'TIDAK', 0),
(62, 78, 'fil01', 30967280, 1, '2024-11-26', 'YA', 0),
(63, 79, 'bis02', 30967280, 1, '2024-11-25', 'TIDAK', 0),
(64, 80, 'fil02', 30967280, 1, '2024-11-26', 'YA', 0),
(65, 81, 'pel02', 12345678, 1, '2025-01-13', 'YA', 0),
(66, 82, 'inf05', 12345678, 1, '2025-01-13', 'TIDAK', 0),
(67, 83, 'pel02', 12345678, 1, '2025-01-13', 'YA', 0),
(68, 84, 'fil01', 12345678, 1, '2025-01-21', 'YA', 0),
(69, 85, 'bis02', 12345678, 1, '2025-01-21', 'TIDAK', 0),
(70, 86, 'bis02', 12345678, 1, '2025-01-29', 'YA', 0),
(71, 87, 'fil01', 71304708, 1, '2025-01-29', 'TIDAK', 0),
(72, 88, 'nov05', 71304708, 1, '2025-01-29', 'YA', 0),
(73, 89, 'fil01', 71304708, 1, '2025-01-29', 'YA', 0),
(74, 90, 'inf01', 12345678, 1, '2025-01-29', 'TIDAK', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_admin` (`kode_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `kode_member` (`kode_member`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `pengembalian_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `pengembalian_ibfk_4` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
