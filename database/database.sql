/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.6.35-log : Database - message_filter
*********************************************************************
Server version : 5.6.35-log
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `message_filter`;

USE `message_filter`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `adminreji` */

DROP TABLE IF EXISTS `adminreji`;

CREATE TABLE `adminreji` (
  `sno1` int(20) NOT NULL AUTO_INCREMENT,
  `name1` varchar(255) NOT NULL,
  `gen1` varchar(255) NOT NULL,
  `dob1` varchar(255) NOT NULL,
  `mobile1` varchar(255) NOT NULL,
  `email1` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `uname1` varchar(255) NOT NULL,
  `pass1` varchar(255) NOT NULL,
  PRIMARY KEY (`sno1`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `adminreji` */

insert into `adminreji`(`sno1`,`name1`,`gen1`,`dob1`,`mobile1`,`email1`,`address1`,`uname1`,`pass1`) values (1,'admin','male','2000-01-01','0000000000','admin@example.com','N/A','admin','admin');

/*Table structure for table `chats` */

DROP TABLE IF EXISTS `chats`;

CREATE TABLE `chats` (
  `sno1` int(25) NOT NULL AUTO_INCREMENT,
  `sender1` varchar(255) NOT NULL,
  `sender_id1` varchar(255) NOT NULL,
  `getter1` varchar(255) NOT NULL,
  `getter_id1` varchar(255) NOT NULL,
  `date_time1` varchar(255) NOT NULL,
  `message1` varchar(255) NOT NULL,
  PRIMARY KEY (`sno1`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `chats` */


/*Table structure for table `commentneed` */

DROP TABLE IF EXISTS `commentneed`;

CREATE TABLE `commentneed` (
  `sno1` int(20) NOT NULL AUTO_INCREMENT,
  `name1` varchar(255) NOT NULL,
  `need1` varchar(255) NOT NULL,
  PRIMARY KEY (`sno1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `commentneed` */

/*Table structure for table `filteravg` */

DROP TABLE IF EXISTS `filteravg`;

CREATE TABLE `filteravg` (
  `sno1` int(20) NOT NULL AUTO_INCREMENT,
  `vio1` int(20) NOT NULL,
  `vul` int(20) NOT NULL,
  `off1` int(20) NOT NULL,
  `hate1` int(20) NOT NULL,
  `sex1` int(20) NOT NULL,
  `Total1` int(20) NOT NULL,
  `date1` varchar(255) NOT NULL,
  `user_id1` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno1`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `filteravg` */


/*Table structure for table `filtermessage` */

DROP TABLE IF EXISTS `filtermessage`;

CREATE TABLE `filtermessage` (
  `sno1` int(20) NOT NULL AUTO_INCREMENT,
  `detail11` varchar(255) NOT NULL,
  `detail21` varchar(255) NOT NULL,
  PRIMARY KEY (`sno1`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `filtermessage` */

insert  into `filtermessage`(`sno1`,`detail11`,`detail21`) values (18,'Violence','zxcv'),(19,'Hate','stupid'),(20,'Violence','idiot'),(21,'Offensive','good'),(22,'Vulgar','bnm'),(23,'Violence','hat');

/*Table structure for table `insertfriend` */

DROP TABLE IF EXISTS `insertfriend`;

CREATE TABLE `insertfriend` (
  `sno1` int(25) NOT NULL AUTO_INCREMENT,
  `sender1` varchar(255) NOT NULL,
  `sender_uid1` varchar(255) NOT NULL,
  `getter1` varchar(255) NOT NULL,
  `getter_uid1` varchar(255) NOT NULL,
  `date1` varchar(255) NOT NULL,
  PRIMARY KEY (`sno1`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `insertfriend` */


/*Table structure for table `userpost` */

DROP TABLE IF EXISTS `userpost`;

CREATE TABLE `userpost` (
  `id1` int(10) NOT NULL AUTO_INCREMENT,
  `name1` varchar(20) DEFAULT NULL,
  `comment1` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id1`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `userpost` */


/*Table structure for table `userregi` */

DROP TABLE IF EXISTS `userregi`;

CREATE TABLE `userregi` (
  `sno1` int(50) NOT NULL AUTO_INCREMENT,
  `name1` varchar(255) DEFAULT NULL,
  `gen1` varchar(255) DEFAULT NULL,
  `dob1` varchar(255) DEFAULT NULL,
  `mobile1` varchar(255) DEFAULT NULL,
  `mail_id1` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `user_id1` varchar(255) DEFAULT NULL,
  `pass1` varchar(255) DEFAULT NULL,
  `image1` longblob,
  `reg_date1` varchar(255) DEFAULT NULL,
  `user_reg_id1` varchar(255) DEFAULT NULL,
  `status1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno1`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `userregi` */


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
