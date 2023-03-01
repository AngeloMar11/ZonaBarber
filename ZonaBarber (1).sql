CREATE DATABASE  IF NOT EXISTS `zonabarber` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `zonabarber`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: zonabarber
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
-- Table structure for table `tblcierrecaja`
--

DROP TABLE IF EXISTS `tblcierrecaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcierrecaja` (
  `idTblCierreCaja` smallint NOT NULL AUTO_INCREMENT,
  `idTblSeleccionProductos` smallint DEFAULT NULL,
  `Ganancias` int DEFAULT NULL,
  PRIMARY KEY (`idTblCierreCaja`),
  KEY `idTblSeleccionProductos` (`idTblSeleccionProductos`),
  CONSTRAINT `tblcierrecaja_ibfk_1` FOREIGN KEY (`idTblSeleccionProductos`) REFERENCES `tblseleccionproductos` (`idTblSeleccionProductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcierrecaja`
--

LOCK TABLES `tblcierrecaja` WRITE;
/*!40000 ALTER TABLE `tblcierrecaja` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcierrecaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcitas`
--

DROP TABLE IF EXISTS `tblcitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcitas` (
  `idTblCitas` smallint NOT NULL AUTO_INCREMENT,
  `idTblTrabajador` smallint DEFAULT NULL,
  `idTblClientes` smallint DEFAULT NULL,
  `idTblCierreCaja` smallint DEFAULT NULL,
  `idTblEstadoCita` smallint DEFAULT NULL,
  `idTblServicio` smallint DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` datetime(6) DEFAULT NULL,
  `Codigo_Verificacion` int DEFAULT NULL,
  PRIMARY KEY (`idTblCitas`),
  KEY `idTblTrabajador` (`idTblTrabajador`),
  KEY `idTblClientes` (`idTblClientes`),
  KEY `idTblCierreCaja` (`idTblCierreCaja`),
  KEY `idTblEstadoCita` (`idTblEstadoCita`),
  KEY `idTblServicio` (`idTblServicio`),
  CONSTRAINT `tblcitas_ibfk_1` FOREIGN KEY (`idTblTrabajador`) REFERENCES `tbltrabajador` (`idTblTrabajador`),
  CONSTRAINT `tblcitas_ibfk_2` FOREIGN KEY (`idTblClientes`) REFERENCES `tblclientes` (`idTblClientes`),
  CONSTRAINT `tblcitas_ibfk_3` FOREIGN KEY (`idTblCierreCaja`) REFERENCES `tblcierrecaja` (`idTblCierreCaja`),
  CONSTRAINT `tblcitas_ibfk_4` FOREIGN KEY (`idTblEstadoCita`) REFERENCES `tblestadocita` (`idTblEstadoCita`),
  CONSTRAINT `tblcitas_ibfk_5` FOREIGN KEY (`idTblServicio`) REFERENCES `tblservicio` (`idTblServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcitas`
--

LOCK TABLES `tblcitas` WRITE;
/*!40000 ALTER TABLE `tblcitas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclientes`
--

DROP TABLE IF EXISTS `tblclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblclientes` (
  `idTblClientes` smallint NOT NULL AUTO_INCREMENT,
  `idUsuario_Con` int DEFAULT NULL,
  `idTblSeleccionProductos` smallint DEFAULT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `identificacion` varchar(45) NOT NULL,
  `tipo_identificacion` varchar(45) NOT NULL,
  `Celular` int NOT NULL,
  PRIMARY KEY (`idTblClientes`),
  KEY `idTblSeleccionProductos` (`idTblSeleccionProductos`),
  KEY `IdUsuario_Con_idx` (`idUsuario_Con`),
  CONSTRAINT `IdUsuario_Con` FOREIGN KEY (`idUsuario_Con`) REFERENCES `tblusuario_con` (`idTblUsuario_Con`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclientes`
--

LOCK TABLES `tblclientes` WRITE;
/*!40000 ALTER TABLE `tblclientes` DISABLE KEYS */;
INSERT INTO `tblclientes` VALUES (1,NULL,NULL,'Angelo','Martinez','Calle 34','1001051559','Cedula',319310205);
/*!40000 ALTER TABLE `tblclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestadocita`
--

DROP TABLE IF EXISTS `tblestadocita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblestadocita` (
  `idTblEstadoCita` smallint NOT NULL AUTO_INCREMENT,
  `Notificacion` varchar(45) DEFAULT NULL,
  `Cancelado` varchar(45) DEFAULT NULL,
  `Programado` varchar(45) DEFAULT NULL,
  `En_servicio` varchar(45) DEFAULT NULL,
  `Calificacion` int DEFAULT NULL,
  PRIMARY KEY (`idTblEstadoCita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestadocita`
--

LOCK TABLES `tblestadocita` WRITE;
/*!40000 ALTER TABLE `tblestadocita` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblestadocita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhorario`
--

DROP TABLE IF EXISTS `tblhorario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhorario` (
  `idTblHorario` smallint NOT NULL AUTO_INCREMENT,
  `HoraInreso` datetime(6) DEFAULT NULL,
  `HoraSalida` datetime(6) DEFAULT NULL,
  `Dias` date DEFAULT NULL,
  PRIMARY KEY (`idTblHorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhorario`
--

LOCK TABLES `tblhorario` WRITE;
/*!40000 ALTER TABLE `tblhorario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhorario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductos`
--

DROP TABLE IF EXISTS `tblproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproductos` (
  `idTblProductos` smallint NOT NULL AUTO_INCREMENT,
  `idTblProveedores` smallint DEFAULT NULL,
  `Foto` varchar(100) DEFAULT NULL,
  `Valor_Producto_venta` int DEFAULT NULL,
  `Nombre_Productos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTblProductos`),
  KEY `idTblProveedores` (`idTblProveedores`),
  CONSTRAINT `tblproductos_ibfk_1` FOREIGN KEY (`idTblProveedores`) REFERENCES `tblproveedores` (`idTblProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductos`
--

LOCK TABLES `tblproductos` WRITE;
/*!40000 ALTER TABLE `tblproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpromociones`
--

DROP TABLE IF EXISTS `tblpromociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpromociones` (
  `idTblPromociones` smallint NOT NULL AUTO_INCREMENT,
  `idTblProductos` smallint DEFAULT NULL,
  `Nombre_Promocion` varchar(45) DEFAULT NULL,
  `Descripcion_promocion` text,
  `Porcentaje_promocion` int DEFAULT NULL,
  PRIMARY KEY (`idTblPromociones`),
  KEY `idTblProductos` (`idTblProductos`),
  CONSTRAINT `tblpromociones_ibfk_1` FOREIGN KEY (`idTblProductos`) REFERENCES `tblproductos` (`idTblProductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpromociones`
--

LOCK TABLES `tblpromociones` WRITE;
/*!40000 ALTER TABLE `tblpromociones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproveedores`
--

DROP TABLE IF EXISTS `tblproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproveedores` (
  `idTblProveedores` smallint NOT NULL AUTO_INCREMENT,
  `Nombre_Provedor` varchar(45) DEFAULT NULL,
  `Valor_Producto` int DEFAULT NULL,
  `Productos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTblProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproveedores`
--

LOCK TABLES `tblproveedores` WRITE;
/*!40000 ALTER TABLE `tblproveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblseleccionproductos`
--

DROP TABLE IF EXISTS `tblseleccionproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblseleccionproductos` (
  `idTblSeleccionProductos` smallint NOT NULL AUTO_INCREMENT,
  `idTblProductos` smallint DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `Seleccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTblSeleccionProductos`),
  KEY `idTblProductos` (`idTblProductos`),
  CONSTRAINT `tblseleccionproductos_ibfk_1` FOREIGN KEY (`idTblProductos`) REFERENCES `tblproductos` (`idTblProductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblseleccionproductos`
--

LOCK TABLES `tblseleccionproductos` WRITE;
/*!40000 ALTER TABLE `tblseleccionproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblseleccionproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservicio`
--

DROP TABLE IF EXISTS `tblservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblservicio` (
  `idTblServicio` smallint NOT NULL AUTO_INCREMENT,
  `idTblPromociones` smallint DEFAULT NULL,
  `Nombre_Servicio` varchar(45) DEFAULT NULL,
  `Precio_Servicio` int DEFAULT NULL,
  PRIMARY KEY (`idTblServicio`),
  KEY `idTblPromociones` (`idTblPromociones`),
  CONSTRAINT `tblservicio_ibfk_1` FOREIGN KEY (`idTblPromociones`) REFERENCES `tblpromociones` (`idTblPromociones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservicio`
--

LOCK TABLES `tblservicio` WRITE;
/*!40000 ALTER TABLE `tblservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltrabajador`
--

DROP TABLE IF EXISTS `tbltrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltrabajador` (
  `idTblTrabajador` smallint NOT NULL AUTO_INCREMENT,
  `idTblHorario` smallint DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Celular` smallint DEFAULT NULL,
  `Hombre` varchar(10) DEFAULT NULL,
  `Mujer` varchar(10) DEFAULT NULL,
  `Otro` varchar(10) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Empleado` varchar(45) DEFAULT NULL,
  `Administrador` varchar(45) DEFAULT NULL,
  `Servicio` text,
  PRIMARY KEY (`idTblTrabajador`),
  KEY `idTblHorario` (`idTblHorario`),
  CONSTRAINT `tbltrabajador_ibfk_1` FOREIGN KEY (`idTblHorario`) REFERENCES `tblhorario` (`idTblHorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltrabajador`
--

LOCK TABLES `tbltrabajador` WRITE;
/*!40000 ALTER TABLE `tbltrabajador` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltrabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuario_con`
--

DROP TABLE IF EXISTS `tblusuario_con`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusuario_con` (
  `idTblUsuario_Con` int NOT NULL AUTO_INCREMENT,
  `Correo` varchar(45) NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  PRIMARY KEY (`idTblUsuario_Con`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuario_con`
--

LOCK TABLES `tblusuario_con` WRITE;
/*!40000 ALTER TABLE `tblusuario_con` DISABLE KEYS */;
INSERT INTO `tblusuario_con` VALUES (1,'angelo@','naA123de');
/*!40000 ALTER TABLE `tblusuario_con` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21 16:41:17
