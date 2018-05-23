-- MySQL dump 10.13  Distrib 5.7.13, for osx10.11 (x86_64)
--
-- Host: 172.104.105.180    Database: bloodpleasure
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_hardware_map`
--

DROP TABLE IF EXISTS `account_hardware_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_hardware_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `hardware_id` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_hardware_map_account_id_hardware_id_uindex` (`account_id`,`hardware_id`),
  KEY `account_hardware_map_hardware_id_account_id_index` (`hardware_id`,`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_hardware_map`
--

INSERT INTO `account_hardware_map` VALUES (1,1,'f0010a8a0bc524da');

--
-- Table structure for table `account_info`
--

DROP TABLE IF EXISTS `account_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_info_mobile_uindex` (`mobile`),
  KEY `account_info_mobile_id_index` (`mobile`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` VALUES (1,'13800138000');

--
-- Table structure for table `device_value`
--

DROP TABLE IF EXISTS `device_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `hardware_id` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `mode` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `device_value_account_id_hardware_id_index` (`account_id`,`hardware_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_value`
--

INSERT INTO `device_value` VALUES (1,1,'f0010a8a0bc524da',1,1,347),(2,1,'f0010a8a0bc524da',1,1,347),(3,1,'f0010a8a0bc524da',1,1,347),(4,1,'f0010a8a0bc524da',1,1,347),(5,1,'f0010a8a0bc524da',1,1,349),(6,1,'f0010a8a0bc524da',1,1,427),(7,1,'f0010a8a0bc524da',1,1,412),(8,1,'f0010a8a0bc524da',1,1,365),(9,1,'f0010a8a0bc524da',1,1,348),(10,1,'f0010a8a0bc524da',1,1,348),(11,1,'f0010a8a0bc524da',1,1,368),(12,1,'f0010a8a0bc524da',1,1,367),(13,1,'f0010a8a0bc524da',1,1,360),(14,1,'f0010a8a0bc524da',1,1,367),(15,1,'f0010a8a0bc524da',1,1,362),(16,1,'f0010a8a0bc524da',1,1,374),(17,1,'f0010a8a0bc524da',1,1,376),(18,1,'f0010a8a0bc524da',1,1,362),(19,1,'f0010a8a0bc524da',1,1,378),(20,1,'f0010a8a0bc524da',1,1,376),(21,1,'f0010a8a0bc524da',1,1,366),(22,1,'f0010a8a0bc524da',1,1,342),(23,1,'f0010a8a0bc524da',1,1,345),(24,1,'f0010a8a0bc524da',1,1,345),(25,1,'f0010a8a0bc524da',1,1,341),(26,1,'f0010a8a0bc524da',1,1,334),(27,1,'f0010a8a0bc524da',1,1,360),(28,1,'f0010a8a0bc524da',1,1,360),(29,1,'f0010a8a0bc524da',1,1,359),(30,1,'f0010a8a0bc524da',1,1,351),(31,1,'f0010a8a0bc524da',1,1,373),(32,1,'f0010a8a0bc524da',1,1,344),(33,1,'f0010a8a0bc524da',1,1,363),(34,1,'f0010a8a0bc524da',1,1,368),(35,1,'f0010a8a0bc524da',1,1,363),(36,1,'f0010a8a0bc524da',1,1,351),(37,1,'f0010a8a0bc524da',1,1,362),(38,1,'f0010a8a0bc524da',1,1,362),(39,1,'f0010a8a0bc524da',1,1,364),(40,1,'f0010a8a0bc524da',1,1,367),(41,1,'f0010a8a0bc524da',1,1,363),(42,1,'f0010a8a0bc524da',1,1,333),(43,1,'f0010a8a0bc524da',1,1,349),(44,1,'f0010a8a0bc524da',1,1,365),(45,1,'f0010a8a0bc524da',1,1,362),(46,1,'f0010a8a0bc524da',1,1,360),(47,1,'f0010a8a0bc524da',1,1,357),(48,1,'f0010a8a0bc524da',1,1,364),(49,1,'f0010a8a0bc524da',1,1,364),(50,1,'f0010a8a0bc524da',1,1,364),(51,1,'f0010a8a0bc524da',1,1,364),(52,1,'f0010a8a0bc524da',1,1,366),(53,1,'f0010a8a0bc524da',1,1,366),(54,1,'f0010a8a0bc524da',1,1,356),(55,1,'f0010a8a0bc524da',1,1,368),(56,1,'f0010a8a0bc524da',1,1,366),(57,1,'f0010a8a0bc524da',1,1,368),(58,1,'f0010a8a0bc524da',1,1,369),(59,1,'f0010a8a0bc524da',1,1,326),(60,1,'f0010a8a0bc524da',1,1,323),(61,1,'f0010a8a0bc524da',1,1,340),(62,1,'f0010a8a0bc524da',1,1,338),(63,1,'f0010a8a0bc524da',1,1,334),(64,1,'f0010a8a0bc524da',1,1,322),(65,1,'f0010a8a0bc524da',1,1,326),(66,1,'f0010a8a0bc524da',1,1,337),(67,1,'f0010a8a0bc524da',1,1,338),(68,1,'f0010a8a0bc524da',1,1,369),(69,1,'f0010a8a0bc524da',1,1,334),(70,1,'f0010a8a0bc524da',1,1,327),(71,1,'f0010a8a0bc524da',1,1,329),(72,1,'f0010a8a0bc524da',1,1,329),(73,1,'f0010a8a0bc524da',1,1,367),(74,1,'f0010a8a0bc524da',1,1,323),(75,1,'f0010a8a0bc524da',1,1,355),(76,1,'f0010a8a0bc524da',1,1,367),(77,1,'f0010a8a0bc524da',1,1,367),(78,1,'f0010a8a0bc524da',1,1,367),(79,1,'f0010a8a0bc524da',1,1,352),(80,1,'f0010a8a0bc524da',1,1,358),(81,1,'f0010a8a0bc524da',1,1,358),(82,1,'f0010a8a0bc524da',1,1,348),(83,1,'f0010a8a0bc524da',1,1,362),(84,1,'f0010a8a0bc524da',1,1,352),(85,1,'f0010a8a0bc524da',1,1,352),(86,1,'f0010a8a0bc524da',1,1,354),(87,1,'f0010a8a0bc524da',1,1,330),(88,1,'f0010a8a0bc524da',1,1,327),(89,1,'f0010a8a0bc524da',1,1,364),(90,1,'f0010a8a0bc524da',1,1,359),(91,1,'f0010a8a0bc524da',1,1,363),(92,1,'f0010a8a0bc524da',1,1,363),(93,1,'f0010a8a0bc524da',1,1,364),(94,1,'f0010a8a0bc524da',1,1,367),(95,1,'f0010a8a0bc524da',1,1,367),(96,1,'f0010a8a0bc524da',1,1,364),(97,1,'f0010a8a0bc524da',1,1,365),(98,1,'f0010a8a0bc524da',1,1,330),(99,1,'f0010a8a0bc524da',1,1,350),(100,1,'f0010a8a0bc524da',1,1,366),(101,1,'f0010a8a0bc524da',1,4,337),(102,1,'f0010a8a0bc524da',1,4,345),(103,1,'f0010a8a0bc524da',1,4,337),(104,1,'f0010a8a0bc524da',1,4,341),(105,1,'f0010a8a0bc524da',1,4,345),(106,1,'f0010a8a0bc524da',1,4,314),(107,1,'f0010a8a0bc524da',1,1,343),(108,1,'f0010a8a0bc524da',1,1,328),(109,1,'f0010a8a0bc524da',1,1,368),(110,1,'f0010a8a0bc524da',1,1,371),(111,1,'f0010a8a0bc524da',1,1,337),(112,1,'f0010a8a0bc524da',1,1,391),(113,1,'f0010a8a0bc524da',1,1,330);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-23 16:24:18
