-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: invoice
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `retail` double DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `phoneAlt` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) DEFAULT NULL,
  `dispBox` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Maplefield\'s Madonna Mobil',0.95,1.49,'Lori','1632 Route 15','Jeffersonville','VT','04563','802-644-1272',NULL,NULL,'15'),(2,'Maplefield\'s Highgate',0.95,1.49,'Brandi','1244 Route 78','Highgate','VT','93954','802-578-3672',NULL,NULL,'17'),(3,'Jolley Short Stop Highgate',0.95,1.49,'Kelly','3727','Highgate','VT','03832','8027543214',NULL,'465473','25'),(4,'Jolley Short Stop Breakyard',0.95,1.49,'Sherry','3726','St Albans','VT','04658','802-524-3224',NULL,'74772','30'),(9,'Boutin',0.99,1.79,'Jason','3782 Route 101','Jay','VT','05859','9881170',NULL,'','49'),(10,'Troy General Store',0.9,1.29,'Tony','Route 101','Troy','VT','37722','744-2290',NULL,'','56'),(11,'Boutin Mini Market',0.89,1.29,'Jess','Route 101','Jay','VT','05859','988-1170',NULL,'','87'),(16,'Steven\'s Store',0.98,1.59,'Mark O\'brien','35 Route 78','Johnson','VT','94982','743-8322',NULL,'','76'),(18,'Beaudry\'s Store',0.99,1.69,'Linda','Huntington Road','Huntington','VT','08343','8024278821',NULL,'','33'),(19,'Jay Country Store',1,1.69,'Tara','345 Route 242','Jay','VT','05859','988-2289',NULL,'','19');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-07 22:42:34
