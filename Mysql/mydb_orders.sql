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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `brand` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `count` int DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name_product` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `price` int DEFAULT NULL,
  `specification` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `review` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `_id` int NOT NULL,
  `date_order` datetime DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `use` (`user_id`),
  CONSTRAINT `use` FOREIGN KEY (`user_id`) REFERENCES `users` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('AMD',10,'scsvcscscscscscsscscsc','AMD 3800x',299,'Zhopa',NULL,118,367,'2020-10-19 23:28:35'),('AMD',10,'scsvcscscscscscsscscsc','AMD 3800x',299,'Zhopa',NULL,118,369,'2020-10-19 23:29:24'),('AMD',10,'scsvcscscscscscsscscsc','AMD 3800x',299,'Zhopa',NULL,118,371,'2020-10-19 23:29:31'),('AMD',10,'scsvcscscscscscsscscsc','AMD 3800x',299,'Zhopa',NULL,118,373,'2020-10-19 23:30:20'),('AMD',10,'scsvcscscscscscsscscsc','AMD 3800x',299,'Zhopa',NULL,118,375,'2020-10-19 23:30:29');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-02 23:40:59
