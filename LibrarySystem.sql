-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: librarysystem
-- ------------------------------------------------------
-- Server version	5.5.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `borrowedbooks`
--

DROP TABLE IF EXISTS `borrowedbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrowedbooks` (
  `isbn` int(11) NOT NULL DEFAULT '0',
  `borrowedDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `borrowerBook` varchar(45) DEFAULT NULL,
  `isBorrowed` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowedbooks`
--

LOCK TABLES `borrowedbooks` WRITE;
/*!40000 ALTER TABLE `borrowedbooks` DISABLE KEYS */;
INSERT INTO `borrowedbooks` VALUES (67,'2018-09-06','2018-09-08','','yes'),(7654,'2018-09-06','2018-09-08','','yes');
/*!40000 ALTER TABLE `borrowedbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libbooks`
--

DROP TABLE IF EXISTS `libbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libbooks` (
  `isbn` int(11) NOT NULL,
  `libBookName` varchar(45) DEFAULT NULL,
  `libBookAuthor` varchar(45) DEFAULT NULL,
  `libBookPrice` double DEFAULT NULL,
  `libBookLocation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libbooks`
--

LOCK TABLES `libbooks` WRITE;
/*!40000 ALTER TABLE `libbooks` DISABLE KEYS */;
INSERT INTO `libbooks` VALUES (1,'Harry Potter','JK Rowling',123,'Manila Library'),(67,'The Left Behind','LaHaye Jenkins',234,'Bicol Library'),(222,'Love nad Misadventure','Lang Leav',12,'Bicol Library'),(234,'The Longest Ride','Nicholas Sparks',456.8,'Bicol Library'),(2343,'The Mark','Jerry Benkins',453,'Bicol Library'),(3455,'The Strangers','Tyler Gregson',1234,'Item 1'),(4352,'Harry Potter','J Brown',123.8,'Bicol Library'),(5464,'Tribulation Force','Tim LaHaye',6453,'Bicol Library'),(7654,'The Indwelling','LaHaye Jenkins',766,'Makati Library'),(54643,'Tribulation Force','Tim LaHaye',6453,'Cavite Library'),(75433,'Typewriter Series','K Gregson',865,'Makati Library'),(546433,'Tribulation Force','Tim LaHaye',6453,'Manila City Public Library'),(654322,'Armageddon','Tim LaHaye',1234,'Cavite Library'),(3445432,'Principles of Programming','Marlon Tercero',123,'QC Public Library'),(5464336,'Tribulation Force','Tim LaHaye',6453,'Manila Library');
/*!40000 ALTER TABLE `libbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libname`
--

DROP TABLE IF EXISTS `libname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libname` (
  `idlibName` int(11) NOT NULL,
  `libName` varchar(45) DEFAULT NULL,
  `libAddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlibName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libname`
--

LOCK TABLES `libname` WRITE;
/*!40000 ALTER TABLE `libname` DISABLE KEYS */;
INSERT INTO `libname` VALUES (1,'Manila Library','Metro Manila, Philippines'),(3,'Makati Library','Makati, Manila, Philippines'),(5,'Bicol Library','Bicol Philippines'),(6,'Cavite Library','Cavite, Philippines'),(7,'Manila City Public Library','Manila City, Philippines'),(8,'QC Public Library','Commonwealth, QC, Philippines');
/*!40000 ALTER TABLE `libname` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-06 23:43:54
