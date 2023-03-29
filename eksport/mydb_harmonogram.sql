-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `harmonogram`
--

DROP TABLE IF EXISTS `harmonogram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `harmonogram` (
  `idharmonogram` int NOT NULL,
  `data_od` datetime NOT NULL,
  `data_do` datetime NOT NULL,
  `pracownik` int NOT NULL,
  PRIMARY KEY (`idharmonogram`),
  KEY `fk_harmonogram_pracownik1_idx` (`pracownik`),
  CONSTRAINT `fk_harmonogram_pracownik1` FOREIGN KEY (`pracownik`) REFERENCES `pracownik` (`idpracownik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harmonogram`
--

LOCK TABLES `harmonogram` WRITE;
/*!40000 ALTER TABLE `harmonogram` DISABLE KEYS */;
INSERT INTO `harmonogram` VALUES (1,'2023-03-10 07:30:00','2023-03-10 15:30:00',1),(2,'2023-03-09 07:30:00','2023-03-09 15:30:00',2),(3,'2023-03-12 09:00:00','2023-03-12 17:00:00',1),(4,'2023-03-10 07:30:00','2023-03-10 15:30:00',2),(5,'2023-03-12 08:00:00','2023-03-12 16:00:00',3);
/*!40000 ALTER TABLE `harmonogram` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29 16:25:49
