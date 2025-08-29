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
-- Table structure for table `shares`
--

DROP TABLE IF EXISTS `shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shares` (
  `share_id` int NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `shared_on` date DEFAULT NULL,
  PRIMARY KEY (`share_id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  CONSTRAINT `shares_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shares`
--

LOCK TABLES `shares` WRITE;
/*!40000 ALTER TABLE `shares` DISABLE KEYS */;
INSERT INTO `shares` VALUES (23501,66015,4003,'Twitter','2020-09-01'),(23502,66011,4008,'Instagram','2023-01-25'),(23503,66013,4025,'whatsapp','2025-03-06'),(23504,66004,4001,'Twitter','2024-01-19'),(23505,66008,4007,'Facebook','2021-03-08'),(23506,66012,4006,'Twitter','2024-11-09'),(23507,66025,4015,'Linkedin','2024-03-13'),(23508,66005,4016,'Linkedin','2023-06-30'),(23509,66016,4020,'Instagram','2024-06-17'),(23510,66020,4020,'Facebook','2021-01-04'),(23511,66007,4020,'Facebook','2022-02-22'),(23512,66016,4020,'Instagram','2024-06-17'),(23513,66023,4019,'Instagram','2022-04-30'),(23514,66003,4022,'whatsapp','2020-03-27'),(23515,66001,4015,'Instagram','2021-07-15'),(23516,66024,4004,'Twitter','2025-05-20'),(23517,66015,4003,'Twitter','2020-09-01'),(23518,66009,4014,'Instagram','2025-04-11'),(23519,66019,4012,'whatsapp','2023-09-18'),(23520,66021,4009,'Twitter','2023-11-27'),(23521,66002,4006,'Facebook','2022-11-03'),(23522,66010,4002,'whatsapp','2020-07-10'),(23523,66014,4013,'Instagram','2021-10-20'),(23524,66017,4023,'Linkedin','2022-08-29'),(23525,66006,4005,'Twitter','2020-12-05');
/*!40000 ALTER TABLE `shares` ENABLE KEYS */;
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
