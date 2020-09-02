-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: online_quiz
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `username` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `total_question` int(2) DEFAULT NULL,
  `total_attempt` int(2) DEFAULT NULL,
  `mark` int(2) DEFAULT NULL,
  PRIMARY KEY (`username`,`subject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES ('Aman','aca',10,4,2),('Aman','os',10,2,0),('Ashish','aca',10,2,2),('Ashish','advjava',10,3,0),('Ashish','cg',10,2,1),('Ashish','iot',10,3,0),('Ashish','os',10,2,2),('Govind','aca',10,7,2),('Govind','advjava',10,0,0),('Govind','os',10,0,0),('Gurudeep','aca',10,10,10),('Gurudeep','advjava',10,2,0),('Gurudeep','cg',10,3,1),('Gurudeep','iot',10,4,3),('Gurudeep','os',10,4,0),('Kriti','aca',10,3,0),('Kriti','advjava',10,3,0),('Kriti','cg',10,2,1),('Kriti','iot',10,3,0),('Kriti','os',10,3,0),('Kunal','aca',10,6,3),('Kunal','os',10,3,0),('Manjeet','aca',10,3,3),('Manjeet','os',10,10,10),('Rohit','aca',10,8,2),('Rohit','advjava',10,1,0),('Rohit','iot',10,3,3),('Rohit','os',10,2,1),('Saswat','advjava',10,10,10),('Saswat','os',10,7,3),('Shubhankar','aca',10,3,1),('Shubhankar','advjava',10,2,0),('Shubhankar','cg',10,0,0),('Shubhankar','iot',10,3,1),('Shubhankar','os',10,0,0),('Vikash','aca',10,4,1),('Vikash','advjava',10,3,0),('Vikash','cg',10,5,3),('Vikash','iot',10,10,10),('Vikash','os',10,4,4);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-01 16:24:05
