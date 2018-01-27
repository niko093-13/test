-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `sup_group`
--

DROP TABLE IF EXISTS `sup_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sup_group` (
  `group_code` char(3) NOT NULL,
  `group_name` varchar(6) NOT NULL,
  PRIMARY KEY (`group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sup_group`
--

LOCK TABLES `sup_group` WRITE;
/*!40000 ALTER TABLE `sup_group` DISABLE KEYS */;
INSERT INTO `sup_group` VALUES ('A01','洋菓子'),('A02','和菓子'),('A03','スナック菓子'),('A04','クッキー類'),('A05','チョコ類');
/*!40000 ALTER TABLE `sup_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sup_quantity`
--

DROP TABLE IF EXISTS `sup_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sup_quantity` (
  `sup_code` char(5) NOT NULL,
  `sup_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`sup_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sup_quantity`
--

LOCK TABLES `sup_quantity` WRITE;
/*!40000 ALTER TABLE `sup_quantity` DISABLE KEYS */;
INSERT INTO `sup_quantity` VALUES ('11111',99),('11333',99),('18687',50),('18688',50),('18689',50),('21690',10),('21691',10),('21692',10),('37693',80),('37694',80),('37695',80),('37696',80),('45697',100),('45698',100),('45699',100),('55700',50),('55701',50),('55702',50),('90909',99);
/*!40000 ALTER TABLE `sup_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `sup_code` char(5) NOT NULL,
  `sup_name` varchar(20) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `group_code` char(3) NOT NULL,
  PRIMARY KEY (`sup_code`),
  KEY `group_code` (`group_code`),
  CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`sup_code`) REFERENCES `sup_quantity` (`sup_code`),
  CONSTRAINT `supplier_ibfk_2` FOREIGN KEY (`group_code`) REFERENCES `sup_group` (`group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('11111','チョコもち',100,'A01'),('11333','チョコもち',100,'A01'),('18687','フィナンシェ',130,'A01'),('18688','バウムクーヘン',120,'A01'),('18689','焼きドーナッツ',100,'A01'),('21690','草団子',80,'A02'),('21691','豆大福',50,'A02'),('21692','苺大福',100,'A02'),('37693','じゃがいもっ子',140,'A03'),('37694','マロンまろん',200,'A03'),('37695','しいたけの森',150,'A03'),('37696','森の音楽家',200,'A03'),('45697','アルファベットクッキー',300,'A04'),('45698','サンドベージュ',250,'A04'),('45699','アルデンテ',350,'A04'),('55700','チョコロール',150,'A05'),('55701','プチショコラボックス',200,'A05'),('55702','ちょこちょこショコラ',50,'A05'),('90909','チョコもち',100,'A04');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` char(6) NOT NULL,
  `user_name` varchar(8) DEFAULT NULL,
  `password` char(8) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('160401','山下葉菜子','yama_875'),('160402','伊藤和夫','1234ito@'),('160403','加藤清','kiyo!987'),('160404','奥田美和','miwaOku#');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-27 13:58:03
