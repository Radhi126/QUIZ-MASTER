-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aptitude`
--

DROP TABLE IF EXISTS `aptitude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aptitude` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `correct_answer` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aptitude`
--

LOCK TABLES `aptitude` WRITE;
/*!40000 ALTER TABLE `aptitude` DISABLE KEYS */;
INSERT INTO `aptitude` VALUES (1,'If NOIDA is written as OPJEB, then what will be the code for DELHI?','EFMAK','EFAMK','EFMIJ','EFMIK',3),(2,'The number comes next in the series 12, 36, 109, 329, ...','900','990','890','None',2),(3,'Hypsiphobia: Height :: Hylophobia: ?','Forests','Water','Animals','All options',1),(4,'	If Raj was one-third as old as Rahim 5 years back and Raj is 17 years old now, How old is Rahim now?','36','48','40','41',4),(5,'What will be the missing letters in the series BKK, DMM, FOO,..., JSS:','HQQ','HPP','HTT','None',1),(6,'Which word does not belong with the others?','inch','ounce','centimeter','yard',2);
/*!40000 ALTER TABLE `aptitude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo`
--

DROP TABLE IF EXISTS `geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `correct_answer` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo`
--

LOCK TABLES `geo` WRITE;
/*!40000 ALTER TABLE `geo` DISABLE KEYS */;
INSERT INTO `geo` VALUES (1,'Which among the following is smallest district of India?','Alapuzha','Dausa','Mahe','Tirap',3),(2,'The Largest river of all the west flowing rivers of the peninsular India is:','Tapti','Kaveri','Krishna','Narmada',4),(3,'Which of the following rock systems in India is the latest one?','Vindhayan','Gondwana','Dharwar','Cuddapah',2),(4,'The first woman to climb Mount Everest was:','Junko Tabei','Karoline Mikkelson','Valentina Tereshkova','None',1),(5,'Where is Barren Island located?','Bay of Bengal','Arabian Sea','Mediterranean Sea','China Sea',1),(6,'Which of the following is known as the Kohinoor of India?','Bihar','Jharkhand','Andhra Pradesh','Rajasthan',3);
/*!40000 ALTER TABLE `geo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gk`
--

DROP TABLE IF EXISTS `gk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `correct_answer` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gk`
--

LOCK TABLES `gk` WRITE;
/*!40000 ALTER TABLE `gk` DISABLE KEYS */;
INSERT INTO `gk` VALUES (1,'The tallest statue in the world The Statue of Unity is located near which dam?','Bhakra Nangal Dam','Sardar Sarovar Dam','Tehri Dam','Hirakud Dam',2),(2,'Which of the following is considered the atmopheric pollutant?','Oxygen','Ozone','Sulphur Dioxide','Nitrogen',3),(3,'Which among the following performing artists bagged the best actess award for Meena Gurjari in 1975?','Sonal Masingh','Sitara Devi','Shovana Narayana','Mallika Sarabhai',4),(4,'The author of world famous Harry Potter is:','Arundhati Roy','J K Rowling','Taslima Nasrin','Salman Rushdie',2),(5,'Which veda depicts the informatio about the most ancient Vedic age culture?','Rig Veda','Yajurveda','Atharvaveda','Samaveda',1),(6,'Which Article of the Indian Constituition gives the President the power of pardoning?','Article 72','Article 73','Article 74','Article 75',1);
/*!40000 ALTER TABLE `gk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kys`
--

DROP TABLE IF EXISTS `kys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `correct_answer` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kys`
--

LOCK TABLES `kys` WRITE;
/*!40000 ALTER TABLE `kys` DISABLE KEYS */;
INSERT INTO `kys` VALUES (1,'What motivates you the most?','Personal achievement','Helping others','Learning new things','Experiencing new adventures',3),(2,'How do you prefer to spend your free time?','Being creative','Socializing with friends','Reading or relaxing','Exploring new places',3),(3,'How do you handle stress?','Stay calm and solve problems','Seek comfort from others',' Ignore it and keep going','Distract myself with activities',1),(4,'What is your primary strength?','Creativity','Patience','Determination','Leadership',3),(5,'How do you make decisions?','Trust my gut feeling','Carefully analyze the situation','Ask for others opinions','Let things unfold naturally',2),(6,'What is your personality type?','Introvert','Extrovert','Ambivert','I don’t know',3);
/*!40000 ALTER TABLE `kys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaderboard`
--

DROP TABLE IF EXISTS `leaderboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaderboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `k_score` int DEFAULT NULL,
  `s_score` int DEFAULT NULL,
  `gk_score` int DEFAULT NULL,
  `a_score` int DEFAULT NULL,
  `geo_score` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `leaderboard_ibfk_1` FOREIGN KEY (`username`) REFERENCES `quiz_rcd` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaderboard`
--

LOCK TABLES `leaderboard` WRITE;
/*!40000 ALTER TABLE `leaderboard` DISABLE KEYS */;
INSERT INTO `leaderboard` VALUES (1,'radhi',0,6,0,0,0),(2,'radhi',0,0,0,5,0),(3,'radhi',0,0,5,0,0),(4,'kashvi',0,0,5,0,0),(5,'kashvi',0,6,0,0,0),(6,'shiv',0,4,0,0,0),(7,'shiv',0,0,0,5,0),(8,'sneha',0,0,6,0,0),(9,'sneha',0,0,0,4,0),(10,'vrinda',0,5,0,0,0),(11,'vrinda',0,0,0,5,0),(12,'divya',0,0,0,4,0),(13,'divya',0,0,0,0,3);
/*!40000 ALTER TABLE `leaderboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_rcd`
--

DROP TABLE IF EXISTS `quiz_rcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_rcd` (
  `PID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `PWD` varchar(10) NOT NULL,
  PRIMARY KEY (`PID`),
  UNIQUE KEY `USERNAME` (`username`),
  UNIQUE KEY `PWD` (`PWD`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_rcd`
--

LOCK TABLES `quiz_rcd` WRITE;
/*!40000 ALTER TABLE `quiz_rcd` DISABLE KEYS */;
INSERT INTO `quiz_rcd` VALUES (1,'radhi','r@11'),(2,'kashvi','k@32'),(3,'shiv','s@12'),(4,'sneha','s@72'),(5,'vrinda','v@345'),(6,'divya','d@11');
/*!40000 ALTER TABLE `quiz_rcd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `correct_answer` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,'Which team has won the most FIFA World Cup titles?','Brazil','Germany','Argentina','Italy',1),(2,'Which country has won the most ICC Cricket World Cup titles?','England','India','Australia','West Indies',3),(3,'Which country will debut in the FIFA World Cup 2024?','Brazil','India','Germany','Japan',2),(4,'What is the standard width of each wicket in cricket?','9 inches','10 inches','11 inches','12 inches',1),(5,'In which year did Rahul Dravid score his highest Test innings of 270 runs?','2003','2004','2005','2006',2),(6,'What is the maximum number of overs allowed per bowler in a T20 match?','2 overs','4 overs','1 over','5 overs',2);
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-04 11:50:01
