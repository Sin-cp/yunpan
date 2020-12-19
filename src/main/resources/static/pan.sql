/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : pan

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-10-27 09:16:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('5');
INSERT INTO `hibernate_sequence` VALUES ('5');
INSERT INTO `hibernate_sequence` VALUES ('5');

-- ----------------------------
-- Table structure for pan_save
-- ----------------------------
DROP TABLE IF EXISTS `pan_save`;
CREATE TABLE `pan_save` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `local_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pan_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pan_save
-- ----------------------------

-- ----------------------------
-- Table structure for pan_user
-- ----------------------------
DROP TABLE IF EXISTS `pan_user`;
CREATE TABLE `pan_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) DEFAULT NULL COMMENT 'username',
  `password` varchar(255) DEFAULT NULL COMMENT 'password',
  `level` varchar(255) DEFAULT '1' COMMENT 'level',
  `email` varchar(255) DEFAULT NULL COMMENT 'email',
  `phone` varchar(255) DEFAULT NULL COMMENT 'phone',
  `alias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pan_user
-- ----------------------------
INSERT INTO `pan_user` VALUES ('1', 'admin', '123', '0', 'sandeepin@qq.com', '15578352978', null);
INSERT INTO `pan_user` VALUES ('2', 'sandeepin', '123', '0', 'jfz@jfz.me', '17671766376', null);
INSERT INTO `pan_user` VALUES ('3', 'cflower', '123', '0', 'xxx@qq.com', '18200000000', null);
INSERT INTO `pan_user` VALUES ('4', 'zc2', '123', '0', 'xxx@qq.com', '18200000000', null);
INSERT INTO `pan_user` VALUES ('5', 'lesliy', '123', '0', null, null, null);
