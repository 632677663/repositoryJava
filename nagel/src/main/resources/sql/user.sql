/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50626
Source Host           : 127.0.0.1:123
Source Database       : lyj

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-12-15 17:34:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `LOGIN_NAME` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '账户',
  `PASS_WORD` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '账户密码',
  `CREATE_TIME` datetime NOT NULL COMMENT '账户创建时间',
  `LEVEL` int(2) NOT NULL DEFAULT '0' COMMENT '权限等级',
  `IDCARD` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证',
  `PHONE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LOG_NAME` (`LOGIN_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'admin', '123456', '2015-08-19 17:19:41', '0', null, null);
