/*
Navicat MySQL Data Transfer

Source Server         : sjh
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : department

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-08-11 13:10:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `de_id` varchar(10) NOT NULL,
  `de_name` varchar(15) NOT NULL,
  `de_introduction` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`de_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1001', '人事部', '负责人事之间的离职入职');
INSERT INTO `department` VALUES ('1002', '财务部', '负责公司的资金支出');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` varchar(12) NOT NULL,
  `u_name` varchar(10) NOT NULL,
  `u_age` int(2) NOT NULL,
  `u_sex` varchar(2) DEFAULT NULL,
  `u_phone` char(11) NOT NULL,
  `u_station` varchar(40) NOT NULL,
  `u_de_id` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  KEY `de_id` (`u_de_id`),
  CONSTRAINT `de_id` FOREIGN KEY (`u_de_id`) REFERENCES `department` (`de_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('161001', '李强', '23', '男', '178*****243', 'java开发岗', '1001');
INSERT INTO `user` VALUES ('161002', '王强', '56', '男', '136*****965', '会计', '1002');
INSERT INTO `user` VALUES ('161003', '肖航', '30', '女', '176*****823', '前端设计', '1001');
