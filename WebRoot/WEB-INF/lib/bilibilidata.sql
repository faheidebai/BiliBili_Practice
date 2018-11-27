/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : bilibilidata

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-11-27 22:17:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `MoiveId` int(11) NOT NULL,
  `AuthorId` int(11) NOT NULL,
  `Content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `AuthorId` (`AuthorId`),
  KEY `MoiveId` (`MoiveId`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`AuthorId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', '1', 'testtest');
INSERT INTO `comments` VALUES ('2', '1', '1', 'test');
INSERT INTO `comments` VALUES ('4', '1', '1', 'werwer');
INSERT INTO `comments` VALUES ('5', '1', '1', 'etryetr');

-- ----------------------------
-- Table structure for `moiveinfos`
-- ----------------------------
DROP TABLE IF EXISTS `moiveinfos`;
CREATE TABLE `moiveinfos` (
  `TopicId` int(11) NOT NULL,
  `Id` int(11) NOT NULL,
  `Image` varchar(1024) DEFAULT NULL,
  `Titile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Moive` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `AuthorId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `moiveinfos_ibfk_1` (`AuthorId`),
  KEY `TopicId` (`TopicId`),
  KEY `Id` (`Id`),
  CONSTRAINT `moiveinfos_ibfk_1` FOREIGN KEY (`AuthorId`) REFERENCES `users` (`id`),
  CONSTRAINT `moiveinfos_ibfk_2` FOREIGN KEY (`TopicId`) REFERENCES `topics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moiveinfos
-- ----------------------------
INSERT INTO `moiveinfos` VALUES ('1', '1', 'image1', 'titile', 'moive', '1');
INSERT INTO `moiveinfos` VALUES ('1', '2', 'image2', 'titile', 'moive', '1');
INSERT INTO `moiveinfos` VALUES ('0', '3', 'image3', 'titile', 'moive', '1');
INSERT INTO `moiveinfos` VALUES ('0', '4', 'image4', '1', '4', '1');
INSERT INTO `moiveinfos` VALUES ('0', '5', 'image5', '2', '4', '1');
INSERT INTO `moiveinfos` VALUES ('0', '6', 'image6', '3', '4', '1');
INSERT INTO `moiveinfos` VALUES ('0', '7', 'image7', '4', '4', '1');
INSERT INTO `moiveinfos` VALUES ('0', '8', 'image8', '5', '34', '1');
INSERT INTO `moiveinfos` VALUES ('0', '9', 'image9', '6', '45', '1');
INSERT INTO `moiveinfos` VALUES ('0', '10', 'image10', '1564', '84', '1');
INSERT INTO `moiveinfos` VALUES ('1', '11', 'rtyrty', 'tryrty', 'rtyrty', '2');
INSERT INTO `moiveinfos` VALUES ('1', '12', 'yutyu', 'kjhiuok', 'uyguyg', '2');
INSERT INTO `moiveinfos` VALUES ('1', '13', 'uio', 'ert', 'ert', '2');
INSERT INTO `moiveinfos` VALUES ('1', '14', 'ert', 'ert', 'ert', '2');
INSERT INTO `moiveinfos` VALUES ('1', '15', 'ert', 'ert', 'ert', '2');
INSERT INTO `moiveinfos` VALUES ('1', '16', 'wfd', 'sdf', 'sdf', '2');

-- ----------------------------
-- Table structure for `topics`
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TopicName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES ('0', '首页');
INSERT INTO `topics` VALUES ('1', '科技');
INSERT INTO `topics` VALUES ('2', '科技排行版');
INSERT INTO `topics` VALUES ('3', '游戏');
INSERT INTO `topics` VALUES ('4', '游戏排行版');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `Personality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `userinfo_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '发黑的白', 'heibai', '开心就好', '1');
INSERT INTO `userinfo` VALUES ('2', '发白的黑', 'eg', 'ewtrw', '2');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `Id_2` (`Id`),
  KEY `Id_3` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin');
INSERT INTO `users` VALUES ('2', 'test', 'admin');
INSERT INTO `users` VALUES ('3', 'game', 'admin');
INSERT INTO `users` VALUES ('4', 'novel', 'admin');
