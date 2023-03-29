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
-- Table structure for table `pojazd`
--

DROP TABLE IF EXISTS `pojazd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pojazd` (
  `idpojazd` int NOT NULL,
  `max_ladunek` decimal(10,0) NOT NULL,
  `dostepnosc` int NOT NULL,
  `stan_techniczny` int NOT NULL,
  `idzamowienie` int DEFAULT NULL,
  PRIMARY KEY (`idpojazd`),
  KEY `fk_pojazd_dostepnosc_pojazdu1_idx` (`dostepnosc`),
  KEY `fk_pojazd_stan_techniczny1_idx` (`stan_techniczny`),
  KEY `fk_pojazd_zamowienie1_idx` (`idzamowienie`),
  CONSTRAINT `fk_pojazd_dostepnosc_pojazdu1` FOREIGN KEY (`dostepnosc`) REFERENCES `dostepnosc_pojazdu` (`iddostepnosc_pojazdu`),
  CONSTRAINT `fk_pojazd_stan_techniczny1` FOREIGN KEY (`stan_techniczny`) REFERENCES `stan_techniczny` (`idstan_techniczny`),
  CONSTRAINT `fk_pojazd_zamowienie1` FOREIGN KEY (`idzamowienie`) REFERENCES `zamowienie` (`idzamowienie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pojazd`
--

LOCK TABLES `pojazd` WRITE;
/*!40000 ALTER TABLE `pojazd` DISABLE KEYS */;
INSERT INTO `pojazd` VALUES (1,3000,1,1,NULL),(2,1500,1,1,NULL),(3,2000,1,1,NULL),(4,33000,1,1,NULL),(5,15000,1,1,NULL);
/*!40000 ALTER TABLE `pojazd` ENABLE KEYS */;
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
