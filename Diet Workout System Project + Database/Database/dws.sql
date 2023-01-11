-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: dws
-- ------------------------------------------------------
-- Server version	8.0.23
CREATE DATABASE dws;
use dws;
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
-- Table structure for table `askquestions`
--

DROP TABLE IF EXISTS `askquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `askquestions` (
  `qid` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  `answer` varchar(600) DEFAULT NULL,
  `did` int DEFAULT NULL,
  `mid` int DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=8867 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `askquestions`
--

LOCK TABLES `askquestions` WRITE;
/*!40000 ALTER TABLE `askquestions` DISABLE KEYS */;
INSERT INTO `askquestions` VALUES (1728,'What I do for gain muscles strong?','1) Eat Breakfast to help build Muscle Mass.\r\n2) Eat every three hours.\r\n3) Eat Protein with Each Meal to Boost Your Muscle Mass.',9389,6116,'kishor','Resolved','2022-04-08 06:15:11','2022-04-08 11:46:40'),(3681,'How to calculate my BMI?','Body Mass Index is a simple calculation using a persons height and weight.',4606,6116,'kishor','Resolved','2022-04-08 06:15:26','2022-04-08 12:04:58'),(8866,'How to loose body fat?','Eat healthy food as well as walk 6 to 8 km daily early morning.',9389,6116,'kishor','Resolved','2022-04-09 12:59:46','2022-04-09 19:05:10');
/*!40000 ALTER TABLE `askquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','java@1991','admin@gmail.com','2021-01-06 00:34:45');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
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
INSERT INTO `tblcaptcha` VALUES ('10369');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (3,'Kishor Balasaheb Kadam','kadamk33@gmail.com','+917276763516','Awesome diet workout web based portal.','2022-04-06 05:08:02');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldietitian`
--

DROP TABLE IF EXISTS `tbldietitian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldietitian` (
  `did` int NOT NULL,
  `dname` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `joining_date` varchar(100) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `upass` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `about_us` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldietitian`
--

LOCK TABLES `tbldietitian` WRITE;
/*!40000 ALTER TABLE `tbldietitian` DISABLE KEYS */;
INSERT INTO `tbldietitian` VALUES (4429,'Amol Patil','8748576548','amolpatil1990@gmail.com','Wakad, Pune.','2022-04-05','amol','amol@123',1,'Trainers have the ability to believe in you even when you are feeling at your lowest and dont believe in yourself. My training charges is reasonable.','2022-04-08 03:27:37','2022-04-09 19:10:01'),(4606,'Javed Tamboli','8369651475','javed.tamboli@gmail.com','Charoli,Pune','2022-04-04','javed','javed@123',1,'I am a fitness trainer, I have 7 Years fitness experience','2022-04-06 09:16:15','2022-04-08 08:51:31'),(9389,'Arun Shivaji Pandit','9335648552','arunpandit89@gmail.com','Kharwandi, Ahmednagar, Maharashtra.','2022-04-07','arun','arun@123',1,'I have 6 years of experience and worked as dietitian in some university.','2022-04-06 14:44:44','2022-04-09 19:05:59');
/*!40000 ALTER TABLE `tbldietitian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldietplan`
--

DROP TABLE IF EXISTS `tbldietplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldietplan` (
  `dpid` int NOT NULL AUTO_INCREMENT,
  `morning` varchar(500) DEFAULT NULL,
  `afternoon` varchar(500) DEFAULT NULL,
  `evening` varchar(500) DEFAULT NULL,
  `night` varchar(500) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `dos` varchar(500) DEFAULT NULL,
  `dont` varchar(500) DEFAULT NULL,
  `diet_plan_type` varchar(45) DEFAULT NULL,
  `trainer_name` varchar(100) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dpid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldietplan`
--

LOCK TABLES `tbldietplan` WRITE;
/*!40000 ALTER TABLE `tbldietplan` DISABLE KEYS */;
INSERT INTO `tbldietplan` VALUES (1,'After workout protein shake, In breakfast time eat sprouts','full meal with salad','sprouts bowl and salad.','health shakee','Keep sleep time daily samee.','Eat lot of salad, do workout, drink protein shake at a morning and night.','Do not drink tea, soft drinks, avoid sugar, dont eat rice, junk food.','Weight Gain','Arun Shivaji Pandit','arun','Sanket Kadam','2022-04-09 05:01:50','2022-04-09 18:57:15'),(2,'dry fruits','full meal','dry fruitss','full meal','workout','something','anything','Weight Gain','Arun Shivaji Pandit','arun','Kishor Balasaheb Kadam','2022-04-09 07:08:51','2022-04-09 18:58:22');
/*!40000 ALTER TABLE `tbldietplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfeedback`
--

DROP TABLE IF EXISTS `tblfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfeedback` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `mid` int DEFAULT NULL,
  `did` int DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `feedback` varchar(400) DEFAULT NULL,
  `ratings` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfeedback`
--

LOCK TABLES `tblfeedback` WRITE;
/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
INSERT INTO `tblfeedback` VALUES (1,6116,9389,'kishor','Its an awesome service.',2.4,'2022-04-07 14:57:55','2022-04-07 20:27:55'),(2,4363,4606,'sagar','Good nature as well as good support.',4.5,'2022-04-07 15:35:27','2022-04-07 21:05:27'),(3,6116,9389,'kishor','Awesome dietitian, I got proper result.',3.5,'2022-04-09 13:02:58','2022-04-09 18:32:58');
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmembers`
--

DROP TABLE IF EXISTS `tblmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmembers` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `member_name` varchar(200) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `bmi` double DEFAULT NULL,
  `joining_date` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `trainer_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=6543 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmembers`
--

LOCK TABLES `tblmembers` WRITE;
/*!40000 ALTER TABLE `tblmembers` DISABLE KEYS */;
INSERT INTO `tblmembers` VALUES (4363,'Sagar Kharmale','Male',33,'Malwadi,Pune.','sagarkharmale@gmail.com','8456571542',179,87,155.73,'2022-04-05','sagar','sagar@123','Javed Tamboli','2022-04-06 10:36:29','2022-04-07 12:18:18'),(5929,'Sanket Kadam','Male',19,'Bhalawani, Ahmednagar, Maharashtra','sanketkadam54@gmail.com','9863254175',167,55,19.721036967980208,'2022-04-07','sanket','sanket@123','Arun Shivaji Pandit','2022-04-08 04:14:36','2022-04-08 09:44:36'),(6116,'Kishor Balasaheb Kadam','Male',30,'Pune, Maharashtra.','kadamk333@gmail.com','7276763516',185,77,22.498173849525198,'2022-04-06','kishor','java@1991','Arun Shivaji Pandit','2022-04-06 10:35:03','2022-04-09 12:33:37'),(6542,'Govind Raut','Male',31,'Gevrai, Beed','govindraut780@yahoomail.com','8866889977',182,75,136.5,'2022-04-07','govind','govind@123','Javed Tamboli','2022-04-07 06:40:39','2022-04-07 12:10:39');
/*!40000 ALTER TABLE `tblmembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpayment`
--

DROP TABLE IF EXISTS `tblpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpayment` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `payment` varchar(200) DEFAULT NULL,
  `card_holder_name` varchar(100) DEFAULT NULL,
  `debit_card_number` varchar(200) DEFAULT NULL,
  `expiration_month_year` varchar(200) DEFAULT NULL,
  `cvv` int DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpayment`
--

LOCK TABLES `tblpayment` WRITE;
/*!40000 ALTER TABLE `tblpayment` DISABLE KEYS */;
INSERT INTO `tblpayment` VALUES (1,'Monthly 1000 Rs','Kishor Kadam','589669635412','November 2024',444,'Kishor Balasaheb Kadam','Payment Done','2022-04-09 13:11:15','2022-04-09 18:41:15');
/*!40000 ALTER TABLE `tblpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblworkout`
--

DROP TABLE IF EXISTS `tblworkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblworkout` (
  `wid` int NOT NULL AUTO_INCREMENT,
  `morning` varchar(500) DEFAULT NULL,
  `evening` varchar(500) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `trainer_name` varchar(100) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblworkout`
--

LOCK TABLES `tblworkout` WRITE;
/*!40000 ALTER TABLE `tblworkout` DISABLE KEYS */;
INSERT INTO `tblworkout` VALUES (1,'Cross Fitt','Yoga','Test','Arun Shivaji Pandit','arun','Sanket Kadam','2022-04-09 05:55:38','2022-04-09 18:59:44'),(2,'yoga','yoga','yoga','Arun Shivaji Pandit','arun','Kishor Balasaheb Kadam','2022-04-09 07:09:17','2022-04-09 12:39:17');
/*!40000 ALTER TABLE `tblworkout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-15 15:03:09
