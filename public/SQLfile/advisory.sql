CREATE DATABASE  IF NOT EXISTS `advisory` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `advisory`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: advisory
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.11-MariaDB

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `Contact_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Client_Name` varchar(45) NOT NULL,
  `Client_Mail` varchar(45) NOT NULL,
  `Subject` varchar(45) NOT NULL,
  `Message` varchar(45) NOT NULL,
  PRIMARY KEY (`Contact_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'s','','',''),(2,'sundefined','','',''),(3,'undefined','','',''),(4,'undefined','','',''),(5,'undefined','','',''),(6,'undefined','','',''),(7,'undefined','','',''),(8,'undefined','','',''),(9,'undefined','','',''),(10,'undefined','','',''),(11,'undefined','','',''),(12,'undefined','','',''),(13,'undefined','','',''),(14,'undefined','','',''),(15,'undefined','','',''),(16,'undefined','','',''),(17,'undefined','','',''),(18,'undefined','','',''),(19,'undefined','','',''),(20,'undefined','','',''),(21,'undefined','','',''),(22,'undefined','','',''),(23,'undefined','','',''),(24,'alaska','','',''),(25,'xaaxa','','',''),(26,'sz','','',''),(27,'zzxxx','','',''),(28,'zzxxx','','',''),(29,'zzxxx111','','',''),(30,'ss','','',''),(31,'ss','ss@dd.com','ss','sssssss'),(32,'ab','ss@dd.com','aa','xxxxx'),(33,'ab','ss@dd.com','aa','xxxxx'),(34,'ab','ss@dd.com','ss','ss'),(35,'ss','ss@dd.com','s','ssssssssss'),(36,'Mustafa Barış Ege','m.barisege@gmail.com','s','aaaaaaaaax'),(37,'ss','ss@dd.com','s','aa'),(38,'Mustafa Barış Ege','m.barisege@gmail.com','ss','aaas'),(39,'ss','ss@dd.com','s','ssssss'),(40,'ss','ss@dd.com','s','ssssss'),(41,'ss','ss@dd.com','ss','s'),(42,'ss','ss@dd.com','s','ssssss'),(43,'ss','ss@dd.com','ss','s'),(44,'ss','ss@dd.com','ss','s'),(45,'ssssss','ss@dd.com','s','aa'),(46,'Mustafa Barış Ege','m.barisege@gmail.com','aa','moininjo'),(47,'oino',' hkbiyu','ssssss','kbju'),(48,'oino',' hkbiyu','ssssss','kbju'),(49,'oino',' hkbiyu','ssssss','kbju'),(50,'ssssssssss','ss@dd.com','sss','s'),(51,'jo','ss@dd.com','aa','njh'),(52,'jo','ss@dd.com','aa','njh'),(53,'Mustafa Barış Ege','m.barisege@gmail.com','sss','ssssssss'),(54,'ss','ss@dd.com','s',''),(55,'ss','ss@dd.com','ss','ssssss'),(56,'Mustafa Barış Ege','m.barisege@gmail.com','sss','zzz'),(57,'ss','ss@dd.com','sss','zsz'),(58,'ss','ss@dd.com','sss','zsz'),(59,'Mustafa Barış Ege','m.barisege@gmail.com','s','xxx'),(60,'Mustafa Barış Ege','m.barisege@gmail.com','sss','aaaaaaaa'),(61,'Mustafa Barış Ege','m.barisege@gmail.com','aa','assas'),(62,'Mustafa Barış Ege','m.barisege@gmail.com','aa','assas'),(63,'Mustafa Barış Ege','m.barisege@gmail.com','aa','assaas'),(64,'ab','ss@dd.com','s','ss'),(65,'Mustafa Barış Ege','m.barisege@gmail.com','sss','sasas'),(66,'Mustafa Barış Ege','m.barisege@gmail.com','sss','sasas'),(67,'ssssssssss','ss@dd.com','sss','sss'),(68,'ssssssssss','ss@dd.com','sss','sss'),(69,'ssssssssss','ss@dd.com','sss','sss'),(70,'ss','ss@dd.com','s','ssss'),(71,'ss','ss@dd.com','s','ssss'),(72,'ss','ss@dd.com','s','ssss'),(73,'ssssss','ss@dd.com','aa','sasa'),(74,'ab','ss@dd.com','advisory','sssssss'),(75,'ss','ss@dd.com','ss','sas'),(76,'Mustafa Barış Ege','m.barisege@gmail.com','sss','sssssss'),(77,'sas','aa','ss','ssssssssssssss'),(78,'sassssssssssssss','aas','ssss','ssssssasasssssssss'),(79,'sassssssssssssss','aas','ssss','ssssssasasssssssss'),(80,'Mustafa Barış Ege','m.barisege@gmail.com','s','AAAAAAAAAAAAAAA'),(81,'Mustafa Barış Ege','m.barisege@gmail.com','s','AAAAAAAAAAAAAAA'),(82,'ss','ss@dd.com','s','aasxaxa'),(83,'xaaxa','x','x','xxxxxxxxx'),(84,'xaaxa','x','x','xxxxxxxxx'),(85,'Mustafa Barış Ege','m.barisege@gmail.com','sss','xaxa'),(86,'asa','asa','as','aa'),(87,'ssssss','ss@dd.com','aaaaaaaa','aaaaaaa'),(88,'sassssssssssssss','ss@dd.com','s','sssss'),(89,'sassssssssssssss','ss@dd.com','advisory','ax'),(90,'Mustafa Barış Ege','m.barisege@gmail.com','sss','aSA'),(91,'ab','ss@dd.com','ss','ads');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `Subscription_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`Subscription_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'undefined'),(2,'undefined'),(3,'a'),(4,'m.barisege@gmail.com'),(5,'ss@dd.com'),(6,'m.barisege@gmail.com'),(7,'m.barisege@gmail.com'),(8,'m.barisege@gmail.com'),(9,'bege@gmail.com'),(10,'m.barisege@gmail.com'),(11,'m.barisege@gmail.com');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-22 14:52:36
