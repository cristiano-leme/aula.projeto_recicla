CREATE DATABASE  IF NOT EXISTS `projeto_recicla` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projeto_recicla`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_recicla
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `colaborador`
--

DROP TABLE IF EXISTS `colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaborador` (
  `id` int NOT NULL,
  `nome` varchar(20) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `endereço` varchar(20) DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaborador`
--

LOCK TABLES `colaborador` WRITE;
/*!40000 ALTER TABLE `colaborador` DISABLE KEYS */;
INSERT INTO `colaborador` VALUES (1,'Carlos Camargo','1990-08-20','M',NULL,NULL),(2,'Joana Prado','1985-01-15','F',NULL,NULL),(3,'Paulo Faria','1970-03-10','M',NULL,NULL);
/*!40000 ALTER TABLE `colaborador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cooperativa`
--

DROP TABLE IF EXISTS `cooperativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cooperativa` (
  `idproduto` int NOT NULL AUTO_INCREMENT,
  `produtos` varchar(10) NOT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cooperativa`
--

LOCK TABLES `cooperativa` WRITE;
/*!40000 ALTER TABLE `cooperativa` DISABLE KEYS */;
INSERT INTO `cooperativa` VALUES (1,'alumínio',NULL),(2,'cobre',NULL),(3,'latao',NULL),(4,'plastico',NULL),(5,'ferro',NULL),(6,'papelao',NULL),(7,'vidro',NULL),(8,'outros',NULL);
/*!40000 ALTER TABLE `cooperativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiais`
--

DROP TABLE IF EXISTS `materiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiais` (
  `idcolaborador` int DEFAULT NULL,
  `aluminio` decimal(6,3) DEFAULT NULL,
  `cobre` decimal(6,3) DEFAULT NULL,
  `latao` decimal(6,3) DEFAULT NULL,
  `plastico` decimal(6,3) DEFAULT NULL,
  `ferro` decimal(6,3) DEFAULT NULL,
  `papelao` decimal(6,3) DEFAULT NULL,
  `vidro` decimal(6,3) DEFAULT NULL,
  `outros` decimal(6,3) DEFAULT NULL,
  `totmateriais` decimal(10,0) DEFAULT NULL,
  KEY `idcolaborador` (`idcolaborador`),
  CONSTRAINT `materiais_ibfk_1` FOREIGN KEY (`idcolaborador`) REFERENCES `colaborador` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiais`
--

LOCK TABLES `materiais` WRITE;
/*!40000 ALTER TABLE `materiais` DISABLE KEYS */;
INSERT INTO `materiais` VALUES (NULL,10.500,27.354,8.250,0.000,52.600,150.500,5.150,0.000,NULL);
/*!40000 ALTER TABLE `materiais` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-23 13:14:53
