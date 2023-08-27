/*
 Navicat Premium Data Transfer

 Source Server         : 本地Mysql
 Source Server Type    : MySQL
 Source Server Version : 80029 (8.0.29)
 Source Host           : localhost:3306
 Source Schema         : learn_spring

 Target Server Type    : MySQL
 Target Server Version : 80029 (8.0.29)
 File Encoding         : 65001

 Date: 27/08/2023 23:26:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_permission
-- ----------------------------
DROP TABLE IF EXISTS `tbl_permission`;
CREATE TABLE `tbl_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission_type` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tbl_permission
-- ----------------------------
BEGIN;
INSERT INTO `tbl_permission` (`id`, `permission_type`, `desc`) VALUES (1, '管理员', '系统级别的管理员');
INSERT INTO `tbl_permission` (`id`, `permission_type`, `desc`) VALUES (2, '普通用户', '正常注册的用户');
INSERT INTO `tbl_permission` (`id`, `permission_type`, `desc`) VALUES (3, '封禁用户', '违反用户手册的用户');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
