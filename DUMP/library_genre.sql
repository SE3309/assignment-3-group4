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
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genreType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genreDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`genreType`),
  UNIQUE KEY `genreType` (`genreType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('ab','Reprehenderit et quia aut placeat voluptatibus suscipit. Excepturi quia debitis porro eaque odit. Est nam dignissimos non quod nulla iusto. Corrupti corrupti sit animi tempore perspiciatis voluptate ut ratione.'),('Action','A genre in literature that focuses on stories involving high-stakes, high-energy, and fast-paced events.'),('Adventure','A genre of fiction that usually presents danger, or gives the reader a sense of excitement.'),('cupiditate','Saepe exercitationem voluptate magni laudantium. In aut harum natus iste consequatur placeat. Quasi veritatis eos in quam qui. Atque magnam in assumenda officiis ipsum commodi.'),('delectus','Quia et debitis tempora ducimus laboriosam non. Possimus autem repellendus et ex qui voluptate non laboriosam. Earum inventore tempore sit voluptas quisquam.'),('dolor','Distinctio voluptatem tempora est distinctio. Vero praesentium distinctio delectus pariatur sit. Laborum odit voluptatem occaecati quas rerum et ab.'),('ea','Minus voluptas facere dolorem. Impedit aut perspiciatis et impedit reiciendis facilis quae. Et recusandae eum assumenda. Nemo vero commodi praesentium architecto. Dolor doloribus neque explicabo omnis nemo incidunt.'),('et','Mollitia rerum esse quas tenetur. Quam ea reiciendis consequatur sunt et adipisci. Provident quas distinctio repellat sunt error fuga maiores.'),('hic','Temporibus aut perspiciatis eius pariatur mollitia eveniet quibusdam. Voluptas quos et delectus sint porro laboriosam et. Et quia numquam eum ut maiores illo necessitatibus.'),('in','Vel inventore at eveniet consequatur veritatis neque vero. Expedita veritatis aut voluptatum suscipit omnis sapiente et. Sed officia sequi dolore distinctio aperiam corporis.'),('itaque','Debitis atque aliquid distinctio animi est corrupti. Sunt tempora voluptas omnis error consequatur quasi et veniam. Quo voluptatem esse accusamus ullam culpa. Nihil dicta aut aut voluptatum expedita. Magni optio et est incidunt.'),('laborum','Modi amet alias rerum nostrum magni sed voluptatem. Commodi est vitae tempora rem fuga ut. Est quaerat repellat corporis sequi incidunt libero. Sed facilis earum magnam omnis perspiciatis molestiae quia. Iusto dignissimos beatae autem a eum.'),('maiores','Occaecati sunt doloremque sed autem doloribus. Rerum totam reiciendis reiciendis.'),('Mystery','A genre of fiction that follows a crime (like a murder or a disappearance) from the moment it is committed to the moment it is solved.'),('nam','Sunt sint delectus et quaerat. Molestiae qui optio ipsa possimus rerum dolorum est. Quis voluptas expedita vel non qui. Minima voluptate dolore ut atque voluptatem aut.'),('non','Distinctio earum consequatur autem sed quia. Et quis distinctio culpa rem laudantium sequi ut. Quia quis vitae blanditiis ea a vel.'),('placeat','Dolorem est vel sunt distinctio. Minima quas vel ut tenetur. Beatae voluptas quidem molestiae maxime. Beatae enim repellat laborum in.'),('quasi','Labore vel aliquid voluptatem sequi. Animi est architecto sint sit consequatur quaerat voluptatibus quia. Sequi suscipit ducimus exercitationem vitae quisquam. Atque quo illum maxime atque.'),('qui','Amet in nostrum et. Consequatur est nobis corrupti placeat eligendi labore est. Deserunt eos exercitationem et soluta occaecati voluptas suscipit.'),('Realistic Fiction','A genre consisting of stories that could have actually occurred to people or animals in a believable setting.'),('tempore','Dolor accusamus hic voluptas vero quibusdam cum. In corporis voluptatem mollitia delectus sit debitis. Sint nemo maxime neque numquam.'),('Thriller','A genre of fiction with numerous, often overlapping, subgenres, including crime, horror, and detective fiction.'),('vero','Sint quaerat omnis reiciendis pariatur quos iste odit cupiditate. Incidunt esse aut iste tempora qui quia accusantium. Quo quasi quia est adipisci aut voluptas itaque. Et quis eius vero qui doloremque est voluptate.'),('voluptas','Exercitationem sapiente esse necessitatibus. Ad quidem neque esse quisquam. Dolor sunt aut inventore suscipit dolorem. Cumque nostrum sit omnis provident consequatur.'),('voluptatem','Eligendi aut error quis vel. Ut eum aspernatur voluptate voluptatibus. Dolorum non asperiores consequatur. Placeat distinctio eos molestiae.');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 13:23:07
