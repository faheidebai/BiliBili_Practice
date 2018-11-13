/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : bilibilidata

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-11-13 20:34:52
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
  PRIMARY KEY (`id`,`AuthorId`),
  KEY `AuthorId` (`AuthorId`),
  KEY `MoiveId` (`MoiveId`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`AuthorId`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`MoiveId`) REFERENCES `moiveinfos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for `moiveinfos`
-- ----------------------------
DROP TABLE IF EXISTS `moiveinfos`;
CREATE TABLE `moiveinfos` (
  `TopicId` int(11) NOT NULL,
  `Id` int(11) NOT NULL,
  `Image` varchar(1024) DEFAULT NULL,
  `Titile` varchar(255) NOT NULL,
  `Moive` varchar(1024) NOT NULL,
  `AuthorId` int(11) NOT NULL,
  PRIMARY KEY (`Id`,`AuthorId`),
  KEY `moiveinfos_ibfk_1` (`AuthorId`),
  KEY `TopicId` (`TopicId`),
  KEY `Id` (`Id`),
  CONSTRAINT `moiveinfos_ibfk_1` FOREIGN KEY (`AuthorId`) REFERENCES `users` (`id`),
  CONSTRAINT `moiveinfos_ibfk_2` FOREIGN KEY (`TopicId`) REFERENCES `topics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moiveinfos
-- ----------------------------

-- ----------------------------
-- Table structure for `topics`
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TopicName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topics
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
