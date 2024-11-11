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
-- Table structure for table `staffContact`
--

DROP TABLE IF EXISTS `staffContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffContact` (
  `sEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sEmail`),
  UNIQUE KEY `sEmail` (`sEmail`),
  CONSTRAINT `staffContact_ibfk_1` FOREIGN KEY (`sEmail`) REFERENCES `staff` (`sEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffContact`
--

LOCK TABLES `staffContact` WRITE;
/*!40000 ALTER TABLE `staffContact` DISABLE KEYS */;
INSERT INTO `staffContact` VALUES ('alvina.macejkovic@example.net','Pascale Considine'),('candida69@example.net','Danielle Wisoky I'),('crooks.lolita@example.com','Dr. Frederique Considine PhD'),('fadel.blanche@gmail.com','Mr. Oscar Mraz I'),('forn@uwo.ca','Velda Kertzmann'),('geraldine.raynor@example.net','Judson Fritsch'),('gilda72@example.com','Dameon Turcotte'),('hahn.melany@example.org','Everardo Ondricka V'),('imelda.mcclure@example.com','Prof. Quinn Hegmann'),('isaac68@example.net','Pearline Brakus I'),('joan33@example.org','Ericka Frami'),('lacey.harvey@example.com','Prof. Dixie Cremin'),('lboyle@uwo.ca','Lempi Goldner'),('leuschke.dallas@example.com','Ms. Theresa Reynolds'),('loren.rolfson@example.com','Maximus Batz Sr.'),('mfeeney@gmail.com','Judge Lind'),('pbergnaum@example.com','Prof. Freddy Zieme'),('price13@example.org','Mr. Oliver Langosh IV'),('schumm.eliza@example.com','Jasmin Champlin Sr.'),('ullrich.albert@gmail.com','Edwardo Farrell');
/*!40000 ALTER TABLE `staffContact` ENABLE KEYS */;
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
