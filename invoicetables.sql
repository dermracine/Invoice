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
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1,101599);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
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
  `storeNum` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) DEFAULT NULL,
  `dispBox` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (20,'Adirondack Humane Society, Inc.',0.8,1.2,'Lacey Ahrent','134 Idaho Avenue','Plattsburgh','NY','12903','518-561-7297','',' ',' ',' \r'),(21,'Beaudry\'s Store',0.85,1.29,'Linda or Pat','2175 Main','Huntington','VT','54676','434-2564',' ',' ',' ','93\r'),(22,'Ben & Jerry\'s',0.75,1.5,'Rosie or Krista','1281 Waterbury-Stowe Rd','Waterbury','VT','5676','882-1240 X 2044 or 882-2044',' - Gift shop ext 2265',' ',' ','22\r'),(23,'Bob\'s Meat Market',0.85,1.2,'Bob','23 Barlow St','St. Albans','VT','5478','524-6195','',' ',' ','25\r'),(24,'Cambridge Village Market',0.85,1.29,'Bruce MacMillan','South Main Street','Cambridge','VT','5444','644-2272','',' ',' ','36\r'),(25,'Chittenden Mills Beverage',0.85,1.2,'Ray','39 Route 15','Jericho','VT','5465','899-1494',' ',' ',' ','71\r'),(26,'Country Groomer',0.8,1.2,'Brenda Gleason','69 South Main Street','Barre','VT','5641','479-7036 or (F) 479-7038',' ',' ',' ','111\r'),(27,'Cupboard Deli',0.8,1.2,'Alita','4837 Rt 15','Cambridge','VT','5444','644-2069','',' ',' ','35\r'),(28,'Cystic Fibrosis Hope',0.8,1.2,'Kitty Brady','24 Main St','Milton','VT','5468','578-6930',' ',' ',' ',' \r'),(29,'Dave\'s Soda & Pet City - Accounts Payable',0.85,1.39,'Jillian@davespetcity.com','1330 Carew Street','Springfield','MA','1104','413-789-2259',' ',' ',' ',' \r'),(30,'Dave\'s Soda & Pet City - Agawam',0.85,1.39,'Laura','151 Springfield Street','Agawam','MA','1001','(413) 786-3339 or (F) 413-789-2523',' - 789-2259',' ',' ','107\r'),(31,'Dave\'s Soda & Pet City - Hadley',0.85,1.39,'Manager - Gail, Orderer - Nicole','335 Russell Street (Route 9)','Hadley','MA','1035','(413) 584-7511',' ',' ',' ','108\r'),(32,'Dave\'s Soda & Pet City - Ludlow',0.85,1.39,'Kim','433 Center Street, Suite 25','Ludlow','MA','1056','(413)583-2904',' ','Ludlow, MA 01056',' ','38\r'),(33,'Dave\'s Soda & Pet City - Northampton',0.85,1.39,'Shannon','142 North King Street','Northampton','MA','1060','(413) 585-1170',' ',' ',' ','105\r'),(34,'Dave\'s Soda & Pet City - Springfield',0.85,1.39,'Mike','1330 Carew Street','Springfield','MA','1104','(413) 732-2275',' ',' ',' ','106\r'),(35,'Dave\'s Soda & Pet City - Stafford Springs',0.85,1.39,'Vera','87-C W. Stafford Road','Stafford Springs','CT','6076','(860) 684-2173',' ',' ',' ','\r'),(36,'Dave\'s Soda & Pet City - Ware',0.85,1.39,'Lindsay','140 West Street','Ware','MA','1082','(413) 967-3684',' ',' ',' ',' \r'),(37,'Derby Dog Park Event',1,1,'Sara Frasier',' ','Newport, VT 05855','VT','5855','334-5116',' ',' ',' ',' \r'),(38,'Derby Village Store',0.85,1.2,'Dave & Beth Bouffard','483 Main Street','Derby, VT 05829','VT','5829','766-2215','',' ',' ','13\r'),(39,'Essex Colonial Mart',0.85,1.25,'Ann or Steve Martin','50 Susie Wilson Road','Essex Junction','VT','5452','879-7471','',' ',' ','77\r'),(40,'Essex Discount Beverage',0.85,1.2,'Kevin','76 Center Road','Essex Junction','VT','5452','879-8951 or (F) 879-9166','',' ',' ','3\r'),(41,'Farmyard Store & Rental Center',0.85,1.2,'Rick or Nate Hamblett','3262 US Route 5','Derby','VT','5829','766-2714','',' ',' ','50\r'),(42,'Franklin County Humane Society',0.7,1,'Rusty','30 Sunset Meadows','St Albans','VT','5478','524-9650',' - Rusty Home - 848-7180',' ',' ','14\r'),(43,'Georgia Market',0.9,1.2,'Ray Bouffard','962 Ethan Allen Highway','Georgia','VT','5454','527-1100',' ',' ','Vendor #105','DGGG-01\r'),(44,'Gift Wrecked',0.9,1.29,'Dena Gray or Stella','47 Landing Street','Newport','VT','5855','334-0295 or R-334-2340',' - 334-9100',' ',' ','95\r'),(45,'Hanley\'s Store Inc',0.85,1.39,'Darlene Gray','30 Main Street','Jeffersonville','VT','5464','644-8881','',' ',' ','27\r'),(46,'Jay Peak Resort',0.8,1.2,'Jaime Stenger or Jen Wirth','4850 VT Route 242','Jay','VT','5859','327-2184',' ',' ',' ','62\r'),(47,'Jericho Center Country Store',0.85,1.2,'Linda St Amour, John or Mark','25 Jericho Center Circle','Jericho Center','VT','5465','899-3313','',' ',' ','18\r'),(48,'Jericho General Store',0.8,1.2,'Mel Mitchell','P.O. Box 244, 53 Route 15','Jericho','VT','5465','899-4661','',' ',' ','24\r'),(49,'Jolley - Associates',0,0,'Shannon','54 Lower Welden Street, P.O. Box 671','St Albans','VT','5478','524-1569','',' ','Vendor #50886',' \r'),(50,'Jolley - Short Stop (Alburg Irving)',0.9,1.3,'Manager - Mary','316 US Route 2 North','Alburg','VT','5440','796-3154',' - Second before bridge','Store #158','Vendor #50886','\r'),(51,'Jolley - Short Stop (Alburg Mobil Bridge)',0.9,1.3,'Manager - Mary or Asst - Katy','320 US Route 2 North','Alburg','VT','5440','796-3360',' - By the bridge','Store #136','Vendor #50886',' \r'),(52,'Jolley - Short Stop (Alburg Mobil Village)',0.9,1.3,'Manager - Leonard','36 North Main Street','Alburg','VT','5440','796-4705',' - In center of town','Store #135','Vendor #50886',' \r'),(53,'Jolley - Short Stop (Bakersfield)',0.9,1.3,'Manager - Robin','Route 108','Bakersfield','VT','5441','827-6533','','Store #141','Vendor #50886','\r'),(54,'Jolley - Short Stop (Barre-Berlin Mobil)',0.9,1.3,'Manager - Tim','1097 US Route 302','Barre','VT','5641','479-2213','','Store #137','Vendor #50886','104\r'),(55,'Jolley - Short Stop (Berkshire)',0.9,1.3,'Manager - Julie','Route 105','Berkshire','VT','5447','933-5600',' ','Store #112','Vendor #50886',' \r'),(56,'Jolley - Short Stop (Clifton Park)',0.9,1.3,'Manager - Melinda or Supervisor - David','2 Clifton Country Road','Clifton Park','NY','12065','518-371-7292 or 518-354-1268',' - Southern most NY store','Store #621','Vendor #50886','\r'),(57,'Jolley - Short Stop (Derby Mobil)',0.9,1.3,'Manager - Andre','4486 US Rt 5','Derby','VT','5829','334-6835','','Store #113','Vendor #50886','17\r'),(58,'Jolley - Short Stop (Ferrisburg)',0.9,1.3,'Manager - Rosie or Heather','6973 Route 7','Ferrisburg','VT','5456','425-5802',' ','Store #311','Vendor #50886','\r'),(59,'Jolley - Short Stop (Hinesburg)',0.9,1.3,'Manager - Heather','140 Commerce St','Hinesburg','VT','5461','482-4556',' ','Store #143','Vendor #50886',' \r'),(60,'Jolley - Short Stop (Johnson)',0.9,1.3,'Manager - Armand','Route 15','Johnson','VT','5656','635-9566 - (F) 635-2491','','Store #305','Vendor #50886','55\r'),(61,'Jolley - Short Stop (Lake George)',0.9,1.3,'Manager - Mike or Supervisor - David','1412 State Route 9','Lake George','NY','12845','518-793-3331 or 518-354-1268','','Store #615','Vendor #50886','\r'),(62,'Jolley - Short Stop (Midtown Mobil)',0.9,1.3,'Manager - Bill','Route 7','Milton','VT','5468','893-2573','','Store #128','Vendor #50886','62\r'),(63,'Jolley - Short Stop (Milton Short Stop)',0.9,1.3,'Manager - Colleen','Route 7','Milton','VT','5468','893-6536','','Store #122','Vendor #50886','61\r'),(64,'Jolley - Short Stop (Moretown General Store)',0.9,1.3,'Manager - David','1114 Route 100B','Moretown','VT','5660','496-6580','','Store #321','Vendor #50886','10\r'),(65,'Jolley - Short Stop (North Avenue)',0.9,1.3,'Manager - Dave or Ellen','1555 North Avenue','Burlington','VT','5401','660-8680','','Store #126','Vendor #50886','47\r'),(66,'Jolley - Short Stop (Pinnacle Peddler)',0.9,1.3,'Manager - Sherry','308 South Main Street','Richford','VT','5476','848-3886',' ','Store #','Vendor #50886',' \r'),(67,'Jolley - Short Stop (Plattsburg)',0.9,1.3,'Manager - Louise or Supervisor - David','443 Route 3','Plattsburgh','NY','12901','518-563-0043 or 518-354-1268',' - Sells Faster','Store #613','Vendor #50886','\r'),(68,'Jolley - Short Stop (Queensbury Exit 19)',0.9,1.3,'Manager - Jackie','Exit 19, 474 Aviation Road','Queensbury','NY','12804','518-793-7071 or 518-354-1268','','Store #617','Vendor #50886','\r'),(69,'Jolley - Short Stop (Queensbury)',0.9,1.3,'Manager - Kristine or Supervisor - David','777 Upper Glen Street','Queensbury','NY','12804','518-793-0005 or 518-354-1268',' ','Store #619','Vendor #50886','\r'),(70,'Jolley - Short Stop (Riverside)',0.9,1.3,'Manager - Meghan','Route 15','Jericho','VT','5465','899-2507','','Store #303','Vendor #50886',' \r'),(71,'Jolley - Short Stop (Shelburne Road - Middle Mobil',0.9,1.3,'Manager - Marcel or Asst - Diane','1110 Shelburne Road','South Burlington','VT','5403','865-2005',' - Middle store on Shelburne Rd','Store #146','Vendor #50886','53\r'),(72,'Jolley - Short Stop (Shelburne Road - North Mobil)',0.9,1.3,'Manager - Donna','977 Shelburne Road','South Burlingotn','VT','5403','864-9654',' - Northern most Shelburne Rd - across from Laura\'','Store #107','Vendor #50886','56\r'),(73,'Jolley - Short Stop (Shelburne Road - South Mobil)',0.9,1.3,'Manager - Jeremy','1830 Shelburne Road','Shelburne','VT','5403','658-2965',' - Southern most Shelburne Rd','Store #104','Vendor #50886','66\r'),(74,'Jolley - Short Stop (South Hero)',0.9,1.3,'Manager - Susan','337 Route 2','South Hero','VT','5486','372-4980','','Store #173','Vendor #50886','17\r'),(75,'Jolley - Short Stop (St Albans Shell)',0.9,1.3,'Manager - Maryellen','277 North Main Street','St Albans','VT','5478','524-5000','','Store #157','Vendor #50886','\r'),(76,'Jolley - Short Stop (Stowe Car Wash & Deli)',0.9,1.3,'Manager - Lucas','911 South Main Street','Stowe','VT','5672','253-9961','','Store #156','Vendor #50886','\r'),(77,'Jolley - Short Stop (Swanton)',0.9,1.3,'Manager - Stan','97 First Street','Swanton','VT','5488','868-3527','','Store #111','Vendor #50886','51\r'),(78,'Jolley - Short Stop (Tafts Corners)',0.9,1.3,'Manager - Jessie','2200 Essex Road','Williston','VT','5495','879-0223','','Store #124','Vendor #50886','NA\r'),(79,'Jolley - Short Stop (The Breakyard)',0.9,1.3,'Manager - Mary','93 Federal Street','St Albans','VT','5478','524-2314',' ','Store #162','Vendor #50886',' \r'),(80,'Jolley - Short Stop (Uncle Floyd\'s)',0.9,1.3,'Manager - Julie','424 Main Street','Enosburg','VT','5450','933-2503',' ',' ','Vendor #50886',' \r'),(81,'Jolley - Short Stop (Wagon Wheel)',0.9,1.3,'Manager - Shawn','Route 104','St Albans','VT','5478','527-0104','','Store #150','Vendor #50886','9\r'),(82,'Jolley - Short Stop (Williston Road Mobil)',0.9,1.3,'Manager - ','1314 Williston Road','South Burlinton','VT','5403','658-4635','','Store #105','Vendor #50886','40\r'),(83,'Katie Giorgano',0.9,1.5,' ','386 Spring Avenue','Ridgewood','NJ','7450','201-370-0198',' ',' ',' ','DGGGS-04\r'),(84,'Kellerhaus Inc.',0.9,1.5,'Mary Ellen Dutton','P.O. Box 5337','Weirs Beach','NH','3247','603-366-4466',' - Cell 603-591-5998\nHome 603-437-4549',' ','$2.00 will be added for every 15 days of non-payme','19/23\r'),(85,'Kerry\'s Kwik Stop',0.8,1.2,'Rocky','249 St. Paul Street','Burlington','VT','5401','863-9279','',' ',' ','8\r'),(86,'Kevin\'s Kwik Stop & Deli',0.85,1.2,'Rob','58 Chase Lane','Colchester','VT','5446','865-0160',' ',' ',' ','96\r'),(87,'Korner Kwik Stop',0.85,1.2,'Bernard Perreault, Prop.','21 North Williston Road','Williston','VT','5495','878-8927','',' ',' ','37/38\r'),(88,'Lisa Fedick',1,1.5,'Brandi','123 Glenwood Avenue','Bridgeport','CT','6610','203-576-8118','    ',' ',' ','   \r'),(89,'Maplefield\'s - Enosburg',0.8,1.3,'Manager - Christine','518 Pearl St','Enosburg','VT','5450','933-2003 or (F) 933-5338',' Fax 933-5338',' ',' ',' \r'),(90,'Maplefield\'s - Highgate Village Mobil',0.8,1.3,'Manager - Marie','Route 78','Highgate Ctr','VT','5459','868-3555',' ',' ',' ','DGGG-S03\r'),(91,'Maplefield\'s - Johnson',0.8,1.3,'Manager - Michelle','Main Street','Johnson','VT','5656','635-7200',' - Home Fax 888-0073',' ',' ',' \r'),(92,'Maplefield\'s - Madonna Mobil',0.8,1.3,'Kevin','4828 Vt Route 15 & 108','Jeffersonville','VT','5464','644-5428',' ',' ','','\r'),(93,'Maplefield\'s - North St Albans',0.8,1.3,'Manager - Lucy','366 Swanton Rd','St Albans','VT','5478','524-6161',' ',' ',' ',' \r'),(94,'Maplefield\'s - On the Run St Albans',0.8,1.3,'Manager - Nancy','555 Fairfax Rd','St Albans','VT','5478','527-9932',' ',' ','  ','  \r'),(95,'Maplefield\'s - Stowe',0.8,1.3,'Heather','14 South Main Street','Stowe','VT','5672','253-7530',' ',' ',' ','8\r'),(96,'Maplefield\'s - Swanton',0.8,1.3,'Manager - Monica','165 1st Street','Swanton','VT','5488','868-0090',' ',' ',' ',' \r'),(97,'Menard\'s Market',0.8,1.2,'Joseph','Route 36','Fairfield','VT','5455','827-3248','',' ',' ','48\r'),(98,'Milton Beverage',0.85,1.2,'Joe or Peggy','484 Route 7 South','Milton','VT','5468','893-7076','',' ',' ','\r'),(99,'Milton Veterinary Hospital, Inc',0.8,1.2,'Sharon','2 Chrisemily Lane','Milton','VT','5468','893-4000','',' ',' ','12\r'),(100,'Minor\'s Country Store',0.85,1.2,'Kim','Route 104','Fairfax','VT','5454','849-6838','',' ',' ','6\r'),(101,'Mountain View Stand',0.85,1,'Barbara Judd','1464 East Main St','Newport','VT','5855','334-5545 or 895-4249\nClosed \'til April',' ',' ',' ','11\r'),(102,'Nan\'s Mobil',0.85,1.29,'Sing','1301 Main Street','Fairfax','VT','5454','849-6161 or 849-2028','',' ',' ','\r'),(103,'One Stop Country Pet Supply',0.9,1.2,'Amber','1284 Route 302','Barre','VT','5641','479-4307  or (F) 479-5967','479-5967 (Fax) 802-254-3664',' ',' ','2/54/58\r'),(104,'Paxton Greens',0.9,1.39,'Russel & Donna Reay','97 Stewart Lane','Cuttingsville','VT','5738','492-3323',' ',' ',' ',' \r'),(105,'Pick & Shovel Pet Shop',0.85,1.2,'Brenda','54 Coventry Street','Newport','VT','5855','334-1885',' ',' ',' ','\r'),(106,'Pinnacle Peddler',0.9,1.29,'Paulette','308 South Main Street','Richford','VT','5476','848-3886','',' ',' ','29\r'),(107,'R.L. Vallee, Inc.',0,0,'Betty','280 South Main Street, PO Box 192','St Albans','VT','5478','524-8710 or (F) 524-8714',' ',' ',' ',' \r'),(108,'Rail City Market',0.8,1.2,'Nancy','8 South Main Street','St Albans','VT','5478','524-3769','',' ','  ','4\r'),(109,'River Road Beverage',0.85,1.2,'Ray','45 River Road','Essex Junction','VT','5452','872-0290','',' ',' ','39\r'),(110,'River Valley Store',0.8,1.2,'Mike Farrell','Route 100C','North Hydge Park','VT','5665','635-6144 or 309-2616',' - 849-6237',' ',' ','93\r'),(111,'Simon\'s - Battery Park',0.75,1.25,'Anthony','42 Park Street','Burlington','VT','5401','862-1945 or 373-9206','',' ',' ','21\r'),(112,'Simon\'s - Berlin Store',0.75,1.25,'Tammy','321 Barre-Montpelier Road','Barre','VT','5641','479-2711 or 373-9206','',' ','  ','DGGGS-02\r'),(113,'Simon\'s - Chimney Corners',0.75,1.25,'Brad','Chimney Corners','Colchester','VT','5446','878-2954 or 373-9206','',' ',' ','32\r'),(114,'Simon\'s - College Parkway',0.75,1.25,'Shiike','883 College Parkway','Colchester','VT','5446','655-2700',' ',' ',' ','91\r'),(115,'Simon\'s - Corner Store',0.75,1.25,'Bob Tabet','16 Heineberg Drive','Colchester','VT','5446','862-0775','',' ',' ','26\r'),(116,'Simon\'s - Downtown Quick Stop & Deli',0.75,1.25,'Joan','South Winooski Avenue','Burlington','VT','5401','658-2259 or 373-9205','',' ',' ','16\r'),(117,'Simon\'s - Essex',0.75,1.25,'Todd ','134 Jericho Road','Essex','VT','5451','878-3091 or 373-9206','',' ',' ','30\r'),(118,'Simon\'s - Gracey\'s',0.75,1.25,'Anthony','Williston Road','South Burlington','VT','5403','862-1253 or 373-9206','',' ',' ','59\r'),(119,'Simon\'s - Milton',0.75,1.25,'Joan','Route 7','Milton','VT','5468','893-4906 or 373-9206','',' ',' ','34\r'),(120,'Simon\'s - Montpelier',0.75,1.25,'Wendy','Route 302','Montpelier','VT','5601','229-0314 or 373-9206','',' ','  ','100\r'),(121,'Simon\'s - Plaza',0.75,1.25,'Mario','355 Williston Road # 10','Williston','VT','5495','879-8671 or 373-9206','',' ',' ','28\r'),(122,'Simon\'s - Route 2A Store, LLC',0.75,1.25,'Masha','221 Colchester Road','Essex Junction','VT','5452','878-5892','',' ',' ',' \r'),(123,'Simon\'s - Shelburne Road',0.75,1.25,'Laura','974 Shelburne Road','South Burlington','VT','5403','862-8011 or 373-9206','',' ',' ','7\r'),(124,'Simon\'s - St. George',0.75,1.25,'Mario','10 Barber Road','St Gerorge','VT','5495','482-2183',' ',' ',' ','43\r'),(125,'Simon\'s - Winooski',0.75,1.25,'Muhamed','262 Main Street','Winooski','VT','5404','655-4164 or 373-9206','',' ',' ','20\r'),(126,'Stony Point Market, LLC',0.9,1.5,'Katie  Giorgano','133 Route 210','Stony Point','NY','10980','201-370-0198',' ',' ',' ','DGGGS-04\r'),(127,'Stowe Mountain Lodge',0.9,1.29,'David - Manager','7412 Mountain Road','Stowe','VT','5672','760-4762 or 866-652-0658',' ',' ',' ','DGGG-04\r'),(128,'The Pizza Guy',0.8,2,'Bobby Aversa','65 Maple Street','Agawam','MA','1001','413-210-5383',' ',' ',' ','\r'),(129,'The Quirky Pet',0.9,1.5,'Cindra','5 State Street','Montpelier','VT','5601','802-229-1211',' ',' ',' ',' \r'),(130,'The Studio of Duxbury',0.85,1.75,'Marcy Stanton','25 Depot Street','Duxbury','MA','2332','781-934-2121',' (F)781-934-9452',' ',' ','109\r'),(131,'Total Fitness Equipment',0.85,1.65,'Jon Valles','274 Nutmeg Rd. South','South Windsor','CT','6074','Office 860-290-8842 x22 ','Cell 860-983-0311\nFax 860-282-0713','  ',' ','24\r'),(132,'Troy Country Store',0.8,1.2,'John','6561 Route 100','Troy','VT','5868','744-6146',' - John\'s Store - Cheap Gas',' ',' ',' \r'),(133,'Troy General Store',0.9,1.2,'Anthony','PO Box 188','Troy','VT','5868','744-2200',' - Tony\'s Store',' ',' ','5\r'),(134,'Vermont Maple Outlet',0.85,1.2,'Michelle','3929 Vt Route 15','Jeffersonville','VT','5464','644-5482',' ',' ',' ','92\r'),(135,'WTC of New Mexico, Inc',0.9,1.5,'Dina','Sugarbush Resort','Warren','VT','5674','407-250-4820','(F)802-583-6154','Warren, VT 05674',' ','118\r');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(50) DEFAULT NULL,
  `priceWholesale` double DEFAULT NULL,
  `priceRetail` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Assorted Dog Cookies with or w/o Carob Chips, Caro',0.95,1.49),(2,'Assorted Ice Cream Cone Dog Cookies with or w/o Ca',1,1.59),(3,'Backup Supply',0.95,1.49),(4,'Backup Supply Box #1',0.95,1.49),(5,'Backup Supply Box #2',0.95,1.49),(6,'Backup Supply Box #3',0.95,1.49),(7,'Christmas Stocking - Large',14.5,20),(8,'Christmas Stocking - Small',8,11.5),(9,'Cookies made for the dog wash vending machine',0.75,1),(10,'Cow Face Dog Cookies',0.9,1.7),(11,'Credit',-0.95,-1.49),(12,'Halloween Mesh Bags',4.3,6),(13,'Individual Bags - 4 Ounce',3.2,4.69),(14,'Individual Bags - 8 Ounce',5,7.59),(15,'Individual Bags - 8 Ounce wholesale to customer',6.5,9.75),(16,'Large Cat Face',2.5,3.75),(17,'Large Grinch',2.5,3.75),(18,'Metal 3  Tier Ice Cream Cone Ornaments',3,6),(19,'Painted Wooden Ornamental Ice Cream Cones',3,6),(20,'Payment due 15 days from invoice date.  $3.00 adde',0,0),(21,'Santa Bags',5.44,7.79),(22,'Seconds donated for advertisement by Dog-Gone Good',1,1.79),(24,'Snowmen Bags',5.44,7.79),(25,'Wooden Ornamental Cows',3.1,7),(26,'Wooden Ornamental Cows with or without Vermont',3.1,7);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-01 23:09:08
