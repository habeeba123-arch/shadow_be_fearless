/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.6.12-log : Database - shadow_be_fearless
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`shadow_be_fearless` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `shadow_be_fearless`;

/*Table structure for table `assign` */

DROP TABLE IF EXISTS `assign`;

CREATE TABLE `assign` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  PRIMARY KEY (`aid`,`pid`,`vid`),
  UNIQUE KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assign` */

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `complaint` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_lid` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `reply` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`,`user_lid`),
  UNIQUE KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

/*Table structure for table `dangerous` */

DROP TABLE IF EXISTS `dangerous`;

CREATE TABLE `dangerous` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(50) NOT NULL,
  `lati` varchar(50) NOT NULL,
  `longi` varchar(50) NOT NULL,
  `lid` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`did`,`lid`),
  UNIQUE KEY `did` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dangerous` */

/*Table structure for table `emergency_number` */

DROP TABLE IF EXISTS `emergency_number`;

CREATE TABLE `emergency_number` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `e_no` varchar(20) NOT NULL,
  `user_lid` int(11) NOT NULL,
  PRIMARY KEY (`eid`,`user_lid`),
  UNIQUE KEY `eid` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emergency_number` */

/*Table structure for table `emergency_request` */

DROP TABLE IF EXISTS `emergency_request`;

CREATE TABLE `emergency_request` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(50) NOT NULL,
  `lati` varchar(50) NOT NULL,
  `longi` varchar(50) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emergency_request` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`fid`,`uid`),
  UNIQUE KEY `fid` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `idea_image` */

DROP TABLE IF EXISTS `idea_image`;

CREATE TABLE `idea_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_puts` varchar(250) NOT NULL,
  `idea` varchar(250) NOT NULL,
  `user_lid` int(11) NOT NULL,
  PRIMARY KEY (`id`,`user_lid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `idea_image` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(200) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`nid`,`notification`,`date`) values (1,'dsf','2021-01-29'),(2,'hghjgj','2021-01-29');

/*Table structure for table `police` */

DROP TABLE IF EXISTS `police`;

CREATE TABLE `police` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `palace` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `distrit` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `lati` varchar(50) NOT NULL,
  `longi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `police` */

/*Table structure for table `safe_point` */

DROP TABLE IF EXISTS `safe_point`;

CREATE TABLE `safe_point` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(50) NOT NULL,
  `lati` varchar(50) NOT NULL,
  `longi` varchar(50) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `safe_point` */

/*Table structure for table `sub` */

DROP TABLE IF EXISTS `sub`;

CREATE TABLE `sub` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  PRIMARY KEY (`sid`,`lid`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sub` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `disrict` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `lid` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `lati` varchar(50) NOT NULL,
  `longi` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`,`lid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `v_number` varchar(20) NOT NULL,
  `v_type` varchar(20) NOT NULL,
  `lati` varchar(20) NOT NULL,
  `longi` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
