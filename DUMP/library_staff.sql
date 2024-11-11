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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staffID` int NOT NULL AUTO_INCREMENT,
  `sEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`staffID`),
  UNIQUE KEY `sEmail` (`sEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'mfeeney@gmail.com','86a6b7127c2bc89405b356a441551a81182e9d0d','Librarian'),(2,'forn@uwo.ca','a1ab831f5448a66090a8f3d3094234f54b5344f9','Admin'),(3,'fadel.blanche@gmail.com','53f299a7226b6605abfc6403cd262c85d0775927','Intern'),(4,'lboyle@uwo.ca','9926b1697304e0ee914a1ad30b7aa68ae3b203dc','Librarian'),(5,'ullrich.albert@gmail.com','3e1a750265b157ff63301d5e41f1a0edbd5eaaac','Admin'),(6,'imelda.mcclure@example.com','68fc04e8a0989a855196f23970df22ecd4b89fcb','similique'),(7,'joan33@example.org','38dc0bf617d9e4b85e39967281c1852297949cf1','tempora'),(8,'candida69@example.net','c6d0f7c619df39285011de967f97beced9fd687b','ut'),(9,'hahn.melany@example.org','0bd21e6a3dd73aca7c8a7f2465699d11d39c83d0','non'),(10,'lacey.harvey@example.com','3cb7fe612853843b03a02dc0f444e79fafd6a2a5','non'),(11,'price13@example.org','0413ae616ffd83dff712083216017b239bbf4a10','architecto'),(12,'loren.rolfson@example.com','a718b12ee74653ee95e1de1d4007653fded7e225','sed'),(13,'gilda72@example.com','9aa96efe7376c622789ee3a05143b6724eddcc7b','esse'),(14,'pbergnaum@example.com','fbffc04d3d26f2d31b15cc12cb710e9add7fc29f','error'),(15,'geraldine.raynor@example.net','e51cb05a6372d805140cb70b0af353e06d08207c','et'),(16,'schumm.eliza@example.com','6491022934acd9fb42ee0b21a4c118f75e02efd8','consectetur'),(17,'crooks.lolita@example.com','ea79cb6c95c36c12d2970869529563cd14541c53','iusto'),(18,'alvina.macejkovic@example.net','fefde5cff2d2f17c05df7835f25eb177a628a90a','inventore'),(19,'leuschke.dallas@example.com','6e87c49f7ecbbb03a37d4bac3a3497daeb5b7767','id'),(20,'isaac68@example.net','8f893fc627bfd54ec5b96122ffb7effe6e1bf3d1','molestias');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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
