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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-02 23:40:58
