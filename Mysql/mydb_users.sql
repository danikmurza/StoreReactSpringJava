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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-02 23:40:58
