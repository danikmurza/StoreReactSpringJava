-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `line1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `line2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zipcode` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `_id` int NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `FK6i66ijb8twgcqtetl8eeeed6v` (`user_id`),
  CONSTRAINT `FK6i66ijb8twgcqtetl8eeeed6v` FOREIGN KEY (`user_id`) REFERENCES `users` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('739 E Independence dr','4','palatine','illinois','United States',60074,118,366),('739 E Independence dr','4','palatine','illinois','United States',60074,118,378),('739 E Independence dr','4','palatine','illinois','United States',60074,118,379),('739 E Independence dr','4','palatine','illinois','United States',60074,118,383),('739 E Independence dr','4','palatine','illinois','United States',60074,118,386),('739 E Independence dr','4','palatine','illinois','United States',60074,118,387),('739 E Independence dr','4','palatine','illinois','United States',60074,118,388),('739 E Independence dr','4','palatine','illinois','United States',60074,118,389),('739 E Independence dr','4','palatine','illinois','United States',60074,257,390);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-02 23:40:58
