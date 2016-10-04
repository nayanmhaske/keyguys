/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.25a : Database - keys
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `keys`;

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `b_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `b_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `compatibility` */

DROP TABLE IF EXISTS `compatibility`;

CREATE TABLE `compatibility` (
  `c_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `m_id1` int(11) DEFAULT NULL,
  `m_id2` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `img_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `img_link` varchar(200) DEFAULT NULL,
  `img_disc` varchar(200) DEFAULT NULL,
  `m_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Table structure for table `model` */

DROP TABLE IF EXISTS `model`;

CREATE TABLE `model` (
  `m_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL,
  `m_code` varchar(200) DEFAULT NULL,
  `m_buttons` varchar(200) DEFAULT NULL,
  `m_frequency` varchar(200) DEFAULT NULL,
  `m_encryption` varchar(200) DEFAULT NULL,
  `m_battery` varchar(200) DEFAULT NULL,
  `m_name` varchar(200) DEFAULT NULL,
  `m_disc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `model_product_id` (`p_id`),
  KEY `model_brand_id` (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `p_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_type` varchar(45) DEFAULT NULL,
  `p_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
