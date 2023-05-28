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
-- Table structure for table `college_courses`
--

DROP TABLE IF EXISTS `college_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college_courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_id` int(11) NOT NULL,
  `course_code` int(11) DEFAULT NULL,
  `course_name` text,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `no_of_seat` int(11) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_courses`
--

LOCK TABLES `college_courses` WRITE;
/*!40000 ALTER TABLE `college_courses` DISABLE KEYS */;
INSERT INTO `college_courses` VALUES (1,1,3,'BTech','2023-05-08','2023-05-08','1','1',200),(2,1,4,'MTech','2023-05-08','2023-05-08','1','1',150),(3,1,5,'MBA','2023-05-08','2023-05-08','1','1',100),(4,1,6,'MCA','2023-05-08','2023-05-08','1','1',120),(5,2,3,'BTech','2023-05-08','2023-05-08','1','1',400),(6,2,4,'MTech','2023-05-08','2023-05-08','1','1',200),(7,2,5,'MBA','2023-05-08','2023-05-08','1','1',120),(8,2,6,'MCA','2023-05-08','2023-05-08','1','1',100),(9,3,3,'BTech','2023-05-08','2023-05-08','1','1',200),(10,3,4,'MTech','2023-05-08','2023-05-08','1','1',150),(11,3,5,'MBA','2023-05-08','2023-05-08','1','1',120),(12,3,6,'MCA','2023-05-08','2023-05-08','1','1',110);
/*!40000 ALTER TABLE `college_courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 19:01:19
