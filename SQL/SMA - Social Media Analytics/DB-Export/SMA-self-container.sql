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

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followers` (
  `follower_id` int NOT NULL,
  `following_id` int NOT NULL,
  `followed_on` date DEFAULT NULL,
  PRIMARY KEY (`follower_id`,`following_id`),
  KEY `following_id` (`following_id`),
  CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
INSERT INTO `followers` VALUES (4001,4001,'2022-03-15'),(4002,4007,'2022-01-22'),(4003,4023,'2024-01-25'),(4004,4005,'2022-05-11'),(4005,4005,'2023-04-18'),(4006,4006,'2024-11-07'),(4007,4021,'2023-03-03'),(4008,4020,'2023-10-13'),(4009,4009,'2025-02-16'),(4010,4013,'2025-06-14'),(4011,4018,'2023-06-25'),(4012,4002,'2024-06-10'),(4013,4001,'2022-12-01'),(4014,4015,'2022-11-28'),(4015,4009,'2024-08-21'),(4016,4004,'2023-08-14'),(4017,4017,'2022-10-07'),(4018,4024,'2024-02-28'),(4019,4003,'2025-04-10'),(4020,4025,'2022-07-03'),(4021,4019,'2022-06-06'),(4022,4016,'2023-12-30'),(4023,4012,'2023-01-09'),(4024,4014,'2025-01-01'),(4025,4025,'2025-05-09');
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `like_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `liked_on` date DEFAULT NULL,
  PRIMARY KEY (`like_id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (23301,66012,4005,'2022-07-22'),(23302,66005,4012,'2024-08-29'),(23303,66022,4019,'2023-08-27'),(23304,66017,4008,'2020-12-14'),(23305,66005,4021,'2020-01-28'),(23306,66009,4003,'2021-03-10'),(23307,66023,4005,'2021-07-24'),(23308,66012,4017,'2022-12-15'),(23309,66001,4014,'2022-10-28'),(23310,66019,4025,'2022-07-09'),(23311,66014,4010,'2023-08-21'),(23312,66017,4001,'2025-03-02'),(23313,66025,4012,'2023-02-01'),(23314,66004,4009,'2021-09-21'),(23315,66008,4022,'2021-10-09'),(23316,66021,4015,'2020-08-09'),(23317,66003,4007,'2024-09-13'),(23318,66022,4021,'2020-03-17'),(23319,66007,4002,'2021-03-15'),(23320,66011,4018,'2021-11-27'),(23321,66006,4006,'2025-01-07'),(23322,66009,4010,'2023-01-15'),(23323,66013,4004,'2020-01-24'),(23324,66010,4013,'2022-06-12'),(23325,66001,4019,'2020-10-13');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (66020,858501),(66023,8585010),(66011,8585011),(66012,8585012),(66021,8585012),(66002,8585013),(66015,8585013),(66001,8585014),(66025,8585015),(66009,8585016),(66001,8585017),(66002,8585018),(66008,8585018),(66016,8585018),(66002,8585019),(66018,8585019),(66003,8585020),(66005,8585020),(66003,8585021),(66014,8585021),(66002,8585022),(66006,8585023),(66015,8585024),(66004,8585025),(66020,8585025);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `content` text,
  `media_url` varchar(255) DEFAULT NULL,
  `posted_on` date DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66026 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (66001,4025,'\"I was willing to accept what I could not change. - Dr. APJ Abdul Kalam\"','https://www.brainyquote.com/authors/a-p-j-abdul-kalam-quotes','2006-09-21'),(66002,4024,'photos in village areas surrounding Mahabalipuram in 1979 - \nhttps://www.facebook.com/photo/?fbid=728630849747102&set=pcb.4301565513405002','https://www.facebook.com/groups/1702950456599867/posts/4301565513405002/','2022-12-12'),(66003,4023,'“The man who does not read books has no advantage over the one who cannot read them. - —Mark Twain”','https://www.canva.com/learn/30-inspiring-quotes-students/','2015-03-02'),(66004,4022,'\"Pongal is a time to celebrate life’s simple joys—family, friends, and nature.\"','https://www.jagranjosh.com/general-knowledge/happy-pongal-2025-wishes-greetings-1736829381-1','2001-06-14'),(66005,4021,'\"You see, God helps only people who work hard. That principle is very clear. - Dr. APJ Abdul Kalam\"','https://www.brainyquote.com/authors/a-p-j-abdul-kalam-quotes','2024-10-05'),(66006,4001,'\"Pongal teaches us to honor the Earth and cherish our relationships.\"','https://www.jagranjosh.com/general-knowledge/happy-pongal-2025-wishes-greetings-1736829381-1','2011-08-27'),(66007,4019,'“Education is the passport to the future - for tomorrow belongs to those who prepare for it today. —Malcolm X”','https://www.canva.com/learn/30-inspiring-quotes-students/','2016-05-10'),(66008,4002,'“Teachers can open the door - but you must enter it yourself. —Chinese proverb”','https://www.canva.com/learn/30-inspiring-quotes-students/','2003-01-23'),(66009,4017,'\"Climbing to the top demands strength, whether it is to the top of Mount Everest or to the top of your career. - Dr. APJ Abdul Kalam\"','https://www.brainyquote.com/authors/a-p-j-abdul-kalam-quotes','2018-07-06'),(66010,4016,'“Pongal is honoring our farmers today, let’s cherish their hard work.”','https://www.jagranjosh.com/general-knowledge/happy-pongal-2025-wishes-greetings-1736829381-1','2021-11-17'),(66011,4001,'“The beautiful thing about learning is that no one can take it away from you.—B.B. King”','https://www.canva.com/learn/30-inspiring-quotes-students/','2008-02-25'),(66012,4014,'\"May Lord Rama bless you with the best virtues of life and endow you with success. Shubh deepawali.\"','https://www.winni.in/wishes/diwali/quotes','2005-12-19'),(66013,4013,'“Education is the most powerful weapon you can use to change the world. —B.B. King\"','https://www.canva.com/learn/30-inspiring-quotes-students/','2000-04-03'),(66014,4002,'\"If a country is to be corruption free and become a nation of beautiful minds, I strongly feel there are three key societal members who can make a difference. They are the father, the mother and the teacher. - Dr. APJ Abdul Kalam\"','https://www.brainyquote.com/authors/a-p-j-abdul-kalam-quotes','2013-09-10'),(66015,4011,'“Don’t let what you cannot do interfere with what you can do. —John Wooden\"','https://www.canva.com/learn/30-inspiring-quotes-students/','2002-06-08'),(66016,4001,'\"The significance of Deepawali is the removal of darkness anad ignorance from the mind and filing it with goodness.\"','https://www.winni.in/wishes/diwali/quotes','2019-01-29'),(66017,4009,'\"To succeed in your mission, you must have single-minded devotion to your goal. - Dr. APJ Abdul Kalam\"','https://www.brainyquote.com/authors/a-p-j-abdul-kalam-quotes','2009-03-30'),(66018,4008,'\"Greatness is not born; it is built daily through discipline, courage, passion, and the refusal to accept failure.― Simon Sinek\"','https://www.goodreads.com/quotes/7193454-greatness-is-not-born-from-one-success-greatness-is-born','2020-10-14'),(66019,4007,'“A person who never made a mistake never tried anything new. —Albert Einstein\"','https://www.canva.com/learn/30-inspiring-quotes-students/','2017-04-18'),(66020,4006,'\"Unity is the key to diversity, growth and prosperity.\"','https://yellowbirdpublications.com/slogans-on-unity-in-diversity/?srsltid=AfmBOoq7swtlXtPt7SphDDr6p4A08NVcLAKMpSQVCnS0sHjy7cWbOyd5','2010-11-01'),(66021,4005,'\"You have to dream before your dreams can come true. - Dr. APJ Abdul Kalam\"','https://www.brainyquote.com/authors/a-p-j-abdul-kalam-quotes','2007-07-15'),(66022,4004,'“Never let the fear of striking out stop you from playing the game. —Babe Ruth\"','https://www.canva.com/learn/30-inspiring-quotes-students/','2012-08-02'),(66023,4002,'“You don’t have to be great to start, but you have to start to be great. –Zig Ziglar\"','https://www.canva.com/learn/30-inspiring-quotes-students/','2023-02-07'),(66024,4002,'“The expert in anything was once a beginner.—Helen Hayes\"','https://www.canva.com/learn/30-inspiring-quotes-students/','2004-05-26'),(66025,4001,'\"If you want to shine like a sun, first burn like a sun. - Dr. APJ Abdul Kalam\"','https://www.brainyquote.com/authors/a-p-j-abdul-kalam-quotes','2025-03-11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8585026 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (858509,'Carrer'),(8585012,'Culture'),(8585021,'Dreams'),(858503,'Education'),(858508,'Education Business'),(858507,'Education must be given to all'),(8585015,'Encourage'),(858506,'Festival'),(8585014,'Future Dream'),(8585018,'Habbits'),(858504,'Happy Pongal'),(8585020,'India'),(8585011,'Learn'),(8585019,'Learning Habbits'),(8585016,'Light Festival'),(8585017,'Motivational'),(8585010,'Our Festival'),(8585022,'Overcome your fear'),(858502,'Photo'),(8585013,'Power of Education'),(858501,'Quote'),(858505,'Sincerity'),(8585023,'Start to finish'),(8585024,'Starting point'),(8585025,'Success');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2025-07-11 10:10:36
