CREATE DATABASE  IF NOT EXISTS `college_sports` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `college_sports`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: college_sports
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `arrear`
--

DROP TABLE IF EXISTS `arrear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arrear` (
  `arrear_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `semester` varchar(30) DEFAULT NULL,
  `status` enum('pending','cleared') DEFAULT 'pending',
  PRIMARY KEY (`arrear_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `arrear_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrear`
--

LOCK TABLES `arrear` WRITE;
/*!40000 ALTER TABLE `arrear` DISABLE KEYS */;
INSERT INTO `arrear` VALUES (1,1003,'Engineering Mathematics II','3','cleared'),(2,1005,'Engineering Physics','1','cleared'),(3,1008,'Basic Civil Engineering','2','pending'),(4,1011,'Data Structures','3','pending'),(5,1015,'Fluid Mechanics','4','cleared'),(6,1019,'Thermodynamics','3','pending'),(7,1023,'Digital Electronics','2','cleared'),(8,1027,'Control Systems','5','pending'),(9,1031,'Computer Networks','4','cleared'),(10,1035,'Structural Analysis','3','pending'),(11,1038,'Operating Systems','4','pending'),(12,1042,'VLSI Design','5','cleared'),(13,1044,'Machine Design','4','pending'),(14,1047,'Embedded Systems','3','cleared'),(15,1050,'Environmental Engineering','2','pending');
/*!40000 ALTER TABLE `arrear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `percentage` int DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1001,'January',2024,92),(2,1001,'February',2024,88),(3,1001,'March',2024,90),(4,1002,'January',2024,78),(5,1002,'February',2024,82),(6,1002,'March',2024,80),(7,1003,'January',2024,85),(8,1003,'February',2024,79),(9,1003,'March',2024,83),(10,1004,'January',2024,95),(11,1004,'February',2024,93),(12,1004,'March',2024,91),(13,1005,'January',2024,70),(14,1005,'February',2024,68),(15,1005,'March',2024,72),(16,1006,'January',2024,88),(17,1006,'February',2024,90),(18,1006,'March',2024,86),(19,1007,'January',2024,82),(20,1007,'February',2024,84),(21,1007,'March',2024,81),(22,1008,'January',2024,75),(23,1008,'February',2024,73),(24,1008,'March',2024,71),(25,1009,'January',2024,91),(26,1009,'February',2024,89),(27,1009,'March',2024,93),(28,1010,'January',2024,96),(29,1010,'February',2024,94),(30,1010,'March',2024,97),(31,1011,'January',2024,65),(32,1011,'February',2024,68),(33,1011,'March',2024,63),(34,1012,'January',2024,87),(35,1012,'February',2024,85),(36,1012,'March',2024,89),(37,1013,'January',2024,90),(38,1013,'February',2024,88),(39,1013,'March',2024,92),(40,1014,'January',2024,83),(41,1014,'February',2024,81),(42,1014,'March',2024,85),(43,1015,'January',2024,77),(44,1015,'February',2024,79),(45,1015,'March',2024,76),(46,1016,'January',2024,94),(47,1016,'February',2024,92),(48,1016,'March',2024,96),(49,1017,'January',2024,86),(50,1017,'February',2024,84),(51,1017,'March',2024,88),(52,1018,'January',2024,72),(53,1018,'February',2024,74),(54,1018,'March',2024,70),(55,1019,'January',2024,80),(56,1019,'February',2024,78),(57,1019,'March',2024,82),(58,1020,'January',2024,93),(59,1020,'February',2024,91),(60,1020,'March',2024,95),(61,1021,'January',2024,69),(62,1021,'February',2024,71),(63,1021,'March',2024,67),(64,1022,'January',2024,88),(65,1022,'February',2024,90),(66,1022,'March',2024,86),(67,1023,'January',2024,84),(68,1023,'February',2024,82),(69,1023,'March',2024,86),(70,1024,'January',2024,91),(71,1024,'February',2024,89),(72,1024,'March',2024,93),(73,1025,'January',2024,76),(74,1025,'February',2024,78),(75,1025,'March',2024,74),(76,1026,'January',2024,95),(77,1026,'February',2024,93),(78,1026,'March',2024,97),(79,1027,'January',2024,81),(80,1027,'February',2024,79),(81,1027,'March',2024,83),(82,1028,'January',2024,87),(83,1028,'February',2024,85),(84,1028,'March',2024,89),(85,1029,'January',2024,92),(86,1029,'February',2024,90),(87,1029,'March',2024,94),(88,1030,'January',2024,73),(89,1030,'February',2024,75),(90,1030,'March',2024,71),(91,1031,'January',2024,85),(92,1031,'February',2024,83),(93,1031,'March',2024,87),(94,1032,'January',2024,90),(95,1032,'February',2024,88),(96,1032,'March',2024,92),(97,1033,'January',2024,96),(98,1033,'February',2024,94),(99,1033,'March',2024,98),(100,1034,'January',2024,79),(101,1034,'February',2024,81),(102,1034,'March',2024,77),(103,1035,'January',2024,68),(104,1035,'February',2024,70),(105,1035,'March',2024,66),(106,1036,'January',2024,93),(107,1036,'February',2024,91),(108,1036,'March',2024,95),(109,1037,'January',2024,84),(110,1037,'February',2024,86),(111,1037,'March',2024,82),(112,1038,'January',2024,71),(113,1038,'February',2024,69),(114,1038,'March',2024,73),(115,1039,'January',2024,89),(116,1039,'February',2024,87),(117,1039,'March',2024,91),(118,1040,'January',2024,94),(119,1040,'February',2024,92),(120,1040,'March',2024,96),(121,1041,'January',2024,76),(122,1041,'February',2024,78),(123,1041,'March',2024,74),(124,1042,'January',2024,83),(125,1042,'February',2024,81),(126,1042,'March',2024,85),(127,1043,'January',2024,88),(128,1043,'February',2024,90),(129,1043,'March',2024,86),(130,1044,'January',2024,67),(131,1044,'February',2024,65),(132,1044,'March',2024,69),(133,1045,'January',2024,92),(134,1045,'February',2024,90),(135,1045,'March',2024,94),(136,1046,'January',2024,85),(137,1046,'February',2024,87),(138,1046,'March',2024,83),(139,1047,'January',2024,80),(140,1047,'February',2024,82),(141,1047,'March',2024,78),(142,1048,'January',2024,91),(143,1048,'February',2024,89),(144,1048,'March',2024,93),(145,1049,'January',2024,74),(146,1049,'February',2024,76),(147,1049,'March',2024,72),(148,1050,'January',2024,64),(149,1050,'February',2024,62),(150,1050,'March',2024,66);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitness_status`
--

DROP TABLE IF EXISTS `fitness_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fitness_status` (
  `fitness_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `status` enum('fit','injured','recovering') DEFAULT 'fit',
  `reason` varchar(200) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`fitness_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `fitness_status_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitness_status`
--

LOCK TABLES `fitness_status` WRITE;
/*!40000 ALTER TABLE `fitness_status` DISABLE KEYS */;
INSERT INTO `fitness_status` VALUES (1,1001,'fit',NULL,'2024-03-01'),(2,1002,'fit',NULL,'2024-03-01'),(3,1003,'fit',NULL,'2024-03-01'),(4,1004,'fit',NULL,'2024-03-01'),(5,1005,'injured','Ankle sprain','2024-02-20'),(6,1006,'fit',NULL,'2024-03-01'),(7,1007,'fit',NULL,'2024-03-01'),(8,1008,'recovering','Knee strain','2024-02-25'),(9,1009,'fit',NULL,'2024-03-01'),(10,1010,'fit',NULL,'2024-03-01'),(11,1011,'fit',NULL,'2024-03-01'),(12,1012,'fit',NULL,'2024-03-01'),(13,1013,'fit',NULL,'2024-03-01'),(14,1014,'fit',NULL,'2024-03-01'),(15,1015,'fit',NULL,'2024-03-01'),(16,1016,'fit',NULL,'2024-03-01'),(17,1017,'fit',NULL,'2024-03-01'),(18,1018,'injured','Shoulder injury','2024-02-18'),(19,1019,'fit',NULL,'2024-03-01'),(20,1020,'fit',NULL,'2024-03-01'),(21,1021,'fit',NULL,'2024-03-01'),(22,1022,'fit',NULL,'2024-03-01'),(23,1023,'fit',NULL,'2024-03-01'),(24,1024,'fit',NULL,'2024-03-01'),(25,1025,'fit',NULL,'2024-03-01'),(26,1026,'fit',NULL,'2024-03-01'),(27,1027,'recovering','Wrist sprain','2024-02-22'),(28,1028,'fit',NULL,'2024-03-01'),(29,1029,'fit',NULL,'2024-03-01'),(30,1030,'injured','Back pain','2024-02-15'),(31,1031,'fit',NULL,'2024-03-01'),(32,1032,'fit',NULL,'2024-03-01'),(33,1033,'fit',NULL,'2024-03-01'),(34,1034,'fit',NULL,'2024-03-01'),(35,1035,'fit',NULL,'2024-03-01'),(36,1036,'fit',NULL,'2024-03-01'),(37,1037,'fit',NULL,'2024-03-01'),(38,1038,'fit',NULL,'2024-03-01'),(39,1039,'fit',NULL,'2024-03-01'),(40,1040,'fit',NULL,'2024-03-01'),(41,1041,'recovering','Hamstring pull','2024-02-28'),(42,1042,'fit',NULL,'2024-03-01'),(43,1043,'fit',NULL,'2024-03-01'),(44,1044,'injured','Finger fracture','2024-02-10'),(45,1045,'fit',NULL,'2024-03-01'),(46,1046,'fit',NULL,'2024-03-01'),(47,1047,'fit',NULL,'2024-03-01'),(48,1048,'fit',NULL,'2024-03-01'),(49,1049,'fit',NULL,'2024-03-01'),(50,1050,'fit',NULL,'2024-03-01');
/*!40000 ALTER TABLE `fitness_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practice`
--

DROP TABLE IF EXISTS `practice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practice` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `practice_date` date DEFAULT NULL,
  `on_time` enum('yes','no') DEFAULT NULL,
  `performance_rating` int DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `practice_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `practice_chk_1` CHECK ((`performance_rating` between 1 and 10))
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice`
--

LOCK TABLES `practice` WRITE;
/*!40000 ALTER TABLE `practice` DISABLE KEYS */;
INSERT INTO `practice` VALUES (1,1001,'2024-03-01','yes',9,'Excellent batting form'),(2,1001,'2024-03-08','yes',8,'Good consistency'),(3,1001,'2024-03-15','yes',9,'Outstanding performance'),(4,1002,'2024-03-01','yes',7,'Good setting technique'),(5,1002,'2024-03-08','no',6,'Late by 15 mins'),(6,1002,'2024-03-15','yes',8,'Improved significantly'),(7,1003,'2024-03-01','yes',8,'Strong midfield control'),(8,1003,'2024-03-08','yes',7,'Good passing'),(9,1003,'2024-03-15','no',6,'Slight drop in form'),(10,1004,'2024-03-01','yes',10,'Exceptional footwork'),(11,1004,'2024-03-08','yes',9,'Consistent smash accuracy'),(12,1004,'2024-03-15','yes',10,'Best player in session'),(13,1005,'2024-03-01','no',5,'Late and unfocused'),(14,1005,'2024-03-08','no',4,'Poor dribbling'),(15,1005,'2024-03-15','yes',6,'Some improvement'),(16,1006,'2024-03-01','yes',9,'Aggressive raiding'),(17,1006,'2024-03-08','yes',8,'Good tackle technique'),(18,1006,'2024-03-15','yes',9,'Dominant performance'),(19,1007,'2024-03-01','yes',8,'Good line and length'),(20,1007,'2024-03-08','yes',7,'Consistent bowling'),(21,1007,'2024-03-15','no',7,'Late but performed well'),(22,1008,'2024-03-01','no',5,'Late arrival'),(23,1008,'2024-03-08','yes',6,'Average performance'),(24,1008,'2024-03-15','no',5,'Inconsistent'),(25,1009,'2024-03-01','yes',9,'Excellent saves'),(26,1009,'2024-03-08','yes',8,'Good positioning'),(27,1009,'2024-03-15','yes',9,'Outstanding reflexes'),(28,1010,'2024-03-01','yes',10,'Fastest sprinter in batch'),(29,1010,'2024-03-08','yes',10,'Personal best timing'),(30,1010,'2024-03-15','yes',9,'Strong finish'),(31,1011,'2024-03-01','no',4,'Very late, poor effort'),(32,1011,'2024-03-08','no',5,'Below average'),(33,1011,'2024-03-15','no',4,'No improvement'),(34,1012,'2024-03-01','yes',8,'Good serve and volley'),(35,1012,'2024-03-08','yes',9,'Excellent baseline play'),(36,1012,'2024-03-15','yes',8,'Consistent performance'),(37,1013,'2024-03-01','yes',9,'Quick reflexes'),(38,1013,'2024-03-08','yes',8,'Good spin technique'),(39,1013,'2024-03-15','yes',9,'Dominant at the table'),(40,1014,'2024-03-01','yes',8,'Great chasing speed'),(41,1014,'2024-03-08','yes',7,'Good team coordination'),(42,1014,'2024-03-15','yes',8,'Consistent chaser'),(43,1015,'2024-03-01','no',6,'Late arrival'),(44,1015,'2024-03-08','yes',7,'Good left wing play'),(45,1015,'2024-03-15','yes',7,'Improving steadily'),(46,1016,'2024-03-01','yes',9,'Excellent all round'),(47,1016,'2024-03-08','yes',10,'Best performer today'),(48,1016,'2024-03-15','yes',9,'Strong batting and bowling'),(49,1017,'2024-03-01','yes',8,'Good defensive plays'),(50,1017,'2024-03-08','yes',7,'Solid libero skills'),(51,1017,'2024-03-15','yes',8,'Excellent digs'),(52,1018,'2024-03-01','no',5,'Late and distracted'),(53,1018,'2024-03-08','no',5,'Poor focus'),(54,1018,'2024-03-15','yes',6,'Slight improvement'),(55,1019,'2024-03-01','yes',7,'Good striker instincts'),(56,1019,'2024-03-08','yes',8,'Scored in practice match'),(57,1019,'2024-03-15','no',6,'Late arrival'),(58,1020,'2024-03-01','yes',9,'Excellent doubles coordination'),(59,1020,'2024-03-08','yes',8,'Good net play'),(60,1020,'2024-03-15','yes',9,'Strong smash technique'),(61,1021,'2024-03-01','no',5,'Frequently late'),(62,1021,'2024-03-08','yes',6,'Average shooting'),(63,1021,'2024-03-15','no',5,'Inconsistent effort'),(64,1022,'2024-03-01','yes',9,'Excellent jump distance'),(65,1022,'2024-03-08','yes',8,'Good technique'),(66,1022,'2024-03-15','yes',9,'Personal best jump'),(67,1023,'2024-03-01','yes',8,'Smooth butterfly stroke'),(68,1023,'2024-03-08','yes',7,'Good endurance'),(69,1023,'2024-03-15','yes',8,'Consistent timing'),(70,1024,'2024-03-01','yes',8,'Good doubles strategy'),(71,1024,'2024-03-08','yes',9,'Excellent net coverage'),(72,1024,'2024-03-15','yes',8,'Strong serve'),(73,1025,'2024-03-01','yes',7,'Decent doubles play'),(74,1025,'2024-03-08','no',6,'Late by 20 mins'),(75,1025,'2024-03-15','yes',7,'Good spin serves'),(76,1026,'2024-03-01','yes',10,'Fastest runner in team'),(77,1026,'2024-03-08','yes',9,'Excellent chasing'),(78,1026,'2024-03-15','yes',10,'Outstanding speed'),(79,1027,'2024-03-01','yes',7,'Good wing play'),(80,1027,'2024-03-08','no',6,'Late arrival'),(81,1027,'2024-03-15','yes',7,'Improving'),(82,1028,'2024-03-01','yes',8,'Good setting accuracy'),(83,1028,'2024-03-08','yes',7,'Consistent throws'),(84,1028,'2024-03-15','yes',8,'Strong arm'),(85,1029,'2024-03-01','yes',9,'Excellent keeping'),(86,1029,'2024-03-08','yes',8,'Good stumping'),(87,1029,'2024-03-15','yes',9,'No missed catches'),(88,1030,'2024-03-01','no',5,'Late and low energy'),(89,1030,'2024-03-08','yes',6,'Average defending'),(90,1030,'2024-03-15','no',5,'Inconsistent'),(91,1031,'2024-03-01','yes',8,'Strong outside hitting'),(92,1031,'2024-03-08','yes',7,'Good attack'),(93,1031,'2024-03-15','yes',8,'Consistent performer'),(94,1032,'2024-03-01','yes',9,'Aggressive style'),(95,1032,'2024-03-08','yes',8,'Continous winning streak'),(96,1032,'2024-03-15','yes',9,'Dominance'),(97,1033,'2024-03-01','yes',10,'Unbeaten in practice'),(98,1033,'2024-03-08','yes',9,'Exceptional court coverage'),(99,1033,'2024-03-15','yes',10,'Best badminton player'),(100,1034,'2024-03-01','yes',8,'Strong center play'),(101,1034,'2024-03-08','yes',7,'Good rebounds'),(102,1034,'2024-03-15','yes',8,'Solid performance'),(103,1035,'2024-03-01','no',4,'Late and poor form'),(104,1035,'2024-03-08','no',5,'Below average jump'),(105,1035,'2024-03-15','no',4,'No improvement'),(106,1036,'2024-03-01','yes',9,'Excellent backstroke'),(107,1036,'2024-03-08','yes',8,'Good turns'),(108,1036,'2024-03-15','yes',9,'Fast lap times'),(109,1037,'2024-03-01','yes',8,'Good swing bowling'),(110,1037,'2024-03-08','yes',7,'Consistent pace'),(111,1037,'2024-03-15','yes',8,'Good yorkers'),(112,1038,'2024-03-01','no',5,'Late, poor passing'),(113,1038,'2024-03-08','no',4,'Very poor effort'),(114,1038,'2024-03-15','yes',6,'Some improvement'),(115,1039,'2024-03-01','yes',8,'Good blocking'),(116,1039,'2024-03-08','yes',9,'Excellent middle play'),(117,1039,'2024-03-15','yes',8,'Strong jumps'),(118,1040,'2024-03-01','yes',9,'Good defensive tackles'),(119,1040,'2024-03-08','yes',8,'Strong holding'),(120,1040,'2024-03-15','yes',9,'Dominant defender'),(121,1041,'2024-03-01','yes',7,'Good baseline rallies'),(122,1041,'2024-03-08','no',6,'Late by 10 mins'),(123,1041,'2024-03-15','yes',7,'Consistent play'),(124,1042,'2024-03-01','yes',8,'Good forehand attack'),(125,1042,'2024-03-08','yes',9,'Excellent spin control'),(126,1042,'2024-03-15','yes',8,'Strong performance'),(127,1043,'2024-03-01','yes',8,'Quick chasing'),(128,1043,'2024-03-08','yes',7,'Good team play'),(129,1043,'2024-03-15','yes',8,'Consistent chaser'),(130,1044,'2024-03-01','no',4,'Late and weak throws'),(131,1044,'2024-03-08','no',5,'Poor goal keeping'),(132,1044,'2024-03-15','no',4,'No improvement seen'),(133,1045,'2024-03-01','yes',9,'Strong defensive throws'),(134,1045,'2024-03-08','yes',8,'Good team coordination'),(135,1045,'2024-03-15','yes',9,'Excellent throwball skills'),(136,1046,'2024-03-01','yes',9,'Powerful hitting'),(137,1046,'2024-03-08','yes',8,'Good shot selection'),(138,1046,'2024-03-15','yes',9,'Consistent batsman'),(139,1047,'2024-03-01','yes',8,'Good dribbling'),(140,1047,'2024-03-08','yes',7,'Decent striker'),(141,1047,'2024-03-15','no',6,'Late arrival'),(142,1048,'2024-03-01','yes',8,'Strong forward play'),(143,1048,'2024-03-08','yes',9,'Excellent rebounds'),(144,1048,'2024-03-15','yes',8,'Dominant power forward'),(145,1049,'2024-03-01','yes',7,'Good shot put form'),(146,1049,'2024-03-08','no',6,'Late by 10 mins'),(147,1049,'2024-03-15','yes',7,'Decent throw distance'),(148,1050,'2024-03-01','no',4,'Late and slow'),(149,1050,'2024-03-08','no',5,'Poor endurance'),(150,1050,'2024-03-15','no',4,'Needs significant improvement');
/*!40000 ALTER TABLE `practice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selections`
--

DROP TABLE IF EXISTS `selections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `selections` (
  `selection_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `tournament_id` int DEFAULT NULL,
  `played` enum('yes','no','bench') DEFAULT 'no',
  PRIMARY KEY (`selection_id`),
  KEY `student_id` (`student_id`),
  KEY `tournament_id` (`tournament_id`),
  CONSTRAINT `selections_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `selections_ibfk_2` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selections`
--

LOCK TABLES `selections` WRITE;
/*!40000 ALTER TABLE `selections` DISABLE KEYS */;
INSERT INTO `selections` VALUES (1,1001,1,'yes'),(2,1016,1,'yes'),(3,1029,1,'yes'),(4,1037,1,'bench'),(5,1046,1,'yes'),(6,1003,2,'yes'),(7,1009,2,'yes'),(8,1019,2,'yes'),(9,1030,2,'bench'),(10,1047,2,'yes'),(11,1006,3,'yes'),(12,1018,3,'no'),(13,1032,3,'yes'),(14,1040,3,'yes'),(15,1002,4,'yes'),(16,1017,4,'yes'),(17,1031,4,'yes'),(18,1039,4,'bench'),(19,1004,5,'yes'),(20,1020,5,'yes'),(21,1033,5,'yes'),(22,1005,6,'no'),(23,1021,6,'bench'),(24,1034,6,'yes'),(25,1048,6,'yes'),(26,1010,7,'yes'),(27,1022,7,'yes'),(28,1035,7,'bench'),(29,1049,7,'yes'),(30,1011,8,'no'),(31,1023,8,'yes'),(32,1036,8,'yes'),(33,1050,8,'bench');
/*!40000 ALTER TABLE `selections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports_team`
--

DROP TABLE IF EXISTS `sports_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports_team` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `sports_name` varchar(50) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `sports_team_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports_team`
--

LOCK TABLES `sports_team` WRITE;
/*!40000 ALTER TABLE `sports_team` DISABLE KEYS */;
INSERT INTO `sports_team` VALUES (1,1001,'Cricket','Batsman'),(2,1002,'Volleyball','Setter'),(3,1003,'Football','Midfielder'),(4,1004,'Badminton','Singles Player'),(5,1005,'Basketball','Point Guard'),(6,1006,'Kabaddi','Raider'),(7,1007,'Cricket','Bowler'),(8,1008,'Throwball','Defender'),(9,1009,'Football','Goalkeeper'),(10,1010,'Athletics','Sprinter'),(11,1011,'Swimming','Freestyle'),(12,1012,'Tennis','Singles Player'),(13,1013,'Table Tennis','Singles Player'),(14,1014,'Khokho','Chaser'),(15,1015,'Handball','Left Wing'),(16,1016,'Cricket','All Rounder'),(17,1017,'Volleyball','Libero'),(18,1018,'Kabaddi','Defender'),(19,1019,'Football','Striker'),(20,1020,'Badminton','Doubles Player'),(21,1021,'Basketball','Shooting Guard'),(22,1022,'Athletics','Long Jump'),(23,1023,'Swimming','Butterfly'),(24,1024,'Tennis','Doubles Player'),(25,1025,'Table Tennis','Doubles Player'),(26,1026,'Khokho','Runner'),(27,1027,'Handball','Right Wing'),(28,1028,'Throwball','Setter'),(29,1029,'Cricket','Wicket Keeper'),(30,1030,'Football','Defender'),(31,1031,'Volleyball','Outside Hitter'),(32,1032,'Badminton','Singles Player'),(33,1033,'Badminton','Singles Player'),(34,1034,'Basketball','Center'),(35,1035,'Athletics','High Jump'),(36,1036,'Swimming','Backstroke'),(37,1037,'Cricket','Bowler'),(38,1038,'Football','Midfielder'),(39,1039,'Volleyball','Middle Blocker'),(40,1040,'Kabaddi','Defender'),(41,1041,'Tennis','Singles Player'),(42,1042,'Table Tennis','Singles Player'),(43,1043,'Khokho','Chaser'),(44,1044,'Handball','Goalkeeper'),(45,1045,'Throwball','Defender'),(46,1046,'Cricket','Batsman'),(47,1047,'Football','Striker'),(48,1048,'Basketball','Power Forward'),(49,1049,'Athletics','Shot Put'),(50,1050,'Swimming','Freestyle');
/*!40000 ALTER TABLE `sports_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `semester` int NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1001,'Arjun Krishnamurthy','CSE','2022','B.E',5,'9876543210','arjun.k@svce.ac.in','2022-08-01'),(1002,'Deepika Rajendran','ECE','2023','B.E',3,'9876543211','deepika.r@svce.ac.in','2023-08-01'),(1003,'Manoj Selvam','MECH','2021','B.E',7,'9876543212','manoj.s@svce.ac.in','2021-08-01'),(1004,'Priya Subramaniam','IT','2022','B.E',5,'9876543213','priya.sub@svce.ac.in','2022-08-01'),(1005,'Karthik Venkatesh','CIVIL','2023','B.E',3,'9876543214','karthik.v@svce.ac.in','2023-08-01'),(1006,'Anitha Murugan','CSE','2021','B.E',7,'9876543215','anitha.m@svce.ac.in','2021-08-01'),(1007,'Surya Prakash','ECE','2022','B.E',5,'9876543216','surya.p@svce.ac.in','2022-08-01'),(1008,'Lavanya Chandrasekaran','IT','2023','B.E',3,'9876543217','lavanya.c@svce.ac.in','2023-08-01'),(1009,'Vikram Anand','MECH','2022','B.E',5,'9876543218','vikram.a@svce.ac.in','2022-08-01'),(1010,'Nithya Devi','CIVIL','2021','B.E',7,'9876543219','nithya.d@svce.ac.in','2021-08-01'),(1011,'Rahul Ganesh','CSE','2023','B.E',3,'9876543220','rahul.g@svce.ac.in','2023-08-01'),(1012,'Sowmiya Rajan','ECE','2022','B.E',5,'9876543221','sowmiya.r@svce.ac.in','2022-08-01'),(1013,'Arun Kumar','MECH','2021','B.E',7,'9876543222','arun.k@svce.ac.in','2021-08-01'),(1014,'Keerthana Vijay','IT','2022','B.E',5,'9876543223','keerthana.v@svce.ac.in','2022-08-01'),(1015,'Dinesh Babu','CIVIL','2023','B.E',3,'9876543224','dinesh.b@svce.ac.in','2023-08-01'),(1016,'Pavithra Natarajan','CSE','2021','B.E',7,'9876543225','pavithra.n@svce.ac.in','2021-08-01'),(1017,'Sathish Kumar','ECE','2022','B.E',5,'9876543226','sathish.k@svce.ac.in','2022-08-01'),(1018,'Meena Lakshmi','IT','2023','B.E',3,'9876543227','meena.l@svce.ac.in','2023-08-01'),(1019,'Balachandar R','MECH','2022','B.E',5,'9876543228','balachandar.r@svce.ac.in','2022-08-01'),(1020,'Divya Bharathi','CIVIL','2021','B.E',7,'9876543229','divya.b@svce.ac.in','2021-08-01'),(1021,'Ganesh Prabhu','CSE','2023','B.E',3,'9876543230','ganesh.p@svce.ac.in','2023-08-01'),(1022,'Harini Srinivasan','ECE','2022','B.E',5,'9876543231','harini.s@svce.ac.in','2022-08-01'),(1023,'Imran Khan','IT','2021','B.E',7,'9876543232','imran.k@svce.ac.in','2021-08-01'),(1024,'Jayalakshmi T','MECH','2022','B.E',5,'9876543233','jayalakshmi.t@svce.ac.in','2022-08-01'),(1025,'Kavinesh Arumugam','CIVIL','2023','B.E',3,'9876543234','kavinesh.a@svce.ac.in','2023-08-01'),(1026,'Logeshwari M','CSE','2021','B.E',7,'9876543235','logeshwari.m@svce.ac.in','2021-08-01'),(1027,'Muthu Selvam','ECE','2022','B.E',5,'9876543236','muthu.s@svce.ac.in','2022-08-01'),(1028,'Nandhini Prakash','IT','2023','B.E',3,'9876543237','nandhini.p@svce.ac.in','2023-08-01'),(1029,'Oviya Rajesh','MECH','2022','B.E',5,'9876543238','oviya.r@svce.ac.in','2022-08-01'),(1030,'Praveen Shankar','CIVIL','2021','B.E',7,'9876543239','praveen.s@svce.ac.in','2021-08-01'),(1031,'Rajalakshmi G','CSE','2023','B.E',3,'9876543240','rajalakshmi.g@svce.ac.in','2023-08-01'),(1032,'Deepesh A','CSE','2022','B.E',5,'9876543241','deepesh.a@svce.ac.in','2022-08-01'),(1033,'Tamilarasi K','IT','2021','B.E',7,'9876543242','tamilarasi.k@svce.ac.in','2021-08-01'),(1034,'Udhayakumar P','MECH','2022','B.E',5,'9876543243','udhaya.p@svce.ac.in','2022-08-01'),(1035,'Vanitha Moorthy','CIVIL','2023','B.E',3,'9876543244','vanitha.m@svce.ac.in','2023-08-01'),(1036,'Winson Raj','CSE','2021','B.E',7,'9876543245','winson.r@svce.ac.in','2021-08-01'),(1037,'Yazhini Durai','ECE','2022','B.E',5,'9876543246','yazhini.d@svce.ac.in','2022-08-01'),(1038,'Zubair Ahmed','IT','2023','B.E',3,'9876543247','zubair.a@svce.ac.in','2023-08-01'),(1039,'Aakash Sundar','MECH','2022','B.E',5,'9876543248','aakash.s@svce.ac.in','2022-08-01'),(1040,'Bhuvana Ravi','CIVIL','2021','B.E',7,'9876543249','bhuvana.r@svce.ac.in','2021-08-01'),(1041,'Chithra Mohan','CSE','2023','B.E',3,'9876543250','chithra.m@svce.ac.in','2023-08-01'),(1042,'Dharani Vel','ECE','2022','B.E',5,'9876543251','dharani.v@svce.ac.in','2022-08-01'),(1043,'Ezhilan Saravanan','IT','2021','B.E',7,'9876543252','ezhilan.s@svce.ac.in','2021-08-01'),(1044,'Fathima Begum','MECH','2022','B.E',5,'9876543253','fathima.b@svce.ac.in','2022-08-01'),(1045,'Gokulraj M','CIVIL','2023','B.E',3,'9876543254','gokulraj.m@svce.ac.in','2023-08-01'),(1046,'Hemamalini R','CSE','2021','B.E',7,'9876543255','hema.r@svce.ac.in','2021-08-01'),(1047,'Ilavarasan T','ECE','2022','B.E',5,'9876543256','ilavar.t@svce.ac.in','2022-08-01'),(1048,'Janani Kumari','IT','2023','B.E',3,'9876543257','janani.k@svce.ac.in','2023-08-01'),(1049,'Kabilesh Rajan','MECH','2022','B.E',5,'9876543258','kabilesh.r@svce.ac.in','2022-08-01'),(1050,'Lavanya Suresh','CIVIL','2021','B.E',7,'9876543259','lavanya.sur@svce.ac.in','2021-08-01');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournament` (
  `tournament_id` int NOT NULL AUTO_INCREMENT,
  `tournament_name` varchar(100) DEFAULT NULL,
  `sport_name` varchar(50) DEFAULT NULL,
  `tournament_date` date NOT NULL,
  `max_players` int DEFAULT NULL,
  PRIMARY KEY (`tournament_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,'Anna University Zonal Meet 2024','Cricket','2024-04-10',NULL),(2,'Chennai District Football League','Football','2024-04-15',NULL),(3,'SVCE Invitational Kabaddi Cup','Kabaddi','2024-04-20',NULL),(4,'South Zone Volleyball Championship','Volleyball','2024-04-25',NULL),(5,'Tamil Nadu State Badminton Meet','Badminton','2024-05-01',NULL),(6,'Inter College Basketball Trophy','Basketball','2024-05-05',NULL),(7,'State Athletics Championship','Athletics','2024-05-10',NULL),(8,'South India Swimming Meet','Swimming','2024-05-15',NULL);
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-24  2:04:14
