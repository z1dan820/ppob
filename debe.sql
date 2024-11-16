-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2023 at 08:52 PM
-- Server version: 10.6.14-MariaDB-cll-lve-log
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afistore_up`
--

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `path`, `tipe`, `deskripsi`, `created_at`, `updated_at`) VALUES
(117, '/assets/banner/BANNER.png', 'banner', 'banner', '2023-03-30 19:47:25', '2023-03-30 19:47:25'),
(118, '/assets/banner/BANNER2.png', 'banner', '.', '2023-04-07 22:45:39', '2023-04-07 22:45:39'),
(119, '/assets/banner/BANNER2.png', 'banner', '.', '2023-04-07 22:45:57', '2023-04-07 22:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `data_joki`
--

CREATE TABLE `data_joki` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` text NOT NULL,
  `email_joki` text NOT NULL,
  `password_joki` text NOT NULL,
  `loginvia_joki` text NOT NULL,
  `nickname_joki` text NOT NULL,
  `request_joki` text NOT NULL,
  `catatan_joki` text NOT NULL,
  `status_joki` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `metode` varchar(255) NOT NULL,
  `no_pembayaran` varchar(255) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `status` enum('Success','Pending') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gojeks`
--

CREATE TABLE `gojeks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_token` varchar(2000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history__gojeks`
--

CREATE TABLE `history__gojeks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history__ovos`
--

CREATE TABLE `history__ovos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `jumlah_transaksi` varchar(255) NOT NULL,
  `tipe_transaksi` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `sub_nama` varchar(225) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `brand` text NOT NULL,
  `server_id` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `thumbnail` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL DEFAULT 'game',
  `petunjuk` varchar(255) DEFAULT NULL,
  `deskripsi_game` text DEFAULT NULL,
  `deskripsi_field` text DEFAULT NULL,
  `placeholder_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `placeholder_server` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `sub_nama`, `kode`, `brand`, `server_id`, `status`, `thumbnail`, `banner`, `tipe`, `petunjuk`, `deskripsi_game`, `deskripsi_field`, `placeholder_id`, `placeholder_server`, `created_at`, `updated_at`) VALUES
(8507, 'Mobile Legend: Bang Bang', 'MOONTON', 'mobile-legends', 'MOBILE LEGENDS', 1, 'active', '/assets/thumbnail/ML-64f6 (1).jpeg', '/assets/banner_game/mlbb_miliyan.id.jpg', 'game', '/assets/petunjuk/16759351881649738625ML.jpg', 'Mobile Legends	Moonton	mlbb	mlbb	Moonton<br>TOP UP DIAMOND MOBILE LEGENDS<br>Proses cepat 3 detik setelah pembayaran<br>Open 24 hours<br><br>Cara order :<br>1. Masukkan ID + (server)<br>2. Pilih nominal diamond<br>3. Pilih metode pembayaran<br>4. Masukkan nomor Whatsapp dengan benar!<br>5. Klik beli sekarang dan lakukan pembayaran<br>6. Diamond akan masuk otomatis ke akun anda<br><br>UANG TRANSFER SESUAI TOTAL TAGIHAN !!!', 'Untuk mengetahui User ID Anda, silakan klik menu profile dibagian kiri atas pada menu utama game. User ID akan terlihat dibagian bawah Nama Karakter Game Anda. Silakan masukkan User ID Anda untuk menyelesaikan transaksi. Contoh : 12345678(1234).', 'Masukan UserID', 'ZoneID', '2023-03-22 08:39:08', '2023-03-30 17:39:51'),
(8509, 'Free Fire', 'GARENA', 'free-fire', 'FREE FIRE', 0, 'active', '/assets/thumbnail/FF-6958.jpeg', '/assets/banner_game/freefire_miliyan.id.jpg', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan ID Anda, klik pada ikon karakter. User ID tercantum di bawah nama karakter Anda. Contoh: 5363287064.', 'Masukan UserID', '-', '2023-03-23 13:55:05', '2023-03-31 12:53:28'),
(8510, 'Genshin Impact', 'GENSHIN', 'genshin-impact', 'GENSHIN IMPACT', 1, 'active', '/assets/thumbnail/GenshinImpact-6c4f.jpeg', '/assets/banner_game/GENSHIN-miliyan.png', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan UID Anda, masuk pakai akun Anda. Klik pada tombol profile di pojok kiri atas layar. Temukan UID dibawah avatar. Masukan UID Anda di sini. Selain itu, Anda juga dapat temukan UID Anda di pojok bawah kanan layar.', NULL, NULL, '2023-03-23 13:56:41', '2023-03-30 18:23:13'),
(8511, 'Pubg Mobile Indonesia', 'TENCENT', 'pubg-mobile-indonesia', 'PUBG MOBILE', 0, 'active', '/assets/thumbnail/PUBGindo-ab6f.jpeg', '/assets/banner_game/pubgmobile_miliyan.id.jpg', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan ID Anda, klik pada ikon karakter. User ID tercantum di bawah nama karakter Anda. Contoh: 5330659921', NULL, NULL, '2023-03-23 13:59:49', '2023-03-30 17:41:36'),
(8512, 'Point Blank', 'ZEPETTO', 'point-blank', 'POINT BLANK', 0, 'active', '/assets/thumbnail/PB-c8c8.jpeg', '/assets/banner_game/PBID_Coda_Asset_Product_640X241.jpg', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan Zepetto ID Anda, silakan kunjungi Halaman Beranda kami dan log-in, Kemudian Anda dapat lihat Zepetto ID Anda tercantum di pojok atas kanan layar atau menggunakan ID Log-in Anda.', NULL, NULL, '2023-03-23 14:01:23', '2023-03-30 17:57:45'),
(8513, 'Arena of Valor', 'AOV', 'arena-of-valor', 'Arena of Valor', 0, 'active', '/assets/thumbnail/AOV-6db2.jpeg', '/assets/banner_game/aov_miliyan.id.png', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan User ID Anda, Ketuk ikon pengaturan, scroll ke bawah, temukan bagian \"Umum\", lalu Klik \"Player ID\". Contoh: \"888347346994333\".', NULL, NULL, '2023-03-23 14:02:44', '2023-03-30 18:24:28'),
(8514, 'Valorant', 'Riot Games', 'valorant', 'VALORANT', 0, 'active', '/assets/thumbnail/Valorant-c85f.jpeg', '/assets/banner_game/valorant.jpg', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan Riot ID Anda, buka halaman profil akun dan salin Riot ID+Tag menggunakan tombol yang tersedia disamping Riot ID. (Contoh: Westbourne#SEA)', NULL, NULL, '2023-03-23 14:05:11', '2023-03-30 18:26:29'),
(8515, 'ONE PUCH MAN: The Strongers', 'OPM', 'one-puch-man', 'One Punch Man', 1, 'active', '/assets/thumbnail/OnePunchMan-f1fb.jpeg', '/assets/banner_game/onepuchman.jpg', 'game', NULL, 'Proses Otomatis', 'Cara memeriksa info pemain: Masuk ke game, klik \"Mall\" di area Kota Utama, lalu ketuk tombol \"Top up\". Di jendela \"Top up\" kamu dapat menemukan SID dan UID di sudut kiri bawah.', NULL, NULL, '2023-03-23 14:06:23', '2023-03-30 18:30:59'),
(8516, 'Ragnarok M', 'RAGNAROK', 'ragnarok-m', 'Ragnarok M: Eternal Love', 1, 'active', '/assets/thumbnail/ROXM-24b7.jpeg', '/assets/banner_game/ragnarok.jpg', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan ID Anda, tap pada gambar karakter Anda. ID Anda akan terdaftar dibawah nama karakter Anda. Mohon masukan nomor ID Anda disini. Contoh: 4295037856', NULL, NULL, '2023-03-23 14:07:38', '2023-03-30 18:33:56'),
(8517, 'Lords Mobile', 'Games', 'lords-mobile', 'Lords Mobile', 0, 'active', '/assets/thumbnail/LordsMobile-4cc4.jpeg', '/assets/banner_game/lordmobile.jpeg', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan ID Anda, tap pada gambar karakter Anda. ID Anda akan terdaftar dibawah nama karakter Anda. Mohon masukan nomor ID Anda disini. Contoh: 4295037856', NULL, NULL, '2023-03-23 14:08:40', '2023-03-30 18:34:31'),
(8518, 'Sausage Man', 'Games', 'sausage-man', 'Sausage Man', 0, 'active', '/assets/thumbnail/SausageMan-54d5.jpeg', '/assets/banner_game/sausage.jpg', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan ID Anda, tap pada gambar karakter Anda. ID Anda akan terdaftar dibawah nama karakter Anda. Mohon masukan nomor ID Anda disini. Contoh: 4295037856', NULL, NULL, '2023-03-23 14:09:32', '2023-03-30 18:34:58'),
(8519, '8 Ball Pool', '8 BALL POOL', '8-ball-pool', '8 BALL POOL', 0, 'active', '/assets/thumbnail/8Ball-1edd.jpeg', '/assets/banner_game/8-Ball-Pool_ID.jpg', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan ID Anda, tap pada gambar karakter Anda. ID Anda akan terdaftar dibawah nama karakter Anda. Mohon masukan nomor ID Anda disini. Contoh: 4295037856', NULL, NULL, '2023-03-23 14:10:46', '2023-03-30 18:35:37'),
(8520, 'MARVEL Super War', 'Games', 'marvel-super-war', 'MARVEL Super War', 0, 'active', '/assets/thumbnail/MarvelSuperWar-1d2a.jpeg', '/assets/banner_game/MSW_640x241.png', 'game', NULL, 'Proses Otomatis', 'Untuk menemukan ID Anda, tap pada gambar karakter Anda. ID Anda akan terdaftar dibawah nama karakter Anda. Mohon masukan nomor ID Anda disini. Contoh: 4295037856', NULL, NULL, '2023-03-23 14:11:56', '2023-03-30 18:36:07'),
(8521, 'Joki Rank Eceran', 'JASA JOKI', 'joki-rank-eceran', 'JASA JOKI', 0, 'active', '/assets/thumbnail/jokiml1.png', '/assets/banner_game/ML-BANER-bfa2.png', 'joki', NULL, 'Orderan Joki di cek admin jam 10:00-21:00 WIB<br><br>Jasa Joki Rank Mobile Legend Eceran Auto Win Streak<br><br>Lengkapi Data Joki dengan Teliti<br>Pilih Paket Joki<br>Pilih Metode Pembayaran<br>Tulis nomor WhatsApp yg benar!<br>Klik ORDER NOW & lakukan Pembayaran<br>Admin akan menginformasikan melalui Whatsapp saat jokian dikerjakan/selesai<br>Perhatikan<br>-Matikan centang verify/verikasi akun di pengaturan ML<br>-Jika akun dilogin 3x selama proses joki berlangsung maka dianggap selesai dan uang hangus<br><br><br>Estimasi Proses Jasa Joki Kita Usahakan Secepatnya (akan diinfokan oleh admin)<br><br>Minimal 12 Jam - Maksimal 2x24 Jam', '•HARAP INPUT DATA DENGAN BENAR<br>•CEK TERLEBIH DAHULU SEBELUM ORDER', NULL, NULL, '2023-02-26 07:38:00', '2023-04-01 18:04:50'),
(8522, 'Joki Rank Paketan', 'JASA JOKI', 'joki-rank-paketan', 'JASA JOKI', 0, 'active', '/assets/thumbnail/jokiml2.png', '/assets/banner_game/ML-BANER-bfa2.png', 'joki', NULL, 'Orderan Joki di cek admin jam 10:00-21:00 WIB<br><br>Jasa Joki Rank Mobile Legend Eceran Auto Win Streak<br><br>Lengkapi Data Joki dengan Teliti<br>Pilih Paket Joki<br>Pilih Metode Pembayaran<br>Tulis nomor WhatsApp yg benar!<br>Klik ORDER NOW & lakukan Pembayaran<br>Admin akan menginformasikan melalui Whatsapp saat jokian dikerjakan/selesai<br>Perhatikan<br>-Matikan centang verify/verikasi akun di pengaturan ML<br>-Jika akun dilogin 3x selama proses joki berlangsung maka dianggap selesai dan uang hangus<br><br><br>Estimasi Proses Jasa Joki Kita Usahakan Secepatnya (akan diinfokan oleh admin)<br><br>Minimal 12 Jam - Maksimal 2x24 Jam', '', NULL, NULL, '2023-02-26 07:42:50', '2023-04-01 18:05:25'),
(8523, 'Joki Classic', 'JASA JOKI', 'joki-classic', 'JASA JOKI', 0, 'active', '/assets/thumbnail/jokiml3.png', '/assets/banner_game/ML-BANER-bfa2.png', 'joki', NULL, 'Orderan Joki di cek admin jam 10:00-21:00 WIB<br><br>Jasa Joki Rank Mobile Legend Eceran Auto Win Streak<br><br>Lengkapi Data Joki dengan Teliti<br>Pilih Paket Joki<br>Pilih Metode Pembayaran<br>Tulis nomor WhatsApp yg benar!<br>Klik ORDER NOW & lakukan Pembayaran<br>Admin akan menginformasikan melalui Whatsapp saat jokian dikerjakan/selesai<br>Perhatikan<br>-Matikan centang verify/verikasi akun di pengaturan ML<br>-Jika akun dilogin 3x selama proses joki berlangsung maka dianggap selesai dan uang hangus<br><br><br>Estimasi Proses Jasa Joki Kita Usahakan Secepatnya (akan diinfokan oleh admin)<br><br>Minimal 12 Jam - Maksimal 2x24 Jam', '', NULL, NULL, '2023-02-26 07:44:05', '2023-04-01 18:02:44'),
(8524, 'Telkomsel', 'PULSA', 'telkomsel', 'PULSA', 0, 'unactive', '/assets/thumbnail/telkomsel.jpeg', '/assets/banner_game/20230316_141710_0000.png', 'game', NULL, 'Proses : Otomatis', 'Masukkan Nomor Hp dengan benar, kesalahan input Nomor bukan tanggung jawab kami.', NULL, NULL, '2023-02-26 07:45:43', '2023-03-30 17:02:02'),
(8525, 'Indosat', 'PULSA', 'indosat', 'PULSA', 0, 'unactive', '/assets/thumbnail/im3.jpeg', '/assets/banner_game/20230316_141710_0000.png', 'game', NULL, 'Proses : Otomatis', 'Masukkan Nomor Hp dengan benar, kesalahan input Nomor bukan tanggung jawab kami.', NULL, NULL, '2023-02-26 07:48:33', '2023-03-30 17:02:16'),
(8526, 'Smartfren', 'PULSA', 'smartfren', 'PULSA', 0, 'unactive', '/assets/thumbnail/smartfren.jpg', '/assets/banner_game/20230316_141710_0000.png', 'game', NULL, 'Proses : Otomatis', 'Masukkan Nomor Hp dengan benar, kesalahan input Nomor bukan tanggung jawab kami.', NULL, NULL, '2023-02-26 07:49:36', '2023-03-30 17:02:29'),
(8527, 'Dana', 'DANA', 'dana', 'DANA', 0, 'unactive', '/assets/thumbnail/dana.jpg', '/assets/banner_game/20230316_141710_0000.png', 'game', NULL, 'Proses : Otomatis', 'Masukkan Nomor Hp dengan benar, kesalahan input Nomor bukan tanggung jawab kami.', NULL, NULL, '2023-02-26 07:50:58', '2023-03-30 17:02:44'),
(8528, 'Ovo', 'OVO', 'ovo', 'OVO', 0, 'unactive', '/assets/thumbnail/ovo.jpg', '/assets/banner_game/20230316_141710_0000.png', 'game', NULL, 'Proses : Otomatis', 'Masukkan Nomor Hp dengan benar, kesalahan input Nomor bukan tanggung jawab kami.', NULL, NULL, '2023-02-26 07:52:00', '2023-03-30 17:02:54'),
(8529, 'Shopee Pay', 'shopeepay', 'shopeepay', 'shopeepay', 0, 'unactive', '/assets/thumbnail/shopeepay.jpg', '/assets/banner_game/png_20230305_075128_0000.png', 'game', NULL, 'Proses Otomatis', 'Masukkan Nomor Hp dengan benar, kesalahan input Nomor bukan tanggung jawab kami.', NULL, NULL, '2023-03-22 08:37:06', '2023-03-30 17:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `harga_member` bigint(20) NOT NULL,
  `harga_platinum` bigint(20) NOT NULL,
  `harga_gold` bigint(20) NOT NULL,
  `profit` int(11) NOT NULL,
  `profit_member` int(11) NOT NULL,
  `profit_platinum` int(11) NOT NULL,
  `profit_gold` int(11) NOT NULL,
  `catatan` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `product_logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`id`, `kategori_id`, `layanan`, `provider_id`, `harga`, `harga_member`, `harga_platinum`, `harga_gold`, `profit`, `profit_member`, `profit_platinum`, `profit_gold`, `catatan`, `status`, `provider`, `product_logo`, `created_at`, `updated_at`) VALUES
(1, '8507', 'MOBILELEGEND - 36 Diamond', 'MLO36', 9296, 9296, 9296, 9296, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(2, '8507', 'MOBILELEGEND - 44 Diamond', 'MLO44', 10918, 10918, 10918, 10918, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(3, '8507', 'MOBILELEGEND - 19 Diamond', 'MLO19', 4889, 4889, 4889, 4889, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(4, '8507', 'MOBILELEGEND - 74 Diamond', 'MLO74', 17744, 17744, 17744, 17744, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(5, '8507', 'MOBILELEGEND - 85 Diamond', 'MLO85', 18736, 18736, 18736, 18736, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(6, '8507', 'MOBILELEGEND - 170 Diamond', 'MLO170', 39055, 39055, 39055, 39055, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(7, '8507', 'MOBILELEGEND - 185 Diamond', 'MLO185', 40952, 40952, 40952, 40952, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(8, '8507', 'MOBILELEGEND - 222 Diamond', 'MLO222', 49881, 49881, 49881, 49881, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(9, '8507', 'MOBILELEGEND - 296 Diamond', 'MLO296', 66198, 66198, 66198, 66198, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(10, '8507', 'MOBILELEGEND - 370 Diamond', 'MLO370', 80484, 80484, 80484, 80484, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(11, '8507', 'MOBILELEGEND - 9288 Diamond', 'MLO9288', 1860000, 1860000, 1860000, 1860000, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(12, '8507', 'MOBILE LEGENDS Startlight Member Plus', 'MOBILELEGENDPlus', 286650, 286650, 286650, 286650, 0, 0, 0, 0, '-', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(13, '8507', 'MOBILE LEGENDS Startlight Member', 'MOBILELEGENDStartlight', 158146, 158146, 158146, 158146, 0, 0, 0, 0, '-', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(14, '8507', 'MOBILE LEGENDS Twilight Pass', 'MOBILELEGENDTwilightPass', 115050, 115050, 115050, 115050, 0, 0, 0, 0, '-', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(15, '8507', 'MOBILELEGEND - 408 Diamond', 'MLO408', 88421, 88421, 88421, 88421, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(16, '8507', 'MOBILELEGEND - 429 Diamond', 'MLO429', 92350, 92350, 92350, 92350, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(17, '8507', 'MOBILELEGEND - 568 Diamond', 'MLO568', 124125, 124125, 124125, 124125, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(18, '8507', 'MOBILELEGEND - 706 Diamond', 'MLO706', 148240, 148240, 148240, 148240, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(19, '8507', 'MOBILELEGEND - 600 Diamond', 'MLO600', 130000, 130000, 130000, 130000, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(20, '8507', 'MOBILELEGEND - 875 Diamond', 'MLO875', 182240, 182240, 182240, 182240, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(21, '8507', 'MOBILELEGEND - 963 Diamond', 'MLO963', 207897, 207897, 207897, 207897, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(22, '8507', 'MOBILELEGEND - 1412 Diamond', 'MLO1412', 302480, 302480, 302480, 302480, 0, 0, 0, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(23, '8509', 'Free Fire Membership Mingguan', 'MembershipMingguan', 28525, 28525, 28525, 28525, 0, 0, 0, 0, 'Instant 100 diamond dan 50 diamond per hari selama 7 hari (Wajib Login untuk mendapatkan diamond)', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(24, '8509', 'Free Fire Membership Bulanan', 'MembershipBulanan', 84500, 84500, 84500, 84500, 0, 0, 0, 0, 'Instant 500 diamond dan 70 diamond per hari selama 30 hari (Wajib Login untuk mendapatkan diamond)', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(25, '8509', 'Free Fire 5 Diamond', 'FreeFire5Diamond', 756, 756, 756, 756, 0, 0, 0, 0, 'Free Fire 5 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(26, '8509', 'Free Fire 70 Diamond', 'FreeFire70Diamond', 9041, 9041, 9041, 9041, 0, 0, 0, 0, 'Free Fire 70 Diamond', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(27, '8509', 'Free Fire 90 Diamond', 'FreeFire90Diamond', 11465, 11465, 11465, 11465, 0, 0, 0, 0, 'Free Fire 90 Diamond', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(28, '8509', 'Free Fire 100 Diamond', 'FreeFire100Diamond', 13148, 13148, 13148, 13148, 0, 0, 0, 0, 'Free Fire 100 Diamond', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(29, '8509', 'Free Fire 140 Diamond', 'FreeFire140Diamond', 16764, 16764, 16764, 16764, 0, 0, 0, 0, 'Free Fire 140 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(30, '8509', 'Free Fire 180 Diamond', 'FreeFire180Diamond', 26050, 26050, 26050, 26050, 0, 0, 0, 0, 'Free Fire 180 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(31, '8509', 'Free Fire 250 Diamond', 'FreeFire250Diamond', 30480, 30480, 30480, 30480, 0, 0, 0, 0, 'Free Fire 250 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(32, '8509', 'Free Fire 355 Diamond', 'FreeFire355Diamond', 41910, 41910, 41910, 41910, 0, 0, 0, 0, 'Free Fire 355 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(33, '8509', 'Free Fire 720 Diamond', 'FreeFire720Diamond', 83820, 83820, 83820, 83820, 0, 0, 0, 0, 'Free Fire 720 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(34, '8509', 'Free Fire 1075 Diamond', 'FreeFire1075Diamond', 125730, 125730, 125730, 125730, 0, 0, 0, 0, 'Free Fire 1075 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(35, '8509', 'Free Fire 2000 Diamond', 'FreeFire2000Diamond', 234696, 234696, 234696, 234696, 0, 0, 0, 0, 'Free Fire 2000 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(36, '8509', 'Free Fire 3640 Diamond', 'FreeFire3640Diamond', 425196, 425196, 425196, 425196, 0, 0, 0, 0, 'Free Fire 3640 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(37, '8509', 'Free Fire 7290 Diamond', 'FreeFire7290Diamond', 838200, 838200, 838200, 838200, 0, 0, 0, 0, 'Free Fire 7290 Diamond', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(38, '8509', 'Free Fire 73100 Diamond', 'FreeFire73100Diamond', 9700000, 9700000, 9700000, 9700000, 0, 0, 0, 0, 'Free Fire 73100 Diamond', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(39, '8510', 'Genshin Impact Blessing of the Welkin Moon', 'WelkinMoon', 62525, 62525, 62525, 62525, 0, 0, 0, 0, 'Login Setiap hari selama 30 hari mendapatkan 300 Genesis Crystal secara langsung (1x) dan mendapatkan 90 Primogem setiap hari', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(40, '8510', 'Genshin Impact 60 Genesis Crystals', 'GenshinImpact60', 13010, 13010, 13010, 13010, 0, 0, 0, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(41, '8510', 'Genshin Impact 300+30 Genesis Crystals', 'GenshinImpact300', 62525, 62525, 62525, 62525, 0, 0, 0, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(42, '8510', 'Genshin Impact 980+110 Genesis Crystals', 'GenshinImpact980', 197025, 197025, 197025, 197025, 0, 0, 0, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(43, '8510', 'Genshin Impact 1980+260 Genesis Crystals', 'GenshinImpact1980', 430025, 430025, 430025, 430025, 0, 0, 0, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(44, '8510', 'Genshin Impact 3280+600 Genesis Crystals', 'GenshinImpact3280', 700025, 700025, 700025, 700025, 0, 0, 0, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(45, '8510', 'Genshin Impact 6480+1600 Genesis Crystals', 'GenshinImpact6480', 1300000, 1300000, 1300000, 1300000, 0, 0, 0, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(46, '8511', 'PUBG MOBILE 35 UC', 'PUBGMOBILE35UC', 7655, 7655, 7655, 7655, 0, 0, 0, 0, 'PUBG MOBILE 35 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(47, '8511', 'PUBG MOBILE 50 UC', 'PUBGMOBILE50UC', 9240, 9240, 9240, 9240, 0, 0, 0, 0, 'PUBG MOBILE 50 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(48, '8511', 'PUBG MOBILE 70 UC', 'PUBGMOBILE70UC', 14360, 14360, 14360, 14360, 0, 0, 0, 0, 'PUBG MOBILE 70 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(49, '8511', 'PUBG MOBILE 100 UC', 'PUBGMOBILE100UC', 20000, 20000, 20000, 20000, 0, 0, 0, 0, 'PUBG MOBILE 100 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(50, '8511', 'PUBG MOBILE 150 UC', 'PUBGMOBILE150UC', 31500, 31500, 31500, 31500, 0, 0, 0, 0, 'PUBG MOBILE 150 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(51, '8511', 'PUBG MOBILE 210 UC', 'PUBGMOBILE210UC', 40975, 40975, 40975, 40975, 0, 0, 0, 0, 'PUBG MOBILE 210 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(52, '8511', 'PUBG MOBILE 500 UC', 'PUBGMOBILE500UC', 92100, 92100, 92100, 92100, 0, 0, 0, 0, 'PUBG MOBILE 500 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(53, '8511', 'PUBG MOBILE 700 UC', 'PUBGMOBILE700UC', 140000, 140000, 140000, 140000, 0, 0, 0, 0, 'PUBG MOBILE 700 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(54, '8511', 'PUBG MOBILE 1750 UC', 'PUBGMOBILE1750UC', 315050, 315050, 315050, 315050, 0, 0, 0, 0, 'PUBG MOBILE 1750 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(55, '8511', 'PUBG MOBILE 7000 UC', 'PUBGMOBILE7000', 1340700, 1340700, 1340700, 1340700, 0, 0, 0, 0, 'PUBG MOBILE 7000 UC', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(56, '8512', '1200 PB Cash', '1200PBCash', 9100, 9100, 9100, 9100, 0, 0, 0, 0, '1200 Point Blank Cash', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(57, '8512', '2400 PB Cash', '2400PBCash', 18200, 18200, 18200, 18200, 0, 0, 0, 0, '2400 PB Cash', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(58, '8512', '12000 PB Cash', '12000PBCash', 89900, 89900, 89900, 89900, 0, 0, 0, 0, '12000 PB Cash', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(59, '8512', '60000 PB Cash', '60000PBCash', 465025, 465025, 465025, 465025, 0, 0, 0, 0, '-', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(60, '8512', '6000 PB Cash', '6000PBCash', 44900, 44900, 44900, 44900, 0, 0, 0, 0, '6000 PB Cash', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(61, '8512', '36000 PB Cash', '36000PBCash', 270300, 270300, 270300, 270300, 0, 0, 0, 0, '-', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(62, '8513', 'AOV 18 Vouchers', 'AOV18', 4630, 4630, 4630, 4630, 0, 0, 0, 0, 'AOV 18 Vouchers', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(63, '8513', 'AOV 40 Vouchers', 'AOV40', 9545, 9545, 9545, 9545, 0, 0, 0, 0, 'AOV 40 Vouchers', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(64, '8513', 'AOV 90 Vouchers', 'AOV90', 18000, 18000, 18000, 18000, 0, 0, 0, 0, 'AOV 90 Vouchers', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(65, '8513', 'AOV 230 Vouchers', 'AOV230', 45000, 45000, 45000, 45000, 0, 0, 0, 0, 'AOV 230 Vouchers', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(66, '8513', 'AOV 950 Vouchers', 'AOV950', 180000, 180000, 180000, 180000, 0, 0, 0, 0, 'AOV 950 Vouchers', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(67, '8513', 'AOV 1430 Vouchers', 'AOV1430', 280000, 280000, 280000, 280000, 0, 0, 0, 0, 'AOV 1430 Vouchers', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(68, '8513', 'AOV 2390 Vouchers', 'AOV2390', 463000, 463000, 463000, 463000, 0, 0, 0, 0, 'AOV 2390 Vouchers', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(69, '8513', 'AOV 4800 Vouchers', 'AOV4800', 925000, 925000, 925000, 925000, 0, 0, 0, 0, 'AOV 4800 Vouchers', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(70, '8514', 'Valorant 420 Points', 'Valorant420Points', 47585, 47585, 47585, 47585, 0, 0, 0, 0, 'masukkan username akun game anda.', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(71, '8514', 'Valorant 1375 Points', 'Valorant1375Points', 142395, 142395, 142395, 142395, 0, 0, 0, 0, 'masukkan username akun game anda.', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(72, '8514', 'Valorant 2400 Points', 'Valorant2400Points', 237900, 237900, 237900, 237900, 0, 0, 0, 0, 'masukkan username akun game anda.', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(73, '8514', 'Valorant 4000 Points', 'Valorant4000Points', 380300, 380300, 380300, 380300, 0, 0, 0, 0, 'masukkan username akun game anda.', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(74, '8514', 'Valorant 8150 Points', 'Valorant8150Points', 776025, 776025, 776025, 776025, 0, 0, 0, 0, 'masukkan username akun game anda.', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(75, '8514', 'Valorant 300 Points', 'Valorant300Points', 29150, 29150, 29150, 29150, 0, 0, 0, 0, 'masukkan username akun game anda.', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(76, '8514', 'Valorant 625 Points', 'Valoran625tPoints', 62700, 62700, 62700, 62700, 0, 0, 0, 0, 'masukkan username akun game anda.', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(77, '8514', 'Valorant 700 Points', 'Valorant700Points', 76015, 76015, 76015, 76015, 0, 0, 0, 0, 'masukkan username akun game anda.', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(78, '8514', 'Valorant 1125 Points', 'Valorant1125Points', 101500, 101500, 101500, 101500, 0, 0, 0, 0, 'masukkan username akun game anda.', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(79, '8514', 'Valorant 1650 Points', 'Valorant1650Points', 145500, 145500, 145500, 145500, 0, 0, 0, 0, 'masukkan username akun game anda.', 'available', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(80, '8514', 'Valorant 3400 Points', 'Valorant3400Points', 298935, 298935, 298935, 298935, 0, 0, 0, 0, 'masukkan username akun game anda.', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(81, '8514', 'Valorant 7000 Points', 'Valorant7000Points', 582568, 582568, 582568, 582568, 0, 0, 0, 0, 'masukkan username akun game anda.', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(82, '8514', 'Valorant 8150 Points', 'Valorant8150tPoints', 762749, 762749, 762749, 762749, 0, 0, 0, 0, 'masukkan username akun game anda.', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(83, '8514', 'Valorant 8650 Points', 'Valorant8650Points', 728210, 728210, 728210, 728210, 0, 0, 0, 0, 'masukkan username akun game anda.', 'unavailable', 'digiflazz', NULL, '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(84, '8527', 'DANA 10.000', 'DANA10', 10150, 10150, 10150, 10150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(85, '8527', 'DANA 15.000', 'DANA15', 15150, 15150, 15150, 15150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(86, '8527', 'DANA 25.000', 'DANA25', 25150, 25150, 25150, 25150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(87, '8527', 'DANA 30.000', 'DANA30', 30150, 30150, 30150, 30150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(88, '8527', 'DANA 40.000', 'DANA40', 40150, 40150, 40150, 40150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(89, '8527', 'DANA 50.000', 'DANA50', 50150, 50150, 50150, 50150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(90, '8527', 'DANA 60.000', 'DANA60', 60150, 60150, 60150, 60150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(91, '8527', 'DANA 65.000', 'DANA65', 65150, 65150, 65150, 65150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(92, '8527', 'DANA 70.000', 'DANA70', 70150, 70150, 70150, 70150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(93, '8527', 'DANA 75.000', 'DANA75', 75150, 75150, 75150, 75150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(94, '8527', 'DANA 80.000', 'DANA80', 80150, 80150, 80150, 80150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(95, '8527', 'DANA 90.000', 'DANA90', 90150, 90150, 90150, 90150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(96, '8527', 'DANA 125.000', 'DANA125', 125150, 125150, 125150, 125150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(97, '8527', 'DANA 200.000', 'DANA200', 200150, 200150, 200150, 200150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(98, '8527', 'DANA 250.000', 'DANA250', 250150, 250150, 250150, 250150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(99, '8527', 'DANA 20.000', 'DANA20', 20150, 20150, 20150, 20150, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(100, '8527', 'DANA 5.000', 'DANA5', 5305, 5305, 5305, 5305, 0, 0, 0, 0, '-', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(101, '8528', 'OVO 10.000', 'OV10', 10505, 10505, 10505, 10505, 0, 0, 0, 0, 'OVO 10.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(102, '8528', 'OVO 15.000', 'OV15', 15510, 15510, 15510, 15510, 0, 0, 0, 0, 'OVO 15.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(103, '8528', 'OVO 20.000', 'OV20', 20455, 20455, 20455, 20455, 0, 0, 0, 0, 'OVO 20.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(104, '8528', 'OVO 25.000', 'OV25', 24935, 24935, 24935, 24935, 0, 0, 0, 0, 'OVO 25.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(105, '8528', 'OVO 30.000', 'OV30', 29950, 29950, 29950, 29950, 0, 0, 0, 0, 'OVO 30.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(106, '8528', 'OVO 40.000', 'OV40', 40470, 40470, 40470, 40470, 0, 0, 0, 0, 'OVO 40.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(107, '8528', 'OVO 50.000', 'OV50', 49950, 49950, 49950, 49950, 0, 0, 0, 0, 'OVO 50.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(108, '8528', 'OVO 55.000', 'OV55', 55650, 55650, 55650, 55650, 0, 0, 0, 0, 'OVO 55.000', 'unavailable', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(109, '8528', 'OVO 60.000', 'OV60', 60875, 60875, 60875, 60875, 0, 0, 0, 0, 'OVO 60.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(110, '8528', 'OVO 65.000', 'OV65', 65650, 65650, 65650, 65650, 0, 0, 0, 0, 'OVO 65.000', 'unavailable', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(111, '8528', 'OVO 70.000', 'OV70', 70875, 70875, 70875, 70875, 0, 0, 0, 0, 'OVO 70.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(112, '8528', 'OVO 75.000', 'OV75', 75875, 75875, 75875, 75875, 0, 0, 0, 0, 'OVO 75.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(113, '8528', 'OVO 80.000', 'OV80', 80875, 80875, 80875, 80875, 0, 0, 0, 0, 'OVO 80.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(114, '8528', 'OVO 85.000', 'OV85', 85470, 85470, 85470, 85470, 0, 0, 0, 0, 'OVO 85.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(115, '8528', 'OVO 90.000', 'OV90', 90875, 90875, 90875, 90875, 0, 0, 0, 0, 'OVO 90.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(116, '8528', 'OVO 95.000', 'OV95', 95650, 95650, 95650, 95650, 0, 0, 0, 0, 'OVO 95.000', 'unavailable', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(117, '8528', 'OVO 100.000', 'OV100', 99950, 99950, 99950, 99950, 0, 0, 0, 0, 'OVO 100.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(118, '8528', 'OVO 125.000', 'OV125', 125750, 125750, 125750, 125750, 0, 0, 0, 0, 'OVO 125.000', 'unavailable', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(119, '8528', 'OVO 150.000', 'OV150', 149950, 149950, 149950, 149950, 0, 0, 0, 0, 'OVO 150.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(120, '8528', 'OVO 200.000', 'OV200', 199950, 199950, 199950, 199950, 0, 0, 0, 0, 'OVO 200.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(121, '8528', 'OVO 300.000', 'OV300', 299950, 299950, 299950, 299950, 0, 0, 0, 0, 'OVO 300.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(122, '8528', 'OVO 400.000', 'OVO400.000', 399950, 399950, 399950, 399950, 0, 0, 0, 0, 'OVO 400.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(123, '8528', 'OVO 250.000', 'OV250', 249950, 249950, 249950, 249950, 0, 0, 0, 0, 'OVO 250.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(124, '8528', 'OVO 350.000', 'OVO350.000', 350470, 350470, 350470, 350470, 0, 0, 0, 0, 'OVO 350.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(125, '8528', 'OVO 450.000', 'OVO450.000', 450470, 450470, 450470, 450470, 0, 0, 0, 0, 'OVO 450.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(126, '8528', 'OVO 500.000', 'OVO500.000', 499950, 499950, 499950, 499950, 0, 0, 0, 0, 'OVO 500.000', 'available', 'digiflazz', '0', '2023-06-25 13:08:28', '2023-06-25 13:08:28'),
(127, '8509', '720 Diamonds', 'FF720-S10', 90750, 90750, 90750, 90750, 0, 0, 0, 0, '720 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(128, '8509', '720 Diamonds', 'FF720-S24B2C', 91225, 91225, 91225, 91225, 0, 0, 0, 0, '720 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(129, '8509', '700 Diamonds', 'FF700-S24', 91839, 91839, 91839, 91839, 0, 0, 0, 0, '700 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(130, '8509', '770 Diamonds', 'FF770-S21', 91332, 91332, 91332, 91332, 0, 0, 0, 0, '770 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(131, '8509', 'Free Fire 720 Diamond', 'FF720-S16', 93133, 93133, 93133, 93133, 0, 0, 0, 0, 'Free Fire 720 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(132, '8509', '790 Diamonds', 'FF790-S21', 93654, 93654, 93654, 93654, 0, 0, 0, 0, '790 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(133, '8509', '720 Diamonds', 'FF720-S15', 94218, 94218, 94218, 94218, 0, 0, 0, 0, '720 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(134, '8509', '800 Diamonds', 'FF800-S21', 95202, 95202, 95202, 95202, 0, 0, 0, 0, '800 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(135, '8509', '770 Diamonds', 'FF770-S10', 97350, 97350, 97350, 97350, 0, 0, 0, 0, '770 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(136, '8509', '720 Diamonds', 'FF720-S13', 96291, 96291, 96291, 96291, 0, 0, 0, 0, '720 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(137, '8509', '790 Diamonds', 'FF790-S10', 99825, 99825, 99825, 99825, 0, 0, 0, 0, '790 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(138, '8509', '800 Diamonds', 'FF800-S24', 98568, 98568, 98568, 98568, 0, 0, 0, 0, '800 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(139, '8509', 'Free Fire 770 Diamond', 'FF770-S16', 99906, 99906, 99906, 99906, 0, 0, 0, 0, 'Free Fire 770 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(140, '8509', '800 Diamonds', 'FF800-S10', 101475, 101475, 101475, 101475, 0, 0, 0, 0, '800 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(141, '8509', 'Free Fire 790 Diamond', 'FF790-S16', 102446, 102446, 102446, 102446, 0, 0, 0, 0, 'Free Fire 790 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(142, '8509', '800 Diamonds', 'FF800-S24B2C', 102006, 102006, 102006, 102006, 0, 0, 0, 0, '800 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(143, '8509', '860 Diamonds', 'FF860-S21', 102168, 102168, 102168, 102168, 0, 0, 0, 0, '860 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(144, '8509', 'Free Fire 800 Diamond', 'FF800-S16', 104139, 104139, 104139, 104139, 0, 0, 0, 0, 'Free Fire 800 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(145, '8509', '800 Diamonds', 'FF800-S15', 105524, 105524, 105524, 105524, 0, 0, 0, 0, '800 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(146, '8509', '860 Diamonds', 'FF860-S24', 105780, 105780, 105780, 105780, 0, 0, 0, 0, '860 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(147, '8509', '800 Diamonds', 'FF800-S13', 107845, 107845, 107845, 107845, 0, 0, 0, 0, '800 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(148, '8509', '860 Diamonds', 'FF860-S24B2C', 109470, 109470, 109470, 109470, 0, 0, 0, 0, '860 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(149, '8509', '930 Diamonds', 'FF930-S21', 110682, 110682, 110682, 110682, 0, 0, 0, 0, '930 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(150, '8509', 'Free Fire 860 Diamond', 'FF860-S16', 111759, 111759, 111759, 111759, 0, 0, 0, 0, 'Free Fire 860 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(151, '8509', '860 Diamonds', 'FF860-S15', 113062, 113062, 113062, 113062, 0, 0, 0, 0, '860 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(152, '8509', '930 Diamonds', 'FF930-S24', 114595, 114595, 114595, 114595, 0, 0, 0, 0, '930 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(153, '8509', '860 Diamonds', 'FF860-S13', 115548, 115548, 115548, 115548, 0, 0, 0, 0, '860 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(154, '8509', '925 Diamonds', 'FF925-S24', 116493, 116493, 116493, 116493, 0, 0, 0, 0, '925 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(155, '8509', '925 Diamonds', 'FF925-S10', 117975, 117975, 117975, 117975, 0, 0, 0, 0, '925 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(156, '8509', '930 Diamonds', 'FF930-S10', 118250, 118250, 118250, 118250, 0, 0, 0, 0, '930 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(157, '8509', '930 Diamonds', 'FF930-S24B2C', 118593, 118593, 118593, 118593, 0, 0, 0, 0, '930 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(158, '8509', '1000 Diamonds', 'FF1000-S21', 119196, 119196, 119196, 119196, 0, 0, 0, 0, '1000 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(159, '8509', 'Free Fire 925 Diamond', 'FF925-S16', 121072, 121072, 121072, 121072, 0, 0, 0, 0, 'Free Fire 925 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(160, '8509', 'Free Fire 930 Diamond', 'FF930-S16', 121072, 121072, 121072, 121072, 0, 0, 0, 0, 'Free Fire 930 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(161, '8509', '930 Diamonds', 'FF930-S15', 122483, 122483, 122483, 122483, 0, 0, 0, 0, '930 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(162, '8509', '1000 Diamonds', 'FF1000-S24', 123410, 123410, 123410, 123410, 0, 0, 0, 0, '1000 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(163, '8509', '1000 Diamonds', 'FF1000-S10', 127050, 127050, 127050, 127050, 0, 0, 0, 0, '1000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(164, '8509', '930 Diamonds', 'FF930-S13', 125178, 125178, 125178, 125178, 0, 0, 0, 0, '930 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(165, '8509', '1050 Diamonds', 'FF1050-S21', 125388, 125388, 125388, 125388, 0, 0, 0, 0, '1050 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(166, '8509', '1060 Diamonds', 'FF1060-S21', 126936, 126936, 126936, 126936, 0, 0, 0, 0, '1060 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(167, '8509', '1000 Diamonds', 'FF1000-S24B2C', 127715, 127715, 127715, 127715, 0, 0, 0, 0, '1000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(168, '8509', '1075 Diamonds', 'FF1075-S21', 127710, 127710, 127710, 127710, 0, 0, 0, 0, '1075 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(169, '8509', '1080 Diamonds', 'FF1080-S21', 128484, 128484, 128484, 128484, 0, 0, 0, 0, '1080 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(170, '8509', 'Free Fire 1000 Diamond', 'FF1000-S16', 130386, 130386, 130386, 130386, 0, 0, 0, 0, 'Free Fire 1000 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(171, '8509', '1050 Diamonds', 'FF1050-S24', 129821, 129821, 129821, 129821, 0, 0, 0, 0, '1050 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(172, '8509', '1050 Diamonds', 'FF1050-S10', 133650, 133650, 133650, 133650, 0, 0, 0, 0, '1050 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(173, '8509', '1000 Diamonds', 'FF1000-S15', 131905, 131905, 131905, 131905, 0, 0, 0, 0, '1000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(174, '8509', '1075 Diamonds', 'FF1075-S24', 132225, 132225, 132225, 132225, 0, 0, 0, 0, '1075 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(175, '8509', 'Member Bulanan', 'FFBulanan -S25', 132870, 132870, 132870, 132870, 0, 0, 0, 0, 'Member Bulanan', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(176, '8509', '1080 Diamonds', 'FF1080-S24', 133027, 133027, 133027, 133027, 0, 0, 0, 0, '1080 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(177, '8509', '1060 Diamonds', 'FF1060-S10', 135300, 135300, 135300, 135300, 0, 0, 0, 0, '1060 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(178, '8509', '1075 Diamonds', 'FF1075-S10', 136125, 136125, 136125, 136125, 0, 0, 0, 0, '1075 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(179, '8509', '1050 Diamonds', 'FF1050-S24B2C', 134350, 134350, 134350, 134350, 0, 0, 0, 0, '1050 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(180, '8509', '1080 Diamonds', 'FF1080-S10', 136950, 136950, 136950, 136950, 0, 0, 0, 0, '1080 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(181, '8509', '1000 Diamonds', 'FF1000-S13', 134807, 134807, 134807, 134807, 0, 0, 0, 0, '1000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(182, '8509', 'Member Bulanan', 'FFBB-S10', 137500, 137500, 137500, 137500, 0, 0, 0, 0, 'Member Bulanan', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(183, '8509', 'Free Fire 1050 Diamond', 'FF1050-S16', 137159, 137159, 137159, 137159, 0, 0, 0, 0, 'Free Fire 1050 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(184, '8509', '1075 Diamonds', 'FF1075-S24B2C', 136838, 136838, 136838, 136838, 0, 0, 0, 0, '1075 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(185, '8509', '1080 Diamonds', 'FF1080-S24B2C', 137667, 137667, 137667, 137667, 0, 0, 0, 0, '1080 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(186, '8509', 'Free Fire 1075 Diamond', 'FF1075-S16', 139699, 139699, 139699, 139699, 0, 0, 0, 0, 'Free Fire 1075 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(187, '8509', 'Free Fire 1080 Diamond', 'FF1080-S16', 140546, 140546, 140546, 140546, 0, 0, 0, 0, 'Free Fire 1080 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(188, '8509', 'Member Bulanan', 'FFMB-S16', 141110, 141110, 141110, 141110, 0, 0, 0, 0, 'Member Bulanan', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(189, '8509', '1050 Diamonds', 'FF1050-S15', 141327, 141327, 141327, 141327, 0, 0, 0, 0, '1050 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(190, '8509', '1075 Diamonds', 'FF1075-S15', 141327, 141327, 141327, 141327, 0, 0, 0, 0, '1075 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(191, '8509', '1080 Diamonds', 'FF1080-S15', 142269, 142269, 142269, 142269, 0, 0, 0, 0, '1080 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(192, '8509', '1200 Diamonds', 'FF1200-S21', 143964, 143964, 143964, 143964, 0, 0, 0, 0, '1200 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(193, '8509', '1075 Diamonds', 'FF1075-S13', 144436, 144436, 144436, 144436, 0, 0, 0, 0, '1075 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(194, '8509', '1215 Diamonds', 'FF1215-S21', 144738, 144738, 144738, 144738, 0, 0, 0, 0, '1215 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(195, '8509', '1080 Diamonds', 'FF1080-S13', 145398, 145398, 145398, 145398, 0, 0, 0, 0, '1080 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(196, '8509', '1300 Diamonds', 'FF1300-S21', 155574, 155574, 155574, 155574, 0, 0, 0, 0, '1300 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(197, '8509', 'Free Fire 1200 Diamond', 'FF1200-S16', 156632, 156632, 156632, 156632, 0, 0, 0, 0, 'Free Fire 1200 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(198, '8509', 'Free Fire 1300 Diamond', 'FF1300-S16', 170179, 170179, 170179, 170179, 0, 0, 0, 0, 'Free Fire 1300 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(199, '8509', '1440 Diamonds', 'FF1440-S21', 170280, 170280, 170280, 170280, 0, 0, 0, 0, '1440 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(200, '8509', '1450 Diamonds', 'FF1450-S21', 171828, 171828, 171828, 171828, 0, 0, 0, 0, '1450 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(201, '8509', '1450 Diamonds', 'FF1450-S65', 174250, 174250, 174250, 174250, 0, 0, 0, 0, '1450 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(202, '8509', '1450 Diamonds', 'FF1450-S68', 174250, 174250, 174250, 174250, 0, 0, 0, 0, '1450 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(203, '8509', '1490 Diamonds', 'FF1490-S21', 176472, 176472, 176472, 176472, 0, 0, 0, 0, '1490 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(204, '8509', '1450 Diamonds', 'FF1450-S24', 177903, 177903, 177903, 177903, 0, 0, 0, 0, '1450 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(205, '8509', '1510 Diamonds', 'FF1510-S21', 178794, 178794, 178794, 178794, 0, 0, 0, 0, '1510 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(206, '8509', '1450 Diamonds', 'FF1450-S10', 183150, 183150, 183150, 183150, 0, 0, 0, 0, '1450 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(207, '8509', '1450 Diamonds', 'FF1450-S24B2C', 184108, 184108, 184108, 184108, 0, 0, 0, 0, '1450 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(208, '8509', 'Free Fire 1440 Diamond', 'FF1440-S16', 186265, 186265, 186265, 186265, 0, 0, 0, 0, 'Free Fire 1440 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(209, '8509', 'Free Fire 1450 Diamond', 'FF1450-S16', 187959, 187959, 187959, 187959, 0, 0, 0, 0, 'Free Fire 1450 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(210, '8509', '1580 Diamonds', 'FF1580-S21', 187308, 187308, 187308, 187308, 0, 0, 0, 0, '1580 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(211, '8509', '1450 Diamonds', 'FF1450-S15', 188436, 188436, 188436, 188436, 0, 0, 0, 0, '1450 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(212, '8509', '1450 Diamonds', 'FF1450-S13', 192581, 192581, 192581, 192581, 0, 0, 0, 0, '1450 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(213, '8509', '1795 Diamonds', 'FF1795-S21', 212850, 212850, 212850, 212850, 0, 0, 0, 0, '1795 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(214, '8509', '1800 Diamonds', 'FF1800-S21', 213624, 213624, 213624, 213624, 0, 0, 0, 0, '1800 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(215, '8509', '2170 Diamonds', 'FF2170-S65', 225500, 225500, 225500, 225500, 0, 0, 0, 0, '2170 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(216, '8509', '2170 Diamonds', 'FF2170-S68', 225500, 225500, 225500, 225500, 0, 0, 0, 0, '2170 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(217, '8509', '2000 Diamonds', 'FF2000-S21', 238392, 238392, 238392, 238392, 0, 0, 0, 0, '2000 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(218, '8509', 'Free Fire 1875 Diamond', 'FF1875-S16', 243838, 243838, 243838, 243838, 0, 0, 0, 0, 'Free Fire 1875 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(219, '8509', '2000 Diamonds', 'FF2000-S10', 247500, 247500, 247500, 247500, 0, 0, 0, 0, '2000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(220, '8509', '2000 Diamonds', 'FF2000-S24', 251591, 251591, 251591, 251591, 0, 0, 0, 0, '2000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(221, '8509', 'Free Fire 2000 Diamond', 'FF2000-S16', 253998, 253998, 253998, 253998, 0, 0, 0, 0, 'Free Fire 2000 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(222, '8509', '2160 Diamonds', 'FF2160-S21', 255420, 255420, 255420, 255420, 0, 0, 0, 0, '2160 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(223, '8509', 'Free Fire 1975 Diamond', 'FF1975-S16', 257102, 257102, 257102, 257102, 0, 0, 0, 0, 'Free Fire 1975 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(224, '8509', 'Free Fire 2100 Diamond', 'FF2100-S16', 259642, 259642, 259642, 259642, 0, 0, 0, 0, 'Free Fire 2100 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(225, '8509', '2180 Diamonds', 'FF2180-S21', 258516, 258516, 258516, 258516, 0, 0, 0, 0, '2180 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(226, '8509', '2190 Diamonds', 'FF2190-S21', 261612, 261612, 261612, 261612, 0, 0, 0, 0, '2190 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(227, '8509', '2200 Diamonds', 'FF2200-S21', 261612, 261612, 261612, 261612, 0, 0, 0, 0, '2200 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(228, '8509', '2210 Diamonds', 'FF2210-S21', 263934, 263934, 263934, 263934, 0, 0, 0, 0, '2210 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(229, '8509', '2180 Diamonds', 'FF2180-S10', 271150, 271150, 271150, 271150, 0, 0, 0, 0, '2180 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(230, '8509', 'Free Fire 2140 Diamond', 'FF2140-S16', 272625, 272625, 272625, 272625, 0, 0, 0, 0, 'Free Fire 2140 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(231, '8509', '2280 Diamonds', 'FF2280-S21', 272448, 272448, 272448, 272448, 0, 0, 0, 0, '2280 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(232, '8509', 'Free Fire 2180 Diamond', 'FF2180-S16', 278269, 278269, 278269, 278269, 0, 0, 0, 0, 'Free Fire 2180 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(233, '8509', '2355 Diamonds', 'FF2355-S21', 280962, 280962, 280962, 280962, 0, 0, 0, 0, '2355 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(234, '8509', '2180 Diamonds', 'FF2180-S15', 282654, 282654, 282654, 282654, 0, 0, 0, 0, '2180 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(235, '8509', 'Free Fire 2225 Diamond', 'FF2225-S16', 284478, 284478, 284478, 284478, 0, 0, 0, 0, 'Free Fire 2225 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(236, '8509', '2405 Diamonds', 'FF2405-S21', 287154, 287154, 287154, 287154, 0, 0, 0, 0, '2405 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(237, '8509', '2180 Diamonds', 'FF2180-S13', 288872, 288872, 288872, 288872, 0, 0, 0, 0, '2180 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(238, '8509', 'Free Fire 2355 Diamond', 'FF2355-S16', 300564, 300564, 300564, 300564, 0, 0, 0, 0, 'Free Fire 2355 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(239, '8509', '2720 Diamonds', 'FF2720-S21', 323532, 323532, 323532, 323532, 0, 0, 0, 0, '2720 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(240, '8509', 'Free Fire 2575 Diamond', 'FF2575-S16', 330197, 330197, 330197, 330197, 0, 0, 0, 0, 'Free Fire 2575 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(241, '8509', '2750 Diamonds', 'FF2750-S10', 342650, 342650, 342650, 342650, 0, 0, 0, 0, '2750 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(242, '8509', 'Free Fire 2720 Diamond', 'FF2720-S16', 347131, 347131, 347131, 347131, 0, 0, 0, 0, 'Free Fire 2720 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(243, '8509', 'Free Fire 2750 Diamond', 'FF2750-S16', 351646, 351646, 351646, 351646, 0, 0, 0, 0, 'Free Fire 2750 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(244, '8509', '3000 Diamonds', 'FF3000-S10', 374550, 374550, 374550, 374550, 0, 0, 0, 0, '3000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(245, '8509', 'Free Fire 3000 Diamond', 'FF3000-S16', 384384, 384384, 384384, 384384, 0, 0, 0, 0, 'Free Fire 3000 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(246, '8509', '3310 Diamonds', 'FF3310-S10', 414425, 414425, 414425, 414425, 0, 0, 0, 0, '3310 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(247, '8509', 'Free Fire 3310 Diamond', 'FF3310-S16', 425306, 425306, 425306, 425306, 0, 0, 0, 0, 'Free Fire 3310 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(248, '8509', '3640 Diamonds', 'FF3640-S21', 431892, 431892, 431892, 431892, 0, 0, 0, 0, '3640 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(249, '8509', '3640 Diamonds', 'FF3640-S10', 455400, 455400, 455400, 455400, 0, 0, 0, 0, '3640 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(250, '8509', '3800 Diamonds', 'FF3800-S21', 450468, 450468, 450468, 450468, 0, 0, 0, 0, '3800 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(251, '8509', '3675 Diamonds', 'FF3675-S10', 459800, 459800, 459800, 459800, 0, 0, 0, 0, '3675 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(252, '8509', 'Free Fire 3640 Diamond', 'FF3640-S16', 467356, 467356, 467356, 467356, 0, 0, 0, 0, 'Free Fire 3640 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(253, '8509', 'Free Fire 3675 Diamond', 'FF3675-S16', 472436, 472436, 472436, 472436, 0, 0, 0, 0, 'Free Fire 3675 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(254, '8509', '3640 Diamonds', 'FF3640-S15', 471090, 471090, 471090, 471090, 0, 0, 0, 0, '3640 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(255, '8509', '3640 Diamonds', 'FF3640-S13', 481453, 481453, 481453, 481453, 0, 0, 0, 0, '3640 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(256, '8509', '4000 Diamonds', 'FF4000-S10', 495000, 495000, 495000, 495000, 0, 0, 0, 0, '4000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(257, '8509', '4050 Diamonds', 'FF4050-S10', 501600, 501600, 501600, 501600, 0, 0, 0, 0, '4050 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(258, '8509', 'Free Fire 4000 Diamond', 'FF4000-S16', 507996, 507996, 507996, 507996, 0, 0, 0, 0, 'Free Fire 4000 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(259, '8509', 'Free Fire 4050 Diamond', 'FF4050-S16', 514769, 514769, 514769, 514769, 0, 0, 0, 0, 'Free Fire 4050 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(260, '8509', '4340 Diamonds', 'FF4340-S21', 513936, 513936, 513936, 513936, 0, 0, 0, 0, '4340 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(261, '8509', '4720 Diamonds', 'FF4720-S10', 585750, 585750, 585750, 585750, 0, 0, 0, 0, '4720 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(262, '8509', '4850 Diamonds', 'FF4850-S10', 603075, 603075, 603075, 603075, 0, 0, 0, 0, '4850 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(263, '8509', 'Free Fire 4720 Diamond', 'FF4720-S16', 601129, 601129, 601129, 601129, 0, 0, 0, 0, 'Free Fire 4720 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(264, '8509', '5000 Diamonds', 'FF5000-S10', 622050, 622050, 622050, 622050, 0, 0, 0, 0, '5000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14');
INSERT INTO `layanans` (`id`, `kategori_id`, `layanan`, `provider_id`, `harga`, `harga_member`, `harga_platinum`, `harga_gold`, `profit`, `profit_member`, `profit_platinum`, `profit_gold`, `catatan`, `status`, `provider`, `product_logo`, `created_at`, `updated_at`) VALUES
(265, '8509', 'Free Fire 4850 Diamond', 'FF4850-S16', 618908, 618908, 618908, 618908, 0, 0, 0, 0, 'Free Fire 4850 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(266, '8509', '5500 Diamonds', 'FF5500-S10', 684750, 684750, 684750, 684750, 0, 0, 0, 0, '5500 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(267, '8509', 'Free Fire 5500 Diamond', 'FF5500-S16', 702728, 702728, 702728, 702728, 0, 0, 0, 0, 'Free Fire 5500 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(268, '8509', '6000 Diamonds', 'FF6000-S10', 742500, 742500, 742500, 742500, 0, 0, 0, 0, '6000 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(269, '8509', 'Free Fire 6000 Diamond', 'FF6000-S16', 761994, 761994, 761994, 761994, 0, 0, 0, 0, 'Free Fire 6000 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(270, '8509', '6550 Diamonds', 'FF6550-S10', 813450, 813450, 813450, 813450, 0, 0, 0, 0, '6550 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(271, '8509', 'Free Fire 6550 Diamond', 'FF6550-S16', 834807, 834807, 834807, 834807, 0, 0, 0, 0, 'Free Fire 6550 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(272, '8509', '7290 Diamonds', 'FF7290-S21', 851400, 851400, 851400, 851400, 0, 0, 0, 0, '7290 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(273, '8509', '7290 Diamonds', 'FF7290-S25', 879963, 879963, 879963, 879963, 0, 0, 0, 0, '7290 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(274, '8509', '7290 Diamonds', 'FF7290-S24', 881500, 881500, 881500, 881500, 0, 0, 0, 0, '7290 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(275, '8509', '7290 Diamonds', 'FF7290-S10', 907500, 907500, 907500, 907500, 0, 0, 0, 0, '7290 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(276, '8509', '7290 Diamonds', 'FF7290-S24B2C', 912250, 912250, 912250, 912250, 0, 0, 0, 0, '7290 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(277, '8509', 'Free Fire 7290 Diamond', 'FF7290-S16', 931326, 931326, 931326, 931326, 0, 0, 0, 0, 'Free Fire 7290 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(278, '8509', '7650 Diamonds', 'FF7650-S10', 953700, 953700, 953700, 953700, 0, 0, 0, 0, '7650 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(279, '8509', '7290 Diamonds', 'FF7290-S13', 962906, 962906, 962906, 962906, 0, 0, 0, 0, '7290 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(280, '8509', 'Free Fire 7650 Diamond', 'FF7650-S16', 978739, 978739, 978739, 978739, 0, 0, 0, 0, 'Free Fire 7650 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(281, '8509', '9800 Diamonds', 'FF9800-S10', 1221000, 1221000, 1221000, 1221000, 0, 0, 0, 0, '9800 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(282, '8509', 'Free Fire 9800 Diamond', 'FF9800-S16', 1253057, 1253057, 1253057, 1253057, 0, 0, 0, 0, 'Free Fire 9800 Diamond', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(283, '8509', '36500 Diamonds', 'FF36500-S25', 4399813, 4399813, 4399813, 4399813, 0, 0, 0, 0, '36500 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(284, '8509', '36500 Diamonds', 'FF36500-S24', 4407500, 4407500, 4407500, 4407500, 0, 0, 0, 0, '36500 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(285, '8509', '36500 Diamonds', 'FF36500 -S25', 4429000, 4429000, 4429000, 4429000, 0, 0, 0, 0, '36500 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(286, '8509', '36500 Diamonds', 'FF36500-S24B2C', 4561250, 4561250, 4561250, 4561250, 0, 0, 0, 0, '36500 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(287, '8509', '36500 Diamonds', 'FF36500-S13', 4814528, 4814528, 4814528, 4814528, 0, 0, 0, 0, '36500 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(288, '8509', '73100 Diamonds', 'FF73100-S25', 8799625, 8799625, 8799625, 8799625, 0, 0, 0, 0, '73100 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(289, '8509', '73100 Diamonds', 'FF73100-S24', 8815000, 8815000, 8815000, 8815000, 0, 0, 0, 0, '73100 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(290, '8509', '73100 Diamonds', 'FF73100 -S25', 8858000, 8858000, 8858000, 8858000, 0, 0, 0, 0, '73100 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(291, '8509', '73100 Diamonds', 'FF73100-S24B2C', 9122500, 9122500, 9122500, 9122500, 0, 0, 0, 0, '73100 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(292, '8509', '73100 Diamonds', 'FF73100-S13', 9629055, 9629055, 9629055, 9629055, 0, 0, 0, 0, '73100 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(293, '8510', 'Blessing Welkin Moon x 2', 'GIWELKIN2-S14', 113878, 113878, 113878, 113878, 0, 0, 0, 0, 'Blessing Welkin Moon x 2', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(294, '8510', 'Blessing Welkin Moon x 2', 'GIWELKIN2-S1', 115906, 115906, 115906, 115906, 0, 0, 0, 0, 'Blessing Welkin Moon x 2', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(295, '8510', '980 + 110 Genesis Crystals [PROMO]', 'GI1090PRM-S4', 162329, 162329, 162329, 162329, 0, 0, 0, 0, '980 + 110 Genesis Crystals [PROMO]', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(296, '8510', '980 + 110 Genesis Crystals', 'GI1090-S14', 170868, 170868, 170868, 170868, 0, 0, 0, 0, '980 + 110 Genesis Crystals', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(297, '8510', 'Blessing Welkin Moon x 3', 'GIWELKIN3-S14', 170868, 170868, 170868, 170868, 0, 0, 0, 0, 'Blessing Welkin Moon x 3', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(298, '8510', 'Blessing Welkin Moon x 3', 'GIWELKIN3-S1', 173858, 173858, 173858, 173858, 0, 0, 0, 0, 'Blessing Welkin Moon x 3', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(299, '8510', '980+110 Crystals', 'GI1090-S48', 174028, 174028, 174028, 174028, 0, 0, 0, 0, '980+110 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(300, '8510', '980 + 110 Genesis Crystals', 'GI1090-S1', 174441, 174441, 174441, 174441, 0, 0, 0, 0, '980 + 110 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(301, '8510', '980 + 110 Genesis Crystals', 'GI1090-S24', 177903, 177903, 177903, 177903, 0, 0, 0, 0, '980 + 110 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(302, '8510', '980 + 110 Genesis Crystals', 'GI1090-S25', 178248, 178248, 178248, 178248, 0, 0, 0, 0, '980 + 110 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(303, '8510', '980+110 Crystals', 'GI1090-S21', 182040, 182040, 182040, 182040, 0, 0, 0, 0, '980+110 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(304, '8510', '980 + 110 Genesis Crystals', 'GI1090-S27', 185013, 185013, 185013, 185013, 0, 0, 0, 0, '980 + 110 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(305, '8510', 'Blessing Welkin Moon x 4', 'GIWELKIN4-S14', 227755, 227755, 227755, 227755, 0, 0, 0, 0, 'Blessing Welkin Moon x 4', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(306, '8510', 'Blessing Welkin Moon x 4', 'GIWELKIN4-S1', 231811, 231811, 231811, 231811, 0, 0, 0, 0, 'Blessing Welkin Moon x 4', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(307, '8510', 'Blessing Welkin Moon x 5', 'GIWELKIN5-S14', 284745, 284745, 284745, 284745, 0, 0, 0, 0, 'Blessing Welkin Moon x 5', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(308, '8510', 'Blessing Welkin Moon x 5', 'GIWELKIN5-S48', 288586, 288586, 288586, 288586, 0, 0, 0, 0, 'Blessing Welkin Moon x 5', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(309, '8510', 'Blessing Welkin Moon x 5', 'GIWELKIN5-S1', 289763, 289763, 289763, 289763, 0, 0, 0, 0, 'Blessing Welkin Moon x 5', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(310, '8510', '1980 + 260 Genesis Crystals [PROMO]', 'GI2240PRM-S4', 352029, 352029, 352029, 352029, 0, 0, 0, 0, '1980 + 260 Genesis Crystals [PROMO]', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(311, '8510', 'Blessing Welkin Moon x 6', 'GIWELKIN6-S14', 341633, 341633, 341633, 341633, 0, 0, 0, 0, 'Blessing Welkin Moon x 6', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(312, '8510', '1980+260 Crystals', 'GI2240-S48', 346197, 346197, 346197, 346197, 0, 0, 0, 0, '1980+260 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(313, '8510', 'Blessing Welkin Moon x 6', 'GIWELKIN6-S1', 347717, 347717, 347717, 347717, 0, 0, 0, 0, 'Blessing Welkin Moon x 6', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(314, '8510', '1980 + 260 Genesis Crystals', 'GI2240-S25', 354650, 354650, 354650, 354650, 0, 0, 0, 0, '1980 + 260 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(315, '8510', '1980+260 Crystals', 'GI2240-S21', 354650, 354650, 354650, 354650, 0, 0, 0, 0, '1980+260 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(316, '8510', '1980 + 260 Genesis Crystals', 'GI2240-S14', 370128, 370128, 370128, 370128, 0, 0, 0, 0, '1980 + 260 Genesis Crystals', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(317, '8510', '1980 + 260 Genesis Crystals', 'GI2240-S1', 378295, 378295, 378295, 378295, 0, 0, 0, 0, '1980 + 260 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(318, '8510', '1980 + 260 Genesis Crystals', 'GI2240-S24', 385803, 385803, 385803, 385803, 0, 0, 0, 0, '1980 + 260 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(319, '8510', '1980 + 260 Genesis Crystals', 'GI2240-S20', 401221, 401221, 401221, 401221, 0, 0, 0, 0, '1980 + 260 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(320, '8510', '1980 + 260 Genesis Crystals', 'GI2240-S27', 401221, 401221, 401221, 401221, 0, 0, 0, 0, '1980 + 260 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(321, '8510', '3280+600 Crystals', 'GI3940-S79', 556063, 556063, 556063, 556063, 0, 0, 0, 0, '3280+600 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(322, '8510', '3280 + 600 Genesis Crystals', 'GI3940-S14', 569388, 569388, 569388, 569388, 0, 0, 0, 0, '3280 + 600 Genesis Crystals', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(323, '8510', '3280+600 Crystals', 'GI3940-S48', 578544, 578544, 578544, 578544, 0, 0, 0, 0, '3280+600 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(324, '8510', '3280 + 600 Genesis Crystals', 'GI3940-S1', 582149, 582149, 582149, 582149, 0, 0, 0, 0, '3280 + 600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(325, '8510', '3280 + 600 Genesis Crystals [SLOW]', 'GI3880PRM-S26', 593703, 593703, 593703, 593703, 0, 0, 0, 0, '3280 + 600 Genesis Crystals [SLOW]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(326, '8510', '3280 + 600 Genesis Crystals', 'GI3880-S24', 593703, 593703, 593703, 593703, 0, 0, 0, 0, '3280 + 600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(327, '8510', '3280 + 600 Genesis Crystals', 'GI3940-S20', 592655, 592655, 592655, 592655, 0, 0, 0, 0, '3280 + 600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(328, '8510', '3280 + 600 Genesis Crystals', 'GI3940-S25', 592655, 592655, 592655, 592655, 0, 0, 0, 0, '3280 + 600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(329, '8510', '3280+600 Crystals', 'GI3940-S21', 592655, 592655, 592655, 592655, 0, 0, 0, 0, '3280+600 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(330, '8510', '3280+600 Crystals', 'GI3940-S60', 596550, 596550, 596550, 596550, 0, 0, 0, 0, '3280+600 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(331, '8510', '3280 + 600 Genesis Crystals', 'GI3940-S27', 617429, 617429, 617429, 617429, 0, 0, 0, 0, '3280 + 600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(332, '8510', '6480 + 1600 Genesis Crystals [PROMO]', 'GI8080-S26', 900000, 900000, 900000, 900000, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(333, '8510', '6480 + 1600 Genesis Crystals [PROMO]', 'GI8080PRM-S26', 900000, 900000, 900000, 900000, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(334, '8510', '6480 + 1600 Genesis Crystals [SLOW]', 'GI8081PRM-S26', 1030000, 1030000, 1030000, 1030000, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals [SLOW]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(335, '8510', '6480+1600 Crystals', 'GI8080-S79', 1112330, 1112330, 1112330, 1112330, 0, 0, 0, 0, '6480+1600 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(336, '8510', '6480 + 1600 Genesis Crystals', 'GI8080-S14', 1138775, 1138775, 1138775, 1138775, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(337, '8510', '6480 + 1600 Genesis Crystals', 'GI8080-S1', 1164589, 1164589, 1164589, 1164589, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(338, '8510', '6480 + 1600 Genesis Crystals', 'GI8080-S24', 1187703, 1187703, 1187703, 1187703, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(339, '8510', '6480 + 1600 Genesis Crystals', 'GI8080-S20', 1187770, 1187770, 1187770, 1187770, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(340, '8510', '6480 + 1600 Genesis Crystals', 'GI8080-S25', 1187770, 1187770, 1187770, 1187770, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(341, '8510', '6480+1600 Crystals', 'GI8080-S21', 1187770, 1187770, 1187770, 1187770, 0, 0, 0, 0, '6480+1600 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(342, '8510', '6480+1600 Crystals', 'GI8080-S60', 1213600, 1213600, 1213600, 1213600, 0, 0, 0, 0, '6480+1600 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(343, '8510', '6480 + 1600 Genesis Crystals', 'GI8080-S27', 1235167, 1235167, 1235167, 1235167, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(344, '8510', '6480 + 1600 Genesis Crystals', 'GI8080-S10', 1249500, 1249500, 1249500, 1249500, 0, 0, 0, 0, '6480 + 1600 Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(345, '8510', '6480+1600 Crystals', 'GI8080-S48', 1274876, 1274876, 1274876, 1274876, 0, 0, 0, 0, '6480+1600 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(346, '8510', '12960 + 1600 Genesis Crystals [PROMO]', 'GI16160PRM-S26', 2000000, 2000000, 2000000, 2000000, 0, 0, 0, 0, '12960 + 1600 Genesis Crystals [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(347, '8510', 'All Pack Genesis Crystals', 'GIALL-S14', 2317423, 2317423, 2317423, 2317423, 0, 0, 0, 0, 'All Pack Genesis Crystals', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(348, '8510', 'All Pack Genesis Crystals', 'GIALL-S48', 2327419, 2327419, 2327419, 2327419, 0, 0, 0, 0, 'All Pack Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(349, '8510', 'All Pack Genesis Crystals', 'GIALL-S1', 2368783, 2368783, 2368783, 2368783, 0, 0, 0, 0, 'All Pack Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(350, '8510', 'All Pack Genesis Crystals', 'GIALL-S25', 2384355, 2384355, 2384355, 2384355, 0, 0, 0, 0, 'All Pack Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(351, '8510', 'All Pack Genesis Crystals', 'GIALL-S27', 2512340, 2512340, 2512340, 2512340, 0, 0, 0, 0, 'All Pack Genesis Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(352, '8510', '19440 + 4800 Genesis Crystals [SLOW]', 'GI24240PRM-S26', 2985000, 2985000, 2985000, 2985000, 0, 0, 0, 0, '19440 + 4800 Genesis Crystals [SLOW]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(353, '8510', '6480+1600 Crystals x 5', 'GI40400-S79', 5561548, 5561548, 5561548, 5561548, 0, 0, 0, 0, '6480+1600 Crystals x 5', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(354, '8510', '6480+1600 Crystals x 5', 'GI40400-S14', 5693875, 5693875, 5693875, 5693875, 0, 0, 0, 0, '6480+1600 Crystals x 5', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(355, '8510', '6480+1600 Crystals x 5', 'GI40400-S1', 5822943, 5822943, 5822943, 5822943, 0, 0, 0, 0, '6480+1600 Crystals x 5', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(356, '8510', '6480+1600 Crystals x 5', 'GI40400-S48', 6374378, 6374378, 6374378, 6374378, 0, 0, 0, 0, '6480+1600 Crystals x 5', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(357, '8510', '6480+1600 Crystals x 10', 'GI80800-S79', 11123095, 11123095, 11123095, 11123095, 0, 0, 0, 0, '6480+1600 Crystals x 10', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(358, '8510', '6480+1600 Crystals x 10', 'GI80800-S14', 11387750, 11387750, 11387750, 11387750, 0, 0, 0, 0, '6480+1600 Crystals x 10', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(359, '8510', '6480+1600 Crystals x 10', 'GI80800-S1', 11645886, 11645886, 11645886, 11645886, 0, 0, 0, 0, '6480+1600 Crystals x 10', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(360, '8510', '6480+1600 Crystals x 10', 'GI80800-S48', 12748755, 12748755, 12748755, 12748755, 0, 0, 0, 0, '6480+1600 Crystals x 10', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(361, '8510', 'Blessing Welkin Moon', 'GIWELKIN-S32', 1024999999, 1024999999, 1024999999, 1024999999, 0, 0, 0, 0, 'Blessing Welkin Moon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(362, '8510', '60 Crystals', 'GI60-S32', 1024999999, 1024999999, 1024999999, 1024999999, 0, 0, 0, 0, '60 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(363, '8510', '300+30 Crystals', 'GI330-S32', 1024999999, 1024999999, 1024999999, 1024999999, 0, 0, 0, 0, '300+30 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(364, '8510', '980+110 Crystals', 'GI1090-S32', 1024999999, 1024999999, 1024999999, 1024999999, 0, 0, 0, 0, '980+110 Crystals', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(365, '8513', '470 Vouchers', 'AOV470-S24', 94095, 94095, 94095, 94095, 0, 0, 0, 0, '470 Vouchers', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(366, '8513', '470 Vouchers', 'AOV470-S47', 95325, 95325, 95325, 95325, 0, 0, 0, 0, '470 Vouchers', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(367, '8513', '950 Vouchers', 'AOV950-S3', 151410, 151410, 151410, 151410, 0, 0, 0, 0, '950 Vouchers', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(368, '8513', '950 Vouchers', 'AOV950-S24', 188600, 188600, 188600, 188600, 0, 0, 0, 0, '950 Vouchers', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(369, '8513', '950 Vouchers', 'AOV950-S47', 190650, 190650, 190650, 190650, 0, 0, 0, 0, '950 Vouchers', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(370, '8513', '1430 Vouchers', 'AOV1430-S3', 227106, 227106, 227106, 227106, 0, 0, 0, 0, '1430 Vouchers', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(371, '8513', '1430 Vouchers', 'AOV1430-S24', 282388, 282388, 282388, 282388, 0, 0, 0, 0, '1430 Vouchers', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(372, '8513', '1430 Vouchers', 'AOV1430-S47', 285975, 285975, 285975, 285975, 0, 0, 0, 0, '1430 Vouchers', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(373, '8513', '2390 Vouchers', 'AOV2390-S3', 378510, 378510, 378510, 378510, 0, 0, 0, 0, '2390 Vouchers', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(374, '8513', '2390 Vouchers', 'AOV2390-S24', 470475, 470475, 470475, 470475, 0, 0, 0, 0, '2390 Vouchers', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(375, '8513', '2390 Vouchers', 'AOV2390-S47', 476625, 476625, 476625, 476625, 0, 0, 0, 0, '2390 Vouchers', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(376, '8513', '7128 Vouchers', 'AOV7128-S3', 740520, 740520, 740520, 740520, 0, 0, 0, 0, '7128 Vouchers', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(377, '8513', '4800 Vouchers', 'AOV4800-S47', 953250, 953250, 953250, 953250, 0, 0, 0, 0, '4800 Vouchers', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(378, '8513', '24050 Vouchers', 'AOV24050-S47', 4766250, 4766250, 4766250, 4766250, 0, 0, 0, 0, '24050 Vouchers', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(379, '8513', '48200 Vouchers', 'AOV48200-S47', 9532500, 9532500, 9532500, 9532500, 0, 0, 0, 0, '48200 Vouchers', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(380, '8514', '1125 Points', 'VAL1125-S14', 99733, 99733, 99733, 99733, 0, 0, 0, 0, '1125 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(381, '8514', '1125 Points', 'VAL1125-S79', 99733, 99733, 99733, 99733, 0, 0, 0, 0, '1125 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(382, '8514', '1125 Points', 'VAL1125-S1', 99733, 99733, 99733, 99733, 0, 0, 0, 0, '1125 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(383, '8514', '1125 Points', 'VAL1125-S5', 102900, 102900, 102900, 102900, 0, 0, 0, 0, '1125 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(384, '8514', '1125 Points', 'VAL1125-S19', 113006, 113006, 113006, 113006, 0, 0, 0, 0, '1125 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(385, '8514', '1125 Points', 'VAL1125-S2', 116025, 116025, 116025, 116025, 0, 0, 0, 0, '1125 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(386, '8514', '1250 Points', 'VAL1250-S19', 129150, 129150, 129150, 129150, 0, 0, 0, 0, '1250 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(387, '8514', '1260 Points', 'VAL1260-S45', 130688, 130688, 130688, 130688, 0, 0, 0, 0, '1260 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(388, '8514', '1375 Points [PROMO]', 'VAL1375PRM-S3', 141900, 141900, 141900, 141900, 0, 0, 0, 0, '1375 Points [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(389, '8514', '1250 Points + 250 Bonus', 'VAL1500-S90', 138375, 138375, 138375, 138375, 0, 0, 0, 0, '1250 Points + 250 Bonus', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(390, '8514', '1375 Points', 'VAL1375-S90', 138375, 138375, 138375, 138375, 0, 0, 0, 0, '1375 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(391, '8514', '1650 Points', 'VAL1650-S14', 142373, 142373, 142373, 142373, 0, 0, 0, 0, '1650 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(392, '8514', '1650 Points', 'VAL1650-S79', 142373, 142373, 142373, 142373, 0, 0, 0, 0, '1650 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(393, '8514', '1650 Points', 'VAL1650-S1', 142373, 142373, 142373, 142373, 0, 0, 0, 0, '1650 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(394, '8514', '1375 Points', 'VAL1375-S93', 143193, 143193, 143193, 143193, 0, 0, 0, 0, '1375 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(395, '8514', '1650 Points', 'VAL1650-S5', 147000, 147000, 147000, 147000, 0, 0, 0, 0, '1650 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(396, '8514', '1375 Points + 50 Bonus [PROMO]', 'VAL1375PRM-S5', 145200, 145200, 145200, 145200, 0, 0, 0, 0, '1375 Points + 50 Bonus [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(397, '8514', '1500 Points (1250+250 Bonus)', 'VAL1500-S4', 144090, 144090, 144090, 144090, 0, 0, 0, 0, '1500 Points (1250+250 Bonus)', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(398, '8514', '1375 Points', 'VAL1375-S15', 145140, 145140, 145140, 145140, 0, 0, 0, 0, '1375 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(399, '8514', '1375 Points', 'VAL1375-S3', 146850, 146850, 146850, 146850, 0, 0, 0, 0, '1375 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(400, '8514', '1650 Points', 'VAL1650-S70', 147908, 147908, 147908, 147908, 0, 0, 0, 0, '1650 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(401, '8514', '1650 Points', 'VAL1650-S19', 161438, 161438, 161438, 161438, 0, 0, 0, 0, '1650 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(402, '8514', '1550 Points', 'VAL1550-S19', 161438, 161438, 161438, 161438, 0, 0, 0, 0, '1550 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(403, '8514', '1650 Points', 'VAL1650-S2', 168300, 168300, 168300, 168300, 0, 0, 0, 0, '1650 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(404, '8514', '1950 Points', 'VAL1950-S14', 170868, 170868, 170868, 170868, 0, 0, 0, 0, '1950 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(405, '8514', '1950 Points', 'VAL1950-S1', 170868, 170868, 170868, 170868, 0, 0, 0, 0, '1950 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(406, '8514', '1680 Points', 'VAL1680-S45', 174250, 174250, 174250, 174250, 0, 0, 0, 0, '1680 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(407, '8514', '1805 Points', 'VAL1805-S45', 187319, 187319, 187319, 187319, 0, 0, 0, 0, '1805 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(408, '8514', '1875 Points', 'VAL1875-S19', 193725, 193725, 193725, 193725, 0, 0, 0, 0, '1875 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(409, '8514', '1950 Points', 'VAL1950-S2', 195840, 195840, 195840, 195840, 0, 0, 0, 0, '1950 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(410, '8514', '2400 Points', 'VAL2400-S45', 217813, 217813, 217813, 217813, 0, 0, 0, 0, '2400 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(411, '8514', '2400 Points [PROMO]', 'VAL2400PRM-S5', 236500, 236500, 236500, 236500, 0, 0, 0, 0, '2400 Points [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(412, '8514', '2400 Points [PROMO]', 'VAL2400PRM-S3', 236500, 236500, 236500, 236500, 0, 0, 0, 0, '2400 Points [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(413, '8514', '2083 Points + 633 Bonus', 'VAL2716-S90', 230625, 230625, 230625, 230625, 0, 0, 0, 0, '2083 Points + 633 Bonus', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(414, '8514', '2716 Points (2083+633 Bonus)', 'VAL2716-S4', 240154, 240154, 240154, 240154, 0, 0, 0, 0, '2716 Points (2083+633 Bonus)', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(415, '8514', '2400 Points', 'VAL2400-S15', 241900, 241900, 241900, 241900, 0, 0, 0, 0, '2400 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(416, '8514', '2400 Points', 'VAL2400-S3', 244750, 244750, 244750, 244750, 0, 0, 0, 0, '2400 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(417, '8514', '2850 Points', 'VAL2850-S70', 246513, 246513, 246513, 246513, 0, 0, 0, 0, '2850 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(418, '8514', '2400 Points', 'VAL2400-S90', 251125, 251125, 251125, 251125, 0, 0, 0, 0, '2400 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(419, '8514', '3400 Points', 'VAL3400-S14', 284745, 284745, 284745, 284745, 0, 0, 0, 0, '3400 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(420, '8514', '3400 Points', 'VAL3400-S79', 284745, 284745, 284745, 284745, 0, 0, 0, 0, '3400 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(421, '8514', '3400 Points', 'VAL3400-S1', 284745, 284745, 284745, 284745, 0, 0, 0, 0, '3400 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(422, '8514', '3400 Points', 'VAL3400-S5', 294000, 294000, 294000, 294000, 0, 0, 0, 0, '3400 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(423, '8514', '3400 Points', 'VAL3400-S19', 322875, 322875, 322875, 322875, 0, 0, 0, 0, '3400 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(424, '8514', '3400 Points', 'VAL3400-S2', 331500, 331500, 331500, 331500, 0, 0, 0, 0, '3400 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(425, '8514', '4000 Points [PROMO]', 'VAL4000PRM-S3', 378400, 378400, 378400, 378400, 0, 0, 0, 0, '4000 Points [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(426, '8514', '3333 Points + 1333 Bonus', 'VAL4666-S90', 369000, 369000, 369000, 369000, 0, 0, 0, 0, '3333 Points + 1333 Bonus', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(427, '8514', '4000 Points', 'VAL4000-S90', 369000, 369000, 369000, 369000, 0, 0, 0, 0, '4000 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(428, '8514', '4000 Points [PROMO]', 'VAL4000PRM-S5', 387200, 387200, 387200, 387200, 0, 0, 0, 0, '4000 Points [PROMO]', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(429, '8514', '4000 Points', 'VAL4000-S93', 381813, 381813, 381813, 381813, 0, 0, 0, 0, '4000 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(430, '8514', '4666 Points (3333+1333 Bonus)', 'VAL4666-S4', 384232, 384232, 384232, 384232, 0, 0, 0, 0, '4666 Points (3333+1333 Bonus)', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(431, '8514', '4000 Points', 'VAL4000-S15', 387039, 387039, 387039, 387039, 0, 0, 0, 0, '4000 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(432, '8514', '4080 Points', 'VAL4080-S45', 392063, 392063, 392063, 392063, 0, 0, 0, 0, '4080 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(433, '8514', '4000 Points', 'VAL4000-S3', 391600, 391600, 391600, 391600, 0, 0, 0, 0, '4000 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(434, '8514', '4800 Points', 'VAL4800-S45', 435625, 435625, 435625, 435625, 0, 0, 0, 0, '4800 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(435, '8514', '5350 Points', 'VAL5350-S14', 455510, 455510, 455510, 455510, 0, 0, 0, 0, '5350 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(436, '8514', '5350 Points', 'VAL5350-S1', 455510, 455510, 455510, 455510, 0, 0, 0, 0, '5350 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(437, '8514', '5800 Points', 'VAL5800-S70', 493025, 493025, 493025, 493025, 0, 0, 0, 0, '5800 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(438, '8514', '7000 Points', 'VAL7000-S14', 569388, 569388, 569388, 569388, 0, 0, 0, 0, '7000 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(439, '8514', '7000 Points', 'VAL7000-S79', 569388, 569388, 569388, 569388, 0, 0, 0, 0, '7000 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(440, '8514', '7000 Points', 'VAL7000-S1', 569388, 569388, 569388, 569388, 0, 0, 0, 0, '7000 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(441, '8514', '5400 Points', 'VAL5400-S14', 607723, 607723, 607723, 607723, 0, 0, 0, 0, '5400 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(442, '8514', '7000 Points', 'VAL7000-S19', 645750, 645750, 645750, 645750, 0, 0, 0, 0, '7000 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(443, '8514', '6800 Points', 'VAL6800-S2', 663000, 663000, 663000, 663000, 0, 0, 0, 0, '6800 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(444, '8514', '8150 Points [PROMO]', 'VAL8150PRM-S3', 756800, 756800, 756800, 756800, 0, 0, 0, 0, '8150 Points [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(445, '8514', '6667 Points + 2967 Bonus', 'VAL9634-S90', 738000, 738000, 738000, 738000, 0, 0, 0, 0, '6667 Points + 2967 Bonus', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(446, '8514', '8150 Points', 'VAL8150-S90', 738000, 738000, 738000, 738000, 0, 0, 0, 0, '8150 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(447, '8514', '8040 Points', 'VAL8040-S45', 740563, 740563, 740563, 740563, 0, 0, 0, 0, '8040 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(448, '8514', '8150 Points', 'VAL8150-S93', 763625, 763625, 763625, 763625, 0, 0, 0, 0, '8150 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(449, '8514', '8150 Points + 100 Bonus [PROMO]', 'VAL8150PRM-S5', 774400, 774400, 774400, 774400, 0, 0, 0, 0, '8150 Points + 100 Bonus [PROMO]', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(450, '8514', '9634 Points (6667+2967 Bonus)', 'VAL9634-S4', 768486, 768486, 768486, 768486, 0, 0, 0, 0, '9634 Points (6667+2967 Bonus)', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(451, '8514', '8150 Points', 'VAL8150-S15', 774077, 774077, 774077, 774077, 0, 0, 0, 0, '8150 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(452, '8514', '8150 Points', 'VAL8150-S3', 783200, 783200, 783200, 783200, 0, 0, 0, 0, '8150 Points', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(453, '8514', '12000 Points', 'VAL12000-S45', 1089063, 1089063, 1089063, 1089063, 0, 0, 0, 0, '12000 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(454, '8514', '7000 Points', 'VAL7000-S70', 1024999999, 1024999999, 1024999999, 1024999999, 0, 0, 0, 0, '7000 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(455, '8514', '1125 Points', 'VAL1125-S70', 1024999999, 1024999999, 1024999999, 1024999999, 0, 0, 0, 0, '1125 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(456, '8514', '3400 Points', 'VAL3400-S70', 1024999999, 1024999999, 1024999999, 1024999999, 0, 0, 0, 0, '3400 Points', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(457, '8515', '61 Coupon', 'OP61-S48', 91574, 91574, 91574, 91574, 0, 0, 0, 0, '61 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(458, '8515', '61 Coupon', 'OP61-S46', 98068, 98068, 98068, 98068, 0, 0, 0, 0, '61 Coupon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(459, '8515', '2-Week Bonus', 'OPWB-S1', 115065, 115065, 115065, 115065, 0, 0, 0, 0, '2-Week Bonus', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(460, '8515', '2-Week Bonus', 'OPWB-S14', 116850, 116850, 116850, 116850, 0, 0, 0, 0, '2-Week Bonus', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(461, '8515', '2-Week Bonus', 'OPMWB-S10', 117409, 117409, 117409, 117409, 0, 0, 0, 0, '2-Week Bonus', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(462, '8515', '81 Funds', 'OPM81-S3', 130968, 130968, 130968, 130968, 0, 0, 0, 0, '81 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(463, '8515', '91 Coupon', 'OP91C-S48', 137360, 137360, 137360, 137360, 0, 0, 0, 0, '91 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(464, '8515', '91 Coupon', 'OP91C-S46', 147102, 147102, 147102, 147102, 0, 0, 0, 0, '91 Coupon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(465, '8515', '89 Coupon', 'OP89-S37', 147760, 147760, 147760, 147760, 0, 0, 0, 0, '89 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(466, '8515', '91 Funds', 'OP91-S14', 150931, 150931, 150931, 150931, 0, 0, 0, 0, '91 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(467, '8515', '91 Funds', 'OPM91-S10', 151650, 151650, 151650, 151650, 0, 0, 0, 0, '91 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(468, '8515', '109 Coupon', 'OP109-S1', 174732, 174732, 174732, 174732, 0, 0, 0, 0, '109 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(469, '8515', '109 Coupon', 'OP109-S14', 181118, 181118, 181118, 181118, 0, 0, 0, 0, '109 Coupon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(470, '8515', '109 Coupon', 'OP109-S27', 187156, 187156, 187156, 187156, 0, 0, 0, 0, '109 Coupon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(471, '8515', '120 Funds', 'OP120-S14', 199229, 199229, 199229, 199229, 0, 0, 0, 0, '120 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(472, '8515', '120 Funds', 'OPM120-S10', 200178, 200178, 200178, 200178, 0, 0, 0, 0, '120 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(473, '8515', '133 Coupon', 'OP133-S37', 221677, 221677, 221677, 221677, 0, 0, 0, 0, '133 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(474, '8515', '161 Funds', 'OPM161-S3', 261936, 261936, 261936, 261936, 0, 0, 0, 0, '161 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(475, '8515', '160 Funds', 'OP160-S14', 265639, 265639, 265639, 265639, 0, 0, 0, 0, '160 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(476, '8515', '160 Funds', 'OPM160-S10', 266904, 266904, 266904, 266904, 0, 0, 0, 0, '160 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(477, '8515', '177 Coupon', 'OP177-S37', 295594, 295594, 295594, 295594, 0, 0, 0, 0, '177 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(478, '8515', '181 Funds', 'OP181-S14', 301863, 301863, 301863, 301863, 0, 0, 0, 0, '181 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(479, '8515', '181 Funds', 'OPM181-S10', 303300, 303300, 303300, 303300, 0, 0, 0, 0, '181 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(480, '8515', '227 Coupon', 'OP227-S48', 343402, 343402, 343402, 343402, 0, 0, 0, 0, '227 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(481, '8515', 'Recruitment Plaan', 'OPRP-S1', 345405, 345405, 345405, 345405, 0, 0, 0, 0, 'Recruitment Plaan', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(482, '8515', 'Recruitment Plaan', 'OPRP-S14', 350765, 350765, 350765, 350765, 0, 0, 0, 0, 'Recruitment Plaan', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(483, '8515', 'Recruitment Plaan', 'OPMRP-S10', 352431, 352431, 352431, 352431, 0, 0, 0, 0, 'Recruitment Plaan', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(484, '8515', '227 Coupon', 'OP227-S46', 367755, 367755, 367755, 367755, 0, 0, 0, 0, '227 Coupon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(485, '8515', '221 Coupon', 'OP221-S37', 369510, 369510, 369510, 369510, 0, 0, 0, 0, '221 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(486, '8515', '267 Funds', 'OPM267-S3', 436560, 436560, 436560, 436560, 0, 0, 0, 0, '267 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(487, '8515', '362 Coupon', 'OP362-S1', 582440, 582440, 582440, 582440, 0, 0, 0, 0, '362 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(488, '8515', '362 Coupon', 'OP362-S14', 603725, 603725, 603725, 603725, 0, 0, 0, 0, '362 Coupon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(489, '8515', '362 Coupon', 'OP362-S27', 623854, 623854, 623854, 623854, 0, 0, 0, 0, '362 Coupon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(490, '8515', '543 Funds', 'OP543-S14', 905588, 905588, 905588, 905588, 0, 0, 0, 0, '543 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(491, '8515', '543 Funds', 'OPM543-S10', 909810, 909810, 909810, 909810, 0, 0, 0, 0, '543 Funds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(492, '8515', '904 Coupon', 'OP904-S1', 1456100, 1456100, 1456100, 1456100, 0, 0, 0, 0, '904 Coupon', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(493, '8515', '904 Coupon', 'OP904-S14', 1509313, 1509313, 1509313, 1509313, 0, 0, 0, 0, '904 Coupon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(494, '8515', '904 Coupon', 'OP904-S27', 1559635, 1559635, 1559635, 1559635, 0, 0, 0, 0, '904 Coupon', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(495, '8517', '737 Diamonds', 'LM737-S10', 91773, 91773, 91773, 91773, 0, 0, 0, 0, '737 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(496, '8517', '625 Diamonds', 'LM625-S27', 93578, 93578, 93578, 93578, 0, 0, 0, 0, '625 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(497, '8517', '1004 Diamonds', 'LMP1004-S17', 115000, 115000, 115000, 115000, 0, 0, 0, 0, '1004 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(498, '8517', '1004 Diamonds', 'LM1004-S48', 115032, 115032, 115032, 115032, 0, 0, 0, 0, '1004 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(499, '8517', '1228 Diamonds', 'LM1228-S27', 144983, 144983, 144983, 144983, 0, 0, 0, 0, '1228 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(500, '8517', '1045 Diamonds', 'LM1045-S1', 145610, 145610, 145610, 145610, 0, 0, 0, 0, '1045 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(501, '8517', '1228 Diamonds', 'LM1228-S1', 149184, 149184, 149184, 149184, 0, 0, 0, 0, '1228 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(502, '8517', '1045 Diamonds', 'LMM1045-S14', 149000, 149000, 149000, 149000, 0, 0, 0, 0, '1045 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(503, '8517', '1228 Diamonds', 'LM1228-S14', 149245, 149245, 149245, 149245, 0, 0, 0, 0, '1228 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(504, '8517', '1228 Diamonds', 'LM1228-S10', 152955, 152955, 152955, 152955, 0, 0, 0, 0, '1228 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(505, '8517', '1045 Diamonds', 'LM1045-S27', 155964, 155964, 155964, 155964, 0, 0, 0, 0, '1045 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(506, '8517', '1606 Diamonds', 'LM1606-S48', 184050, 184050, 184050, 184050, 0, 0, 0, 0, '1606 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(507, '8517', '2008 Diamonds', 'LMP2008-S17', 230000, 230000, 230000, 230000, 0, 0, 0, 0, '2008 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(508, '8517', '2008 Diamonds', 'LM2008-S48', 230062, 230062, 230062, 230062, 0, 0, 0, 0, '2008 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(509, '8517', 'Monthly Diamond Pass', 'LMMDP-S46', 255579, 255579, 255579, 255579, 0, 0, 0, 0, 'Monthly Diamond Pass', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(510, '8517', 'Monthly Diamond Pass', 'LMMDP-S50', 255579, 255579, 255579, 255579, 0, 0, 0, 0, 'Monthly Diamond Pass', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(511, '8517', '2011 Diamonds', 'LM2011-S13', 258088, 258088, 258088, 258088, 0, 0, 0, 0, '2011 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(512, '8517', '2455 Diamonds', 'LM2455-S27', 289966, 289966, 289966, 289966, 0, 0, 0, 0, '2455 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(513, '8517', '2090 DIamonds', 'LM2090-S1', 291220, 291220, 291220, 291220, 0, 0, 0, 0, '2090 DIamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(514, '8517', '2455 Diamonds', 'LM2455-S1', 298368, 298368, 298368, 298368, 0, 0, 0, 0, '2455 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(515, '8517', '2090 Diamonds', 'LMM2090-S14', 298000, 298000, 298000, 298000, 0, 0, 0, 0, '2090 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(516, '8517', '2455 Diamonds', 'LM2455-S14', 298490, 298490, 298490, 298490, 0, 0, 0, 0, '2455 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(517, '8517', '2610 Diamonds', 'LM2610-S48', 299081, 299081, 299081, 299081, 0, 0, 0, 0, '2610 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(518, '8517', '2455 Diamonds', 'LM2455-S10', 305910, 305910, 305910, 305910, 0, 0, 0, 0, '2455 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:14', '2023-06-25 13:48:14'),
(519, '8517', '2090 DIamonds', 'LM2090-S27', 311927, 311927, 311927, 311927, 0, 0, 0, 0, '2090 DIamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(520, '8517', '3012 Diamonds', 'LM3012-S48', 345094, 345094, 345094, 345094, 0, 0, 0, 0, '3012 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(521, '8517', '3614 Diamonds', 'LM3614-S48', 414112, 414112, 414112, 414112, 0, 0, 0, 0, '3614 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(522, '8517', '3352 Diamonds', 'LM3352-S13', 430146, 430146, 430146, 430146, 0, 0, 0, 0, '3352 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(523, '8517', '4016 Diamonds', 'LMP4016S17', 460000, 460000, 460000, 460000, 0, 0, 0, 0, '4016 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(524, '8517', '4016 Diamonds', 'LM4016-S48', 460125, 460125, 460125, 460125, 0, 0, 0, 0, '4016 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(525, '8517', '5020 Diamonds', 'LM5020-S48', 575156, 575156, 575156, 575156, 0, 0, 0, 0, '5020 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(526, '8517', '5033 Diamonds', 'LM5033-S27', 594429, 594429, 594429, 594429, 0, 0, 0, 0, '5033 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(527, '8517', '5033 Diamonds', 'LM5033-S1', 611655, 611655, 611655, 611655, 0, 0, 0, 0, '5033 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(528, '8517', '5033 Diamonds', 'LM5033-S14', 611906, 611906, 611906, 611906, 0, 0, 0, 0, '5033 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(529, '8517', '5033 Diamonds', 'LM5033-S10', 627116, 627116, 627116, 627116, 0, 0, 0, 0, '5033 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(530, '8517', '6024 Diamonds', 'LM6024-S48', 690187, 690187, 690187, 690187, 0, 0, 0, 0, '6024 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15');
INSERT INTO `layanans` (`id`, `kategori_id`, `layanan`, `provider_id`, `harga`, `harga_member`, `harga_platinum`, `harga_gold`, `profit`, `profit_member`, `profit_platinum`, `profit_gold`, `catatan`, `status`, `provider`, `product_logo`, `created_at`, `updated_at`) VALUES
(531, '8517', '7365 Diamonds', 'LM7365-S27', 869897, 869897, 869897, 869897, 0, 0, 0, 0, '7365 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(532, '8517', '6295 Diamonds', 'LM6295-S1', 873660, 873660, 873660, 873660, 0, 0, 0, 0, '6295 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(533, '8517', '7365 Diamonds', 'LM7365-S1', 895105, 895105, 895105, 895105, 0, 0, 0, 0, '7365 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(534, '8517', '6265 Diamonds', 'LMM6265-S14', 894000, 894000, 894000, 894000, 0, 0, 0, 0, '6265 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(535, '8517', '7365 Diamonds', 'LM7365-S14', 895471, 895471, 895471, 895471, 0, 0, 0, 0, '7365 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(536, '8517', '6265 Diamonds', 'LM6295-S32', 904377, 904377, 904377, 904377, 0, 0, 0, 0, '6265 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(537, '8517', '7365 Diamonds', 'LM67365-S10', 917730, 917730, 917730, 917730, 0, 0, 0, 0, '7365 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(538, '8517', '8032 Diamonds', 'LM8032-S48', 920249, 920249, 920249, 920249, 0, 0, 0, 0, '8032 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(539, '8517', '6265 Diamonds', 'LM6295-S20', 935781, 935781, 935781, 935781, 0, 0, 0, 0, '6265 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(540, '8517', '6295 Diamonds', 'LM6295-S27', 935781, 935781, 935781, 935781, 0, 0, 0, 0, '6295 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(541, '8517', '10040 Diamonds', 'LM10040-S48', 1150311, 1150311, 1150311, 1150311, 0, 0, 0, 0, '10040 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(542, '8517', '10066 Diamonds', 'LM10066-S27', 1188859, 1188859, 1188859, 1188859, 0, 0, 0, 0, '10066 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(543, '8517', '8585 Diamonds', 'LM8585-S1', 1194002, 1194002, 1194002, 1194002, 0, 0, 0, 0, '8585 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(544, '8517', '10066 Diamonds', 'LM10066-S1', 1223310, 1223310, 1223310, 1223310, 0, 0, 0, 0, '10066 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(545, '8517', '10066 Diamonds', 'LM10066-S14', 1223810, 1223810, 1223810, 1223810, 0, 0, 0, 0, '10066 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(546, '8517', '10066 Diamonds', 'LM610066-S10', 1254231, 1254231, 1254231, 1254231, 0, 0, 0, 0, '10066 Diamonds', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(547, '8517', '8585 Diamonds', 'LM8585-S27', 1278901, 1278901, 1278901, 1278901, 0, 0, 0, 0, '8585 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(548, '8517', '20080 Diamonds', 'LM20080-S48', 2300623, 2300623, 2300623, 2300623, 0, 0, 0, 0, '20080 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(549, '8517', '30120 Diamonds', 'LM30120-S48', 3450934, 3450934, 3450934, 3450934, 0, 0, 0, 0, '30120 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(550, '8517', '40160 Diamonds', 'LM40160-S48', 4601246, 4601246, 4601246, 4601246, 0, 0, 0, 0, '40160 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(551, '8517', '50200 Diamonds', 'LM50200-S48', 5751557, 5751557, 5751557, 5751557, 0, 0, 0, 0, '50200 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(552, '8517', '60240 Diamonds', 'LM60240-S48', 6901868, 6901868, 6901868, 6901868, 0, 0, 0, 0, '60240 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(553, '8517', '70280 Diamonds', 'LM70280-S48', 8052180, 8052180, 8052180, 8052180, 0, 0, 0, 0, '70280 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(554, '8517', '80320 Diamonds', 'LM80320-S48', 9202491, 9202491, 9202491, 9202491, 0, 0, 0, 0, '80320 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(555, '8517', '90360 Diamonds', 'LM90360-S48', 10352802, 10352802, 10352802, 10352802, 0, 0, 0, 0, '90360 Diamonds', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(556, '8517', 'Custom Package', 'LMCUSTOM-S48', 1024999999, 1024999999, 1024999999, 1024999999, 0, 0, 0, 0, 'Custom Package', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(557, '8518', '718 Candy', 'SM718-S57', 114185, 114185, 114185, 114185, 0, 0, 0, 0, '718 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(558, '8518', '718 Candy', 'SM718-S50', 114684, 114684, 114684, 114684, 0, 0, 0, 0, '718 Candy', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(559, '8518', '718 Candy', 'SGMAN718-S3', 126326, 126326, 126326, 126326, 0, 0, 0, 0, '718 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(560, '8518', '718 Candy', 'SM718-S46', 118388, 118388, 118388, 118388, 0, 0, 0, 0, '718 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(561, '8518', '718 Candy', 'SM718-S38', 121387, 121387, 121387, 121387, 0, 0, 0, 0, '718 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(562, '8518', '718 Candy', 'SM718-S26', 130483, 130483, 130483, 130483, 0, 0, 0, 0, '718 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(563, '8518', '1368 Candy', 'SM1368-S57', 228678, 228678, 228678, 228678, 0, 0, 0, 0, '1368 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(564, '8518', '1368 Candy', 'SM1368-S50', 229625, 229625, 229625, 229625, 0, 0, 0, 0, '1368 Candy', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(565, '8518', '1368 Candy', 'SGMAN1368-S3', 253050, 253050, 253050, 253050, 0, 0, 0, 0, '1368 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(566, '8518', '1368 Candy', 'SM1368-S46', 236980, 236980, 236980, 236980, 0, 0, 0, 0, '1368 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(567, '8518', '1368 Candy', 'SM1368-S38', 243062, 243062, 243062, 243062, 0, 0, 0, 0, '1368 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(568, '8518', '1368 Candy', 'SM1368-S26', 261068, 261068, 261068, 261068, 0, 0, 0, 0, '1368 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(569, '8518', '2118 Candy', 'SM2118-S50', 342519, 342519, 342519, 342519, 0, 0, 0, 0, '2118 Candy', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(570, '8518', '2118 Candy', 'SGMAN2118-S3', 379808, 379808, 379808, 379808, 0, 0, 0, 0, '2118 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(571, '8518', '2118 Candy', 'SM2118-S46', 353318, 353318, 353318, 353318, 0, 0, 0, 0, '2118 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(572, '8518', '2118 Candy', 'SM2118-S57', 371563, 371563, 371563, 371563, 0, 0, 0, 0, '2118 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(573, '8518', '2118 Candy', 'SM2118-S38', 383350, 383350, 383350, 383350, 0, 0, 0, 0, '2118 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(574, '8518', '2118 Candy', 'SM2118-S26', 424453, 424453, 424453, 424453, 0, 0, 0, 0, '2118 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(575, '8518', '3548 Candy', 'SM3548-S57', 566313, 566313, 566313, 566313, 0, 0, 0, 0, '3548 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(576, '8518', '3548 Candy', 'SM3548-S50', 572400, 572400, 572400, 572400, 0, 0, 0, 0, '3548 Candy', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(577, '8518', '3548 Candy', 'SM3548-S46', 579228, 579228, 579228, 579228, 0, 0, 0, 0, '3548 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(578, '8518', '3548 Candy', 'SM3548-S38', 594130, 594130, 594130, 594130, 0, 0, 0, 0, '3548 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(579, '8518', '3548 Candy', 'SGMAN3548-S3', 675952, 675952, 675952, 675952, 0, 0, 0, 0, '3548 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(580, '8518', '3548 Candy', 'SM3548-S26', 653233, 653233, 653233, 653233, 0, 0, 0, 0, '3548 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(581, '8518', '7048 Candy', 'SM7048-S57', 1132933, 1132933, 1132933, 1132933, 0, 0, 0, 0, '7048 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(582, '8518', '7048 Candy', 'SM7048-S50', 1146973, 1146973, 1146973, 1146973, 0, 0, 0, 0, '7048 Candy', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(583, '8518', '7048 Candy', 'SM7048-S46', 1160813, 1160813, 1160813, 1160813, 0, 0, 0, 0, '7048 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(584, '8518', '7048 Candy', 'SGMAN7048-S3', 1267410, 1267410, 1267410, 1267410, 0, 0, 0, 0, '7048 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(585, '8518', '7048 Candy', 'SM7048-S38', 1190525, 1190525, 1190525, 1190525, 0, 0, 0, 0, '7048 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(586, '8518', '7048 Candy', 'SM7048-S26', 1306670, 1306670, 1306670, 1306670, 0, 0, 0, 0, '7048 Candy', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(587, '8520', '435 Star Coins', 'MSW435-S1', 96000, 96000, 96000, 96000, 0, 0, 0, 0, '435 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(588, '8520', '565 Star Credits', 'MSW565SC-S1', 116488, 116488, 116488, 116488, 0, 0, 0, 0, '565 Star Credits', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(589, '8520', '565 Star Credits', 'MSW565SC-S14', 118811, 118811, 118811, 118811, 0, 0, 0, 0, '565 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(590, '8520', '565 Star Credits', 'MSW565SC-S26', 122752, 122752, 122752, 122752, 0, 0, 0, 0, '565 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(591, '8520', '565 Star Credits', 'MSW565SC-S27', 124459, 124459, 124459, 124459, 0, 0, 0, 0, '565 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(592, '8520', '580 Star Coins', 'MSW580-S1', 128000, 128000, 128000, 128000, 0, 0, 0, 0, '580 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(593, '8520', '725 Star Coins', 'MSW725-S1', 160000, 160000, 160000, 160000, 0, 0, 0, 0, '725 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(594, '8520', '1155 Star Credits', 'MSW1155SC-S1', 232976, 232976, 232976, 232976, 0, 0, 0, 0, '1155 Star Credits', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(595, '8520', '1155 Star Credits', 'MSW1155SC-S14', 237622, 237622, 237622, 237622, 0, 0, 0, 0, '1155 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(596, '8520', '1155 Star Credits', 'MSW1155SC-S26', 245505, 245505, 245505, 245505, 0, 0, 0, 0, '1155 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(597, '8520', '1155 Star Credits', 'MSW1155SC-S27', 249230, 249230, 249230, 249230, 0, 0, 0, 0, '1155 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(598, '8520', '1450 Star Coins', 'MSW1450-S1', 320000, 320000, 320000, 320000, 0, 0, 0, 0, '1450 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(599, '8520', '1765 Star Credits', 'MSW1765SC-S1', 378586, 378586, 378586, 378586, 0, 0, 0, 0, '1765 Star Credits', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(600, '8520', '1765 Star Credits', 'MSW1765SC-S14', 386135, 386135, 386135, 386135, 0, 0, 0, 0, '1765 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(601, '8520', '1765 Star Credits', 'MSW1765SC-S27', 405193, 405193, 405193, 405193, 0, 0, 0, 0, '1765 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(602, '8520', '2250 Star Coins', 'MSW2250-S1', 480000, 480000, 480000, 480000, 0, 0, 0, 0, '2250 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(603, '8520', '2950 Star Credits', 'MSW2950SC-S1', 582440, 582440, 582440, 582440, 0, 0, 0, 0, '2950 Star Credits', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(604, '8520', '2950 Star Credits', 'MSW2950SC-S14', 594054, 594054, 594054, 594054, 0, 0, 0, 0, '2950 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(605, '8520', '2950 Star Credits', 'MSW2950SC-S27', 623542, 623542, 623542, 623542, 0, 0, 0, 0, '2950 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(606, '8520', '3000 Star Coins', 'MSW3000-S1', 640000, 640000, 640000, 640000, 0, 0, 0, 0, '3000 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(607, '8520', '4500 Star Coins', 'MSW4500-S1', 960000, 960000, 960000, 960000, 0, 0, 0, 0, '4500 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(608, '8520', '6000 Star Credits', 'MSW6000SC-S1', 1164880, 1164880, 1164880, 1164880, 0, 0, 0, 0, '6000 Star Credits', 'available', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(609, '8520', '6000 Star Credits', 'MSW6000SC-S14', 1188108, 1188108, 1188108, 1188108, 0, 0, 0, 0, '6000 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(610, '8520', '6000 Star Credits', 'MSW6000SC-S27', 1247396, 1247396, 1247396, 1247396, 0, 0, 0, 0, '6000 Star Credits', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(611, '8520', '7500 Star Coins', 'MSW7500-S1', 1600000, 1600000, 1600000, 1600000, 0, 0, 0, 0, '7500 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(612, '8520', '15000 Star Coins', 'MSW15000-S1', 3200000, 3200000, 3200000, 3200000, 0, 0, 0, 0, '15000 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(613, '8520', '30000 Star Coins', 'MSW30000-S1', 6400000, 6400000, 6400000, 6400000, 0, 0, 0, 0, '30000 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15'),
(614, '8520', '45000 Star Coins', 'MSW45000-S1', 9600000, 9600000, 9600000, 9600000, 0, 0, 0, 0, '45000 Star Coins', 'unavailable', 'vip', NULL, '2023-06-25 13:48:15', '2023-06-25 13:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_ppobs`
--

CREATE TABLE `layanan_ppobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `tipe_layanan` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `harga_reseller` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE `methods` (
  `id` int(11) NOT NULL,
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `images` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tipe` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `methods`
--

INSERT INTO `methods` (`id`, `name`, `images`, `code`, `keterangan`, `tipe`, `created_at`, `updated_at`) VALUES
(50, 'OVO', '/assets/thumbnail/OVO.webp', 'OVO', 'Konfirmasi Manual', 'qris', '2023-02-07 09:33:53', '2023-05-08 10:33:01'),
(43, 'CIMB Niaga Virtual Account', '/assets/thumbnail/cimbva.webp', 'CIMBVA', 'Proses Otomatis', 'virtual-account', '2023-02-07 09:18:54', '2023-02-25 12:59:55'),
(44, 'BNI Virtual Account', '/assets/thumbnail/bni.webp', 'BNIVA', 'Proses Otomatis', 'virtual-account', '2023-02-07 09:19:54', '2023-02-25 13:00:05'),
(45, 'ALFAMART', '/assets/thumbnail/alfamart.webp', 'ALFAMART', 'Proses Otomatis', 'convenience-store', '2023-02-07 09:21:07', '2023-02-25 13:00:17'),
(46, 'INDOMARET', '/assets/thumbnail/indomaret.webp', 'INDOMARET', 'Proses Otomatis', 'convenience-store', '2023-02-07 09:21:46', '2023-02-25 13:00:26'),
(51, 'QRIS', '/assets/thumbnail/Screenshot (87)-3dfa.png', 'QRIS', 'Proses Otomatis', 'qris', '2023-03-06 06:59:32', '2023-03-30 18:42:30'),
(52, 'GOPAY', '/assets/thumbnail/Logo GoPay (PNG-480p) - FileVector69.png', 'GOPAY', 'Konfirmasi Manual', 'qris', '2023-03-16 21:11:36', '2023-05-08 10:32:57'),
(54, 'QRIS 2', '/assets/thumbnail/1620711373-WhatsApp Image 2021-05-10 at 5.webp', 'QRIS2', 'Di cek otomatis', 'qris', '2023-03-30 18:43:18', '2023-03-30 18:43:18'),
(55, 'ShopeePay', '/assets/thumbnail/gsi shopee-81028.png', 'SHOPEEPAY', 'Di cek otomatis', 'e-walet', '2023-03-30 18:45:05', '2023-03-30 18:45:05'),
(56, 'Alfamidi', '/assets/thumbnail/alfamidi-11096.png', 'ALFAMIDI', 'Di cek otomatis', 'convenience-store', '2023-03-30 18:47:05', '2023-03-30 18:47:05'),
(57, 'Sampoerna Virtual Account', '/assets/thumbnail/sampoerna-c2f1.png', 'SAMPOERNAVA', 'Di cek otomatis', 'virtual-account', '2023-03-30 18:49:41', '2023-03-30 18:53:11'),
(58, 'Muamalat Virtual Account', '/assets/thumbnail/muamalat-3711.png', 'MUAMALATVA', 'Di cek otomatis', 'virtual-account', '2023-03-30 18:50:39', '2023-03-30 18:50:39'),
(59, 'Sinarmas Virtual Account', '/assets/thumbnail/sinarmas-c108b.png', 'SMSVA', 'Di cek otomatis', 'virtual-account', '2023-03-30 18:52:01', '2023-03-30 18:52:01'),
(60, 'Mandiri Virtual Account', '/assets/thumbnail/mandiri-410a10.png', 'MANDIRIVA', 'Di cek otomatis', 'virtual-account', '2023-03-30 18:52:28', '2023-03-30 18:52:28'),
(61, 'BRI Virtual Account', '/assets/thumbnail/bri-0dd9.png', 'BRIVA', 'Di cek otomatis', 'virtual-account', '2023-03-30 18:53:36', '2023-03-30 18:53:36'),
(62, 'Permata Virtual Account', '/assets/thumbnail/permata-94d10.png', 'PERMATAVA', 'Di cek otomatis', 'virtual-account', '2023-03-30 18:54:26', '2023-03-30 18:54:26'),
(63, 'Maybank Virtual Account', '/assets/thumbnail/maybank-3043.png', 'MYBVA', 'Di cek otomatis', 'virtual-account', '2023-03-30 18:55:00', '2023-03-30 18:55:00'),
(64, 'BSI Virtual Account', '/assets/thumbnail/bsi-min-7108.png', 'BSIVA', 'Di cek otomatis', 'virtual-account', '2023-03-30 18:55:39', '2023-03-30 18:55:39'),
(65, 'BCA Virtual Account', '/assets/thumbnail/bca-5e57.png', 'BCAVA', 'Proses Otomatis', 'virtual-account', '2023-03-30 18:57:37', '2023-03-30 18:57:37'),
(66, 'DANA', '/assets/thumbnail/dana-418f.png', 'DANA', 'Di cek otomatis', 'e-walet', '2023-03-30 19:03:06', '2023-06-25 13:14:36'),
(67, 'LinkAja', '/assets/thumbnail/linkaja-min-3919.png', 'QRIS2', 'Di cek otomatis', 'e-walet', '2023-03-30 19:03:41', '2023-03-30 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_26_082220_create_kategoris_table', 1),
(6, '2022_01_26_102949_create_layanans_table', 1),
(11, '2022_01_29_111105_create_pembelians_table', 2),
(12, '2022_01_29_111703_create_pembayarans_table', 2),
(13, '2022_02_01_152716_create_ovos_table', 3),
(14, '2022_02_01_152824_create_history__ovos_table', 3),
(15, '2022_02_01_155618_create_gojeks_table', 4),
(16, '2022_02_01_155927_create_history__gojeks_table', 4),
(17, '2022_02_02_081840_create_methode_pembayarans_table', 5),
(18, '2022_02_02_084003_create_beritas_table', 6),
(19, '2022_04_08_133307_create_layanan_ppobs_table', 7),
(20, '2022_04_27_141044_create_deposits_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `ovos`
--

CREATE TABLE `ovos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `RefId` varchar(255) NOT NULL,
  `UpdateAccessToken` varchar(1000) NOT NULL,
  `AuthToken` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `no_pembayaran` text NOT NULL,
  `no_pembeli` varchar(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `metode` varchar(255) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `order_id`, `harga`, `no_pembayaran`, `no_pembeli`, `status`, `metode`, `reference`, `created_at`, `updated_at`) VALUES
(1, 'INV2008348M', '30813', '', '085891452604', 'Belum Lunas', 'SHOPEEPAY', '', '2023-06-25 13:15:10', '2023-06-25 13:15:10'),
(2, 'INV2003460M', '30678', '085829145296', '085891452604', 'PAID', 'DANA', 'INV2003460M', '2023-06-25 13:18:04', '2023-06-25 13:31:13'),
(3, 'INV2057524M', '18527', '085829145296', '085891452604', 'PAID', 'DANA', '', '2023-06-25 13:38:58', '2023-06-25 13:39:10'),
(4, 'INV2015924M', '9662', '085829145296', '085891452604', 'PAID', 'DANA', '', '2023-06-25 13:49:16', '2023-06-25 13:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `pembelians`
--

CREATE TABLE `pembelians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `layanan` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `provider_order_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `log` varchar(1000) DEFAULT NULL,
  `tipe_transaksi` varchar(255) NOT NULL DEFAULT 'game',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelians`
--

INSERT INTO `pembelians` (`id`, `order_id`, `username`, `user_id`, `zone`, `nickname`, `layanan`, `harga`, `profit`, `provider_order_id`, `status`, `log`, `tipe_transaksi`, `created_at`, `updated_at`) VALUES
(1, 'INV2008348M', NULL, '3518845927', NULL, 'RIZzImu⸸⸸', 'Free Fire 250 Diamond', 30813, 0, NULL, 'Pending', NULL, 'game', '2023-06-25 13:15:10', '2023-06-25 13:15:10'),
(2, 'INV2003460M', NULL, '3518845927', NULL, 'RIZzImu⸸⸸', 'Free Fire 250 Diamond', 30678, 0, '2098', 'Sukses', '{\"data\":{\"ref_id\":\"2098\",\"customer_no\":\"3518845927\",\"buyer_sku_code\":\"FreeFire250Diamond\",\"message\":\"\",\"status\":true,\"rc\":\"\",\"buyer_last_saldo\":990000,\"sn\":\"\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"},\"transactionId\":2098}', 'game', '2023-06-25 13:18:04', '2023-06-25 13:31:13'),
(3, 'INV2057524M', NULL, '14515', NULL, '14515', '2400 PB Cash', 18527, 0, '2358', 'Sukses', '{\"data\":{\"ref_id\":\"2358\",\"customer_no\":\"14515\",\"buyer_sku_code\":\"2400PBCash\",\"message\":\"\",\"status\":true,\"rc\":\"\",\"buyer_last_saldo\":990000,\"sn\":\"\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"},\"transactionId\":2358}', 'game', '2023-06-25 13:38:58', '2023-06-25 13:39:10'),
(4, 'INV2015924M', NULL, '1146763626', '13625', '领senpaiツ', 'MOBILELEGEND - 36 Diamond', 9662, 0, '2139', 'Sukses', '{\"data\":{\"ref_id\":\"2139\",\"customer_no\":\"114676362613625\",\"buyer_sku_code\":\"MLO36\",\"message\":\"\",\"status\":true,\"rc\":\"\",\"buyer_last_saldo\":990000,\"sn\":\"\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"},\"transactionId\":2139}', 'game', '2023-06-25 13:49:16', '2023-06-25 13:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `setting_webs`
--

CREATE TABLE `setting_webs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_web` text NOT NULL,
  `deskripsi_web` text NOT NULL,
  `logo_header` text DEFAULT NULL,
  `logo_footer` text DEFAULT NULL,
  `logo_favicon` text DEFAULT NULL,
  `url_wa` text NOT NULL,
  `url_ig` text NOT NULL,
  `url_tiktok` text NOT NULL,
  `url_youtube` text NOT NULL,
  `url_fb` text NOT NULL,
  `topupindo_api` text NOT NULL,
  `warna1` text NOT NULL,
  `warna2` text NOT NULL,
  `warna3` text NOT NULL,
  `warna4` text NOT NULL,
  `tripay_api` text DEFAULT NULL,
  `tripay_merchant_code` text DEFAULT NULL,
  `tripay_private_key` text DEFAULT NULL,
  `username_digi` text DEFAULT NULL,
  `api_key_digi` text DEFAULT NULL,
  `apigames_secret` text DEFAULT NULL,
  `apigames_merchant` text DEFAULT NULL,
  `vip_apiid` text DEFAULT NULL,
  `vip_apikey` text DEFAULT NULL,
  `nomor_admin` text DEFAULT NULL,
  `wa_key` text DEFAULT NULL,
  `wa_number` text DEFAULT NULL,
  `ovo_admin` text DEFAULT NULL,
  `ovo1_admin` text DEFAULT NULL,
  `gopay_admin` text DEFAULT NULL,
  `gopay1_admin` text DEFAULT NULL,
  `dana_admin` text DEFAULT NULL,
  `shopeepay_admin` text DEFAULT NULL,
  `bca_admin` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `setting_webs`
--

INSERT INTO `setting_webs` (`id`, `judul_web`, `deskripsi_web`, `logo_header`, `logo_footer`, `logo_favicon`, `url_wa`, `url_ig`, `url_tiktok`, `url_youtube`, `url_fb`, `topupindo_api`, `warna1`, `warna2`, `warna3`, `warna4`, `tripay_api`, `tripay_merchant_code`, `tripay_private_key`, `username_digi`, `api_key_digi`, `apigames_secret`, `apigames_merchant`, `vip_apiid`, `vip_apikey`, `nomor_admin`, `wa_key`, `wa_number`, `ovo_admin`, `ovo1_admin`, `gopay_admin`, `gopay1_admin`, `dana_admin`, `shopeepay_admin`, `bca_admin`, `created_at`, `updated_at`) VALUES
(1, 'Topup Indo', 'Top Up Games, Voucher & PPOB Online 24 Jam', '/assets/logo/logo-header.png', '/assets/logo/logo-header.png', '/assets/logo/favicon.png', 'https://wa.me/message/Y4UX65NBPC4AG1', 'https://instagram.com/', 'https://tiktok.com', 'https://youtube.com/', 'https://facebook.com/', '@@Nadia321', '#141414', '#141414', '#212121', '#E7E7E7', 'DEV-5cUwJFBiS4QJR0u3xqw6hheBrxtfHSwH2L48A77Z', 'T10995', '8xNt3-dzanK-OU4f9-84uHU-IG4hf', 'sicapeoeV94D', 'dev-497ac2d0-1148-11ed-bf06-57b84f288797', '-', '-', 'PFKJDzXz', 't3J9omtF5xror8DHQmgRPueHWhiQgfOi9qenM4Uk6ZCPihMLIkN37XTBZ28OR5O6', 'https://wa.rumahcompu.tech/', 'U3EGieWV3OZBsyLJEfXZ9KVLKFji75', '6285771764102', '-', '-', '-', '-', '085829145296', '-', '-', '2023-06-25 13:37:06', '2023-06-25 13:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_wa` varchar(255) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `role` enum('Admin','Member','Gold','Platinum') NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `no_wa`, `balance`, `role`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'Topup Indo', 'mimintop', '$2y$10$wCjVc8Ngz.eVmGM/UNuk8eCZqDItG6dFXYhC8MzluLDBHxqDe8NGy', '082377823390', 0, 'Admin', NULL, '2023-05-08 08:19:59', '2023-05-08 08:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `promo` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `max_potongan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_joki`
--
ALTER TABLE `data_joki`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gojeks`
--
ALTER TABLE `gojeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history__gojeks`
--
ALTER TABLE `history__gojeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history__ovos`
--
ALTER TABLE `history__ovos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_ppobs`
--
ALTER TABLE `layanan_ppobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ovos`
--
ALTER TABLE `ovos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_webs`
--
ALTER TABLE `setting_webs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `data_joki`
--
ALTER TABLE `data_joki`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gojeks`
--
ALTER TABLE `gojeks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history__gojeks`
--
ALTER TABLE `history__gojeks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history__ovos`
--
ALTER TABLE `history__ovos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8530;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;

--
-- AUTO_INCREMENT for table `layanan_ppobs`
--
ALTER TABLE `layanan_ppobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ovos`
--
ALTER TABLE `ovos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting_webs`
--
ALTER TABLE `setting_webs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
