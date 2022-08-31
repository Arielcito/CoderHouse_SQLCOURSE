-- Las tablas incluidas son:
-- appointment,patient,doctor,treatment,hospital,medical_history,room,medicine

-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,15,'2022-08-17 12:37:14','2022-08-20 15:00:00'),(2,2,14,'2022-08-17 12:37:14','2022-08-21 15:00:00'),(3,3,13,'2022-08-17 12:37:14','2022-08-22 15:00:00'),(4,4,12,'2022-08-17 12:37:14','2022-08-23 15:00:00'),(5,5,11,'2022-08-17 12:37:14','2022-08-24 15:00:00'),(6,6,10,'2022-08-17 12:37:14','2022-08-25 15:00:00'),(7,7,9,'2022-08-17 12:37:14','2022-08-26 15:00:00'),(8,8,8,'2022-08-17 12:37:14','2022-08-27 15:00:00'),(9,9,7,'2022-08-17 12:37:14','2022-08-28 15:00:00'),(10,10,6,'2022-08-17 12:37:14','2022-08-29 15:00:00'),(11,11,5,'2022-08-17 12:37:14','2022-08-30 15:00:00'),(12,12,4,'2022-08-17 12:37:14','2022-08-30 16:00:00'),(13,13,3,'2022-08-17 12:37:14','2022-08-30 17:00:00'),(14,14,2,'2022-08-17 12:37:14','2022-08-30 18:00:00'),(15,15,1,'2022-08-17 12:37:14','2022-08-30 19:00:00');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,1,'Rodrigo','Martin','Dermatologo','1103265197','Hombre','Calle falsa 123'),(2,1,'Sofía','Ferrer','Odontologo','1158328170','Mujer','Calle falsa 1456'),(3,1,'Carlos','Nuñez','Cardiologo','1144977819','Hombre','Calle falsa 612'),(4,2,'Ana','Curiel','Neurocirujano','1121278891','Mujer','Calle falsa 723'),(5,2,'Esteban','Garcia','Urologo','1113751666','Hombre','Calle falsa 934'),(6,2,'Sofía','Ferrer','Ortopedico','1118785120','Mujer','Calle falsa 126'),(7,3,'Ivan','Santiago','Ginecologo','1143627768','Hombre','Calle falsa 461'),(8,3,'Lucía','Molina','Oftalmologo','1110713365','Mujer','Calle falsa 312'),(9,3,'Diego','Velasco','Otorrinolaringologo','1134913375','Hombre','Calle falsa 416'),(10,4,'Renata','Mendez','Psiquiatria','1146119346','Mujer','Calle falsa 623'),(11,4,'Josué','Parra','Urologo','1168170172','Hombre','Calle falsa 678'),(12,4,'Julieta','Gallego','Dermatologo','1158922973','Mujer','Calle falsa 734'),(13,4,'Dante','Ferrer','Fisioterapia','1124716079','Hombre','Calle falsa 893'),(14,1,'María','Caballero','Dermatologo','1193144277','Mujer','Calle falsa 245'),(15,1,'Juan','Perez','Cardiologo','1179963530','Hombre','Calle falsa 674');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'Clinica monte grande','las heras 292',1195134079),(2,'Clinica Lomas De Zamora','las heras 292',1164454254),(3,'Clinica San Vicente','las heras 292',1138166324),(4,'Clinica Ezeiza','las heras 292',1165698879);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medical_history`
--

LOCK TABLES `medical_history` WRITE;
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
INSERT INTO `medical_history` VALUES (1,1,1,1,'Fiebre Alta',1),(2,2,2,2,'Lorem ipsum dolor.',1),(3,3,3,3,'Lorem ipsum dolor.',1),(4,4,4,4,'Lorem ipsum dolor.',1),(5,5,5,1,'Lorem ipsum dolor.',1),(6,6,6,1,'Fiebre Alta',1),(7,7,7,2,'Lorem ipsum dolor.',1),(8,8,8,3,'Lorem ipsum dolor.',1),(9,9,9,4,'Lorem ipsum dolor.',1),(10,10,10,1,'Lorem ipsum dolor.',1),(11,11,11,1,'Fiebre Alta',1),(12,12,12,2,'Lorem ipsum dolor.',1),(13,13,13,3,'Lorem ipsum dolor.',1),(14,14,14,4,'Lorem ipsum dolor.',1),(15,15,15,1,'Lorem ipsum dolor.',1);
/*!40000 ALTER TABLE `medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,100,2,30,'Tafirol','Antifrebril'),(2,100,2,30,'Simvastatina','controlar el colesterol'),(3,100,2,30,'Aspirina','Antifrebril'),(4,100,2,30,'Omeprazol','acidez de estómago'),(5,100,2,30,'Ramipril','hipertensión'),(6,100,2,30,'Paracetamol','aliviar el dolor'),(7,100,2,30,'Salbutamol','Asma'),(8,100,2,30,'Citalopram hidrobromuro','un antidepresivo'),(9,100,2,30,'La furosemida','un diurético'),(10,100,2,30,'Warfarina sódica','un anticoagulante'),(11,100,2,30,'Atorvastatina','Colesterol'),(12,100,2,30,'Lanzoprazol','El acido del estomago'),(13,100,2,30,'Hidocloruro de metformina','Antidiabetico'),(14,100,2,30,'Colecalciferol','Vitamina D'),(15,100,2,30,'Co-codamol','Aliviar el dolor o analgesico');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,43515134,'Ariel','Serato','osde',123456789,'1122535767','Hombre','Monte grande'),(2,35279074,'Luis ','Sanmiguel','IOMA',981323557,'1122535767','Hombre','Monte grande'),(3,62249317,'Xiomara','Carrasco','galeno',502807880,'1122535767','Hombre','Monte grande'),(4,43515134,'Francisco','Valverde','IOMA',157195059,'1122535767','Hombre','Monte grande'),(5,96809181,'Nicolás','Piña','osde',284665406,'1171745250','Hombre','Lomas De Zamora'),(6,13995862,'Juana','Ángel','pami',137553627,'1140364114','Hombre','Lomas De Zamora'),(7,27564980,'Bernardino','Hoz','osde',137283585,'1124464618','Hombre','Lomas De Zamora'),(8,80095713,'Vera','Yáñez','galeno',231099096,'1162315497','Hombre','Lomas De Zamora'),(9,68096069,'Liliana','Narváez','pami',933542559,'1111193894','Hombre','San Vicente'),(10,38444671,'Teresa','Jordá','osde',898504799,'1179074195','Hombre','San Vicente'),(11,52868090,'Ciro','Cabo','osde',993300903,'1155106827','Hombre','San Vicente'),(12,88224958,'Vito','Sacristán','galeno',930022265,'1192342658','Hombre','San Vicente'),(13,89157368,'Fidel','Carretero','ioma',904533525,'1182611531','Hombre','Ezeiza'),(14,67247269,'Roldán','Nuñez','osde',762126994,'1162674439','Hombre','Ezeiza'),(15,69053717,'Cipriano','del Salinas','ioma',759136311,'1195793767','Hombre','Ezeiza');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,'Consultorio 1'),(2,1,'Consultorio 2 '),(3,1,'Consultorio 3'),(4,2,'Consultorio 4'),(5,2,'Consultorio 5'),(6,2,'Consultorio 1'),(7,3,'Consultorio 2 '),(8,3,'Consultorio 3'),(9,3,'Consultorio 4'),(10,4,'Consultorio 5'),(11,4,'Consultorio 1'),(12,4,'Consultorio 2 '),(13,3,'Consultorio 3'),(14,3,'Consultorio 4'),(15,3,'Consultorio 5');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (1,1,1,1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(2,2,2,2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(3,3,3,3,'Tomar la medicina cada 24 horas y permanecer en camaLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(4,4,4,4,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla.',_binary ''),(5,5,5,5,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(6,6,6,6,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(7,7,7,7,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(8,8,8,8,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(9,9,9,9,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(10,11,10,10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla.',_binary ''),(11,12,11,11,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(12,13,12,12,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(13,14,13,13,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(14,15,14,14,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. Vivamus fringilla auctor diam, in auctor nulla molestie ut. Integer feugiat nec ante et pulvinar. Nam tristique risus est, eu gravida massa aliquam vitae. Aliquam urna leo, auctor vel consectetur vitae, ultrices et felis. Praesent eget diam in est vulputate fringilla. ',_binary ''),(15,10,15,15,'hola',_binary ''),(16,1,2,3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. ',_binary '');
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 21:28:06
