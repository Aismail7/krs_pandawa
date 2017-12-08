/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : laravel_krs

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-12-08 21:41:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2016_09_05_042427_buat_table_dosen', '1');
INSERT INTO `migrations` VALUES ('2016_09_05_082747_buat_tabel_mhs', '1');
INSERT INTO `migrations` VALUES ('2016_09_06_130023_buat_tabel_mk', '1');
INSERT INTO `migrations` VALUES ('2016_09_09_030257_buat_tabel_ruang', '1');
INSERT INTO `migrations` VALUES ('2016_09_09_034324_buat_tabel_jadwal', '1');
INSERT INTO `migrations` VALUES ('2016_09_11_033152_buat_tabel_thnajaran', '1');
INSERT INTO `migrations` VALUES ('2016_09_13_054409_buat_tabel_krs', '1');
INSERT INTO `migrations` VALUES ('2016_09_13_073007_buat_table_krs_detil', '1');
INSERT INTO `migrations` VALUES ('2016_09_13_073547_buat_tabel_nilai', '1');
INSERT INTO `migrations` VALUES ('2016_09_15_025204_buat_tabel_bobot', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_bobot`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bobot`;
CREATE TABLE `tbl_bobot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bobot` double(8,2) NOT NULL,
  `nilai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_bobot
-- ----------------------------
INSERT INTO `tbl_bobot` VALUES ('1', '4.00', 'A', '2017-09-06 15:33:01', '2017-09-06 15:33:01');
INSERT INTO `tbl_bobot` VALUES ('2', '3.00', 'B', '2017-09-06 15:33:01', '2017-09-06 15:33:01');
INSERT INTO `tbl_bobot` VALUES ('3', '2.00', 'C', '2017-09-06 15:33:01', '2017-09-06 15:33:01');
INSERT INTO `tbl_bobot` VALUES ('4', '1.00', 'D', '2017-09-06 15:33:01', '2017-09-06 15:33:01');
INSERT INTO `tbl_bobot` VALUES ('5', '0.00', 'E', '2017-09-06 15:33:01', '2017-09-06 15:33:01');

-- ----------------------------
-- Table structure for `tbl_dosen`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dosen`;
CREATE TABLE `tbl_dosen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_dosen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nidn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_dosen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_dosen
-- ----------------------------
INSERT INTO `tbl_dosen` VALUES ('1', 'D190', '49591', 'Freddie Runolfsson', '2', '2017-09-20 15:23:36', '2017-09-06 15:33:02', '2017-09-20 15:23:36');
INSERT INTO `tbl_dosen` VALUES ('2', 'D601', '16168', 'Halie Kovacek', '4', '2017-09-20 15:23:41', '2017-09-06 15:33:02', '2017-09-20 15:23:41');
INSERT INTO `tbl_dosen` VALUES ('3', 'D884', '27856', 'Amely Mertz', '6', '2017-11-24 12:57:08', '2017-09-06 15:33:03', '2017-11-24 12:57:08');
INSERT INTO `tbl_dosen` VALUES ('4', 'D401', '99977', 'Henriette Douglas IV', '8', '2017-11-24 12:57:10', '2017-09-06 15:33:04', '2017-11-24 12:57:10');
INSERT INTO `tbl_dosen` VALUES ('5', 'D847', '36154', 'Dudley Jacobi', '10', '2017-11-24 12:57:12', '2017-09-06 15:33:05', '2017-11-24 12:57:12');
INSERT INTO `tbl_dosen` VALUES ('6', 'D68', '35707', 'Mr. Freddy Hartmann Jr.', '12', '2017-11-24 12:57:13', '2017-09-06 15:33:06', '2017-11-24 12:57:13');
INSERT INTO `tbl_dosen` VALUES ('7', 'D79', '76040', 'Torey Hackett', '14', '2017-11-24 12:57:14', '2017-09-06 15:33:07', '2017-11-24 12:57:14');
INSERT INTO `tbl_dosen` VALUES ('8', 'D979', '15732', 'Dr. Donnie Bechtelar DDS', '16', '2017-11-24 12:57:20', '2017-09-06 15:33:07', '2017-11-24 12:57:20');
INSERT INTO `tbl_dosen` VALUES ('9', 'D411', '6512', 'Cristina Gerhold IV', '18', '2017-11-24 12:57:23', '2017-09-06 15:33:08', '2017-11-24 12:57:23');
INSERT INTO `tbl_dosen` VALUES ('10', 'D36', '69468', 'Addison Hartmann', '20', '2017-11-24 12:57:24', '2017-09-06 15:33:08', '2017-11-24 12:57:24');
INSERT INTO `tbl_dosen` VALUES ('11', 'D231', '79439', 'Elissa Keebler II', '22', '2017-11-24 12:57:26', '2017-09-06 15:33:09', '2017-11-24 12:57:26');
INSERT INTO `tbl_dosen` VALUES ('12', 'D684', '85589', 'Germaine Lang', '24', '2017-11-24 12:57:29', '2017-09-06 15:33:10', '2017-11-24 12:57:29');
INSERT INTO `tbl_dosen` VALUES ('13', 'D292', '20237', 'Eloisa Fisher', '26', '2017-11-24 12:57:32', '2017-09-06 15:33:10', '2017-11-24 12:57:32');
INSERT INTO `tbl_dosen` VALUES ('14', 'D656', '41634', 'Ms. Raphaelle Larkin DDS', '28', '2017-11-24 12:57:33', '2017-09-06 15:33:11', '2017-11-24 12:57:33');
INSERT INTO `tbl_dosen` VALUES ('15', 'D800', '64973', 'Tanner Romaguera', '30', '2017-11-24 12:57:35', '2017-09-06 15:33:12', '2017-11-24 12:57:35');
INSERT INTO `tbl_dosen` VALUES ('16', 'D490', '3753', 'Terrance Weimann', '32', '2017-11-24 12:57:37', '2017-09-06 15:33:13', '2017-11-24 12:57:37');
INSERT INTO `tbl_dosen` VALUES ('17', 'D992', '19606', 'Miss Gia Lockman Jr.', '34', '2017-11-24 12:57:38', '2017-09-06 15:33:13', '2017-11-24 12:57:38');
INSERT INTO `tbl_dosen` VALUES ('18', 'D879', '70105', 'Luther Spinka', '36', '2017-11-24 12:57:40', '2017-09-06 15:33:14', '2017-11-24 12:57:40');
INSERT INTO `tbl_dosen` VALUES ('19', 'D151', '97835', 'Prof. Retha Boyle', '38', '2017-11-24 12:57:42', '2017-09-06 15:33:15', '2017-11-24 12:57:42');
INSERT INTO `tbl_dosen` VALUES ('20', 'D220', '32927', 'Dr. Darren Rau III', '40', '2017-09-06 15:38:15', '2017-09-06 15:33:15', '2017-09-06 15:38:15');
INSERT INTO `tbl_dosen` VALUES ('21', '22222', '22222', 'Ismail, Skom.', '47', '2017-11-24 13:02:53', '2017-11-23 16:21:38', '2017-11-24 13:02:53');
INSERT INTO `tbl_dosen` VALUES ('22', '12346', '12346', 'Hendra, S.Kom', '50', null, '2017-11-24 13:08:33', '2017-11-24 13:08:33');
INSERT INTO `tbl_dosen` VALUES ('23', '11112', '11112', 'Ismail, S.Kom', '54', null, '2017-11-24 13:36:05', '2017-11-24 13:36:05');
INSERT INTO `tbl_dosen` VALUES ('24', 'cahyo', 'cahyo', 'cahyo agus', '56', null, '2017-11-24 13:51:51', '2017-11-24 13:51:51');

-- ----------------------------
-- Table structure for `tbl_jadwal`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jadwal`;
CREATE TABLE `tbl_jadwal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mk_id` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `thnajaran_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hari` enum('Mon','Tue','Wed','Thu','Fri','Sat') COLLATE utf8_unicode_ci NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `program` enum('Sore','Pagi') COLLATE utf8_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_jadwal
-- ----------------------------
INSERT INTO `tbl_jadwal` VALUES ('1', '16', '8', '16', 'Wed', '11:26:42', '04:16:22', 'Pagi', 'U', '7', '19', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('2', '11', '17', '16', 'Wed', '12:16:49', '13:36:53', 'Sore', 'X', '80', '12', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('3', '13', '18', '16', 'Fri', '00:11:13', '23:37:00', 'Pagi', 'B', '51', '8', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('4', '1', '7', '16', 'Thu', '23:41:30', '17:56:04', 'Sore', 'V', '3', '18', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('5', '17', '19', '16', 'Thu', '00:42:01', '12:46:00', 'Sore', 'K', '18', '14', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('6', '18', '11', '16', 'Tue', '13:14:01', '02:57:18', 'Pagi', 'S', '17', '14', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('7', '7', '1', '16', 'Fri', '13:15:11', '20:50:32', 'Pagi', 'I', '14', '13', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('8', '17', '13', '16', 'Tue', '18:56:13', '20:13:22', 'Pagi', 'T', '44', '11', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('9', '18', '8', '16', 'Fri', '23:03:32', '10:49:27', 'Pagi', 'C', '50', '15', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('10', '15', '18', '16', 'Fri', '17:16:06', '14:52:22', 'Sore', 'D', '12', '18', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('11', '6', '11', '16', 'Sat', '15:37:34', '06:23:59', 'Sore', 'M', '11', '2', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('12', '3', '3', '16', 'Thu', '21:42:20', '03:06:40', 'Pagi', 'S', '69', '15', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('13', '6', '9', '16', 'Tue', '18:02:14', '02:46:01', 'Pagi', 'T', '19', '1', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('14', '19', '3', '16', 'Mon', '00:37:01', '19:58:58', 'Sore', 'P', '64', '2', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('15', '9', '14', '16', 'Wed', '11:53:17', '17:34:42', 'Pagi', 'I', '1', '7', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('16', '16', '20', '16', 'Fri', '19:17:29', '15:17:38', 'Pagi', 'G', '41', '10', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('17', '3', '5', '16', 'Wed', '10:17:10', '11:13:14', 'Pagi', 'M', '82', '14', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('18', '15', '6', '16', 'Fri', '10:06:11', '09:35:50', 'Pagi', 'E', '43', '17', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('19', '8', '4', '16', 'Wed', '15:47:09', '04:59:00', 'Pagi', 'R', '75', '12', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('20', '7', '1', '16', 'Thu', '12:37:57', '05:18:48', 'Pagi', 'P', '56', '9', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_jadwal` VALUES ('21', '13', '19', '16', 'Mon', '12:00:00', '13:00:00', 'Pagi', 'A', '50', '1', null, '2017-11-23 02:57:33', '2017-11-23 02:57:33');
INSERT INTO `tbl_jadwal` VALUES ('22', '21', '21', '21', 'Mon', '12:10:00', '13:00:00', 'Sore', 'U', '20', '22', null, '2017-11-23 16:54:48', '2017-11-23 17:03:52');
INSERT INTO `tbl_jadwal` VALUES ('23', '22', '21', '21', 'Tue', '12:00:00', '13:00:00', 'Pagi', 'X', '1', '21', null, '2017-11-23 17:36:26', '2017-11-23 17:36:26');
INSERT INTO `tbl_jadwal` VALUES ('24', '23', '22', '22', 'Mon', '12:00:00', '13:00:00', 'Sore', 'A', '1', '23', null, '2017-11-24 13:42:28', '2017-11-24 13:42:28');
INSERT INTO `tbl_jadwal` VALUES ('25', '24', '24', '22', 'Tue', '12:00:00', '13:00:00', 'Pagi', 'A', '1', '24', null, '2017-11-24 13:54:19', '2017-11-24 13:54:19');
INSERT INTO `tbl_jadwal` VALUES ('26', '25', '24', '22', 'Wed', '12:00:00', '13:00:00', 'Pagi', 'B', '1', '25', null, '2017-11-24 13:54:52', '2017-11-24 13:54:52');
INSERT INTO `tbl_jadwal` VALUES ('27', '26', '23', '22', 'Sat', '12:00:00', '13:00:00', 'Pagi', 'A dan B', '1', '23', null, '2017-11-24 13:58:04', '2017-11-24 13:58:04');
INSERT INTO `tbl_jadwal` VALUES ('28', '27', '23', '22', 'Fri', '12:00:00', '13:00:00', 'Sore', 'Lab Biologi', '1', '26', null, '2017-11-24 14:27:55', '2017-11-24 14:27:55');
INSERT INTO `tbl_jadwal` VALUES ('29', '0', '0', '', 'Mon', '00:00:00', '00:00:00', 'Sore', '', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for `tbl_krs`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_krs`;
CREATE TABLE `tbl_krs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mahasiswa_id` int(11) NOT NULL,
  `tgl_krs` date NOT NULL,
  `tgl_persetujuan` date DEFAULT NULL,
  `thnajaran_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `semester` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_krs
-- ----------------------------
INSERT INTO `tbl_krs` VALUES ('3', '25', '2017-11-24', '2017-12-02', '22', '2', '1', null, '2017-11-24 14:19:31', '2017-12-02 17:22:56');
INSERT INTO `tbl_krs` VALUES ('4', '26', '2017-12-02', '2017-12-02', '22', '2', '1', null, '2017-12-02 17:23:47', '2017-12-02 17:28:04');
INSERT INTO `tbl_krs` VALUES ('5', '27', '2017-12-02', '2017-12-02', '22', '1', '1', null, '2017-12-02 17:26:16', '2017-12-02 17:27:05');
INSERT INTO `tbl_krs` VALUES ('6', '28', '2017-12-02', '2017-12-02', '22', '1', '1', null, '2017-12-02 17:33:52', '2017-12-02 18:16:03');
INSERT INTO `tbl_krs` VALUES ('7', '29', '2017-12-02', '2017-12-02', '22', '1', '1', null, '2017-12-02 17:34:16', '2017-12-02 17:35:06');

-- ----------------------------
-- Table structure for `tbl_krs_detil`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_krs_detil`;
CREATE TABLE `tbl_krs_detil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `krs_id` int(11) NOT NULL,
  `jadwal_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_krs_detil
-- ----------------------------
INSERT INTO `tbl_krs_detil` VALUES ('6', '3', '24', null, '2017-11-24 14:39:47', '2017-11-24 14:39:47');
INSERT INTO `tbl_krs_detil` VALUES ('8', '4', '24', null, '2017-12-02 17:23:52', '2017-12-02 17:23:52');
INSERT INTO `tbl_krs_detil` VALUES ('9', '4', '28', null, '2017-12-02 17:23:52', '2017-12-02 17:23:52');
INSERT INTO `tbl_krs_detil` VALUES ('10', '5', '24', null, '2017-12-02 17:26:16', '2017-12-02 17:26:16');
INSERT INTO `tbl_krs_detil` VALUES ('11', '5', '28', null, '2017-12-02 17:26:16', '2017-12-02 17:26:16');
INSERT INTO `tbl_krs_detil` VALUES ('12', '6', '25', null, '2017-12-02 17:33:53', '2017-12-02 17:33:53');
INSERT INTO `tbl_krs_detil` VALUES ('13', '6', '26', null, '2017-12-02 17:33:53', '2017-12-02 17:33:53');
INSERT INTO `tbl_krs_detil` VALUES ('14', '6', '27', null, '2017-12-02 17:33:53', '2017-12-02 17:33:53');
INSERT INTO `tbl_krs_detil` VALUES ('15', '7', '25', null, '2017-12-02 17:34:16', '2017-12-02 17:34:16');
INSERT INTO `tbl_krs_detil` VALUES ('16', '7', '26', null, '2017-12-02 17:34:16', '2017-12-02 17:34:16');
INSERT INTO `tbl_krs_detil` VALUES ('17', '7', '27', null, '2017-12-02 17:34:17', '2017-12-02 17:34:17');

-- ----------------------------
-- Table structure for `tbl_mahasiswa`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mahasiswa`;
CREATE TABLE `tbl_mahasiswa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_mahasiswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `angkatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kelas_program` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `tempat_lahir` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hp` int(15) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_mahasiswa
-- ----------------------------
INSERT INTO `tbl_mahasiswa` VALUES ('1', '57282', 'Gloria Schimmel', '2006', 'Manajemen Informatika', 'Pagi', '1', '3', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:20', '2017-09-06 15:33:02', '2017-11-24 12:58:20');
INSERT INTO `tbl_mahasiswa` VALUES ('2', '4117', 'Adolphus Weimann', '1983', 'Teknik Informatika', 'Sore', '1', '5', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:17', '2017-09-06 15:33:03', '2017-11-24 12:58:17');
INSERT INTO `tbl_mahasiswa` VALUES ('3', '38185', 'Lesly Batz', '1987', 'Manajemen Informatika', 'Pagi', '2', '7', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:01', '2017-09-06 15:33:04', '2017-11-24 12:58:01');
INSERT INTO `tbl_mahasiswa` VALUES ('4', '71322', 'Assunta Jacobi V', '1977', 'Sistem Informasi', 'Sore', '2', '9', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:25', '2017-09-06 15:33:05', '2017-11-24 12:58:25');
INSERT INTO `tbl_mahasiswa` VALUES ('5', '321', 'Mabelle Welch', '1970', 'Teknik Informatika', 'Sore', '3', '11', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:57:59', '2017-09-06 15:33:05', '2017-11-24 12:57:59');
INSERT INTO `tbl_mahasiswa` VALUES ('6', '17762', 'Jamir Ullrich', '1980', 'Manajemen Informatika', 'Sore', '6', '13', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:57:57', '2017-09-06 15:33:06', '2017-11-24 12:57:57');
INSERT INTO `tbl_mahasiswa` VALUES ('7', '89028', 'Kaleigh Wehner', '1978', 'Teknik Informatika', 'Pagi', '6', '15', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:31', '2017-09-06 15:33:07', '2017-11-24 12:58:31');
INSERT INTO `tbl_mahasiswa` VALUES ('8', '6138', 'Mrs. Jena Jacobson V', '1988', 'Manajemen Informatika', 'Sore', '3', '17', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:22', '2017-09-06 15:33:07', '2017-11-24 12:58:22');
INSERT INTO `tbl_mahasiswa` VALUES ('9', '94633', 'Miss Ashlynn Hyatt', '1978', 'Sistem Informasi', 'Sore', '6', '19', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:34', '2017-09-06 15:33:08', '2017-11-24 12:58:34');
INSERT INTO `tbl_mahasiswa` VALUES ('10', '14777', 'Destiny Lueilwitz', '1973', 'Sistem Informasi', 'Pagi', '3', '21', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:57:53', '2017-09-06 15:33:09', '2017-11-24 12:57:53');
INSERT INTO `tbl_mahasiswa` VALUES ('11', '93508', 'Hobart Dicki', '1979', 'Teknik Informatika', 'Pagi', '6', '23', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:32', '2017-09-06 15:33:09', '2017-11-24 12:58:32');
INSERT INTO `tbl_mahasiswa` VALUES ('12', '77087', 'Candelario O\'Hara', '2008', 'Manajemen Informatika', 'Pagi', '9', '25', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:26', '2017-09-06 15:33:10', '2017-11-24 12:58:26');
INSERT INTO `tbl_mahasiswa` VALUES ('13', '64792', 'Ms. Elisa Stokes', '1997', 'Sistem Informasi', 'Pagi', '13', '27', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:24', '2017-09-06 15:33:11', '2017-11-24 12:58:24');
INSERT INTO `tbl_mahasiswa` VALUES ('14', '1110', 'sastro', '1994', 'Manajemen Informatika', 'Pagi', '11', '29', '', '', '0000-00-00', '', '', '0', '', '2017-09-17 13:54:41', '2017-09-06 15:33:12', '2017-09-17 13:54:41');
INSERT INTO `tbl_mahasiswa` VALUES ('15', '871', 'Dr. Vladimir Lind', '1972', 'Manajemen Informatika', 'Pagi', '4', '31', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:29', '2017-09-06 15:33:12', '2017-11-24 12:58:29');
INSERT INTO `tbl_mahasiswa` VALUES ('16', '82825', 'Kolby Lakin MD', '2009', 'Teknik Informatika', 'Sore', '2', '33', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:28', '2017-09-06 15:33:13', '2017-11-24 12:58:28');
INSERT INTO `tbl_mahasiswa` VALUES ('17', '56161', 'Evert Howe', '2006', 'Teknik Informatika', 'Sore', '10', '35', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:19', '2017-09-06 15:33:14', '2017-11-24 12:58:19');
INSERT INTO `tbl_mahasiswa` VALUES ('18', '97995', 'Miss Valentine Beahan DVM', '1993', 'Sistem Informasi', 'Sore', '14', '37', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:36', '2017-09-06 15:33:14', '2017-11-24 12:58:36');
INSERT INTO `tbl_mahasiswa` VALUES ('19', '16569', 'Mina Fadel I', '1994', 'Sistem Informasi', 'Pagi', '16', '39', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:57:55', '2017-09-06 15:33:15', '2017-11-24 12:57:55');
INSERT INTO `tbl_mahasiswa` VALUES ('20', '47896', 'Mrs. Freda Purdy', '2005', 'Teknik Informatika', 'Pagi', '12', '41', '', '', '0000-00-00', '', '', '0', '', '2017-11-24 12:58:38', '2017-09-06 15:33:15', '2017-11-24 12:58:38');
INSERT INTO `tbl_mahasiswa` VALUES ('21', '123456789', 'ahmad ismail', '2014', 'Sistem Informasi', 'Sore', '6', '42', '', '', '2017-09-15', 'Pria', 'Nikah', '0', '', '2017-11-24 12:57:48', '2017-09-07 16:38:37', '2017-11-24 12:57:48');
INSERT INTO `tbl_mahasiswa` VALUES ('22', '12345678', 'hendra wijaya', '2017', 'Sistem Informasi', 'Pagi', '1', '43', 'test', '', '0000-00-00', '', '', '0', '', '2017-11-21 15:36:22', '2017-09-07 17:06:35', '2017-11-21 15:36:22');
INSERT INTO `tbl_mahasiswa` VALUES ('23', '11111', 'asal', '2018', 'Sistem Informasi', 'Pagi', '1', '44', 'test', '', '0000-00-00', '', '', '0', '', '2017-09-17 13:54:45', '2017-09-07 17:23:12', '2017-09-17 13:54:45');
INSERT INTO `tbl_mahasiswa` VALUES ('24', '12345', 'agus supriyanto', '2017', 'Sistem Informasi', 'Pagi', '3', '45', 'cigamea', '', '0000-00-00', '', '', '0', '', '2017-11-21 15:36:19', '2017-09-08 15:41:22', '2017-11-21 15:36:19');
INSERT INTO `tbl_mahasiswa` VALUES ('25', '98765', 'agus', '2017', 'Sistem Informasi', 'Sore', '23', '55', '', '', '0000-00-00', '', '', '0', '', null, '2017-11-24 13:37:53', '2017-11-24 14:10:17');
INSERT INTO `tbl_mahasiswa` VALUES ('26', '111111', 'ismail ahmad', '2014', 'Sistem Informasi', 'Sore', '23', '57', '', '', '0000-00-00', '', '', '0', '', null, '2017-12-02 17:20:58', '2017-12-02 17:20:58');
INSERT INTO `tbl_mahasiswa` VALUES ('27', '222222', 'awaludin jamil', '2014', 'Sistem Informasi', 'Sore', '23', '58', '', '', '0000-00-00', '', '', '0', '', null, '2017-12-02 17:24:59', '2017-12-02 17:24:59');
INSERT INTO `tbl_mahasiswa` VALUES ('28', '333333', 'rio', '2014', 'Sistem Informasi', 'Pagi', '23', '59', '', '', '0000-00-00', '', '', '0', '', null, '2017-12-02 17:32:43', '2017-12-02 17:32:43');
INSERT INTO `tbl_mahasiswa` VALUES ('29', '444444', 'aliah', '2014', 'Sistem Informasi', 'Pagi', '23', '60', '', '', '0000-00-00', '', '', '0', '', null, '2017-12-02 17:33:28', '2017-12-02 17:33:28');
INSERT INTO `tbl_mahasiswa` VALUES ('30', '010101', 'Rio', '2017', 'Sistem Informasi', 'Sore', '23', '61', '', '', '0000-00-00', '', '', '0', '', null, '2017-12-05 00:43:45', '2017-12-05 00:44:01');

-- ----------------------------
-- Table structure for `tbl_mk`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mk`;
CREATE TABLE `tbl_mk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kd_mk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_mk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `prasyarat_mk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_mk
-- ----------------------------
INSERT INTO `tbl_mk` VALUES ('1', '91602', 'tolol', '6', '8', '', 'Sistem Informasi', '2017-11-24 12:58:47', '2017-09-06 15:33:02', '2017-11-24 12:58:47');
INSERT INTO `tbl_mk` VALUES ('2', '688782', 'Reichel-Klein', '4', '5', null, 'Teknik Informatika', '2017-11-23 17:35:03', '2017-09-06 15:33:03', '2017-11-23 17:35:03');
INSERT INTO `tbl_mk` VALUES ('3', '236554', 'Lynch PLC', '2', '1', null, 'Teknik Informatika', '2017-09-17 13:53:23', '2017-09-06 15:33:04', '2017-09-17 13:53:23');
INSERT INTO `tbl_mk` VALUES ('4', '570219', 'Jakubowski-Heller', '1', '2', null, 'Manajemen Informatika', '2017-11-23 17:34:57', '2017-09-06 15:33:05', '2017-11-23 17:34:57');
INSERT INTO `tbl_mk` VALUES ('5', '982710', 'Bins, Borer and Baumbach', '3', '5', null, 'Sistem Informasi', '2017-11-23 17:35:04', '2017-09-06 15:33:05', '2017-11-23 17:35:04');
INSERT INTO `tbl_mk` VALUES ('6', '539136', 'Stoltenberg, Rempel and Stehr', '3', '5', null, 'Teknik Informatika', '2017-11-23 17:35:06', '2017-09-06 15:33:06', '2017-11-23 17:35:06');
INSERT INTO `tbl_mk` VALUES ('7', '364904', 'Bode, Hegmann and Leuschke', '5', '7', null, 'Manajemen Informatika', '2017-11-23 17:35:14', '2017-09-06 15:33:07', '2017-11-23 17:35:14');
INSERT INTO `tbl_mk` VALUES ('8', '15272', 'Moore-Bernier', '1', '8', null, 'Manajemen Informatika', '2017-11-23 17:35:20', '2017-09-06 15:33:08', '2017-11-23 17:35:20');
INSERT INTO `tbl_mk` VALUES ('9', '932722', 'Rippin-Mayert', '6', '6', null, 'Manajemen Informatika', '2017-11-23 17:35:10', '2017-09-06 15:33:08', '2017-11-23 17:35:10');
INSERT INTO `tbl_mk` VALUES ('10', '673794', 'Schowalter Inc', '2', '5', null, 'Manajemen Informatika', '2017-11-23 17:35:07', '2017-09-06 15:33:09', '2017-11-23 17:35:07');
INSERT INTO `tbl_mk` VALUES ('11', '187451', 'Senger-Blanda', '3', '5', null, 'Manajemen Informatika', '2017-11-23 17:35:09', '2017-09-06 15:33:09', '2017-11-23 17:35:09');
INSERT INTO `tbl_mk` VALUES ('12', '270158', 'Rutherford Group', '4', '7', null, 'Teknik Informatika', '2017-11-23 17:35:15', '2017-09-06 15:33:10', '2017-11-23 17:35:15');
INSERT INTO `tbl_mk` VALUES ('13', '109232', 'Yundt, Fay and Rutherford', '2', '3', null, 'Manajemen Informatika', '2017-11-23 17:34:59', '2017-09-06 15:33:11', '2017-11-23 17:34:59');
INSERT INTO `tbl_mk` VALUES ('14', '691859', 'Schmeler Group', '6', '3', null, 'Sistem Informasi', '2017-11-23 17:35:01', '2017-09-06 15:33:12', '2017-11-23 17:35:01');
INSERT INTO `tbl_mk` VALUES ('15', '698261', 'Konopelski, Gaylord and Russel', '3', '8', null, 'Manajemen Informatika', '2017-11-23 17:35:22', '2017-09-06 15:33:12', '2017-11-23 17:35:22');
INSERT INTO `tbl_mk` VALUES ('16', '333723', 'Toy-Franecki', '6', '4', null, 'Sistem Informasi', '2017-11-23 17:35:02', '2017-09-06 15:33:13', '2017-11-23 17:35:02');
INSERT INTO `tbl_mk` VALUES ('17', '424725', 'Osinski Ltd', '2', '8', null, 'Manajemen Informatika', '2017-11-23 17:35:24', '2017-09-06 15:33:14', '2017-11-23 17:35:24');
INSERT INTO `tbl_mk` VALUES ('18', '788286', 'Block, Bailey and Smith', '2', '6', null, 'Manajemen Informatika', '2017-11-23 17:35:12', '2017-09-06 15:33:14', '2017-11-23 17:35:12');
INSERT INTO `tbl_mk` VALUES ('19', '153418', 'Walter Inc', '1', '7', null, 'Sistem Informasi', '2017-11-23 17:35:17', '2017-09-06 15:33:15', '2017-11-23 17:35:17');
INSERT INTO `tbl_mk` VALUES ('20', '473257', 'Hagenes Group', '4', '8', null, 'Teknik Informatika', '2017-11-23 17:35:27', '2017-09-06 15:33:16', '2017-11-23 17:35:27');
INSERT INTO `tbl_mk` VALUES ('21', '11111', 'sisfo', '3', '8', '', 'Sistem Informasi', '2017-11-24 12:58:49', '2017-11-23 16:17:52', '2017-11-24 12:58:49');
INSERT INTO `tbl_mk` VALUES ('22', '33333', 'Kalkulus', '3', '8', '', 'Sistem Informasi', '2017-11-24 12:58:50', '2017-11-23 17:34:48', '2017-11-24 12:58:50');
INSERT INTO `tbl_mk` VALUES ('23', '12345', 'Kalkulus2', '3', '8', '', 'Sistem Informasi', null, '2017-11-24 13:38:44', '2017-11-24 13:38:44');
INSERT INTO `tbl_mk` VALUES ('24', 'SA1', 'Sistem akutansi 1', '2', '7', '', 'Sistem Informasi', null, '2017-11-24 13:52:46', '2017-11-24 13:52:46');
INSERT INTO `tbl_mk` VALUES ('25', 'SA2', 'Sistem akutansi 2', '2', '8', 'SA1', 'Sistem Informasi', null, '2017-11-24 13:53:13', '2017-11-24 13:53:13');
INSERT INTO `tbl_mk` VALUES ('26', 'JV', 'Pemrograman Java', '3', '8', '', 'Sistem Informasi', null, '2017-11-24 13:57:12', '2017-11-24 13:57:12');
INSERT INTO `tbl_mk` VALUES ('27', 'BLO', 'Biologi', '2', '8', '', 'Sistem Informasi', null, '2017-11-24 14:27:13', '2017-11-24 14:27:13');

-- ----------------------------
-- Table structure for `tbl_nilai`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_nilai`;
CREATE TABLE `tbl_nilai` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `krsdetil_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `bobot_id` int(11) NOT NULL,
  `thnajaran_id` int(11) NOT NULL,
  `semester_ditempuh` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_nilai
-- ----------------------------
INSERT INTO `tbl_nilai` VALUES ('1', '6', '25', '1', '22', '1', '2017-12-02 17:22:56', '2017-12-02 17:22:56');
INSERT INTO `tbl_nilai` VALUES ('4', '9', '26', '1', '22', '1', '2017-12-02 18:56:02', '2017-12-02 18:56:02');
INSERT INTO `tbl_nilai` VALUES ('5', '8', '26', '2', '22', '1', '2017-12-02 18:56:11', '2017-12-02 18:56:11');

-- ----------------------------
-- Table structure for `tbl_ruang`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ruang`;
CREATE TABLE `tbl_ruang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_ruang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_ruang
-- ----------------------------
INSERT INTO `tbl_ruang` VALUES ('1', 'Kossstad', '2017-11-24 12:58:55', '2017-09-06 15:33:02', '2017-11-24 12:58:55');
INSERT INTO `tbl_ruang` VALUES ('2', 'Port Marionburgh', '2017-11-24 12:58:58', '2017-09-06 15:33:03', '2017-11-24 12:58:58');
INSERT INTO `tbl_ruang` VALUES ('3', 'Keeganborough', '2017-11-24 12:58:59', '2017-09-06 15:33:04', '2017-11-24 12:58:59');
INSERT INTO `tbl_ruang` VALUES ('4', 'Lake Darby', '2017-11-24 12:59:01', '2017-09-06 15:33:05', '2017-11-24 12:59:01');
INSERT INTO `tbl_ruang` VALUES ('5', 'Adellport', '2017-11-24 12:59:02', '2017-09-06 15:33:05', '2017-11-24 12:59:02');
INSERT INTO `tbl_ruang` VALUES ('6', 'Jeffmouth', '2017-11-24 12:59:04', '2017-09-06 15:33:06', '2017-11-24 12:59:04');
INSERT INTO `tbl_ruang` VALUES ('7', 'East Blanca', '2017-11-24 12:59:05', '2017-09-06 15:33:07', '2017-11-24 12:59:05');
INSERT INTO `tbl_ruang` VALUES ('8', 'Victoriahaven', '2017-11-24 12:59:07', '2017-09-06 15:33:08', '2017-11-24 12:59:07');
INSERT INTO `tbl_ruang` VALUES ('9', 'West Autumn', '2017-11-24 12:59:08', '2017-09-06 15:33:08', '2017-11-24 12:59:08');
INSERT INTO `tbl_ruang` VALUES ('10', 'Lottieville', '2017-11-24 12:59:10', '2017-09-06 15:33:09', '2017-11-24 12:59:10');
INSERT INTO `tbl_ruang` VALUES ('11', 'Beahanshire', '2017-11-24 12:59:11', '2017-09-06 15:33:09', '2017-11-24 12:59:11');
INSERT INTO `tbl_ruang` VALUES ('12', 'Lake Luna', '2017-11-24 12:59:13', '2017-09-06 15:33:10', '2017-11-24 12:59:13');
INSERT INTO `tbl_ruang` VALUES ('13', 'Armstrongbury', '2017-11-24 12:59:14', '2017-09-06 15:33:11', '2017-11-24 12:59:14');
INSERT INTO `tbl_ruang` VALUES ('14', 'Ernestinahaven', '2017-11-24 12:59:15', '2017-09-06 15:33:12', '2017-11-24 12:59:15');
INSERT INTO `tbl_ruang` VALUES ('15', 'Considinetown', '2017-11-24 12:59:17', '2017-09-06 15:33:12', '2017-11-24 12:59:17');
INSERT INTO `tbl_ruang` VALUES ('16', 'Summerborough', '2017-11-24 12:59:18', '2017-09-06 15:33:13', '2017-11-24 12:59:18');
INSERT INTO `tbl_ruang` VALUES ('17', 'Port Bernard', '2017-11-24 12:59:19', '2017-09-06 15:33:14', '2017-11-24 12:59:19');
INSERT INTO `tbl_ruang` VALUES ('18', 'North Verniehaven', '2017-11-24 12:59:21', '2017-09-06 15:33:14', '2017-11-24 12:59:21');
INSERT INTO `tbl_ruang` VALUES ('19', 'Ankundingborough', '2017-11-24 12:59:22', '2017-09-06 15:33:15', '2017-11-24 12:59:22');
INSERT INTO `tbl_ruang` VALUES ('20', 'Swaniawskimouth', '2017-11-24 12:59:23', '2017-09-06 15:33:16', '2017-11-24 12:59:23');
INSERT INTO `tbl_ruang` VALUES ('21', 'ruangan kantin', '2017-11-24 12:59:25', '2017-11-20 06:21:27', '2017-11-24 12:59:25');
INSERT INTO `tbl_ruang` VALUES ('22', 'Ruang Lab', '2017-11-24 12:59:28', '2017-11-23 16:18:31', '2017-11-24 12:59:28');
INSERT INTO `tbl_ruang` VALUES ('23', 'Lab Master Programmer', null, '2017-11-24 13:41:28', '2017-11-24 13:41:28');
INSERT INTO `tbl_ruang` VALUES ('24', 'A', null, '2017-11-24 13:53:27', '2017-11-24 13:53:27');
INSERT INTO `tbl_ruang` VALUES ('25', 'B', null, '2017-11-24 13:53:32', '2017-11-24 13:53:32');
INSERT INTO `tbl_ruang` VALUES ('26', 'C', null, '2017-11-24 13:53:37', '2017-11-24 13:53:37');

-- ----------------------------
-- Table structure for `tbl_thnajaran`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_thnajaran`;
CREATE TABLE `tbl_thnajaran` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kd_tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `tgl_kuliah` date NOT NULL,
  `tgl_awal_perwalian` date NOT NULL,
  `tgl_akhir_perwalian` date NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_thnajaran
-- ----------------------------
INSERT INTO `tbl_thnajaran` VALUES ('1', 'Genap-2000/2001', 'Genap 2000 - 2001', '2000-10-07', '2000-05-05', '2001-02-13', '0', null, '2017-09-06 15:33:02', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('2', 'Genap-1984/1985', 'Genap 1984 - 1985', '1984-10-12', '1984-09-19', '1984-11-10', '0', null, '2017-09-06 15:33:03', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('3', 'Ganjil-1974/1975', 'Ganjil 1974 - 1975', '1975-02-01', '1974-07-31', '1975-05-26', '0', null, '2017-09-06 15:33:04', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('4', 'Ganjil-2011/2012', 'Ganjil 2011 - 2012', '2011-11-06', '2011-11-03', '2011-11-23', '0', null, '2017-09-06 15:33:05', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('5', 'Ganjil-1993/1994', 'Ganjil 1993 - 1994', '1993-07-16', '1993-07-06', '1993-08-16', '0', null, '2017-09-06 15:33:05', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('6', 'Genap-1984/1985', 'Genap 1984 - 1985', '1984-10-04', '1984-06-26', '1984-10-25', '0', null, '2017-09-06 15:33:06', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('7', 'Genap-2010/2011', 'Genap 2010 - 2011', '2011-01-03', '2010-12-12', '2011-05-23', '0', null, '2017-09-06 15:33:07', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('8', 'Genap-1971/1972', 'Genap 1971 - 1972', '1971-10-09', '1971-03-28', '1972-03-12', '0', null, '2017-09-06 15:33:08', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('9', 'Genap-1981/1982', 'Genap 1981 - 1982', '1981-12-20', '1981-02-24', '1982-01-04', '0', null, '2017-09-06 15:33:08', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('10', 'Genap-2003/2004', 'Genap 2003 - 2004', '2003-10-31', '2003-10-02', '2003-11-21', '0', null, '2017-09-06 15:33:09', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('11', 'Genap-2015/2016', 'Genap 2015 - 2016', '2015-07-26', '2015-02-08', '2015-10-17', '0', null, '2017-09-06 15:33:09', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('12', 'Ganjil-1996/1997', 'Ganjil 1996 - 1997', '1997-01-09', '1996-08-25', '1997-06-21', '0', null, '2017-09-06 15:33:10', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('13', 'Genap-1998/1999', 'Genap 1998 - 1999', '1998-11-19', '1998-05-29', '1998-11-29', '0', null, '2017-09-06 15:33:11', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('14', 'Genap-1991/1992', 'Genap 1991 - 1992', '1991-11-16', '1991-10-16', '1992-05-09', '0', null, '2017-09-06 15:33:12', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('15', 'Ganjil-2009/2010', 'Ganjil 2009 - 2010', '2009-10-30', '2009-10-14', '2009-11-27', '0', null, '2017-09-06 15:33:12', '2017-09-06 15:33:13');
INSERT INTO `tbl_thnajaran` VALUES ('16', 'Ganjil-1972/1973', 'Ganjil 1972 - 1973', '1973-08-05', '1972-12-22', '1973-12-11', '0', null, '2017-09-06 15:33:13', '2017-11-23 16:20:35');
INSERT INTO `tbl_thnajaran` VALUES ('17', 'Genap-2014/2015', 'Genap 2014 - 2015', '2014-09-04', '2014-05-26', '2014-10-03', '0', null, '2017-09-06 15:33:14', '2017-09-06 15:33:14');
INSERT INTO `tbl_thnajaran` VALUES ('18', 'Genap-2011/2012', 'Genap 2011 - 2012', '2012-01-19', '2011-12-26', '2012-05-19', '0', null, '2017-09-06 15:33:14', '2017-09-06 15:33:14');
INSERT INTO `tbl_thnajaran` VALUES ('19', 'Genap-1985/1986', 'Genap 1985 - 1986', '1985-05-15', '1985-02-04', '1985-11-12', '0', null, '2017-09-06 15:33:15', '2017-09-06 15:33:15');
INSERT INTO `tbl_thnajaran` VALUES ('20', 'Ganjil-1988/1989', 'Ganjil 1988 - 1989', '1989-03-07', '1988-12-27', '1989-03-08', '0', null, '2017-09-06 15:33:16', '2017-09-06 15:33:16');
INSERT INTO `tbl_thnajaran` VALUES ('21', '11111', 'testtahun ajaran', '2017-01-01', '2017-02-02', '2017-12-01', '1', '2017-11-24 13:01:27', '2017-11-23 16:20:35', '2017-11-24 13:01:27');
INSERT INTO `tbl_thnajaran` VALUES ('22', '12345', 'Tahun ajaran 2017-2018', '2017-01-01', '2017-02-01', '2017-06-01', '1', null, '2017-11-24 13:02:19', '2017-11-24 13:02:19');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '$2y$10$A3d8Jeyc9lgt2.Fn2Li2W.9NKCdzcjXwBVxGunrc8ZrN8P2Q4DaFi', 'admin', 'qYNVmYuEF8K6iKd0A8b7KZlVmFct0NWnhx1ZzLC32DudzarDpO6DnjQrQlgr', '2017-09-06 15:33:01', '2017-12-08 14:21:20');
INSERT INTO `users` VALUES ('2', 'D190', '$2y$10$7Gu0PNmf66I3zMl1Veq5Zej3B9SB2phayA6hMBAWcGM/GYW98M.WO', 'dosen', 'umddSDNKSaM9OZotesve9XiVUlMj3wwl26OqEdbyx2r957FBVC3bMG5NRjyw', '2017-09-06 15:33:02', '2017-09-09 01:54:50');
INSERT INTO `users` VALUES ('3', '57282', '$2y$10$fPa5GjhSTVSvSHE5GRcTzOV3ydKfaLDBJ3i3RMZEsv6K4Ri0IxQoG', 'mahasiswa', 'mbHpmQOkRxy99k4FyydxzJA5MxJZwccWLTXbgzc4D4QlNTUfUHH0Fx5kAEPm', '2017-09-06 15:33:02', '2017-09-07 16:21:28');
INSERT INTO `users` VALUES ('4', 'D601', '$2y$10$pntTrnqDb7qusT8mxuoAOu38LVZHlvVT5eyKTNZ1B0iMSlnUpUFe.', 'dosen', null, '2017-09-06 15:33:02', '2017-09-06 15:33:02');
INSERT INTO `users` VALUES ('5', '4117', '$2y$10$IxrPLmEwF20e6lRFDj7KP.D/c.Kovo58qFAJCp/tpGLK4HNQ.ANwG', 'mahasiswa', null, '2017-09-06 15:33:03', '2017-09-06 15:33:03');
INSERT INTO `users` VALUES ('6', 'D884', '$2y$10$fu5QV9p070HkC6ShykGGIe1yJ/geWXnnbj4rMmX5TvbpJ1WFawLQ6', 'dosen', 'xcXzXRZmevjYcZ919bPtPFSx2P3a5jPLAQk8zov8zHc7rQyUNv4nK99fKvDT', '2017-09-06 15:33:03', '2017-11-21 15:36:08');
INSERT INTO `users` VALUES ('7', '38185', '$2y$10$d4ZW6cPYvdBKBVR/bLtxreZrwhE8BcsnktEcEMecCNdJNCPt/ROPG', 'mahasiswa', null, '2017-09-06 15:33:04', '2017-09-06 15:33:04');
INSERT INTO `users` VALUES ('8', 'D401', '$2y$10$KuqScX2CAa3KGV/yzNMw3uvDvxhStkb4BQn6lz56DTdrzLlrUNOae', 'dosen', null, '2017-09-06 15:33:04', '2017-09-06 15:33:04');
INSERT INTO `users` VALUES ('9', '71322', '$2y$10$C05nSbi.dQeRXkwiS.y7puulkws4xkaApvi2bWNW/9IJQtMfJhGFe', 'mahasiswa', null, '2017-09-06 15:33:05', '2017-09-06 15:33:05');
INSERT INTO `users` VALUES ('10', 'D847', '$2y$10$elvaDqfLOMs6LYqstO9K4eKG7N6ELXfX6Q7yFdrzfGeKR8cX6wtJe', 'dosen', null, '2017-09-06 15:33:05', '2017-09-06 15:33:05');
INSERT INTO `users` VALUES ('11', '321', '$2y$10$agjd92WVBOv3Qs/nMVIdweZNDkCn5ZvU8JpV2rmksive6/QsDuhhu', 'mahasiswa', null, '2017-09-06 15:33:05', '2017-09-06 15:33:05');
INSERT INTO `users` VALUES ('12', 'D68', '$2y$10$FCJpRoSsZvV4Late/7jEYuoRMJ.z87BsmoMmU3DMzrpSzlz5xZJym', 'dosen', null, '2017-09-06 15:33:06', '2017-09-06 15:33:06');
INSERT INTO `users` VALUES ('13', '17762', '$2y$10$kU2Ak0n4tdD0mttFd4Y7XeGf2nslYGdle4ppdD8cs8urNMKFqGdea', 'mahasiswa', null, '2017-09-06 15:33:06', '2017-09-06 15:33:06');
INSERT INTO `users` VALUES ('14', 'D79', '$2y$10$0Jx5quuWfsQpSKM5Iva/QeOz.4I.FvRQD/tMB6RiAYTLv10F.Brd6', 'dosen', null, '2017-09-06 15:33:07', '2017-09-06 15:33:07');
INSERT INTO `users` VALUES ('15', '89028', '$2y$10$ZkNdmsHhbqTBqoJ57cuhd.M/WROR4Sr6fq6aWWzr9jmDiob1JMXXW', 'mahasiswa', null, '2017-09-06 15:33:07', '2017-09-06 15:33:07');
INSERT INTO `users` VALUES ('16', 'D979', '$2y$10$QT1ZjafiL4f5xYs.4ojmCuUvqXVv2s4rzpVY1oDU8/upbXe66wbpK', 'dosen', null, '2017-09-06 15:33:07', '2017-09-06 15:33:07');
INSERT INTO `users` VALUES ('17', '6138', '$2y$10$INpinGMEFwgzs8i6xHcE3.k/gcVWvCLj4Fld0d6a4s.aTCKvyKUDq', 'mahasiswa', null, '2017-09-06 15:33:07', '2017-09-06 15:33:07');
INSERT INTO `users` VALUES ('18', 'D411', '$2y$10$8qcXmOMwC34q0ostAPN4JORIWRqT5lSVsiNRDV9OCbaIBMwia70eO', 'dosen', null, '2017-09-06 15:33:08', '2017-09-06 15:33:08');
INSERT INTO `users` VALUES ('19', '94633', '$2y$10$TNCbhrYw4kzSwrG97ajE0OLt9VmzZcVyamNjrQEEX/XCdEaDQaphe', 'mahasiswa', null, '2017-09-06 15:33:08', '2017-09-06 15:33:08');
INSERT INTO `users` VALUES ('20', 'D36', '$2y$10$XJt2/DFir9mbthPfKdY8/eaWF59oNxNIrpxfmHyITsbibEjy.wQOa', 'dosen', null, '2017-09-06 15:33:08', '2017-09-06 15:33:08');
INSERT INTO `users` VALUES ('21', '14777', '$2y$10$pj4tfHLzgqPEJqDb/WXunevsMZ4Q1BTgHn/Vx.05cQYZLRBmpU/MW', 'mahasiswa', 'HS7zoqWRGJKsxNR5YKPw3CbrwJ9YCDST9ERZLtqL4xXNTC2vdwAWRnwUCTK4', '2017-09-06 15:33:09', '2017-11-23 17:20:00');
INSERT INTO `users` VALUES ('22', 'D231', '$2y$10$mQJnct1fRDTo58QJbgQfBeKh5LKpZdRS72lff9j6DWXWQO/zKrej6', 'dosen', null, '2017-09-06 15:33:09', '2017-09-06 15:33:09');
INSERT INTO `users` VALUES ('23', '93508', '$2y$10$zmkFwIyQodjvACtMxb6V5.CwQNemdLIdgyfWLvHX4mZWFhxQUp5gm', 'mahasiswa', null, '2017-09-06 15:33:09', '2017-09-06 15:33:09');
INSERT INTO `users` VALUES ('24', 'D684', '$2y$10$iHjdHLZG6zfUWH/rskSaPeDePdiiswROJgICWBQKvW3YYW3c3JCxu', 'dosen', null, '2017-09-06 15:33:10', '2017-09-06 15:33:10');
INSERT INTO `users` VALUES ('25', '77087', '$2y$10$8mB0FoKsY/8hrhiS9ymSqO/2r4SvQ1q3FY5HkxNTwqJIH0dAo5/tu', 'mahasiswa', null, '2017-09-06 15:33:10', '2017-09-06 15:33:10');
INSERT INTO `users` VALUES ('26', 'D292', '$2y$10$C4PRa498G7X.df98NCRE7.62O6dWEUxcYMmpVVBT9IbbTYk./tXhu', 'dosen', null, '2017-09-06 15:33:10', '2017-09-06 15:33:10');
INSERT INTO `users` VALUES ('27', '64792', '$2y$10$g.daGq.TfordYqPuq7CgvuLHb/RRtVydaiRrShJZ3LDcnnkbkEnJC', 'mahasiswa', null, '2017-09-06 15:33:11', '2017-09-06 15:33:11');
INSERT INTO `users` VALUES ('28', 'D656', '$2y$10$fXdKyGBm2/tBPeU0WxVXaODfacBhZCXai7LdlCD25EKHqSo2fZ9Ba', 'dosen', null, '2017-09-06 15:33:11', '2017-09-06 15:33:11');
INSERT INTO `users` VALUES ('29', '1110', '$2y$10$5Wa8KGTMYeVdJD7MVCpaRekZjeEsfTD4l/9CgpRWXrVg2lAiq2TTC', 'mahasiswa', 'NaHyZLjHiiYrY1UGydC0CRfbVQVqilYLd4kAIln4CvkHa55u2KR1NwImUlkd', '2017-09-06 15:33:12', '2017-09-09 15:18:27');
INSERT INTO `users` VALUES ('30', 'D800', '$2y$10$HJebv8dkPgI2rJb6Yak49uLFjUuvm9SfgK097yHzc1oXyY.B5YYVm', 'dosen', null, '2017-09-06 15:33:12', '2017-09-06 15:33:12');
INSERT INTO `users` VALUES ('31', '871', '$2y$10$7maXlPU616ihj8iNSKuluOSpUluHD9LEq25JV.aDTNACOujWHR5O.', 'mahasiswa', null, '2017-09-06 15:33:12', '2017-09-06 15:33:12');
INSERT INTO `users` VALUES ('32', 'D490', '$2y$10$hxe7414HbQtMB7ask3XUAeetSKAXEymeZDzA620tbi0WeqeJtlfxq', 'dosen', null, '2017-09-06 15:33:13', '2017-09-06 15:33:13');
INSERT INTO `users` VALUES ('33', '82825', '$2y$10$JHIXG3Bke2hTQn31NkWtfu6z5seeaa9i1Q3cvnhIMNvVSzyP5X21O', 'mahasiswa', null, '2017-09-06 15:33:13', '2017-09-06 15:33:13');
INSERT INTO `users` VALUES ('34', 'D992', '$2y$10$hMBFJjSxMnjpaLfhJQb/E.nq8gHEOZu5smKLUXrBLZ1bJmNtxTX4u', 'dosen', null, '2017-09-06 15:33:13', '2017-09-06 15:33:13');
INSERT INTO `users` VALUES ('35', '56161', '$2y$10$eZVtBx2Q5JzFmSbesVpZyuKwyVfhzZyx7SyJkmMPtFWRQ53rOAbL6', 'mahasiswa', null, '2017-09-06 15:33:14', '2017-09-06 15:33:14');
INSERT INTO `users` VALUES ('36', 'D879', '$2y$10$wgrXzBSd8/0weooW9c9cFuR1vvDRZrx1K08n6X7Rs6Q/tzjCG7xy2', 'dosen', null, '2017-09-06 15:33:14', '2017-09-06 15:33:14');
INSERT INTO `users` VALUES ('37', '97995', '$2y$10$6gIv9Y6k6i90yufTO1N5dOhNQ9fWZr0qfdfaMHS.6i.7mxUMV7Rqa', 'mahasiswa', null, '2017-09-06 15:33:14', '2017-09-06 15:33:14');
INSERT INTO `users` VALUES ('38', 'D151', '$2y$10$WDx5wcM282/1vgLg9Z0lPupwwlzT7OAgWlR4PX4QoheazaFLq9ay2', 'dosen', null, '2017-09-06 15:33:15', '2017-09-06 15:33:15');
INSERT INTO `users` VALUES ('39', '16569', '$2y$10$8DSm7PRaBLcEecLPoDTC3O8DdB7CLQYRo1CX1fBXhg7hCx5BlcIMu', 'mahasiswa', null, '2017-09-06 15:33:15', '2017-09-06 15:33:15');
INSERT INTO `users` VALUES ('40', 'D220', '$2y$10$5fLEV2hKGI5nBoExZ.Lau.MqwG0dyLUYvVExIeJ1uUDgPnDPFb0sO', 'dosen', null, '2017-09-06 15:33:15', '2017-09-06 15:33:15');
INSERT INTO `users` VALUES ('41', '47896', '$2y$10$.Qjoce/Zvc577apGH37Lq.aT5E.mG5LJizNH9eRoYbgnIbZGGGH7C', 'mahasiswa', null, '2017-09-06 15:33:15', '2017-09-06 15:33:15');
INSERT INTO `users` VALUES ('42', '123456789', '$2y$10$SkffJGXEVANyfp5eoxAuUOeGJrRSHOdMyLfYjd/qXQpUg8vuDuYJm', 'mahasiswa', '0Sc3tWcvVrZW7FjeliZwd6FzU1lT7YnfDxz6RcC5lKxcljiq5rS6mI7tYmIe', '2017-09-07 16:38:36', '2017-11-23 17:38:00');
INSERT INTO `users` VALUES ('43', '12345678', '$2y$10$aeNX5HC9itp88hYQuu4tCextA5Ft0.YoPjXvX/IS.vRD38tmrw.LO', 'mahasiswa', null, '2017-09-07 17:06:35', '2017-09-07 17:06:35');
INSERT INTO `users` VALUES ('44', '11111', '$2y$10$5m9kAceldgleTdc8SJvioOrj9fVI30EkspIBVjyiwVEVG5zTMJTWW', 'mahasiswa', '0H3SzVa71HRz6YMn6HjAr5OnMBQXRYeIrvqvznVEYxzVs9OblBgHYSMTViN6', '2017-09-07 17:23:12', '2017-09-07 17:26:52');
INSERT INTO `users` VALUES ('45', '12345', '$2y$10$raeJroX5B5ms7GE4xPZ6SugFre6WfaSBL00QH3i25IA4wA30anEgC', 'mahasiswa', 'suTn39tQxUqn7ZKLgSljBgO7lkuipODNKGiplK1118ymreeUa509Ayh6DjHw', '2017-09-08 15:41:22', '2017-10-30 15:20:51');
INSERT INTO `users` VALUES ('47', '22222', '$2y$10$pLLF8VmPvkqpXxzpHp7BVOzTaulo1dWH/wGwZaNBl3c9uitFlL5p6', 'dosen', 'BfgkqMVLtprP6KdutnI106BkLlCh0DNqmDqXrXofMIj2NRCvGjUJ5ZeYfAZz', '2017-11-23 16:21:38', '2017-11-23 17:38:20');
INSERT INTO `users` VALUES ('50', '12346', '$2y$10$0mLHKd.6Wl1Y7ziyRE/t3u9n3XX7JWlPAiXuf/YOaL2q2Z2TK2C32', 'dosen', '2ZRlLR6qnjx6YGpJ1gf8fpQxrnwlWOOJ1k2JrUDX1hdo56n1zmqZDXa5HZFd', '2017-11-24 13:08:33', '2017-11-24 15:05:05');
INSERT INTO `users` VALUES ('54', '11112', '$2y$10$ZkcaOtOfo6zSIGThGXrXh.t/AvPQDXpfPL9EAPO4bTjZHPsEt3PGO', 'dosen', '5OLyuyKzOnboGrxp9PwFR2aweCJLd7mTSoRjHin0L0xM50BCsszE1VTXG4br', '2017-11-24 13:36:04', '2017-12-08 14:24:52');
INSERT INTO `users` VALUES ('55', '98765', '$2y$10$CgY8Qaz.qkN3k2IQghm9DuNn4R2DgopergsERoa6dLYjh3wu3XGbG', 'mahasiswa', 'zdOpM7nOhE82Z2D1b94G40c3GMIOK9q4ESrAUfBVV0QTmWghsP1EOFpQss7J', '2017-11-24 13:37:53', '2017-11-24 15:06:48');
INSERT INTO `users` VALUES ('56', 'cahyo', '$2y$10$NvuYCrShivOOkgjf2yzFkO.e3AhFc5.i2bRRzDACtqbCUTaZe3eIG', 'dosen', null, '2017-11-24 13:51:51', '2017-11-24 13:51:51');
INSERT INTO `users` VALUES ('57', '111111', '$2y$10$29jQV.iFgzgwTm8N5.l9Mu6.BfjxP7Y0mDNmW3GaZqViunP62la32', 'mahasiswa', 'S26HYi4WxuThDHMNV5lYTNuWbxgJyhDru3kXRCkGsRrLvlpIgTNEjubIzZA4', '2017-12-02 17:20:58', '2017-12-05 00:43:08');
INSERT INTO `users` VALUES ('58', '222222', '$2y$10$ZomNd.BC33aZ59OLz.Z7TuwTg1iIp7Kx69VBXr9Jqtb8hKf2MpS3e', 'mahasiswa', 'hF3DbQkHw82CI3nJz1v4RoQP6KjaYsAo0i8xiqfOTCFKFLUUDHi08SzdxmAP', '2017-12-02 17:24:59', '2017-12-08 14:21:03');
INSERT INTO `users` VALUES ('59', '333333', '$2y$10$TNkVlRf4ZRhaXJuU1tx86u4vJyeho5YdQm3R8qvaVwsRPrsVlP2K2', 'mahasiswa', 'Qx0uW3yWS8TXh7IkcxyoFHgJxDh4tjDutC8fqrXf0DhNECGLOXvdYtiE0nGv', '2017-12-02 17:32:43', '2017-12-02 18:55:19');
INSERT INTO `users` VALUES ('60', '444444', '$2y$10$m617hQYHgzW0V.gndIZUUuZlWngtZHvd/5zngrPSlie0hn1yWrsc.', 'mahasiswa', 'Dj3N35Iay3ofFYlrme6qfDSOa0IwpI1pUx6PLTa1myQtH5r2PBClVhRna9ln', '2017-12-02 17:33:28', '2017-12-02 19:55:56');
INSERT INTO `users` VALUES ('61', '010101', '$2y$10$UATASbyG57VSQno3fU8TNe8tZ9zanev.yd29F8VtD63S4gpehTHIC', 'mahasiswa', 'yrXikjpbwjc2KzfQ0nPczZYj5Lodio9GN3x8h9kOTXgnqxUSdeugp6Gmvgga', '2017-12-05 00:43:45', '2017-12-05 01:18:54');
