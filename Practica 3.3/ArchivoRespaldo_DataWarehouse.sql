CREATE DATABASE  IF NOT EXISTS `gcs-principal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gcs-principal`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: gcs-principal
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `adscripcion`
--

DROP TABLE IF EXISTS `adscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adscripcion` (
  `idAdscripcion` int NOT NULL AUTO_INCREMENT,
  `instituto` varchar(30) NOT NULL,
  `area` varchar(130) NOT NULL,
  `nombramiento` varchar(10) NOT NULL,
  `fechaIngreso` date NOT NULL,
  `idInvestigador` int NOT NULL,
  PRIMARY KEY (`idAdscripcion`),
  KEY `idInvestigador` (`idInvestigador`),
  CONSTRAINT `adscripcion_ibfk_1` FOREIGN KEY (`idInvestigador`) REFERENCES `investigador` (`idInvestigador`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adscripcion`
--

LOCK TABLES `adscripcion` WRITE;
/*!40000 ALTER TABLE `adscripcion` DISABLE KEYS */;
INSERT INTO `adscripcion` VALUES (1,'Instituto de Ciencias Físicas','Computación Cuántica','Titular','2016-02-15',1),(2,'Instituto de Biotecnología','Bioinformática','Asociado','2018-07-01',2),(3,'Instituto de Ingeniería','Robótica','Titular','2015-09-10',3),(4,'Instituto de Matemáticas','Ciencia de Datos','Asociado','2019-03-22',4),(5,'Instituto de Física','Nanomateriales','Titular','2017-11-05',5),(6,'Instituto de Ciencias Sociales','Educación','Asociado','2018-04-18',6),(7,'Instituto de Derecho','Gobierno Digital','Titular','2016-10-30',7),(8,'Instituto de Materiales','Ingeniería','Asociado','2019-01-12',8),(9,'Instituto de Genómica','Biología Molecular','Titular','2017-05-25',9),(10,'Instituto de Agronomía','Agricultura','Asociado','2020-08-15',10),(11,'Instituto de Medicina','Oncología','Titular','2016-12-10',11),(12,'Instituto de Energías','Renovables','Asociado','2019-06-20',12),(13,'Instituto de Farmacología','Desarrollo de Fármacos','Titular','2017-09-05',13),(14,'Instituto de Urbanismo','Movilidad','Asociado','2018-11-15',14),(15,'Instituto de Nanociencias','Materiales','Titular','2016-03-30',15),(16,'Instituto de Climatología','Análisis de Datos','Asociado','2019-07-22',16),(17,'Instituto de Rehabilitación','Tecnologías Asistivas','Titular','2017-02-18',17),(18,'Instituto de Cultura','Tecnologías Digitales','Asociado','2020-05-10',18),(19,'Instituto de Seguridad','Criptografía','Titular','2016-09-25',19),(20,'Instituto de Ecología','Biodiversidad','Asociado','2019-04-05',20),(21,'Instituto de Ética','Tecnología','Titular','2017-10-15',21),(22,'Instituto de Energía','Almacenamiento','Asociado','2018-12-20',22),(23,'Instituto de Salud','Telemedicina','Titular','2016-06-08',23),(24,'Instituto de Agrotecnología','Precisión','Asociado','2019-09-12',24),(25,'Instituto de Epidemiología','Modelado','Titular','2017-01-30',25),(26,'Instituto de Gerontología','Tecnologías','Asociado','2020-03-15',26),(27,'Instituto de Computación','Sistemas Inteligentes','Titular','2016-11-22',27),(28,'Instituto de Física Aplicada','Computación Cuántica','Asociado','2019-08-05',28),(29,'Instituto de Educación','Metodologías','Titular','2017-04-18',29),(30,'Instituto de Biología','Conservación','Asociado','2018-10-10',30),(31,'Instituto de Genética','Enfermedades Raras','Titular','2016-05-15',31),(32,'Instituto de Energías Marinas','Eólica Offshore','Asociado','2019-12-20',32),(33,'Instituto de Terapias','Genéticas','Titular','2017-07-05',33),(34,'Instituto de Transporte','Movilidad Eléctrica','Asociado','2018-02-28',34),(35,'Instituto de Justicia','Tecnologías','Titular','2016-08-12',35),(36,'Instituto de Oncología','Nanomedicina','Asociado','2019-11-15',36),(37,'Instituto de Oceanografía','Robótica Submarina','Titular','2017-03-25',37),(38,'Instituto de Psicología','Terapias Digitales','Asociado','2020-06-10',38),(39,'Instituto de Logística','Blockchain','Titular','2016-12-05',39),(40,'Instituto de Materiales','Biodegradables','Asociado','2019-05-20',40),(41,'Instituto de Longevidad','Genética','Titular','2017-09-15',41),(42,'Instituto de Arte','Tecnologías Digitales','Asociado','2018-04-30',42),(43,'Instituto de Cirugía','Robótica','Titular','2016-10-18',43),(44,'Instituto de Pedagogía','Tecnologías Educativas','Asociado','2019-07-05',44),(45,'Instituto de Seguridad','Ciberseguridad','Titular','2017-02-10',45),(46,'Instituto de Suelos','Conservación','Asociado','2020-01-15',46),(47,'Instituto de Neurología','Diagnóstico','Titular','2016-07-22',47),(48,'Instituto de Arquitectura','Energía Solar','Asociado','2019-10-05',48),(49,'Instituto de Salud Digital','Terapias','Titular','2017-05-18',49),(50,'Instituto de Urbanismo','Movilidad Sustentable','Asociado','2018-09-30',50);
/*!40000 ALTER TABLE `adscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idAlumno` int NOT NULL AUTO_INCREMENT,
  `numeroCuenta` varchar(80) NOT NULL,
  `paterno` varchar(80) NOT NULL,
  `materno` varchar(80) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `email` varchar(120) NOT NULL,
  PRIMARY KEY (`idAlumno`),
  UNIQUE KEY `numeroCuenta` (`numeroCuenta`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'A01234567','López','García','Juan','juan.lopez@alumno.edu.mx'),(2,'A02345678','Martínez','Sánchez','Ana','ana.martinez@alumno.edu.mx'),(3,'A03456789','González','Pérez','Luis','luis.gonzalez@alumno.edu.mx'),(4,'A04567890','Rodríguez','Hernández','María','maria.rodriguez@alumno.edu.mx'),(5,'A05678901','Hernández','López','Carlos','carlos.hernandez@alumno.edu.mx'),(6,'A06789012','Pérez','González','Sofía','sofia.perez@alumno.edu.mx'),(7,'A07890123','Sánchez','Martínez','Diego','diego.sanchez@alumno.edu.mx'),(8,'A08901234','Ramírez','Flores','Laura','laura.ramirez@alumno.edu.mx'),(9,'A09012345','Flores','Ramírez','Miguel','miguel.flores@alumno.edu.mx'),(10,'A00123456','Torres','Castillo','Patricia','patricia.torres@alumno.edu.mx'),(11,'A01122334','Castillo','Torres','Jorge','jorge.castillo@alumno.edu.mx'),(12,'A02233445','Morales','Ortega','Adriana','adriana.morales@alumno.edu.mx'),(13,'A03344556','Ortega','Morales','Fernando','fernando.ortega@alumno.edu.mx'),(14,'A04455667','Vega','Reyes','Claudia','claudia.vega@alumno.edu.mx'),(15,'A05566778','Reyes','Vega','Alejandro','alejandro.reyes@alumno.edu.mx'),(16,'A06677889','Mendoza','Guerrero','Gabriela','gabriela.mendoza@alumno.edu.mx'),(17,'A07788990','Guerrero','Mendoza','Roberto','roberto.guerrero@alumno.edu.mx'),(18,'A08899001','Cruz','Ortiz','Verónica','veronica.cruz@alumno.edu.mx'),(19,'A09900112','Ortiz','Cruz','Daniel','daniel.ortiz@alumno.edu.mx'),(20,'A01010101','Juárez','Medina','Lucía','lucia.juarez@alumno.edu.mx'),(21,'A02020202','Medina','Juárez','Oscar','oscar.medina@alumno.edu.mx'),(22,'A03030303','Cortés','Rojas','Mariana','mariana.cortes@alumno.edu.mx'),(23,'A04040404','Rojas','Cortés','José','jose.rojas@alumno.edu.mx'),(24,'A05050505','Acosta','Moreno','Silvia','silvia.acosta@alumno.edu.mx'),(25,'A06060606','Moreno','Acosta','Francisco','francisco.moreno@alumno.edu.mx'),(26,'A07070707','Delgado','Castañeda','Teresa','teresa.delgado@alumno.edu.mx'),(27,'A08080808','Castañeda','Delgado','Raúl','raul.castaneda@alumno.edu.mx'),(28,'A09090909','Núñez','Salazar','Diana','diana.nunez@alumno.edu.mx'),(29,'A10101010','Salazar','Núñez','Arturo','arturo.salazar@alumno.edu.mx'),(30,'A12121212','Vázquez','Aguilar','Beatriz','beatriz.vazquez@alumno.edu.mx'),(31,'A13131313','Aguilar','Vázquez','Gerardo','gerardo.aguilar@alumno.edu.mx'),(32,'A14141414','Rivera','Méndez','Leticia','leticia.rivera@alumno.edu.mx'),(33,'A15151515','Méndez','Rivera','Héctor','hector.mendez@alumno.edu.mx'),(34,'A16161616','Cervantes','Valencia','Norma','norma.cervantes@alumno.edu.mx'),(35,'A17171717','Valencia','Cervantes','Sergio','sergio.valencia@alumno.edu.mx'),(36,'A18181818','Espinoza','Chávez','Rosa','rosa.espinoza@alumno.edu.mx'),(37,'A19191919','Chávez','Espinoza','Javier','javier.chavez@alumno.edu.mx'),(38,'A20202020','Campos','Rosales','Alejandra','alejandra.campos@alumno.edu.mx'),(39,'A21212121','Rosales','Campos','Mario','mario.rosales@alumno.edu.mx'),(40,'A22222222','Soto','Franco','Guadalupe','guadalupe.soto@alumno.edu.mx'),(41,'A23232323','Franco','Soto','Alberto','alberto.franco@alumno.edu.mx'),(42,'A24242424','Barrera','Miranda','Clara','clara.barrera@alumno.edu.mx'),(43,'A25252525','Miranda','Barrera','Enrique','enrique.miranda@alumno.edu.mx'),(44,'A26262626','Ríos','Zamora','Isabel','isabel.rios@alumno.edu.mx'),(45,'A27272727','Zamora','Ríos','Pedro','pedro.zamora@alumno.edu.mx'),(46,'A28282828','Pineda','Quintero','Luisa','luisa.pineda@alumno.edu.mx'),(47,'A29292929','Quintero','Pineda','Ricardo','ricardo.quintero@alumno.edu.mx'),(48,'A30303030','Villarreal','Orozco','María','maria.villarreal@alumno.edu.mx'),(49,'A31313131','Orozco','Villarreal','José','jose.orozco@alumno.edu.mx'),(50,'A32323232','Gutiérrez','Molina','Francisco','francisco.gutierrez@alumno.edu.mx');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnocurso`
--

DROP TABLE IF EXISTS `alumnocurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnocurso` (
  `idAlumnoCurso` int NOT NULL AUTO_INCREMENT,
  `calificacion` decimal(3,2) NOT NULL,
  `idCurso` int NOT NULL,
  `idAlumno` int NOT NULL,
  PRIMARY KEY (`idAlumnoCurso`),
  UNIQUE KEY `uq_alumno_curso` (`idCurso`,`idAlumno`),
  KEY `idAlumno` (`idAlumno`),
  CONSTRAINT `alumnocurso_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  CONSTRAINT `alumnocurso_ibfk_2` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnocurso`
--

LOCK TABLES `alumnocurso` WRITE;
/*!40000 ALTER TABLE `alumnocurso` DISABLE KEYS */;
INSERT INTO `alumnocurso` VALUES (1,8.50,1,1),(2,9.00,2,2),(3,7.50,3,3),(4,8.00,4,4),(5,9.50,5,5),(6,8.20,6,6),(7,7.80,7,7),(8,9.10,8,8),(9,8.70,9,9),(10,7.90,10,10),(11,8.80,11,11),(12,9.20,12,12),(13,7.60,13,13),(14,8.30,14,14),(15,9.40,15,15),(16,8.10,16,16),(17,7.70,17,17),(18,9.30,18,18),(19,8.60,19,19),(20,7.40,20,20),(21,8.90,21,21),(22,9.60,22,22),(23,7.30,23,23),(24,8.40,24,24),(25,9.70,25,25),(26,7.20,26,26),(27,8.00,27,27),(28,9.80,28,28),(29,7.10,29,29),(30,8.50,30,30),(31,9.90,31,31),(32,7.00,32,32),(33,8.60,33,33),(34,9.50,34,34),(35,8.20,35,35),(36,7.80,36,36),(37,9.40,37,37),(38,8.30,38,38),(39,7.90,39,39),(40,9.30,40,40),(41,8.10,41,41),(42,7.70,42,42),(43,9.20,43,43),(44,8.40,44,44),(45,7.60,45,45),(46,9.10,46,46),(47,8.70,47,47),(48,7.50,48,48),(49,9.00,49,49),(50,8.80,50,50);
/*!40000 ALTER TABLE `alumnocurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `idAsignatura` int NOT NULL AUTO_INCREMENT,
  `semestre` int NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `idPrograma` int NOT NULL,
  PRIMARY KEY (`idAsignatura`),
  KEY `idPrograma` (`idPrograma`),
  CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`idPrograma`) REFERENCES `programa` (`idPrograma`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,1,'Programación Básica',1),(2,3,'Estructuras de Datos',1),(3,5,'Bases de Datos',1),(4,7,'Inteligencia Artificial',1),(5,9,'Proyecto Integrador',1),(6,1,'Algoritmos Avanzados',2),(7,2,'Machine Learning',2),(8,3,'Procesamiento de Lenguaje Natural',2),(9,4,'Visión por Computadora',2),(10,5,'Tesis de Maestría',2),(11,1,'Teoría de la Computación',3),(12,2,'Computación Cuántica',3),(13,3,'Algoritmos Bioinspirados',3),(14,4,'Seminario de Investigación',3),(15,5,'Tesis Doctoral',3),(16,1,'Cálculo Diferencial',4),(17,3,'Álgebra Lineal',4),(18,5,'Ecuaciones Diferenciales',4),(19,7,'Análisis Numérico',4),(20,9,'Modelación Matemática',4),(21,1,'Redes Neuronales',5),(22,2,'Deep Learning',5),(23,3,'Procesamiento de Imágenes',5),(24,4,'Sistemas Expertos',5),(25,5,'Proyecto Final',5),(26,1,'Estadística Computacional',6),(27,2,'Minería de Datos',6),(28,3,'Visualización de Datos',6),(29,4,'Big Data',6),(30,5,'Tesis Doctoral',6),(31,1,'Física Clásica',7),(32,3,'Termodinámica',7),(33,5,'Mecánica Cuántica',7),(34,7,'Electromagnetismo',7),(35,9,'Proyecto de Investigación',7),(36,1,'Nanomateriales',8),(37,2,'Síntesis de Nanopartículas',8),(38,3,'Caracterización de Materiales',8),(39,4,'Aplicaciones Médicas',8),(40,5,'Tesis de Maestría',8),(41,1,'Biología Molecular',9),(42,2,'Genómica Computacional',9),(43,3,'Evolución Molecular',9),(44,4,'Bioestadística',9),(45,5,'Tesis Doctoral',9),(46,1,'Robótica Básica',10),(47,3,'Control de Robots',10),(48,5,'Sensores y Actuadores',10),(49,7,'Robótica Autónoma',10),(50,9,'Proyecto Integrador',10);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuerpoacademico`
--

DROP TABLE IF EXISTS `cuerpoacademico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuerpoacademico` (
  `idCuerpo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(230) NOT NULL,
  `idIntegrante` int NOT NULL,
  PRIMARY KEY (`idCuerpo`),
  KEY `idIntegrante` (`idIntegrante`),
  CONSTRAINT `cuerpoacademico_ibfk_1` FOREIGN KEY (`idIntegrante`) REFERENCES `integrante` (`idIntegrante`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpoacademico`
--

LOCK TABLES `cuerpoacademico` WRITE;
/*!40000 ALTER TABLE `cuerpoacademico` DISABLE KEYS */;
INSERT INTO `cuerpoacademico` VALUES (1,'Ciencias Computacionales Avanzadas',1),(2,'Nanomateriales y Energía',2),(3,'Biotecnología Aplicada',3),(4,'Robótica e Inteligencia Artificial',4),(5,'Educación y Tecnología',5),(6,'Gobierno Digital y Transparencia',6),(7,'Ciencia de Materiales',7),(8,'Genómica y Biología Molecular',8),(9,'Agricultura de Precisión',9),(10,'Salud Digital',10),(11,'Computación Cuántica',11),(12,'Energías Renovables',12),(13,'Bioinformática Estructural',13),(14,'Inteligencia Artificial Avanzada',14),(15,'Nanotecnología Médica',15),(16,'Ciencia de Datos Aplicada',16),(17,'Robótica de Servicio',17),(18,'Realidad Virtual y Aumentada',18),(19,'Ciberseguridad',19),(20,'Ecología Computacional',20),(21,'Física Teórica',21),(22,'Química Cuántica',22),(23,'Biología Sintética',23),(24,'Ingeniería Biomédica',24),(25,'Matemáticas Aplicadas',25),(26,'Economía Digital',26),(27,'Derecho Tecnológico',27),(28,'Psicología Cognitiva',28),(29,'Lingüística Computacional',29),(30,'Arte Digital',30),(31,'Arquitectura Sostenible',31),(32,'Urbanismo Inteligente',32),(33,'Oceanografía Computacional',33),(34,'Climatología Avanzada',34),(35,'Geología Digital',35),(36,'Historia de la Ciencia',36),(37,'Filosofía de la Tecnología',37),(38,'Sociología Digital',38),(39,'Antropología Virtual',39),(40,'Educación STEM',40),(41,'Ingeniería de Software',41),(42,'Sistemas Distribuidos',42),(43,'Redes Neuronales',43),(44,'Visión por Computadora',44),(45,'Procesamiento de Lenguaje Natural',45),(46,'Computación Gráfica',46),(47,'Interacción Humano-Computadora',47),(48,'Biofísica Molecular',48),(49,'Genética Evolutiva',49),(50,'Ecología Microbiana',50);
/*!40000 ALTER TABLE `cuerpoacademico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idCurso` int NOT NULL AUTO_INCREMENT,
  `periodo` varchar(15) NOT NULL,
  `anio` int NOT NULL,
  `grupo` int NOT NULL,
  `idProfesor` int NOT NULL,
  `idAsignatura` int NOT NULL,
  PRIMARY KEY (`idCurso`),
  KEY `idProfesor` (`idProfesor`),
  KEY `idAsignatura` (`idAsignatura`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`idProfesor`) REFERENCES `profesor` (`idProfesor`),
  CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`idAsignatura`) REFERENCES `asignatura` (`idAsignatura`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Primavera',2023,101,1,1),(2,'Otoño',2023,201,2,5),(3,'Verano',2023,301,3,8),(4,'Primavera',2023,102,4,11),(5,'Otoño',2023,202,5,14),(6,'Verano',2023,302,6,17),(7,'Primavera',2023,103,7,20),(8,'Otoño',2023,203,8,23),(9,'Verano',2023,303,9,26),(10,'Primavera',2023,104,10,29),(11,'Otoño',2023,204,11,32),(12,'Verano',2023,304,12,35),(13,'Primavera',2023,105,13,38),(14,'Otoño',2023,205,14,41),(15,'Verano',2023,305,15,44),(16,'Primavera',2023,106,16,2),(17,'Otoño',2023,206,17,6),(18,'Verano',2023,306,18,9),(19,'Primavera',2023,107,19,12),(20,'Otoño',2023,207,20,15),(21,'Verano',2023,307,21,18),(22,'Primavera',2023,108,22,21),(23,'Otoño',2023,208,23,24),(24,'Verano',2023,308,24,27),(25,'Primavera',2023,109,25,30),(26,'Otoño',2023,209,26,33),(27,'Verano',2023,309,27,36),(28,'Primavera',2023,110,28,39),(29,'Otoño',2023,210,29,42),(30,'Verano',2023,310,30,45),(31,'Primavera',2023,111,31,3),(32,'Otoño',2023,211,32,7),(33,'Verano',2023,311,33,10),(34,'Primavera',2023,112,34,13),(35,'Otoño',2023,212,35,16),(36,'Verano',2023,312,36,19),(37,'Primavera',2023,113,37,22),(38,'Otoño',2023,213,38,25),(39,'Verano',2023,313,39,28),(40,'Primavera',2023,114,40,31),(41,'Otoño',2023,214,41,34),(42,'Verano',2023,314,42,37),(43,'Primavera',2023,115,43,40),(44,'Otoño',2023,215,44,43),(45,'Verano',2023,315,45,46),(46,'Primavera',2023,116,46,4),(47,'Otoño',2023,216,47,47),(48,'Verano',2023,316,48,48),(49,'Primavera',2023,117,49,49),(50,'Otoño',2023,217,50,50);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacion`
--

DROP TABLE IF EXISTS `formacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacion` (
  `idFormacion` int NOT NULL AUTO_INCREMENT,
  `grado` varchar(18) NOT NULL,
  `institucion` varchar(70) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `fechaTermino` date NOT NULL,
  `idInvestigador` int NOT NULL,
  PRIMARY KEY (`idFormacion`),
  KEY `idInvestigador` (`idInvestigador`),
  CONSTRAINT `formacion_ibfk_1` FOREIGN KEY (`idInvestigador`) REFERENCES `investigador` (`idInvestigador`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacion`
--

LOCK TABLES `formacion` WRITE;
/*!40000 ALTER TABLE `formacion` DISABLE KEYS */;
INSERT INTO `formacion` VALUES (1,'Doctorado','UNAM','Ciencias Computacionales','2015-06-20',1),(2,'Doctorado','UAM','Física de Materiales','2016-11-25',2),(3,'Doctorado','ITESM','Bioinformática','2017-03-18',3),(4,'Licenciatura','UANL','Biotecnología','2011-12-05',4),(5,'Maestría','UAEM','Ingeniería Robótica','2014-09-22',5),(6,'Doctorado','UdeG','Ciencias de la Computación','2018-05-15',6),(7,'Maestría','UABC','Inteligencia Artificial','2015-07-30',7),(8,'Licenciatura','UDLAP','Ingeniería Mecatrónica','2010-06-20',8),(9,'Doctorado','UASLP','Ciencias de Materiales','2019-02-10',9),(10,'Maestría','UV','Genómica','2016-10-15',10),(11,'Licenciatura','UCOL','Ingeniería Agrónoma','2012-05-25',11),(12,'Doctorado','UACH','Ciencias Médicas','2017-11-30',12),(13,'Maestría','UMSNH','Energías Renovables','2014-08-20',13),(14,'Licenciatura','UAA','Ingeniería Civil','2011-07-15',14),(15,'Doctorado','UJAT','Nanociencias','2018-04-05',15),(16,'Maestría','UNISON','Ciencia de Datos','2015-09-10',16),(17,'Licenciatura','UQRoo','Ingeniería Biomédica','2010-12-20',17),(18,'Doctorado','UACJ','Robótica','2019-03-25',18),(19,'Maestría','UAT','Realidad Virtual','2016-06-30',19),(20,'Licenciatura','UAZ','Ingeniería en Sistemas','2012-04-15',20),(21,'Doctorado','UAN','Criptografía','2017-10-10',21),(22,'Maestría','UQROO','Ecología','2014-05-20',22),(23,'Licenciatura','UDEM','Medicina','2011-08-25',23),(24,'Doctorado','UDLAP','Inteligencia Artificial','2018-07-15',24),(25,'Maestría','UAS','Ciencia de Materiales','2015-10-30',25),(26,'Licenciatura','UNAM','Ingeniería Química','2010-11-20',26),(27,'Doctorado','IPN','Bioingeniería','2019-01-05',27),(28,'Maestría','UDG','Computación Cuántica','2016-08-15',28),(29,'Licenciatura','UAM','Pedagogía','2012-03-10',29),(30,'Doctorado','CINVESTAV','Genética','2017-09-25',30),(31,'Maestría','ITESM','Administración','2014-12-05',31),(32,'Licenciatura','UANL','Ingeniería Eléctrica','2011-05-15',32),(33,'Doctorado','UAEM','Física','2018-06-20',33),(34,'Maestría','UdeG','Matemáticas','2015-11-30',34),(35,'Licenciatura','UABC','Biología','2010-10-10',35),(36,'Doctorado','UDLAP','Química','2019-04-15',36),(37,'Maestría','UASLP','Estadística','2016-09-20',37),(38,'Licenciatura','UV','Ingeniería Industrial','2012-02-25',38),(39,'Doctorado','UCOL','Ciencias Ambientales','2017-07-10',39),(40,'Maestría','UACH','Economía','2014-04-05',40),(41,'Licenciatura','UMSNH','Arquitectura','2011-09-15',41),(42,'Doctorado','UAA','Psicología','2018-08-30',42),(43,'Maestría','UJAT','Derecho','2015-12-10',43),(44,'Licenciatura','UNISON','Comunicación','2010-07-20',44),(45,'Doctorado','UQRoo','Antropología','2019-05-25',45),(46,'Maestría','UACJ','Historia','2016-10-15',46),(47,'Licenciatura','UAT','Filosofía','2012-01-30',47),(48,'Doctorado','UAZ','Literatura','2017-08-05',48),(49,'Maestría','UAN','Música','2014-03-20',49),(50,'Licenciatura','UQROO','Artes Visuales','2011-06-10',50);
/*!40000 ALTER TABLE `formacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrante`
--

DROP TABLE IF EXISTS `integrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrante` (
  `idIntegrante` int NOT NULL AUTO_INCREMENT,
  `paterno` varchar(90) NOT NULL,
  `materno` varchar(90) NOT NULL,
  `nombre` varchar(110) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`idIntegrante`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrante`
--

LOCK TABLES `integrante` WRITE;
/*!40000 ALTER TABLE `integrante` DISABLE KEYS */;
INSERT INTO `integrante` VALUES (1,'García','López','María Elena','maria.garcia@email.com'),(2,'Martínez','Sánchez','Juan Carlos','juan.martinez@email.com'),(3,'Rodríguez','Pérez','Ana Isabel','ana.rodriguez@email.com'),(4,'Hernández','Gómez','Luis Fernando','luis.hernandez@email.com'),(5,'López','Díaz','Carmen Rosa','carmen.lopez@email.com'),(6,'González','Martínez','Jorge Alberto','jorge.gonzalez@email.com'),(7,'Pérez','Rodríguez','Patricia Beatriz','patricia.perez@email.com'),(8,'Sánchez','Hernández','Ricardo Javier','ricardo.sanchez@email.com'),(9,'Ramírez','González','Laura Gabriela','laura.ramirez@email.com'),(10,'Flores','Vázquez','Miguel Ángel','miguel.flores@email.com'),(11,'Torres','Jiménez','Sofía Alejandra','sofia.torres@email.com'),(12,'Castillo','Ruiz','Diego Armando','diego.castillo@email.com'),(13,'Morales','Ortiz','Adriana Elizabeth','adriana.morales@email.com'),(14,'Ortega','Silva','Fernando Javier','fernando.ortega@email.com'),(15,'Vega','Mendoza','Claudia Patricia','claudia.vega@email.com'),(16,'Reyes','Castro','Alejandro David','alejandro.reyes@email.com'),(17,'Mendoza','Guerrero','Gabriela Alejandra','gabriela.mendoza@email.com'),(18,'Guerrero','Ríos','Roberto Carlos','roberto.guerrero@email.com'),(19,'Cruz','Navarro','Verónica Isabel','veronica.cruz@email.com'),(20,'Ortiz','Vargas','Daniel Eduardo','daniel.ortiz@email.com'),(21,'Juárez','Romero','Lucía Fernanda','lucia.juarez@email.com'),(22,'Medina','Cervantes','Oscar Manuel','oscar.medina@email.com'),(23,'Cortés','Salazar','Mariana Guadalupe','mariana.cortes@email.com'),(24,'Rojas','Miranda','José Antonio','jose.rojas@email.com'),(25,'Acosta','Campos','Silvia Patricia','silvia.acosta@email.com'),(26,'Moreno','Vega','Francisco Javier','francisco.moreno@email.com'),(27,'Delgado','Rosas','Teresa Margarita','teresa.delgado@email.com'),(28,'Castañeda','Ochoa','Raúl Alejandro','raul.castaneda@email.com'),(29,'Núñez','Pineda','Diana Carolina','diana.nunez@email.com'),(30,'Salazar','Mejía','Arturo Benjamín','arturo.salazar@email.com'),(31,'Vázquez','Lara','Beatriz Adriana','beatriz.vazquez@email.com'),(32,'Aguilar','Sosa','Gerardo Ignacio','gerardo.aguilar@email.com'),(33,'Rivera','Fuentes','Leticia Margarita','leticia.rivera@email.com'),(34,'Méndez','Valdez','Héctor Manuel','hector.mendez@email.com'),(35,'Cervantes','Rangel','Norma Angélica','norma.cervantes@email.com'),(36,'Valencia','Barrera','Sergio Eduardo','sergio.valencia@email.com'),(37,'Espinoza','Zúñiga','Rosa María','rosa.espinoza@email.com'),(38,'Chávez','Ponce','Javier Alonso','javier.chavez@email.com'),(39,'Campos','Santos','Alejandra Beatriz','alejandra.campos@email.com'),(40,'Rosales','Gutiérrez','Mario Alberto','mario.rosales@email.com'),(41,'Soto','Cisneros','Guadalupe Teresa','guadalupe.soto@email.com'),(42,'Franco','Maldonado','Alberto Carlos','alberto.franco@email.com'),(43,'Barrera','Reyes','Clara Susana','clara.barrera@email.com'),(44,'Miranda','Aguirre','Enrique Rafael','enrique.miranda@email.com'),(45,'Ríos','Cárdenas','Isabel Cristina','isabel.rios@email.com'),(46,'Zamora','Delgado','Pedro Pablo','pedro.zamora@email.com'),(47,'Pineda','Villarreal','Luisa Fernanda','luisa.pineda@email.com'),(48,'Quintero','Zavala','Ricardo Ernesto','ricardo.quintero@email.com'),(49,'Villarreal','Orozco','María del Carmen','maria.villarreal@email.com'),(50,'Orozco','Serrano','José Luis','jose.orozco@email.com');
/*!40000 ALTER TABLE `integrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrantelinea`
--

DROP TABLE IF EXISTS `integrantelinea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrantelinea` (
  `idIntegranteLinea` int NOT NULL AUTO_INCREMENT,
  `vigente` tinyint(1) NOT NULL,
  `inicio` date NOT NULL,
  `termino` date NOT NULL,
  `idLinea` int NOT NULL,
  `idIntegrante` int NOT NULL,
  PRIMARY KEY (`idIntegranteLinea`),
  UNIQUE KEY `uq_integrante_linea` (`idLinea`,`idIntegrante`),
  KEY `idIntegrante` (`idIntegrante`),
  CONSTRAINT `integrantelinea_ibfk_1` FOREIGN KEY (`idLinea`) REFERENCES `linea` (`idLinea`),
  CONSTRAINT `integrantelinea_ibfk_2` FOREIGN KEY (`idIntegrante`) REFERENCES `integrante` (`idIntegrante`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrantelinea`
--

LOCK TABLES `integrantelinea` WRITE;
/*!40000 ALTER TABLE `integrantelinea` DISABLE KEYS */;
INSERT INTO `integrantelinea` VALUES (1,1,'2020-01-10','2025-12-31',1,1),(2,1,'2019-05-15','2024-11-30',2,2),(3,1,'2021-03-20','2026-06-30',3,3),(4,1,'2020-08-12','2025-09-15',4,4),(5,1,'2019-11-05','2024-10-20',5,5),(6,1,'2022-02-18','2027-01-31',6,6),(7,1,'2020-09-30','2025-08-15',7,7),(8,1,'2021-06-22','2026-05-10',8,8),(9,1,'2019-04-15','2024-07-22',9,9),(10,1,'2020-12-10','2025-11-05',10,10),(11,1,'2021-07-05','2026-10-18',11,11),(12,1,'2022-01-20','2027-02-28',12,12),(13,1,'2020-10-15','2025-12-15',13,13),(14,1,'2019-08-25','2024-09-30',14,14),(15,1,'2021-05-10','2026-04-05',15,15),(16,1,'2022-03-01','2027-03-31',16,16),(17,1,'2020-07-18','2025-06-20',17,17),(18,1,'2019-12-05','2024-11-15',18,18),(19,1,'2021-09-12','2026-08-25',19,19),(20,1,'2020-04-30','2025-05-10',20,20),(21,1,'2021-01-15','2026-06-30',21,21),(22,1,'2020-06-20','2025-07-22',22,22),(23,1,'2019-09-10','2024-12-15',23,23),(24,1,'2021-02-25','2026-01-31',24,24),(25,1,'2020-11-08','2025-10-12',25,25),(26,1,'2022-04-12','2027-03-15',26,26),(27,1,'2020-03-15','2025-02-28',27,27),(28,1,'2019-07-22','2024-01-31',28,28),(29,1,'2021-10-05','2026-09-18',29,29),(30,1,'2020-05-18','2025-04-20',30,30),(31,1,'2022-01-10','2027-01-31',31,31),(32,1,'2019-10-30','2024-12-05',32,32),(33,1,'2021-04-15','2026-03-10',33,33),(34,1,'2020-09-22','2025-08-25',34,34),(35,1,'2022-02-05','2027-02-28',35,35),(36,1,'2020-07-30','2025-06-15',36,36),(37,1,'2019-12-18','2024-11-20',37,37),(38,1,'2021-08-10','2026-07-22',38,38),(39,1,'2020-04-05','2025-05-31',39,39),(40,1,'2022-01-20','2027-01-15',40,40),(41,1,'2020-10-15','2025-09-30',41,41),(42,1,'2021-06-22','2026-05-15',42,42),(43,1,'2019-11-10','2024-12-20',43,43),(44,1,'2020-08-25','2025-07-18',44,44),(45,1,'2022-03-15','2027-02-10',45,45),(46,1,'2020-12-05','2025-11-30',46,46),(47,1,'2019-05-20','2024-06-15',47,47),(48,1,'2021-02-12','2026-01-22',48,48),(49,1,'2020-09-30','2025-08-05',49,49),(50,1,'2022-04-18','2027-03-31',50,50);
/*!40000 ALTER TABLE `integrantelinea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigador`
--

DROP TABLE IF EXISTS `investigador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investigador` (
  `idInvestigador` int NOT NULL AUTO_INCREMENT,
  `paterno` varchar(90) NOT NULL,
  `materno` varchar(90) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `orcid` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `movil` varchar(15) NOT NULL,
  PRIMARY KEY (`idInvestigador`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigador`
--

LOCK TABLES `investigador` WRITE;
/*!40000 ALTER TABLE `investigador` DISABLE KEYS */;
INSERT INTO `investigador` VALUES (1,'García','López','María Elena','0000-0001-2345-6789','maria.garcia@email.com','5512345678'),(2,'Martínez','Sánchez','Juan Carlos','0000-0002-3456-7890','juan.martinez@email.com','5523456789'),(3,'Rodríguez','Pérez','Ana Isabel','0000-0003-4567-8901','ana.rodriguez@email.com','5534567890'),(4,'Hernández','Gómez','Luis Fernando','0000-0004-5678-9012','luis.hernandez@email.com','5545678901'),(5,'López','Díaz','Carmen Rosa','0000-0005-6789-0123','carmen.lopez@email.com','5556789012'),(6,'González','Martínez','Jorge Alberto','0000-0006-7890-1234','jorge.gonzalez@email.com','5567890123'),(7,'Pérez','Rodríguez','Patricia Beatriz','0000-0007-8901-2345','patricia.perez@email.com','5578901234'),(8,'Sánchez','Hernández','Ricardo Javier','0000-0008-9012-3456','ricardo.sanchez@email.com','5589012345'),(9,'Ramírez','González','Laura Gabriela','0000-0009-0123-4567','laura.ramirez@email.com','5590123456'),(10,'Flores','Vázquez','Miguel Ángel','0000-0010-1234-5678','miguel.flores@email.com','5501234567'),(11,'Torres','Jiménez','Sofía Alejandra','0000-0011-2345-6789','sofia.torres@email.com','5512345679'),(12,'Castillo','Ruiz','Diego Armando','0000-0012-3456-7890','diego.castillo@email.com','5523456790'),(13,'Morales','Ortiz','Adriana Elizabeth','0000-0013-4567-8901','adriana.morales@email.com','5534567901'),(14,'Ortega','Silva','Fernando Javier','0000-0014-5678-9012','fernando.ortega@email.com','5545679012'),(15,'Vega','Mendoza','Claudia Patricia','0000-0015-6789-0123','claudia.vega@email.com','5556790123'),(16,'Reyes','Castro','Alejandro David','0000-0016-7890-1234','alejandro.reyes@email.com','5567901234'),(17,'Mendoza','Guerrero','Gabriela Alejandra','0000-0017-8901-2345','gabriela.mendoza@email.com','5579012345'),(18,'Guerrero','Ríos','Roberto Carlos','0000-0018-9012-3456','roberto.guerrero@email.com','5589123456'),(19,'Cruz','Navarro','Verónica Isabel','0000-0019-0123-4567','veronica.cruz@email.com','5590234567'),(20,'Ortiz','Vargas','Daniel Eduardo','0000-0020-1234-5678','daniel.ortiz@email.com','5501345678'),(21,'Juárez','Romero','Lucía Fernanda','0000-0021-2345-6789','lucia.juarez@email.com','5512456789'),(22,'Medina','Cervantes','Oscar Manuel','0000-0022-3456-7890','oscar.medina@email.com','5523567890'),(23,'Cortés','Salazar','Mariana Guadalupe','0000-0023-4567-8901','mariana.cortes@email.com','5534678901'),(24,'Rojas','Miranda','José Antonio','0000-0024-5678-9012','jose.rojas@email.com','5545789012'),(25,'Acosta','Campos','Silvia Patricia','0000-0025-6789-0123','silvia.acosta@email.com','5556890123'),(26,'Moreno','Vega','Francisco Javier','0000-0026-7890-1234','francisco.moreno@email.com','5567901234'),(27,'Delgado','Rosas','Teresa Margarita','0000-0027-8901-2345','teresa.delgado@email.com','5578012345'),(28,'Castañeda','Ochoa','Raúl Alejandro','0000-0028-9012-3456','raul.castaneda@email.com','5589123456'),(29,'Núñez','Pineda','Diana Carolina','0000-0029-0123-4567','diana.nunez@email.com','5590234567'),(30,'Salazar','Mejía','Arturo Benjamín','0000-0030-1234-5678','arturo.salazar@email.com','5501345678'),(31,'Vázquez','Lara','Beatriz Adriana','0000-0031-2345-6789','beatriz.vazquez@email.com','5512456789'),(32,'Aguilar','Sosa','Gerardo Ignacio','0000-0032-3456-7890','gerardo.aguilar@email.com','5523567890'),(33,'Rivera','Fuentes','Leticia Margarita','0000-0033-4567-8901','leticia.rivera@email.com','5534678901'),(34,'Méndez','Valdez','Héctor Manuel','0000-0034-5678-9012','hector.mendez@email.com','5545789012'),(35,'Cervantes','Rangel','Norma Angélica','0000-0035-6789-0123','norma.cervantes@email.com','5556890123'),(36,'Valencia','Barrera','Sergio Eduardo','0000-0036-7890-1234','sergio.valencia@email.com','5567001234'),(37,'Espinoza','Zúñiga','Rosa María','0000-0037-8901-2345','rosa.espinoza@email.com','5578112345'),(38,'Chávez','Ponce','Javier Alonso','0000-0038-9012-3456','javier.chavez@email.com','5589223456'),(39,'Campos','Santos','Alejandra Beatriz','0000-0039-0123-4567','alejandra.campos@email.com','5590334567'),(40,'Rosales','Gutiérrez','Mario Alberto','0000-0040-1234-5678','mario.rosales@email.com','5501445678'),(41,'Soto','Cisneros','Guadalupe Teresa','0000-0041-2345-6789','guadalupe.soto@email.com','5512556789'),(42,'Franco','Maldonado','Alberto Carlos','0000-0042-3456-7890','alberto.franco@email.com','5523667890'),(43,'Barrera','Reyes','Clara Susana','0000-0043-4567-8901','clara.barrera@email.com','5534778901'),(44,'Miranda','Aguirre','Enrique Rafael','0000-0044-5678-9012','enrique.miranda@email.com','5545889012'),(45,'Ríos','Cárdenas','Isabel Cristina','0000-0045-6789-0123','isabel.rios@email.com','5556990123'),(46,'Zamora','Delgado','Pedro Pablo','0000-0046-7890-1234','pedro.zamora@email.com','5567001234'),(47,'Pineda','Villarreal','Luisa Fernanda','0000-0047-8901-2345','luisa.pineda@email.com','5578112345'),(48,'Quintero','Zavala','Ricardo Ernesto','0000-0048-9012-3456','ricardo.quintero@email.com','5589223456'),(49,'Villarreal','Orozco','María del Carmen','0000-0049-0123-4567','maria.villarreal@email.com','5590334567'),(50,'Orozco','Serrano','José Luis','0000-0050-1234-5678','jose.orozco@email.com','5501445678'),(55,'Aleyda','Ortiz','Simon','0000-0000-0000-2715','aleydaZitro@gmai.com','771 677 1406'),(56,'Alexa','Fernanda','Ortiz Simon','0000-0000-0000-2727','alexa@gmail.com','771 677 1414');
/*!40000 ALTER TABLE `investigador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linea`
--

DROP TABLE IF EXISTS `linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linea` (
  `idLinea` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `cuerpo` int NOT NULL,
  PRIMARY KEY (`idLinea`),
  KEY `cuerpo` (`cuerpo`),
  CONSTRAINT `linea_ibfk_1` FOREIGN KEY (`cuerpo`) REFERENCES `cuerpoacademico` (`idCuerpo`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linea`
--

LOCK TABLES `linea` WRITE;
/*!40000 ALTER TABLE `linea` DISABLE KEYS */;
INSERT INTO `linea` VALUES (1,'Algoritmos Cuánticos','Desarrollo de algoritmos para computación cuántica y sus aplicaciones',1),(2,'Materiales Fotovoltaicos','Diseño y caracterización de nuevos materiales para celdas solares',2),(3,'CRISPR en Agricultura','Aplicación de técnicas de edición genética en cultivos',3),(4,'Robots Colaborativos','Desarrollo de sistemas robóticos para trabajo conjunto con humanos',4),(5,'Gamificación Educativa','Uso de mecánicas de juego en entornos educativos',5),(6,'Blockchain Público','Tecnologías de ledger distribuido para transparencia gubernamental',6),(7,'Aleaciones Avanzadas','Desarrollo de nuevas aleaciones con propiedades mejoradas',7),(8,'Secuenciación Masiva','Técnicas avanzadas de secuenciación genómica',8),(9,'Agricultura 4.0','Implementación de IoT en sistemas agrícolas',9),(10,'Telemedicina Rural','Sistemas de diagnóstico remoto para zonas marginadas',10),(11,'Corrección de Errores','Métodos para corrección de errores en computación cuántica',11),(12,'Energía Eólica','Optimización de sistemas de generación eólica',12),(13,'Docking Molecular','Predicción de interacciones proteína-ligando',13),(14,'Deep Learning','Redes neuronales profundas y sus aplicaciones',14),(15,'Nanopartículas Terapéuticas','Diseño de sistemas de liberación controlada',15),(16,'Análisis Predictivo','Modelos predictivos para negocios y ciencia',16),(17,'Robótica Social','Robots para interacción con humanos en entornos sociales',17),(18,'RV Educativa','Aplicaciones de realidad virtual en educación',18),(19,'Criptografía Post-Cuántica','Algoritmos de encriptación resistentes a computación cuántica',19),(20,'Modelos Ecológicos','Simulación computacional de ecosistemas',20),(21,'Teoría de Cuerdas','Investigación en física teórica de altas energías',21),(22,'Dinámica Molecular','Simulación de sistemas moleculares complejos',22),(23,'Circuitos Genéticos','Diseño de sistemas genéticos sintéticos',23),(24,'Prótesis Inteligentes','Desarrollo de miembros prostéticos con retroalimentación sensorial',24),(25,'Modelos Estocásticos','Aplicación de procesos estocásticos en modelado',25),(26,'FinTech','Tecnologías financieras innovadoras',26),(27,'Regulación de IA','Marcos legales para inteligencia artificial',27),(28,'Neurociencia Cognitiva','Estudio computacional de procesos cognitivos',28),(29,'Traducción Automática','Sistemas avanzados de traducción entre lenguas',29),(30,'Generación de Arte con IA','Aplicación de algoritmos en creación artística',30),(31,'Materiales Sostenibles','Desarrollo de materiales para construcción ecológica',31),(32,'Movilidad Urbana','Sistemas inteligentes de transporte urbano',32),(33,'Modelado Oceánico','Simulación computacional de corrientes marinas',33),(34,'Cambio Climático','Modelos predictivos de cambio climático',34),(35,'Exploración Virtual','Técnicas de realidad virtual en geología',35),(36,'Historia de la Computación','Estudio histórico del desarrollo computacional',36),(37,'Ética de la IA','Consideraciones éticas en inteligencia artificial',37),(38,'Redes Sociales','Análisis computacional de dinámicas sociales',38),(39,'Antropología Digital','Estudio de culturas en entornos digitales',39),(40,'Pedagogía Digital','Métodos innovadores de enseñanza con tecnología',40),(41,'Ingeniería de Requerimientos','Métodos avanzados para especificación de software',41),(42,'Computación en la Nube','Arquitecturas distribuidas para sistemas en la nube',42),(43,'Redes Generativas','Aplicaciones de GANs en diversos dominios',43),(44,'Reconocimiento Facial','Algoritmos avanzados de reconocimiento biométrico',44),(45,'Chatbots Inteligentes','Sistemas conversacionales basados en IA',45),(46,'Renderizado en Tiempo Real','Técnicas avanzadas de renderizado gráfico',46),(47,'Interacción Multimodal','Sistemas que combinan múltiples modos de interacción',47),(48,'Simulación Biomolecular','Modelado computacional de sistemas biológicos',48),(49,'Evolución Dirigida','Técnicas computacionales para evolución molecular',49),(50,'Microbioma Humano','Estudio computacional de comunidades microbianas',50);
/*!40000 ALTER TABLE `linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produccion`
--

DROP TABLE IF EXISTS `produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produccion` (
  `idProduccion` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(60) NOT NULL,
  `titulo` varchar(230) NOT NULL,
  `anio` int NOT NULL,
  `idInvestigador` int NOT NULL,
  PRIMARY KEY (`idProduccion`),
  KEY `idInvestigador` (`idInvestigador`),
  CONSTRAINT `produccion_ibfk_1` FOREIGN KEY (`idInvestigador`) REFERENCES `investigador` (`idInvestigador`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produccion`
--

LOCK TABLES `produccion` WRITE;
/*!40000 ALTER TABLE `produccion` DISABLE KEYS */;
INSERT INTO `produccion` VALUES (1,'Libro','Fundamentos de IA en medicina',2022,1),(2,'Capítulo','Aplicaciones de nanomateriales',2020,2),(3,'Artículo','ML aplicado a mercados financieros',2023,3),(4,'Patente','Sistema de diagnóstico automatizado',2021,4),(5,'Reporte','Estado del arte en robótica colaborativa',2022,5),(6,'Artículo','Impacto de RV en aprendizaje',2023,6),(7,'Libro','Blockchain y gobierno abierto',2021,7),(8,'Capítulo','Avances en materiales compuestos',2022,8),(9,'Artículo','Análisis genómico de poblaciones',2020,9),(10,'Patente','Sistema autónomo para agricultura',2023,10),(11,'Reporte','IA en diagnóstico temprano de cáncer',2021,11),(12,'Artículo','Modelos de energías renovables urbanas',2022,12),(13,'Libro','Farmacología avanzada para diabetes',2020,13),(14,'Capítulo','Movilidad en ciudades inteligentes',2023,14),(15,'Artículo','Nanomedicina: avances recientes',2021,15),(16,'Patente','Algoritmos para análisis climático',2022,16),(17,'Reporte','Robótica en rehabilitación física',2020,17),(18,'Artículo','Realidad aumentada en museos',2023,18),(19,'Libro','Introducción a la criptografía cuántica',2021,19),(20,'Capítulo','Biodiversidad urbana',2022,20),(21,'Artículo','Ética en sistemas de IA',2020,21),(22,'Patente','Materiales para almacenamiento energético',2023,22),(23,'Reporte','Telemedicina en zonas marginadas',2021,23),(24,'Artículo','Agricultura de precisión con drones',2022,24),(25,'Libro','Modelado matemático de pandemias',2020,25),(26,'Capítulo','Tecnologías para adultos mayores',2023,26),(27,'Artículo','Sistemas de recomendación personalizados',2021,27),(28,'Patente','Aplicaciones de computación cuántica',2022,28),(29,'Reporte','Educación STEM en comunidades',2020,29),(30,'Artículo','Conservación de especies endémicas',2023,30),(31,'Libro','Diagnóstico de enfermedades raras',2021,31),(32,'Capítulo','Energía eólica offshore',2022,32),(33,'Artículo','Avances en terapias génicas',2020,33),(34,'Patente','Sistema de movilidad eléctrica',2023,34),(35,'Reporte','IA aplicada a sistemas judiciales',2021,35),(36,'Artículo','Nanomedicina contra el cáncer',2022,36),(37,'Libro','Robótica submarina autónoma',2020,37),(38,'Capítulo','Terapias con realidad virtual',2023,38),(39,'Artículo','Blockchain en logística',2021,39),(40,'Patente','Materiales biodegradables',2022,40),(41,'Reporte','Genética y longevidad',2020,41),(42,'Artículo','ML aplicado al arte digital',2023,42),(43,'Libro','Robótica quirúrgica',2021,43),(44,'Capítulo','Realidad aumentada en aulas',2022,44),(45,'Artículo','Seguridad en IoT',2020,45),(46,'Patente','Métodos de conservación de suelos',2023,46),(47,'Reporte','IA para diagnóstico de autismo',2021,47),(48,'Artículo','Energía solar en arquitectura',2022,48),(49,'Libro','Terapias digitales innovadoras',2020,49),(50,'Capítulo','Movilidad urbana sustentable',2023,50);
/*!40000 ALTER TABLE `produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `idProfesor` int NOT NULL AUTO_INCREMENT,
  `paterno` varchar(80) NOT NULL,
  `materno` varchar(80) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `email` varchar(250) NOT NULL,
  `fechaIngreso` date NOT NULL,
  PRIMARY KEY (`idProfesor`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'García','López','María Elena','maria.garcia@email.com','2015-08-20'),(2,'Martínez','Sánchez','Juan Carlos','juan.martinez@email.com','2016-03-15'),(3,'Rodríguez','Pérez','Ana Isabel','ana.rodriguez@email.com','2017-01-10'),(4,'Hernández','Gómez','Luis Fernando','luis.hernandez@email.com','2015-11-05'),(5,'López','Díaz','Carmen Rosa','carmen.lopez@email.com','2016-09-22'),(6,'González','Martínez','Jorge Alberto','jorge.gonzalez@email.com','2018-05-15'),(7,'Pérez','Rodríguez','Patricia Beatriz','patricia.perez@email.com','2015-07-30'),(8,'Sánchez','Hernández','Ricardo Javier','ricardo.sanchez@email.com','2016-02-18'),(9,'Ramírez','González','Laura Gabriela','laura.ramirez@email.com','2019-02-10'),(10,'Flores','Vázquez','Miguel Ángel','miguel.flores@email.com','2016-10-15'),(11,'Torres','Jiménez','Sofía Alejandra','sofia.torres@email.com','2017-05-25'),(12,'Castillo','Ruiz','Diego Armando','diego.castillo@email.com','2017-11-30'),(13,'Morales','Ortiz','Adriana Elizabeth','adriana.morales@email.com','2016-08-20'),(14,'Ortega','Silva','Fernando Javier','fernando.ortega@email.com','2017-07-15'),(15,'Vega','Mendoza','Claudia Patricia','claudia.vega@email.com','2018-04-05'),(16,'Reyes','Castro','Alejandro David','alejandro.reyes@email.com','2017-09-10'),(17,'Mendoza','Guerrero','Gabriela Alejandra','gabriela.mendoza@email.com','2016-12-20'),(18,'Guerrero','Ríos','Roberto Carlos','roberto.guerrero@email.com','2019-03-25'),(19,'Cruz','Navarro','Verónica Isabel','veronica.cruz@email.com','2018-06-30'),(20,'Ortiz','Vargas','Daniel Eduardo','daniel.ortiz@email.com','2017-04-15'),(21,'Juárez','Romero','Lucía Fernanda','lucia.juarez@email.com','2018-10-10'),(22,'Medina','Cervantes','Oscar Manuel','oscar.medina@email.com','2017-08-25'),(23,'Cortés','Salazar','Mariana Guadalupe','mariana.cortes@email.com','2019-01-05'),(24,'Rojas','Miranda','José Antonio','jose.rojas@email.com','2018-08-15'),(25,'Acosta','Campos','Silvia Patricia','silvia.acosta@email.com','2017-05-18'),(26,'Moreno','Vega','Francisco Javier','francisco.moreno@email.com','2019-01-20'),(27,'Delgado','Rosas','Teresa Margarita','teresa.delgado@email.com','2018-03-10'),(28,'Castañeda','Ochoa','Raúl Alejandro','raul.castaneda@email.com','2017-09-30'),(29,'Núñez','Pineda','Diana Carolina','diana.nunez@email.com','2019-04-22'),(30,'Salazar','Mejía','Arturo Benjamín','arturo.salazar@email.com','2018-11-05'),(31,'Vázquez','Lara','Beatriz Adriana','beatriz.vazquez@email.com','2017-12-15'),(32,'Aguilar','Sosa','Gerardo Ignacio','gerardo.aguilar@email.com','2019-05-30'),(33,'Rivera','Fuentes','Leticia Margarita','leticia.rivera@email.com','2018-02-12'),(34,'Méndez','Valdez','Héctor Manuel','hector.mendez@email.com','2017-10-25'),(35,'Cervantes','Rangel','Norma Angélica','norma.cervantes@email.com','2019-06-18'),(36,'Valencia','Barrera','Sergio Eduardo','sergio.valencia@email.com','2018-07-01'),(37,'Espinoza','Zúñiga','Rosa María','rosa.espinoza@email.com','2017-11-20'),(38,'Chávez','Ponce','Javier Alonso','javier.chavez@email.com','2019-07-15'),(39,'Campos','Santos','Alejandra Beatriz','alejandra.campos@email.com','2018-04-30'),(40,'Rosales','Gutiérrez','Mario Alberto','mario.rosales@email.com','2017-12-10'),(41,'Soto','Cisneros','Guadalupe Teresa','guadalupe.soto@email.com','2019-08-25'),(42,'Franco','Maldonado','Alberto Carlos','alberto.franco@email.com','2018-05-12'),(43,'Barrera','Reyes','Clara Susana','clara.barrera@email.com','2017-09-05'),(44,'Miranda','Aguirre','Enrique Rafael','enrique.miranda@email.com','2019-09-30'),(45,'Ríos','Cárdenas','Isabel Cristina','isabel.rios@email.com','2018-06-15'),(46,'Zamora','Delgado','Pedro Pablo','pedro.zamora@email.com','2017-10-10'),(47,'Pineda','Villarreal','Luisa Fernanda','luisa.pineda@email.com','2019-10-12'),(48,'Quintero','Zavala','Ricardo Ernesto','ricardo.quintero@email.com','2018-07-20'),(49,'Villarreal','Orozco','María del Carmen','maria.villarreal@email.com','2017-11-05'),(50,'Orozco','Serrano','José Luis','jose.orozco@email.com','2019-11-18');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programa` (
  `idPrograma` int NOT NULL AUTO_INCREMENT,
  `nivel` varchar(25) NOT NULL,
  `nombre` varchar(130) NOT NULL,
  `fechaInicio` date NOT NULL,
  PRIMARY KEY (`idPrograma`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` VALUES (1,'Licenciatura','Ingeniería en Computación','2010-08-01'),(2,'Maestría','Ciencias de la Computación','2012-01-15'),(3,'Doctorado','Tecnologías de la Información','2015-08-20'),(4,'Licenciatura','Matemáticas Aplicadas','2011-01-10'),(5,'Maestría','Inteligencia Artificial','2013-08-05'),(6,'Doctorado','Ciencia de Datos','2016-01-20'),(7,'Licenciatura','Física','2010-08-15'),(8,'Maestría','Nanotecnología','2014-01-10'),(9,'Doctorado','Bioinformática','2017-08-12'),(10,'Licenciatura','Ingeniería Robótica','2012-01-20'),(11,'Maestría','Sistemas Inteligentes','2015-08-25'),(12,'Doctorado','Computación Cuántica','2018-01-15'),(13,'Licenciatura','Actuaría','2011-08-10'),(14,'Maestría','Estadística','2013-01-05'),(15,'Doctorado','Matemáticas Puras','2016-08-18'),(16,'Licenciatura','Ingeniería en Telecomunicaciones','2010-01-12'),(17,'Maestría','Redes de Computadoras','2014-08-22'),(18,'Doctorado','Seguridad Informática','2017-01-30'),(19,'Licenciatura','Ingeniería en Software','2011-08-05'),(20,'Maestría','Ingeniería de Sistemas','2015-01-15'),(21,'Doctorado','Arquitectura de Software','2018-08-10'),(22,'Licenciatura','Ciencias de Datos','2012-01-18'),(23,'Maestría','Big Data','2016-08-25'),(24,'Doctorado','Analítica Avanzada','2019-01-12'),(25,'Licenciatura','Ingeniería en Inteligencia Artificial','2013-08-15'),(26,'Maestría','Aprendizaje Automático','2017-01-20'),(27,'Doctorado','Visión por Computadora','2020-08-18'),(28,'Licenciatura','Matemáticas Computacionales','2011-01-05'),(29,'Maestría','Modelado Matemático','2014-08-30'),(30,'Doctorado','Sistemas Complejos','2018-01-22'),(31,'Licenciatura','Ingeniería en Ciberseguridad','2012-08-12'),(32,'Maestría','Seguridad de la Información','2016-01-15'),(33,'Doctorado','Criptografía','2019-08-20'),(34,'Licenciatura','Ingeniería en Sistemas Digitales','2010-01-18'),(35,'Maestría','Diseño Digital','2015-08-25'),(36,'Doctorado','Electrónica Avanzada','2018-01-10'),(37,'Licenciatura','Ingeniería en Mecatrónica','2011-08-15'),(38,'Maestría','Control Automático','2014-01-22'),(39,'Doctorado','Robótica Avanzada','2017-08-30'),(40,'Licenciatura','Ingeniería Biomédica','2012-01-05'),(41,'Maestría','Tecnologías Médicas','2016-08-18'),(42,'Doctorado','Bioingeniería','2019-01-25'),(43,'Licenciatura','Ingeniería Física','2013-08-10'),(44,'Maestría','Física Aplicada','2017-01-15'),(45,'Doctorado','Física Teórica','2020-08-22'),(46,'Licenciatura','Ingeniería en Energía','2011-01-20'),(47,'Maestría','Energías Renovables','2015-08-05'),(48,'Doctorado','Sistemas Energéticos','2018-01-30'),(49,'Licenciatura','Ingeniería Ambiental','2012-08-15'),(50,'Licenciatura','Ingeniería en Energía','2011-01-20');
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `idProyecto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `inicio` date NOT NULL,
  `final` date DEFAULT NULL,
  `idInvestigador` int NOT NULL,
  PRIMARY KEY (`idProyecto`),
  KEY `idInvestigador` (`idInvestigador`),
  CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`idInvestigador`) REFERENCES `investigador` (`idInvestigador`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Desarrollo de algoritmos cuánticos','2020-01-15','2023-06-30',1),(2,'Nanomateriales para energía solar','2019-05-20','2022-11-30',2),(3,'Machine Learning para finanzas','2022-02-01','2025-01-31',3),(4,'Biotecnología agrícola sostenible','2020-07-15','2023-09-30',4),(5,'Robótica colaborativa industrial','2021-09-01','2024-08-31',5),(6,'Realidad virtual en educación','2022-01-10','2025-06-30',6),(7,'Blockchain para transparencia gubernamental','2020-11-15','2023-12-31',7),(8,'Materiales compuestos avanzados','2019-08-20','2024-05-15',8),(9,'Genómica de poblaciones','2021-04-05','2025-03-31',9),(10,'Sistemas autónomos para agricultura','2020-10-01','2023-12-15',10),(11,'Diagnóstico temprano de cáncer con IA','2021-07-20','2024-11-30',11),(12,'Energías renovables en zonas urbanas','2022-03-15','2025-02-28',12),(13,'Fármacos inteligentes para diabetes','2019-12-10','2023-10-31',13),(14,'Ciudades inteligentes y movilidad','2020-06-05','2024-05-30',14),(15,'Nanotecnología aplicada a medicina','2021-01-25','2024-09-15',15),(16,'Big Data para análisis climático','2022-05-10','2025-04-30',16),(17,'Robótica de rehabilitación','2020-09-15','2023-08-31',17),(18,'Realidad aumentada en museos','2021-11-20','2024-10-15',18),(19,'Criptografía post-cuántica','2019-04-01','2023-07-31',19),(20,'Biodiversidad en ecosistemas urbanos','2020-08-12','2024-06-30',20),(21,'Inteligencia artificial ética','2021-02-28','2025-01-15',21),(22,'Materiales para almacenamiento de energía','2022-04-05','2025-03-31',22),(23,'Telemedicina en zonas rurales','2020-12-10','2023-11-30',23),(24,'Agricultura de precisión con drones','2019-07-15','2023-05-31',24),(25,'Modelado de pandemias','2021-05-20','2024-12-31',25),(26,'Tecnologías para el envejecimiento activo','2022-02-15','2025-01-31',26),(27,'Sistemas de recomendación personalizados','2020-10-30','2024-09-30',27),(28,'Computación cuántica aplicada','2019-03-25','2023-12-31',28),(29,'Educación STEM en comunidades','2021-08-10','2025-07-31',29),(30,'Conservación de especies endémicas','2022-01-05','2024-12-15',30),(31,'Diagnóstico de enfermedades raras','2020-07-20','2023-11-30',31),(32,'Energía eólica offshore','2019-11-15','2024-10-31',32),(33,'Terapias génicas innovadoras','2021-04-01','2025-03-31',33),(34,'Movilidad eléctrica urbana','2022-06-10','2025-05-31',34),(35,'Inteligencia artificial en justicia','2020-02-25','2023-12-31',35),(36,'Nanomedicina para cáncer','2019-09-10','2024-08-31',36),(37,'Sistemas autónomos submarinos','2021-12-15','2025-01-31',37),(38,'Realidad virtual para fobias','2022-03-20','2024-11-30',38),(39,'Blockchain en cadena de suministro','2020-05-05','2023-10-31',39),(40,'Materiales biodegradables','2019-10-20','2024-09-30',40),(41,'Genética de la longevidad','2021-01-10','2025-02-28',41),(42,'Machine Learning para arte','2022-04-15','2025-03-31',42),(43,'Robótica en cirugía','2020-08-30','2024-07-31',43),(44,'Realidad aumentada en educación','2019-12-05','2023-11-30',44),(45,'Ciberseguridad en IoT','2021-06-10','2025-05-31',45),(46,'Conservación de suelos','2022-02-20','2024-12-31',46),(47,'Diagnóstico de autismo con IA','2020-04-15','2023-10-31',47),(48,'Energía solar en edificios','2019-07-30','2024-06-30',48),(49,'Terapias digitales','2021-10-05','2025-09-30',49),(50,'Movilidad sustentable','2022-01-10','2024-12-31',50);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gcs-principal'
--

--
-- Dumping routines for database 'gcs-principal'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 13:18:53
