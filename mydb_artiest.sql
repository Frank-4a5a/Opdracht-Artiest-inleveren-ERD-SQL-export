-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `artiest`
--

DROP TABLE IF EXISTS `artiest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artiest` (
  `idArtiest` int(11) NOT NULL,
  `volledigenaam` varchar(45) DEFAULT NULL,
  `geboortedatum` date DEFAULT NULL,
  `Artiestnaam` varchar(45) DEFAULT NULL,
  `Studio_idStudio` int(11) NOT NULL,
  `Platenlabel_idPlatenlabel` int(11) NOT NULL,
  PRIMARY KEY (`idArtiest`,`Studio_idStudio`),
  KEY `fk_Artiest_Studio_idx` (`Studio_idStudio`),
  KEY `fk_Artiest_Platenlabel1_idx` (`Platenlabel_idPlatenlabel`),
  CONSTRAINT `fk_Artiest_Platenlabel1` FOREIGN KEY (`Platenlabel_idPlatenlabel`) REFERENCES `platenlabel` (`idPlatenlabel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Artiest_Studio` FOREIGN KEY (`Studio_idStudio`) REFERENCES `studio` (`idStudio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artiest`
--

LOCK TABLES `artiest` WRITE;
/*!40000 ALTER TABLE `artiest` DISABLE KEYS */;
/*!40000 ALTER TABLE `artiest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-17 15:39:02
