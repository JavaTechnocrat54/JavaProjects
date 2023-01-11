-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: societymanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `tbladmin`
--
create database osms;
use osms;
DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','java@1991','admin@gmail.com','2021-01-06 00:34:45','2021-11-10 12:48:39');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblallotments`
--

DROP TABLE IF EXISTS `tblallotments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblallotments` (
  `allotment_id` int NOT NULL AUTO_INCREMENT,
  `member_name` varchar(100) DEFAULT NULL,
  `member_contact_no` varchar(100) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `flat_no` int DEFAULT NULL,
  `emergency_contact_no` varchar(100) DEFAULT NULL,
  `total_family_members` int DEFAULT NULL,
  `permanent_address` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`allotment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblallotments`
--

LOCK TABLES `tblallotments` WRITE;
/*!40000 ALTER TABLE `tblallotments` DISABLE KEYS */;
INSERT INTO `tblallotments` VALUES (1,'Kishor Balasaheb Kadam','7276763516','B',7253,'9404308673',7,'Bhalawani, Ahmednagar','2021-10-20 04:19:14','2021-11-10 12:28:47'),(2,'Javed Tamboli','8369651475','D',1469,'8877442266',2,'Charoli, Pune.','2021-11-11 04:49:36','2021-11-11 10:25:00');
/*!40000 ALTER TABLE `tblallotments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbills`
--

DROP TABLE IF EXISTS `tblbills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbills` (
  `bill_id` int NOT NULL AUTO_INCREMENT,
  `block` varchar(45) DEFAULT NULL,
  `flat_no` varchar(45) DEFAULT NULL,
  `light_unit_consumed` int DEFAULT NULL,
  `price_per_unit` int DEFAULT NULL,
  `total_unit_charges` int DEFAULT NULL,
  `maintainence_charge` double DEFAULT NULL,
  `final_bill_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbills`
--

LOCK TABLES `tblbills` WRITE;
/*!40000 ALTER TABLE `tblbills` DISABLE KEYS */;
INSERT INTO `tblbills` VALUES (1,'B','7253',47,13,611,3200,3811,'2021-11-09 11:10:29','2021-11-09 16:40:29'),(2,'B','7253',69,8,552,3200,3752,'2021-11-09 11:19:46','2021-11-09 16:49:46'),(3,'D','1469',23,11,253,6500,6753,'2021-11-11 04:56:04','2021-11-11 10:26:04');
/*!40000 ALTER TABLE `tblbills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('16122');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomplaints`
--

DROP TABLE IF EXISTS `tblcomplaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcomplaints` (
  `complaint_id` int NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(200) DEFAULT NULL,
  `complaint_description` varchar(400) DEFAULT NULL,
  `complaint_status` varchar(45) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `flat_no` varchar(45) DEFAULT NULL,
  `admin_remark` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomplaints`
--

LOCK TABLES `tblcomplaints` WRITE;
/*!40000 ALTER TABLE `tblcomplaints` DISABLE KEYS */;
INSERT INTO `tblcomplaints` VALUES (1,'Electrical','Electrical board problem.','Resolved','Kishor Balasaheb Kadam','B','7253','Electrician assigned','2021-10-20 07:16:46','2021-11-08 15:00:20'),(2,'Lift','Parking not working.','In Progress','Kishor Balasaheb Kadam','B','7253','1-2 days required to solve issue.','2021-11-08 09:50:06','2021-11-08 15:23:02'),(3,'Plumbing','Have plumbing problem in my flat, please solve as early as possible.','Pending','Kishor Balasaheb Kadam','B','7253',NULL,'2021-11-09 05:17:14','2021-11-09 10:47:14'),(4,'Gym','Gym accessories have some problem.','Resolved','Kishor Balasaheb Kadam','B','7253','Assigned gym accessories mechanical.','2021-11-10 06:54:59','2021-11-10 12:31:08'),(5,'Billing & Payment','More light unit charged. please check reading once and let me know.','In Progress','Javed Tamboli','D','1469','Please come society office, we will discuss light bill issue.','2021-11-11 05:11:09','2021-11-11 10:42:48');
/*!40000 ALTER TABLE `tblcomplaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (3,'Arun Pandit','arunpandit@gmail.com','9335648551','I want this system.','2021-10-10 13:24:42'),(4,'Sagar Prakash Kharmale','sagarkharmale@gmail.com','8456571542','Awesome system.','2021-10-10 13:25:21');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblflats`
--

DROP TABLE IF EXISTS `tblflats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblflats` (
  `flat_no` int NOT NULL,
  `floor` varchar(45) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `flat_type` varchar(100) DEFAULT NULL,
  `maintainence_charge` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblflats`
--

LOCK TABLES `tblflats` WRITE;
/*!40000 ALTER TABLE `tblflats` DISABLE KEYS */;
INSERT INTO `tblflats` VALUES (4251,'Second Floor','D','2 BHK',4499,'2021-10-17 04:54:11','2021-11-11 12:30:58'),(7253,'First Floor','B','1 BHK',3200,'2021-10-17 04:54:53','2021-11-08 10:10:01'),(7701,'Second Floor','D','Duplex',5400,'2021-10-17 09:23:10','2021-11-10 15:00:41'),(1469,'First Floor','D','5 BHK',6500,'2021-10-17 09:23:45','2021-11-10 15:02:16'),(8290,'First Floor','B','3 BHK',6000,'2021-11-10 09:25:58','2021-11-10 14:56:20');
/*!40000 ALTER TABLE `tblflats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvisitors`
--

DROP TABLE IF EXISTS `tblvisitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvisitors` (
  `visitor_id` int NOT NULL AUTO_INCREMENT,
  `visitor_name` varchar(100) DEFAULT NULL,
  `visitor_mobile` varchar(100) DEFAULT NULL,
  `visitor_address` varchar(400) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `flat_no` varchar(45) DEFAULT NULL,
  `whome_to_meet` varchar(100) DEFAULT NULL,
  `reason_to_meet` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8956 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvisitors`
--

LOCK TABLES `tblvisitors` WRITE;
/*!40000 ALTER TABLE `tblvisitors` DISABLE KEYS */;
INSERT INTO `tblvisitors` VALUES (198,'Kishor Kadam','7276763516','Wakad,Pune.','D','1469','Javed Tamboli','Personal reason.','2021-11-11 05:02:03','2021-11-11 10:32:03'),(8955,'Arun Pandit','9335648551','Kharwandi, Newasa,Ahmednagar','B','7253','Kishor Kadam','Personal issue reason.','2021-10-17 15:48:29','2021-10-20 12:55:36');
/*!40000 ALTER TABLE `tblvisitors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 17:45:49
