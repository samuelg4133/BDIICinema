CREATE DATABASE  IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cinema`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: cinema
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.37-MariaDB

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
-- Table structure for table `ator`
--

DROP TABLE IF EXISTS `ator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ator` (
  `CodAtor` varchar(3) NOT NULL,
  `NomeArtistico` varchar(40) NOT NULL,
  `NomeReal` varchar(40) NOT NULL,
  `Nacionalidade` varchar(20) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `Idade` int(2) NOT NULL,
  `IndicacaoOscar` int(2) DEFAULT NULL,
  `Oscar` int(2) DEFAULT NULL,
  PRIMARY KEY (`CodAtor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ator`
--

LOCK TABLES `ator` WRITE;
/*!40000 ALTER TABLE `ator` DISABLE KEYS */;
INSERT INTO `ator` VALUES ('a1','Demi Moore','Maria da Silva','USA','F',32,NULL,NULL),('a10','Willian Hurt','Willian Ernst Hurt','USA','M',45,2,1),('a11','George Clooney','George Costa Smith','USA','M',37,1,NULL),('a12','Jennifer Lopez','Maria Conchita Lopez','M?xico','F',32,NULL,NULL),('a13','Antony Hopkins','Antony Richard Hopcroft','USA','M',65,6,3),('a14','Ant?nio Banderas','Ant?nio Augusto Banderas','Espanha','M',34,NULL,NULL),('a15','Tom Hanks','Antony Hanks','USA','M',45,1,1),('a16','Matt Damon','Mattew Louis Damon','USA','M',32,1,1),('a17','Jim Carrey','James Carrey','USA','M',40,NULL,NULL),('a18','Nicole Kidman','Susan West','Austr?lia','F',33,NULL,NULL),('a19','Val Kilmer','Valerio Soza Kilmer','Porto Rico','M',40,NULL,NULL),('a2','Brad Pitt','Jo?o Paulo','USA','M',28,1,NULL),('a20','Cameron Diaz','Esperanza Diaz','Costa Rica','F',29,NULL,NULL),('a21','Holly Hunter','Susan Richards','USA','F',33,1,1),('a22','Richard Gere','Richard Gere','USA','M',34,NULL,NULL),('a3','Jessica Lange','Jessica Lange','USA','F',42,4,2),('a4','Dustin Hoffman','Dustin Hoffman','USA','M',36,2,NULL),('a5','S?nia Braga','S?nia Braga','Brasil','F',45,NULL,NULL),('a6','Samuel Jackson','Samuel L. Jackson','USA','M',60,NULL,NULL),('a7','Sandra Bullock','Sandra Bullock','USA','F',30,2,NULL),('a8','Harry Cornick Jr','Harry Cornick Jr','USA','M',40,NULL,NULL),('a9','Wesley Snipes','Wesley Snipes','USA','M',31,1,NULL);
/*!40000 ALTER TABLE `ator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme` (
  `CodFilme` varchar(3) NOT NULL,
  `NomeFilme` varchar(40) NOT NULL,
  `AnoFilme` int(4) NOT NULL,
  `Orcamento` int(15) NOT NULL,
  `Tempo` int(5) NOT NULL,
  PRIMARY KEY (`CodFilme`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES ('f1','A Jurada',1996,1000000,18),('f10','Cidade das Sombras',1997,10000000,7),('f11','Irresistivel Paixao',1998,10000000,10),('f12','A Mascara do Zorro',1998,11000000,11),('f13','Quem vai ficar com Marry?',1997,6000000,8),('f14','O Resgate do Soldado Ryan',1997,10000000,7),('f15','O Show de Truman',1998,10000000,14),('f16','Batman, o Filme',1995,10000000,9),('f17','Filadelfia',1996,10000000,6),('f18','O Mascara',1995,6000000,7),('f19','O Beijo da Mulher Aranha',1990,8000000,24),('f2','A Letra Escarlate',1995,10000000,24),('f20','O Pacificador',1997,10000000,15),('f21','Ace Ventura',1995,7000000,12),('f22','Chaplin',1993,8000000,14),('f23','Batman e Robin',1997,10000000,20),('f24','Strip Tease',1996,7000000,12),('f25','Passageiro 57',1993,200000000,15),('f26','Forrest Gump',1996,90000000,15),('f3','Seven',1995,15000000,20),('f4','Tootsie',1982,5000000,16),('f5','Tieta',1995,2000000,18),('f6','Codigo de Violencia',1997,10000000,15),('f7','Quando o Amor Acontece',1998,5000000,12),('f8','A Vinganca de Bette',1998,10000000,9),('f9','Blade, o Cacador de Vampiros',1998,100000000,18);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personagem`
--

DROP TABLE IF EXISTS `personagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personagem` (
  `CodFilme` varchar(3) NOT NULL,
  `CodAtor` varchar(3) NOT NULL,
  `Personagem` varchar(40) NOT NULL,
  `Salario` int(15) NOT NULL,
  PRIMARY KEY (`CodFilme`,`CodAtor`),
  KEY `CodAtor` (`CodAtor`),
  CONSTRAINT `personagem_ibfk_1` FOREIGN KEY (`CodFilme`) REFERENCES `filme` (`CodFilme`),
  CONSTRAINT `personagem_ibfk_2` FOREIGN KEY (`CodAtor`) REFERENCES `ator` (`CodAtor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personagem`
--

LOCK TABLES `personagem` WRITE;
/*!40000 ALTER TABLE `personagem` DISABLE KEYS */;
INSERT INTO `personagem` VALUES ('f1','a1','Mary',30000),('f10','a10','Columbo',3000000),('f11','a11','Johnny',8000000),('f11','a12','Holly',1000000),('f12','a13','Diego',5000000),('f12','a14','Pancho',8000000),('f13','a16','Roger',4000000),('f13','a20','Mary',5000000),('f14','a15','Roberts',10000000),('f14','a16','Edward',2000000),('f15','a17','Truman',12000000),('f16','a17','Charade',5000000),('f16','a18','Betty',7000000),('f16','a19','Bruce',8000000),('f17','a14','Bobby',4000000),('f17','a15','Bill',6000000),('f18','a17','Mascara',10000000),('f18','a21','Sammy',2000000),('f19','a10','Molina',2000000),('f19','a5','Aranha',80000),('f2','a1','Sandy',50000),('f20','a11','George',14000000),('f20','a18','Mary',5000000),('f21','a17','Ace',6000000),('f21','a21','Lola',1000000),('f22','a8','Chaplin',3000000),('f23','a11','Bruce',10000000),('f24','a1','Annie',18000000),('f25','a9','James',14000000),('f26','a15','Forrest',20000000),('f3','a2','John',50000),('f4','a3','Mary',1000000),('f4','a4','Tootsie',2000000),('f5','a10','Nacib',2500000),('f5','a5','Tieta',50000),('f6','a6','Robinson',3000000),('f7','a7','Suzy',3000000),('f7','a8','Bill',5000000),('f8','a3','Bette',3000000),('f9','a9','Blade',100000000);
/*!40000 ALTER TABLE `personagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cinema'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-15 22:34:20
