CREATE DATABASE  IF NOT EXISTS `ecoswap` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecoswap`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ecoswap
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `tb_administrador`
--

DROP TABLE IF EXISTS `tb_administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_administrador` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `senha` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_administrador`
--

LOCK TABLES `tb_administrador` WRITE;
/*!40000 ALTER TABLE `tb_administrador` DISABLE KEYS */;
INSERT INTO `tb_administrador` VALUES (1,'aaaa','aaaaaa','aaaa'),(2,'Xavier','xavier@xmen.com','xavier'),(3,'AdmTeste','adm@adm.com','123');
/*!40000 ALTER TABLE `tb_administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_reciclavel`
--

DROP TABLE IF EXISTS `tb_reciclavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_reciclavel` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `codReciclavel` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `numContato` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod`,`codReciclavel`),
  UNIQUE KEY `cod_UNIQUE` (`cod`),
  UNIQUE KEY `codReciclavel_UNIQUE` (`codReciclavel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_reciclavel`
--

LOCK TABLES `tb_reciclavel` WRITE;
/*!40000 ALTER TABLE `tb_reciclavel` DISABLE KEYS */;
INSERT INTO `tb_reciclavel` VALUES (2,'001','20 Latinhas','11 9134-5678','Finalizado');
/*!40000 ALTER TABLE `tb_reciclavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `codigo_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(60) NOT NULL,
  `cep_cliente` varchar(45) NOT NULL,
  `num_endereco` varchar(10) NOT NULL,
  `complem_endereco` varchar(20) DEFAULT NULL,
  `senha_cliente` varchar(45) NOT NULL,
  `email_cliente` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo_cliente`),
  UNIQUE KEY `id_cliente_UNIQUE` (`codigo_cliente`),
  UNIQUE KEY `email_cliente_UNIQUE` (`email_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (3,'teste','1223','1','ap 1','123','teste@'),(4,'teste3','123','12','ap 1','123','1@'),(5,'teste4','09000-133','12','ap 011','113','teste4@gmail.com'),(6,'teste5','12345-12','1101','','123','teste5@gmail.com');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-15 14:47:17
