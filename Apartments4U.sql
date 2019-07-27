-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: apartments4u
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Select Database `apartment`
--
drop schema if exists Apartments4u;
create database Apartments4u;
use Apartments4u;


--
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartment` (
  `Building` int(2) NOT NULL DEFAULT '0',
  `Letter` char(1) NOT NULL DEFAULT '',
  `Bedrooms` int(1) DEFAULT NULL,
  `Bathrooms` int(1) DEFAULT NULL,
  `Layout` varchar(10) DEFAULT NULL,
  `Balcony` tinyint(1) DEFAULT NULL,
  `Patio` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Building`,`Letter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,'A',2,1,'Layout- A',1,0),(1,'B',3,2,'Layout- B',1,0),(1,'C',2,1,'Layout- C',0,1),(1,'D',3,2,'Layout- D',0,1),(3,'A',2,1,'Layout- A',1,0),(3,'B',3,2,'Layout- B',1,0),(3,'C',2,1,'Layout- C',0,1),(3,'D',3,2,'Layout- D',0,1),(5,'A',2,1,'Layout- A',1,0),(5,'B',3,2,'Layout- B',1,0),(5,'C',2,1,'Layout- C',0,1),(5,'D',3,2,'Layout- D',0,1),(7,'A',2,1,'Layout- A',1,0),(7,'B',3,2,'Layout- B',1,0),(7,'C',2,1,'Layout- C',0,1),(7,'D',3,2,'Layout- D',0,1),(9,'A',2,1,'Layout- A',1,0),(9,'B',3,2,'Layout- B',1,0),(9,'C',2,1,'Layout- C',0,1),(9,'D',3,2,'Layout- D',0,1);
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appliances`
--

DROP TABLE IF EXISTS `appliances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appliances` (
  `Building` int(2) NOT NULL DEFAULT '0',
  `Letter` char(1) NOT NULL DEFAULT '',
  `Make` varchar(50) NOT NULL DEFAULT '',
  `Model` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Building`,`Letter`,`Make`,`Model`),
  CONSTRAINT `FK_Appliances_Apartment` FOREIGN KEY (`Building`, `Letter`) REFERENCES `apartment` (`Building`, `Letter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appliances`
--

LOCK TABLES `appliances` WRITE;
/*!40000 ALTER TABLE `appliances` DISABLE KEYS */;
INSERT INTO `appliances` VALUES (1,'A','Frigidair','Fridge'),(1,'A','Frigidair','Microwave'),(1,'A','GE','Dryer'),(1,'A','GE','Oven'),(1,'A','GE','Washer'),(1,'B','GE','Dryer'),(1,'B','GE','Fridge'),(1,'B','GE','Microwave'),(1,'B','GE','Oven'),(1,'B','Whirlpool','Washer'),(1,'C','Frigidair','Dryer'),(1,'C','Frigidair','Fridge'),(1,'C','GE','Microwave'),(1,'C','GE','Washer'),(1,'C','Whirlpool','Oven'),(3,'A','Frigidair','Washer'),(3,'A','GE','Dryer'),(3,'A','GE','Fridge'),(3,'A','GE','Microwave'),(3,'A','Whirlpool','Oven'),(3,'B','Frigidair','Microwave'),(3,'B','Frigidair','Washer'),(3,'B','GE','Dryer'),(3,'B','GE','Fridge'),(3,'B','GE','Oven'),(3,'C','GE','Dryer'),(3,'C','GE','Microwave'),(3,'C','GE','Oven'),(3,'C','GE','Washer'),(3,'C','Whirlpool','Fridge'),(5,'A','GE','Dryer'),(5,'A','GE','Oven'),(5,'A','Whirlpool','Fridge'),(5,'A','Whirlpool','Microwave'),(5,'A','Whirlpool','Washer'),(5,'B','GE','Dryer'),(5,'B','GE','Fridge'),(5,'B','GE','Microwave'),(5,'B','GE','Oven'),(5,'B','GE','Washer'),(5,'C','GE','Dryer'),(5,'C','GE','Fridge'),(5,'C','GE','Microwave'),(5,'C','GE','Oven'),(5,'C','Whirlpool','Washer'),(7,'A','GE','Dryer'),(7,'A','GE','Fridge'),(7,'A','GE','Microwave'),(7,'A','GE','Washer'),(7,'A','Whirlpool','Oven'),(7,'B','GE','Dryer'),(7,'B','GE','Oven'),(7,'B','GE','Washer'),(7,'B','Whirlpool','Fridge'),(7,'B','Whirlpool','Microwave'),(7,'C','Frigidair','Oven'),(7,'C','GE','Dryer'),(7,'C','GE','Fridge'),(7,'C','GE','Microwave'),(7,'C','GE','Washer'),(9,'A','Frigidair','Fridge'),(9,'A','GE','Microwave'),(9,'A','GE','Oven'),(9,'A','Whirlpool','Dryer'),(9,'A','Whirlpool','Washer'),(9,'B','GE','Dryer'),(9,'B','GE','Fridge'),(9,'B','GE','Microwave'),(9,'B','GE','Oven'),(9,'B','GE','Washer'),(9,'C','Frigidair','Dryer'),(9,'C','GE','Fridge'),(9,'C','GE','Oven'),(9,'C','Whirlpool','Microwave'),(9,'C','Whirlpool','Washer');
/*!40000 ALTER TABLE `appliances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lease`
--

DROP TABLE IF EXISTS `lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lease` (
  `SSN` int(10) NOT NULL DEFAULT '0',
  `Building` int(2) NOT NULL DEFAULT '0',
  `Letter` char(1) NOT NULL DEFAULT '',
  `LeaseDate` date NOT NULL DEFAULT '0000-00-00',
  `MonthlyRent` decimal(10,0) DEFAULT NULL,
  `MoveInCondition` varchar(100) DEFAULT NULL,
  `MoveOutCondition` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SSN`,`Building`,`Letter`,`LeaseDate`),
  KEY `FK_Lease_Property` (`Building`,`Letter`),
  CONSTRAINT `FK_Lease_Property` FOREIGN KEY (`Building`, `Letter`) REFERENCES `apartment` (`Building`, `Letter`),
  CONSTRAINT `FK_Lease_Tenant` FOREIGN KEY (`SSN`) REFERENCES `tenant` (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lease`
--

LOCK TABLES `lease` WRITE;
/*!40000 ALTER TABLE `lease` DISABLE KEYS */;
INSERT INTO `lease` VALUES (113928113,1,'D','2013-05-01',1100,'Excellent','Excellent'),(113928113,3,'B','2011-07-01',1400,'Excellent','Excellent'),(113928113,3,'D','2012-04-01',1500,'Excellent','Good'),(113928113,7,'A','2010-06-01',1600,'Excellent','Excellent'),(120846823,9,'C','2011-05-01',1200,'Excellent','Fair'),(123658963,1,'B','2010-05-01',1500,'Excellent','Excellent'),(123658963,5,'B','2012-04-01',1500,'Excellent','Excellent'),(123658963,5,'D','2011-04-01',1700,'Excellent','Fair'),(128778303,7,'C','2011-05-01',1600,'Excellent','Good'),(156794583,7,'A','2011-07-01',1700,'Excellent','Excellent'),(158609957,9,'C','2011-05-01',1200,'Excellent','Fair'),(158966777,1,'D','2010-04-01',1300,'Excellent','Fair'),(183369301,7,'C','2013-07-01',1300,'Excellent','Good'),(183369301,7,'C','2014-07-02',1300,'Excellent','Good'),(188368749,7,'D','2011-06-01',1200,'Excellent','Excellent'),(198163423,5,'A','2013-04-01',1300,'Excellent','Excellent'),(198163423,5,'A','2014-04-01',1300,'Excellent','Excellent'),(198163423,9,'C','2010-06-01',1100,'Excellent','Fair'),(212808784,7,'C','2012-06-01',1500,'Excellent','Good'),(240679929,1,'D','2011-06-01',1400,'Excellent','Fair'),(251961723,7,'D','2012-07-01',1100,'Excellent','Excellent'),(264880210,5,'A','2011-04-01',1300,'Excellent','Fair'),(264880210,9,'D','2013-06-01',1600,'Excellent','Excellent'),(272208381,5,'A','2012-06-01',1200,'Excellent','Fair'),(275143666,7,'D','2013-04-01',1100,'Excellent','Excellent'),(275143666,7,'D','2014-04-01',1100,'Excellent','Excellent'),(283725508,3,'D','2011-06-01',1600,'Excellent','Good'),(284162366,7,'A','2013-07-01',1600,'Excellent','Excellent'),(284162366,7,'A','2014-06-01',1750,'Excellent','Excellent'),(284162366,9,'C','2012-07-01',1100,'Excellent','Fair'),(285659333,5,'D','2014-07-01',1300,'Excellent','Good'),(290880536,9,'A','2011-04-01',1300,'Excellent','Good'),(297296770,7,'D','2012-07-01',1100,'Excellent','Excellent'),(301706951,5,'C','2012-04-01',1100,'Excellent','Excellent'),(305349857,5,'A','2013-04-01',1300,'Excellent','Excellent'),(305349857,5,'A','2014-04-01',1300,'Excellent','Excellent'),(320271424,3,'B','2014-05-01',1500,'Excellent','Excellent'),(323863401,7,'C','2012-06-01',1500,'Excellent','Good'),(324981302,5,'C','2012-04-01',1100,'Excellent','Excellent'),(324981302,5,'C','2013-04-01',1300,'Excellent','Good'),(324981302,5,'C','2014-04-01',1300,'Excellent','Good'),(324981302,9,'A','2010-06-01',1200,'Excellent','Good'),(324981302,9,'A','2012-04-01',1200,'Excellent','Good'),(325241313,1,'A','2013-07-01',1300,'Excellent','Fair'),(325241313,1,'A','2014-07-01',1300,'Excellent','Fair'),(331136230,5,'B','2010-04-01',1500,'Excellent','Excellent'),(331136230,5,'D','2013-07-01',1300,'Excellent','Good'),(337391209,1,'B','2013-07-01',1600,'Excellent','Fair'),(345569962,3,'B','2013-05-01',1500,'Excellent','Excellent'),(345569962,9,'A','2010-06-01',1200,'Excellent','Good'),(349890560,9,'D','2011-04-01',1200,'Excellent','Excellent'),(357754963,9,'C','2013-04-01',1200,'Excellent','Excellent'),(365554179,3,'A','2012-07-01',1200,'Excellent','Good'),(392673943,3,'A','2011-07-01',1300,'Excellent','Good'),(392673943,9,'A','2013-07-01',1600,'Excellent','Excellent'),(397867167,3,'A','2011-07-01',1300,'Excellent','Good'),(404750642,1,'A','2012-04-01',1200,'Excellent','Excellent'),(413493876,5,'A','2010-07-01',1200,'Excellent','Fair'),(413493876,5,'C','2013-04-01',1300,'Excellent','Good'),(413493876,5,'C','2014-04-01',1300,'Excellent','Good'),(417547527,5,'C','2011-05-01',1200,'Excellent','Excellent'),(419350635,3,'D','2012-04-01',1500,'Excellent','Good'),(429627249,1,'A','2011-07-01',1200,'Excellent','Excellent'),(429627249,1,'D','2013-04-01',1200,'Excellent','Good'),(429627249,5,'B','2012-04-01',1500,'Excellent','Excellent'),(429627249,7,'C','2010-05-01',1500,'Excellent','Good'),(461899246,5,'C','2011-05-01',1200,'Excellent','Excellent'),(465713738,1,'C','2012-07-01',1300,'Excellent','Excellent'),(478493291,1,'A','2011-07-01',1200,'Excellent','Excellent'),(485428514,9,'D','2013-06-01',1600,'Excellent','Excellent'),(485428514,9,'D','2014-06-01',1600,'Excellent','Excellent'),(490307689,5,'D','2014-07-01',1300,'Excellent','Good'),(490643836,1,'D','2012-04-01',1300,'Excellent','Fair'),(493184221,3,'D','2011-06-01',1600,'Excellent','Good'),(493184221,9,'C','2013-04-01',1200,'Excellent','Excellent'),(493184221,9,'C','2014-04-01',1200,'Excellent','Excellent'),(498267694,9,'A','2011-04-01',1300,'Excellent','Good'),(504502341,3,'B','2013-05-01',1500,'Excellent','Excellent'),(550471501,5,'B','2013-04-01',1100,'Excellent','Excellent'),(550471501,5,'B','2014-04-01',1100,'Excellent','Excellent'),(550471501,9,'D','2010-07-01',1100,'Excellent','Excellent'),(569956197,1,'C','2013-06-01',1600,'Excellent','Good'),(569956197,1,'C','2014-06-01',1600,'Excellent','Good'),(569956197,5,'A','2012-06-01',1200,'Excellent','Fair'),(569956197,7,'C','2010-05-01',1500,'Excellent','Good'),(569956197,9,'A','2011-04-01',1300,'Excellent','Good'),(577427221,7,'A','2012-07-01',1600,'Excellent','Excellent'),(588770724,7,'A','2012-04-01',1600,'Excellent','Excellent'),(588770724,7,'A','2013-06-01',1500,'Excellent','Excellent'),(592543622,1,'C','2013-05-01',1200,'Excellent','Excellent'),(592543622,1,'C','2014-05-01',1200,'Excellent','Excellent'),(592543622,3,'A','2011-07-01',1300,'Excellent','Good'),(592543622,3,'B','2012-05-01',1300,'Excellent','Excellent'),(592543622,7,'A','2010-06-01',1600,'Excellent','Excellent'),(595523630,1,'C','2011-07-01',1400,'Excellent','Excellent'),(613683823,1,'D','2013-04-01',1200,'Excellent','Good'),(616159196,1,'C','2010-05-01',1300,'Excellent','Excellent'),(631612486,1,'D','2014-04-01',1600,'Excellent','Good'),(639223509,9,'A','2014-07-01',1600,'Excellent','Excellent'),(642388412,1,'C','2011-07-01',1400,'Excellent','Excellent'),(642388412,7,'C','2012-06-01',1500,'Excellent','Good'),(642388412,9,'D','2010-07-01',1100,'Excellent','Excellent'),(649545132,1,'A','2010-07-01',1600,'Excellent','Excellent'),(665744818,1,'D','2011-06-01',1400,'Excellent','Fair'),(668458476,5,'D','2011-04-01',1700,'Excellent','Fair'),(668458476,5,'D','2012-07-01',1600,'Excellent','Fair'),(697658523,7,'C','2011-05-01',1600,'Excellent','Good'),(697796444,7,'A','2012-04-01',1600,'Excellent','Excellent'),(697796444,7,'A','2013-06-01',1500,'Excellent','Excellent'),(706477880,1,'A','2011-07-01',1200,'Excellent','Excellent'),(706477880,5,'D','2012-07-01',1600,'Excellent','Fair'),(706477880,9,'B','2010-05-01',1100,'Excellent','Excellent'),(706837152,9,'B','2011-04-01',1200,'Excellent','Excellent'),(715436230,3,'A','2013-07-01',1500,'Excellent','Fair'),(718584440,3,'B','2011-07-01',1400,'Excellent','Excellent'),(718584440,9,'B','2013-04-01',1500,'Excellent','Excellent'),(727187954,3,'A','2010-05-01',1200,'Excellent','Good'),(727656839,9,'D','2014-06-01',1600,'Excellent','Excellent'),(756671211,3,'B','2011-07-01',1400,'Excellent','Excellent'),(760835361,1,'D','2012-04-01',1300,'Excellent','Fair'),(762775159,7,'D','2011-06-01',1200,'Excellent','Excellent'),(767214477,1,'A','2012-04-01',1200,'Excellent','Excellent'),(767813939,9,'A','2012-04-01',1200,'Excellent','Good'),(778429259,1,'D','2010-04-01',1300,'Excellent','Fair'),(784347842,1,'B','2013-07-01',1600,'Excellent','Fair'),(784347842,1,'B','2014-07-01',2000,'Excellent','Fair'),(784347842,3,'A','2012-07-01',1200,'Excellent','Good'),(784347842,5,'D','2010-05-01',1600,'Excellent','Fair'),(784347842,7,'A','2011-07-01',1700,'Excellent','Excellent'),(786288147,3,'D','2013-07-01',1600,'Excellent','Excellent'),(786288147,3,'D','2014-07-01',1600,'Excellent','Excellent'),(786288147,9,'B','2010-05-01',1100,'Excellent','Excellent'),(793278912,1,'B','2011-07-01',1600,'Excellent','Excellent'),(793278912,1,'C','2012-05-01',1300,'Excellent','Excellent'),(793278912,1,'C','2013-05-01',1200,'Excellent','Excellent'),(793278912,9,'D','2014-06-01',1600,'Excellent','Excellent'),(793340247,3,'B','2014-05-01',1500,'Excellent','Excellent'),(803511351,7,'C','2012-06-01',1500,'Excellent','Good'),(805120925,3,'D','2010-06-01',1500,'Excellent','Good'),(805120925,5,'B','2013-04-01',1100,'Excellent','Excellent'),(805120925,5,'B','2014-04-01',1100,'Excellent','Excellent'),(805192881,1,'D','2014-05-01',1600,'Excellent','Excellent'),(805365637,1,'B','2011-07-01',1600,'Excellent','Excellent'),(805365637,7,'A','2012-07-01',1600,'Excellent','Excellent'),(805365637,9,'C','2010-06-01',1100,'Excellent','Fair'),(811310599,3,'A','2014-07-01',1650,'Excellent','Fair'),(827344667,1,'D','2012-04-01',1300,'Excellent','Fair'),(827344667,3,'C','2014-07-01',1300,'Excellent','Good'),(827344667,7,'C','2013-07-01',1300,'Excellent','Good'),(833721557,1,'C','2012-05-01',1300,'Excellent','Excellent'),(833721557,1,'C','2013-06-01',1600,'Excellent','Good'),(867730967,1,'B','2012-05-01',1500,'Excellent','Excellent'),(867730967,3,'C','2014-07-01',1100,'Excellent','Good'),(867730967,7,'C','2013-07-01',1100,'Excellent','Good'),(875494959,1,'D','2013-05-01',1100,'Excellent','Excellent'),(875684854,9,'A','2013-07-01',1600,'Excellent','Excellent'),(875684854,9,'A','2014-07-01',1600,'Excellent','Excellent'),(885412582,1,'C','2012-07-01',1300,'Excellent','Excellent'),(885412582,7,'D','2013-04-01',1100,'Excellent','Excellent'),(885412582,7,'D','2014-04-01',1100,'Excellent','Excellent'),(886532324,1,'B','2012-05-01',1500,'Excellent','Excellent'),(896407427,5,'B','2011-07-01',1600,'Excellent','Excellent'),(900714838,5,'B','2011-07-01',1600,'Excellent','Excellent'),(908470967,9,'D','2012-05-01',1100,'Excellent','Excellent'),(915315666,9,'B','2011-04-01',1200,'Excellent','Excellent'),(925886185,9,'B','2014-04-01',1500,'Excellent','Excellent'),(938384383,5,'A','2011-04-01',1300,'Excellent','Fair'),(942781386,9,'C','2012-07-01',1100,'Excellent','Fair'),(945510452,3,'B','2010-06-01',1300,'Excellent','Excellent'),(957400551,7,'C','2013-07-01',1100,'Excellent','Good'),(957400551,7,'C','2014-07-01',1100,'Excellent','Good'),(957400551,9,'D','2012-05-01',1100,'Excellent','Excellent'),(965428901,5,'D','2013-07-01',1300,'Excellent','Good'),(965428901,9,'B','2012-04-01',1100,'Excellent','Excellent'),(979326481,7,'A','2011-07-01',1700,'Excellent','Excellent'),(980414573,1,'A','2013-07-01',1300,'Excellent','Fair'),(980414573,1,'A','2014-07-01',1300,'Excellent','Fair'),(980414573,1,'D','2012-04-01',1300,'Excellent','Fair'),(980414573,5,'C','2010-06-01',1100,'Excellent','Excellent'),(980414573,7,'A','2013-07-01',1600,'Excellent','Excellent'),(980414573,9,'D','2011-04-01',1200,'Excellent','Excellent'),(980524922,9,'B','2012-04-01',1100,'Excellent','Excellent'),(980524922,9,'B','2013-04-01',1500,'Excellent','Excellent'),(982254681,3,'B','2012-05-01',1300,'Excellent','Excellent'),(990468750,1,'B','2011-07-01',1600,'Excellent','Excellent'),(990468750,3,'A','2013-07-01',1500,'Excellent','Fair'),(990468750,7,'D','2010-07-01',1100,'Excellent','Excellent'),(993906990,1,'C','2010-05-01',1300,'Excellent','Excellent'),(995428253,3,'A','2014-07-01',1650,'Excellent','Fair'),(997684501,3,'D','2013-07-01',1600,'Excellent','Excellent'),(997684501,3,'D','2014-07-01',1600,'Excellent','Excellent');
/*!40000 ALTER TABLE `lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenancerequest`
--

DROP TABLE IF EXISTS `maintenancerequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenancerequest` (
  `Building` int(2) NOT NULL DEFAULT '0',
  `Letter` char(1) NOT NULL DEFAULT '',
  `RequestDate` date NOT NULL DEFAULT '0000-00-00',
  `Description` varchar(100) NOT NULL DEFAULT '',
  `Resolution` varchar(100) DEFAULT NULL,
  `CompletionDate` date DEFAULT NULL,
  `MaterialsCost` decimal(10,2) DEFAULT NULL,
  `LaborCost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Building`,`Letter`,`RequestDate`,`Description`),
  CONSTRAINT `FK_MaintenanceRequest_Apartment` FOREIGN KEY (`Building`, `Letter`) REFERENCES `apartment` (`Building`, `Letter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenancerequest`
--

LOCK TABLES `maintenancerequest` WRITE;
/*!40000 ALTER TABLE `maintenancerequest` DISABLE KEYS */;
INSERT INTO `maintenancerequest` VALUES (1,'A','2011-10-23','Bathroom Plumbing','Declogging Drain','2011-10-25',45.34,299.54),(1,'A','2014-04-16','Bathroom Plumbing','Declogging Drain','2014-04-18',46.11,228.48),(1,'B','2010-09-18','Heater Unit','Replaced heater unit','2010-09-21',1938.07,94.26),(1,'B','2011-05-31','Air Conditioner','Fix Thermostat','2011-06-01',12.67,37.91),(1,'B','2011-08-14','Bathroom Plumbing','Declogging Drain','2011-08-16',35.27,343.41),(1,'B','2011-09-15','Bathroom Plumbing','Fixed Leak ','2011-09-16',91.83,150.82),(1,'B','2011-11-27','Kitchen Plumbing','Faucet Replaced','2011-11-28',135.38,239.52),(1,'B','2012-01-25','Bathroom Plumbing','Declogging Drain','2012-01-26',38.44,311.92),(1,'B','2012-01-27','Bathroom Plumbing','Declogging Drain','2012-01-28',36.59,394.60),(1,'B','2012-12-01','Air Conditioner','Clean Vents','2012-12-02',60.25,126.15),(1,'B','2013-08-05','Heater Unit','Pilot light replaced','2013-08-06',19.42,59.35),(1,'B','2014-02-22','Bathroom Plumbing','Fixed Leak ','2014-02-23',51.55,171.30),(1,'B','2014-09-07','Heater Unit','Leakage fixed','2014-09-08',35.55,55.57),(1,'C','2010-08-27','Kitchen Plumbing','Faucet Replaced','2010-08-30',184.03,327.70),(1,'C','2010-10-21','Bathroom Plumbing','Fixed Leak ','2010-10-23',77.03,172.00),(1,'C','2011-01-15','Kitchen Appliance','Fridge Replaced','2011-01-18',1527.20,363.49),(1,'C','2012-04-14','Replace bulb','Relaced','2012-04-16',17.27,34.94),(1,'C','2012-09-25','Bathroom Plumbing','Fixed Leak ','2012-09-27',99.32,144.41),(1,'C','2012-09-26','Bathroom Plumbing','Declogging Drain','2012-09-28',51.15,257.97),(1,'C','2013-05-20','Kitchen Plumbing','Minor leak fix','2013-05-21',21.56,63.34),(1,'C','2013-08-28','Bathroom Plumbing','Fixed Leak ','2013-08-30',79.02,151.98),(1,'C','2014-07-07','Replace bulb','Relaced','2014-07-09',24.48,35.78),(1,'C','2014-10-12','Kitchen Plumbing','Minor leak fix','2014-10-13',34.17,81.54),(1,'D','2011-07-27','Bathroom Plumbing','Declogging Drain','2011-07-29',57.74,338.69),(1,'D','2012-03-07','Bathroom Plumbing','Declogging Drain','2012-03-08',41.18,332.20),(1,'D','2013-03-02','Bathroom Plumbing','Declogging Drain','2013-03-04',52.90,396.52),(1,'D','2014-10-14','Air Conditioner','Replaced Filter','2014-10-15',100.84,46.48),(3,'A','2013-01-31','Bathroom Plumbing','Declogging Drain','2013-02-01',46.49,357.51),(3,'A','2013-02-11','Air Conditioner','Fix Thermostat','2013-02-12',13.88,34.39),(3,'A','2013-07-07','Heater Unit','Replaced heater unit','2013-07-10',1266.82,55.00),(3,'A','2014-11-16','Kitchen Plumbing','Faucet Replaced','2014-11-17',183.71,257.12),(3,'B','2010-07-06','Bathroom Plumbing','Declogging Drain','2010-07-08',36.68,277.21),(3,'B','2011-10-01','Smoke detetector','Replaced','2011-10-03',27.69,32.85),(3,'B','2011-10-06','Bathroom Plumbing','Fixed Leak ','2011-10-07',61.44,179.44),(3,'B','2011-12-01','Replace bulb','Relaced','2011-12-03',17.56,38.36),(3,'B','2011-12-28','Bathroom Plumbing','Fixed Leak ','2011-12-30',76.59,138.77),(3,'B','2014-06-21','Air Conditioner','Replaced Filter','2014-06-23',137.94,42.25),(3,'C','2012-05-25','Kitchen Appliance','Fridge Replaced','2012-05-26',2924.53,339.88),(3,'C','2012-12-12','Heater Unit','Leakage fixed','2012-12-13',38.10,91.32),(3,'C','2013-01-09','Bathroom Plumbing','Fixed Leak ','2013-01-11',73.63,192.60),(3,'C','2014-04-19','Kitchen Plumbing','Minor leak fix','2014-04-20',24.71,80.84),(3,'D','2011-03-05','Replace bulb','Relaced','2011-03-06',28.50,49.52),(3,'D','2011-06-07','Bathroom Plumbing','Declogging Drain','2011-06-08',47.68,270.29),(3,'D','2011-06-22','Bathroom Plumbing','Declogging Drain','2011-06-24',57.70,396.10),(3,'D','2011-10-15','Bathroom Plumbing','Fixed Leak ','2011-10-16',51.32,104.60),(3,'D','2011-12-29','Bathroom Plumbing','Fixed Leak ','2011-12-30',83.51,139.07),(3,'D','2012-04-15','Replace bulb','Relaced','2012-04-17',26.25,59.92),(3,'D','2012-06-26','Replace bulb','Relaced','2012-06-27',17.21,38.22),(3,'D','2012-12-24','Replace bulb','Relaced','2012-12-25',25.13,30.90),(3,'D','2013-07-03','Kitchen Appliance','Microwave Replaced','2013-07-07',248.95,100.94),(3,'D','2013-12-01','Kitchen Plumbing','Declogging Drain','2013-12-02',91.77,157.26),(5,'A','2010-12-04','Bathroom Plumbing','Declogging Drain','2010-12-06',30.21,371.04),(5,'A','2014-05-06','Replace bulb','Relaced','2014-05-08',18.85,46.00),(5,'B','2011-02-23','Kitchen Appliance','Fridge Replaced','2011-02-26',2407.48,374.38),(5,'B','2012-08-03','Air Conditioner','Fix Thermostat','2012-08-04',16.38,57.64),(5,'B','2013-04-26','Bathroom Plumbing','Fixed Leak ','2013-04-28',92.90,167.23),(5,'B','2013-07-01','Bathroom Plumbing','Fixed Leak ','2013-07-02',86.08,157.17),(5,'B','2013-10-19','Kitchen Appliance','Microwave Replaced','2013-10-21',338.26,154.88),(5,'B','2014-05-28','Kitchen Appliance','Fridge Replaced','2014-05-31',2907.33,425.41),(5,'C','2011-05-03','Air Conditioner','Replace Thermostat','2011-05-06',256.29,78.48),(5,'C','2011-05-24','Kitchen Plumbing','Minor leak fix','2011-05-25',21.60,56.64),(5,'C','2011-09-24','Replace bulb','Relaced','2011-09-26',27.29,53.62),(5,'C','2011-11-18','Replace bulb','Relaced','2011-11-19',21.01,44.88),(5,'C','2012-12-23','Bathroom Plumbing','Declogging Drain','2012-12-25',42.25,367.52),(5,'C','2013-04-14','Kitchen Appliance','Microwave Replaced','2013-04-18',350.32,181.65),(5,'C','2013-06-23','Bathroom Plumbing','Fixed Leak ','2013-06-25',75.11,195.05),(5,'C','2014-04-19','Bathroom Plumbing','Declogging Drain','2014-04-21',54.55,304.48),(5,'D','2011-05-12','Heater Unit','Replaced heater unit','2011-05-14',1200.27,93.18),(5,'D','2011-09-28','Bathroom Plumbing','Fixed Leak ','2011-09-29',87.09,106.31),(5,'D','2012-11-21','Air Conditioner','Replaced Filter','2012-11-23',157.60,30.13),(5,'D','2013-11-28','Heater Unit','Replaced heater unit','2013-12-02',1709.26,51.71),(5,'D','2014-01-20','Bathroom Plumbing','Declogging Drain','2014-01-22',42.19,373.77),(7,'A','2010-08-09','Heater Unit','Replaced heater unit','2010-08-11',1561.68,91.99),(7,'A','2010-12-21','Replace bulb','Relaced','2010-12-23',28.95,59.41),(7,'A','2011-01-04','Air Conditioner','Fix Thermostat','2011-01-06',15.28,38.03),(7,'A','2011-02-25','Bathroom Plumbing','Declogging Drain','2011-02-27',31.60,347.78),(7,'A','2011-08-02','Bathroom Plumbing','Declogging Drain','2011-08-03',46.85,260.48),(7,'A','2011-08-19','Bathroom Plumbing','Declogging Drain','2011-08-20',55.18,325.97),(7,'A','2012-05-19','Bathroom Plumbing','Declogging Drain','2012-05-21',34.26,282.37),(7,'B','2011-02-01','Replace bulb','Relaced','2011-02-03',25.89,54.45),(7,'B','2011-04-02','Kitchen Plumbing','Declogging Drain','2011-04-04',96.12,153.30),(7,'B','2012-02-10','Bathroom Plumbing','Fixed Leak ','2012-02-12',92.39,165.51),(7,'B','2013-08-22','Bathroom Plumbing','Declogging Drain','2013-08-23',58.37,297.85),(7,'B','2014-03-22','Replace bulb','Relaced','2014-03-23',16.48,57.14),(7,'C','2011-03-26','Bathroom Plumbing','Fixed Leak ','2011-03-28',85.44,170.12),(7,'C','2012-04-18','Kitchen Appliance','Stove/Oven Replaced','2012-04-23',420.10,148.68),(7,'C','2013-04-23','Bathroom Plumbing','Declogging Drain','2013-04-24',36.84,257.06),(7,'D','2010-08-22','Heater Unit','Replaced heater unit','2010-08-23',1718.04,66.73),(7,'D','2010-09-05','Bathroom Plumbing','Declogging Drain','2010-09-06',52.70,291.07),(7,'D','2011-06-30','Bathroom Plumbing','Declogging Drain','2011-07-02',55.29,297.72),(7,'D','2011-07-16','Bathroom Plumbing','Fixed Leak ','2011-07-17',54.11,172.11),(7,'D','2013-01-28','Bathroom Plumbing','Fixed Leak ','2013-01-29',58.56,113.18),(7,'D','2013-06-18','Air Conditioner','Clean Vents','2013-06-21',73.36,143.33),(7,'D','2014-04-17','Heater Unit','Pilot light replaced','2014-04-18',15.88,44.66),(7,'D','2014-04-24','Bathroom Plumbing','Declogging Drain','2014-04-26',55.86,301.37),(9,'A','2011-06-13','Smoke detetector','Replaced','2011-06-14',29.38,36.74),(9,'A','2011-10-25','Air Conditioner','Fix Blower','2011-10-28',3792.47,280.67),(9,'A','2012-06-01','Bathroom Plumbing','Declogging Drain','2012-06-03',39.58,343.24),(9,'A','2012-06-24','Air Conditioner','Fix Condensor','2012-06-25',3053.96,190.68),(9,'A','2013-03-13','Kitchen Appliance','Microwave Replaced','2013-03-16',212.42,127.56),(9,'A','2013-10-27','Bathroom Plumbing','Fixed Leak ','2013-10-29',65.00,152.37),(9,'A','2014-10-20','Bathroom Plumbing','Fixed Leak ','2014-10-22',82.57,183.68),(9,'A','2014-11-29','Bathroom Plumbing','Declogging Drain','2014-11-30',51.76,337.44),(9,'B','2010-10-11','Bathroom Plumbing','Declogging Drain','2010-10-12',52.08,302.29),(9,'B','2010-12-16','Air Conditioner','Fix Blower','2010-12-17',2963.70,258.78),(9,'B','2011-02-28','Bathroom Plumbing','Fixed Leak ','2011-03-01',80.37,107.12),(9,'B','2011-06-27','Bathroom Plumbing','Declogging Drain','2011-06-29',37.46,396.67),(9,'B','2011-08-15','Air Conditioner','Replace Thermostat','2011-08-18',264.37,74.10),(9,'B','2012-04-15','Replace bulb','Relaced','2012-04-16',17.60,45.34),(9,'B','2012-04-26','Replace bulb','Relaced','2012-04-27',21.94,53.05),(9,'B','2012-08-21','Replace bulb','Relaced','2012-08-23',16.99,52.30),(9,'C','2011-02-06','Bathroom Plumbing','Fixed Leak ','2011-02-08',96.63,138.53),(9,'C','2011-08-01','Bathroom Plumbing','Fixed Leak ','2011-08-03',53.47,179.17),(9,'C','2011-08-15','Bathroom Plumbing','Declogging Drain','2011-08-16',49.66,258.95),(9,'C','2012-04-29','Replace bulb','Relaced','2012-05-01',15.68,53.89),(9,'C','2012-08-11','Bathroom Plumbing','Declogging Drain','2012-08-12',59.68,395.43),(9,'C','2012-08-27','Kitchen Plumbing','Faucet Replaced','2012-08-29',137.87,380.70),(9,'C','2012-11-25','Bathroom Plumbing','Declogging Drain','2012-11-27',30.51,230.94),(9,'C','2013-07-03','Air Conditioner','Fix Blower','2013-07-06',3912.72,225.26),(9,'C','2013-07-06','Air Conditioner','Replaced Filter','2013-07-07',138.46,36.52),(9,'C','2014-03-18','Air Conditioner','Fix Thermostat','2014-03-20',12.64,49.96),(9,'C','2014-05-10','Kitchen Appliance','Stove/Oven Replaced','2014-05-13',512.07,129.78),(9,'C','2014-09-24','Bathroom Plumbing','Declogging Drain','2014-09-25',43.76,301.05),(9,'D','2011-10-16','Bathroom Plumbing','Declogging Drain','2011-10-17',32.61,291.09),(9,'D','2012-04-04','Air Conditioner','Clean Vents','2012-04-05',50.09,167.05),(9,'D','2012-05-21','Replace bulb','Relaced','2012-05-23',23.75,45.82),(9,'D','2013-04-28','Smoke detetector','Replaced','2013-04-29',24.77,39.51),(9,'D','2013-07-23','Bathroom Plumbing','Declogging Drain','2013-07-25',42.79,214.10);
/*!40000 ALTER TABLE `maintenancerequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant` (
  `SSN` int(10) NOT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Phone` int(10) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` VALUES (113928113,'Doris','Hartwig',352792372,'dh@gmail.com'),(120846823,'Lori','Kane',352525499,'lokane@outlook.com'),(123658963,'Stephanie','Conroy',352430625,'stephanieconr@yahoo.com'),(128778303,'Debra','Core',352258567,'decore@gmail.com'),(156794583,'Stephanie','Cooper',352506446,'sco@yahoo.com'),(158609957,'Terry','Adams',352789240,'teadam@gmail.com'),(158966777,'Dana','Burnell',352112964,'danburnell@gmail.com'),(168896188,'Tamara','Johnston',352468397,'tamarajohnst@yahoo.com'),(183369301,'Diane','Margheim',352704890,'dianemargheim@outlook.com'),(188368749,'Oliver','Lee',352368643,'oll@yahoo.com'),(193752824,'Sharon','Hoepf',352752168,'shahoe@outlook.com'),(198163423,'Scott','Culp',352953978,'sccu@outlook.com'),(212808784,'Maria','Hammond',352766184,'mahammond@gmail.com'),(234822531,'Bruce R.','Ward',352982957,'bruwar@hotmail.com'),(240679929,'Nicole','Holliday',352631847,'nicoholliday@yahoo.com'),(244697728,'Riegle','Jennifer',352505226,'riegjennife@outlook.com'),(251961723,'Mark','Harrington',352991271,'maharr@outlook.com'),(264880210,'Turner','Olinda',352244763,'tuolinda@gmail.com'),(272208381,'Lionel','Penuchot',352636183,'lionelpenucho@gmail.com'),(275143666,'John','Evans',352164914,'jev@gmail.com'),(283725508,'Dylan','Miller',352421907,'dylanm@gmail.com'),(284162366,'Suroor','Fatima',352288835,'sufati@hotmail.com'),(285659333,'Anthony','Chor',352639997,'anthoch@hotmail.com'),(290880536,'Kevin','Kennedy',352944177,'kevikenne@gmail.com'),(297296770,'Sandy','Vance',352944525,'sandyvance@yahoo.com'),(301706951,'Kathie','Flood',352427869,'katf@gmail.com'),(305349857,'Ryan','Hagen',352993804,'rha@gmail.com'),(320271424,'Scott','Oveson',352458474,'scotov@yahoo.com'),(322795511,'Eric','Parkinson',352922518,'erpar@gmail.com'),(323863401,'Tony','Wang',352188631,'tonywa@gmail.com'),(324981302,'Baris','Cetinok',352707128,'barisc@gmail.com'),(325241313,'Bridgette','Lloyd',352550275,'bridgetlloyd@gmail.com'),(331136230,'Taylor','Maxwell',352831575,'tam@yahoo.com'),(337391209,'Patricia','Busch',352195944,'pbu@yahoo.com'),(344477976,'Ryan','Calafato',352255324,'ryacalafat@gmail.com'),(345569962,'Arlene','Huff',352694702,'arlehu@yahoo.com'),(349890560,'Susan','Metters',352580596,'sumetter@gmail.com'),(357754963,'Adams','Jay',352132785,'adamsjay@outlook.com'),(365554179,'Geoff','Grisso',352402502,'ggri@outlook.com'),(392673943,'Jamie','Reding',352138676,'jamr@gmail.com'),(397867167,'Heidi','Steen',352920545,'heidisteen@outlook.com'),(404750642,'Brian','Groth',352822987,'bgrot@gmail.com'),(413493876,'Ivo','Salmre',352811507,'isalm@hotmail.com'),(417547527,'Chris','Norred',352753126,'chnor@outlook.com'),(419350635,'Anthony','Chor',352751680,'anthonyc@yahoo.com'),(429627249,'Hung-Fu (Tony)','Ting',352836795,'hung-fu (toti@gmail.com'),(430559815,'Frank','Lee',352732973,'frl@outlook.com'),(458911373,'Julie','Bankert',352565569,'jb@gmail.com'),(461899246,'Barbara S.','Decker',352318759,'barbdeck@yahoo.com'),(465713738,'Katie','Jordan',352547412,'kj@gmail.com'),(478493291,'Garth','Fort',352999874,'garthf@gmail.com'),(485428514,'Akers','Kim',352341152,'akersk@yahoo.com'),(490307689,'Robert','Zare',352793580,'robezare@gmail.com'),(490643836,'Syed','Abbas',352225694,'sab@gmail.com'),(493184221,'Sam','Abolrous',352970423,'sab@gmail.com'),(498267694,'Bob','Hohman',352170237,'bobhohm@outlook.com'),(504502341,'Lori','Kane',352805197,'lorika@outlook.com'),(515623174,'John','Arthur',352623436,'joart@hotmail.com'),(550471501,'Jossef','Goldbert',352907639,'jogoldbert@gmail.com'),(569956197,'Micheal','DeVoe',352203943,'michedevo@yahoo.com'),(577427221,'Barr','Adam',352934964,'barra@yahoo.com'),(588770724,'Margie','Shoop',352917729,'margshoop@gmail.com'),(592543622,'Jay','Adams',352534548,'jaada@hotmail.com'),(595523630,'Goldberg','Jossef',352185235,'goldbergjosse@gmail.com'),(613683823,'John','Chen',352490759,'johnche@outlook.com'),(616159196,'Erik','Ismert',352555636,'erii@yahoo.com'),(631612486,'Amy','Alberts',352589150,'amya@outlook.com'),(639223509,'Roger','Lengel',352835240,'rolengel@gmail.com'),(642388412,'Karin','Zimprich',352490172,'kazimpric@gmail.com'),(649545132,'Bassli','Shai',352171774,'basssh@hotmail.com'),(665744818,'Mark','Lee',352130682,'markl@yahoo.com'),(668458476,'Rachel','Valdez',352656648,'racvalde@outlook.com'),(697658523,'Jon','Ganio',352978237,'jog@gmail.com'),(697796444,'Garry','Garreth',352188867,'garrgarret@outlook.com'),(706477880,'Yvonne','McKay',352480962,'yvmc@hotmail.com'),(706837152,'Clair','Hector',352684183,'clairhe@hotmail.com'),(715436230,'Judy','Lew',352709403,'judl@hotmail.com'),(718584440,'Kim','Abercrombie',352221982,'kab@yahoo.com'),(727187954,'Terry','Crayton',352784450,'tercrayt@hotmail.com'),(727656839,'Carol','Philips',352837357,'carophilip@gmail.com'),(756671211,'Anibal','Swousa',352391767,'anibas@gmail.com'),(760835361,'Brenda','Diaz',352345463,'brd@hotmail.com'),(762775159,'Suzana','Canuto',352233502,'sucanu@gmail.com'),(767214477,'Jonathan','Haas',352987385,'jonathaa@hotmail.com'),(767813939,'Blaine','Dockter',352499893,'bladockte@yahoo.com'),(778429259,'Rohinton','Wadia',352168180,'rwad@gmail.com'),(784347842,'Eugene','Zabokritski',352797729,'eugenezabokr@hotmail.com'),(786288147,'Jose','DeOliveira',352351487,'jodeoliv@hotmail.com'),(793278912,'George','Jiang',352697946,'gejian@yahoo.com'),(793340247,'Mindy','Martin',352803930,'mindmar@outlook.com'),(803511351,'Ken','Myer',352696554,'kenm@yahoo.com'),(805120925,'Annie','Hill',352303267,'anniehil@outlook.com'),(805192881,'Stuart','Munson',352972878,'smun@outlook.com'),(805365637,'Chris','Gray',352445228,'chgra@gmail.com'),(811310599,'Delmarco','Stefan',352758950,'delmarstef@gmail.com'),(827344667,'Dellamore','Luca',352437309,'dellluc@yahoo.com'),(833721557,'Michael','DeVine',352442933,'michadev@gmail.com'),(867730967,'Van Houten','Roger',352281619,'vroge@yahoo.com'),(875494959,'Mike','Tiano',352714847,'miti@gmail.com'),(875684854,'Rob','Young',352635186,'roy@gmail.com'),(881843737,'Derik','Stenerson',352513611,'derikst@outlook.com'),(885412582,'Matthew','Carroll',352940352,'mattcarrol@hotmail.com'),(886532324,'Randall','Boseman',352714538,'rabo@gmail.com'),(895202527,'David','Johnson',352210429,'davjohns@outlook.com'),(896407427,'Wendy Beth','Kahn',352226331,'wendkah@gmail.com'),(900714838,'Nicole','Caron',352857670,'nicocaron@gmail.com'),(907665204,'Corinna','Bolender',352570302,'corinbolend@gmail.com'),(908470967,'Rob','Verhoff',352516537,'roverhoff@gmail.com'),(915315666,'Kirk','DeGrasse',352919544,'kidegra@gmail.com'),(925886185,'Dickson','Holly',352851649,'dicho@hotmail.com'),(930864238,'Garrett','Young',352717245,'garryo@gmail.com'),(931916181,'Mark','Harui',352521788,'mha@gmail.com'),(938384383,'Faeber','Marc',352636701,'faem@yahoo.com'),(942781386,'Shengda','Yang',352926853,'shey@yahoo.com'),(945510452,'Brian','Clark',352944419,'briancl@hotmail.com'),(957400551,'Aaron','Con',352475773,'aac@gmail.com'),(965428901,'Gabe','Mares',352775980,'gabem@hotmail.com'),(979326481,'Tippet','John',352636449,'tipjoh@hotmail.com'),(980414573,'Rob','Caron',352795259,'rc@yahoo.com'),(980524922,'John','Emory',352609950,'jemory@gmail.com'),(982254681,'Stephanie','Bourne',352283526,'stephaniebou@outlook.com'),(990468750,'Jason','Watters',352928955,'jw@gmail.com'),(993906990,'Annette','Honning',352216239,'annhonn@gmail.com'),(995428253,'Jason','Watters',352331932,'jasowatters@yahoo.com'),(997684501,'Jesus','Hernandez',352294319,'jehe@outlook.com');
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-16  8:54:11

--#1 
/*
List the Make and Model of all the appliances along with the count of
each Make & Model combination. Sort your results by the Model.
*/

SELECT Make, Model, COUNT(*) NumberOfAppliances
FROM appliances
GROUP BY 1, 2
ORDER BY 2;

--#2
/*
For each building, find the average materials and labor costs for the
month October 2013.
*/

SELECT building, FORMAT(AVG(MaterialsCost),2) AverageMaterialCost, FORMAT(AVG(LaborCost),2) AverageLaborCost
FROM MaintenanceRequest
WHERE MONTH(RequestDate)= 10 AND YEAR(RequestDate)= 2013
GROUP BY 1;

--#3
/*
Write a query that will update the Appliances table so that the word
GE is replaced by General Electric in the Make column.
*/

UPDATE Appliances
SET Make = 'General Electric' WHERE Make = 'GE';

--#4 
/*List all the buildings, along with the average rent for all the
apartments for each year. Sort your results first by building and then
by year.
*/

SELECT building, FORMAT(AVG(MonthlyRent),0) AverageMonthlyRent, YEAR(leasedate) 'year'
FROM Lease
GROUP BY 1,3
ORDER BY 1,3;

--#5 
/*
For each building list the number of maintenance requests where the
labor costs exceed the materials cost. Limit your results to only those
buildings that have more than 20 such requests.
*/

SELECT building, COUNT(*) 'MaintRequests'
FROM MaintenanceRequest
WHERE LaborCost > MaterialsCost
GROUP BY building
HAVING MaintRequests> 20;

--#6 
/*List the building, letter, request description, materials and labor costs
and total cost for the five most expensive maintenance requests. 
*/

SELECT Building, Letter, Description, MaterialsCost, LaborCost, (MaterialsCost+LaborCost) TotalCost
FROM MaintenanceRequest
GROUP BY 1,2,3,4,5
ORDER BY 6 DESC
LIMIT 5;

--#7. 
/*
Delete all the information from the Person table for those individuals who have never
rented an apartment. How many rows were deleted?
*/

DELETE FROM Tenant
WHERE SSN NOT IN (SELECT SSN
FROM Lease);

--#8
/*
List the First and Last Name of all the tenants who have rented apartments in the
complex for more than 2 years (they do not need to be consecutive years).
Along with the names, list the number of years that they have rented an apartment and
the total amount of rent that they have paid over all those years. Sort your results in the
descending order of the number of years.
*/

SELECT FirstName, LastName, COUNT(*) NumberOfYears, CONCAT('$',FORMAT(SUM(monthlyrent)*12,0)) TotalRent
FROM Tenant T JOIN Lease L ON T.SSN=L.SSN
GROUP BY T.SSN
HAVING NumberOfYears > 2
ORDER BY NumberOfYears DESC;

--#9
/*
How many maintenance requests has each tenant made?
Sort your results with the most number of requests first.
*/

SELECT FirstName, LastName, CONCAT(L.Building,L.Letter) Apartment, COUNT(*) NumberOfRequests
FROM tenant t, lease l, maintenancerequest m
WHERE t.ssn=l.ssn AND l.building=m.building AND l.letter=m.letter AND m.requestdate BETWEEN l.leasedate AND l.leasedate+365
GROUP BY t.ssn,1,2
ORDER BY 4 DESC;

--#10
/*
List all the apartments (Building and Letter) along with the number of times they have
been leased. Your results should contain 20 rows.
NOTE: There maybe multiple individuals on the same lease, but all people living in the
same apartment at the same time are considered to be part of the same lease. All leases
start on the first of the month.
List the apartments that have never been leased?
*/

SELECT a.building, a.letter, COUNT(DISTINCT leasedate) TimesLeased
FROM apartment a LEFT JOIN lease l ON a.building=l.building AND a.letter = l.letter
GROUP BY 1,2;

--#11
/*
List those leases where the move in condition is not the same as the move out condition.
How many maintenance requests were made during those leases?
*/

SELECT l.building, l.letter, LeaseDate, COUNT(requestDate) MaintRequests
FROM lease l, maintenancerequest m 
WHERE l.building=m.building AND l.letter=m.letter AND MoveInCondition <> MoveOutCondition
GROUP BY 1, 2, 3;

--#12
/*
List the Make and Model of the appliances that have been installed in apartments and
the number of maintenance requests for each of them. Sort the results by Make and
Model.
Which Make (Company) has the most number of maintenance requests?
*/

SELECT make, model, COUNT(*) MaintRequests
FROM appliances a LEFT JOIN maintenancerequest m ON a.building=m.building AND a.letter=m.letter
WHERE resolution LIKE CONCAT('%',model, '%')
GROUP BY 1,2
ORDER BY 1,2;

--#13
/*
Are there any apartments that have more people leasing it than bedrooms (e.g., are
there 3 people living in a 2-bedroom apartment)? If there are, list the apartment building
and number, along with the number of people living in it at the same time, the number of
bedrooms, and the year the lease was signed.
*/

SELECT a.building, a.letter, bedrooms, peopleleasingtogether, leasedate
FROM apartment a, (SELECT
a.building, a.letter, leasedate, COUNT(*) peopleleasingtogether
FROM apartment a LEFT JOIN lease l ON (a.building=l.building) AND (a.letter=l.letter)
GROUP BY a.building, a.letter, leasedate) L
WHERE (a.building=L.building) AND (a.letter=L.letter) AND (bedrooms<peopleleasingtogether);

--#14
/*
How many different apartments has each tenant leased?
What is the name of the tenant who has moved the most? 
*/

select FirstName, LastName, count(*) DifferentApartments
from (select t.ssn, firstName, LastName, Building, Letter, count(*) as NoApartments
from Lease L, Tenant T
where l.ssn=t.ssn
group by t.ssn, building, letter) TA
Group by SSN
order by differentapartments desc;