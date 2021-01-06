/*
Navicat MySQL Data Transfer

Source Server         : springboottest
Source Server Version : 50559
Source Host           : localhost:3306
Source Database       : tmm

Target Server Type    : MYSQL
Target Server Version : 50559
File Encoding         : 65001

Date: 2021-01-06 21:11:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `ID` varchar(50) NOT NULL,
  `CUSTOMER_ID` varchar(50) DEFAULT NULL,
  `SITE_ID` varchar(50) DEFAULT NULL,
  `ACTIVITY_NAME` varchar(50) DEFAULT NULL,
  `ACTIVITY_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CUSTOMER_ACTIVITY_PK` (`CUSTOMER_ID`),
  KEY `SITE_ACTIVITY_PK` (`SITE_ID`),
  CONSTRAINT `CUSTOMER_ACTIVITY_PK` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`ID`),
  CONSTRAINT `SITE_ACTIVITY_PK` FOREIGN KEY (`SITE_ID`) REFERENCES `site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '1', '1', '上班', '2021-01-06 11:07:02', '没事儿');
INSERT INTO `activity` VALUES ('2', '1', '1', '回家', '2021-01-06 11:07:02', '开心');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `ID` varchar(50) NOT NULL,
  `CUSTOMER_TYPE` varchar(50) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CUSTOMER_TYPE_PK` (`CUSTOMER_TYPE`),
  CONSTRAINT `CUSTOMER_TYPE_PK` FOREIGN KEY (`CUSTOMER_TYPE`) REFERENCES `customer_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '1', '张三');

-- ----------------------------
-- Table structure for customer_type
-- ----------------------------
DROP TABLE IF EXISTS `customer_type`;
CREATE TABLE `customer_type` (
  `ID` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_type
-- ----------------------------
INSERT INTO `customer_type` VALUES ('1', '单人');
INSERT INTO `customer_type` VALUES ('2', '集体');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `ID` varchar(50) NOT NULL COMMENT '员工表',
  `EMPLOYEE_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------

-- ----------------------------
-- Table structure for site
-- ----------------------------
DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `ID` varchar(50) NOT NULL,
  `SITE_TYPE` varchar(50) DEFAULT NULL,
  `SITE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SITE_TYPE_PK` (`SITE_TYPE`),
  CONSTRAINT `SITE_TYPE_PK` FOREIGN KEY (`SITE_TYPE`) REFERENCES `site_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site
-- ----------------------------
INSERT INTO `site` VALUES ('1', '1', '比例车站');

-- ----------------------------
-- Table structure for site_type
-- ----------------------------
DROP TABLE IF EXISTS `site_type`;
CREATE TABLE `site_type` (
  `ID` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_type
-- ----------------------------
INSERT INTO `site_type` VALUES ('1', '单人');
INSERT INTO `site_type` VALUES ('2', '集体');
