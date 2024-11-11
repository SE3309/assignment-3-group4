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
-- Table structure for table `bookBorrowings`
--

DROP TABLE IF EXISTS `bookBorrowings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookBorrowings` (
  `ISBN` char(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `borrowingID` int NOT NULL,
  PRIMARY KEY (`ISBN`),
  UNIQUE KEY `ISBN` (`ISBN`),
  UNIQUE KEY `borrowingID` (`borrowingID`),
  CONSTRAINT `bookBorrowings_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`),
  CONSTRAINT `bookBorrowings_ibfk_2` FOREIGN KEY (`borrowingID`) REFERENCES `borrowings` (`borrowingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookBorrowings`
--

LOCK TABLES `bookBorrowings` WRITE;
/*!40000 ALTER TABLE `bookBorrowings` DISABLE KEYS */;
INSERT INTO `bookBorrowings` VALUES ('00305aec-e122',1),('00651b6f-c3e5',2),('00cd1241-b00d',3),('00d70000-5ba0',4),('00d758d9-2469',5),('010c06d6-0c9e',6),('01120091-7b95',7),('01356bc8-6a85',8),('01448b6b-185b',9),('01b3e5a9-d666',10),('01bbdc89-8522',11),('01ce2dc4-f933',12),('01e45559-105c',13),('01f47db3-9ef0',14),('01fbe81d-da8d',15),('02102517-7eb0',16),('0217602a-07d4',17),('0240d199-18e2',18),('025fde2e-1995',19),('026facb0-ff02',20),('0285872e-4cd1',21),('02b5e98a-745e',22),('02b71d19-9587',23),('02db0f04-cf9e',24),('031caad2-d32a',25),('0321afa7-a454',26),('0343c4c9-2bc7',27),('034e9417-c59f',28),('034fa8bb-0957',29),('03570cb1-a242',30);
/*!40000 ALTER TABLE `bookBorrowings` ENABLE KEYS */;
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
