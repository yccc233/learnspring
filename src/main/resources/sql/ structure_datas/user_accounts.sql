/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : spring

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 22/06/2023 15:30:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_accounts
-- ----------------------------
DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE `user_accounts` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_accounts
-- ----------------------------
BEGIN;
INSERT INTO `user_accounts` (`userID`, `username`, `password`, `email`, `create_time`, `status`, `phone_number`) VALUES (1, '张三', 'password123', 'zhangsan@example.com', '2023-06-01 10:00:00', 1, '13812345678');
INSERT INTO `user_accounts` (`userID`, `username`, `password`, `email`, `create_time`, `status`, `phone_number`) VALUES (2, '李四', 'abcdef', 'lisi@example.com', '2023-06-02 11:30:00', 1, '13987654321');
INSERT INTO `user_accounts` (`userID`, `username`, `password`, `email`, `create_time`, `status`, `phone_number`) VALUES (3, '王五', 'qwerty', 'wangwu@example.com', '2023-06-03 12:45:00', 1, '13698765432');
INSERT INTO `user_accounts` (`userID`, `username`, `password`, `email`, `create_time`, `status`, `phone_number`) VALUES (4, '赵六', 'pass123', 'zhaoliu@example.com', '2023-06-04 09:15:00', 1, '13745678901');
INSERT INTO `user_accounts` (`userID`, `username`, `password`, `email`, `create_time`, `status`, `phone_number`) VALUES (5, '陈七', 'hello123', 'chenqi@example.com', '2023-06-05 14:20:00', 1, '13578901234');
INSERT INTO `user_accounts` (`userID`, `username`, `password`, `email`, `create_time`, `status`, `phone_number`) VALUES (6, '刘八', 'password123', 'liuba@example.com', '2023-06-20 08:30:00', 1, '13901234567');
INSERT INTO `user_accounts` (`userID`, `username`, `password`, `email`, `create_time`, `status`, `phone_number`) VALUES (7, '朱九', 'abcdef', 'zhujiu@example.com', '2023-06-21 16:50:00', 1, '13780123456');
INSERT INTO `user_accounts` (`userID`, `username`, `password`, `email`, `create_time`, `status`, `phone_number`) VALUES (8, '许十', 'qwerty', 'xushi@example.com', '2023-06-22 17:30:00', 1, '13834567890');
INSERT INTO `user_accounts` (`userID`, `username`, `password`, `email`, `create_time`, `status`, `phone_number`) VALUES (9, '周十一', 'pass123', 'zhoushiyi@example.com', '2023-06-22 18:15:00', 1, '13667890123');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
