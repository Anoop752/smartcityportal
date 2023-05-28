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
-- Table structure for table `college_info`
--

DROP TABLE IF EXISTS `college_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college_info` (
  `college_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(150) DEFAULT NULL,
  `college_short_desc` text,
  `contact` int(11) DEFAULT NULL,
  `college_address` text,
  `college_code` int(11) DEFAULT NULL,
  `college_follower` int(11) DEFAULT NULL,
  `college_rating` int(11) DEFAULT NULL,
  `college_AffiliatedTO` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `college_Notes` text,
  `is_hostel_pg_avl` int(11) DEFAULT NULL,
  `is_wifi_avl` int(11) DEFAULT NULL,
  `is_library_avl` int(11) DEFAULT NULL,
  `is_skill_development_avl` int(11) DEFAULT NULL,
  `is_sports_avl` int(11) DEFAULT NULL,
  `is_culture_avl` int(11) DEFAULT NULL,
  `is_healthy_campus` int(11) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `college_est_dt` varchar(50) DEFAULT NULL,
  `college_logo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_info`
--

LOCK TABLES `college_info` WRITE;
/*!40000 ALTER TABLE `college_info` DISABLE KEYS */;
INSERT INTO `college_info` VALUES (1,'ABES Engineering College,Ghaziabad','ABES Engineering College is one of the top engineering Colleges of UPTU in Delhi,NCR. AICTE Approved and AKTU Affiliated college, offers B.Tech, M.Tech, ..',56870,'9th Mile Stone, Delhi-Meerut Road, (NH-58) Duhai, Ghaziabad,Ghaziabad Uttar Pradesh 201206',32,1222,5,'AICTE Approved and AKTU Affiliated College','Rank 1 in AKTU last 9 samesters',1,1,1,1,1,1,1,'2023-05-05','2023-05-05','1','1','EST. 2000','dist/img/ABESLogo.jpg'),(2,'Adhunik College Of Engineering, Ghaziabad','Adhunik College Of Engineering, Ghaziabad is one of the top engineering Colleges of UPTU in Delhi,NCR. AICTE Approved and AKTU Affiliated college, offers B.Tech, M.Tech, ..',1207135112,'Mile Stone, Delhi-Meerut Road, (NH-58) Duhai, Ghaziabad,Ghaziabad Uttar Pradesh 201206',796,1276,5,'AICTE Approved and AKTU Affiliated College','Rank 2 in AKTU last 7 samesters',1,1,1,1,1,1,1,'2023-05-05','2023-05-05','1','1','EST. 1998','dist/img/Adhunik.jpg'),(3,'	KIET Group of Institutions, Ghaziabad\nGhaziabad, Uttar Pradesh','Krishna Institute of Engineering & Technology or KIET Ghaziabad is one of the top engineering colleges in UP',85128575,'Office Address: #1114, World Trade Tower(WTT), Sector 16 Noida, 201301 Noida, Uttar Pradesh, India',321,1231,4,'AICTE Approved and AKTU Affiliated College','Rank 3 in AKTU last 6 samesters',1,1,1,1,1,1,1,'2023-05-05','2023-05-05','1','1','EST. 2016','dist/img/kietimg.png'),(4,'Raj Kumar Goel Institute Of TechnologyCollege in Ghaziabad, Uttar Pradesh','Raj Kumar Goel Institute of Technology, is a private college in Ghaziabad, India. It is affiliated to Dr. A.P.J. Abdul Kalam Technical University',1202788273,' 5KM Stone Delhi, Meerut Rd, near Raj Nagar Extension Road, Ghaziabad, Uttar Pradesh 201003',33,1000,4,'AICTE Approved and AKTU Affiliated College','Rank 2 in AKTU last 4 samesters',1,1,1,1,1,1,1,'2023-05-05','2023-05-05','1','1','EST. 2000','dist/img/rkglogo.jpg');
/*!40000 ALTER TABLE `college_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 19:01:20
