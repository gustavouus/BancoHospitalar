-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemahospital
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `cirurgia`
--

DROP TABLE IF EXISTS `cirurgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cirurgia` (
  `cirurgia_id` int NOT NULL AUTO_INCREMENT,
  `medico_id` int NOT NULL,
  `paciente_id` int NOT NULL,
  `departamento_id` int NOT NULL,
  `data` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `horario` time NOT NULL,
  PRIMARY KEY (`cirurgia_id`),
  KEY `medico_id_idx` (`medico_id`),
  KEY `paciente_id_idx` (`paciente_id`),
  KEY `departamento_id_idx` (`departamento_id`),
  CONSTRAINT `departamento_id` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`),
  CONSTRAINT `medico_id` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`medico_id`),
  CONSTRAINT `paciente_id` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cirurgia`
--

LOCK TABLES `cirurgia` WRITE;
/*!40000 ALTER TABLE `cirurgia` DISABLE KEYS */;
INSERT INTO `cirurgia` VALUES (1,3,8,3,'2024-01-16','Realizada','Artroscopia do joelho direito para reparo de menisco','08:00:00'),(2,29,14,3,'2024-01-17','Realizada','Osteossíntese de fêmur com placa e parafusos','09:30:00'),(3,3,19,3,'2024-01-18','Realizada','Substituição total de quadril - artroplastia','07:30:00'),(4,29,24,3,'2024-01-19','Realizada','Artrodese de tornozelo para artrose severa','10:15:00'),(5,3,29,3,'2024-01-22','Realizada','Reparo de ligamento cruzado anterior','08:45:00'),(6,29,35,3,'2024-01-23','Realizada','Retirada de material de osteossíntese','11:00:00'),(7,2,5,2,'2024-01-17','Realizada','Cateterismo cardíaco diagnóstico','07:00:00'),(8,28,9,2,'2024-01-18','Realizada','Angioplastia com stent coronariano','08:30:00'),(9,2,15,2,'2024-01-19','Realizada','Implante de marcapasso definitivo','09:15:00'),(10,28,21,2,'2024-01-22','Realizada','Ablação por cateter para arritmia','10:00:00'),(11,2,27,2,'2024-01-23','Realizada','Troca de gerador de marcapasso','07:45:00'),(12,28,33,2,'2024-01-24','Realizada','Cateterismo terapêutico com stent','08:30:00'),(13,8,7,8,'2024-01-18','Realizada','Histeroscopia diagnóstica e cirúrgica','13:00:00'),(14,8,19,8,'2024-01-19','Realizada','Laparoscopia para endometriose','14:30:00'),(15,8,25,8,'2024-01-22','Realizada','Cesárea eletiva - parto cirúrgico','08:00:00'),(16,8,31,8,'2024-01-23','Realizada','Miomectomia por laparotomia','09:45:00'),(17,8,38,8,'2024-01-24','Realizada','Salpingectomia bilateral laparoscópica','11:15:00'),(18,8,42,8,'2024-01-25','Realizada','Histerectomia vaginal','10:30:00'),(19,14,12,15,'2024-01-19','Realizada','Facoemulsificação para catarata','07:30:00'),(20,14,24,15,'2024-01-22','Realizada','Vitrectomia posterior pars plana','08:45:00'),(21,14,33,15,'2024-01-23','Realizada','Cirurgia refrativa LASIK','09:30:00'),(22,14,40,15,'2024-01-24','Realizada','Blefaroplastia superior','11:00:00'),(23,14,46,15,'2024-01-25','Realizada','Implante de lente intraocular','08:15:00'),(24,14,50,15,'2024-01-26','Realizada','Cirurgia de estrabismo','10:30:00'),(25,20,22,21,'2024-01-22','Realizada','Prostatectomia radical robótica','07:00:00'),(26,20,32,21,'2024-01-23','Realizada','Nefrectomia laparoscópica','08:45:00'),(27,20,41,21,'2024-01-24','Realizada','Cistolitotripsia endoscópica','10:15:00'),(28,20,49,21,'2024-01-25','Realizada','Cirurgia de hiperplasia prostática benigna','09:30:00'),(29,20,51,21,'2024-01-26','Realizada','Orquiectomia radical','11:00:00'),(30,20,55,21,'2024-01-29','Realizada','Ureterolitotripsia laser','08:30:00'),(31,16,15,17,'2024-01-23','Realizada','Adenoidectomia e amigdalectomia','13:30:00'),(32,16,26,17,'2024-01-24','Realizada','Septoplastia e turbinectomia','14:45:00'),(33,16,35,17,'2024-01-25','Realizada','Timpanoplastia com reconstrução ossicular','15:30:00'),(34,16,43,17,'2024-01-26','Realizada','Laringoscopia com microcirurgia de pregas vocais','13:15:00'),(35,16,47,17,'2024-01-29','Realizada','Miringotomia com inserção de tubo de ventilação','14:00:00'),(36,16,52,17,'2024-01-30','Realizada','Rinoplastia estética funcional','15:45:00'),(37,5,10,5,'2024-01-24','Realizada','Discectomia lombar para hérnia de disco','07:15:00'),(38,5,16,5,'2024-01-25','Realizada','Craniotomia para ressecção de tumor cerebral','08:30:00'),(39,5,22,5,'2024-01-26','Realizada','Descompressão microvascular para neuralgia do trigêmeo','09:45:00'),(40,5,26,5,'2024-01-29','Realizada','Fusão espinal cervical anterior','10:30:00'),(41,5,32,5,'2024-01-30','Realizada','Ventriculostomia endoscópica','08:00:00'),(42,5,38,5,'2024-01-31','Realizada','Laminectomia descompressiva','09:15:00'),(43,7,4,7,'2024-01-25','Realizada','Colecistectomia laparoscópica','07:30:00'),(44,7,18,7,'2024-01-26','Realizada','Herniorrafia inguinal','09:00:00'),(45,7,30,7,'2024-01-29','Realizada','Apendicectomia videolaparoscópica','08:15:00'),(46,7,36,7,'2024-01-30','Realizada','Esplenectomia total','10:45:00'),(47,7,42,7,'2024-01-31','Realizada','Pancreatectomia distal','07:45:00'),(48,7,48,7,'2024-02-01','Realizada','Gastrectomia parcial','09:30:00'),(49,15,15,16,'2024-01-26','Realizada','Excisão de melanoma com enxerto de pele','13:00:00'),(50,15,26,16,'2024-01-29','Realizada','Cirurgia de Mohs para carcinoma basocelular','14:30:00'),(51,15,35,16,'2024-01-30','Realizada','Excisão de quisto sebáceo com sutura','15:15:00'),(52,15,43,16,'2024-01-31','Realizada','Curetagem e eletrocirurgia de lesões cutâneas','13:45:00'),(53,15,47,16,'2024-02-01','Realizada','Lipoenxertia facial','14:00:00'),(54,15,52,16,'2024-02-02','Realizada','Biópsia excisional de nevo atípico','15:30:00'),(55,3,44,3,'2024-02-05','Agendada','Artroplastia total de joelho - substituição','07:30:00'),(56,2,52,2,'2024-02-06','Agendada','Implante de CDI - cardioversor desfibrilador','08:15:00'),(57,8,58,8,'2024-02-07','Agendada','Laparoscopia pélvica exploratória','09:00:00'),(58,14,62,15,'2024-02-08','Agendada','Transplante de córnea - ceratoplastia','10:30:00'),(59,20,68,21,'2024-02-09','Agendada','Cistectomia radical com derivação urinária','07:45:00'),(60,5,72,5,'2024-02-12','Agendada','Microdiscectomia percutânea','08:30:00'),(61,7,28,7,'2024-01-20','Cancelada','Colecistectomia programada - paciente com infecção','08:00:00'),(62,16,34,17,'2024-01-21','Cancelada','Adenoidectomia - suspensa por febre','09:30:00'),(63,15,40,16,'2024-01-22','Cancelada','Excisão de lesão - paciente desistiu','11:00:00'),(64,8,46,8,'2024-01-23','Cancelada','Histeroscopia - contraindicada por gestação','10:15:00'),(65,3,54,3,'2024-01-24','Cancelada','Artroscopia - reagendada por problemas de agenda','14:00:00');
/*!40000 ALTER TABLE `cirurgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cirurgia_enfermeiro`
--

DROP TABLE IF EXISTS `cirurgia_enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cirurgia_enfermeiro` (
  `cirurgia_id` int NOT NULL,
  `enfermeiro_id` int NOT NULL,
  `funcao` varchar(200) NOT NULL,
  PRIMARY KEY (`cirurgia_id`,`enfermeiro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cirurgia_enfermeiro`
--

LOCK TABLES `cirurgia_enfermeiro` WRITE;
/*!40000 ALTER TABLE `cirurgia_enfermeiro` DISABLE KEYS */;
INSERT INTO `cirurgia_enfermeiro` VALUES (1,7,'Enfermeiro Instrumentador'),(1,8,'Enfermeiro Circulante'),(1,9,'Enfermeiro Anestésico'),(2,7,'Enfermeiro Instrumentador'),(2,8,'Enfermeiro Circulante'),(2,9,'Enfermeiro Anestésico'),(3,7,'Enfermeiro Instrumentador'),(3,8,'Enfermeiro Circulante'),(3,9,'Enfermeiro Anestésico'),(4,7,'Enfermeiro Instrumentador'),(4,8,'Enfermeiro Circulante'),(4,9,'Enfermeiro Anestésico'),(5,7,'Enfermeiro Instrumentador'),(5,8,'Enfermeiro Circulante'),(5,9,'Enfermeiro Anestésico'),(6,7,'Enfermeiro Instrumentador'),(6,8,'Enfermeiro Circulante'),(6,9,'Enfermeiro Anestésico'),(7,2,'Enfermeiro Hemodinâmico'),(7,9,'Enfermeiro Anestésico'),(7,10,'Enfermeiro Circulante'),(8,2,'Enfermeiro Hemodinâmico'),(8,9,'Enfermeiro Anestésico'),(8,10,'Enfermeiro Circulante'),(9,2,'Enfermeiro Instrumentador'),(9,9,'Enfermeiro Anestésico'),(9,10,'Enfermeiro Circulante'),(10,2,'Enfermeiro Hemodinâmico'),(10,9,'Enfermeiro Anestésico'),(10,10,'Enfermeiro Circulante'),(11,2,'Enfermeiro Instrumentador'),(11,9,'Enfermeiro Anestésico'),(11,10,'Enfermeiro Circulante'),(12,2,'Enfermeiro Hemodinâmico'),(12,9,'Enfermeiro Anestésico'),(12,10,'Enfermeiro Circulante'),(13,8,'Enfermeiro Obstétrico'),(13,9,'Enfermeiro Anestésico'),(13,10,'Enfermeiro Circulante'),(14,8,'Enfermeiro Obstétrico'),(14,9,'Enfermeiro Anestésico'),(14,10,'Enfermeiro Circulante'),(15,8,'Enfermeiro Obstétrico'),(15,9,'Enfermeiro Anestésico'),(15,10,'Enfermeiro Circulante'),(16,8,'Enfermeiro Obstétrico'),(16,9,'Enfermeiro Anestésico'),(16,10,'Enfermeiro Circulante'),(17,8,'Enfermeiro Obstétrico'),(17,9,'Enfermeiro Anestésico'),(17,10,'Enfermeiro Circulante'),(18,8,'Enfermeiro Obstétrico'),(18,9,'Enfermeiro Anestésico'),(18,10,'Enfermeiro Circulante'),(19,9,'Enfermeiro Anestésico'),(19,14,'Enfermeiro Oftalmológico'),(20,9,'Enfermeiro Anestésico'),(20,14,'Enfermeiro Instrumentador'),(21,9,'Enfermeiro Anestésico'),(21,14,'Enfermeiro Oftalmológico'),(22,9,'Enfermeiro Anestésico'),(22,14,'Enfermeiro Oftalmológico'),(23,9,'Enfermeiro Anestésico'),(23,14,'Enfermeiro Instrumentador'),(24,9,'Enfermeiro Anestésico'),(24,14,'Enfermeiro Oftalmológico'),(25,7,'Enfermeiro Instrumentador'),(25,9,'Enfermeiro Anestésico'),(25,19,'Enfermeiro Urologista'),(26,7,'Enfermeiro Instrumentador'),(26,9,'Enfermeiro Anestésico'),(26,19,'Enfermeiro Urologista'),(27,7,'Enfermeiro Instrumentador'),(27,9,'Enfermeiro Anestésico'),(27,19,'Enfermeiro Urologista'),(28,7,'Enfermeiro Instrumentador'),(28,9,'Enfermeiro Anestésico'),(28,19,'Enfermeiro Urologista'),(29,7,'Enfermeiro Instrumentador'),(29,9,'Enfermeiro Anestésico'),(29,19,'Enfermeiro Urologista'),(30,7,'Enfermeiro Instrumentador'),(30,9,'Enfermeiro Anestésico'),(30,19,'Enfermeiro Urologista'),(31,7,'Enfermeiro Instrumentador'),(31,9,'Enfermeiro Anestésico'),(31,17,'Enfermeiro ORL'),(32,7,'Enfermeiro Instrumentador'),(32,9,'Enfermeiro Anestésico'),(32,17,'Enfermeiro ORL'),(33,7,'Enfermeiro Instrumentador'),(33,9,'Enfermeiro Anestésico'),(33,17,'Enfermeiro ORL'),(34,7,'Enfermeiro Instrumentador'),(34,9,'Enfermeiro Anestésico'),(34,17,'Enfermeiro ORL'),(35,7,'Enfermeiro Instrumentador'),(35,9,'Enfermeiro Anestésico'),(35,17,'Enfermeiro ORL'),(36,7,'Enfermeiro Instrumentador'),(36,9,'Enfermeiro Anestésico'),(36,17,'Enfermeiro ORL'),(37,5,'Enfermeiro Neurologista'),(37,7,'Enfermeiro Instrumentador'),(37,9,'Enfermeiro Anestésico'),(37,10,'Enfermeiro Circulante'),(38,5,'Enfermeiro Neurologista'),(38,7,'Enfermeiro Instrumentador'),(38,9,'Enfermeiro Anestésico'),(38,10,'Enfermeiro Circulante'),(39,5,'Enfermeiro Neurologista'),(39,7,'Enfermeiro Instrumentador'),(39,9,'Enfermeiro Anestésico'),(39,10,'Enfermeiro Circulante'),(40,5,'Enfermeiro Neurologista'),(40,7,'Enfermeiro Instrumentador'),(40,9,'Enfermeiro Anestésico'),(40,10,'Enfermeiro Circulante'),(41,5,'Enfermeiro Neurologista'),(41,7,'Enfermeiro Instrumentador'),(41,9,'Enfermeiro Anestésico'),(41,10,'Enfermeiro Circulante'),(42,5,'Enfermeiro Neurologista'),(42,7,'Enfermeiro Instrumentador'),(42,9,'Enfermeiro Anestésico'),(42,10,'Enfermeiro Circulante'),(43,7,'Enfermeiro Instrumentador'),(43,9,'Enfermeiro Anestésico'),(43,10,'Enfermeiro Circulante'),(44,7,'Enfermeiro Instrumentador'),(44,9,'Enfermeiro Anestésico'),(44,10,'Enfermeiro Circulante'),(45,7,'Enfermeiro Instrumentador'),(45,9,'Enfermeiro Anestésico'),(45,10,'Enfermeiro Circulante'),(46,7,'Enfermeiro Instrumentador'),(46,9,'Enfermeiro Anestésico'),(46,10,'Enfermeiro Circulante'),(47,7,'Enfermeiro Instrumentador'),(47,9,'Enfermeiro Anestésico'),(47,10,'Enfermeiro Circulante'),(48,7,'Enfermeiro Instrumentador'),(48,9,'Enfermeiro Anestésico'),(48,10,'Enfermeiro Circulante'),(49,9,'Enfermeiro Anestésico'),(49,15,'Enfermeiro Dermatologista'),(50,9,'Enfermeiro Anestésico'),(50,15,'Enfermeiro Dermatologista'),(51,9,'Enfermeiro Anestésico'),(51,15,'Enfermeiro Dermatologista'),(52,9,'Enfermeiro Anestésico'),(52,15,'Enfermeiro Dermatologista'),(53,9,'Enfermeiro Anestésico'),(53,15,'Enfermeiro Dermatologista'),(54,9,'Enfermeiro Anestésico'),(54,15,'Enfermeiro Dermatologista'),(55,7,'Enfermeiro Instrumentador'),(55,9,'Enfermeiro Anestésico'),(56,2,'Enfermeiro Cardíaco'),(56,9,'Enfermeiro Anestésico'),(57,8,'Enfermeiro Obstétrico'),(57,9,'Enfermeiro Anestésico'),(58,9,'Enfermeiro Anestésico'),(58,14,'Enfermeiro Oftalmológico'),(59,9,'Enfermeiro Anestésico'),(59,19,'Enfermeiro Urologista'),(60,5,'Enfermeiro Neurologista'),(60,9,'Enfermeiro Anestésico'),(61,7,'Enfermeiro Instrumentador'),(61,9,'Enfermeiro Anestésico'),(62,9,'Enfermeiro Anestésico'),(62,17,'Enfermeiro ORL'),(63,9,'Enfermeiro Anestésico'),(63,15,'Enfermeiro Dermatologista'),(64,8,'Enfermeiro Obstétrico'),(64,9,'Enfermeiro Anestésico'),(65,7,'Enfermeiro Instrumentador'),(65,9,'Enfermeiro Anestésico');
/*!40000 ALTER TABLE `cirurgia_enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `consulta_id` int NOT NULL AUTO_INCREMENT,
  `medico_id` int NOT NULL,
  `paciente_id` int NOT NULL,
  `especialidade_id` int NOT NULL,
  `data` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `horario` time NOT NULL,
  PRIMARY KEY (`consulta_id`),
  KEY `medico_id_idx` (`medico_id`),
  KEY `paciente_id_idx` (`paciente_id`),
  KEY `especialidade_id_idx` (`especialidade_id`),
  CONSTRAINT `especialidade_consulta_id` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade_medico` (`especialidade_id`),
  CONSTRAINT `medico_consulta_id` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`medico_id`),
  CONSTRAINT `paciente_consulta_id` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,1,3,1,'2024-01-15','Realizada','08:30:00'),(2,27,7,1,'2024-01-15','Realizada','09:15:00'),(3,1,12,1,'2024-01-15','Realizada','10:00:00'),(4,27,18,1,'2024-01-15','Realizada','11:00:00'),(5,1,25,1,'2024-01-15','Realizada','14:00:00'),(6,27,31,1,'2024-01-15','Realizada','15:30:00'),(7,2,5,2,'2024-01-16','Realizada','08:00:00'),(8,28,9,2,'2024-01-16','Realizada','09:00:00'),(9,2,15,2,'2024-01-16','Realizada','10:30:00'),(10,28,21,2,'2024-01-16','Realizada','11:15:00'),(11,2,27,2,'2024-01-16','Realizada','14:00:00'),(12,28,33,2,'2024-01-16','Realizada','15:00:00'),(13,3,8,3,'2024-01-17','Realizada','08:30:00'),(14,29,14,3,'2024-01-17','Realizada','09:45:00'),(15,3,19,3,'2024-01-17','Realizada','10:30:00'),(16,29,24,3,'2024-01-17','Realizada','11:30:00'),(17,3,29,3,'2024-01-17','Realizada','14:15:00'),(18,29,35,3,'2024-01-17','Realizada','15:45:00'),(19,4,2,4,'2024-01-18','Realizada','08:00:00'),(20,30,6,4,'2024-01-18','Realizada','09:30:00'),(21,4,11,4,'2024-01-18','Realizada','10:15:00'),(22,30,17,4,'2024-01-18','Realizada','11:00:00'),(23,4,23,4,'2024-01-18','Realizada','14:00:00'),(24,30,28,4,'2024-01-18','Realizada','15:30:00'),(25,5,10,5,'2024-01-19','Realizada','08:45:00'),(26,5,16,5,'2024-01-19','Realizada','10:00:00'),(27,5,22,5,'2024-01-19','Realizada','11:15:00'),(28,5,26,5,'2024-01-19','Realizada','14:30:00'),(29,5,32,5,'2024-01-19','Realizada','15:45:00'),(30,6,13,6,'2024-01-22','Realizada','08:00:00'),(31,6,20,6,'2024-01-22','Realizada','09:30:00'),(32,6,34,6,'2024-01-22','Realizada','11:00:00'),(33,6,37,6,'2024-01-22','Realizada','14:00:00'),(34,6,41,6,'2024-01-22','Realizada','15:30:00'),(35,7,4,7,'2024-01-23','Realizada','08:15:00'),(36,7,18,7,'2024-01-23','Realizada','10:00:00'),(37,7,30,7,'2024-01-23','Realizada','11:45:00'),(38,7,36,7,'2024-01-23','Realizada','14:15:00'),(39,7,42,7,'2024-01-23','Realizada','16:00:00'),(40,8,7,8,'2024-01-24','Realizada','08:30:00'),(41,8,19,8,'2024-01-24','Realizada','10:00:00'),(42,8,25,8,'2024-01-24','Realizada','11:30:00'),(43,8,31,8,'2024-01-24','Realizada','14:00:00'),(44,8,38,8,'2024-01-24','Realizada','15:45:00'),(45,13,9,13,'2024-01-25','Realizada','08:00:00'),(46,13,21,13,'2024-01-25','Realizada','09:45:00'),(47,13,27,13,'2024-01-25','Realizada','11:15:00'),(48,13,39,13,'2024-01-25','Realizada','14:30:00'),(49,13,45,13,'2024-01-25','Realizada','16:00:00'),(50,14,12,14,'2024-01-26','Realizada','08:30:00'),(51,14,24,14,'2024-01-26','Realizada','10:00:00'),(52,14,33,14,'2024-01-26','Realizada','11:45:00'),(53,14,40,14,'2024-01-26','Realizada','14:15:00'),(54,14,46,14,'2024-01-26','Realizada','15:30:00'),(55,15,15,15,'2024-01-29','Realizada','08:00:00'),(56,15,26,15,'2024-01-29','Realizada','09:30:00'),(57,15,35,15,'2024-01-29','Realizada','11:00:00'),(58,15,43,15,'2024-01-29','Realizada','14:30:00'),(59,15,47,15,'2024-01-29','Realizada','16:00:00'),(60,17,20,17,'2024-01-30','Realizada','08:15:00'),(61,17,29,17,'2024-01-30','Realizada','10:00:00'),(62,17,37,17,'2024-01-30','Realizada','11:45:00'),(63,17,44,17,'2024-01-30','Realizada','14:15:00'),(64,17,48,17,'2024-01-30','Realizada','15:30:00'),(65,18,22,18,'2024-01-31','Realizada','08:30:00'),(66,18,32,18,'2024-01-31','Realizada','10:15:00'),(67,18,41,18,'2024-01-31','Realizada','11:30:00'),(68,18,49,18,'2024-01-31','Realizada','14:00:00'),(69,18,51,18,'2024-01-31','Realizada','15:45:00'),(70,21,28,21,'2024-02-01','Realizada','08:00:00'),(71,21,36,21,'2024-02-01','Realizada','09:45:00'),(72,21,42,21,'2024-02-01','Realizada','11:15:00'),(73,21,50,21,'2024-02-01','Realizada','14:30:00'),(74,21,53,21,'2024-02-01','Realizada','16:00:00'),(75,1,55,1,'2024-02-02','Agendada','08:30:00'),(76,2,60,2,'2024-02-02','Agendada','10:00:00'),(77,4,65,4,'2024-02-02','Agendada','11:30:00'),(78,8,70,8,'2024-02-02','Agendada','14:00:00'),(79,13,75,13,'2024-02-02','Agendada','15:30:00'),(80,3,44,3,'2024-01-20','Cancelada','09:00:00'),(81,6,52,6,'2024-01-21','Cancelada','10:30:00'),(82,14,58,14,'2024-01-22','Cancelada','11:00:00'),(83,17,62,17,'2024-01-23','Cancelada','14:15:00'),(84,21,68,21,'2024-01-24','Cancelada','15:45:00'),(85,1,80,1,'2024-02-05','Agendada','08:00:00'),(86,2,82,2,'2024-02-05','Agendada','09:30:00'),(87,3,84,3,'2024-02-05','Agendada','11:00:00'),(88,4,86,4,'2024-02-05','Agendada','14:00:00'),(89,5,88,5,'2024-02-05','Agendada','15:30:00'),(90,6,90,6,'2024-02-06','Agendada','08:15:00'),(91,7,92,7,'2024-02-06','Agendada','10:00:00'),(92,8,94,8,'2024-02-06','Agendada','11:45:00'),(93,13,96,13,'2024-02-06','Agendada','14:30:00'),(94,14,98,14,'2024-02-06','Agendada','16:00:00'),(95,15,100,15,'2024-02-07','Agendada','08:30:00'),(96,17,102,17,'2024-02-07','Agendada','10:15:00'),(97,18,103,18,'2024-02-07','Agendada','11:30:00'),(98,21,85,21,'2024-02-07','Agendada','14:00:00'),(99,1,3,1,'2024-02-10','Agendada','08:30:00'),(100,2,5,2,'2024-02-12','Agendada','09:00:00'),(101,4,2,4,'2024-02-14','Agendada','10:30:00'),(102,8,7,8,'2024-02-16','Agendada','11:15:00'),(103,13,9,13,'2024-02-18','Agendada','14:00:00');
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `departamento_id` int NOT NULL AUTO_INCREMENT,
  `setor` varchar(45) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  PRIMARY KEY (`departamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Clínica Geral','Atendimento médico geral para diversas especialidades'),(2,'Cardiologia','Diagnóstico e tratamento de doenças do coração e sistema cardiovascular'),(3,'Ortopedia e Traumatologia','Tratamento de fraturas, lesões ósseas e problemas musculoesqueléticos'),(4,'Pediatria','Cuidados médicos para crianças e adolescentes'),(5,'Neurologia','Tratamento de doenças do sistema nervoso central e periférico'),(6,'Oncologia','Diagnóstico e tratamento de câncer'),(7,'Cirurgia Geral','Procedimentos cirúrgicos de diversas naturezas'),(8,'Ginecologia e Obstetrícia','Saúde da mulher, gestação e parto'),(9,'UTI - Unidade de Terapia Intensiva','Atendimento a pacientes em estado crítico'),(10,'Pronto Socorro/Urgência','Atendimento de emergência 24 horas'),(11,'Radiologia e Diagnóstico por Imagem','Realização de exames de imagem'),(12,'Laboratório de Análises Clínicas','Exames laboratoriais e análises clínicas'),(13,'Fisioterapia','Reabilitação física e motora'),(14,'Psiquiatria','Tratamento de doenças mentais e distúrbios psicológicos'),(15,'Oftalmologia','Cuidados com a saúde ocular'),(16,'Dermatologia','Diagnóstico e tratamento de doenças da pele'),(17,'Otorrinolaringologia','Doenças de ouvido, nariz e garganta'),(18,'Endocrinologia','Distúrbios hormonais e metabólicos'),(19,'Gastroenterologia','Doenças do sistema digestório'),(20,'Nefrologia','Doenças renais e diálise'),(21,'Urologia','Doenças do sistema urinário'),(22,'Pneumologia','Doenças respiratórias e pulmonares'),(23,'Reumatologia','Doenças autoimunes e articulares'),(24,'Hematologia','Doenças do sangue e medula óssea'),(25,'Infectologia','Doenças infecciosas e tropicais'),(26,'Farmácia Hospitalar','Dispensação e controle de medicamentos'),(27,'Nutrição e Dietética','Planejamento alimentar e dietas terapêuticas'),(28,'Serviço Social','Apoio psicossocial aos pacientes e famílias'),(29,'Psicologia Hospitalar','Atendimento psicológico a pacientes internados'),(30,'Fonoaudiologia','Reabilitação da comunicação e deglutição'),(31,'Terapia Ocupacional','Reabilitação para atividades diárias'),(32,'Administração e Gestão','Gestão administrativa do hospital'),(33,'Recursos Humanos','Gestão de pessoas e departamento pessoal'),(34,'Financeiro','Controle financeiro e faturamento'),(35,'Compras e Almoxarifado','Gestão de suprimentos e materiais'),(36,'Manutenção e Engenharia','Manutenção predial e de equipamentos'),(37,'Limpeza e Conservação','Serviços de higiene e limpeza'),(38,'Lavanderia Hospitalar','Processamento de roupas hospitalares'),(39,'Copa e Nutrição','Preparo de refeições'),(40,'Recepção e Atendimento','Atendimento ao público e acolhimento'),(41,'Centro Cirúrgico','Salas de cirurgia e procedimentos invasivos'),(42,'Central de Material e Esterilização','Processamento de materiais cirúrgicos'),(43,'Banco de Sangue e Hemoterapia','Coleta, processamento e transfusão de sangue'),(44,'Anestesiologia','Administração de anestésicos e cuidados perioperatórios'),(45,'Patologia','Análise de tecidos e diagnósticos anatomopatológicos'),(46,'UTI Neonatal','Cuidados intensivos para recém-nascidos'),(47,'UTI Pediátrica','Terapia intensiva para crianças'),(48,'UTI Cardiológica','Cuidados intensivos cardíacos'),(49,'Unidade de Queimados','Tratamento especializado para pacientes queimados'),(50,'Unidade de Transplantes','Coordenação e cuidado de pacientes transplantados'),(51,'Ensino e Pesquisa','Atividades acadêmicas e pesquisa científica'),(52,'Residência Médica','Programa de formação de médicos especialistas'),(53,'Educação Continuada','Capacitação permanente da equipe'),(54,'Atendimento ao Paciente','Ouvidoria e relações com o paciente'),(55,'Capelania Hospitalar','Assistência espiritual e religiosa'),(56,'Voluntariado','Coordenação de trabalhos voluntários');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiro`
--

DROP TABLE IF EXISTS `enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiro` (
  `enfermeiro_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `departamento_id` int NOT NULL,
  `especialidade_id` int NOT NULL,
  PRIMARY KEY (`enfermeiro_id`),
  KEY `departamento_id_enfermeiro_idx` (`departamento_id`),
  KEY `fk_especialidade_id_enf_idx` (`especialidade_id`),
  CONSTRAINT `fk_departamento_id_enf` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`),
  CONSTRAINT `fk_especialidade_id_enf` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade_enfermeiro` (`especialidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro`
--

LOCK TABLES `enfermeiro` WRITE;
/*!40000 ALTER TABLE `enfermeiro` DISABLE KEYS */;
INSERT INTO `enfermeiro` VALUES (1,'Enf. Bruno Henrique',1,29),(2,'Enf. Carla Patrícia',1,29),(3,'Enf. Daniel Costa',1,29),(4,'Enf. Elisa Martins',1,29),(5,'Enf. Felipe Oliveira',10,38),(6,'Enf. Giovana Silva',10,38),(7,'Enf. Heitor Santos',10,38),(8,'Enf. Irene Rocha',10,38),(9,'Enf. Jorge Pereira',9,37),(10,'Enf. Karen Alves',9,37),(11,'Enf. Leonardo Nunes',9,37),(12,'Enf. Mariana Lima',9,37),(13,'Enf. Otávio Ferreira',4,32),(14,'Enf. Paula Rodrigues',4,32),(15,'Enf. Quentin Barbosa',4,32),(16,'Enf. Regina Cardoso',26,35),(17,'Enf. Sérgio Dias',26,35),(18,'Enf. Tânia Moreira',26,35),(19,'Enf. Ubirajara Castro',8,36),(20,'Enf. Vanessa Ramos',8,36),(21,'Enf. William Moura',8,36),(22,'Enf. Ximena Lopes',2,30),(23,'Enf. Yuri Teixeira',2,30),(24,'Enf. Zélia Correia',6,34),(25,'Enf. Alice Andrade',6,34),(26,'Enf. Bernardo Pires',14,41),(27,'Enf. Cíntia Fonseca',14,41),(28,'Enf. João Pedro Silva',1,29),(29,'Enf. Maria Clara Santos',2,30),(30,'Enf. Pedro Henrique Oliveira',3,31),(31,'Enf. Ana Julia Costa',4,32),(32,'Enf. Lucas Almeida',5,33),(33,'Enf. Carla Pereira',6,34),(34,'Enf. Rodrigo Martins',7,35),(35,'Enf. Fernanda Rocha',8,36),(36,'Enf. Marcelo Lima',9,37),(37,'Enf. Patricia Torres',10,38),(38,'Enf. Ricardo Nunes',11,39),(39,'Enf. Juliana Fonseca',13,40),(40,'Enf. Eduardo Santos',14,41),(41,'Enf. Camila Vieira',15,42),(42,'Enf. Antonio Souza',16,43),(43,'Enf. Simone Barbosa',18,44),(44,'Enf. Paulo Ramos',19,45),(45,'Enf. Larissa Correia',20,46),(46,'Enf. Gabriel Lopes',21,47),(47,'Enf. Renata Duarte',22,48),(48,'Enf. Leonardo Cardoso',23,49),(49,'Enf. Tatiane Teixeira',24,50),(50,'Enf. Fabio Reis',25,51),(51,'Enf. Mariana Santana',26,52),(52,'Enf. Sergio Moura',28,53),(53,'Enf. Vanessa Andrade',29,54),(54,'Enf. Bruno Castro',1,55),(55,'Enf. Amanda Fernandes',30,56),(56,'Enf. Diego Nascimento',2,30),(57,'Enf. Carolina Silva',4,32);
/*!40000 ALTER TABLE `enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento` (
  `equipamento_id` int NOT NULL AUTO_INCREMENT,
  `fornecedor_id` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `departamento_id` int NOT NULL,
  `quantidade_estoque` int NOT NULL,
  PRIMARY KEY (`equipamento_id`),
  KEY `fornecedor_id_idx` (`fornecedor_id`),
  KEY `departamento_id_equipamento_idx` (`departamento_id`),
  CONSTRAINT `fk_departamento_id_equi` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`),
  CONSTRAINT `fk_fornecedor_id_equi` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`fornecedor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` VALUES (1,1,'Monitor Multiparamétrico MX800','Monitor de sinais vitais com ECG, SpO2, pressão não invasiva e temperatura',1,15),(2,2,'Eletrocardiógrafo de 12 Canais','Aparelho para realização de eletrocardiograma com 12 derivações',2,8),(3,3,'Raio-X Digital Portátil','Sistema de radiografia móvel para exames à beira leito',3,5),(4,4,'Incubadora Neonatal','Incubadora com controle preciso de temperatura e umidade para recém-nascidos',4,12),(5,5,'EEG Digital 32 Canais','Eletroencefalógrafo para exames neurológicos e monitorização cerebral',5,4),(6,6,'Bomba de Infusão de Quimioterapia','Sistema seguro para administração de medicamentos oncológicos',6,10),(7,7,'Mesa Cirúrgica Elétrica','Mesa cirúrgica multifuncional com controles eletrônicos',7,6),(8,8,'Ultrassom Obstétrico','Aparelho de ultrassonografia especializado para acompanhamento gestacional',8,7),(9,9,'Ventilador Pulmonar de UTI','Ventilador mecânico com modos avançados para pacientes críticos',9,8),(10,10,'Desfibrilador com Monitor','Desfibrilador manual com monitor cardíaco integrado para emergências',10,9),(11,11,'Tomógrafo Computadorizado','Equipamento de tomografia computadorizada de 64 cortes',11,2),(12,12,'Analisador Hematológico','Analisador automatizado para hemograma completo e contagem celular',12,3),(13,13,'Laser Terapêutico','Equipamento de laserterapia para tratamento de dor e inflamação',13,6),(14,14,'Eletroconvulsoterapia','Aparelho para terapia eletroconvulsiva controlada',14,2),(15,15,'Lâmpada de Fenda Digital','Microscópio oftalmológico com captura de imagens digitais',15,5),(16,16,'Dermatoscópio Digital','Aparelho para análise dermatológica com aumento e documentação',16,4),(17,17,'Videoendoscópio Flexível','Endoscópio de fibra óptica para exames otorrinolaringológicos',17,3),(18,18,'Bomba de Insulina','Sistema de infusão contínua de insulina para pacientes diabéticos',18,15),(19,19,'Colonoscópio HD','Endoscópio de alta definição para exames colorretais',19,4),(20,20,'Máquina de Hemodiálise','Equipamento para realização de diálise renal',20,6),(21,21,'Urofluxômetro','Aparelho para medição do fluxo urinário',21,3),(22,22,'Espirômetro Computadorizado','Equipamento para testes de função pulmonar',22,5),(23,23,'Densitômetro Ósseo','Aparelho para medição da densidade mineral óssea',23,2),(24,24,'Microscópio de Fluorescência','Microscópio especializado para hematologia e imunologia',24,3),(25,25,'Biossegurança Nível 2','Cabine de segurança biológica para manipulação de amostras',25,4),(26,26,'Máquina de Anestesia','Sistema completo de anestesia inalatória com ventilador',26,8),(27,27,'Autoclave de Grande Porte','Esterilizador a vapor para materiais cirúrgicos',27,5),(28,28,'Unidade de Fototerapia','Sistema de luz para tratamento de icterícia neonatal',28,10),(29,29,'Câmara Hiperbárica','Sistema de oxigenoterapia hiperbárica para queimaduras',29,1),(30,30,'Ecocardiógrafo com Doppler','Ultrassom cardíaco especializado com Doppler colorido',30,3),(31,31,'Arco Cirúrgico C-Arm','Sistema de raio-X móvel para cirurgias ortopédicas',26,4),(32,32,'Laser Cirúrgico','Sistema de laser para cirurgias dermatológicas e oftalmológicas',26,3),(33,33,'Bisturi Elétrico','Equipamento para eletrocirurgia com diferentes modos de corte',26,12),(34,34,'Videolaparoscópio','Sistema completo para cirurgia minimamente invasiva',26,5),(35,35,'Máquina de Circulação Extracorpórea','Sistema de bypass cardiopulmonar para cirurgias cardíacas',26,2),(36,36,'Neuro Navegador','Sistema de navegação computadorizada para neurocirurgia',26,2),(37,37,'Motosserra Cirúrgica','Serra oscilatória para procedimentos ortopédicos',26,6),(38,38,'Aspirador Cirúrgico','Sistema de aspiração para limpeza de campo cirúrgico',26,15),(39,39,'Mamógrafo Digital','Sistema de mamografia digital com tomossíntese',11,3),(40,40,'Ressonância Magnética 1.5T','Equipamento de ressonância magnética de alto campo',11,1),(41,41,'Holter 24 Horas','Sistema de monitorização cardíaca ambulatorial',2,8),(42,42,'Mapa Pressão Arterial','Monitor de pressão arterial de 24 horas',2,10),(43,43,'Polissonógrafo','Sistema completo para estudo do sono',5,4),(44,44,'Teste Ergométrico Computadorizado','Esteira ergométrica com análise computadorizada',2,3),(45,45,'Ultrassom com Doppler','Aparelho de ultrassonografia com Doppler vascular',11,6),(46,46,'Endoscópio de Alta Definição','Sistema de endoscopia digestiva com imagem HD',19,4),(47,47,'Colposcópio Digital','Aparelho para exames ginecológicos com ampliação',8,3),(48,48,'Audiômetro Clínico','Equipamento para exames de audiometria tonal e vocal',17,4),(49,49,'Campímetro Computadorizado','Aparelho para exame de campo visual em oftalmologia',15,3),(50,50,'Posturografo','Sistema para avaliação do equilíbrio e postura',13,2);
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento_cirurgia`
--

DROP TABLE IF EXISTS `equipamento_cirurgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento_cirurgia` (
  `cirurgia_id` int NOT NULL,
  `equipamento_id` int NOT NULL,
  PRIMARY KEY (`cirurgia_id`,`equipamento_id`),
  KEY `fk_equipamento_cirurgia_id_idx` (`equipamento_id`),
  KEY `fk_cirurgia_id_idx` (`cirurgia_id`),
  CONSTRAINT `fk_cirurgia_id` FOREIGN KEY (`cirurgia_id`) REFERENCES `cirurgia` (`cirurgia_id`),
  CONSTRAINT `fk_equipamento_cirurgia_id` FOREIGN KEY (`equipamento_id`) REFERENCES `equipamento` (`equipamento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento_cirurgia`
--

LOCK TABLES `equipamento_cirurgia` WRITE;
/*!40000 ALTER TABLE `equipamento_cirurgia` DISABLE KEYS */;
INSERT INTO `equipamento_cirurgia` VALUES (7,23),(8,23),(9,23),(10,23),(11,23),(12,23),(15,23),(56,23),(7,24),(8,24),(9,24),(10,24),(11,24),(12,24),(56,24),(9,25),(1,31),(2,31),(3,31),(4,31),(5,31),(6,31),(37,31),(38,31),(55,31),(65,31),(19,32),(20,32),(21,32),(22,32),(23,32),(24,32),(30,32),(31,32),(49,32),(50,32),(52,32),(58,32),(63,32),(2,33),(3,33),(5,33),(13,33),(14,33),(15,33),(16,33),(17,33),(18,33),(25,33),(26,33),(27,33),(28,33),(29,33),(31,33),(32,33),(33,33),(34,33),(35,33),(36,33),(37,33),(38,33),(39,33),(40,33),(41,33),(42,33),(43,33),(44,33),(45,33),(46,33),(47,33),(48,33),(49,33),(50,33),(51,33),(52,33),(53,33),(54,33),(57,33),(59,33),(60,33),(61,33),(62,33),(63,33),(64,33),(13,34),(14,34),(17,34),(25,34),(26,34),(29,34),(43,34),(45,34),(57,34),(59,34),(61,34),(64,34),(37,36),(38,36),(39,36),(40,36),(41,36),(42,36),(60,36),(1,37),(2,37),(3,37),(4,37),(6,37),(55,37),(65,37),(1,38),(3,38),(13,38),(15,38),(16,38),(18,38),(19,38),(20,38),(22,38),(24,38),(25,38),(27,38),(28,38),(30,38),(31,38),(32,38),(33,38),(34,38),(35,38),(36,38),(37,38),(38,38),(39,38),(40,38),(41,38),(42,38),(43,38),(44,38),(45,38),(46,38),(47,38),(48,38),(51,38),(53,38),(54,38),(58,38),(62,38);
/*!40000 ALTER TABLE `equipamento_cirurgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade_enfermeiro`
--

DROP TABLE IF EXISTS `especialidade_enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade_enfermeiro` (
  `especialidade_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`especialidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade_enfermeiro`
--

LOCK TABLES `especialidade_enfermeiro` WRITE;
/*!40000 ALTER TABLE `especialidade_enfermeiro` DISABLE KEYS */;
INSERT INTO `especialidade_enfermeiro` VALUES (29,'Enfermeiro Geral','Profissional com formação generalista que atua em diversos setores do hospital'),(30,'Enfermeiro Cardiologista','Especialista em cuidados de enfermagem para pacientes cardíacos e pós-operatórios cardíacos'),(31,'Enfermeiro Ortopedista','Especialista em cuidados com pacientes ortopédicos, imobilizações e pós-operatório'),(32,'Enfermeiro Pediátrico','Especialista em cuidados de enfermagem adaptados para crianças e adolescentes'),(33,'Enfermeiro Neurologista','Profissional especializado em cuidados com pacientes neurológicos e neurocirúrgicos'),(34,'Enfermeiro Oncológico','Especialista em cuidados paliativos e administração de quimioterapia'),(35,'Enfermeiro de Centro Cirúrgico','Profissional especializado em salas de cirurgia, instrumentação e cuidados intraoperatórios'),(36,'Enfermeiro Obstétrico','Especialista em cuidados com gestantes, parturientes e recém-nascidos'),(37,'Enfermeiro Intensivista','Profissional especializado em cuidados críticos em UTI e monitoramento de pacientes graves'),(38,'Enfermeiro de Urgência e Emergência','Especialista em atendimento de emergência, trauma e situações críticas'),(39,'Enfermeiro de Diagnóstico por Imagem','Profissional que atua em setores de radiologia preparando pacientes para exames'),(40,'Enfermeiro de Fisioterapia','Especialista em auxiliar procedimentos de reabilitação e cuidados com mobilidade'),(41,'Enfermeiro Psiquiátrico','Profissional especializado em saúde mental e cuidados com pacientes psiquiátricos'),(42,'Enfermeiro Oftalmologista','Especialista em cuidados com pacientes oftalmológicos e pós-operatórios oculares'),(43,'Enfermeiro Dermatologista','Profissional especializado em cuidados com lesões de pele e curativos especiais'),(44,'Enfermeiro de Endocrinologia','Especialista em cuidados com pacientes diabéticos e distúrbios metabólicos'),(45,'Enfermeiro Gastroenterologista','Profissional especializado em cuidados com pacientes gastrointestinais e procedimentos endoscópicos'),(46,'Enfermeiro Nefrologista','Especialista em cuidados com pacientes renais crônicos e sessões de hemodiálise'),(47,'Enfermeiro de Urologia','Profissional especializado em cuidados urológicos e procedimentos do trato urinário'),(48,'Enfermeiro Pneumologista','Especialista em cuidados com pacientes respiratórios e uso de ventilação mecânica'),(49,'Enfermeiro de Reumatologia','Profissional especializado em cuidados com pacientes reumáticos e doenças autoimunes'),(50,'Enfermeiro de Hematologia','Especialista em cuidados com pacientes hematológicos e transfusões sanguíneas'),(51,'Enfermeiro de Infectologia','Profissional especializado em controle de infecção e cuidados com doenças infectocontagiosas'),(52,'Enfermeiro de Material e Esterilização','Especialista em processamento de materiais cirúrgicos e controle de esterilização'),(53,'Enfermeiro de Transplantes','Profissional especializado em cuidados com pacientes transplantados e coordenação de transplantes'),(54,'Enfermeiro de Queimados','Especialista em cuidados com pacientes queimados e tratamento de feridas complexas'),(55,'Enfermeiro de Saúde da Família','Profissional especializado em atenção primária e cuidados comunitários'),(56,'Enfermeiro de Saúde Ocupacional','Especialista em saúde do trabalhador e medicina ocupacional');
/*!40000 ALTER TABLE `especialidade_enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade_medico`
--

DROP TABLE IF EXISTS `especialidade_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade_medico` (
  `especialidade_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  PRIMARY KEY (`especialidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade_medico`
--

LOCK TABLES `especialidade_medico` WRITE;
/*!40000 ALTER TABLE `especialidade_medico` DISABLE KEYS */;
INSERT INTO `especialidade_medico` VALUES (1,'Clínico Geral','Médico com formação generalista que atende casos diversos e encaminha para especialistas quando necessário'),(2,'Cardiologista','Especialista no diagnóstico e tratamento de doenças do coração e sistema cardiovascular'),(3,'Ortopedista e Traumatologista','Especialista em doenças e lesões do sistema musculoesquelético, fraturas e problemas articulares'),(4,'Pediatra','Médico especializado na saúde de crianças e adolescentes, do nascimento até os 18 anos'),(5,'Neurologista','Especialista em doenças do sistema nervoso central e periférico, incluindo cérebro, medula e nervos'),(6,'Oncologista','Médico especializado no diagnóstico e tratamento do câncer, incluindo quimioterapia e acompanhamento'),(7,'Cirurgião Geral','Especialista em procedimentos cirúrgicos de diversas naturezas e complexidades'),(8,'Ginecologista e Obstetra','Especialista na saúde da mulher, incluindo sistema reprodutor, gestação e parto'),(9,'Intensivista','Médico especializado no atendimento de pacientes graves em unidades de terapia intensiva'),(10,'Médico de Urgência','Profissional capacitado para atendimento em pronto-socorro e situações de emergência'),(11,'Radiologista','Especialista em interpretação de exames de imagem como raio-X, tomografia e ressonância'),(12,'Fisiatra','Médico especializado em medicina física e reabilitação, coordenando tratamentos de recuperação'),(13,'Psiquiatra','Especialista em diagnóstico e tratamento de doenças mentais e distúrbios psicológicos'),(14,'Oftalmologista','Médico especializado em doenças dos olhos e correção de problemas visuais'),(15,'Dermatologista','Especialista em diagnóstico e tratamento de doenças da pele, cabelos e unhas'),(16,'Otorrinolaringologista','Especialista em doenças de ouvido, nariz, garganta e estruturas relacionadas'),(17,'Endocrinologista','Médico especializado em distúrbios hormonais e metabólicos, como diabetes e tireoide'),(18,'Gastroenterologista','Especialista em doenças do sistema digestório, incluindo estômago, intestinos e fígado'),(19,'Nefrologista','Médico especializado em doenças renais e tratamento com hemodiálise'),(20,'Urologista','Especialista em doenças do sistema urinário e aparelho reprodutor masculino'),(21,'Pneumologista','Especialista em doenças respiratórias e pulmonares, como asma e DPOC'),(22,'Reumatologista','Médico especializado em doenças autoimunes e articulares, como artrite e lúpus'),(23,'Hematologista','Especialista em doenças do sangue, medula óssea e distúrbios de coagulação'),(24,'Infectologista','Médico especializado em doenças infecciosas, tropicais e uso de antibióticos'),(25,'Anestesiologista','Especialista em administração de anestésicos e cuidados perioperatórios'),(26,'Patologista','Médico especializado em análise de tecidos e fluidos para diagnóstico de doenças'),(27,'Médico de Família e Comunidade','Especialista em atenção primária e cuidado continuado da saúde familiar');
/*!40000 ALTER TABLE `especialidade_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exame`
--

DROP TABLE IF EXISTS `exame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exame` (
  `exame_id` int NOT NULL AUTO_INCREMENT,
  `departamento_id` int NOT NULL,
  `medico_id` int DEFAULT NULL,
  `paciente_id` int NOT NULL,
  `enfermeiro_id` int DEFAULT NULL,
  `data` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `horario` time NOT NULL,
  PRIMARY KEY (`exame_id`),
  KEY `medico_id_idx` (`medico_id`),
  KEY `paciente_id_idx` (`paciente_id`),
  KEY `enfermeiro_id_exame_idx` (`enfermeiro_id`),
  KEY `fk_departamento_id_exa_idx` (`departamento_id`),
  CONSTRAINT `fk_departamento_id_exa` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`),
  CONSTRAINT `fk_enfermeiro_id_exa` FOREIGN KEY (`enfermeiro_id`) REFERENCES `enfermeiro` (`enfermeiro_id`),
  CONSTRAINT `fk_medico_id_exa` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`medico_id`),
  CONSTRAINT `fk_paciente_id_exa` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exame`
--

LOCK TABLES `exame` WRITE;
/*!40000 ALTER TABLE `exame` DISABLE KEYS */;
INSERT INTO `exame` VALUES (1,2,2,5,NULL,'2024-01-15','Realizado','08:30:00'),(2,2,28,9,NULL,'2024-01-15','Realizado','09:15:00'),(3,2,2,15,NULL,'2024-01-15','Realizado','10:00:00'),(4,2,28,21,NULL,'2024-01-15','Realizado','11:00:00'),(5,2,2,27,NULL,'2024-01-16','Realizado','08:30:00'),(6,2,28,33,NULL,'2024-01-16','Realizado','09:45:00'),(7,3,3,8,NULL,'2024-01-16','Realizado','14:00:00'),(8,3,29,14,NULL,'2024-01-16','Realizado','15:30:00'),(9,3,3,19,NULL,'2024-01-17','Realizado','08:00:00'),(10,3,29,24,NULL,'2024-01-17','Realizado','10:15:00'),(11,3,3,29,NULL,'2024-01-17','Realizado','11:30:00'),(12,3,29,35,NULL,'2024-01-17','Realizado','14:45:00'),(13,4,4,2,NULL,'2024-01-18','Realizado','08:30:00'),(14,4,30,6,NULL,'2024-01-18','Realizado','10:00:00'),(15,4,4,11,NULL,'2024-01-18','Realizado','11:15:00'),(16,4,30,17,NULL,'2024-01-18','Realizado','14:00:00'),(17,4,4,23,NULL,'2024-01-19','Realizado','09:30:00'),(18,4,30,28,NULL,'2024-01-19','Realizado','11:00:00'),(19,5,5,10,NULL,'2024-01-19','Realizado','14:30:00'),(20,5,5,16,NULL,'2024-01-22','Realizado','08:15:00'),(21,5,5,22,NULL,'2024-01-22','Realizado','10:45:00'),(22,5,5,26,NULL,'2024-01-22','Realizado','11:30:00'),(23,5,5,32,NULL,'2024-01-23','Realizado','09:00:00'),(24,5,5,38,NULL,'2024-01-23','Realizado','10:30:00'),(25,15,14,12,NULL,'2024-01-23','Realizado','14:00:00'),(26,15,14,24,NULL,'2024-01-24','Realizado','08:45:00'),(27,15,14,33,NULL,'2024-01-24','Realizado','10:15:00'),(28,15,14,40,NULL,'2024-01-24','Realizado','11:45:00'),(29,15,14,46,NULL,'2024-01-25','Realizado','09:30:00'),(30,15,14,50,NULL,'2024-01-25','Realizado','11:00:00'),(31,16,15,15,NULL,'2024-01-25','Realizado','14:15:00'),(32,16,15,26,NULL,'2024-01-26','Realizado','08:30:00'),(33,16,15,35,NULL,'2024-01-26','Realizado','10:00:00'),(34,16,15,43,NULL,'2024-01-26','Realizado','11:30:00'),(35,16,15,47,NULL,'2024-01-29','Realizado','09:15:00'),(36,16,15,52,NULL,'2024-01-29','Realizado','10:45:00'),(37,18,17,20,NULL,'2024-01-29','Realizado','14:30:00'),(38,18,17,29,NULL,'2024-01-30','Realizado','08:00:00'),(39,18,17,37,NULL,'2024-01-30','Realizado','09:45:00'),(40,18,17,44,NULL,'2024-01-30','Realizado','11:15:00'),(41,18,17,48,NULL,'2024-01-31','Realizado','08:30:00'),(42,18,17,53,NULL,'2024-01-31','Realizado','10:00:00'),(43,19,18,22,NULL,'2024-01-31','Realizado','11:45:00'),(44,19,18,32,NULL,'2024-02-01','Realizado','08:15:00'),(45,19,18,41,NULL,'2024-02-01','Realizado','09:30:00'),(46,19,18,49,NULL,'2024-02-01','Realizado','11:00:00'),(47,19,18,51,NULL,'2024-02-02','Realizado','08:45:00'),(48,19,18,55,NULL,'2024-02-02','Realizado','10:30:00'),(49,22,21,28,NULL,'2024-02-02','Realizado','14:00:00'),(50,22,21,36,NULL,'2024-02-05','Realizado','08:30:00'),(51,22,21,42,NULL,'2024-02-05','Realizado','10:15:00'),(52,22,21,50,NULL,'2024-02-05','Realizado','11:45:00'),(53,22,21,53,NULL,'2024-02-06','Realizado','09:00:00'),(54,22,21,58,NULL,'2024-02-06','Realizado','10:30:00'),(55,2,2,60,NULL,'2024-02-07','Agendado','08:00:00'),(56,3,3,62,NULL,'2024-02-07','Agendado','09:30:00'),(57,4,4,65,NULL,'2024-02-07','Agendado','11:00:00'),(58,5,5,68,NULL,'2024-02-08','Agendado','08:45:00'),(59,15,14,70,NULL,'2024-02-08','Agendado','10:15:00'),(60,16,15,72,NULL,'2024-02-08','Agendado','11:45:00'),(61,1,NULL,3,1,'2024-01-15','Realizado','13:30:00'),(62,1,NULL,7,27,'2024-01-15','Realizado','14:15:00'),(63,1,NULL,12,1,'2024-01-15','Realizado','15:00:00'),(64,1,NULL,18,27,'2024-01-16','Realizado','13:30:00'),(65,1,NULL,25,1,'2024-01-16','Realizado','14:45:00'),(66,1,NULL,31,27,'2024-01-16','Realizado','15:30:00'),(67,2,NULL,5,2,'2024-01-17','Realizado','08:00:00'),(68,2,NULL,9,29,'2024-01-17','Realizado','09:15:00'),(69,2,NULL,15,2,'2024-01-17','Realizado','10:30:00'),(70,2,NULL,21,29,'2024-01-18','Realizado','08:45:00'),(71,2,NULL,27,2,'2024-01-18','Realizado','10:00:00'),(72,2,NULL,33,29,'2024-01-18','Realizado','11:15:00'),(73,3,NULL,8,3,'2024-01-19','Realizado','13:00:00'),(74,3,NULL,14,30,'2024-01-19','Realizado','14:30:00'),(75,3,NULL,19,3,'2024-01-22','Realizado','13:45:00'),(76,3,NULL,24,30,'2024-01-22','Realizado','15:00:00'),(77,3,NULL,29,3,'2024-01-23','Realizado','13:15:00'),(78,3,NULL,35,30,'2024-01-23','Realizado','14:45:00'),(79,4,NULL,2,4,'2024-01-24','Realizado','08:30:00'),(80,4,NULL,6,30,'2024-01-24','Realizado','10:00:00'),(81,4,NULL,11,4,'2024-01-24','Realizado','11:30:00'),(82,4,NULL,17,30,'2024-01-25','Realizado','08:45:00'),(83,4,NULL,23,4,'2024-01-25','Realizado','10:15:00'),(84,4,NULL,28,30,'2024-01-25','Realizado','11:45:00'),(85,9,NULL,10,9,'2024-01-26','Realizado','13:00:00'),(86,9,NULL,16,10,'2024-01-26','Realizado','14:30:00'),(87,9,NULL,22,9,'2024-01-29','Realizado','13:45:00'),(88,9,NULL,26,10,'2024-01-29','Realizado','15:00:00'),(89,9,NULL,32,9,'2024-01-30','Realizado','13:15:00'),(90,9,NULL,38,10,'2024-01-30','Realizado','14:45:00'),(91,10,NULL,12,10,'2024-01-31','Realizado','08:00:00'),(92,10,NULL,24,11,'2024-01-31','Realizado','09:30:00'),(93,10,NULL,33,10,'2024-01-31','Realizado','11:00:00'),(94,10,NULL,40,11,'2024-02-01','Realizado','08:45:00'),(95,10,NULL,46,10,'2024-02-01','Realizado','10:15:00'),(96,10,NULL,50,11,'2024-02-01','Realizado','11:45:00'),(97,14,NULL,9,13,'2024-02-02','Realizado','13:30:00'),(98,14,NULL,21,14,'2024-02-02','Realizado','14:45:00'),(99,14,NULL,27,13,'2024-02-05','Realizado','13:00:00'),(100,14,NULL,39,14,'2024-02-05','Realizado','14:30:00'),(101,14,NULL,45,13,'2024-02-05','Realizado','15:45:00'),(102,14,NULL,51,14,'2024-02-06','Realizado','13:15:00'),(103,15,NULL,12,14,'2024-02-06','Realizado','14:45:00'),(104,15,NULL,24,14,'2024-02-07','Realizado','13:30:00'),(105,15,NULL,33,14,'2024-02-07','Realizado','15:00:00'),(106,15,NULL,40,14,'2024-02-08','Realizado','13:45:00'),(107,15,NULL,46,14,'2024-02-08','Realizado','15:15:00'),(108,15,NULL,52,14,'2024-02-09','Realizado','14:00:00'),(109,16,NULL,15,15,'2024-02-09','Realizado','15:30:00'),(110,16,NULL,26,15,'2024-02-12','Realizado','13:00:00'),(111,16,NULL,35,15,'2024-02-12','Realizado','14:30:00'),(112,16,NULL,43,15,'2024-02-12','Realizado','15:45:00'),(113,16,NULL,47,15,'2024-02-13','Realizado','13:15:00'),(114,16,NULL,54,15,'2024-02-13','Realizado','14:45:00'),(115,18,NULL,20,16,'2024-02-13','Realizado','16:00:00'),(116,18,NULL,29,16,'2024-02-14','Realizado','13:30:00'),(117,18,NULL,37,16,'2024-02-14','Realizado','14:45:00'),(118,18,NULL,44,16,'2024-02-14','Realizado','16:15:00'),(119,18,NULL,48,16,'2024-02-15','Realizado','13:00:00'),(120,18,NULL,53,16,'2024-02-15','Realizado','14:30:00'),(121,1,NULL,55,1,'2024-02-15','Agendado','15:45:00'),(122,2,NULL,60,2,'2024-02-16','Agendado','13:30:00'),(123,3,NULL,65,3,'2024-02-16','Agendado','15:00:00'),(124,4,NULL,70,4,'2024-02-19','Agendado','13:45:00'),(125,9,NULL,75,9,'2024-02-19','Agendado','15:15:00'),(126,10,NULL,80,10,'2024-02-19','Agendado','16:30:00');
/*!40000 ALTER TABLE `exame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `fornecedor_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `cidade` varchar(80) NOT NULL,
  `pais` varchar(45) NOT NULL,
  PRIMARY KEY (`fornecedor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'GE Healthcare','9900 Innovation Campus Drive','Cincinnati','Estados Unidos'),(2,'Siemens Healthineers','Henkestr. 127','Erlangen','Alemanha'),(3,'Philips Medical Systems','Amstelplein 2','Amsterdã','Holanda'),(4,'Medtronic','710 Medtronic Parkway','Minneapolis','Estados Unidos'),(5,'Fresenius Medical Care','Else-Kröner-Straße 1','Bad Homburg','Alemanha'),(6,'Becton Dickinson','1 Becton Drive','Franklin Lakes','Estados Unidos'),(7,'Roche Diagnostics','Grenzacherstrasse 124','Basileia','Suíça'),(8,'Abbott Laboratories','100 Abbott Park Road','Chicago','Estados Unidos'),(9,'Boston Scientific','300 Boston Scientific Way','Marlborough','Estados Unidos'),(10,'Stryker','2825 Airview Boulevard','Kalamazoo','Estados Unidos'),(11,'Dabi Atlante','Rua Dabi Atlante, 700','Ribeirão Preto','Brasil'),(12,'Fanem','Rua Sampaio Viana, 256','São Paulo','Brasil'),(13,'Getinge Group','Gullbergs Strandgata 10','Gotemburgo','Suécia'),(14,'Draeger Medical','Moislinger Allee 53-55','Lübeck','Alemanha'),(15,'Mindray Medical','Keji 12th Road South','Shenzhen','China'),(16,'Samsung Medison','26, Gwanpyeong-ro 124 beon-gil','Seul','Coreia do Sul'),(17,'Shimadzu Corporation','1, Nishinokyo-Kuwabara-cho','Quioto','Japão'),(18,'Toshiba Medical Systems','1385 Shimoishigami','Otawara','Japão'),(19,'Hitachi Medical','1-2-10 Uchikanda','Tóquio','Japão'),(20,'Canon Medical Systems','Otawara-shi, Tochigi-ken 324-8550','Otawara','Japão'),(21,'Fukuda Denshi','1-9-9 Nishi-shinjuku','Tóquio','Japão'),(22,'Nihon Kohden','1-31-4 Nishiochiai','Tóquio','Japão'),(23,'Maquet','Kehler Str. 31','Rastatt','Alemanha'),(24,'B. Braun','Carl-Braun-Strasse 1','Melsungen','Alemanha'),(25,'Baxter International','One Baxter Parkway','Deerfield','Estados Unidos'),(26,'Fresenius Kabi','Else-Kröner-Straße 1','Bad Homburg','Alemanha'),(27,'Terumo Corporation','2-44-1 Hatagaya','Tóquio','Japão'),(28,'Olympus Medical Systems','2951 Ishikawa-cho','Tóquio','Japão'),(29,'Smith & Nephew','Building 5, First Floor','Watford','Reino Unido'),(30,'Zimmer Biomet','345 East Main Street','Warsaw','Estados Unidos'),(31,'Alcon Laboratories','Rte de l Aire 1','Genebra','Suíça'),(32,'Hill-Rom','130 East Randolph Street','Chicago','Estados Unidos'),(33,'St. Jude Medical','One St. Jude Medical Drive','Saint Paul','Estados Unidos'),(34,'Varian Medical Systems','3100 Hansen Way','Palo Alto','Estados Unidos'),(35,'Elektra','Kungsgatan 32','Estocolmo','Suécia'),(36,'Drägerwerk AG','Moislinger Allee 53-55','Lübeck','Alemanha'),(37,'Synthes GmbH','Grenzacherstrasse 124','Solothurn','Suíça'),(38,'Karl Storz GmbH','Dr.-Karl-Storz-Strasse 34','Tuttlingen','Alemanha'),(39,'Richard Wolf GmbH','Pforzheimer Strasse 32','Knittlingen','Alemanha'),(40,'SonoSite','21919 30th Drive SE','Bothell','Estados Unidos'),(41,'Edwards Lifesciences','One Edwards Way','Irvine','Estados Unidos'),(42,'Intuitive Surgical','1020 Kifer Road','Sunnyvale','Estados Unidos'),(43,'ResMed','9001 Spectrum Center Boulevard','San Diego','Estados Unidos'),(44,'Masimo Corporation','52 Discovery','Irvine','Estados Unidos'),(45,'Vyaire Medical','26125 North Riverwoods Boulevard','Chicago','Estados Unidos'),(46,'Hamilton Medical','Via Crusch 8','Bonaduz','Suíça'),(47,'Maquet Critical Care','1710 W. I-65 Service Road S','Mobile','Estados Unidos'),(48,'Natus Medical','3150 Pleasant View Road','Middleton','Estados Unidos'),(49,'Neurosoft','ul. Sovetskaya, 15','Ivanovo','Rússia'),(50,'Mediana','115-1, Jikdong-ro','Wonju','Coreia do Sul'),(51,'Comen','No. 888, Yishan Road','Xangai','China'),(52,'BPL Medical Technologies','14-B, Institutional Area','Nova Delhi','Índia'),(53,'Skanray Technologies','Plot No. 272-P2','Mysore','Índia'),(54,'WEG Hospitalar','Rua Alfredo Nasser, 200','Jaraguá do Sul','Brasil'),(55,'Kolin','Av. Ceci, 1900','Barueri','Brasil'),(56,'MultEquip','Rua José Benedetti, 55','São Paulo','Brasil');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento_consulta`
--

DROP TABLE IF EXISTS `medicamento_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento_consulta` (
  `consulta_id` int NOT NULL,
  `medicamento_estoque_id` int NOT NULL,
  `quantidade` int NOT NULL,
  `observação` varchar(150) NOT NULL,
  PRIMARY KEY (`consulta_id`,`medicamento_estoque_id`),
  KEY `fk_exame_medicamento_id_idx` (`consulta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento_consulta`
--

LOCK TABLES `medicamento_consulta` WRITE;
/*!40000 ALTER TABLE `medicamento_consulta` DISABLE KEYS */;
INSERT INTO `medicamento_consulta` VALUES (1,1,2,'Tomar 1 comprimido de 6 em 6 horas para dor e febre'),(1,2,1,'Associar com anti-inflamatório se dor persistir'),(1,3,1,'Tomar 1 comprimido de 12 em 12 horas por 7 dias'),(2,2,2,'Tomar 1 comprimido de 8 em 8 horas para inflamação'),(3,4,1,'Tomar 1 comprimido de 6 em 6 horas se necessário'),(4,1,1,'Tomar 1 comprimido apenas em caso de febre'),(5,3,1,'Antibiótico para infecção urinária'),(7,5,3,'Tomar 1 comprimido ao dia - uso contínuo'),(7,8,1,'Associar betabloqueador com AAS'),(8,6,2,'Tomar 1 comprimido à noite'),(9,7,3,'Tomar 1 comprimido pela manhã'),(10,8,2,'Tomar 1 comprimido de 12 em 12 horas'),(11,9,2,'Tomar 1 comprimido ao dia'),(12,5,3,'Aspirina para prevenção cardiovascular'),(13,10,2,'Tomar 1 comprimido de 8 em 8 horas por 7 dias'),(13,13,1,'Relaxante muscular associado ao anti-inflamatório'),(14,11,1,'Tomar 1 comprimido ao dia por 5 dias - corticoide'),(15,12,2,'Tomar 1 comprimido de 8 em 8 horas se necessário para dor'),(16,13,2,'Tomar 1 comprimido de 12 em 12 horas para relaxamento muscular'),(17,10,3,'Anti-inflamatório para artrose - uso prolongado'),(18,12,1,'Analgésico para dor pós-fratura'),(19,14,1,'Xarope - usar conforme peso da criança'),(20,15,1,'Antibiótico suspensão - 7ml de 12 em 12 horas'),(21,16,1,'Anti-inflamatório suspensão - 5ml se necessário'),(22,17,1,'Broncodilatador - 3ml de 6 em 6 horas em crises'),(23,14,1,'Antitérmico - 4ml a cada 6 horas se febre'),(24,15,1,'Amoxicilina para otite - 7 dias de tratamento'),(25,18,3,'Tomar 1 comprimido de 8 em 8 horas - anticonvulsivante'),(25,19,1,'Ansiolítico para crise de ansiedade associada'),(26,19,2,'Tomar 0,5 comprimido à noite para ansiedade'),(27,20,2,'Tomar 1 comprimido ao dia - doença de Alzheimer'),(28,21,3,'Tomar 1 comprimido de 8 em 8 horas - dor neuropática'),(29,18,3,'Manutenção epilepsia - 3 meses'),(38,29,1,'Uso obstétrico - conforme orientação médica'),(38,32,1,'TRH associada à gestação'),(39,30,1,'Uso hospitalar - parto'),(40,31,1,'Aplicação intramuscular - 1 dose'),(41,32,3,'Tomar 1 comprimido ao dia - TRH'),(42,29,1,'Indução do trabalho de parto'),(43,46,2,'Tomar 1 comprimido ao dia - antidepressivo'),(43,49,1,'Estabilizador de humor associado ao antidepressivo'),(44,47,3,'Tomar 1 comprimido de 12 em 12 horas - antipsicótico'),(45,48,2,'Tomar 1 comprimido à noite - casos resistentes'),(46,49,3,'Tomar 1 comprimido de 12 em 12 horas - estabilizador de humor'),(47,46,2,'Manutenção depressão - 2 meses'),(48,52,1,'Aplicar 3 vezes ao dia na área afetada'),(49,53,1,'Aplicar 2 vezes ao dia - dermatite'),(50,54,1,'Aplicar uma vez ao dia em verrugas'),(51,52,1,'Pomada antibiótica para impetigo'),(52,53,1,'Creme para eczema - uso tópico'),(53,55,3,'Aplicar 30UI pela manhã - insulina NPH'),(54,56,3,'Tomar 1 comprimido de 12 em 12 horas'),(55,57,2,'Tomar 1 comprimido em jejum'),(56,55,2,'Ajuste de dose - monitorar glicemia'),(57,56,3,'Metformina para diabetes tipo 2'),(58,58,2,'Tomar 1 comprimido ao dia antes do café'),(59,59,2,'Tomar 1 comprimido ao dia - gastrite'),(60,60,3,'Tomar 2 comprimidos de 8 em 8 horas - retocolite'),(61,58,3,'Omeprazol para refluxo - 2 meses'),(62,59,2,'Pantoprazol para úlcera');
/*!40000 ALTER TABLE `medicamento_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento_estoque`
--

DROP TABLE IF EXISTS `medicamento_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento_estoque` (
  `medicamento_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `departamento_id` int NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `quantidade_estoque` int NOT NULL,
  PRIMARY KEY (`medicamento_id`),
  KEY `departamento_id_medicamento_idx` (`departamento_id`),
  CONSTRAINT `departamento_id_medicamento` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento_estoque`
--

LOCK TABLES `medicamento_estoque` WRITE;
/*!40000 ALTER TABLE `medicamento_estoque` DISABLE KEYS */;
INSERT INTO `medicamento_estoque` VALUES (1,'Paracetamol 500mg',1,'Analgésico e antitérmico para dor e febre',1500),(2,'Ibuprofeno 400mg',1,'Anti-inflamatório não esteroidal para dor e inflamação',1200),(3,'Amoxicilina 500mg',1,'Antibiótico de amplo espectro para infecções bacterianas',800),(4,'Dipirona Sódica 500mg',1,'Analgésico e antitérmico para controle da dor',2000),(5,'AAS 100mg',2,'Ácido acetilsalicílico para prevenção de eventos cardiovasculares',2500),(6,'Atorvastatina 20mg',2,'Estatinas para redução do colesterol LDL',1800),(7,'Losartana 50mg',2,'Anti-hipertensivo da classe dos ARA II',2200),(8,'Metoprolol 50mg',2,'Betabloqueador para hipertensão e arritmias',1600),(9,'Enalapril 10mg',2,'Inibidor da ECA para tratamento da hipertensão',1900),(10,'Cetoprofeno 100mg',3,'Anti-inflamatório para dores musculoesqueléticas',1100),(11,'Dexametasona 4mg',3,'Corticosteroide para processos inflamatórios agudos',700),(12,'Tramadol 50mg',3,'Analgésico opioide para dor moderada a severa',900),(13,'Ciclobenzaprina 10mg',3,'Relaxante muscular para espasmos musculares',1300),(14,'Paracetamol Gotas 200mg/ml',4,'Analgésico e antitérmico pediátrico em forma líquida',1800),(15,'Amoxicilina Suspensão 250mg/5ml',4,'Antibiótico pediátrico para infecções bacterianas',1400),(16,'Ibuprofeno Suspensão 100mg/5ml',4,'Anti-inflamatório pediátrico para dor e febre',1600),(17,'Salbutamol Xarope 2mg/5ml',4,'Broncodilatador para crises de asma em crianças',1200),(18,'Carbamazepina 200mg',5,'Anticonvulsivante para epilepsia e neuralgia',800),(19,'Clonazepam 2mg',5,'Benzodiazepínico para ansiedade e distúrbios do sono',950),(20,'Donepezila 10mg',5,'Inibidor da acetilcolinesterase para doença de Alzheimer',600),(21,'Gabapentina 300mg',5,'Anticonvulsivante para dor neuropática',750),(22,'Paclitaxel 30mg',6,'Quimioterápico para tratamento de diversos tipos de câncer',300),(23,'Cisplatina 50mg',6,'Agente antineoplásico para tumores sólidos',250),(24,'Dexametasona 8mg',6,'Corticosteroide para controle de náuseas e inflamação',1200),(25,'Ondansetrona 8mg',6,'Antiemético para controle de náuseas pós-quimioterapia',1500),(26,'Cefazolina 1g',7,'Antibiótico profilático para cirurgias',1800),(27,'Heparina Sódica 5000UI',7,'Anticoagulante para prevenção de trombose',1100),(28,'Ketamina 50mg/ml',7,'Anestésico dissociativo para procedimentos',400),(29,'Propofol 20mg/ml',7,'Anestésico de ação rápida para indução',350),(30,'Misoprostol 200mcg',8,'Prostaglandina para indução do parto e hemorragias',600),(31,'Oxitocina 10UI/ml',8,'Hormônio para indução e aceleração do trabalho de parto',550),(32,'Medroxiprogesterona 150mg',8,'Contraceptivo hormonal injetável',700),(33,'Estradiol 2mg',8,'Terapia de reposição hormonal na menopausa',650),(34,'Noradrenalina 4mg/4ml',9,'Vasopressor para choque séptico e hipotensão',450),(35,'Dopamina 200mg/5ml',9,'Vasopressor para suporte hemodinâmico',500),(36,'Midazolam 15mg/3ml',9,'Sedativo para pacientes em ventilação mecânica',400),(37,'Fentanil 0,1mg/2ml',9,'Analgésico opioide potente para dor aguda',380),(38,'Adrenalina 1mg/ml',10,'Vasopressor para parada cardiorrespiratória',800),(39,'Diazepam 10mg',10,'Benzodiazepínico para crises convulsivas',950),(40,'Morfina 10mg',10,'Analgésico opioide para dor intensa',600),(41,'Naloxona 0,4mg/ml',10,'Antagonista opioide para overdose',550),(42,'Solução de Contraste Iodado',11,'Meio de contraste para exames de tomografia',300),(43,'Gadolínio',11,'Meio de contraste para ressonância magnética',200),(44,'Sulfato de Bário',11,'Contraste para exames radiológicos do trato digestivo',400),(45,'Heparina Sódica 25.000UI',12,'Anticoagulante para coleta de amostras sanguíneas',2000),(46,'EDTA K3',12,'Anticoagulante para hemograma',2500),(47,'Citrato de Sódio',12,'Anticoagulante para exames de coagulação',1800),(48,'Gel de Lidocaína 5%',13,'Anestésico tópico para procedimentos de fisioterapia',1200),(49,'Pomada Anti-inflamatória',13,'Gel para aplicação tópica em processos inflamatórios',1500),(50,'Spray Refrigerante',13,'Crioterapia para alívio de dores musculares',1300),(51,'Sertralina 50mg',14,'Antidepressivo ISRS para depressão e ansiedade',1600),(52,'Risperidona 2mg',14,'Antipsicótico para esquizofrenia e transtornos bipolares',1100),(53,'Clozapina 100mg',14,'Antipsicótico atípico para casos resistentes',500),(54,'Lítio 300mg',14,'Estabilizador de humor para transtorno bipolar',700),(55,'Colírio de Tobramicina',15,'Antibiótico ocular para infecções',1800),(56,'Colírio de Dexametasona',15,'Anti-inflamatório ocular pós-cirurgias',1600),(57,'Lágrima Artificial',15,'Lubrificante ocular para olho seco',2500),(58,'Pomada de Mupirocina 2%',16,'Antibiótico tópico para infecções cutâneas',1900),(59,'Creme de Hidrocortisona 1%',16,'Corticosteroide tópico para dermatites',2200),(60,'Ácido Salicílico 10%',16,'Queratolítico para verrugas e calos',1400),(61,'Spray Nasal de Budesonida',17,'Corticosteroide nasal para rinite alérgica',1700),(62,'Solução Salina Nasal',17,'Lavagem nasal para higiene e congestão',3000),(63,'Ciprofloxacino Gotas Óticas',17,'Antibiótico para otites externas',1600),(64,'Insulina NPH 100UI/ml',18,'Insulina de ação intermediária para diabetes',2000),(65,'Metformina 850mg',18,'Hipoglicemiante oral para diabetes tipo 2',2800),(66,'Levotiroxina 50mcg',18,'Reposição hormonal para hipotireoidismo',2400),(67,'Omeprazol 20mg',19,'Inibidor de bomba de prótons para gastrite e refluxo',3200),(68,'Pantoprazol 40mg',19,'Inibidor de bomba de prótons para úlceras',2900),(69,'Mesalazina 500mg',19,'Anti-inflamatório para doença inflamatória intestinal',1100),(70,'Furosemida 40mg',20,'Diurético de alça para edema e hipertensão',1900),(71,'Espironolactona 25mg',20,'Diurético poupador de potássio',1500),(72,'Sevelamer 800mg',20,'Ligante de fosfato para doença renal crônica',800),(73,'Finasterida 5mg',21,'Inibidor da 5-alfa-redutase para HPB',1300),(74,'Tansulosina 0,4mg',21,'Alfa-bloqueador para sintomas do trato urinário',1700),(75,'Fosfomicina 3g',21,'Antibiótico para infecções urinárias não complicadas',1200),(76,'Budesonida Inalatório',22,'Corticosteroide inalatório para asma e DPOC',1400),(77,'Salbutamol Spray',22,'Broncodilatador de ação rápida para crises asmáticas',2100),(78,'Formoterol 12mcg',22,'Broncodilatador de longa duração para DPOC',1100),(79,'Metotrexato 2,5mg',23,'Imunossupressor para artrite reumatoide',900),(80,'Prednisona 20mg',23,'Corticosteroide para doenças autoimunes',1600),(81,'Cloroquina 250mg',23,'Antimalárico para lúpus e artrite reumatoide',700),(82,'Ferro Sulfato 300mg',24,'Suplemento de ferro para anemias carenciais',1800),(83,'Ácido Fólico 5mg',24,'Suplemento para anemias megaloblásticas',2000),(84,'Vitamina B12 1000mcg',24,'Suplemento para anemia perniciosa',1700),(85,'Meropenem 1g',25,'Antibiótico de amplo espectro para infecções graves',600),(86,'Vancomicina 1g',25,'Antibiótico glicopeptídeo para infecções por MRSA',500),(87,'Oseltamivir 75mg',25,'Antiviral para influenza',900);
/*!40000 ALTER TABLE `medicamento_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `medico_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `departamento_id` int NOT NULL,
  `especialidade_id` int NOT NULL,
  PRIMARY KEY (`medico_id`),
  KEY `especialidade_id_idx` (`especialidade_id`),
  KEY `departamento_id_idx` (`departamento_id`),
  CONSTRAINT `fk_departamento_id_med` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`),
  CONSTRAINT `fk_especialidade_id_med` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade_medico` (`especialidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Dra. Sofia Alencar',1,1),(2,'Dr. Vinicius Montenegro',1,1),(3,'Dra. Laura Pimentel',1,1),(4,'Dr. André Cavalcanti',1,1),(5,'Dra. Isabela Rangel',4,4),(6,'Dr. Thiago Fonseca',4,4),(7,'Dra. Letícia Borba',4,4),(8,'Dr. Hugo Valença',2,2),(9,'Dra. Natália Siqueira',2,2),(10,'Dr. Gustavo Abreu',2,2),(11,'Dra. Raquel Dantas',3,3),(12,'Dr. Fábio Jucá',3,3),(13,'Dra. Daniela Queiroz',3,3),(14,'Dr. Leandro Padilha',10,10),(15,'Dra. Mariana Cortês',10,10),(16,'Dr. Rafael Malheiro',10,10),(17,'Dra. Beatriz Noronha',10,10),(18,'Dr. Samuel Caiado',9,9),(19,'Dra. Viviane Lessa',9,9),(20,'Dr. Caio Evaristo',9,9),(21,'Dra. Priscila Carrilho',8,8),(22,'Dr. Nelson Fiúza',8,8),(23,'Dra. Renata Góis',8,8),(24,'Dr. Arthur Klinger',7,7),(25,'Dra. Mônica Lemos',7,7),(26,'Dr. Victor Pequeno',14,13),(27,'Dra. Eliane Queiroz',14,13),(28,'Dra. Sueli Rios',26,25),(29,'Dr. Marcelo Tavares',26,25),(30,'Dr. Carlos Mendonça',1,1),(31,'Dra. Ana Beatriz Silva',2,2),(32,'Dr. Roberto Almeida',3,3),(33,'Dra. Fernanda Costa',4,4),(34,'Dr. Marcelo Oliveira',5,5),(35,'Dra. Patricia Santos',6,6),(36,'Dr. Ricardo Pereira',7,7),(37,'Dra. Juliana Rocha',8,8),(38,'Dr. Eduardo Lima',9,9),(39,'Dra. Camila Torres',10,10),(40,'Dr. Antonio Nunes',11,11),(41,'Dra. Simone Fonseca',13,12),(42,'Dr. Paulo Henrique',14,13),(43,'Dra. Larissa Martins',15,14),(44,'Dr. Gabriel Souza',16,15),(45,'Dra. Renata Vieira',17,16),(46,'Dr. Leonardo Barbosa',18,17),(47,'Dra. Tatiane Ramos',19,18),(48,'Dr. Fabio Correia',20,19),(49,'Dra. Mariana Lopes',21,20),(50,'Dr. Sergio Duarte',22,21),(51,'Dra. Vanessa Cardoso',23,22),(52,'Dr. Bruno Teixeira',24,23),(53,'Dra. Amanda Reis',25,24),(54,'Dr. Diego Santana',26,25),(55,'Dra. Carolina Moura',27,26),(56,'Dr. Rafael Andrade',1,27),(57,'Dra. Beatriz Castro',2,2),(58,'Dr. Igor Fernandes',3,3),(59,'Dra. Sabrina Nascimento',4,4);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `paciente_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `idade` int NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'João Silva',45,'M','1979-03-15'),(2,'Maria Santos',32,'F','1992-07-22'),(3,'Pedro Oliveira',67,'M','1957-11-08'),(4,'Ana Costa',28,'F','1996-05-30'),(5,'Carlos Pereira',55,'M','1969-09-12'),(6,'Fernanda Lima',41,'F','1983-12-03'),(7,'Ricardo Alves',39,'M','1985-02-18'),(8,'Juliana Rodrigues',24,'F','2000-08-25'),(9,'Marcos Souza',71,'M','1953-04-17'),(10,'Amanda Ferreira',33,'F','1991-10-09'),(11,'Roberto Martins',48,'M','1976-06-21'),(12,'Patrícia Barbosa',29,'F','1995-01-14'),(13,'Lucas Cardoso',36,'M','1988-03-07'),(14,'Tatiane Rocha',42,'F','1982-11-29'),(15,'Eduardo Dias',58,'M','1966-07-04'),(16,'Cristina Nunes',31,'F','1993-09-16'),(17,'Fábio Moreira',44,'M','1980-12-11'),(18,'Vanessa Castro',27,'F','1997-02-23'),(19,'Sérgio Ramos',63,'M','1961-05-28'),(20,'Daniela Moura',35,'F','1989-08-06'),(21,'Rafael Lopes',52,'M','1972-10-31'),(22,'Larissa Teixeira',26,'F','1998-04-19'),(23,'Bruno Correia',47,'M','1977-06-13'),(24,'Simone Andrade',38,'F','1986-01-27'),(25,'Alexandre Pires',59,'M','1965-03-09'),(26,'Elaine Fonseca',34,'F','1990-07-15'),(27,'Diego Santana',41,'M','1983-12-22'),(28,'Renata Carvalho',30,'F','1994-05-04'),(29,'André Ribeiro',56,'M','1968-08-18'),(30,'Mariana Duarte',25,'F','1999-11-02'),(31,'Paulo Monteiro',49,'M','1975-02-26'),(32,'Carla Mello',37,'F','1987-09-08'),(33,'Leandro Gomes',43,'M','1981-01-20'),(34,'Sandra Reis',32,'F','1992-06-12'),(35,'Maurício Neves',68,'M','1956-04-05'),(36,'Adriana Machado',29,'F','1995-10-24'),(37,'Thiago Barros',45,'M','1979-07-17'),(38,'Isabela Freitas',33,'F','1991-03-30'),(39,'Gustavo Rocha',51,'M','1973-12-14'),(40,'Luciana Peixoto',40,'F','1984-08-07'),(41,'Rodrigo Tavares',46,'M','1978-05-21'),(42,'Viviane Siqueira',31,'F','1993-11-13'),(43,'Hugo Mendes',57,'M','1967-02-09'),(44,'Priscila Brito',28,'F','1996-09-26'),(45,'Felipe Camargo',42,'M','1982-01-15'),(46,'Lorena Vasconcelos',35,'F','1989-04-18'),(47,'Wagner Nascimento',60,'M','1964-07-11'),(48,'Tânia Dantas',39,'F','1985-10-03'),(49,'Igor Medeiros',44,'M','1980-06-28'),(50,'Helena Abreu',27,'F','1997-03-05'),(51,'Otávio Faria',53,'M','1971-08-22'),(52,'Mônica Salgado',36,'F','1988-12-16'),(53,'Leonardo Prado',48,'M','1976-04-09'),(54,'Sueli Bessa',34,'F','1990-07-29'),(55,'Vinícius Caldas',41,'M','1983-02-14'),(56,'Alice Maciel',30,'F','1994-05-27'),(57,'Samuel Quintino',65,'M','1959-09-10'),(58,'Rita Cordeiro',38,'F','1986-11-23'),(59,'Yuri Ximenes',47,'M','1977-01-08'),(60,'Débora Paiva',32,'F','1992-08-01'),(61,'Nathan Pinheiro',54,'M','1970-03-25'),(62,'Cláudia Morais',40,'F','1984-06-18'),(63,'Dennis Soares',45,'M','1979-10-11'),(64,'Laura Falcão',29,'F','1995-12-04'),(65,'Raul Albuquerque',62,'M','1962-04-17'),(66,'Miriam Guimarães',37,'F','1987-07-20'),(67,'Caio Bezerra',50,'M','1974-02-13'),(68,'Natália Sarmento',33,'F','1991-05-06'),(69,'Júlio César',58,'M','1966-08-29'),(70,'Sofia Montenegro',26,'F','1998-01-22'),(71,'Renato Valença',43,'M','1981-09-15'),(72,'Gabriela Lins',31,'F','1993-04-08'),(73,'Douglas Galvão',49,'M','1975-11-01'),(74,'Beatriz Cysne',35,'F','1989-06-24'),(75,'Jorge Marques',66,'M','1958-10-17'),(76,'Lúcia Holanda',42,'F','1982-03-10'),(77,'Gilberto Leite',52,'M','1972-12-03'),(78,'Rosana Padilha',39,'F','1985-07-26'),(79,'Arthur Diniz',44,'M','1980-02-19'),(80,'Cecília Borba',28,'F','1996-05-12'),(81,'Benício Fontes',61,'M','1963-08-05'),(82,'Regina Sampaio',46,'F','1978-11-28'),(83,'Heitor Cabral',53,'M','1971-04-21'),(84,'Liliana Noronha',34,'F','1990-09-14'),(85,'Nicolas Bandeira',47,'M','1977-12-07'),(86,'Yasmin Cortês',25,'F','1999-03-30'),(87,'Osvaldo Azevedo',69,'M','1955-06-23'),(88,'Estela Caiado',36,'F','1988-01-16'),(89,'Cauê Domingues',42,'M','1982-08-09'),(90,'Sabrina Lessa',30,'F','1994-11-02'),(91,'Dalton Evaristo',55,'M','1969-04-25'),(92,'Maya Carrilho',32,'F','1992-07-18'),(93,'Kléber Fiúza',48,'M','1976-10-11'),(94,'Olívia Góis',29,'F','1995-02-04'),(95,'Ubirajara Jucá',64,'M','1960-05-27'),(96,'Perla Klinger',37,'F','1987-08-20'),(97,'Zacarias Lemos',51,'M','1973-01-13'),(98,'Quezia Malheiro',33,'F','1991-04-06'),(99,'Xavier Nóbrega',56,'M','1968-09-29'),(100,'Wanda Oliveira',40,'F','1984-12-22'),(101,'Valter Pequeno',59,'M','1965-03-15'),(102,'Úrsula Queiroz',31,'F','1993-06-08'),(103,'Teodoro Rios',57,'M','1967-11-01');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguro`
--

DROP TABLE IF EXISTS `seguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguro` (
  `seguro_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `porcentagem` decimal(5,2) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `paciente_id` int NOT NULL,
  PRIMARY KEY (`seguro_id`),
  KEY `paciente_id_seguro_idx` (`paciente_id`),
  CONSTRAINT `fk_paciente_id_seg` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguro`
--

LOCK TABLES `seguro` WRITE;
/*!40000 ALTER TABLE `seguro` DISABLE KEYS */;
INSERT INTO `seguro` VALUES (1,'Unimed',100.00,250.00,1),(2,'Amil',100.00,280.00,3),(3,'Bradesco Saúde',100.00,300.00,5),(4,'SulAmérica',100.00,270.00,7),(5,'NotreDame Intermédica',100.00,260.00,9),(6,'Hapvida',90.00,180.00,2),(7,'Prevent Senior',85.00,150.00,4),(8,'Golden Cross',90.00,320.00,6),(9,'Amil One',88.00,290.00,8),(10,'Unimed Fácil',85.00,200.00,10),(11,'Caixa Saúde',75.00,120.00,11),(12,'Geap',70.00,110.00,13),(13,'Cassí',72.00,130.00,15),(14,'Saúde Caixa',75.00,125.00,17),(15,'Postal Saúde',70.00,115.00,19),(16,'Santa Casa Saúde',60.00,90.00,21),(17,'São Cristóvão Saúde',65.00,95.00,23),(18,'Trasmontano Saúde',55.00,85.00,25),(19,'Saúde Bradesco',60.00,100.00,27),(20,'Unimed Nacional',65.00,110.00,29),(21,'Amil 400',50.00,80.00,31),(22,'Hapvida Popular',40.00,70.00,33),(23,'NotreDame Básico',45.00,75.00,35),(24,'SulAmérica Econômico',35.00,65.00,37),(25,'Unimed Simples',30.00,60.00,39),(26,'Unimed',70.00,200.00,41),(27,'Bradesco Complementar',30.00,100.00,41),(28,'Amil',80.00,250.00,42),(29,'Porto Seguro Saúde',15.00,80.00,42),(30,'SulAmérica',75.00,220.00,43),(31,'Allianz Saúde',20.00,90.00,43),(32,'Hapvida',60.00,160.00,44),(33,'Itaú Saúde',25.00,110.00,44),(34,'Golden Cross',85.00,300.00,45),(35,'Marítima Saúde',10.00,70.00,45),(36,'Unimed',100.00,240.00,46),(37,'Amil',90.00,260.00,47),(38,'Bradesco Saúde',95.00,280.00,48),(39,'SulAmérica',100.00,270.00,49),(40,'Hapvida',80.00,170.00,50),(41,'Prevent Senior',85.00,155.00,51),(42,'Golden Cross',92.00,310.00,52),(43,'Caixa Saúde',70.00,115.00,53),(44,'Geap',68.00,105.00,54),(45,'São Cristóvão Saúde',62.00,92.00,55),(46,'NotreDame Sênior',95.00,350.00,67),(47,'Bradesco Gold',98.00,400.00,71),(48,'Unimed Master',100.00,380.00,75),(49,'Amil Diamond',100.00,420.00,79),(50,'Unimed Jovem',75.00,140.00,81),(51,'Amil Light',65.00,120.00,83),(52,'Hapvida Estudante',60.00,100.00,85),(53,'SulAmérica Universitário',70.00,130.00,87),(54,'Unimed',100.00,255.00,95),(55,'Amil',88.00,275.00,97),(56,'Bradesco Saúde',94.00,295.00,99),(57,'SulAmérica',100.00,265.00,101),(58,'Hapvida',82.00,175.00,103);
/*!40000 ALTER TABLE `seguro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-21  9:07:55
