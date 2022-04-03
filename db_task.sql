/*
 Navicat Premium Data Transfer

 Source Server         : MyConnection
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : db_task

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 03/04/2022 16:31:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_to_do
-- ----------------------------
DROP TABLE IF EXISTS `tb_to_do`;
CREATE TABLE `tb_to_do`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_td` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `details_td` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject_td` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `priority_td` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deadline_td` date NOT NULL,
  `status_td` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_to_do
-- ----------------------------
INSERT INTO `tb_to_do` VALUES (1, 'ERD', 'Bikin ERD', 'Basis Data', 'High', '2022-03-28', 'Sudah');
INSERT INTO `tb_to_do` VALUES (6, 'TMD', 'Beresin TMD', 'Struktur Data', 'High', '2022-04-30', 'Sudah');
INSERT INTO `tb_to_do` VALUES (9, 'TP4', 'Kerjain TP4', 'DPBO', 'High', '2022-03-28', 'Sudah');
INSERT INTO `tb_to_do` VALUES (29, 'UTS', 'UTS STRUKDAT', 'Struktur Data', 'High', '2022-05-13', 'Sudah');
INSERT INTO `tb_to_do` VALUES (30, 'KUIS 1', 'KUIS 1 DPBO', 'DPBO', 'Low', '2022-01-09', 'Belum');

SET FOREIGN_KEY_CHECKS = 1;
