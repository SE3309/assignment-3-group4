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
-- Table structure for table `historyLog`
--

DROP TABLE IF EXISTS `historyLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historyLog` (
  `logID` int NOT NULL,
  `generatedDate` date NOT NULL,
  `staffID` int DEFAULT NULL,
  PRIMARY KEY (`logID`),
  KEY `staffID` (`staffID`),
  CONSTRAINT `historylog_ibfk_1` FOREIGN KEY (`staffID`) REFERENCES `Staff` (`staffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historyLog`
--

LOCK TABLES `historyLog` WRITE;
/*!40000 ALTER TABLE `historyLog` DISABLE KEYS */;
INSERT INTO `historyLog` VALUES (0,'2024-01-23',0),(1,'1981-04-04',166640),(2,'1977-03-04',945),(3,'2001-05-24',717880446),(5,'2021-11-04',55),(6,'2015-06-28',869),(7,'2000-02-20',3222),(9,'2000-12-18',646994),(11,'1989-08-07',24496),(29,'1986-10-30',20495),(30,'1992-05-08',266641712),(36,'1977-12-22',16),(43,'2000-04-22',16304),(44,'2015-10-15',9428),(45,'1991-10-27',4335),(53,'2022-01-20',359914),(55,'2014-09-02',85),(66,'2001-05-17',796030328),(72,'1983-09-05',2527155),(78,'2023-03-13',4967297),(95,'1979-12-07',19065015),(96,'1979-03-09',61),(160,'2023-06-07',4440137),(313,'1992-07-14',3019405),(599,'1987-10-29',242387),(612,'2004-07-14',63995291),(700,'1978-11-16',860),(1520,'1999-11-27',989),(3193,'2004-09-14',3),(4737,'1976-09-12',171173396),(5109,'1982-06-02',35456399),(5145,'1993-08-24',60600),(6344,'1988-10-18',61250716),(6931,'1972-04-18',70501),(7508,'1979-07-14',9404604),(8004,'1974-01-08',4121),(8491,'2009-04-18',161),(8650,'1987-05-09',86656),(8659,'1986-03-05',423),(8921,'1982-02-09',239270),(9549,'2000-01-16',94),(12797,'1987-11-12',58211),(16301,'1983-02-04',48),(17155,'2001-10-06',16266),(20207,'2001-09-17',979806),(35197,'1995-06-30',81240),(57241,'2006-04-28',1),(64773,'2017-07-22',7687653),(88823,'1994-03-06',4793771),(91784,'2023-04-10',55420681),(93824,'2003-12-03',47899),(305658,'1989-01-21',61277396),(336247,'1982-09-24',75415),(402763,'1975-03-19',4),(413648,'2000-06-23',12600865),(572582,'1980-07-03',512),(590944,'2002-08-06',865),(666239,'1983-04-29',355),(689917,'1976-09-21',131824),(712682,'1991-05-09',84068),(886084,'2006-01-07',84),(913267,'2017-07-19',93001516),(1147775,'1988-03-20',8870),(1940169,'2024-06-15',542169172),(2012175,'1998-02-10',941085789),(3071214,'1978-12-14',85011),(4309976,'1980-01-05',87745676),(4526951,'1971-10-28',84312),(4802689,'1993-04-15',78569080),(5140175,'2010-10-08',466946662),(7846136,'1993-08-02',150082),(8142777,'2015-07-16',40044347),(8159170,'1979-10-06',749916),(9051820,'1974-10-16',110093),(9321756,'1970-07-15',912352625),(16587983,'1987-06-02',1208018),(19604195,'1974-11-17',47),(21708690,'1985-11-22',7429),(22938208,'1995-04-03',20970),(29758484,'2012-02-02',418910045),(33515741,'1981-02-05',319),(35301751,'1977-05-16',99306192),(35410975,'1972-11-22',219),(43674623,'1985-02-18',60),(65767132,'1984-12-10',5574546),(69195325,'1976-04-18',6),(72907198,'1975-04-11',495093),(76255786,'2012-07-28',9447),(84611313,'1974-06-01',55213214),(87604297,'2016-05-04',79327106),(98145658,'2023-01-09',659253),(100506807,'1995-02-08',6192356),(146534546,'2008-08-10',2501771),(197227032,'1976-08-17',13213),(270949548,'1989-09-28',81109),(405019645,'1989-01-31',3894763),(699089695,'1987-03-29',8891200),(714902576,'1999-03-30',2272),(899846187,'2022-03-23',923472),(973310421,'1978-12-13',570);
/*!40000 ALTER TABLE `historyLog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-08 13:42:40
