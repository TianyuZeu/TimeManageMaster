/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.5.59 : Database - tmm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tmm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tmm`;

/*Table structure for table `activity` */

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `ID` varchar(50) NOT NULL,
  `CUSTOMER_ID` varchar(50) DEFAULT NULL,
  `SITE_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CUSTOMER_ACTIVITY_PK` (`CUSTOMER_ID`),
  KEY `SITE_ACTIVITY_PK` (`SITE_ID`),
  CONSTRAINT `CUSTOMER_ACTIVITY_PK` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`ID`),
  CONSTRAINT `SITE_ACTIVITY_PK` FOREIGN KEY (`SITE_ID`) REFERENCES `site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `activity` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `ID` varchar(50) NOT NULL,
  `CUSTOMER_TYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CUSTOMER_TYPE_PK` (`CUSTOMER_TYPE`),
  CONSTRAINT `CUSTOMER_TYPE_PK` FOREIGN KEY (`CUSTOMER_TYPE`) REFERENCES `customer_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

/*Table structure for table `customer_type` */

DROP TABLE IF EXISTS `customer_type`;

CREATE TABLE `customer_type` (
  `ID` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_type` */

/*Table structure for table `site` */

DROP TABLE IF EXISTS `site`;

CREATE TABLE `site` (
  `ID` varchar(50) NOT NULL,
  `SITE_TYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SITE_TYPE_PK` (`SITE_TYPE`),
  CONSTRAINT `SITE_TYPE_PK` FOREIGN KEY (`SITE_TYPE`) REFERENCES `site_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `site` */

/*Table structure for table `site_type` */

DROP TABLE IF EXISTS `site_type`;

CREATE TABLE `site_type` (
  `ID` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `site_type` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
