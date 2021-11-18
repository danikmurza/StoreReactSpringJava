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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `count` int DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name_product` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `price` int DEFAULT NULL,
  `specification` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `review` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `products__id_uindex` (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (127,'AMD',10,'scsvcscscscscscsscscsc','AMD 3900x',399,'Zhopa',NULL),(128,'AMD',10,'scsvcscscscscscsscscsc','AMD 3900x',399,'Zhopa',NULL),(139,'AMD',10,'scsvcscscscscscsscscsc','AMD 3900x',399,'Zhopa',NULL),(169,'AMD',10,'scsvcscscscscscsscscsc','AMD 3900x',399,'Zhopa',NULL),(255,'AMD',10,'scsvcscscscscscsscscsc','AMD 3900x',399,'Zhopa',NULL),(291,'AMD',10,'scsvcscscscscscsscscsc','AMD 3900x',399,'Zhopa',NULL),(384,'AMD',10,'scsvcscscscscscsscscsc','AMD 3900x',399,'Zhopa',NULL),(385,'AMD',10,'scsvcscscscscscsscscsc','AMD 3900x',399,'Zhopa',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
