/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : airlinebooking_database

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-10-22 01:38:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for flighttable
-- ----------------------------
DROP TABLE IF EXISTS `flighttable`;
CREATE TABLE `flighttable` (
  `flightId` int(255) NOT NULL AUTO_INCREMENT,
  `flightName` varchar(255) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `arrivalTime` datetime DEFAULT NULL,
  `startPlace` varchar(255) DEFAULT NULL,
  `endPlace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`flightId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flighttable
-- ----------------------------
INSERT INTO `flighttable` VALUES ('1', 'GH001', '2018-10-10 20:01:20', '2018-10-11 20:01:24', '武汉', '北京');
INSERT INTO `flighttable` VALUES ('2', 'GH002', '2018-09-04 08:32:15', '2018-09-05 08:32:24', '武汉', '广州');
INSERT INTO `flighttable` VALUES ('3', 'GH003', '2018-10-10 20:01:20', '2018-10-11 20:01:24', '武汉', '北京');
INSERT INTO `flighttable` VALUES ('4', 'GH004', '2018-09-04 08:28:47', '2018-09-05 08:28:56', '武汉', '广州');
INSERT INTO `flighttable` VALUES ('5', 'GH005', '2018-10-10 20:01:20', '2018-10-11 20:01:24', '武汉', '北京');
INSERT INTO `flighttable` VALUES ('6', 'GH006', '2018-10-02 08:23:59', '2018-10-04 08:24:04', '成都', '上海');
INSERT INTO `flighttable` VALUES ('7', 'NH001', '2018-10-10 20:01:20', '2018-10-11 20:01:24', '武汉', '北京');
INSERT INTO `flighttable` VALUES ('8', 'NH002', '2018-10-16 08:27:22', '2018-10-09 08:27:27', '北京', '中国台湾');
INSERT INTO `flighttable` VALUES ('9', 'NH003', '2018-10-10 20:01:20', '2018-10-11 20:01:24', '武汉', '北京');
INSERT INTO `flighttable` VALUES ('10', 'NH004', '2018-10-10 20:01:20', '2018-10-11 20:01:24', '武汉', '北京');
INSERT INTO `flighttable` VALUES ('11', 'NH005', '2018-10-10 20:01:20', '2018-10-11 20:01:24', '武汉', '北京');
INSERT INTO `flighttable` VALUES ('12', 'NH006', '2018-10-15 08:26:15', '2018-10-20 08:26:19', '马来西亚', '中国香港');

-- ----------------------------
-- Table structure for orderinformation
-- ----------------------------
DROP TABLE IF EXISTS `orderinformation`;
CREATE TABLE `orderinformation` (
  `orderId` int(20) NOT NULL AUTO_INCREMENT,
  `flightId` int(20) DEFAULT NULL,
  `userId` int(18) DEFAULT NULL,
  `seatId` int(20) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `flightId` (`flightId`),
  KEY `userId` (`userId`),
  KEY `seatId` (`seatId`),
  CONSTRAINT `orderinformation_ibfk_1` FOREIGN KEY (`flightId`) REFERENCES `flighttable` (`flightId`),
  CONSTRAINT `orderinformation_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `orderinformation_ibfk_3` FOREIGN KEY (`seatId`) REFERENCES `seattype` (`seatnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinformation
-- ----------------------------
INSERT INTO `orderinformation` VALUES ('2', '2', '6', '56');
INSERT INTO `orderinformation` VALUES ('6', '1', '6', '12');
INSERT INTO `orderinformation` VALUES ('8', '4', '6', '20');
INSERT INTO `orderinformation` VALUES ('9', '4', '6', '3');

-- ----------------------------
-- Table structure for seattype
-- ----------------------------
DROP TABLE IF EXISTS `seattype`;
CREATE TABLE `seattype` (
  `flightId` int(20) NOT NULL,
  `seatType` varchar(10) NOT NULL,
  `price` int(20) NOT NULL,
  `tickets` int(20) DEFAULT NULL,
  `seatnumber` int(11) NOT NULL,
  PRIMARY KEY (`flightId`,`seatnumber`),
  KEY `seatnumber` (`seatnumber`),
  CONSTRAINT `seattype_ibfk_1` FOREIGN KEY (`flightId`) REFERENCES `flighttable` (`flightId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seattype
-- ----------------------------
INSERT INTO `seattype` VALUES ('1', '头等舱', '1000', '8', '12');
INSERT INTO `seattype` VALUES ('1', '经济舱', '500', '22', '56');
INSERT INTO `seattype` VALUES ('2', '头等舱', '1000', '34', '12');
INSERT INTO `seattype` VALUES ('2', '经济舱', '500', '20', '20');
INSERT INTO `seattype` VALUES ('2', '经济舱', '500', '67', '56');
INSERT INTO `seattype` VALUES ('4', '头等舱', '1000', '4', '1');
INSERT INTO `seattype` VALUES ('4', '头等舱', '1000', '4', '2');
INSERT INTO `seattype` VALUES ('4', '头等舱', '1000', '4', '3');
INSERT INTO `seattype` VALUES ('4', '头等舱', '1000', '4', '4');
INSERT INTO `seattype` VALUES ('4', '经济舱', '500', '24', '19');
INSERT INTO `seattype` VALUES ('4', '经济舱', '500', '24', '20');
INSERT INTO `seattype` VALUES ('4', '经济舱', '500', '24', '21');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(18) NOT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '胡美燕', '女', '123456', '17855557788', 'hmy@qq.com');
INSERT INTO `user` VALUES ('2', '张三', '男', '123456', '13225698753', 'zs@qq.com');
INSERT INTO `user` VALUES ('3', '李四', '男', '123456', '12547895632', 'ls@qq.com');
INSERT INTO `user` VALUES ('4', '饶婷婷', '女', '123456', '13857418523', 'rtt@qq.com');
INSERT INTO `user` VALUES ('5', '王五', '男', '123456', '13585478528', 'ww@qq.com');
INSERT INTO `user` VALUES ('6', '贺珊', '女', '123456', '13788596325', 'hs@qq.com');
INSERT INTO `user` VALUES ('7', '柯群楠', '女', '123456', '13788577885', 'kqn@qq.com');
INSERT INTO `user` VALUES ('8', '陈雨思', '女', '123456', '13785418521', 'sys@qq.com');
