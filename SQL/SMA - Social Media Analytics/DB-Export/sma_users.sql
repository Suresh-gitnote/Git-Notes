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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `joined_on` date DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4001,'Bala','balamurugan26@datamail.com','Bala Murugan','2021-05-26'),(4002,'Ram','ramkumar11@gonamail.com','Ram Kumar','2023-05-11'),(4003,'Siva','sivabharath28@yatamail.com','Siva Bharath','2023-07-28'),(4004,'Suresh','sureshranganathan21@sqlmail.com','Suresh Ranganathan','2022-07-21'),(4005,'Sowmiya','sowmiyavaradharajan16@dbmsmail.com','Sowmiya Varadharajan','2022-07-16'),(4006,'Hashmitha','hashmithasuresh23@rdbms.com','Hashmitha Suresh','2021-05-23'),(4007,'Niranjan','niranjansuresh4@sound.com','Niranjan Suresh','2021-04-04'),(4008,'Yuvasree','Yuvasreevenkatesan28@sloud.com','Yuvasree Venkatesan','2021-07-28'),(4009,'Venkatesan','venkatesankuttipillai5@datamail.com','Venkatesan Kuttipillai','2023-12-05'),(4010,'Pugazh','Pugazhvenkat17@gatamail.com','Pugazh Venkat','2021-06-17'),(4011,'Jana','Janaramamurthy6@yatamail.com','Jana Ramamurthy','2022-12-06'),(4012,'Bhava','bhavamurthy23@sqlmail.com','Bhava Murthy','2008-07-23'),(4013,'Nithiyasree','nithiyasreemoorthy28@dbmsmail.com','Nithiyasree Moorthy','2021-03-28'),(4014,'Sindhu','sindhutamilselvan30@rdbms.com','Sindhu Tamilselvan','2021-03-30'),(4015,'Baskar','baskarvedhachalam14@sound.com','Baskar Vedhachalam','2021-06-14'),(4016,'Hemnath','hemnathrajadurai12@sloud.com','Hemnath Rajadurai','2022-04-12'),(4017,'Prabhu','prabhujayaram17@datamail.com','Prabhu Jayaram','2021-09-17'),(4018,'Mathew','mathewandrews15@gatamail.com','Mathew Andrews','2023-08-15'),(4019,'Richard','richardjohnson17@yatamail.com','Richard Johnson','2022-12-17'),(4020,'Neha','nehasri19@sqlmail.com','Neha Sri','2023-06-29'),(4021,'Vijaya','vijayalakshmi29@dbmsmail.com','Vijaya Lakshmi','2021-10-12'),(4022,'Ranganathan','ranganathandurai27@rdbms.com','Ranganathan Durai','2023-07-27'),(4023,'Gowri','gowrivaradharajan26@sound.com','Gowri Varadharajan','2009-05-30'),(4024,'Vanitha','vanitharaj10@sloud.com','Vanitha Raj','2021-09-13'),(4025,'Janani','Jananigopal11@sample.com','Janani Gopal','2023-06-11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
