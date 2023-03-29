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
-- Table structure for table `zamowienie`
--

DROP TABLE IF EXISTS `zamowienie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zamowienie` (
  `idzamowienie` int NOT NULL,
  `stan_zamowienia` int NOT NULL,
  `klient` int NOT NULL,
  `adres_bazowy` varchar(45) NOT NULL,
  `adres_docelowy` varchar(45) NOT NULL,
  `masa` decimal(10,0) NOT NULL,
  `data_zlozenia` datetime NOT NULL,
  `data_realizacji` datetime DEFAULT NULL,
  `cena` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idzamowienie`),
  KEY `fk_zamowienie_stan_zamowienia1_idx` (`stan_zamowienia`),
  KEY `fk_zamowienie_klient1_idx` (`klient`),
  CONSTRAINT `fk_zamowienie_klient1` FOREIGN KEY (`klient`) REFERENCES `klient` (`idklient`),
  CONSTRAINT `fk_zamowienie_stan_zamowienia1` FOREIGN KEY (`stan_zamowienia`) REFERENCES `stan_zamowienia` (`idstan_zamowienia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienie`
--

LOCK TABLES `zamowienie` WRITE;
/*!40000 ALTER TABLE `zamowienie` DISABLE KEYS */;
INSERT INTO `zamowienie` VALUES (1,1,1,'Bychawa 69A','Glusko Duze 1C',500,'2023-03-08 00:00:00',NULL,1568),(2,5,2,'Zakrzowek 74B','Lublin Lipowa 1C',800,'2023-03-11 00:00:00',NULL,2000),(3,4,3,'Lublin 24B','Lublin Muzyczna 23A',300,'2023-03-01 00:00:00',NULL,476),(4,1,4,'Lublin 123A','Wysokie',1000,'2023-03-12 00:00:00',NULL,2500),(5,1,5,'Warszawa 32A','Kraków Koszykarska 4',1500,'2023-03-12 00:00:00',NULL,3500);
/*!40000 ALTER TABLE `zamowienie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29 16:25:48
