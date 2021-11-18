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

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (391);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `subject` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `priority` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `ticket_date` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ticket_update` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `tickets_id_uindex` (`_id`),
  KEY `FK384xu0lexsjs1mqhaj0cese1t` (`user_id`),
  CONSTRAINT `FK384xu0lexsjs1mqhaj0cese1t` FOREIGN KEY (`user_id`) REFERENCES `users` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (243,118,'hi','hello','pilot','Status','2020-10-19 16:47:57.204','2020-10-19 16:47:57.204'),(244,118,'hi','hello','pilot','Status','2020-10-19 16:48:25.705','2020-10-19 16:48:25.705'),(245,118,'hi','hello','pilot','Status','2020-10-19 18:42:15.144','2020-10-19 18:42:15.144'),(268,118,'hi','hello','pilot','Status','2020-10-19 19:28:30.136','2020-10-19 19:28:30.136'),(283,118,'hi','hello','pilot','Status','2020-10-19 19:33:06.403','2020-10-19 19:33:06.403'),(292,118,'hi','hello','pilot','Status','2020-10-19 21:06:00.495','2020-10-19 21:06:00.495'),(299,118,'hi','hello','pilot','Status','2020-10-19 22:05:18.162','2020-10-19 22:05:18.162'),(377,118,'hi','hello','pilot','Status','2020-10-19 23:30:32.937','2020-10-19 23:30:32.937'),(380,118,'hi','hello','pilot','Status','2020-10-22 16:23:06.61','2020-10-22 16:23:06.61'),(381,118,'hi','hello','pilot','Status','2020-10-22 16:25:09.678','2020-10-22 16:25:09.678');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `secret_key` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `secret_question` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `date_registration` date DEFAULT NULL,
  `url_avatar` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `reset_token` char(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (118,'Daniyar','Murzaguzhinov','daxniyarmurza@gmail.com','$2a$10$y3KkOMP72jheUUXRptuHiuTTnQEQ9q6EZxEoILX0zF/dUT4RAB0Nq','Good','How are you','2020-10-17',NULL,''),(138,'Daniyar','Murzaguzhinov','daxniybarmurza@gmabil.com','$2a$10$UoQS44I1aCpKmUC6./Qgu.cAMAzNCx.EfluDq6xdvaFerzzQ2XDJq','Good','How are you','2020-10-18',NULL,''),(174,'Daniyar','Murzaguzhinov','daxniybarmurzaj@gmabjil.com','$2a$10$5sXgOC6gnPC38GwOq7wd4.yadwIt8ARNrJl9RWi9Gpeg68WXq3VVC','Good','How are you','2020-10-19',NULL,''),(208,'Daniyar','Murzaguzhinov','daniyarmurza@gmabjil.com','$2a$10$YXpj46VrJkzOZ//JeWvOfeYIEkFOyvFJZRBV1Top8xUHdjocHu/pu','Good','How are you','2020-10-19',NULL,''),(209,'Daniyar','Murzaguzhinov','murzadaniyar@gmail.com','$2a$10$2uiM7Rguc5rxk83FnKY6LOM821ICyLCnpV5uyC72.eS6xqHiFxFM6','Good','How are you','2020-10-19',NULL,'ef8ab1c2-7560-4c60-a4f3-a0f5ac0bd141'),(210,'Daniyar','Murzaguzhinov','daniyarmurza@gmail.com','$2a$10$a7kIDeVkC1pJT22N7pWij.dNkdygpuI.CjLBHXQ5FGF1opH6wYWwC','Good','How are you','2020-10-19',NULL,''),(257,'Daniyar','Murzaguzhinov','daniyarmurza@gmvail.com','$2a$10$XlzGKWGdLsXe.qyBZvhmleNr.cnTROPl/XaZUaXhHHzD.lAOxTFjy','Good','How are you','2020-10-19',NULL,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_address`
--

DROP TABLE IF EXISTS `users_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_address` (
  `users__id` int NOT NULL,
  `address__id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_address`
--

LOCK TABLES `users_address` WRITE;
/*!40000 ALTER TABLE `users_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_orders`
--

DROP TABLE IF EXISTS `users_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_orders` (
  `users__id` int NOT NULL,
  `orders__id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_orders`
--

LOCK TABLES `users_orders` WRITE;
/*!40000 ALTER TABLE `users_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_reviews`
--

DROP TABLE IF EXISTS `users_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_reviews` (
  `users__id` int NOT NULL,
  `reviews__id` int NOT NULL,
  UNIQUE KEY `UK_5crlyguwwvedioad5beh85h81` (`reviews__id`),
  KEY `FKqlomfsqw6sxra4ge4qy1jje8v` (`users__id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_reviews`
--

LOCK TABLES `users_reviews` WRITE;
/*!40000 ALTER TABLE `users_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_tickets`
--

DROP TABLE IF EXISTS `users_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_tickets` (
  `users__id` int NOT NULL,
  `tickets__id` int NOT NULL,
  UNIQUE KEY `UK_lo6p5ne9f1fu9i3jceobq2802` (`tickets__id`),
  KEY `FKmhwl8j9lhifsfrbwuadbbkhxd` (`users__id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_tickets`
--

LOCK TABLES `users_tickets` WRITE;
/*!40000 ALTER TABLE `users_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-02 23:41:37
