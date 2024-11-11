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
-- Table structure for table `bBorrowings`
--

DROP TABLE IF EXISTS `bBorrowings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bBorrowings` (
  `borrowerID` int NOT NULL,
  `borrowingID` int NOT NULL,
  PRIMARY KEY (`borrowerID`),
  KEY `borrowingID` (`borrowingID`),
  CONSTRAINT `bBorrowings_ibfk_1` FOREIGN KEY (`borrowerID`) REFERENCES `borrower` (`borrowerID`),
  CONSTRAINT `bBorrowings_ibfk_2` FOREIGN KEY (`borrowingID`) REFERENCES `borrowing` (`borrowingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bBorrowings`
--

LOCK TABLES `bBorrowings` WRITE;
/*!40000 ALTER TABLE `bBorrowings` DISABLE KEYS */;
INSERT INTO `bBorrowings` VALUES (140,2),(148,2),(181,2),(155,3),(156,4),(29,5),(78,6),(113,6),(25,7),(147,7),(94,8),(107,9),(72,12),(109,12),(115,14),(200,15),(18,18),(178,18),(195,20),(143,21),(169,21),(103,23),(42,26),(81,26),(121,27),(193,27),(70,28),(87,29),(171,29),(111,30);
/*!40000 ALTER TABLE `bBorrowings` ENABLE KEYS */;
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
