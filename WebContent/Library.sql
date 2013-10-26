/*
SQLyog Community v11.23 (64 bit)
MySQL - 5.6.11-log : Database - newlibrary
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`newlibrary` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `newlibrary`;

/*Table structure for table `book_details` */

DROP TABLE IF EXISTS `book_details`;

CREATE TABLE `book_details` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pages` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `isbn` varchar(200) DEFAULT NULL,
  `edition` varchar(200) DEFAULT NULL,
  `publication` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `book_details` */

insert  into `book_details`(`id`,`name`,`pages`,`category`,`price`,`isbn`,`edition`,`publication`,`author`) values (1,'ANCI C','543','Text Book','500','9884858702','2nd','TATA Mecrawhill','Balagurusamy');

/*Table structure for table `issue_book` */

DROP TABLE IF EXISTS `issue_book`;

CREATE TABLE `issue_book` (
  `user_id` varchar(200) DEFAULT NULL,
  `book_id` varchar(200) DEFAULT NULL,
  `issue_date` varchar(200) DEFAULT NULL,
  `renual_date` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `issue_book` */

insert  into `issue_book`(`user_id`,`book_id`,`issue_date`,`renual_date`) values ('11MCA04	','1','26/10/2013','10/11/2013');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`pwd`) values (1,'ramesh','ramesh'),(2,'baskar','baskar');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
