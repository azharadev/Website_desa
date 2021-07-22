-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2021 pada 23.36
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_webdesa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 06:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi'),
(2, 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 06:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi'),
(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 06:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'Kegiatan intervensi kesehatan keluarga di Desa Sek', '2020-06-28 19:27:34', 8, 'azharadev', 4, 'd2fa13e8d44c7e3c9c0fef2a1cc5893d.jpg'),
(6, 'Bedah Desa Bersama Bupati', '2020-06-28 19:28:07', 8, 'azharadev', 5, 'ef79cfa8f05c5f5d3361a2d838778dff.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(13, '001-SURAT KETERANGAN KELAHIRAN', 'SURAT KETERANGAN KELAHIRAN DESA SEKARTAJI', '2020-06-28 19:09:20', 'admin desa', 0, '263a92ae420e481531b308d98887d0ac.pdf'),
(14, '002-SURAT KETERANGAN KEMATIAN', 'SURAT KETERANGAN KEMATIAN DESA SEKARTAJI', '2020-06-28 19:10:59', 'admin desa', 0, 'c436d8e8ef60e63e0907ee70f915502d.pdf'),
(15, '003-SURAT KETERANGAN PERKAWINAN', 'SURAT KETERANGAN PERKAWINAN DESA SEKARTAJI', '2020-06-28 19:11:41', 'admin desa', 0, 'b94f062c1274a42dd4de5aaf5c0335f8.pdf'),
(16, '004-SURAT KETERANGAN PERPINDAHAN', 'SURAT KETERANGAN PERPINDAHAN KELUAR NEGERI', '2020-06-28 19:13:14', 'admin desa', 0, 'd1427225dc5a65de208facef838cb6ab.pdf'),
(17, '005-FORMULIR PERMOHONAN KTP WNA', 'FORMULIR PERMOHONAN KTP WNA', '2020-06-28 19:14:28', 'admin desa', 0, '02d35872ed20d3eaf07e0b3fd7c05160.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(19, 'Kegiatan Kesehatan', '2020-06-28 19:28:48', 'd6efe9c78699c7a1e53fbe987395cb08.jpg', 5, 8, 'azharadev'),
(20, 'Kegiatan Kesehatan', '2020-06-28 19:29:15', '9896c88905d0afb2fd60039ae5a76a68.jpg', 5, 8, 'azharadev'),
(21, 'Kegiatan Kesehatan', '2020-06-28 19:29:28', '5260639044471a552d6f4bd6e6af80a4.jpg', 5, 8, 'azharadev'),
(22, 'Kegiatan Kesehatan', '2020-06-28 19:29:41', 'e2e0fbf5e673347c70514dfc01dec9e4.jpg', 5, 8, 'azharadev'),
(23, 'Bedah Desa', '2020-06-28 19:30:04', '5cd166b09eb3fe16ac7a2c0d48d309c5.jpg', 6, 8, 'azharadev'),
(24, 'Bedah Desa', '2020-06-28 19:30:16', '89c4321fa4d9ecd5965b4b1b9e11a698.jpg', 6, 8, 'azharadev'),
(25, 'Bedah Desa', '2020-06-28 19:30:29', '49758bd57eacc791e367244e0cf918ff.jpg', 6, 8, 'azharadev'),
(26, 'Bedah Desa', '2020-06-28 19:30:45', '10f391845e1bff341c45f00f572bdd2a.jpg', 6, 8, 'azharadev'),
(27, 'Bedah Desa', '2020-06-28 19:31:44', '28d1fc808581df6335173e540957f493.jpg', 6, 8, 'azharadev');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(1, '927482658274982', 'M Fikri Setiadi', 'L', 'Padang', '25 September 1993', 'Teknik Komputer', 'f6bbe1e04e78e0d715e9830a605794aa.jpg', '2017-01-26 07:49:43'),
(2, '927482658274981', 'Thomas Muller', 'L', 'Germany', '25 September 1989', 'Olahgara', NULL, '2017-01-26 13:38:54'),
(3, '-', 'Joko Subroto', 'L', 'Jakarta', '25 September 1989', 'PPKN, Matematika', NULL, '2017-01-26 13:41:20'),
(4, '-', 'Kusta Otomo', 'L', 'Jakarta', '25 September 1989', 'Seni Budaya', NULL, '2017-01-26 13:42:08'),
(5, '-', 'Yuliani Ningsih', 'P', 'Padang', '27 September 1993', 'Bahasa Indonesia', NULL, '2017-01-26 13:42:48'),
(6, '927482658274993', 'Ari Hidayat', 'L', 'Padang', '25 September 1993', 'Bahasa Inggris', NULL, '2017-01-26 13:43:46'),
(7, '927482658274998', 'Irma Cantika', 'P', 'Padang', '25 September 1993', 'Bahasa Inggris, IPA', '4200d2514abf45755943526b74474c16.jpg', '2017-01-26 13:45:11'),
(8, '-', 'Ririn Febriesta', 'P', 'Padang', '27 September 1994', 'Pend. Agama Islam', NULL, '2017-01-27 04:28:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(9, 'deviap', 'devi@gmail.com', '090', 'hai', '2020-06-08 03:09:49', 0),
(10, 'ayayay', 'uu@gmail.com', '999', 'jjj', '2020-06-27 03:26:12', 0),
(11, 'rara', 'rara1@gmail.com', '087', 'saran untuk surat,tambahan untuk surat keterangan kelahiran', '2020-06-28 02:55:05', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31'),
(14, 'Sejarah', '2020-06-28 15:26:02'),
(15, 'Visi Misi', '2020-06-28 15:26:11'),
(16, 'Pemerintah Desa', '2020-06-28 15:50:58'),
(17, 'Profil', '2020-06-28 15:53:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 15:09:07', '1', 24, 0),
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 15:14:26', '1', 24, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_laporan`
--

CREATE TABLE `tbl_laporan` (
  `laporan_id` int(50) NOT NULL,
  `laporan_judul` varchar(255) NOT NULL,
  `laporan_deskripsi` text NOT NULL,
  `laporan_tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `laporan_penulis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_laporan`
--

INSERT INTO `tbl_laporan` (`laporan_id`, `laporan_judul`, `laporan_deskripsi`, `laporan_tanggal`, `laporan_penulis`) VALUES
(1, 'jj', 'iuuio', '2020-06-27 03:25:12', 'devi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penduduk`
--

CREATE TABLE `tbl_penduduk` (
  `penduduk_id` int(11) NOT NULL,
  `penduduk_nip` varchar(50) NOT NULL,
  `penduduk_nama` varchar(100) NOT NULL,
  `penduduk_jenkel` varchar(50) NOT NULL,
  `penduduk_tmp_lahir` varchar(100) NOT NULL,
  `penduduk_tgl_lahir` varchar(100) NOT NULL,
  `penduduk_alamat` varchar(100) NOT NULL,
  `penduduk_photo` varchar(100) NOT NULL,
  `penduduk_tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_penduduk`
--

INSERT INTO `tbl_penduduk` (`penduduk_id`, `penduduk_nip`, `penduduk_nama`, `penduduk_jenkel`, `penduduk_tmp_lahir`, `penduduk_tgl_lahir`, `penduduk_alamat`, `penduduk_photo`, `penduduk_tgl_input`) VALUES
(2, '12345', 'deviap', 'P', 'klaten', '4 des 1999', 'jl apa hayo', '', '2020-06-07 12:13:16'),
(3, '77', 'yyy', 'P', 'qoqooqq', '999', 'kkk', '674de2790a724a60ada715322e664064.png', '2020-06-27 03:15:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(8, 'azharadev', NULL, 'P', 'admin', '098f6bcd4621d373cade4e832627b4f6', NULL, 'azharadev@gmail.com', '087', NULL, NULL, NULL, NULL, 1, '1', '2020-06-28 15:36:22', '8fb03d6333084466f3b61e0e38c4ef29.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(1, 'Pengumuman Libur Semester Ganjil Tahun Ajaran 2016-2017', 'Libur semester ganjil tahun ajaran 2016-2017 dimulai dari tanggal 3 Maret 2017 sampai dengan tanggal 7 Maret 207.', '2017-01-21 01:17:30', 'M Fikri Setiadi'),
(2, 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2017-01-21 01:16:20', 'M Fikri Setiadi'),
(3, 'Pengumuman Peresmian dan Launching Website Perdana M-Sekolah', 'Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 07:16:16', 'M Fikri Setiadi'),
(4, 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2016-2017', 'Setelah libur semester ganjil tahun ajaran 2016-2017, proses belajar mengajar di semester genap tahun ajaran 2016-2017 mulai aktif kembali tanggal 2 Maret 2017.', '2017-01-22 07:15:28', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2020-06-06 09:03:46', '::1', 'Chrome'),
(932, '2020-06-07 08:38:52', '::1', 'Chrome'),
(933, '2020-06-08 03:00:24', '::1', 'Chrome'),
(934, '2020-06-09 05:11:21', '::1', 'Chrome'),
(935, '2020-06-27 02:50:43', '::1', 'Chrome'),
(936, '2020-06-27 17:03:11', '::1', 'Chrome'),
(937, '2020-06-28 17:06:33', '::1', 'Chrome'),
(938, '2020-06-28 17:06:33', '::1', 'Chrome'),
(939, '2021-06-23 20:29:34', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
(4, '123083', 'Ari Hidayat', 'L', 1, 'e371e67618ad53c99de380782c373023.png'),
(5, '123084', 'Irma Chaiyo', 'P', 1, '1e148b42c71562841ba3018fc97b748a.png'),
(6, '123085', 'Nadila Ginting', 'P', 1, '8125da21f903803b6992214967239ab3.png'),
(7, '123086', 'Anna Marina', 'P', 1, '33eaf3e3faf28a0fe31670c022f641f1.png'),
(8, '123086', 'Dhea Lubis', 'P', 1, '03e651410e969c3c26e8e0d35380470d.png'),
(9, '123087', 'Nadia Ginting', 'P', 1, 'd7823f8d98d376c085aa284a54d63264.png'),
(10, '123088', 'Mita Febrina', 'P', 1, 'eca0280a4a57c911ee68b8318d1e517f.png'),
(11, '123089', 'Elizabeth ', 'P', 1, 'ec1232a08d650bc8c3197c9db95a7fc8.png'),
(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat`
--

CREATE TABLE `tbl_surat` (
  `surat_id` int(11) NOT NULL,
  `surat_nip` varchar(50) NOT NULL,
  `surat_nama` varchar(50) NOT NULL,
  `surat_jenkel` varchar(50) NOT NULL,
  `surat_tmp_lahir` varchar(50) NOT NULL,
  `surat_tgl_lahir` date NOT NULL,
  `surat_alamat` varchar(100) NOT NULL,
  `surat_keperluan` text NOT NULL,
  `surat_tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_surat`
--

INSERT INTO `tbl_surat` (`surat_id`, `surat_nip`, `surat_nama`, `surat_jenkel`, `surat_tmp_lahir`, `surat_tgl_lahir`, `surat_alamat`, `surat_keperluan`, `surat_tgl_input`) VALUES
(1, '12345', 'deviap', 'P', 'klaten', '0000-00-00', 'jl apa hayo', '', '2020-06-07 12:23:02'),
(5, '11111', 'anindiap', 'P', 'klaten', '0000-00-00', 'jl ace', '', '2020-06-07 12:41:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suratonline`
--

CREATE TABLE `tbl_suratonline` (
  `surat_nik` int(11) NOT NULL,
  `surat_nama` varchar(40) DEFAULT NULL,
  `surat_email` varchar(60) DEFAULT NULL,
  `surat_kontak` varchar(20) DEFAULT NULL,
  `surat_pesan` text DEFAULT NULL,
  `surat_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `surat_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(26, ' Sejarah Desa Sekartaji', '<p>Desa Sekartaji adalah salah satu desa di Kecamatan Nusa Penida, yang terletak 22 Kilometer dari Kota Kecamatan. Sampai saat ini sejarah kelahiran Desa Sekartaji belum bisa diketahui secara pasti karena tidak adanya bukti-bukti tertulis yang menerangkan tentang asal usul atau sejarah dari Desa Sekartaji, akan tetapi berdasarkan cerita dari para tetua kami, Penyusun mencoba merangkum Sejarah Desa Sekartaji dari informasi dan keterangan-keterangan yang Penyusun dapatkan.</p>\r\n\r\n<p>Desa Sekartaji adalah termasuk salah satu desa tua,hal ini dapat dibuktikan dengan ditemukannya banyak kerangka manusia yang ukurannya lebih kecil dari manusia normal dan sudah memakai perhiasan yang terbuat dari tembaga.Tetapi lahirnya nama Desa Sekartaji berawal dari cerita bahwa dahulu kala di Desa Ped ada 8 (delapan) orang bersaudara yang semuanya laki-laki,karena situasi pada saat itu tidak aman maka orang tua mereka memerintahkan kedelapan putra beliau untuk berpencar dan menyebar ke segala penjuru,salah seorang dari delapan bersaudara tersebut adalah I Gusti Nyoman Murdana yang berangkat menuju pesisir selatan Pulau Nusa Penida. Dengan berbekal pusaka berupa patung dan senjata berupa taji (senjata ayam saat diadu ),karena kesekartajian beliau di sepanjang jalan maka senjata (taji) tersebut disuntingkan ditelinga (kasumpangan/kasekaran) setelah sampai kepesisir selatan dan beliau menetap ditempat tersebut maka dinamakan wilayah tersebut dengan nama SEKARTAJI,YANG ARTINYA Taji yang dipakai bunga (sekar) sehingga sampai sekarang desa tersebut bernama Sekartaji.</p>\r\n', '2020-06-28 15:29:45', 14, 'Sejarah', 0, '79ea75acf72cfeb316c76f32e67df492.jpg', 7, 'rara1', 0, 'sejarah-desa-sekartaji'),
(27, 'VISI MISI DESA SEKARTAJI', '<p><strong>Visi</strong>&nbsp;</p>\r\n\r\n<p>Visi Desa Sekartaji tahun 2015-2021 : &quot;Terwujudnya Desa Sekartaji yang Aman, Damai dan Sejahtera&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Misi</strong></p>\r\n\r\n<p>Misi Pembangunan Desa Sekartaji:</p>\r\n\r\n<p>1. Peningkatan kualitas sumber daya manusia</p>\r\n\r\n<p>2. Peningkatan pembangunan disegala bidang</p>\r\n\r\n<p>3. Peningkatan Ekonomi Masyarakat</p>\r\n\r\n<p>4. Peningkatan Pasrtisipasi Masyarakat</p>\r\n', '2020-06-28 15:45:58', 15, 'Visi Misi', 0, 'fc3e0c831cf1cf99b6055aeff0a86352.jpg', 8, 'azharadev', 0, 'visi-misi-desa-sekartaji'),
(28, 'Pemerintah Desa', '<p>Kepala Desa bertugas menyelenggarakan Pemerintahan Desa, melaksanakan pembangunan, pembinaan kemasyarakatan, dan pemberdayaan masyarakat. Untuk melaksanakan tugas Kepala Desa memiliki fungsi-fungsi sebagai berikut:</p>\r\n\r\n<ol>\r\n	<li>Menyelenggarakan Pemerintahan Desa, seperti tata praja Pemerintahan, penetapan peraturan di desa, pembinaan masalah pertanahan, pembinaan ketentraman dan ketertiban, melakukan upaya perlindungan masyarakat, administrasi kependudukan, dan penataan dan pengelolaan wilayah.</li>\r\n	<li>Melaksanakan pembangunan, seperti pembangunan sarana prasarana perdesaan, dan pembangunan bidang pendidikan, kesehatan.</li>\r\n	<li>Pembinaan kemasyarakatan, seperti pelaksanaan hak dan kewajiban masyarakat, partisipasi masyarakat, sosial budaya masyarakat, keagamaan, dan ketenagakerjaan.</li>\r\n	<li>Pemberdayaan masyarakat, seperti tugas sosialisasi dan motivasi masyarakat di bidang budaya, ekonomi, politik, lingkungan hidup, pemberdayaan keluarga, pemuda, olahraga, dan karang taruna.</li>\r\n	<li>Menjaga hubungan kemitraan dengan lembaga masyarakat dan lembaga lainnya.</li>\r\n</ol>\r\n\r\n<p>&nbsp;Sekretaris Desa berkedudukan sebagai unsur pimpinan Sekretariat Desa. Sekretaris Desa bertugas membantu Kepala Desa dalam bidang administrasi pemerintahan. Untuk melaksanakan tugas, Sekretaris Desa mempunyai fungsi:</p>\r\n\r\n<ol>\r\n	<li>Melaksanakan urusan ketatausahaan seperti tata naskah, administrasi surat menyurat, arsip, dan ekspedisi.</li>\r\n	<li>Melaksanakan urusan umum seperti penataan administrasi perangkat desa, penyediaan prasarana perangkat desa dan kantor, penyiapan rapat, pengadministrasian aset, inventarisasi, perjalanan dinas, dan pelayanan umum.</li>\r\n	<li>Melaksanakan urusan keuangan seperti pengurusan administrasi keuangan, administrasi sumber-sumber pendapatan dan pengeluaran, verifikasi administrasi keuangan, dan admnistrasi penghasilan Kepala Desa, Perangkat Desa, BPD, dan lembaga pemerintahan desa lainnya.</li>\r\n	<li>Melaksanakan urusan perencanaan seperti menyusun rencana anggaran pendapatan dan belanja desa, menginventarisir data-data dalam rangka pembangunan, melakukan monitoring dan evaluasi program, serta penyusunan laporan.</li>\r\n</ol>\r\n\r\n<p>Kepala urusan berkedudukan sebagai unsur staf sekretariat. Kepala urusan bertugas membantu Sekretaris Desa dalam urusan pelayanan administrasi pendukung pelaksanaan tugas-tugas pemerintahan. Untuk melaksanakan tugas kepala urusan mempunyai fungsi:</p>\r\n\r\n<ol>\r\n	<li>Kepala urusan tata usaha dan umum memiliki fungsi seperti melaksanakan urusan ketatausahaan seperti tata naskah, administrasi surat menyurat, arsip, dan ekspedisi, dan penataan administrasi perangkat desa, penyediaan prasarana perangkat desa dan kantor, penyiapan rapat, pengadministrasian aset, inventarisasi, perjalanan dinas, dan pelayanan umum.</li>\r\n	<li>Kepala urusan keuangan memiliki fungsi seperti melaksanakan urusan keuangan seperti pengurusan administrasi keuangan, administrasi sumber-sumber pendapatan dan pengeluaran, verifikasi administrasi keuangan, dan admnistrasi penghasilan Kepala Desa, Perangkat Desa, BPD, dan lembaga pemerintahan desa lainnya.</li>\r\n	<li>Kepala urusan perencanaan memiliki fungsi mengoordinasikan urusan perencanaan seperti menyusun rencana anggaran pendapatan dan belanja desa, menginventarisir data-data dalam rangka pembangunan, melakukan monitoring dan evaluasi program, serta penyusunan laporan.</li>\r\n</ol>\r\n\r\n<p>Kepala Kewilayahan atau sebutan lainnya berkedudukan sebagai unsur satuan tugas kewilayahan yang bertugas membantu Kepala Desa dalam pelaksanaan tugasnya di wilayahnya. Untuk melaksanakan tugas Kepala Kewilayahan/Kepala Dusun memiliki fungsi:</p>\r\n\r\n<ol>\r\n	<li>Pembinaan ketentraman dan ketertiban, pelaksanaan upaya perlindungan masyarakat, mobilitas kependudukan, dan penataan dan pengelolaan wilayah.</li>\r\n	<li>Mengawasi pelaksanaan pembangunan di wilayahnya.</li>\r\n	<li>Melaksanakan pembinaan kemasyarakatan dalam meningkatkan kemampuan dan kesadaran masyarakat dalam menjaga lingkungannya.</li>\r\n	<li>Melakukan upaya-upaya pemberdayaan masyarakat dalam menunjang kelancaran penyelenggaraan pemerintahan dan pembangunan.</li>\r\n</ol>\r\n\r\n<p>Kepala seksi berkedudukan sebagai unsur pelaksana teknis. Kepala seksi bertugas membantu Kepala Desa sebagai pelaksana tugas operasional. Untuk melaksanakan tugas Kepala Seksi mempunyai fungsi:</p>\r\n\r\n<ol>\r\n	<li>Kepala seksi pemerintahan mempunyai fungsi melaksanakan manajemen tata praja Pemerintahan, menyusun rancangan regulasi desa, pembinaan masalah pertanahan, pembinaan ketentraman dan ketertiban, pelaksanaan upaya perlindungan masyarakat, kependudukan, penataan dan pengelolaan wilayah, serta pendataan dan pengelolaan Profil Desa.</li>\r\n	<li>Kepala seksi kesejahteraan mempunyai fungsi melaksanakan pembangunan sarana prasarana perdesaan, pembangunan bidang pendidikan, kesehatan, dan tugas sosialisasi serta motivasi masyarakat di bidang budaya, ekonomi, politik, lingkungan hidup, pemberdayaan keluarga, pemuda, olahraga, dan karang taruna.</li>\r\n	<li>Kepala seksi pelayanan memiliki fungsi melaksanakan penyuluhan dan motivasi terhadap pelaksanaan hak dan kewajiban masyarakat, meningkatkan upaya partisipasi masyarakat, pelestarian nilai sosial budaya masyarakat, keagamaan, dan ketenagakerjaan.</li>\r\n</ol>\r\n\r\n<p>Sumber : PERMENDAGRI NOMOR 84 TAHUN 2015 TENTANG SUSUNAN ORGANISASI DAN TATA KERJA PEMERINTAH DESA</p>\r\n', '2020-06-28 15:51:49', 16, 'Pemerintah Desa', 0, '4972e60ee846dcb297c5d2fc7d1ae3a5.jpg', 8, 'azharadev', 0, 'pemerintah-desa'),
(29, 'Selamat Datang di Website Resmi Desa Sekartaji', '<p>Selamat Datang di Website Resmi Desa Sekartaji , Kecamatan Nusapenida Kabupaten Klungkung. Media komunikasi dan transparansi Pemerintah Desa Sekartaji untuk seluruh masyarakat.</p>\r\n', '2020-06-28 15:56:49', 17, 'Profil', 0, 'c8fa3578ef2be10ee8955807d65f6e29.jpg', 8, 'azharadev', 0, 'selamat-datang-di-website-resmi-desa-sekartaji'),
(30, 'Badan Permusyawaratan Desa', '<p>Secara yuridis, tugas Badan Permusyawaratan Desa mengacu kepada regulasi desa yakni Undang-Undang Nomor 6 Tahun 2014 tentang Desa.&nbsp;</p>\r\n\r\n<p>Badan Permusyawaratan Desa yang selanjutnya disingkat BPD atau yang disebut dengan nama lain adalah lembaga yang melaksanakan fungsi pemerintahan yang anggotanya merupakan wakil dari penduduk Desa berdasarkan keterwakilan wilayah dan ditetapkan secara demokratis.</p>\r\n\r\n<p>Dalam Permendagri No.110/2016 Badan Permusyawaratan Desa mempunyai fungsi, membahas dan menyepakati Rancangan Peraturan Desa bersama Kepala Desa, menampung dan menyalurkan aspirasi masyarakat Desa, dan melakukan pengawasan kinerja Kepala Desa.</p>\r\n\r\n<p>Selain melaksanakan fungsi diatas, Badan Permusyawaratan Desa juga mempunyai tugas sebagai berikut.</p>\r\n\r\n<p>BPD mempunyai fungsi:</p>\r\n\r\n<ol>\r\n	<li>membahas dan menyepakati Rancangan Peraturan Desa bersama Kepala Desa;</li>\r\n	<li>menampung dan menyalurkan aspirasi masyarakat Desa; dan</li>\r\n	<li>melakukan pengawasan kinerja Kepala Desa.</li>\r\n</ol>\r\n\r\n<p>BPD mempunyai tugas:</p>\r\n\r\n<ol>\r\n	<li>menggali aspirasi masyarakat;</li>\r\n	<li>menampung aspirasi masyarakat;</li>\r\n	<li>mengelola aspirasi masyarakat;</li>\r\n	<li>menyalurkan aspirasi masyarakat;</li>\r\n	<li>menyelenggarakan musyawarah BPD;</li>\r\n	<li>menyelenggarakan musyawarah Desa;</li>\r\n	<li>membentuk panitia pemilihan Kepala Desa;</li>\r\n	<li>menyelenggarakan musyawarah Desa khusus untuk pemilihan Kepala Desa antarwaktu;</li>\r\n	<li>membahas dan menyepakati rancangan Peraturan Desa bersama Kepala Desa;</li>\r\n	<li>melaksanakan pengawasan terhadap kinerja Kepala Desa;</li>\r\n	<li>melakukan evaluasi laporan keterangan penyelenggaraan Pemerintahan Desa;</li>\r\n	<li>menciptakan hubungan kerja yang harmonis dengan Pemerintah Desa dan lembaga Desa lainnya; dan</li>\r\n	<li>melaksanakan tugas lain yang diatur dalam ketentuan peraturan perundang-undangan.</li>\r\n</ol>\r\n\r\n<p>Sumber : PERMENDAGRI NOMOR 110 TENTANG BADAN PERMUSYAWARATAN DESA</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-06-28 16:00:36', 16, 'Pemerintah Desa', 0, '415e93f4a5582787ac66f995423e93d6.png', 8, 'azharadev', 0, 'badan-permusyawaratan-desa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  ADD PRIMARY KEY (`laporan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_penduduk`
--
ALTER TABLE `tbl_penduduk`
  ADD PRIMARY KEY (`penduduk_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_surat`
--
ALTER TABLE `tbl_surat`
  ADD PRIMARY KEY (`surat_id`);

--
-- Indeks untuk tabel `tbl_suratonline`
--
ALTER TABLE `tbl_suratonline`
  ADD PRIMARY KEY (`surat_nik`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  MODIFY `laporan_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_penduduk`
--
ALTER TABLE `tbl_penduduk`
  MODIFY `penduduk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=940;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_surat`
--
ALTER TABLE `tbl_surat`
  MODIFY `surat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
