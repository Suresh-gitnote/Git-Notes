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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-11 10:09:22
