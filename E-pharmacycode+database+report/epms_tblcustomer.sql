-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: epms
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
  `id` int NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(100) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer`
--

LOCK TABLES `tblcustomer` WRITE;
/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
INSERT INTO `tblcustomer` VALUES (359141,'PN45','PN@gmail.com','112345678','Male','NUAGAN GRAM, PO:-GOVINDPUR','754005','Prajwal111','4321','2022-06-23 17:51:15','2022-06-23 11:14:19'),(365685,'java','javatechnocrat@gmail.com','1123456789','Male','NUAGAN GRAM, PO:-GOVINDPUR','754003','User','1234','2022-07-03 19:49:01','2022-07-03 12:49:01'),(368974,'java','admin@gmail.com','7682892496','Female','NUAGAN GRAM, PO:-GOVINDPUR','754003','Prajwal','1234','2022-05-06 05:34:51','2022-05-05 22:34:51'),(485060,'Kishor Kadam','kadamk33@gmail.com','7276763516','Male','Bhalawani, Ahmednagar.','414102','kishor','java@1991','2022-01-13 06:24:19','2022-02-20 11:47:18'),(679118,'Rice','admin@gmail.com','1123456789','Male','NUAGAN GRAM, PO:-GOVINDPUR','754003','Prajwal143','1111','2022-06-23 08:28:24','2022-06-23 01:28:24'),(712011,'java','admin@gmail.com','1123456789','Male','NUAGAN GRAM, PO:-GOVINDPUR','754003','Prajwal','1234','2022-06-12 04:13:39','2022-06-12 09:42:02'),(725244,'Javed Tamboli','javed.tamboli@gmail.com','8369651475','Male','Charoli, Pune.','411022','javed','javed@123','2022-02-28 04:48:32','2022-02-28 10:18:32'),(865931,'Sagar Prakash Kharmale','sagarkharmale@gmail.com','8456571542','Male','Bhandgaon, Ahmednagar, Maharashtra.','414103','sagar','sagar@123','2022-02-28 10:00:38','2022-02-28 15:30:38');
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

-- Dump completed on 2022-07-08 15:50:58
