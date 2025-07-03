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

 Date: 03/07/2025 17:44:51
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
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diagnosas
-- ----------------------------
INSERT INTO `diagnosas` VALUES (37, '686605b284640', 0, NULL, '[]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[]', '2025-07-03 11:23:14', '2025-07-03 11:23:14');
INSERT INTO `diagnosas` VALUES (38, '686606346d345', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"1\"], [\"G002\", \"1\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"0.5\"]]', '2025-07-03 11:25:24', '2025-07-03 11:25:24');
INSERT INTO `diagnosas` VALUES (39, '686606cc0f524', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"0\"], [\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"1\"], [\"G005\", \"0.5\"]]', '2025-07-03 11:27:56', '2025-07-03 11:27:56');
INSERT INTO `diagnosas` VALUES (40, '68660779e2d69', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"1\"], [\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-03 11:30:49', '2025-07-03 11:30:49');
INSERT INTO `diagnosas` VALUES (41, '68660795a6a9c', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"1\"], [\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-03 11:31:17', '2025-07-03 11:31:17');
INSERT INTO `diagnosas` VALUES (42, '686607b534f25', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"1\"], [\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-03 11:31:49', '2025-07-03 11:31:49');
INSERT INTO `diagnosas` VALUES (43, '686607c97c328', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"1\"], [\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-03 11:32:09', '2025-07-03 11:32:09');
INSERT INTO `diagnosas` VALUES (44, '6866080c0b2ff', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"1\"], [\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-03 11:33:16', '2025-07-03 11:33:16');
INSERT INTO `diagnosas` VALUES (45, '68660824210d3', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"1\"], [\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-03 11:33:40', '2025-07-03 11:33:40');
INSERT INTO `diagnosas` VALUES (46, '68660a1dd70fd', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"1\"], [\"G002\", \"0.5\"], [\"G003\", \"0.5\"], [\"G004\", \"0.5\"], [\"G005\", \"0.5\"]]', '2025-07-03 11:42:05', '2025-07-03 11:42:05');
INSERT INTO `diagnosas` VALUES (47, '68660b14bbd4f', 0, 5, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"0\"], [\"G002\", \"0.5\"], [\"G003\", \"1\"], [\"G004\", \"0.5\"], [\"G005\", \"1\"]]', '2025-07-03 11:46:12', '2025-07-03 11:46:12');
INSERT INTO `diagnosas` VALUES (48, '68660d18bd6fc', 0, 4, '[{\"nilai_cf\": 100, \"kode_depresi\": \"P001\"}, {\"nilai_cf\": 64, \"kode_depresi\": \"P002\"}, {\"nilai_cf\": 60, \"kode_depresi\": \"P003\"}, {\"nilai_cf\": 80, \"kode_depresi\": \"P004\"}]', '{\"prososial\": 6, \"masalah_teman\": 3, \"hiperaktivitas\": 6, \"masalah_prilaku\": 5, \"gejala_emosional\": 4}', '{\"total\": \"Abnormal\", \"prososial\": \"Normal\", \"masalah_teman\": \"Borderline\", \"hiperaktivitas\": \"Borderline\", \"masalah_prilaku\": \"Abnormal\", \"gejala_emosional\": \"Abnormal\"}', '[[\"G001\", \"0.5\"], [\"G002\", \"0.5\"], [\"G003\", \"1\"], [\"G004\", \"1\"], [\"G005\", \"1\"]]', '2025-07-03 11:54:48', '2025-07-03 11:54:48');
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
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gejala
-- ----------------------------
INSERT INTO `gejala` VALUES (32, 'G001', 'Dapat memperdulikan perasaan orang lain', '4-10', NULL, '2025-06-30 09:31:16', '2025-06-30 09:31:16', 'prososial');
INSERT INTO `gejala` VALUES (33, 'G002', 'Gelisah, terlalu aktif, tidak dapat diam untuk waktu lama', '4-10', NULL, '2025-06-30 09:31:30', '2025-06-30 09:31:30', 'hiperaktivitas');
INSERT INTO `gejala` VALUES (34, 'G003', 'Sering membantu orang lain, baik hati dan peduli', '4-10', NULL, '2025-06-30 09:32:20', '2025-06-30 09:32:20', 'prososial');
INSERT INTO `gejala` VALUES (35, 'G004', 'Sulit memperhatikan instruksi', '4-10', NULL, '2025-06-30 09:32:36', '2025-06-30 09:32:36', 'masalah_prilaku');
INSERT INTO `gejala` VALUES (36, 'G005', 'Sering menangis atau merasa takut', '4-10', NULL, '2025-06-30 09:32:51', '2025-06-30 09:32:51', 'gejala_emosional');

-- ----------------------------
-- Table structure for keputusan
-- ----------------------------
DROP TABLE IF EXISTS `keputusan`;
CREATE TABLE `keputusan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_gejala` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_depresi` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mb` double(8, 2) NOT NULL,
  `md` double(8, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keputusan
-- ----------------------------
INSERT INTO `keputusan` VALUES (1, 'G001', 'P001', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (2, 'G002', 'P001', 0.40, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (3, 'G003', 'P001', 1.00, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (4, 'G004', 'P001', 0.40, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (5, 'G005', 'P001', 0.80, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (6, 'G007', 'P001', 0.40, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (7, 'G001', 'P002', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (8, 'G002', 'P002', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (9, 'G006', 'P002', 1.00, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (10, 'G008', 'P002', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (11, 'G010', 'P002', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (12, 'G011', 'P002', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (13, 'G014', 'P002', 0.80, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (14, 'G015', 'P002', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (15, 'G016', 'P002', 0.80, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (16, 'G022', 'P002', 0.60, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (17, 'G001', 'P003', 0.80, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (18, 'G009', 'P003', 0.80, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (19, 'G010', 'P003', 0.80, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (20, 'G011', 'P003', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (21, 'G012', 'P003', 0.80, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (22, 'G013', 'P003', 1.00, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (23, 'G016', 'P003', 1.00, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (24, 'G017', 'P003', 0.80, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (25, 'G020', 'P003', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (26, 'G022', 'P003', 1.00, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (27, 'G023', 'P003', 0.80, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (28, 'G027', 'P003', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (29, 'G001', 'P004', 0.80, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (30, 'G009', 'P004', 1.00, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (31, 'G010', 'P004', 0.80, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (32, 'G012', 'P004', 1.00, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (33, 'G013', 'P004', 0.20, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (34, 'G016', 'P004', 1.00, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (35, 'G018', 'P004', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (36, 'G019', 'P004', 0.80, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (37, 'G020', 'P004', 0.80, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (38, 'G021', 'P004', 0.40, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (39, 'G024', 'P004', 0.60, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (40, 'G025', 'P004', 0.80, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (41, 'G026', 'P004', 0.40, 0.20, NULL, NULL);
INSERT INTO `keputusan` VALUES (42, 'G027', 'P004', 0.60, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (43, 'G028', 'P004', 1.00, 0.00, NULL, NULL);
INSERT INTO `keputusan` VALUES (44, 'G029', 'P004', 0.80, 0.00, NULL, NULL);

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
-- Table structure for tingkat_depresi
-- ----------------------------
DROP TABLE IF EXISTS `tingkat_depresi`;
CREATE TABLE `tingkat_depresi`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_depresi` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `depresi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tingkat_depresi
-- ----------------------------
INSERT INTO `tingkat_depresi` VALUES (6, 'P001', 'Gejala Emosional', '2025-06-30 09:34:04', '2025-06-30 09:34:04');
INSERT INTO `tingkat_depresi` VALUES (7, 'P002', 'Masalah Perilaku', '2025-06-30 09:34:17', '2025-06-30 09:34:17');
INSERT INTO `tingkat_depresi` VALUES (8, 'P003', 'Hiperaktivitas', '2025-06-30 09:34:27', '2025-06-30 09:34:27');
INSERT INTO `tingkat_depresi` VALUES (9, 'P004', 'Masalah Teman Sebaya', '2025-06-30 09:34:37', '2025-06-30 09:34:37');
INSERT INTO `tingkat_depresi` VALUES (10, 'P005', 'Propososial', '2025-06-30 09:34:48', '2025-06-30 09:34:48');

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
INSERT INTO `users` VALUES (4, 'admin', 'admin@example.com', '2025-05-08 18:13:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LejrROnSntj90nja4UZCsOAGJ3eZ7OzKCPINP2oCfjqkRQlH280atNkQkZmR', '2025-05-08 18:13:39', '2025-05-08 18:13:39');

SET FOREIGN_KEY_CHECKS = 1;
