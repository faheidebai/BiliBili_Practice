/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : bilibilidata

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-12-23 20:39:51
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
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`AuthorId`) REFERENCES `userinfo` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', '1', 'testtest');
INSERT INTO `comments` VALUES ('2', '1', '1', 'test');
INSERT INTO `comments` VALUES ('4', '1', '1', 'werwer');

-- ----------------------------
-- Table structure for `moiveinfos`
-- ----------------------------
DROP TABLE IF EXISTS `moiveinfos`;
CREATE TABLE `moiveinfos` (
  `TopicId` int(11) NOT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Image` varchar(1024) DEFAULT NULL,
  `Titile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Moive` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `AuthorId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `moiveinfos_ibfk_1` (`AuthorId`),
  KEY `TopicId` (`TopicId`),
  KEY `Id` (`Id`),
  CONSTRAINT `moiveinfos_ibfk_1` FOREIGN KEY (`AuthorId`) REFERENCES `userinfo` (`userid`),
  CONSTRAINT `moiveinfos_ibfk_2` FOREIGN KEY (`TopicId`) REFERENCES `topics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moiveinfos
-- ----------------------------
INSERT INTO `moiveinfos` VALUES ('1', '1', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\1.jpg', '【木鱼微剧场】诺兰作品《星际穿越》，严谨的科学精神与深刻人文关怀（Re:C）', '<iframe src=\"//player.bilibili.com/player.html?aid=38334623&cid=67380030&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"yes\" framespacing=\"0\" allowfullscreen=\"true\" style=\"width:90%;height:90%;\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('1', '2', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\2.jpg', '【HP/治愈/燃虐】【韦斯莱双子】准备好又笑又哭了吗。用玩笑治愈悲伤，韦斯莱是我们的王。献给Weasley精神。', '<iframe src=\"//player.bilibili.com/player.html?aid=38612690&cid=67874222&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '3', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\3.jpg', '【哈利波特/韦斯莱双子/高虐慎点】天堂是个很近的地方', '<iframe src=\"//player.bilibili.com/player.html?aid=8323766&cid=13697187&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '4', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\4.jpg', '【Giao哥同名单曲】Giaoger 【1080p】', '<iframe src=\"//player.bilibili.com/player.html?aid=38593172&cid=67842647&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '5', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\5.jpg', '【白问】既然头发留不住，还是做个主创好', '<iframe src=\"//player.bilibili.com/player.html?aid=38835859&cid=68258992&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '6', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\6.jpg', '灌篮高手主题曲《直到世界的尽头》,前奏一响起瞬间泪目', '<iframe src=\"//player.bilibili.com/player.html?aid=21034978&cid=34501393&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '7', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\7.jpg', '峡谷运动会18：6大英雄长跑竞速，骑着马的关羽都没他们走得快！', '<iframe src=\"//player.bilibili.com/player.html?aid=38855166&cid=68292473&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '8', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\8.jpg', '为什么兔子一喝水，就会立马断肠而亡？涨知识了', '<iframe src=\"//player.bilibili.com/player.html?aid=38582184&cid=67823645&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '9', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\9.jpg', '【劲爆】钢铁侠最帅战斗集锦', '<iframe src=\"//player.bilibili.com/player.html?aid=37475161&cid=65875626&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '10', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\10.jpg', '【神一般的中国广告合集10】把你的眼泪交出来', '<iframe src=\"//player.bilibili.com/player.html?aid=6406858&cid=10414922&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('1', '11', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\11.jpg', '【泰国广告】这个内衣广告我服', '<iframe src=\"//player.bilibili.com/player.html?aid=20975401&cid=34387758&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '2');
INSERT INTO `moiveinfos` VALUES ('1', '12', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\12.jpg', '宇宙【全14集】', '<iframe src=\"//player.bilibili.com/player.html?aid=8872235&cid=14639496&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '2');
INSERT INTO `moiveinfos` VALUES ('1', '13', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\13.jpg', '我给熊猫当“爸爸”', '<iframe src=\"//player.bilibili.com/player.html?aid=5418908&cid=8808385&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '2');
INSERT INTO `moiveinfos` VALUES ('1', '14', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\14.jpg', '【枪声音乐】用绝地求生的方式打开《Nevada》', '<iframe src=\"//player.bilibili.com/player.html?aid=32797459&cid=57399586&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '2');
INSERT INTO `moiveinfos` VALUES ('1', '15', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\15.jpg', '【Giao哥同名单曲】Giaoger 【1080p】', '<iframe src=\"//player.bilibili.com/player.html?aid=38593172&cid=67842647&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '2');
INSERT INTO `moiveinfos` VALUES ('1', '16', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\16.jpg', '【白问】既然头发留不住，还是做个主创好', '<iframe src=\"//player.bilibili.com/player.html?aid=38835859&cid=68258992&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '2');
INSERT INTO `moiveinfos` VALUES ('0', '19', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\17.jpg', '「太吾绘卷」当玩家在璇女派开后宫三年', '<iframe src=\"//player.bilibili.com/player.html?aid=35446187&cid=62140283&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '20', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\18.jpg', '【屎O说】《地铁》的下面藏着什么呢？', '<iframe src=\"//player.bilibili.com/player.html?aid=21876339&cid=36112996&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('0', '21', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\19.jpg', '【TGA】《地铁：离去》实机演示视频1080P60FPS', '<iframe src=\"//player.bilibili.com/player.html?aid=20328098&cid=33211162&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '1');
INSERT INTO `moiveinfos` VALUES ('1', '22', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\20.jpg', '《尼尔：机械纪元》2B动作捕捉女演员剑舞表演', '<iframe src=\"//player.bilibili.com/player.html?aid=9934242&cid=16422814&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>', '2');
INSERT INTO `moiveinfos` VALUES ('1', '23', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\16.jpg', '我test', 'wetwe', '2');
INSERT INTO `moiveinfos` VALUES ('1', '25', 'D:\\WorkSpace\\bilibili\\WebRoot\\html\\img\\MoiveImage\\16.jpg', '我test', 'werw', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '发黑的白', 'heibai', '开心就好', '1');
INSERT INTO `userinfo` VALUES ('2', '发白的黑', 'eg', 'ewtrw', '2');
INSERT INTO `userinfo` VALUES ('3', 'test', 'tewt', 'wet', '3');
INSERT INTO `userinfo` VALUES ('4', 'werwer', 'waesrw', 'qwr', '4');

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
