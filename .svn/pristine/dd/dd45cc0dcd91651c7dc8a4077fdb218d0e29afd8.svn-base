/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : crmdb

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-11-06 08:58:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `crm_class`
-- ----------------------------
DROP TABLE IF EXISTS `crm_class`;
CREATE TABLE `crm_class` (
  `classId` varchar(50) NOT NULL,
  `courseTypeId` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `totalCount` int(11) DEFAULT NULL,
  `upgradeCount` int(11) DEFAULT NULL,
  `changeCount` int(11) DEFAULT NULL,
  `runoffCount` int(11) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  `uploadPath` varchar(200) DEFAULT NULL,
  `uploadFilename` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`classId`),
  KEY `courseTypeId` (`courseTypeId`),
  CONSTRAINT `crm_class_ibfk_1` FOREIGN KEY (`courseTypeId`) REFERENCES `crm_course_type` (`courseTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_class
-- ----------------------------
INSERT INTO `crm_class` VALUES ('2c9091c14c78e58b014c78e8cc62000a', '2c9091c14c78e58b014c78e829b70008', '2期', null, null, null, null, null, null, null, null, '2017-10-21 18:06:00', '/upload/20171021180559515015..gif', '20171021180559515015..gif');
INSERT INTO `crm_class` VALUES ('2c9091c14c78e58b014c78e9106e000b', '2c9091c14c78e58b014c78e829b70008', '2期', '2016-04-28 00:00:00', '2016-05-27 00:00:00', null, '67', '0', '0', '0', '', '2017-10-21 18:04:20', '/upload/20171021180419615488..jpg', '20171021180419615488..jpg');
INSERT INTO `crm_class` VALUES ('2c9091c14c78e58b014c78e9601a000c', '2c9091c14c78e58b014c78e867b80009', '1期ee', '2016-03-29 00:00:00', '2016-07-13 00:00:00', null, '120', '0', '0', '0', '', '2017-10-21 19:48:50', '/upload/20171021194850157079..jpg', '20171021194850157079..jpg');
INSERT INTO `crm_class` VALUES ('bc0ddf7f522d45018cc275916bd854c9', '2c9091c14c78e58b014c78e829b70008', '1704', '2017-08-01 00:00:00', '2017-12-08 00:00:00', null, null, null, null, null, '垃圾中的极品家', null, null, null);

-- ----------------------------
-- Table structure for `crm_course_type`
-- ----------------------------
DROP TABLE IF EXISTS `crm_course_type`;
CREATE TABLE `crm_course_type` (
  `courseTypeId` varchar(255) NOT NULL,
  `courseCost` double DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `courseName` varchar(500) DEFAULT NULL,
  `remark` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`courseTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_course_type
-- ----------------------------
INSERT INTO `crm_course_type` VALUES ('2c9091c14c78e58b014c78e829b70008', '2000', '1000', 'JAVAEE', '嘻嘻嘻嘻嘻');
INSERT INTO `crm_course_type` VALUES ('2c9091c14c78e58b014c78e867b80009', '18000', '4000', '大数据', '');
INSERT INTO `crm_course_type` VALUES ('57e426d4894d46e78c0eacd15cc3666a', '20000', '456', 'HTML5', '毒贩夫妇付付过');

-- ----------------------------
-- Table structure for `crm_department`
-- ----------------------------
DROP TABLE IF EXISTS `crm_department`;
CREATE TABLE `crm_department` (
  `depId` varchar(255) NOT NULL,
  `depName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`depId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_department
-- ----------------------------
INSERT INTO `crm_department` VALUES ('2c9091c14c78e58b014c78e67de10001', 'JAVAEE11');
INSERT INTO `crm_department` VALUES ('2c9091c14c78e58b014c78e68ded0002', '技术部');
INSERT INTO `crm_department` VALUES ('e29cc1d5b32211e7b4b9985aebda98e1', '人事部');

-- ----------------------------
-- Table structure for `crm_follow`
-- ----------------------------
DROP TABLE IF EXISTS `crm_follow`;
CREATE TABLE `crm_follow` (
  `followId` varchar(32) NOT NULL,
  `followTime` datetime DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `staffId` varchar(32) DEFAULT NULL,
  `referId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`followId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_follow
-- ----------------------------
INSERT INTO `crm_follow` VALUES ('389d37f24d944e73a0d09d4b64c3aa49', '2017-10-19 19:35:25', '阿斌', '1', '1');

-- ----------------------------
-- Table structure for `crm_graduate`
-- ----------------------------
DROP TABLE IF EXISTS `crm_graduate`;
CREATE TABLE `crm_graduate` (
  `graduateId` varchar(32) NOT NULL,
  `studentId` varchar(32) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `entryTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `classId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`graduateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_graduate
-- ----------------------------
INSERT INTO `crm_graduate` VALUES ('123', '1', '千峰教育培训机构', '20000', '讲师', '2017-10-18 09:10:34', null, '2c9091c14c78e58b014c78e8cc62000a');

-- ----------------------------
-- Table structure for `crm_post`
-- ----------------------------
DROP TABLE IF EXISTS `crm_post`;
CREATE TABLE `crm_post` (
  `postId` varchar(255) NOT NULL,
  `postName` varchar(100) DEFAULT NULL,
  `depId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`postId`),
  KEY `depId` (`depId`),
  CONSTRAINT `crm_post_ibfk_1` FOREIGN KEY (`depId`) REFERENCES `crm_department` (`depId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_post
-- ----------------------------
INSERT INTO `crm_post` VALUES ('2c9091c14c78e58b014c78e6b34a0003', '总监', 'e29cc1d5b32211e7b4b9985aebda98e1');
INSERT INTO `crm_post` VALUES ('2c9091c14c78e58b014c78e6d4510004', '讲师', '2c9091c14c78e58b014c78e67de10001');
INSERT INTO `crm_post` VALUES ('2c9091c14c78e58b014c78e6f2340005', '主管', '2c9091c14c78e58b014c78e68ded0002');
INSERT INTO `crm_post` VALUES ('aed1e088b32f11e7b4b9985aebda98e1', '助理', '2c9091c14c78e58b014c78e67de10001');
INSERT INTO `crm_post` VALUES ('ce0b8a0db32f11e7b4b9985aebda98e1', '苦工', '2c9091c14c78e58b014c78e68ded0002');

-- ----------------------------
-- Table structure for `crm_refer`
-- ----------------------------
DROP TABLE IF EXISTS `crm_refer`;
CREATE TABLE `crm_refer` (
  `referId` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `QQ` varchar(30) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `intentionLevel` varchar(50) DEFAULT NULL,
  `courseTypeId` varchar(32) DEFAULT NULL,
  `classId` varchar(32) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `staffId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`referId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_refer
-- ----------------------------
INSERT INTO `crm_refer` VALUES ('0fda3d2bb30b11e7b4b9985aebda98e1', '', '', '', null, '', '2c9091c14c78e58b014c78e867b80009', '2c9091c14c78e58b014c78e8cc62000a', '', '1', '', '1');
INSERT INTO `crm_refer` VALUES ('1', '阿朱', '2344', '233', '2017-10-16 20:00:56', '111', '2c9091c14c78e58b014c78e867b80009', '2c9091c14c78e58b014c78e8cc62000a', null, '2', null, '1');
INSERT INTO `crm_refer` VALUES ('4ff726ebb30a11e7b4b9985aebda98e1', '阿甘', '10086', '123456', null, '', '2c9091c14c78e58b014c78e867b80009', '2c9091c14c78e58b014c78e9106e000b', '', '1', '', '2c9091c14c78e58b014c78e759b40006');
INSERT INTO `crm_refer` VALUES ('8a4ddc8eb30711e7b4b9985aebda98e1', '小明', '10010', '4756889', null, '', '2c9091c14c78e58b014c78e867b80009', '2c9091c14c78e58b014c78e9106e000b', '', '1', '', '2c9091c14c78e58b014c78e759b40006');
INSERT INTO `crm_refer` VALUES ('8bd11a9bb30b11e7b4b9985aebda98e1', '', '', '', null, '', '57e426d4894d46e78c0eacd15cc3666a', '2c9091c14c78e58b014c78e9601a000c', '', '2', '', '2c9091c14c78e58b014c78e7ecd90007');
INSERT INTO `crm_refer` VALUES ('a6acd705b30811e7b4b9985aebda98e1', '', '', '', '2017-10-17 14:58:52', '', '57e426d4894d46e78c0eacd15cc3666a', '2c9091c14c78e58b014c78e9601a000c', '', '2', '', '2c9091c14c78e58b014c78e7ecd90007');
INSERT INTO `crm_refer` VALUES ('c911649db47011e7af19985aebda98e1', '苏老茧', '4265446546', '423656', null, 'B', '2c9091c14c78e58b014c78e867b80009', '2c9091c14c78e58b014c78e9601a000c', '网络', null, 'sad大大多撒多撒多', '14c78e58b014c78e7ecd90007');

-- ----------------------------
-- Table structure for `crm_runoff`
-- ----------------------------
DROP TABLE IF EXISTS `crm_runoff`;
CREATE TABLE `crm_runoff` (
  `runOffId` varchar(32) NOT NULL,
  `studentId` varchar(32) NOT NULL,
  `staffId` varchar(32) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `isRefund` varchar(20) DEFAULT NULL,
  `refundAmount` varchar(32) DEFAULT NULL,
  `remark` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`runOffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_runoff
-- ----------------------------
INSERT INTO `crm_runoff` VALUES ('1', '1', '2c9091c14c78e58b014c78e759b40006', '2017-10-19 20:32:36', '否', null, '因为培训来及');

-- ----------------------------
-- Table structure for `crm_staff`
-- ----------------------------
DROP TABLE IF EXISTS `crm_staff`;
CREATE TABLE `crm_staff` (
  `staffId` varchar(255) NOT NULL,
  `loginName` varchar(100) DEFAULT NULL,
  `loginPwd` varchar(100) DEFAULT NULL,
  `staffName` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `onDutyDate` datetime DEFAULT NULL,
  `postId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staffId`),
  KEY `postId` (`postId`),
  CONSTRAINT `crm_staff_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `crm_post` (`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_staff
-- ----------------------------
INSERT INTO `crm_staff` VALUES ('1', 'admin', '123', '管理员', null, null, null);
INSERT INTO `crm_staff` VALUES ('2c9091c14c78e58b014c78e759b40006', 'hello', '123455666666666666', '小红', '男', '2016-04-16 00:00:00', 'ce0b8a0db32f11e7b4b9985aebda98e1');
INSERT INTO `crm_staff` VALUES ('2c9091c14c78e58b014c78e7ecd90007', 'lisi', '12323333333333333333', '李四', '女', '2016-04-24 00:00:00', 'aed1e088b32f11e7b4b9985aebda98e1');
INSERT INTO `crm_staff` VALUES ('3ed603b4b3b911e78e10985aebda98e1', 'adam', '123456', '阿甘', '男', '2017-07-24 00:00:00', '2c9091c14c78e58b014c78e6f2340005');

-- ----------------------------
-- Table structure for `crm_station`
-- ----------------------------
DROP TABLE IF EXISTS `crm_station`;
CREATE TABLE `crm_station` (
  `stationId` varchar(32) NOT NULL,
  `studentId` varchar(32) DEFAULT NULL,
  `flag` varchar(50) DEFAULT NULL,
  `staff` varchar(32) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `beforeClassId` varchar(32) DEFAULT NULL,
  `afterClassId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`stationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_station
-- ----------------------------
INSERT INTO `crm_station` VALUES ('111111', '1', '1', '111', '2017-10-19 17:40:29', '2c9091c14c78e58b014c78e8cc62000a', '2c9091c14c78e58b014c78e829b70008');

-- ----------------------------
-- Table structure for `crm_student`
-- ----------------------------
DROP TABLE IF EXISTS `crm_student`;
CREATE TABLE `crm_student` (
  `studentId` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `identify` varchar(28) DEFAULT NULL,
  `QQ` varchar(11) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `mustTuition` float(10,2) DEFAULT NULL,
  `actualTuition` float(10,2) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `professional` varchar(50) DEFAULT NULL,
  `identityAddress` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `homeTelephone` varchar(11) DEFAULT NULL,
  `homeContact` varchar(3) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  `classId` varchar(32) DEFAULT NULL,
  `referId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_student
-- ----------------------------
INSERT INTO `crm_student` VALUES ('0583afe4c0214e29913c366da0d56e6d', '都十分丰富', '545454', '545454', '54545454', null, '245454.00', '545454.00', '5454545454', '545454', '', '', '545454', '545454', '545454', '54545454', '5', null, '2c9091c14c78e58b014c78e8cc62000a', null);
INSERT INTO `crm_student` VALUES ('1', 'dison', '123456', null, '123456', '女', '20000.00', '25000.00', '123@qq.com', '西京学院', '大学', '本科', null, null, null, null, null, null, '2c9091c14c78e58b014c78e8cc62000a', null);
