-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinetendersystem
-- ------------------------------------------------------
-- Server version	8.0.21

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

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `admin_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','admin','admin@gmail.com','2020-10-18 13:58:18','2020-10-19 15:13:10');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbidder`
--

DROP TABLE IF EXISTS `tblbidder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbidder` (
  `bid` varchar(45) NOT NULL,
  `vid` varchar(45) DEFAULT NULL,
  `tid` varchar(45) DEFAULT NULL,
  `bidamount` int DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `bid_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bid_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbidder`
--

LOCK TABLES `tblbidder` WRITE;
/*!40000 ALTER TABLE `tblbidder` DISABLE KEYS */;
INSERT INTO `tblbidder` VALUES ('B20201103045607','V20201010051058','T20190725022124',120000,'2019-07-19','Accepted','2020-11-03 11:26:07','2020-11-03 11:27:27'),('B20201103045645','V20201010051058','T20190725022124',110000,'2019-07-19','Rejected','2020-11-03 11:26:45','2020-11-03 11:27:32'),('B20201103051011','V20201010051058','T20201020094530',1550000,'2020-10-31','Accepted','2020-11-03 11:40:11','2020-11-03 11:40:50'),('B20201103051227','V20201010051058','T20190725022601',5000025,'2019-07-28','Accepted','2020-11-03 11:42:27','2020-11-03 11:43:11'),('B20201103053232','V20201010051058','T20190725022416',5000,'2019-09-14','Accepted','2020-11-03 12:02:32','2020-11-03 12:30:25'),('B20201103054211','V20201010051058','T20190725022416',5000,'2019-09-14','Accepted','2020-11-03 12:12:11','2020-11-03 12:30:28'),('B20201103055938','V20201010051058','T20190725022416',200000,'2019-09-14','Accepted','2020-11-03 12:29:38','2020-11-03 12:30:27'),('B20201103071644','V20201010051058','T20190725101322',150001,'2019-07-19','Rejected','2020-11-03 13:46:44','2020-11-03 13:47:13');
/*!40000 ALTER TABLE `tblbidder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL,
  `captcha_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `captcha_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('10403','2020-10-18 13:59:37','2020-11-03 13:45:39');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontact` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (1,'Kishor Kadam','kadamk33@gmail.com','Awesome tender website.');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnotice`
--

DROP TABLE IF EXISTS `tblnotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblnotice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `info` varchar(300) DEFAULT NULL,
  `notice_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `notice_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotice`
--

LOCK TABLES `tblnotice` WRITE;
/*!40000 ALTER TABLE `tblnotice` DISABLE KEYS */;
INSERT INTO `tblnotice` VALUES (6,'Kalyan Highway Flyover.','Project will start on 21st-January-2021.','2020-10-19 13:22:22','2020-10-19 13:44:18'),(7,'Gandhi Setu Construction','Construction is going to be started December 2020.','2020-10-19 13:30:11','2020-10-19 13:45:54');
/*!40000 ALTER TABLE `tblnotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltender`
--

DROP TABLE IF EXISTS `tbltender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltender` (
  `tid` varchar(45) NOT NULL,
  `tname` varchar(100) DEFAULT NULL,
  `ttype` varchar(45) DEFAULT NULL,
  `tprice` int DEFAULT NULL,
  `tdesc` varchar(300) DEFAULT NULL,
  `tdeadline` date DEFAULT NULL,
  `tloc` varchar(70) DEFAULT NULL,
  `tender_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tender_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltender`
--

LOCK TABLES `tbltender` WRITE;
/*!40000 ALTER TABLE `tbltender` DISABLE KEYS */;
INSERT INTO `tbltender` VALUES ('T20190725022124','Gandhi Setu Highway','maintainence',50000,'lkjhgfd','2019-07-19','Patna, Bihar','2020-10-18 14:06:41','2020-10-18 14:06:41'),('T20190725022416','MEGA CITY CONNECTING ROAD CONTRUCTION','construction',100000,'mega city road contruction','2019-09-14','Delhi','2020-10-18 14:06:41','2020-10-18 14:06:41'),('T20190725022601','KOKATA HALDIA BRIDGE CONTRUCTION','construction',5000000,'bridge contruction from kolkata to haldia','2019-07-28','KOLATA-HALDIA','2020-10-18 14:06:41','2020-10-18 14:06:41'),('T20190725101239','Game Development','software',150000,'We are going to start a project on game development using GPS specification. Interested condidates are required to bid as soon as possible','2019-07-19','Banglore, India','2020-10-18 14:06:41','2020-10-18 14:06:41'),('T20190725101322','Game Development','software',150000,'We are going to start a project on game development using GPS specification. Interested condidates are required to bid as soon as possible','2019-07-19','Banglore, India','2020-10-18 14:06:41','2020-10-18 14:06:41'),('T20201020094530','Java Development','Software',1450000,'Banking regarding web based application.','2020-10-31','Ahmednagar','2020-10-20 04:15:30','2020-10-20 04:15:30');
/*!40000 ALTER TABLE `tbltender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltenderstatus`
--

DROP TABLE IF EXISTS `tbltenderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltenderstatus` (
  `tid` varchar(45) NOT NULL,
  `bid` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `vid` varchar(45) DEFAULT NULL,
  `tstatus_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tstatus_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltenderstatus`
--

LOCK TABLES `tbltenderstatus` WRITE;
/*!40000 ALTER TABLE `tbltenderstatus` DISABLE KEYS */;
INSERT INTO `tbltenderstatus` VALUES ('T20190725022124','B20201103045607','Assigned','V20201010051058','2020-11-03 11:27:27','2020-11-03 11:27:27'),('T20190725022416','B20201103053232','Assigned','V20201010051058','2020-11-03 12:30:25','2020-11-03 12:30:25'),('T20190725022601','B20201103051227','Assigned','V20201010051058','2020-11-03 11:43:11','2020-11-03 11:43:11'),('T20201020094530','B20201103051011','Assigned','V20201010051058','2020-11-03 11:40:50','2020-11-03 11:40:50');
/*!40000 ALTER TABLE `tbltenderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvendor`
--

DROP TABLE IF EXISTS `tblvendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvendor` (
  `vid` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `vname` varchar(100) DEFAULT NULL,
  `vmob` varchar(100) DEFAULT NULL,
  `vemail` varchar(100) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `vendor_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `vendor_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvendor`
--

LOCK TABLES `tblvendor` WRITE;
/*!40000 ALTER TABLE `tblvendor` DISABLE KEYS */;
INSERT INTO `tblvendor` VALUES ('V20190725100730','shashi','Shashi Raj','9547462319','shashi@gmail.com','Wipro','Jain , Colony Belhariya More, Tekari, Gaya, (Bihar) ','2020-10-18 14:03:07','2020-10-18 14:03:07'),('V20201010051058','java@1991','Kishor Kadam','7276763516','kadamk33@gmail.com','Cyborg System Nebula Studios','Bhalawani, Ahmednagar, Maharashtra.','2020-10-18 14:03:07','2020-10-19 07:16:52'),('V20201019093457','java@123','Javed Tamboli','8369651475','javed.tamboli@gmail.com','Apostal Infotech Pvt Ltd','java@123','2020-10-19 04:04:58','2020-10-19 04:04:58'),('V20201019093722','mayur@12345','Mayur Mahale','8869351425','mayurmahale12@gmail.com','Sunsoft Technology','New Sangavi, Pune','2020-10-19 04:07:22','2020-10-19 04:07:22'),('V20201103073214','raju@123','Raju Kadam','9404308607','rajukadam@yahoomail.com','Paras Engineering Ltd, Ahmednagar','Bhalawani, Ahmednagar','2020-11-03 14:02:15','2020-11-03 14:02:15'),('V20201103073611','arun@123','Arun Pandit','9335648551','arunpandit@gmail.com','Kukut Palan','Kharwandi, Newasa,Ahmednagar','2020-11-03 14:06:11','2020-11-03 14:06:11'),('V20201103074049','govind@123','Govind Raut','9858563214','govindraut780@yahoomail.com','Nihalant Software,Pune','Gevrai, Beed.','2020-11-03 14:10:49','2020-11-03 14:10:49'),('V20201103074458','kalu@123','Sagar Kharmale','8456571542','sagarkharmale@gmail.com','Sahyadri Milk Agro','Bhandgaon, Ahmednagar','2020-11-03 14:14:58','2020-11-03 14:14:58'),('V20201103074909','arun@000','Arvind Kadam','8969352147','arvindkadam89@gmail.com','Yash Furniture Services','Belwandi, Srigonda, Ahmednagar','2020-11-03 14:19:09','2020-11-03 14:19:09'),('V20201103075231','gaurav@123','Gaurav Wakchaure','8825471235','gauravwakchaure@gmail.com','Apostal Infotech Pvt Ltd','Dattawadi, Pune.','2020-11-03 14:22:31','2020-11-03 14:22:31');
/*!40000 ALTER TABLE `tblvendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-29 12:01:44
