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
-- Table structure for table `pg_user_comment`
--

DROP TABLE IF EXISTS `pg_user_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pg_user_comment` (
  `pg_user_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `pg_user_id` int(11) DEFAULT NULL,
  `pg_user_comment` text,
  `pg_comment_type` varchar(30) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pg_user_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_user_comment`
--

LOCK TABLES `pg_user_comment` WRITE;
/*!40000 ALTER TABLE `pg_user_comment` DISABLE KEYS */;
INSERT INTO `pg_user_comment` VALUES (1,21,'amazing web application','dashboard','2023-04-03','2023-04-03','21','21'),(2,29,'very helpful','dashboard','2023-04-04','2023-04-04','29','29'),(3,1,'amazing web application','dashboard','2023-04-04','2023-04-04','1','1'),(4,1,'Not a bad','dashboard','2023-04-04','2023-04-04','1','1'),(5,1,'Hello Test','dashboard','2023-04-04','2023-04-04','1','1'),(6,1,'asfjksdfsdfsdjkf','dashboard','2023-04-04','2023-04-04','1','1'),(7,1,'Hello Test','dashboard','2023-04-04','2023-04-04','1','1'),(8,1,'asfjksdfsdfsdjkf','dashboard','2023-04-04','2023-04-04','1','1'),(9,29,'Nice PG','dashboard','2023-04-04','2023-04-04','29','29'),(10,31,'amazing PG For Student','dashboard','2023-04-04','2023-04-04','31','31'),(11,1,'Not a bad','dashboard','2023-04-05','2023-04-05','1','1'),(12,1,'very helpful','dashboard','2023-04-05','2023-04-05','1','1'),(13,1,'Owner is very helpful','dashboard','2023-04-05','2023-04-05','1','1'),(14,1,'Hello Test','dashboard','2023-04-05','2023-04-05','1','1'),(15,1,'very helpful','dashboard','2023-04-05','2023-04-05','1','1'),(16,1,'Hello Test','dashboard','2023-04-05','2023-04-05','1','1'),(17,1,'very helpful','dashboard','2023-04-05','2023-04-05','1','1'),(18,1,'amazing web application','dashboard','2023-04-05','2023-04-05','1','1'),(19,1,'Outstanding  PG','dashboard','2023-04-05','2023-04-05','1','1'),(20,29,'very helpful','dashboard','2023-04-05','2023-04-05','29','29'),(21,29,'Not a bad','dashboard','2023-04-05','2023-04-05','29','29'),(22,1,'Not a bad','dashboard','2023-05-08','2023-05-08','1','1'),(23,1,'amazing web application','dashboard','2023-05-26','2023-05-26','1','1'),(24,25,'very helpful','dashboard','2023-05-28','2023-05-28','25','25'),(25,25,'hello','dashboard','2023-05-28','2023-05-28','25','25'),(26,25,'very helpful','dashboard','2023-05-28','2023-05-28','25','25');
/*!40000 ALTER TABLE `pg_user_comment` ENABLE KEYS */;
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
