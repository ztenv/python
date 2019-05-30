/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.16 : Database - zc_mms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zc_mms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `zc_mms`;

/*Table structure for table `huobi_1m_kline` */

DROP TABLE IF EXISTS `huobi_1m_kline`;

CREATE TABLE `huobi_1m_kline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contract_id` tinyint(10) NOT NULL,
  `timestamp` bigint(13) NOT NULL,
  `high_price` decimal(20,8) DEFAULT '-1.00000000',
  `open_price` decimal(20,8) DEFAULT '-1.00000000',
  `low_price` decimal(20,8) DEFAULT '-1.00000000',
  `close_price` decimal(20,8) DEFAULT '-1.00000000',
  `volume` decimal(20,8) DEFAULT '-1.00000000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`contract_id`,`timestamp`),
  KEY `contract_id_index` (`contract_id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `id_index` (`id`),
  KEY `con_time` (`contract_id`,`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `huobi_1m_kline` */

insert  into `huobi_1m_kline`(`id`,`contract_id`,`timestamp`,`high_price`,`open_price`,`low_price`,`close_price`,`volume`) values 
(1,1,1557450660000,10.98000000,8.74000000,5.30000000,9.25000000,123.88888888),
(6,1,1557450660001,10.98000000,8.74000000,5.30000000,9.25000000,123.88888888),
(7,1,1557450660002,10.98000000,8.74000000,5.30000000,9.25000000,123.88888888),
(8,1,1557450660010,10.98000000,8.74000000,5.30000000,9.25000000,123.88888888);

/*Table structure for table `huobi_kline` */

DROP TABLE IF EXISTS `huobi_kline`;

CREATE TABLE `huobi_kline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contract_id` tinyint(10) NOT NULL,
  `timestamp` bigint(13) NOT NULL,
  `kline_type` int(2) NOT NULL DEFAULT '0' COMMENT '0:5,1:10,2:15,3:30,4:60,5:日k',
  `high_price` decimal(20,8) DEFAULT '-1.00000000',
  `open_price` decimal(20,8) DEFAULT '-1.00000000',
  `low_price` decimal(20,8) DEFAULT '-1.00000000',
  `close_price` decimal(20,8) DEFAULT '-1.00000000',
  `volume` decimal(20,8) DEFAULT '-1.00000000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`contract_id`,`timestamp`,`kline_type`),
  KEY `contract_id_index` (`contract_id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `id_index` (`id`),
  KEY `kline_type_index` (`kline_type`),
  KEY `con_tim_type` (`contract_id`,`timestamp`,`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `huobi_kline` */

insert  into `huobi_kline`(`id`,`contract_id`,`timestamp`,`kline_type`,`high_price`,`open_price`,`low_price`,`close_price`,`volume`) values 
(1,1,1557450660000,0,10.98000000,8.74000000,5.30000000,9.25000000,123.88888888),
(3,1,1557450660001,0,10.98000000,8.74000000,5.30000000,9.25000000,123.88888888),
(4,1,1557450660001,1,10.98000000,8.74000000,5.30000000,9.25000000,123.88888888),
(5,1,1557450660000,1,10.98000000,8.74000000,5.30000000,9.25000000,123.88888888),
(6,1,1557450660002,0,10.98000012,8.74000000,5.30000009,9.25000001,123.88888888),
(7,1,1557450660003,0,10.98000012,8.74000001,5.30000009,9.25000001,123.88888888),
(8,1,1557450660013,0,10.98000012,8.74000001,5.30000009,9.25000001,123.88888888);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
