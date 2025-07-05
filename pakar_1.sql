/*
 Navicat Premium Data Transfer

 Source Server         : my_local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : pakar

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 05/07/2025 16:29:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alternatifs
-- ----------------------------
DROP TABLE IF EXISTS `alternatifs`;
CREATE TABLE `alternatifs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengisi` enum('Orangtua','Guru','Anak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `usia` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alternatifs
-- ----------------------------
INSERT INTO `alternatifs` VALUES (2, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2024-01-24', 1, '2025-06-24 14:35:57', '2025-06-24 14:35:57');
INSERT INTO `alternatifs` VALUES (3, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2021-03-30', 4, '2025-06-30 09:36:30', '2025-06-30 09:36:30');
INSERT INTO `alternatifs` VALUES (4, 'Tes Tulis', 'Laki-laki', 'Orangtua', '2021-05-17', 4, '2025-06-30 09:56:02', '2025-06-30 09:56:02');
INSERT INTO `alternatifs` VALUES (5, 'Nilai Rata Rata', 'Perempuan', 'Orangtua', '2021-06-16', 4, '2025-06-30 09:57:53', '2025-06-30 09:57:53');
INSERT INTO `alternatifs` VALUES (6, 'Tes Tulis', 'Perempuan', 'Orangtua', '2021-09-30', 3, '2025-06-30 10:01:19', '2025-06-30 10:01:19');
INSERT INTO `alternatifs` VALUES (7, 'Sifa', 'Perempuan', 'Orangtua', '2021-06-16', 4, '2025-06-30 10:02:43', '2025-06-30 10:02:43');
INSERT INTO `alternatifs` VALUES (8, 'Sifa', 'Perempuan', 'Orangtua', '2021-06-30', 4, '2025-06-30 10:04:21', '2025-06-30 10:04:21');
INSERT INTO `alternatifs` VALUES (9, 'Tes Tulis', 'Perempuan', 'Orangtua', '2021-06-30', 4, '2025-06-30 10:07:05', '2025-06-30 10:07:05');
INSERT INTO `alternatifs` VALUES (10, 'Tes Tulis', 'Perempuan', 'Orangtua', '2021-06-30', 4, '2025-06-30 10:07:14', '2025-06-30 10:07:14');
INSERT INTO `alternatifs` VALUES (11, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2021-06-30', 4, '2025-06-30 10:17:22', '2025-06-30 10:17:22');
INSERT INTO `alternatifs` VALUES (12, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2025-05-27', 0, '2025-06-30 10:21:16', '2025-06-30 10:21:16');
INSERT INTO `alternatifs` VALUES (13, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2022-06-30', 3, '2025-06-30 10:26:28', '2025-06-30 10:26:28');
INSERT INTO `alternatifs` VALUES (14, 'Ahmad robbiul imana', 'Perempuan', 'Orangtua', '2025-06-30', 0, '2025-06-30 10:31:07', '2025-06-30 10:31:07');
INSERT INTO `alternatifs` VALUES (15, 'Ahmad robbiul imana', 'Perempuan', 'Orangtua', '2025-06-30', 0, '2025-06-30 10:31:23', '2025-06-30 10:31:23');
INSERT INTO `alternatifs` VALUES (16, 'Ahmad robbiul imana', 'Perempuan', 'Orangtua', '2022-06-16', 3, '2025-06-30 10:34:35', '2025-06-30 10:34:35');
INSERT INTO `alternatifs` VALUES (17, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2021-06-21', 4, '2025-06-30 10:36:46', '2025-06-30 10:36:46');
INSERT INTO `alternatifs` VALUES (18, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2021-06-20', 4, '2025-06-30 10:42:38', '2025-06-30 10:42:38');
INSERT INTO `alternatifs` VALUES (19, 'Siswa', 'Perempuan', 'Orangtua', '2021-06-30', 4, '2025-06-30 10:43:22', '2025-06-30 10:43:22');
INSERT INTO `alternatifs` VALUES (20, 'Siswa', 'Perempuan', 'Orangtua', '2021-06-20', 4, '2025-06-30 10:45:07', '2025-06-30 10:45:07');
INSERT INTO `alternatifs` VALUES (21, 'Siswa', 'Laki-laki', 'Orangtua', '2020-06-20', 5, '2025-06-30 10:48:43', '2025-06-30 10:48:43');
INSERT INTO `alternatifs` VALUES (22, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2020-12-21', 4, '2025-06-30 10:50:00', '2025-06-30 10:50:00');
INSERT INTO `alternatifs` VALUES (23, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2022-02-28', 3, '2025-06-30 11:01:17', '2025-06-30 11:01:17');
INSERT INTO `alternatifs` VALUES (24, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2021-06-30', 4, '2025-06-30 11:17:35', '2025-06-30 11:17:35');
INSERT INTO `alternatifs` VALUES (25, 'Siswa', 'Laki-laki', 'Orangtua', '2021-09-20', 3, '2025-06-30 11:19:29', '2025-06-30 11:19:29');
INSERT INTO `alternatifs` VALUES (26, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2022-07-13', 2, '2025-06-30 11:48:22', '2025-06-30 11:48:22');
INSERT INTO `alternatifs` VALUES (27, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2022-07-13', 2, '2025-06-30 11:49:16', '2025-06-30 11:49:16');
INSERT INTO `alternatifs` VALUES (28, 'Ahmad robbiul imana', 'Perempuan', 'Orangtua', '2020-05-13', 5, '2025-06-30 11:49:32', '2025-06-30 11:49:32');
INSERT INTO `alternatifs` VALUES (29, 'Nilai Rata Rata', 'Perempuan', 'Orangtua', '2020-11-30', 4, '2025-06-30 11:50:31', '2025-06-30 11:50:31');
INSERT INTO `alternatifs` VALUES (30, 'Sikap', 'Perempuan', 'Orangtua', '2022-12-30', 2, '2025-06-30 11:52:17', '2025-06-30 11:52:17');
INSERT INTO `alternatifs` VALUES (31, 'Tes Tulis', 'Perempuan', 'Orangtua', '2021-06-30', 4, '2025-06-30 11:54:48', '2025-06-30 11:54:48');
INSERT INTO `alternatifs` VALUES (32, 'Sikap', 'Perempuan', 'Orangtua', '2022-06-30', 3, '2025-06-30 12:34:14', '2025-06-30 12:34:14');
INSERT INTO `alternatifs` VALUES (33, 'Tris', 'Perempuan', 'Orangtua', '2023-06-29', 2, '2025-06-30 12:42:16', '2025-06-30 12:42:16');
INSERT INTO `alternatifs` VALUES (34, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2021-07-03', 4, '2025-07-03 11:21:36', '2025-07-03 11:21:36');
INSERT INTO `alternatifs` VALUES (35, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2025-07-03', 0, '2025-07-03 11:23:14', '2025-07-03 11:23:14');
INSERT INTO `alternatifs` VALUES (36, 'Sifa', 'Laki-laki', 'Orangtua', '2020-04-13', 5, '2025-07-03 11:25:24', '2025-07-03 11:25:24');
INSERT INTO `alternatifs` VALUES (37, 'Tes Tulis', 'Laki-laki', 'Orangtua', '2020-06-12', 5, '2025-07-03 11:27:56', '2025-07-03 11:27:56');
INSERT INTO `alternatifs` VALUES (38, 'Nilai Rata Rata', 'Laki-laki', 'Orangtua', '2020-05-17', 5, '2025-07-03 11:30:49', '2025-07-03 11:30:49');
INSERT INTO `alternatifs` VALUES (39, 'Nilai Rata Rata', 'Laki-laki', 'Orangtua', '2020-05-17', 5, '2025-07-03 11:31:17', '2025-07-03 11:31:17');
INSERT INTO `alternatifs` VALUES (40, 'Nilai Rata Rata', 'Laki-laki', 'Orangtua', '2020-05-17', 5, '2025-07-03 11:31:49', '2025-07-03 11:31:49');
INSERT INTO `alternatifs` VALUES (41, 'Nilai Rata Rata', 'Laki-laki', 'Orangtua', '2020-05-17', 5, '2025-07-03 11:32:09', '2025-07-03 11:32:09');
INSERT INTO `alternatifs` VALUES (42, 'Nilai Rata Rata', 'Laki-laki', 'Orangtua', '2020-05-17', 5, '2025-07-03 11:33:16', '2025-07-03 11:33:16');
INSERT INTO `alternatifs` VALUES (43, 'Siswa', 'Laki-laki', 'Orangtua', '2020-02-18', 5, '2025-07-03 11:33:40', '2025-07-03 11:33:40');
INSERT INTO `alternatifs` VALUES (44, 'Nilai Rata Rata', 'Laki-laki', 'Orangtua', '2020-07-03', 5, '2025-07-03 11:42:05', '2025-07-03 11:42:05');
INSERT INTO `alternatifs` VALUES (45, 'Nilai Rata Rata', 'Laki-laki', 'Orangtua', '2020-06-07', 5, '2025-07-03 11:46:12', '2025-07-03 11:46:12');
INSERT INTO `alternatifs` VALUES (46, 'Siswa', 'Laki-laki', 'Orangtua', '2020-07-17', 4, '2025-07-03 11:54:48', '2025-07-03 11:54:48');
INSERT INTO `alternatifs` VALUES (47, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2020-07-03', 5, '2025-07-03 12:01:41', '2025-07-03 12:01:41');
INSERT INTO `alternatifs` VALUES (48, 'Siswa', 'Laki-laki', 'Orangtua', '2021-07-03', 4, '2025-07-03 12:13:41', '2025-07-03 12:13:41');
INSERT INTO `alternatifs` VALUES (49, 'Ahmad robbiul iman', 'Laki-laki', 'Orangtua', '2019-04-17', 6, '2025-07-03 12:14:58', '2025-07-03 12:14:58');
INSERT INTO `alternatifs` VALUES (50, 'jhon legen', 'Laki-laki', 'Orangtua', '2023-04-15', 2, '2025-07-03 12:23:19', '2025-07-03 12:23:19');
INSERT INTO `alternatifs` VALUES (51, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2024-06-14', 1, '2025-07-03 12:26:16', '2025-07-03 12:26:16');
INSERT INTO `alternatifs` VALUES (52, 'Khairin', 'Laki-laki', 'Orangtua', '2024-09-17', 0, '2025-07-03 12:26:53', '2025-07-03 12:26:53');
INSERT INTO `alternatifs` VALUES (53, 'Ahmad robbiul iman', 'Laki-laki', 'Orangtua', '2024-07-03', 1, '2025-07-03 12:32:58', '2025-07-03 12:32:58');
INSERT INTO `alternatifs` VALUES (54, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2022-05-17', 3, '2025-07-03 12:33:40', '2025-07-03 12:33:40');
INSERT INTO `alternatifs` VALUES (55, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2019-02-14', 6, '2025-07-03 12:34:12', '2025-07-03 12:34:12');
INSERT INTO `alternatifs` VALUES (56, 'Siswa', 'Laki-laki', 'Orangtua', '2018-02-19', 7, '2025-07-03 12:34:44', '2025-07-03 12:34:44');
INSERT INTO `alternatifs` VALUES (57, 'Nilai Rata Rata', 'Laki-laki', 'Orangtua', '2021-07-03', 4, '2025-07-03 12:35:29', '2025-07-03 12:35:29');
INSERT INTO `alternatifs` VALUES (58, 'Diaz', 'Laki-laki', 'Orangtua', '2021-01-02', 4, '2025-07-03 12:43:26', '2025-07-03 12:43:26');
INSERT INTO `alternatifs` VALUES (59, 'Ican', 'Laki-laki', 'Orangtua', '2015-07-03', 10, '2025-07-03 12:45:41', '2025-07-03 12:45:41');
INSERT INTO `alternatifs` VALUES (60, 'Adit', 'Laki-laki', 'Orangtua', '2015-07-03', 10, '2025-07-03 12:52:19', '2025-07-03 12:52:19');
INSERT INTO `alternatifs` VALUES (61, 'Skenario', 'Laki-laki', 'Orangtua', '2015-02-03', 10, '2025-07-03 12:54:08', '2025-07-03 12:54:08');
INSERT INTO `alternatifs` VALUES (62, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2020-07-03', 5, '2025-07-03 13:03:44', '2025-07-03 13:03:44');
INSERT INTO `alternatifs` VALUES (63, 'Ivani', 'Perempuan', 'Orangtua', '2022-07-05', 3, '2025-07-05 13:55:00', '2025-07-05 13:55:00');
INSERT INTO `alternatifs` VALUES (64, 'Ivani', 'Perempuan', 'Orangtua', '2022-07-05', 3, '2025-07-05 13:55:28', '2025-07-05 13:55:28');
INSERT INTO `alternatifs` VALUES (65, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 13:56:07', '2025-07-05 13:56:07');
INSERT INTO `alternatifs` VALUES (66, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 13:56:21', '2025-07-05 13:56:21');
INSERT INTO `alternatifs` VALUES (67, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 13:58:11', '2025-07-05 13:58:11');
INSERT INTO `alternatifs` VALUES (68, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 13:58:34', '2025-07-05 13:58:34');
INSERT INTO `alternatifs` VALUES (69, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 13:59:07', '2025-07-05 13:59:07');
INSERT INTO `alternatifs` VALUES (70, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 13:59:22', '2025-07-05 13:59:22');
INSERT INTO `alternatifs` VALUES (71, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:00:19', '2025-07-05 14:00:19');
INSERT INTO `alternatifs` VALUES (72, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:00:49', '2025-07-05 14:00:49');
INSERT INTO `alternatifs` VALUES (73, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:01:28', '2025-07-05 14:01:28');
INSERT INTO `alternatifs` VALUES (74, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:01:35', '2025-07-05 14:01:35');
INSERT INTO `alternatifs` VALUES (75, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:03:34', '2025-07-05 14:03:34');
INSERT INTO `alternatifs` VALUES (76, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:06:52', '2025-07-05 14:06:52');
INSERT INTO `alternatifs` VALUES (77, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:08:04', '2025-07-05 14:08:04');
INSERT INTO `alternatifs` VALUES (78, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:10:29', '2025-07-05 14:10:29');
INSERT INTO `alternatifs` VALUES (79, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:10:59', '2025-07-05 14:10:59');
INSERT INTO `alternatifs` VALUES (80, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:12:07', '2025-07-05 14:12:07');
INSERT INTO `alternatifs` VALUES (81, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:13:28', '2025-07-05 14:13:28');
INSERT INTO `alternatifs` VALUES (82, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:13:46', '2025-07-05 14:13:46');
INSERT INTO `alternatifs` VALUES (83, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:14:34', '2025-07-05 14:14:34');
INSERT INTO `alternatifs` VALUES (84, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:14:46', '2025-07-05 14:14:46');
INSERT INTO `alternatifs` VALUES (85, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:15:36', '2025-07-05 14:15:36');
INSERT INTO `alternatifs` VALUES (86, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:16:44', '2025-07-05 14:16:44');
INSERT INTO `alternatifs` VALUES (87, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:17:30', '2025-07-05 14:17:30');
INSERT INTO `alternatifs` VALUES (88, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:17:42', '2025-07-05 14:17:42');
INSERT INTO `alternatifs` VALUES (89, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:25:07', '2025-07-05 14:25:07');
INSERT INTO `alternatifs` VALUES (90, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:26:59', '2025-07-05 14:26:59');
INSERT INTO `alternatifs` VALUES (91, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:27:07', '2025-07-05 14:27:07');
INSERT INTO `alternatifs` VALUES (92, 'Siswa', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 14:27:17', '2025-07-05 14:27:17');
INSERT INTO `alternatifs` VALUES (93, 'Siswa', 'Laki-laki', 'Orangtua', '2021-07-05', 4, '2025-07-05 14:35:02', '2025-07-05 14:35:02');
INSERT INTO `alternatifs` VALUES (94, 'Siswa', 'Laki-laki', 'Orangtua', '2021-07-05', 4, '2025-07-05 14:35:24', '2025-07-05 14:35:24');
INSERT INTO `alternatifs` VALUES (95, 'Siswa', 'Laki-laki', 'Orangtua', '2021-07-05', 4, '2025-07-05 14:35:59', '2025-07-05 14:35:59');
INSERT INTO `alternatifs` VALUES (96, 'Ahmad robbiul imana', 'Laki-laki', 'Orangtua', '2015-07-05', 10, '2025-07-05 15:29:20', '2025-07-05 15:29:20');

-- ----------------------------
-- Table structure for artikels
-- ----------------------------
DROP TABLE IF EXISTS `artikels`;
CREATE TABLE `artikels`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `url_gambar` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kode_depresi` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artikels
-- ----------------------------
INSERT INTO `artikels` VALUES (5, NULL, 'D001', 'Mengatasi Gejala Emosional pada Anak', 'Gejala emosional dapat diatasi dengan pendekatan empati, komunikasi terbuka, dan dukungan keluarga.', '2025-06-30 11:30:41', '2025-06-30 11:30:41');
INSERT INTO `artikels` VALUES (6, NULL, 'D002', 'Solusi Masalah Perilaku Remaja', 'Perilaku menyimpang remaja bisa diarahkan melalui konseling rutin dan lingkungan sosial yang sehat.', '2025-06-30 11:30:41', '2025-06-30 11:30:41');
INSERT INTO `artikels` VALUES (7, NULL, 'D003', 'Strategi Mengelola Hiperaktivitas', 'Terapi perilaku dan pelatihan keterampilan fokus bisa membantu anak dengan hiperaktivitas.', '2025-06-30 11:30:41', '2025-06-30 11:30:41');
INSERT INTO `artikels` VALUES (8, NULL, 'D004', 'Membangun Hubungan Sosial yang Sehat', 'Kembangkan keterampilan sosial anak melalui aktivitas kelompok dan role playing.', '2025-06-30 11:30:41', '2025-06-30 11:30:41');
INSERT INTO `artikels` VALUES (9, NULL, 'D005', 'Menumbuhkan Sikap Prososial pada Anak', 'Sikap prososial seperti tolong-menolong dapat ditumbuhkan sejak dini melalui contoh nyata dan reward positif.', '2025-06-30 11:30:41', '2025-06-30 11:30:41');
INSERT INTO `artikels` VALUES (10, 'img/gangguan_mood.jpg', 'P001', 'Gangguan Mood', 'Gangguan mood adalah kondisi kesehatan mental yang menyebabkan perubahan suasana hati ekstrem...', '2025-06-30 12:26:35', '2025-06-30 12:26:35');
INSERT INTO `artikels` VALUES (11, 'img/depresi_ringan.jpg', 'P002', 'Depresi Ringan', 'Depresi ringan adalah bentuk depresi yang ditandai dengan kesedihan atau kehilangan minat...', '2025-06-30 12:26:35', '2025-06-30 12:26:35');
INSERT INTO `artikels` VALUES (12, 'img/depresi_sedang.jpg', 'P003', 'Depresi Sedang', 'Depresi sedang memiliki gejala yang lebih jelas dan berlangsung lebih lama...', '2025-06-30 12:26:35', '2025-06-30 12:26:35');
INSERT INTO `artikels` VALUES (13, 'img/depresi_berat.jpg', 'P004', 'Depresi Berat', 'Depresi berat adalah kondisi serius yang mempengaruhi pikiran, perasaan, dan perilaku...', '2025-06-30 12:26:35', '2025-06-30 12:26:35');

-- ----------------------------
-- Table structure for diagnosas
-- ----------------------------
DROP TABLE IF EXISTS `diagnosas`;
CREATE TABLE `diagnosas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `diagnosa_id` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternatif_id` bigint UNSIGNED NOT NULL,
  `usia` int NULL DEFAULT NULL,
  `data_diagnosa` json NOT NULL,
  `total_score` json NULL,
  `klasifikasi` json NULL,
  `kondisi` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diagnosas
-- ----------------------------
INSERT INTO `diagnosas` VALUES (49, '68660eb5a3839', 47, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"0.5\"], [\"G002\", \"1\"], [\"G003\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-03 12:01:41', '2025-07-03 12:01:41');
INSERT INTO `diagnosas` VALUES (50, '68661185c1faf', 48, 4, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"1\"], [\"G002\", \"1\"], [\"G003\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-03 12:13:41', '2025-07-03 12:13:41');
INSERT INTO `diagnosas` VALUES (51, '686611d2981a5', 49, 6, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"0\"], [\"G002\", \"0\"], [\"G003\", \"0.5\"], [\"G004\", \"0\"], [\"G005\", \"0.5\"]]', '2025-07-03 12:14:58', '2025-07-03 12:14:58');
INSERT INTO `diagnosas` VALUES (52, '686613c75f22d', 50, 2, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"0\"], [\"G002\", \"0\"], [\"G003\", \"0\"], [\"G004\", \"0\"], [\"G005\", \"0\"]]', '2025-07-03 12:23:19', '2025-07-03 12:23:19');
INSERT INTO `diagnosas` VALUES (53, '68661478dceac', 51, 1, '[{\"nilai_cf\": 77.32, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 36, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 30, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 40, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"0.5\"], [\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"0.5\"]]', '2025-07-03 12:26:16', '2025-07-03 12:26:16');
INSERT INTO `diagnosas` VALUES (54, '6866149dc5139', 52, 0, '[]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[]', '2025-07-03 12:26:53', '2025-07-03 12:26:53');
INSERT INTO `diagnosas` VALUES (55, '6866160a1f7a0', 53, 1, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 36, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 30, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 40, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 1, \"masalah_teman\": 0, \"hiperaktivitas\": 0, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"0.5\"], [\"G002\", \"0.5\"], [\"G003\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-03 12:32:58', '2025-07-03 12:32:58');
INSERT INTO `diagnosas` VALUES (56, '68661634cba01', 54, 3, '[]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 0, \"masalah_prilaku\": 0, \"gejala_emosional\": 0}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[]', '2025-07-03 12:33:40', '2025-07-03 12:33:40');
INSERT INTO `diagnosas` VALUES (57, '68661654c2807', 55, 6, '[{\"nilai_cf\": 80.56, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 52, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 1, \"masalah_teman\": 0, \"hiperaktivitas\": 0, \"masalah_prilaku\": 0, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"1\"], [\"G002\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-03 12:34:12', '2025-07-03 12:34:12');
INSERT INTO `diagnosas` VALUES (58, '68661674bc658', 56, 7, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 2, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"1\"], [\"G002\", \"1\"], [\"G003\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-03 12:34:44', '2025-07-03 12:34:44');
INSERT INTO `diagnosas` VALUES (59, '686616a138bf4', 57, 4, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 2, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"1\"], [\"G002\", \"1\"], [\"G003\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-03 12:35:29', '2025-07-03 12:35:29');
INSERT INTO `diagnosas` VALUES (60, '6866187e50ea8', 58, 4, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 20, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 30, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 40, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 1, \"masalah_teman\": 0, \"hiperaktivitas\": 0, \"masalah_prilaku\": 0, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"0.5\"], [\"G003\", \"1\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-03 12:43:26', '2025-07-03 12:43:26');
INSERT INTO `diagnosas` VALUES (61, '6866190571d46', 59, 10, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 2, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"1\"], [\"G002\", \"1\"], [\"G003\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-03 12:45:41', '2025-07-03 12:45:41');
INSERT INTO `diagnosas` VALUES (62, '68661a930fca2', 60, 10, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 2, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"1\"], [\"G002\", \"1\"], [\"G003\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-03 12:52:19', '2025-07-03 12:52:19');
INSERT INTO `diagnosas` VALUES (63, '68661b0090577', 61, 10, '[{\"nilai_cf\": 74.4, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 40, \"kode_depresi\": \"P002\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-03 12:54:08', '2025-07-03 12:54:08');
INSERT INTO `diagnosas` VALUES (64, '68661d404b181', 62, 5, '[{\"nilai_cf\": 60, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 20, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 30, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 40, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 0, \"masalah_prilaku\": 0, \"gejala_emosional\": 0}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"0.5\"], [\"G003\", \"0.5\"]]', '2025-07-03 13:03:44', '2025-07-03 13:03:44');
INSERT INTO `diagnosas` VALUES (65, '6868cc6023397', 64, 3, '[]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 0, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-05 13:55:28', '2025-07-05 13:55:28');
INSERT INTO `diagnosas` VALUES (66, '6868cc875e685', 65, 10, '[]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 13:56:07', '2025-07-05 13:56:07');
INSERT INTO `diagnosas` VALUES (67, '6868cdc8509b3', 73, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:01:28', '2025-07-05 14:01:28');
INSERT INTO `diagnosas` VALUES (68, '6868cdcfb1346', 74, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:01:35', '2025-07-05 14:01:35');
INSERT INTO `diagnosas` VALUES (69, '6868ce466a1d1', 75, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:03:34', '2025-07-05 14:03:34');
INSERT INTO `diagnosas` VALUES (70, '6868cf0cb2304', 76, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:06:52', '2025-07-05 14:06:52');
INSERT INTO `diagnosas` VALUES (71, '6868cf5499a70', 77, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:08:04', '2025-07-05 14:08:04');
INSERT INTO `diagnosas` VALUES (72, '6868cfe5782a7', 78, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:10:29', '2025-07-05 14:10:29');
INSERT INTO `diagnosas` VALUES (73, '6868d0032378a', 79, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:10:59', '2025-07-05 14:10:59');
INSERT INTO `diagnosas` VALUES (74, '6868d0475f7f8', 80, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:12:07', '2025-07-05 14:12:07');
INSERT INTO `diagnosas` VALUES (75, '6868d0aa38b47', 82, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:13:46', '2025-07-05 14:13:46');
INSERT INTO `diagnosas` VALUES (76, '6868d0dacded5', 83, 10, '[]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:14:34', '2025-07-05 14:14:34');
INSERT INTO `diagnosas` VALUES (77, '6868d0e61bd8a', 84, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": null}, {\"nilai_cf\": 40, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:14:46', '2025-07-05 14:14:46');
INSERT INTO `diagnosas` VALUES (78, '6868d11897ab6', 85, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": {\"value\": \"0.744\", \"kode_kriteria\": null}}, {\"nilai_cf\": 40, \"kode_kriteria\": {\"value\": \"0.4\", \"kode_kriteria\": null}}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:15:36', '2025-07-05 14:15:36');
INSERT INTO `diagnosas` VALUES (79, '6868d15d0a1c9', 86, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": \"P001\"}, {\"nilai_cf\": 40, \"kode_kriteria\": \"P002\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:16:45', '2025-07-05 14:16:45');
INSERT INTO `diagnosas` VALUES (80, '6868d18a1c1fa', 87, 10, '[{\"nilai_cf\": 74.4, \"kode_kriteria\": \"P001\"}, {\"nilai_cf\": 40, \"kode_kriteria\": \"P002\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:17:30', '2025-07-05 14:17:30');
INSERT INTO `diagnosas` VALUES (81, '6868d196895e8', 88, 10, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"0.5\"], [\"G002\", \"1\"], [\"G003\", \"0.5\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:17:42', '2025-07-05 14:17:42');
INSERT INTO `diagnosas` VALUES (82, '6868d353dd5c7', 89, 10, '[{\"nilai_cf\": 89.76, \"kode_kriteria\": \"P001\"}, {\"nilai_cf\": 52, \"kode_kriteria\": \"P002\"}, {\"nilai_cf\": 30, \"kode_kriteria\": \"P003\"}, {\"nilai_cf\": 40, \"kode_kriteria\": \"P004\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"0.5\"], [\"G002\", \"1\"], [\"G003\", \"0.5\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:25:07', '2025-07-05 14:25:07');
INSERT INTO `diagnosas` VALUES (83, '6868d3c3b5d36', 90, 10, '[{\"nilai_cf\": 79.84, \"kode_kriteria\": \"P001\"}, {\"nilai_cf\": 52, \"kode_kriteria\": \"P002\"}, {\"nilai_cf\": 30, \"kode_kriteria\": \"P003\"}, {\"nilai_cf\": 40, \"kode_kriteria\": \"P004\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 0, \"gejala_emosional\": 0}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"0.5\"], [\"G002\", \"1\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"0.5\"]]', '2025-07-05 14:26:59', '2025-07-05 14:26:59');
INSERT INTO `diagnosas` VALUES (84, '6868d3cc081bc', 91, 10, '[{\"nilai_cf\": 79.84, \"kode_kriteria\": \"P001\"}, {\"nilai_cf\": 52, \"kode_kriteria\": \"P002\"}, {\"nilai_cf\": 30, \"kode_kriteria\": \"P003\"}, {\"nilai_cf\": 40, \"kode_kriteria\": \"P004\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 0, \"gejala_emosional\": 0}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"0.5\"], [\"G002\", \"1\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"0.5\"]]', '2025-07-05 14:27:08', '2025-07-05 14:27:08');
INSERT INTO `diagnosas` VALUES (85, '6868d3d5b99f6', 92, 10, '[{\"nilai_cf\": 100, \"kode_kriteria\": \"P001\"}, {\"nilai_cf\": 64, \"kode_kriteria\": \"P002\"}, {\"nilai_cf\": 60, \"kode_kriteria\": \"P003\"}, {\"nilai_cf\": 80, \"kode_kriteria\": \"P004\"}]', '{\"prososial\": 2, \"masalah_teman\": 0, \"hiperaktivitas\": 1, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"1\"], [\"G002\", \"1\"], [\"G003\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:27:17', '2025-07-05 14:27:17');
INSERT INTO `diagnosas` VALUES (86, '6868d5bc6c4f8', 94, 4, '[{\"nilai_cf\": 85.6, \"kode_kriteria\": null}, {\"nilai_cf\": 20, \"kode_kriteria\": null}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 0, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:35:24', '2025-07-05 14:35:24');
INSERT INTO `diagnosas` VALUES (87, '6868d5df7bcce', 95, 4, '[{\"nilai_cf\": 85.6, \"kode_kriteria\": \"P001\"}, {\"nilai_cf\": 20, \"kode_kriteria\": \"P002\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 0, \"masalah_prilaku\": 1, \"gejala_emosional\": 1}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-05 14:35:59', '2025-07-05 14:35:59');
INSERT INTO `diagnosas` VALUES (88, '6868e2606f2ec', 96, 10, '[{\"nilai_cf\": 86.88, \"kode_kriteria\": \"K001\"}, {\"nilai_cf\": 80.88, \"kode_kriteria\": \"K002\"}, {\"nilai_cf\": 89.59, \"kode_kriteria\": \"K003\"}, {\"nilai_cf\": 70.74, \"kode_kriteria\": \"K004\"}, {\"nilai_cf\": 54.48, \"kode_kriteria\": \"K005\"}]', '{\"prososial\": 0, \"masalah_teman\": 0, \"hiperaktivitas\": 0, \"masalah_prilaku\": 0, \"gejala_emosional\": 0}', '{\"total\": \"Normal\", \"prososial\": \"Abnormal\", \"masalah_teman\": \"Normal\", \"hiperaktivitas\": \"Normal\", \"masalah_prilaku\": \"Normal\", \"gejala_emosional\": \"Normal\"}', '[[\"G001\", \"0.5\"], [\"G002\", \"1\"], [\"G003\", \"1\"], [\"G004\", \"0.5\"], [\"G005\", \"0.5\"], [\"G006\", \"0.5\"], [\"G007\", \"1\"], [\"G008\", \"1\"], [\"G009\", \"1\"], [\"G010\", \"1\"], [\"G011\", \"0.5\"], [\"G012\", \"0.5\"], [\"G013\", \"0.5\"], [\"G014\", \"0.5\"], [\"G015\", \"1\"], [\"G018\", \"0.5\"], [\"G019\", \"0.5\"], [\"G020\", \"0.5\"], [\"G021\", \"0.5\"], [\"G022\", \"1\"], [\"G023\", \"1\"], [\"G024\", \"1\"], [\"G025\", \"1\"]]', '2025-07-05 15:29:20', '2025-07-05 15:29:20');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for gejala
-- ----------------------------
DROP TABLE IF EXISTS `gejala`;
CREATE TABLE `gejala`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_gejala` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejala` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rentang_usia` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_depresi` bigint UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_sdq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gejala
-- ----------------------------
INSERT INTO `gejala` VALUES (57, 'G001', 'Saya berusaha baik kepada orang lain. Saya peduli dengan perasaan mereka', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (58, 'G002', 'Saya gelisah. Saya tidak dapat diam untuk waktu lama', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (59, 'G003', 'Saya sering sakit kepala,sakit perut atau macam-macam sakit lainnya', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (60, 'G004', 'Kalau saya memiliki mainan, CD, atau makanan, saya biasannya berbagi dengan orang lain', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (61, 'G005', 'Saya menjadi sangat marah dan sering tidak dapat mengendalikan kemarahan saya', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (62, 'G006', 'Saya lebih suka sendiri daripada bersama dengan orang lain seusiaku', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (63, 'G007', 'Saya biasanya melakukan apa yang diperintahkan oleh orang lain', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (64, 'G008', 'Saya banyak merasa cemas atau khawatir terhadap apapun', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (65, 'G009', 'Saya selalu siap menolong jika seseorang terluka, kecewa atau merasa sakit', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (66, 'G010', 'Bila sedang gelisah atau cemas badan saya sering bergerak-gerak tanpa saya sadari', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (67, 'G011', 'Saya mempunyai satu orang teman baik atau lebih', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (68, 'G012', 'Saya sering bertengkar dengan orang lain. Saya dapat memaksa orang lain melakukan apa yang saya inginkan', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (69, 'G013', 'Saya sering merasa tidak bahagia, sedih atau menangis', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (70, 'G014', 'Orang lain seusia saya umumnya menyukai saya', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (71, 'G015', 'Perhatian saya mudah teralih, saya sulit untuk memusatkan perhatian pada apapun', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (72, 'G016', 'Saya merasa gugup dalam situasi baru, saya mudah kehilangan rasa percaya diri', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (73, 'G017', 'Saya bersikap baik terhadap anak-anak yang lebih muda dari saya', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (74, 'G018', 'Saya sering dituduh berbohong atau berbuat curang', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (75, 'G019', 'Saya sering diganggu atau dipermainkan oleh anak-anak atau remaja lainnya', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (76, 'G020', 'Saya sering menawarkan diri untuk membantu orang lain (orang tua, guru, anak-anak)', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (77, 'G021', 'Saya berpikir terlebih dahulu akibat yang akan terjadi, sebelum berbuat atau melakukan seuatu', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (78, 'G022', 'Saya mengambil barang yang bukan milik saya dari rumah, sekolah atau dari mana saja', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (79, 'G023', 'Saya lebih mudah berteman dengan orang dewasa daripada dengan orang orang seusia saya', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (80, 'G024', 'Banyak yang ditakuti, saya mudah menjadi takut', '4-10', NULL, NULL, NULL, NULL);
INSERT INTO `gejala` VALUES (81, 'G025', 'Saya menyelesaikan pekerjaan yang sedang saya lakukan. Saya mempunyai perhatian yang baik terhadap apapun', '4-10', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for keputusan
-- ----------------------------
DROP TABLE IF EXISTS `keputusan`;
CREATE TABLE `keputusan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_gejala` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kriteria` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mb` double(8, 2) NOT NULL,
  `md` double(8, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keputusan
-- ----------------------------
INSERT INTO `keputusan` VALUES (45, 'G001', 'K005', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (46, 'G002', 'K003', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (47, 'G003', 'K001', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (48, 'G004', 'K005', 0.50, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (49, 'G005', 'K002', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (50, 'G006', 'K004', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (51, 'G007', 'K002', 0.50, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (52, 'G008', 'K001', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (53, 'G009', 'K005', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (54, 'G010', 'K003', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (55, 'G011', 'K004', 0.50, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (56, 'G012', 'K002', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (57, 'G013', 'K001', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (58, 'G014', 'K004', 0.50, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (59, 'G015', 'K003', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (60, 'G016', 'K001', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (61, 'G017', 'K005', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (62, 'G018', 'K002', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (63, 'G019', 'K004', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (64, 'G020', 'K005', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (65, 'G021', 'K003', 0.60, 0.30, NULL, NULL);
INSERT INTO `keputusan` VALUES (66, 'G022', 'K002', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (67, 'G023', 'K004', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (68, 'G024', 'K001', 0.70, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (69, 'G025', 'K003', 0.60, 0.30, NULL, NULL);

-- ----------------------------
-- Table structure for kondisi_users
-- ----------------------------
DROP TABLE IF EXISTS `kondisi_users`;
CREATE TABLE `kondisi_users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kondisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` double(8, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kondisi_users
-- ----------------------------
INSERT INTO `kondisi_users` VALUES (1, 'Tidak Pernah', 0.00, NULL, NULL);
INSERT INTO `kondisi_users` VALUES (2, 'Kadang-kadang', 0.50, NULL, NULL);
INSERT INTO `kondisi_users` VALUES (3, 'Sering', 1.00, NULL, NULL);

-- ----------------------------
-- Table structure for kriteria
-- ----------------------------
DROP TABLE IF EXISTS `kriteria`;
CREATE TABLE `kriteria`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_kriteria` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kriteria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kriteria
-- ----------------------------
INSERT INTO `kriteria` VALUES (6, 'K001', 'Gejala Emosional', '2025-06-30 09:34:04', '2025-07-05 13:42:33');
INSERT INTO `kriteria` VALUES (7, 'K002', 'Masalah Perilaku', '2025-06-30 09:34:17', '2025-06-30 09:34:17');
INSERT INTO `kriteria` VALUES (8, 'K003', 'Hiperaktivitas', '2025-06-30 09:34:27', '2025-06-30 09:34:27');
INSERT INTO `kriteria` VALUES (9, 'K004', 'Masalah Teman', '2025-06-30 09:34:37', '2025-06-30 09:34:37');
INSERT INTO `kriteria` VALUES (10, 'K005', 'Propososial', '2025-06-30 09:34:48', '2025-06-30 09:34:48');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_12_19_072517_create_gejalas_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_12_20_020104_create_keputusans_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_12_20_023708_create_kondisi_users_table', 1);
INSERT INTO `migrations` VALUES (8, '2022_12_21_202642_create_diagnosas_table', 1);
INSERT INTO `migrations` VALUES (9, '2022_12_22_143013_create_tingkat_depresis_table', 1);
INSERT INTO `migrations` VALUES (10, '2022_12_28_103705_create_artikels_table', 1);
INSERT INTO `migrations` VALUES (11, '2025_06_24_121206_add_rentang_usia_to_gejala_table', 2);
INSERT INTO `migrations` VALUES (12, '2025_06_24_131945_create_alternatifs_table', 3);
INSERT INTO `migrations` VALUES (13, '2025_06_30_092411_alter_existing_tables_for_sdq', 4);
INSERT INTO `migrations` VALUES (14, '2025_06_30_102019_rename_kriteria_id_to_kode_depresi_on_gejala_table', 5);
INSERT INTO `migrations` VALUES (16, '2025_07_03_111229_add_responden_fields_to_diagnosas_table', 6);
INSERT INTO `migrations` VALUES (17, '2025_07_03_122925_add_kategori_sdq_to_gejala_table', 7);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'prayoga51@example.org', '2025-05-08 18:13:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k5nk0KghlU', '2025-05-08 18:13:39', '2025-05-08 18:13:39');
INSERT INTO `users` VALUES (2, 'admin', 'jpudjiastuti@example.org', '2025-05-08 18:13:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L8fjHHL1xo', '2025-05-08 18:13:39', '2025-05-08 18:13:39');
INSERT INTO `users` VALUES (3, 'admin', 'tnamaga@example.com', '2025-05-08 18:13:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '44XqFZcwFW', '2025-05-08 18:13:39', '2025-05-08 18:13:39');
INSERT INTO `users` VALUES (4, 'admin', 'admin@example.com', '2025-05-08 18:13:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r7K6fhgbZwuyDNGhPqWObMfRv0zYUXs5zj10WOXLJQeLORLmJO3DJbdVDrs0', '2025-05-08 18:13:39', '2025-05-08 18:13:39');

SET FOREIGN_KEY_CHECKS = 1;
