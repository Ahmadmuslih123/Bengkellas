-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2023 pada 16.10
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bengkel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_06_03_045729_create_produk_table', 1),
(5, '2023_06_03_115817_create_pemesanan_table', 1),
(6, '2023_06_16_165549_create_chat_messages_table', 2),
(7, '2023_06_16_171014_create_messages_table', 3),
(8, '2023_06_18_120732_create_ulasan_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` bigint(20) UNSIGNED NOT NULL,
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_produk`, `id_user`, `jumlah`, `total_harga`, `status`, `bukti_pembayaran`, `created_at`, `updated_at`) VALUES
(14, 2, 4, 2, 20000, 'Pesanan Selesai', '1687454218_gallery15.jpg', '2023-06-22 10:16:47', '2023-06-22 10:17:46'),
(26, 2, 7, 1, 10000, 'Pesanan Selesai', '1689688772_WhatsApp Image 2023-07-05 at 21.40.38.jpg', '2023-07-18 06:59:01', '2023-07-18 06:59:52'),
(27, 2, 7, 2, 20000, 'Pesanan Selesai', '1689688886_muslih.jpg', '2023-07-18 07:00:44', '2023-07-18 07:01:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_produk` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `deskripsi_produk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_produk`, `nama_produk`, `slug_produk`, `gambar_produk`, `harga_produk`, `deskripsi_produk`, `created_at`, `updated_at`) VALUES
(2, 'tangga', 'Tangga', 'tangga', '1689689099.jpeg', 10000, 'Desain tangga minimalis', '2023-06-05 17:00:00', '2023-07-18 07:04:59'),
(3, 'pagar', 'Pagar', 'pagar', '1689689268.jpg', 20000, 'Pagar berbahan stainless kuat dan tahan lama', '2023-06-05 17:00:00', '2023-07-18 07:07:48'),
(4, 'tralis', 'tralis', 'tralis', '1687031847.png', 80000, 'sdf sdfs df sf sdfawa we A wa', '2023-06-05 17:00:00', '2023-06-17 12:57:27'),
(8, 'kanopi', 'hayo apaan', 'hayo-apaan', '1687030754.png', 1221212, 'asdads', '2023-06-17 12:39:14', '2023-06-17 12:39:14'),
(10, 'kanopi', 'muslih', 'muslih', '1687454401.png', 667111, 'skahd', '2023-06-22 10:20:01', '2023-06-22 10:20:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasan`
--

CREATE TABLE `ulasan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pemesanan_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `ulasan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ulasan`
--

INSERT INTO `ulasan` (`id`, `pemesanan_id`, `rating`, `ulasan`, `created_at`, `updated_at`) VALUES
(6, 14, 5, 'muslih', '2023-06-22 10:18:02', '2023-06-22 10:18:02'),
(7, 26, 4, 'anjayyy', '2023-07-18 07:00:22', '2023-07-18 07:00:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'coba', 'coba@coba.com', NULL, NULL, '$2y$10$0UJx0mT.xps03l3AXCINdul0nnFYm/jOuaa8VzkgNXBrWYfyJt3PS', NULL, '2023-06-16 11:06:35', '2023-06-16 11:06:35'),
(3, 'bot', 'bot@gmail.com', NULL, '2023-06-16 18:15:54', '', NULL, '2023-06-16 18:15:54', '2023-06-16 18:15:54'),
(4, 'cobain', 'cobain@gmail.com', NULL, NULL, '$2y$10$5Qb6.4AXdFXqpzc.bdeTZe2E2dgqwNUscY0vV1Le6l4lhtu16kW7C', NULL, '2023-06-17 13:48:06', '2023-06-17 13:48:06'),
(5, 'muslih', 'muslih@gmail.com', 1, NULL, '$2y$10$6zs9Lan7rVGowPE6LDPGZOErP04JfpNGIwCLCUas/bSsOwKj/.rMy', NULL, '2023-06-25 11:08:44', '2023-06-25 11:08:44'),
(6, 'bodong', 'bodong@gmail.com', NULL, NULL, '$2y$10$FIJ1F424E/RjO7avJ28Uu.HAZIgV.OjJPJogRiafOMNk5RltmjtAy', NULL, '2023-06-29 09:44:13', '2023-06-29 09:44:13'),
(7, 'testing 1', 'testing1@gmail.com', 1, NULL, '$2y$10$wgrQUuOWFIWnrzrIKlbxAudnDYfvE9znzRo54vyx6Y9yWZwZL2mZO', NULL, '2023-07-04 22:49:12', '2023-07-04 22:49:12'),
(8, 'klemot', 'klemot@gmail.com', 1, NULL, '$2y$10$bBVYzP3FXjMFu8znc/1jluKI72k78f1c8uCdTGn6JQW1a0ZwSkr2i', NULL, '2023-07-18 06:38:20', '2023-07-18 06:38:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `pemesanan_id_produk_foreign` (`id_produk`),
  ADD KEY `pemesanan_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ulasan_pemesanan_id_foreign` (`pemesanan_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_id_produk_foreign` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemesanan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_pemesanan_id_foreign` FOREIGN KEY (`pemesanan_id`) REFERENCES `pemesanan` (`id_pemesanan`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
