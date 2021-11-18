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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `_id` int NOT NULL,
  `author` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `user_email` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `pros` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cons` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `date` date DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  KEY `FKa5cmgpp2plp5oai84fkmbi63e` (`product_id`),
  KEY `FK6cpw2nlklblpvc7hyt7ko6v3e` (`user_id`),
  CONSTRAINT `FK6cpw2nlklblpvc7hyt7ko6v3e` FOREIGN KEY (`user_id`) REFERENCES `users` (`_id`),
  CONSTRAINT `FKa5cmgpp2plp5oai84fkmbi63e` FOREIGN KEY (`product_id`) REFERENCES `products` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (178,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(179,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(180,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(181,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(182,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(183,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(184,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(185,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(186,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(187,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(188,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(189,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(190,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',NULL,118),(191,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',128,118),(192,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',128,118),(193,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',128,118),(194,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',128,118),(198,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',127,174),(199,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',127,174),(200,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',127,174),(201,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',127,174),(202,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',127,174),(204,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',169,174),(205,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',169,174),(206,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',169,174),(207,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',169,174),(256,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',169,174),(290,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-19',169,174),(382,'Daniyar Murzaguzhinov',NULL,5,'Good processor','power','price','2020-10-22',169,174);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
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
