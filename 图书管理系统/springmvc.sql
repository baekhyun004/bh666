/*
Navicat MySQL Data Transfer

Source Server         : Baekhyun
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : springmvc

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2021-12-09 10:29:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '张三', 'zhangsan123');
INSERT INTO `admin` VALUES ('5', '1', '123');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `b_id` int NOT NULL,
  `b_name` varchar(50) DEFAULT NULL,
  `b_author` varchar(50) DEFAULT NULL,
  `b_num` int DEFAULT NULL,
  `b_left` int DEFAULT NULL,
  `b_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`b_id`),
  KEY `a` (`b_type`),
  CONSTRAINT `a` FOREIGN KEY (`b_type`) REFERENCES `book_type` (`b_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('11', '西游记', '吴承恩', '20', '12', '古代名著');
INSERT INTO `book` VALUES ('12', '红楼梦', '曹雪芹', '20', '13', '古代名著');
INSERT INTO `book` VALUES ('13', '三国演义', '罗贯中', '20', '12', '古代名著');
INSERT INTO `book` VALUES ('14', '水浒传', '施耐庵', '20', '16', '古代名著');
INSERT INTO `book` VALUES ('15', '四级英语必刷', '星火英语出版社', '30', '17', '学习资料');
INSERT INTO `book` VALUES ('16', '大学计算机基础', '上海大学出版', '30', '13', '学习资料');
INSERT INTO `book` VALUES ('17', '名人传', '罗曼罗兰', '40', '26', '外国名著');
INSERT INTO `book` VALUES ('18', '复活', '列夫托尔斯泰', '40', '34', '外国名著');
INSERT INTO `book` VALUES ('19', '百年孤独', '加夫列尔加西亚马尔克斯', '40', '24', '外国名著');

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type` (
  `b_type` varchar(50) NOT NULL,
  `t_num` int DEFAULT NULL,
  PRIMARY KEY (`b_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of book_type
-- ----------------------------
INSERT INTO `book_type` VALUES ('古代名著', '6');
INSERT INTO `book_type` VALUES ('外国名著', '3');
INSERT INTO `book_type` VALUES ('学习资料', '2');

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `b_id` int DEFAULT NULL,
  `s_id` int DEFAULT NULL,
  `b_time` datetime DEFAULT NULL,
  `r_time` datetime DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  KEY `s_id` (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES ('11', '201', '2021-11-01 11:15:59', '2021-11-30 11:16:40', '已还');
INSERT INTO `borrow` VALUES ('12', '202', '2021-10-05 11:16:04', '2021-12-03 11:16:44', '未还');
INSERT INTO `borrow` VALUES ('13', '204', '2021-11-14 11:16:21', '2021-12-04 11:17:05', '已还');
INSERT INTO `borrow` VALUES ('13', '204', '2021-11-14 11:16:21', '2021-12-04 11:17:05', '未还');
INSERT INTO `borrow` VALUES ('14', '205', '2021-10-19 11:16:16', '2021-12-04 11:17:00', '已还');
INSERT INTO `borrow` VALUES ('13', '206', '2021-11-14 11:16:21', '2021-12-04 11:17:05', '未还');
INSERT INTO `borrow` VALUES ('16', '207', '2021-11-09 11:16:26', '2021-11-27 11:17:09', '已还');
INSERT INTO `borrow` VALUES ('18', '207', '2021-11-13 11:16:31', '2021-12-04 11:17:13', '已还');
INSERT INTO `borrow` VALUES ('19', '209', '2021-11-26 11:16:35', '2021-11-09 11:17:17', '已还');
INSERT INTO `borrow` VALUES ('19', '201', '2021-12-24 15:26:13', '2021-12-09 00:00:00', '未还');
INSERT INTO `borrow` VALUES ('20', '211', '2021-12-07 00:00:00', '2021-12-18 00:00:00', '未还');

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `s_id` int NOT NULL,
  `s_name` varchar(50) DEFAULT NULL,
  `s_sex` varchar(50) DEFAULT NULL,
  `s_class` varchar(50) DEFAULT NULL,
  `s_bnum` int DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  CONSTRAINT `b` FOREIGN KEY (`s_id`) REFERENCES `borrow` (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES ('201', '李四', '男', '计算机网络技术', '1');
INSERT INTO `reader` VALUES ('202', '王五', '男', '计算机网络技术', '1');
INSERT INTO `reader` VALUES ('204', '马六', '男', '软件技术', '2');
INSERT INTO `reader` VALUES ('205', '小李', '女', '软件技术', '1');
INSERT INTO `reader` VALUES ('206', '小王', '男', '商务英语', '1');
INSERT INTO `reader` VALUES ('207', '小张', '女', '应用开发', '2');
INSERT INTO `reader` VALUES ('209', '小马', '女', '云计算', '1');
