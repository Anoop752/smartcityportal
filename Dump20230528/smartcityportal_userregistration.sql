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
-- Table structure for table `userregistration`
--

DROP TABLE IF EXISTS `userregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userregistration` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `useremail` varchar(30) DEFAULT NULL,
  `usergender` varchar(8) DEFAULT NULL,
  `userphonenumber` varchar(10) DEFAULT NULL,
  `userPassword` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userregistration`
--

LOCK TABLES `userregistration` WRITE;
/*!40000 ALTER TABLE `userregistration` DISABLE KEYS */;
INSERT INTO `userregistration` VALUES (1,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(2,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(3,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(4,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(5,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(6,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(7,'shivam ','shivam@gmail.com','Male','9378091234','shivam@123'),(8,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(9,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(10,'shivansh Tripathi','shivansh@gmail.com','Male','9723541267','shivansh@123'),(11,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(12,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(13,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(14,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(15,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(16,'shashi pal','shashi@gmail.com','Male','9989123465','shashi420'),(17,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(18,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(19,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(20,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(21,'Amber ','amber@gmail.com','Male','9878563412','amber123'),(22,'Ankit kumar','ankit@gmail.com','Male','9823457123','Ankit123'),(23,'Mansi ','mansi@gmail.com','Female','9823451769','mansi123'),(24,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(25,'Lokesh kumar','lokesh@gmail.com','Male','9878563412','Lokesh123'),(26,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(27,'Anoop kumar','anoop123@gmail.com','Male','9878563412','Anoop321'),(28,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(29,'Pooja kumari','pooja@gmail.com','Female','9878563412','Pooja123'),(30,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(31,'shivi kumar','shivi@gmail.com','Female','9878563412','shivi123'),(32,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(33,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(34,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(35,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(36,'krishna kumar','krishna@gmail.com','Male','9878563412','Anoop123'),(37,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(38,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(39,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(40,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(41,'Anoop','anoop@gmail.com','male','9368110632','Anoop@123'),(42,'Rohit sharma','rohit@gmail.com','Male','9823457123','Rohit123');
/*!40000 ALTER TABLE `userregistration` ENABLE KEYS */;
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
