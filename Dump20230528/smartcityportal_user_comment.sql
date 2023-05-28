-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: smartcityportal
-- ------------------------------------------------------
-- Server version	5.7.27-log

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
-- Table structure for table `user_comment`
--

DROP TABLE IF EXISTS `user_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_comment` (
  `user_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_comment` text,
  `comment_type` varchar(30) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`user_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_comment`
--

LOCK TABLES `user_comment` WRITE;
/*!40000 ALTER TABLE `user_comment` DISABLE KEYS */;
INSERT INTO `user_comment` VALUES (1,16,'Hello Test','dashboard','2023-04-03','16','16','2023-04-03 11:31:43'),(2,16,'Not a bad','dashboard','2023-04-03','16','16','2023-04-03 11:33:48'),(3,1,'very helpful','dashboard','2023-04-03','1','1','2023-04-03 11:50:43'),(4,16,'amazing web application','dashboard','2023-04-03','16','16','2023-04-03 14:31:26'),(5,16,'very helpful','dashboard','2023-04-03','16','16','2023-04-03 14:36:18'),(6,22,'Outstanding ','dashboard','2023-04-03','22','22','2023-04-03 15:08:40'),(7,1,'amazing web application','dashboard','2023-04-03','1','1','2023-04-03 15:22:41'),(8,1,'very helpful','dashboard','2023-04-03','1','1','2023-04-03 15:26:18'),(9,23,'amazing web application','dashboard','2023-04-03','23','23','2023-04-03 15:29:56'),(10,1,'very helpful','dashboard','2023-04-03','1','1','2023-04-03 17:12:20'),(11,25,'amazing web application','dashboard','2023-04-03','25','25','2023-04-03 17:18:51'),(12,1,'null','dashboard','2023-04-03','1','1','2023-04-03 19:23:49'),(13,1,'null','dashboard','2023-04-03','1','1','2023-04-03 19:27:15'),(14,1,'very helpful','dashboard','2023-04-03','1','1','2023-04-03 19:28:51'),(15,1,'amazing web application','dashboard','2023-04-03','1','1','2023-04-03 19:29:00'),(16,1,'Not a bad','dashboard','2023-04-03','1','1','2023-04-03 19:29:10'),(17,27,'very helpful','dashboard','2023-04-03','27','27','2023-04-03 22:10:37'),(18,1,'OSM','dashboard','2023-04-04','1','1','2023-04-04 16:07:08'),(19,29,'amazing web application','dashboard','2023-04-04','29','29','2023-04-04 16:09:26'),(20,31,'very helpful','dashboard','2023-04-04','31','31','2023-04-04 23:23:14'),(21,36,'amazing web application','dashboard','2023-04-08','36','36','2023-04-08 11:36:45'),(22,1,'wow super webapplication','dashboard','2023-05-05','1','1','2023-05-05 15:08:08'),(23,1,'very helpful','dashboard','2023-05-05','1','1','2023-05-05 17:38:35'),(24,1,'I love this webapplication','dashboard','2023-05-21','1','1','2023-05-21 14:18:12'),(25,29,'very helpful','dashboard','2023-05-21','29','29','2023-05-21 14:20:01'),(26,42,'very helpful','dashboard','2023-05-25','42','42','2023-05-25 16:13:25');
/*!40000 ALTER TABLE `user_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 19:01:18
