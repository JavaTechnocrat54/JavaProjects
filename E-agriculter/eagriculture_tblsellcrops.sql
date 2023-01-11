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
-- Table structure for table `tblsellcrops`
--

DROP TABLE IF EXISTS `tblsellcrops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsellcrops` (
  `sell_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `crop_name` varchar(100) DEFAULT NULL,
  `crop_description` varchar(500) DEFAULT NULL,
  `crop_quantity` varchar(100) DEFAULT NULL,
  `admin_name` varchar(100) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9826 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsellcrops`
--

LOCK TABLES `tblsellcrops` WRITE;
/*!40000 ALTER TABLE `tblsellcrops` DISABLE KEYS */;
INSERT INTO `tblsellcrops` VALUES (2367,'PN45','javatechnocrat@gmail.com','8480288040','CUTTACK,Orissa,india,754003','Rice','good','100','Prajwal','Accept Crop','2022-06-24 17:06:34','2022-06-24 10:10:22'),(3399,'Kishor Kadam','kadamk329@yahoo.com','9404308673','Bhalawani, Ahmednagar,Maharashtra,India,414103','Wheat Crop','Its an sarbati wheat, Its an awesome wheat quality to daily eating.','650 KG','Sagar Prakash Kharmale','Accept Crop','2022-03-20 13:44:19','2022-03-20 19:17:24'),(7426,'Kishor Kadam','kadamk329@yahoo.com','9404308673','Bhalawani, Ahmednagar,Maharashtra,India,414103','Chickpea Crop','Testy for eating.','800 KG','Sagar Prakash Kharmale','Pending','2022-03-20 13:45:35','2022-03-20 19:15:35'),(7615,'java','java@gmail.com','1234567890','CUTTACK,Orissa,india,754003','Rice','fdgdf','100','Javatechnocrat','Accept Crop','2022-06-12 18:20:49','2022-06-12 11:24:29'),(7952,'java','java@gmail.com','1234567890','CUTTACK,Orissa,india,754003','RICE','dsfkljas','30','Myadmin','Reject Crop','2022-07-08 00:17:23','2022-07-07 17:19:30'),(8884,'Kishor Kadam','kadamk329@yahoo.com','9404308673','Bhalawani, Ahmednagar,Maharashtra,India,414103','Jwar Crop','Its a awesome quality.','1200 KG','Kishor Kadam','Reject Crop','2022-03-20 13:44:58','2022-03-20 19:16:47'),(9775,'Bayer','prajwalchandran@gmail.com','1123456789','CUTTACK,Orissa,india,754003','Rice','bay','100','Prajwal','Pending','2022-05-06 05:25:37','2022-05-05 22:25:37'),(9825,'java','java@gmail.com','1234567890','CUTTACK,Orissa,india,754003','Rice','Rice','100','Javatechnocrat','Accept Crop','2022-05-06 05:20:44','2022-06-12 11:24:46');
/*!40000 ALTER TABLE `tblsellcrops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-08 20:48:49
