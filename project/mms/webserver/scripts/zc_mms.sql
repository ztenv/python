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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zc_mms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `zc_mms`;

/*Table structure for table `bibox_1m_kline` */

DROP TABLE IF EXISTS `bibox_1m_kline`;

CREATE TABLE `bibox_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bibox_1m_kline` */

/*Table structure for table `bibox_kline` */

DROP TABLE IF EXISTS `bibox_kline`;

CREATE TABLE `bibox_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bibox_kline` */

/*Table structure for table `binance_1m_kline` */

DROP TABLE IF EXISTS `binance_1m_kline`;

CREATE TABLE `binance_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `binance_1m_kline` */

/*Table structure for table `binance_kline` */

DROP TABLE IF EXISTS `binance_kline`;

CREATE TABLE `binance_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `binance_kline` */

/*Table structure for table `bitfinex_1m_kline` */

DROP TABLE IF EXISTS `bitfinex_1m_kline`;

CREATE TABLE `bitfinex_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bitfinex_1m_kline` */

/*Table structure for table `bitfinex_kline` */

DROP TABLE IF EXISTS `bitfinex_kline`;

CREATE TABLE `bitfinex_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bitfinex_kline` */

/*Table structure for table `bitstamp_1m_kline` */

DROP TABLE IF EXISTS `bitstamp_1m_kline`;

CREATE TABLE `bitstamp_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bitstamp_1m_kline` */

/*Table structure for table `bitstamp_kline` */

DROP TABLE IF EXISTS `bitstamp_kline`;

CREATE TABLE `bitstamp_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bitstamp_kline` */

/*Table structure for table `bittrex_1m_kline` */

DROP TABLE IF EXISTS `bittrex_1m_kline`;

CREATE TABLE `bittrex_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bittrex_1m_kline` */

/*Table structure for table `bittrex_kline` */

DROP TABLE IF EXISTS `bittrex_kline`;

CREATE TABLE `bittrex_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bittrex_kline` */

/*Table structure for table `contract_info` */

DROP TABLE IF EXISTS `contract_info`;

CREATE TABLE `contract_info` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contract_id` bigint(10) NOT NULL COMMENT '币对ID',
  `exchange_id` bigint(10) NOT NULL COMMENT '交易所ID',
  `symbol_name` varchar(30) DEFAULT NULL COMMENT '内部名称',
  `contract_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '外部名称',
  `commodity_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `currency_id` int(11) DEFAULT NULL COMMENT '货币ID',
  `small_icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '小图标URL',
  `big_icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '大图标URL',
  `active` tinyint(4) DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`contract_id`,`contract_name`,`exchange_id`),
  KEY `no_index` (`contract_id`),
  KEY `name_index` (`contract_name`),
  KEY `active_index` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `contract_info` */

insert  into `contract_info`(`id`,`contract_id`,`exchange_id`,`symbol_name`,`contract_name`,`commodity_id`,`currency_id`,`small_icon_url`,`big_icon_url`,`active`) values 
(1,1,3,'BTC/USDT','btc_usdt',NULL,NULL,NULL,NULL,1),
(2,2,3,'ETH/USDT','eth_usdt',NULL,NULL,NULL,NULL,1),
(3,3,3,'BCH/USDT','bch_usdt',NULL,NULL,NULL,NULL,0),
(4,4,3,'LTC/USDT','ltc_usdt',NULL,NULL,NULL,NULL,1),
(5,5,3,'EOS/USDT','eos_usdt',NULL,NULL,NULL,NULL,1),
(6,6,3,'BTC/USD','btc_usd',NULL,NULL,NULL,NULL,0),
(7,7,3,'ETH/USD','eth_usd',NULL,NULL,NULL,NULL,0),
(8,8,3,'BCH/USD','bch_usd',NULL,NULL,NULL,NULL,0),
(9,9,3,'LTC/USD','ltc_usd',NULL,NULL,NULL,NULL,0),
(10,10,3,'EOS/USD','eos_usd',NULL,NULL,NULL,NULL,0),
(11,11,3,'XRP/USDT','xrp_usdt',NULL,NULL,NULL,NULL,1),
(12,12,3,'ETH/BTC','eth_btc',NULL,NULL,NULL,NULL,1),
(13,13,3,'EOS/BTC','eos_btc',NULL,NULL,NULL,NULL,1),
(14,14,3,'XRP/BTC','xrp_btc',NULL,NULL,NULL,NULL,1),
(15,15,3,'LTC/BTC','ltc_btc',NULL,NULL,NULL,NULL,1),
(16,1,1,'BTC/USDT','btcusdt',NULL,NULL,NULL,NULL,1),
(17,2,1,'ETH/USDT','ethusdt',NULL,NULL,NULL,NULL,1),
(18,4,1,'LTC/USDT','ltcusdt',NULL,NULL,NULL,NULL,1),
(19,5,1,'EOS/USDT','eosusdt',NULL,NULL,NULL,NULL,1),
(20,12,1,'ETH/BTC','ethbtc',NULL,NULL,NULL,NULL,1),
(21,13,1,'EOS/BTC','eosbtc',NULL,NULL,NULL,NULL,1),
(22,15,1,'LTC/BTC','ltcbtc',NULL,NULL,NULL,NULL,1),
(23,1,5,'BTC/USDT','BTC_USDT',NULL,NULL,NULL,NULL,1),
(24,2,5,'ETH/USDT','ETH_USDT',NULL,NULL,NULL,NULL,1),
(25,4,5,'LTC/USDT','LTC_USDT',NULL,NULL,NULL,NULL,1),
(26,5,5,'EOS/USDT','EOS_USDT',NULL,NULL,NULL,NULL,1),
(27,12,5,'ETH/BTC','ETH_BTC',NULL,NULL,NULL,NULL,1),
(28,13,5,'EOS/BTC','EOS_BTC',NULL,NULL,NULL,NULL,1),
(29,15,5,'LTC/BTC','LTC_BTC',NULL,NULL,NULL,NULL,1),
(30,11,0,'XRP/USDT','xrpusdt',NULL,NULL,NULL,NULL,1),
(31,14,0,'XRP/BTC','xrpbtc',NULL,NULL,NULL,NULL,1),
(32,1,0,'BTC/USDT','btcusdt',NULL,NULL,NULL,NULL,1),
(33,2,0,'ETH/USDT','ethusdt',NULL,NULL,NULL,NULL,1),
(34,4,0,'LTC/USDT','ltcusdt',NULL,NULL,NULL,NULL,1),
(35,5,0,'EOS/USDT','eosusdt',NULL,NULL,NULL,NULL,1),
(36,12,0,'ETH/BTC','ethbtc',NULL,NULL,NULL,NULL,1),
(37,13,0,'EOS/BTC','eosbtc',NULL,NULL,NULL,NULL,1),
(38,15,0,'LTC/BTC','ltcbtc',NULL,NULL,NULL,NULL,1),
(39,11,5,'XRP/USDT','XRP_USDT',NULL,NULL,NULL,NULL,1),
(40,14,5,'XRP/BTC','XRP_BTC',NULL,NULL,NULL,NULL,1),
(41,11,1,'XRP/USDT','xrpusdt',NULL,NULL,NULL,NULL,1),
(42,14,1,'XRP/BTC','xrpbtc',NULL,NULL,NULL,NULL,1),
(43,16,2,'QBI_USDT','QBI_USDT',NULL,NULL,NULL,NULL,1);

/*Table structure for table `exchange_info` */

DROP TABLE IF EXISTS `exchange_info`;

CREATE TABLE `exchange_info` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `exchange_id` bigint(10) NOT NULL COMMENT '交易所ID',
  `exchange_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '交易所名称',
  `small_icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '小图标URL',
  `big_icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '大图标URL',
  `remote_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '远程URL',
  `local_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '本地URL',
  `active` tinyint(4) DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`exchange_id`,`exchange_name`),
  KEY `no_index` (`exchange_id`),
  KEY `name_index` (`exchange_name`),
  KEY `active_index` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `exchange_info` */

insert  into `exchange_info`(`id`,`exchange_id`,`exchange_name`,`small_icon_url`,`big_icon_url`,`remote_url`,`local_url`,`active`) values 
(1,0,'binance',NULL,NULL,'wss://stream.binance.com:9443','tcp://127.0.0.1:23310',1),
(2,1,'huobipro',NULL,NULL,'wss://api.huobi.pro/ws','tcp://127.0.0.1:23320',1),
(3,2,'quantbroker',NULL,NULL,'wss://quantbrokertest.club:8081','tcp://127.0.0.1:23330',1),
(4,3,'okex',NULL,NULL,'wss://real.okex.com:10440/ws/v1','tcp://127.0.0.1:23340',1),
(5,4,'bitfinex',NULL,NULL,'wss://api.bitfinex.com/ws/2','tcp://127.0.0.1:23350',1),
(6,5,'gateio',NULL,NULL,'wss://ws.gate.io/v3/','tcp://127.0.0.1:23360',1),
(7,6,'bibox',NULL,NULL,'','tcp://127.0.0.1:23370',0),
(8,7,'bittrex',NULL,NULL,'https://socket.bittrex.com/signalr','tcp://127.0.0.1:23380',1),
(9,8,'bitstamp',NULL,NULL,'ws://ws.pusherapp.com/app/de504dc5763aeef9ff52?protocol=7','tcp://127.0.0.1:23390',1),
(10,9,'bitmax',NULL,NULL,'','tcp://127.0.0.1:23400',0),
(11,10,'kraken',NULL,NULL,'','tcp://127.0.0.1:23410',0),
(12,3,'okex2',NULL,NULL,'wss://real.okex.com:10440/ws/v1','tcp://127.0.0.1:23343',1),
(13,3,'okex3',NULL,NULL,'wss://real.okex.com:10440/ws/v1','tcp://127.0.0.1:23342',1);

/*Table structure for table `gateio_1m_kline` */

DROP TABLE IF EXISTS `gateio_1m_kline`;

CREATE TABLE `gateio_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `gateio_1m_kline` */

/*Table structure for table `gateio_kline` */

DROP TABLE IF EXISTS `gateio_kline`;

CREATE TABLE `gateio_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `gateio_kline` */

/*Table structure for table `huobi_1m_kline` */

DROP TABLE IF EXISTS `huobi_1m_kline`;

CREATE TABLE `huobi_1m_kline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(13) NOT NULL,
  `high_price` decimal(20,8) DEFAULT '-1.00000000',
  `open_price` decimal(20,8) DEFAULT '-1.00000000',
  `low_price` decimal(20,8) DEFAULT '-1.00000000',
  `close_price` decimal(20,8) DEFAULT '-1.00000000',
  `volume` decimal(20,8) DEFAULT '-1.00000000',
  `contract_id` tinyint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contract_id` (`contract_id`,`timestamp`),
  KEY `contract_id_index` (`contract_id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4341085 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `huobi_1m_kline` */

/*Table structure for table `huobi_kline` */

DROP TABLE IF EXISTS `huobi_kline`;

CREATE TABLE `huobi_kline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(13) NOT NULL,
  `kline_type` int(2) NOT NULL DEFAULT '0' COMMENT '0:5,1:10,2:15,3:30,4:60,5:日k',
  `high_price` decimal(20,8) DEFAULT '-1.00000000',
  `open_price` decimal(20,8) DEFAULT '-1.00000000',
  `low_price` decimal(20,8) DEFAULT '-1.00000000',
  `close_price` decimal(20,8) DEFAULT '-1.00000000',
  `volume` decimal(20,8) DEFAULT '-1.00000000',
  `contract_id` tinyint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contract_id` (`contract_id`,`timestamp`,`kline_type`),
  KEY `id_index` (`id`),
  KEY `contract_id_index` (`contract_id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `kline_type_index` (`kline_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1491047 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `huobi_kline` */

/*Table structure for table `kraken_1m_kline` */

DROP TABLE IF EXISTS `kraken_1m_kline`;

CREATE TABLE `kraken_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `kraken_1m_kline` */

/*Table structure for table `kraken_kline` */

DROP TABLE IF EXISTS `kraken_kline`;

CREATE TABLE `kraken_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `kraken_kline` */

/*Table structure for table `okex_1m_kline` */

DROP TABLE IF EXISTS `okex_1m_kline`;

CREATE TABLE `okex_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `okex_1m_kline` */

/*Table structure for table `okex_kline` */

DROP TABLE IF EXISTS `okex_kline`;

CREATE TABLE `okex_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `okex_kline` */

/*Table structure for table `poloniex_1m_kline` */

DROP TABLE IF EXISTS `poloniex_1m_kline`;

CREATE TABLE `poloniex_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `poloniex_1m_kline` */

/*Table structure for table `poloniex_kline` */

DROP TABLE IF EXISTS `poloniex_kline`;

CREATE TABLE `poloniex_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `poloniex_kline` */

/*Table structure for table `quantbroker_1m_kline` */

DROP TABLE IF EXISTS `quantbroker_1m_kline`;

CREATE TABLE `quantbroker_1m_kline` (
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
  KEY `id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `quantbroker_1m_kline` */

/*Table structure for table `quantbroker_kline` */

DROP TABLE IF EXISTS `quantbroker_kline`;

CREATE TABLE `quantbroker_kline` (
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
  KEY `kline_type_index` (`kline_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `quantbroker_kline` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
