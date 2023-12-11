-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 29 Nov 2023 pada 15.11
-- Versi server: 8.0.31
-- Versi PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuti_baru2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuti`
--

DROP TABLE IF EXISTS `cuti`;
CREATE TABLE IF NOT EXISTS `cuti` (
  `id_cuti` varchar(30) NOT NULL,
  `id_user` varchar(256) NOT NULL,
  `alasan` text NOT NULL,
  `tgl_diajukan` date NOT NULL,
  `mulai` date NOT NULL,
  `berakhir` date NOT NULL,
  `id_status_cuti` int NOT NULL,
  `perihal_cuti` varchar(100) NOT NULL,
  `alasan_verifikasi` text,
  PRIMARY KEY (`id_cuti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `id_user`, `alasan`, `tgl_diajukan`, `mulai`, `berakhir`, `id_status_cuti`, `perihal_cuti`, `alasan_verifikasi`) VALUES
('cuti-060ae', 'c551fc8847d29dc25a23db5d2cdb941b', 'Cuti Sakit SAkit', '2022-08-06', '2022-08-04', '2022-08-17', 2, 'Cuti Sakit', 'YEs'),
('cuti-06a5f', '40bae2603ae22725d35def9e7c48b0d6', 'Menghadiri Rapat Orang Tua Siswa di Sekolahan', '2022-08-11', '2022-08-22', '2022-08-23', 1, 'Rapat Orang Tua Siswa', NULL),
('cuti-203c6', '1fcaef592c1b8f4b733b04e19be58f99', 'Menemani study tour anak di Bali', '2022-08-11', '2022-09-04', '2022-09-16', 3, 'study tour', 'Ada rapat penting'),
('cuti-285ed', '8ac5e3b30c2f0091eef898158122d131', 'Liburan muncak di Gunug Lawu', '2022-08-11', '2022-08-27', '2022-08-29', 1, 'Muncak', NULL),
('cuti-3d2a7', '263a76c22eb8acf8c3e08edd55c1421d', 'Menghadiri acara wisuda anak di sekolahan', '2022-08-11', '2022-08-22', '2022-08-23', 2, 'Anak Wisuda', NULL),
('cuti-5ae57', '66d0de4b6aab1f34ed9d8779f375a2ea', 'Karena Sakit Demam', '2022-08-11', '2022-08-13', '2022-08-15', 2, 'Sakit', 'sakit'),
('cuti-5ea86', '0000f879df9b442107cc359168ce33a6', 'rawrrr', '2023-11-29', '2023-11-29', '2023-12-09', 2, '', NULL),
('cuti-714f0', '592d06bdc0ee778dab4e01d55ba8b14c', 'Karena ibu saya sakit', '2022-06-15', '2022-06-12', '2022-06-30', 1, 'Cuti Libur', NULL),
('cuti-7d81b', 'beecc6bfae05c7fba5a19f27f41a27ec', 'Muncak di Gunug Lawu sama Alvian', '2022-08-11', '2022-08-27', '2022-08-29', 1, 'Muncak', NULL),
('cuti-89c0c', '2fbb953bcaf76ff9d669197a6d9b6733', 'Membantu panen kebun orang tua', '2022-08-11', '2022-08-12', '2022-08-13', 3, 'Panen', NULL),
('cuti-89c9f', '0000f879df9b442107cc359168ce33a6', 'rawrr', '2023-11-29', '2023-11-29', '2023-11-30', 2, '', NULL),
('cuti-99215', 'ebeeaf891bcf293ec607f50475648ddc', 'menemani ibu saya yang sakit, sekarang beliau masih berada dirumah sakit dan butuh saya temani selama seminggu.', '2022-06-06', '2022-06-06', '2022-06-15', 2, 'berobat', NULL),
('cuti-a2f13', '39332f054c98c54e4eda83e1274566ed', 'melahirkan anak pertama', '2022-08-11', '2022-08-13', '2022-11-01', 2, 'Cuti Melahirkan', 'melahirkan'),
('cuti-ce594', '0000f879df9b442107cc359168ce33a6', 'antar anak ke wisudaan di Jogja', '2023-11-29', '2023-11-30', '2023-12-05', 2, '', NULL),
('cuti-d1eb0', '0000f879df9b442107cc359168ce33a6', 'berobat gigi', '2023-11-29', '2023-11-30', '2023-11-30', 2, '', NULL),
('cuti-ede81', 'dce802a5e29e9ccabc144dfb6a37abbb', 'Liburan ke lampung', '2022-06-21', '2022-06-21', '2022-06-21', 2, 'Cuti Libur', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kelamin`
--

DROP TABLE IF EXISTS `jenis_kelamin`;
CREATE TABLE IF NOT EXISTS `jenis_kelamin` (
  `id_jenis_kelamin` int NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jenis_kelamin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'Laki-Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_cuti`
--

DROP TABLE IF EXISTS `status_cuti`;
CREATE TABLE IF NOT EXISTS `status_cuti` (
  `id_status_cuti` int NOT NULL AUTO_INCREMENT,
  `status_cuti` varchar(50) NOT NULL,
  PRIMARY KEY (`id_status_cuti`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `status_cuti`
--

INSERT INTO `status_cuti` (`id_status_cuti`, `status_cuti`) VALUES
(1, 'Menunggu Konfirmasi'),
(2, 'Izin Cuti Diterima'),
(3, 'Izin Cuti Ditolak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` varchar(256) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `id_user_level` int NOT NULL,
  `id_user_detail` varchar(256) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `id_user_level`, `id_user_detail`) VALUES
('0000f879df9b442107cc359168ce33a6', 'intan', 'intan', 'intan@gmail.com', 1, '0000f879df9b442107cc359168ce33a6'),
('263a76c22eb8acf8c3e08edd55c1421d', 'ali', 'ali', 'ali@gmail.com', 1, '263a76c22eb8acf8c3e08edd55c1421d'),
('f5972fbf4ef53843c1e12c3ae99e5005', 'HRD', '123', 'kresna123@gmail.com', 3, 'f5972fbf4ef53843c1e12c3ae99e5005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE IF NOT EXISTS `user_detail` (
  `id_user_detail` varchar(256) NOT NULL,
  `nama_lengkap` varchar(30) DEFAULT NULL,
  `id_jenis_kelamin` int DEFAULT NULL,
  `no_telp` varchar(30) DEFAULT NULL,
  `alamat` text,
  `nip` varchar(50) DEFAULT NULL,
  `pangkat` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id_user_detail`, `nama_lengkap`, `id_jenis_kelamin`, `no_telp`, `alamat`, `nip`, `pangkat`, `jabatan`) VALUES
('0000f879df9b442107cc359168ce33a6', 'Ratna Intan', 2, '089878675654', 'Jl. Kendangsari', NULL, NULL, NULL),
('134e349e4f50a051d8ca3687d6a7de1a', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1fcaef592c1b8f4b733b04e19be58f99', 'Fajar Alfansyah', 1, '081221334561', 'Jl. Ngagel Rejo', NULL, NULL, NULL),
('263a76c22eb8acf8c3e08edd55c1421d', 'Ali Makruf', 1, '087667898112', 'Jl. Sumberan', NULL, NULL, NULL),
('2d0323357f989f5f37f7ad36472987d5', 'Zaki Agus Saputra', 1, '089876765672', 'Jl. Klampis Jaya', NULL, NULL, NULL),
('2fbb953bcaf76ff9d669197a6d9b6733', 'Dadi Gusriyanto', 1, '087888879765', 'Jl. Dukuh Kupang', NULL, NULL, NULL),
('39332f054c98c54e4eda83e1274566ed', 'Putri Yulia Sari', 2, '087676765654', 'Jl. Sukosemolo', NULL, NULL, NULL),
('394125b4dd6a990d44234aacb50d131a', 'Abdul Haris', 1, '081234567890', 'Jl. Ahmad Yani', NULL, NULL, NULL),
('40bae2603ae22725d35def9e7c48b0d6', 'Zahra Amelia Fauzzi', 2, '085656456212', 'Jl. Kenjeran', NULL, NULL, NULL),
('44dabb248ea11b849e01b8daf96afcd1', 'Silvani Violita', 2, '089789876654', 'Jl. Sukosemolo', NULL, NULL, NULL),
('57b4255e4a7980a1ddabce0ab0e506d6', 'Hamdan Fajeril', 1, '087675641321', 'Jl. Walisongo', NULL, NULL, NULL),
('5a481cabb876061353a43db9b6f2e1bd', 'Ikhwan Saputra', 1, '085665453421', 'Jl. Bratang Gede', NULL, NULL, NULL),
('66d0de4b6aab1f34ed9d8779f375a2ea', 'Ahmad Burhanuddin', 1, '081654432342', 'Jl. Pejuang', NULL, NULL, NULL),
('8ac5e3b30c2f0091eef898158122d131', 'Alvian Andhi', 1, '089777666562', 'Jl. Ngagel Rejo', NULL, NULL, NULL),
('93f012d5ead1feed5512ad71e28ad6e5', 'Dwi Marita', 2, '081432415678', 'Jl. Manyar', NULL, NULL, NULL),
('98eb4077470a60a0fe0f7b9d01755557', NULL, 1, NULL, NULL, NULL, NULL, NULL),
('a83fbd96f2b40a72ac3eb0d96f457222', 'Sisca Verbriyanti', 2, '082341445678', 'Jl. Klampis Jaya', NULL, NULL, NULL),
('beecc6bfae05c7fba5a19f27f41a27ec', 'Elga Yuan Saputra', 1, '081224567122', 'Jl. Ngagel Rejo', NULL, NULL, NULL),
('c5ebbfc46694606d675519cc31666e0d', 'Firman Saputra', 1, '081234567890', 'Jl. Kaliurang', NULL, NULL, NULL),
('d43114b75460d274e82f6cc8b6f93b5f', 'Sindy Safara', 2, '081654432342', 'Jl. Bung Tomo', NULL, NULL, NULL),
('dbedcc1be9d89cbb3eda751309eb77b0', 'Bagus Saputra', 1, '0811122341432', 'Jl. Klampis Jaya', NULL, NULL, NULL),
('f5972fbf4ef53843c1e12c3ae99e5005', NULL, 1, NULL, NULL, NULL, NULL, NULL),
('f8ed2321348b78239fb493bc55eed7b2', 'Malik Indra Kusuma', 1, '081656765431', 'Jl. Diponegoro', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

DROP TABLE IF EXISTS `user_level`;
CREATE TABLE IF NOT EXISTS `user_level` (
  `id_user_level` int NOT NULL AUTO_INCREMENT,
  `user_level` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user_level`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'pegawai'),
(2, 'admin'),
(3, 'super admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
