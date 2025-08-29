-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: sma
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment_text` text,
  `commented_on` date DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (511,66005,4021,'Sir Dr. APJ Abdul Kalam quote such a nice human','2017-03-17'),(512,66022,4004,'Ture never let your fear commad you - rather try to overcome it','2024-01-08'),(513,66014,4002,'Dr. APJ Abdul Kalam said it but in todays situation power and money is needed to accomplish the same along with connections','2016-12-18'),(514,66005,4021,'Sir Dr. APJ Abdul Kalam quote such a nice human','2002-09-13'),(515,66019,4007,'Mistakes are the learning steps to never make the same mistake again','2022-10-14'),(516,66012,4014,'The endeavors to destroy the bad thoughts and rebuild with the good ones','2014-02-21'),(517,66018,4008,'Discipline, Righteousness, Courage, Honsety, Passion, Kindness, Respect and Bravery only very few people have','2023-02-23'),(518,66003,4023,'unused knowledge before a unliterate even if you are multiple master degree or PHD it is no use','2020-06-06'),(519,66022,4004,'Ture never let your fear commad you - rather try to overcome it','2021-01-05'),(520,66010,4016,'Our Festival','2006-10-25'),(521,66025,4001,'Sir Dr. APJ Abdul Kalam super Human','2025-12-07'),(522,66001,4025,'Change for good','2007-08-07'),(523,66014,4002,'Dr. APJ Abdul Kalam said it but in todays situation power and money is needed to accomplish the same along with connections','2007-09-27'),(524,66017,4009,'Complete one task 200 % to start with the next one','2022-03-28'),(525,66007,4019,'Education must be given to all','2009-05-14'),(526,66019,4007,'Mistakes are the learning steps to never make the same mistake again','2004-05-07'),(527,66008,4002,'Dr. APJ Abdul Kalam said it but in todays situation power and money is needed to accomplish the same along with connections','2005-10-03'),(528,66025,4001,'Sir Dr. APJ Abdul Kalam super Human','2018-08-07'),(529,66006,4001,'Sir Dr. APJ Abdul Kalam super Human','2018-04-09'),(530,66003,4023,'unused knowledge before a unliterate even if you are multiple master degree or PHD it is no use','2023-03-23'),(531,66021,4005,'Now a days you need money to dream','2024-10-10'),(532,66009,4017,'Nice one bro','2025-06-22'),(533,66018,4008,'Discipline - Righteousness - Courage - Honsety - Passion - Kindness - Respect and Bravery only very few people have','2024-11-19'),(534,66004,4022,'Happy Pongal','2025-05-03'),(535,66014,4002,'Dr. APJ Abdul Kalam said it but in todays situation power and money is needed to accomplish the same along with connections','2024-07-03');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-11 10:09:22
