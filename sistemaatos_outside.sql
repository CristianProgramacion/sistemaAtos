-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaatos
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
-- Table structure for table `outside`
--

DROP TABLE IF EXISTS `outside`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outside` (
  `id_outside` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTrabajador` varchar(100) DEFAULT NULL,
  `telefonoOutside` varchar(9) DEFAULT NULL,
  `outsidename` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `last_session` datetime NOT NULL,
  PRIMARY KEY (`id_outside`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outside`
--

LOCK TABLES `outside` WRITE;
/*!40000 ALTER TABLE `outside` DISABLE KEYS */;
INSERT INTO `outside` VALUES (1,'Cristian Limas','949549899','climas','12345678','alex_cris14@hotmail.com','2018-12-03 23:34:54'),(2,'Jose','9132121','cjose','7c222fb2927d828af22f592134e8932480637c0d','jose@hotmail.com','2018-12-03 02:46:43'),(3,'Cristian','9112312','climas','7c222fb2927d828af22f592134e8932480637c0d','dsf@asdasd','2018-12-03 02:55:14');
/*!40000 ALTER TABLE `outside` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-03  3:02:59
