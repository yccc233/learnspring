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

 Date: 26/08/2023 18:14:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `phone_number` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) DEFAULT NULL COMMENT '个人邮箱',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '头像 URL',
  `description` text COMMENT '描述',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '启用状态',
  `permissions` int DEFAULT NULL COMMENT '权限标识位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
BEGIN;
INSERT INTO `tbl_user` (`id`, `username`, `nickname`, `phone_number`, `email`, `password`, `avatar_url`, `description`, `enabled`, `permissions`) VALUES (1, 'user1', 'Alice', '1234567890', 'alice@example.com', 'hashed_password_1', 'https://example.com/avatar1.jpg', 'Hello, I am Alice.', 1, 1);
INSERT INTO `tbl_user` (`id`, `username`, `nickname`, `phone_number`, `email`, `password`, `avatar_url`, `description`, `enabled`, `permissions`) VALUES (2, 'user2', 'Bob', '9876543210', 'bob@example.com', 'hashed_password_2', 'https://example.com/avatar2.jpg', 'Hi, I am Bob.', 1, 2);
INSERT INTO `tbl_user` (`id`, `username`, `nickname`, `phone_number`, `email`, `password`, `avatar_url`, `description`, `enabled`, `permissions`) VALUES (3, 'user3', 'Carol', '5551234567', 'carol@example.com', 'hashed_password_3', 'https://example.com/avatar3.jpg', 'Nice to meet you.', 1, 3);
INSERT INTO `tbl_user` (`id`, `username`, `nickname`, `phone_number`, `email`, `password`, `avatar_url`, `description`, `enabled`, `permissions`) VALUES (4, 'user4', 'David', '1112223333', 'david@example.com', 'hashed_password_4', 'https://example.com/avatar4.jpg', 'Hello from David.', 0, 2);
INSERT INTO `tbl_user` (`id`, `username`, `nickname`, `phone_number`, `email`, `password`, `avatar_url`, `description`, `enabled`, `permissions`) VALUES (5, 'user5', 'Eva', '4445556666', 'eva@example.com', 'hashed_password_5', 'https://example.com/avatar5.jpg', 'Eva says hi!', 1, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
