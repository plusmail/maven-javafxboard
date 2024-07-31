-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: javafxboard
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.24.04.1

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
-- Table structure for table `Board`
--

DROP TABLE IF EXISTS `Board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Board` (
  `selected` tinyint(1) NOT NULL DEFAULT '0',
  `no` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` longtext,
  `writer` varchar(30) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Board`
--

LOCK TABLES `Board` WRITE;
/*!40000 ALTER TABLE `Board` DISABLE KEYS */;
INSERT INTO `Board` VALUES (0,1,'반가워','adasad','dfsdf','2024-07-24 05:42:42','2024-07-24 05:42:42'),(0,2,'놀려가자','dfdfdf','dfsdfsdf','2024-07-24 05:45:10','2024-07-24 05:45:10'),(0,4,'bbbb','dfsdf','fsdf','2024-07-24 05:45:27','2024-07-24 05:45:27'),(0,6,'오늘은 뭐하니 ㅋㅋㅋ','홍길동','유관순2 ㅁㅁㅁㅁㅁ','2024-07-25 00:44:32','2024-07-26 02:08:59'),(0,7,'오늘은 뭐하니55555','555555','유관순44445555555555','2024-07-25 00:46:26','2024-07-26 01:52:52'),(0,10,'bbb','bbbb','bbbb','2024-07-25 07:03:25','2024-07-25 07:03:25'),(0,11,'sdf','sdfsdf','sdfsdf','2024-07-25 07:25:42','2024-07-25 07:25:42'),(0,12,'sdfd','fsdfsd','fasdfsfds','2024-07-25 07:26:02','2024-07-25 07:26:02'),(0,13,'dfsd','fsdfdsfsd','fsfsf','2024-07-25 07:26:48','2024-07-25 07:26:48'),(0,16,'ㅠㅠㅠㅠㅊㅊ','ㅊ','ㅠㅇㅇㅁㅇㄹㄴ','2024-07-26 02:09:51','2024-07-26 02:10:21'),(0,17,'신로운 세상!!!','날씨가 무지무지 덥레용.','홍길동','2024-07-29 00:18:55','2024-07-29 00:18:55'),(0,18,'gggg','gggg','ggg','2024-07-29 02:02:27','2024-07-29 02:02:27'),(0,19,'dfsdf','sdfsf','sdfsdaf','2024-07-29 02:17:57','2024-07-29 02:17:57'),(0,20,'신로운 세상!!!','날씨가 무지무지 덥레용.','홍길동','2024-07-30 00:33:09','2024-07-30 00:33:09');
/*!40000 ALTER TABLE `Board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'test','테스트','test'),(2,'test01','test01','test');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'javafxboard'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-30  9:43:36
