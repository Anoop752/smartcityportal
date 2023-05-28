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
-- Table structure for table `pg_info`
--

DROP TABLE IF EXISTS `pg_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pg_info` (
  `pg_id` int(11) NOT NULL AUTO_INCREMENT,
  `pg_name` text,
  `pg_short_info` text,
  `pg_single_rent` int(11) DEFAULT NULL,
  `pg_shared_rent` int(11) DEFAULT NULL,
  `pg_security_money` int(11) DEFAULT NULL,
  `pg_contact` varchar(150) DEFAULT NULL,
  `pg_details` text,
  `pg_time` varchar(50) DEFAULT NULL,
  `is_food_avl` int(11) DEFAULT NULL,
  `is_wifi_avl` int(11) DEFAULT NULL,
  `is_washingmachine_avl` int(11) DEFAULT NULL,
  `is_electricity_avl` int(11) DEFAULT NULL,
  `is_ac_room_avl` int(11) DEFAULT NULL,
  `pg_desc` text,
  `pg_quote` text,
  `pg_room_type` text,
  `pg_owner_name` varchar(50) DEFAULT NULL,
  `pg_owner_contact` varchar(30) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `pglikes` int(11) NOT NULL,
  `pgimg` varchar(250) DEFAULT NULL,
  `pgimg2` varchar(250) DEFAULT NULL,
  `pg_address` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`pg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_info`
--

LOCK TABLES `pg_info` WRITE;
/*!40000 ALTER TABLE `pg_info` DISABLE KEYS */;
INSERT INTO `pg_info` VALUES (1,'Krishna PG','Boys and Girls PG in Ghaziabad, Uttar Pradesh',7000,6000,6000,'0120 713 5112','Krishna Pg In Ghaziabad is the reliable name in the industry as they aim to deliver the best Experience to their customers. Quality Food, Free wi- fi,healthy Environment,cleanliness.','11 PM',1,0,1,0,1,'1','Krishna PG Like Home\'s Feeling','1','Krishna kumar','9918774532','2023-05-05','2023-05-05','1','1',2,'dist/img/PGimg1.jpg','dist/img/PGimg1.jpg','Crossings Republik, Ghaziabad, Uttar Pradesh 201009'),(2,'Amit PG','Boys and Girls PG in Ghaziabad, Uttar Pradesh',6000,5000,4000,'9807547865','Amit PG  In Ghaziabad is the reliable name in the industry as they aim to deliver the best Experience to their customers. Quality Food, Free wi- fi,healthy Environment,cleanliness.','10 PM',0,1,1,1,0,'1','Amit PG Like Home\'s Feeling','1','Amit  kumar','9918778765','2023-05-05','2023-05-05','1','1',2,'dist/img/PGimg1.jpg','dist/img/PGimg1.jpg','Crossings Republik, Ghaziabad, Uttar Pradesh 201009'),(3,'Fauzi PG','Boys and Girls PG in Ghaziabad, Uttar Pradesh',6500,6000,6000,'0120 713 5112','Fauzi Pg In Ghaziabad is the reliable name in the industry as they aim to deliver the best Experience to their customers. Quality Food, Free wi- fi,healthy Environment,cleanliness.','9 PM',1,0,1,1,1,'1','Fauzi PG like discipline home','1','Mohan','9918774530','2023-05-05','2023-05-05','1','1',2,'dist/img/PGimg1.jpg','dist/img/PGimg1.jpg','chipiyana, Ghaziabad, Uttar Pradesh 201009');
/*!40000 ALTER TABLE `pg_info` ENABLE KEYS */;
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
