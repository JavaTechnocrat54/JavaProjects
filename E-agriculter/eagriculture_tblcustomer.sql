-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: eagriculture
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(100) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9082 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer`
--

LOCK TABLES `tblcustomer` WRITE;
/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
INSERT INTO `tblcustomer` VALUES (469,'Rice','prajwalchandran@gmail.com','1123456789','Female','CUTTACK','Orissa','india','754003','admin','sdafsd','2022-06-30 02:28:56','2022-06-29 19:28:56'),(839,'Kishor Balasaheb Kadam','kadamk329@yahoo.com','9404308673','Male','Bhalawani, Ahmednagar','Maharashtra','India','414103','kishor','12345','2022-01-25 06:11:52','2022-04-05 22:04:44'),(1678,'Javed Tamboli','javed.tamboli@gmail.com','8369651475','Male','Pune','Maharashtra','India','411305','javed','javed@123','2022-02-22 06:53:54','2022-02-22 12:23:54'),(2375,'java','java@gmail.com','1234567890','Male','CUTTACK','Orissa','india','754003','Prajwal','1234','2022-05-06 05:18:21','2022-05-05 22:18:21'),(2542,'Sanket Kadam','sanketkadam@gmail.com','7565869576','Male','Bhalawani','Maharashtra','India','414103','sanket','sanket@123','2022-04-12 07:34:51','2022-04-12 13:04:51'),(7078,'PN45','javatechnocrat@gmail.com','8480288089','Female','CUTTACK','Orissa','india','754003','pn','1212','2022-06-24 16:55:33','2022-06-24 10:07:35'),(7448,'Arun Pandit','30arunpandit@gmail.com','8265686325','Male','Ahmednagar','Maharashtra','India','411055','arun','arun@123','2022-01-25 06:13:14','2022-01-25 11:43:14'),(9081,'Bayer','prajwalchandran@gmail.com','1123456789','Male','CUTTACK','Orissa','india','754003','Bay','1234','2022-05-06 05:24:49','2022-05-05 22:24:49');
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-08 20:48:50
