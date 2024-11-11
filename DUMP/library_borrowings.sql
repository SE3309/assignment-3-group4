-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `borrowings`
--

DROP TABLE IF EXISTS `borrowings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowings` (
  `borrowingID` int NOT NULL AUTO_INCREMENT,
  `borrowDate` date NOT NULL,
  `returnDate` date DEFAULT NULL,
  `status` enum('On Hold','Returned','Late') COLLATE utf8mb4_unicode_ci NOT NULL,
  `borrowerID` int NOT NULL,
  `ISBN` char(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fineID` int DEFAULT NULL,
  PRIMARY KEY (`borrowingID`),
  KEY `borrowerID` (`borrowerID`),
  KEY `ISBN` (`ISBN`),
  KEY `fineID` (`fineID`),
  CONSTRAINT `borrowings_ibfk_1` FOREIGN KEY (`borrowerID`) REFERENCES `borrower` (`borrowerID`),
  CONSTRAINT `borrowings_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`),
  CONSTRAINT `borrowings_ibfk_3` FOREIGN KEY (`fineID`) REFERENCES `fines` (`fineID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowings`
--

LOCK TABLES `borrowings` WRITE;
/*!40000 ALTER TABLE `borrowings` DISABLE KEYS */;
INSERT INTO `borrowings` VALUES (1,'1992-11-16','2005-08-04','Late',1,'00305aec-e122',1),(2,'2004-07-08','2004-11-26','On Hold',2,'00651b6f-c3e5',2),(3,'1992-03-29','1979-06-06','Returned',3,'00cd1241-b00d',3),(4,'2024-01-09','2011-11-19','On Hold',4,'00d70000-5ba0',4),(5,'2022-02-19',NULL,'Late',29,'00d758d9-2469',5),(6,'1974-05-05','1979-01-01','Returned',6,'010c06d6-0c9e',6),(7,'1977-01-18','1977-01-31','Returned',25,'01120091-7b95',NULL),(8,'2014-04-12','2009-12-30','Late',8,'01356bc8-6a85',8),(9,'1988-06-30','2023-01-25','On Hold',9,'01448b6b-185b',9),(10,'1986-08-06','1991-06-29','On Hold',10,'01b3e5a9-d666',10),(11,'2007-07-31','1978-11-22','Returned',11,'01bbdc89-8522',11),(12,'1973-08-08','1994-04-01','Late',12,'01ce2dc4-f933',12),(13,'1973-11-21','2022-04-04','On Hold',13,'01e45559-105c',13),(14,'1996-02-21','1986-05-18','On Hold',14,'01f47db3-9ef0',14),(15,'2010-01-23','2002-05-13','Returned',15,'01fbe81d-da8d',15),(16,'1970-11-03','2015-07-27','On Hold',16,'02102517-7eb0',16),(17,'1986-11-08','1983-08-08','Returned',17,'0217602a-07d4',17),(18,'2024-11-03',NULL,'On Hold',18,'0240d199-18e2',NULL),(19,'2020-04-12','1970-10-24','Late',19,'025fde2e-1995',19),(20,'2002-01-05','1983-01-22','Returned',20,'026facb0-ff02',20),(21,'2011-08-04','2007-11-06','Late',21,'0285872e-4cd1',21),(22,'1987-03-28','2019-02-21','Late',22,'02b5e98a-745e',22),(23,'1988-01-11','2006-05-05','On Hold',23,'02b71d19-9587',23),(24,'1990-07-16','2014-05-08','On Hold',24,'02db0f04-cf9e',24),(25,'1992-08-31','2018-07-25','On Hold',25,'031caad2-d32a',25),(26,'2006-05-04','2007-06-04','Returned',42,'0321afa7-a454',26),(27,'2018-09-10','1981-02-19','Returned',27,'0343c4c9-2bc7',27),(28,'2017-04-27','2017-05-27','Returned',70,'034e9417-c59f',NULL),(29,'2003-07-19','2018-02-19','Late',29,'034fa8bb-0957',29),(30,'2024-05-09','2002-02-25','On Hold',30,'03570cb1-a242',30);
/*!40000 ALTER TABLE `borrowings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 13:23:08
