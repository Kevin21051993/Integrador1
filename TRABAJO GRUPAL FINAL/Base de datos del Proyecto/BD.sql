CREATE DATABASE  IF NOT EXISTS `dbcmsproductos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbcmsproductos`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbcmsproductos
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `Categoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`Categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'RELOJES Y ACCESORIOS','Productos de relojeria de mano tanto para hombres como para mujeres\r'),(2,'CELULARES Y TABLETAS','Dispositivos de comunicaciÃ³n inteligentes de diversas caracteristicas\r'),(3,'CAMARAS','Dispositivos que permitiran almacenar los mejores momentos de tu vida\r'),(4,'LAPTOPS','Computadores portatiles de ultima tecnologia en rendimiento y disenio\r'),(5,'PLAYSTATIONS','Consolas de videojuegos de ultima tecnologia PS1,2,3,4  Totalmente compatibles con TV\r'),(6,'TELEVISORES','Televisores de todos los tipos LED, HD, FULLHD, PLASMA, CURVE, CINEMA para que el momento en casa se'),(7,'hh','iiiiiii');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `Cod_Usuario` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido_Paterno` varchar(30) DEFAULT NULL,
  `Apellido_Materno` varchar(30) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Tipo` char(1) DEFAULT NULL,
  PRIMARY KEY (`Cod_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('cesar123','Cesar','salvatierra','Espinoza','123','cesar@gmail.com','2'),('lizardo2016','Lizardo','Silva','Ubaldo','123','C123@grupoutp.edu.pe','1'),('rivero19','Gustavo','Rivero','Garcia','123','jgriverogarcia@gmail.com','2');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenido_web`
--

DROP TABLE IF EXISTS `contenido_web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenido_web` (
  `Num` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(45) DEFAULT NULL,
  `Nom_Pagina` varchar(45) DEFAULT NULL,
  `Contenido` longblob,
  `Cod_Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Num`),
  KEY `contenidoweb_ibfk_1` (`Cod_Usuario`),
  CONSTRAINT `contenidoweb_ibfk_1` FOREIGN KEY (`Cod_Usuario`) REFERENCES `usuario` (`Cod_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido_web`
--

LOCK TABLES `contenido_web` WRITE;
/*!40000 ALTER TABLE `contenido_web` DISABLE KEYS */;
INSERT INTO `contenido_web` VALUES (3,'MISION','nosotros','La misión de nuestra empresa es la de aprovechar las tecnologias de informacion que internet pone a nuestro servicio en beneficio de nuestros clientes. Estamos ofreciendo atraves de internet beneficios importantes a nuestros clientes al ofreceropciones para comprar productos mas economicas, mas sencillas y mas eficientes.','lizardo2016'),(4,'VISION','nosotros','Nuestra empresa apuesta firmemente a la adopción e implementacion de las tecnologias modernas de informacion, que nos permiten avanzar de forma importante en la forma en la que vendemos productos en el mundo. Nosotros estamos convencidos que atraves de internet, podemos vender productos a precios mas bajos, de forma mas practica y sencilla.','lizardo2016'),(7,'carrousel2','inicio','c1.jpg','lizardo2016'),(8,'carrousel3','inicio','tienda-virtual-2016-a-un-click-colombia.png','lizardo2016'),(9,'inicio','inicion','Home','lizardo2016'),(10,'nosotros','inicion','Nosotros','lizardo2016'),(11,'productos','inicion','Productos','lizardo2016'),(12,'PORTADA','nosotros','portada.jpg','lizardo2016'),(13,'UBICACION','nosotros','<iframe src=\"https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d975.4213750774521!2d-77.036809038414!3d-12.06514662281234!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2spe!4v1478493689788\" width=\"600\" height=\"450\" frameborder=\"0\" st','lizardo2016'),(14,'colorfondo','general','#f0f0f0','lizardo2016'),(15,'colorletra','general','#000000','lizardo2016'),(16,'tamanoletra','general','16','lizardo2016'),(17,'tipoletra','general','Verdana','lizardo2016'),(18,'colorfmenu','general','#353e4a','lizardo2016'),(19,'colorlmenu','general','#ffffff','lizardo2016'),(20,'tamanoletram','general','15','lizardo2016'),(21,'tamanotitulos','general','36','lizardo2016'),(22,'contacto','inicion','Contacto','lizardo2016'),(23,'carrousel1','inicio1','ca3.jpg','lizardo2016'),(25,'FMISION','nosotros','fmision.jpg','lizardo2016'),(26,'FVISION','nosotros','VISION.jpg','lizardo2016'),(27,'FUBICANOS','nosotros','fubicanos.png','lizardo2016'),(28,'FCONTACTO','contacto','fcontactanos.jpg','lizardo2016');
/*!40000 ALTER TABLE `contenido_web` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `Id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_marca` text NOT NULL,
  `Desc_marca` text NOT NULL,
  PRIMARY KEY (`Id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'CANON','Marca NÂº1 en camaras profesionales y semiprofesionales\r'),(2,'SAMSUNG','Marca top a nivel mundial lider en el sector movil\r'),(3,'QUARTZ','Marca de relojeria americana sinonimo de calidad\r'),(4,'SONY','Marca americana significado de garantia en sus productos\r'),(5,'TOSHIBA','Marca de computadores portatiles, simbolo de innovacion permanente\r'),(6,'APPLE','Marca de computadores y dispositivos tecnologicos lider en sus sectores\r'),(7,'NEW ENGLAND','Marca de relojeria Inglesa posicionada en todo el globo\r'),(8,'HUAWEY','Marca disponsitivos tecnologicos ,celulares,tablets,etc\r'),(9,'HTC','Marca disponsitivos tecnologicos ,celulares,tablets,etc\r'),(10,'JM','Marca de dispositivos de localizacion\r'),(12,'HP','Marca reconocida en equipos de tecnologia, almacenamiento, impresoras y computadores\r');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo` (
  `Id_modelo` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_modelo` text NOT NULL,
  `Desc_modelo` text,
  PRIMARY KEY (`Id_modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` VALUES (1,'Toshiba 41-X','CORE I7 5500u,12GB,1TB,15.6 Windows 8.1  2GB NVIDIA GFORCE\r'),(2,'HDR-X190','Modelo Top Lente G angular zoom optico 30x FULLHD Incluye sensor CMOS y Proyector\r'),(3,'Galaxy S3','Ultima edicion de la familia Galaxy. Es lo ultimo en tecnologia movil\r'),(4,'ORLANDO','Material de Aleacion de plata con acero. Tiene segundero\r'),(5,'Iphone 5S','\"Pantalla 4\"\" 2 Nucleos 1GB RAM 64GB Memoria  8Mpx\"\r'),(6,'KOORLAN','Reloj Plata al 85% Trozos de baÃ±o de oro\r'),(7,'SX530','\"Modelo de camara semiprofesional con zoom 100x Pantalla Led 7.5\"\"\"\r'),(8,'TIZEN','modelo de tv curvo samsung\r'),(9,'JM','Modelo de localizador\r'),(10,'Etrex 10','Modelo de localizador\r'),(11,'P8 Lite','Modelo de celular de gama media\r'),(12,'M8','Modelo de celular de gama alta\r'),(13,'Galaxy S7','Modelo de celular de gama alta\r'),(14,'UN40KU6000','Modelo de tv plasma smart\r'),(15,'KG-40','Televisor sony android\r'),(17,'HP - 15','hp Intel Core i5-6200U 2.30GHz\r'),(18,'Consola Azul PS4','Consola categorizada por Sony\r'),(19,'Driving Force Shifter','modelo de Jostick Integrado\r'),(20,'Consola Negro PS4','Mando Ps4');
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `Id_producto` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `Id_marca` int(11) NOT NULL,
  `Id_modelo` int(11) NOT NULL,
  `Categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`Id_producto`),
  KEY `productos_ibfk_1` (`Id_marca`),
  KEY `productos_ibfk_2` (`Id_modelo`),
  KEY `productos_ibfk_3_idx` (`Categoria_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Id_marca`) REFERENCES `marca` (`Id_marca`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`Id_modelo`) REFERENCES `modelo` (`Id_modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Reloj Plata','Material de Aleacion de plata con acero. Tiene segundero','ORLANDO.jpg',100,500,7,4,1),(2,'Reloj Espiral','Reloj Plata al 85% Trozos de baño de oro','KOORLAN.jpg',120,60,7,6,1),(3,'Celular Galaxy S3','Samsung Galaxy S3 Azul Metalico 12Mpx 32GB','Galaxy S3.jpg',500,100,2,3,2),(4,'Celular Iphone 5S','Iphone 5S Plus Negro 64GB 10Mpx 4.5Pulgadas','Iphone 5S.jpg',800,120,6,5,2),(5,'Camara CANON PowerShot SX530','PowerShot SX530 HS 16MP 50x Zoom WiFi NFC - Negro','SX530.jpg',700,80,1,7,3),(6,'Camara SONY HandyCam HDR-X190','Camara Filmadora SONY HC-V160 77x zoom inteligente Full HD - Negro','HDR-X190.jpg',2000,80,4,2,3),(7,'Laptop Toshiba Corei7 12GB RAM 1TB DDR','Toshiba - LAPTOP S55-C5214S - CORE I7 5500u,12GB,1TB,15.6 Windows 8.1  2GB NVIDIA GFORCE','S55-C5214S.jpg',3400,50,5,1,4),(8,'Huawei P8 Lite 16GB 13MP 4G LTE','\"Pantalla 5\"\" 2GB RAM Android 5.0 Lolipop 2G/3G/4G LTE Memoria micro expandible hasta 128GB\"','Huawei P8.jpg',800,200,8,11,2),(9,'HTC one M8 32GB ','\"Color Griss Pantalla 5\"\" Cámara 5Mpx  3GB RAM 32GB MEMORIA Android 4.4.2 \"','HTC M8.jpg',658,180,9,12,2),(10,'Samsung Galaxy S7 Edge G935F LTE 32GB','4G Almacenamiento 32GB Android 6.0 Pantalla 5.5 Cámaras 5Mpx y 12Mpx ','Galaxy S7 Edge.jpg',2600,200,2,13,2),(11,'Samsung Ultra HD 4K Smart TV Tizen 40\'\'','\"Pantalla 40\"\" Ultra HD Resolución 3840  2160 -Wifi-HDMI 3-USB 2-Puerto Ethernet-Sintonizador Digital\"','samsung ultra.jpg',1400,200,2,14,6),(12,'Android TV','Android 5.1 Lollipop 3D Activo Full HD 1920 X 1080 Marco de aluminio de alta calidad Entradas USB y HDMI','Sony Android.jpg',2600,200,4,15,6),(13,'Samsung TV Curved Smart 3D SUHD Tizen 65','Color: negro - pantalla: LED Ultra HD 55 pulgadas - 3 x HDMI - 2 x USB - 1 x Ethernet (LAN) - Esctructura curva de última generación','Samsung curved.jpg',3500,200,2,9,6),(15,'Sony - Control Dualshock 4 Para PS4 - Negro','Diseño ergonómico-Panel táctil-Joysticks-Altavoz incorporado-Entrada  para audífonos-inalámbrico','sonym02.jpg',218,70,4,20,5),(16,'Notebook HP -15-AC135LA Intel Core i5-6200U','\"Notebook HP -15-AC135LA Intel Core i5-6200U 2.30GHz 8GB 1TB HDD 2GB ATI Radeon DDR3 15.6\"\" LED Win 10 mÃ?ÃÂ¡s Mochila - Rojo\"','laptophp01.jpg',3000,60,12,17,4),(17,'Consola PlayStation4 500GB + No Mans Sky','Color Negro-HDMI Cable-Mono Headset-USB cable Printed materials (not Shown)','sonym01.jpg',1900,30,4,18,5);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `Num_V` int(5) NOT NULL AUTO_INCREMENT,
  `Cod_Usuario` varchar(45) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Num_V`),
  KEY `venta_ibfk_1` (`Cod_Usuario`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`Cod_Usuario`) REFERENCES `usuario` (`Cod_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'rivero19',6070.00,'2016-11-08 23:03:33'),(2,'rivero19',3900.00,'2016-11-09 17:59:09'),(11,'rivero19',4800.00,'2016-11-11 09:05:21'),(12,'rivero19',45000.00,'2016-11-11 09:06:08'),(13,'rivero19',122500.00,'2016-11-16 01:46:17'),(14,'cesar123',33500.00,'2016-11-19 12:39:04'),(15,'rivero19',27200.00,'2016-11-20 11:20:04'),(16,'rivero19',14000.00,'2016-11-20 12:02:47'),(17,'rivero19',14000.00,'2016-11-20 12:02:52'),(18,'rivero19',14000.00,'2016-11-20 12:02:56'),(19,'rivero19',171500.00,'2016-11-20 12:06:16'),(20,'rivero19',1000.00,'2016-11-25 10:07:49'),(21,'rivero19',4600.00,'2016-11-25 15:36:51'),(22,'rivero19',7948.00,'2016-11-25 16:33:36');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_venta` (
  `Num` int(5) NOT NULL AUTO_INCREMENT,
  `Id_producto` int(10) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `SubTotal` decimal(10,2) NOT NULL,
  `Num_V` int(5) NOT NULL,
  PRIMARY KEY (`Num`),
  KEY `detalleventa_ibfk_1` (`Num_V`),
  KEY `detalleventa_ibfk_2` (`Id_producto`),
  CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`Num_V`) REFERENCES `venta` (`Num_V`),
  CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`Id_producto`) REFERENCES `productos` (`Id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,1,70.00,1.00,70.00,1),(2,10,2600.00,1.00,2600.00,1),(3,7,3400.00,1.00,3400.00,1),(4,3,500.00,1.00,500.00,2),(5,7,3400.00,1.00,3400.00,2),(6,1,70.00,12.00,840.00,2),(7,12,2600.00,13.00,33800.00,2),(8,9,658.00,1.00,658.00,2),(9,1,70.00,1.00,70.00,2),(10,3,500.00,7.00,3500.00,2),(11,4,800.00,3.00,2400.00,2),(12,1,70.00,4.00,280.00,2),(13,4,800.00,1.00,800.00,2),(14,1,70.00,1.00,70.00,2),(15,6,2000.00,4.00,8000.00,2),(18,8,800.00,6.00,4800.00,11),(19,7,3400.00,5.00,17000.00,12),(20,13,3500.00,8.00,28000.00,12),(21,13,3500.00,35.00,122500.00,13),(22,6,2000.00,8.00,16000.00,14),(23,13,3500.00,5.00,17500.00,14),(24,7,3400.00,8.00,27200.00,15),(25,13,3500.00,49.00,171500.00,19),(26,1,100.00,10.00,1000.00,20),(27,1,100.00,46.00,4600.00,21),(28,3,500.00,8.00,4000.00,22),(29,9,658.00,6.00,3948.00,22);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbcmsproductos'
--
/*!50003 DROP PROCEDURE IF EXISTS `DELETE_PRODUCTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DELETE_PRODUCTO`(id varchar(3),idm varchar(3))
BEGIN
	DELETE FROM productos WHERE Id_producto = id;
    DELETE FROM modelo WHERE Id_modelo = idm;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LOGEAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LOGEAR_USUARIO`(
	IN IId_U VARCHAR(30)
)
begin
	select * from USUARIO
    where Cod_Usuario = IId_U;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NEW_PRODUCTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NEW_PRODUCTO`(image LONGBLOB,modelo varchar(30),marca varchar(3),descr text,nom varchar(50),ncat varchar(3),pre varchar(10),s varchar(4))
BEGIN
	DECLARE a int(11); 
	INSERT INTO modelo VALUES(null,modelo,null);
    INSERT INTO productos VALUES(null,nom,descr,image,pre,s,marca,(SELECT MAX(Id_modelo) FROM modelo),ncat);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `REGISTRAR_DETALLE_VENTA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `REGISTRAR_DETALLE_VENTA`(
    IN Modelo VARCHAR(100),
    IN Precio DECIMAL(10,2),
	IN Cantidad DECIMAL(10,2),
    IN SubTotal DECIMAL(10,2),
    IN Usuario VARCHAR(45),
    IN NumV INT(5)
)
BEGIN
	INSERT INTO detalle_venta VALUES (null,Modelo,Precio,Cantidad,SubTotal,NumV);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `REGISTRAR_VENTA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `REGISTRAR_VENTA`(
	IN Usuario VARCHAR(100),
    IN TTotal DOUBLE
)
BEGIN
        INSERT INTO venta VALUES (default,Usuario,TTotal,default);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UPDATE_GENERAL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_GENERAL`(nompag varchar(45),colorf varchar(20),colorl varchar(9),tamanol varchar(3),tipol varchar(25),cmfondo varchar(20),cmletra varchar(25),tamanolm varchar(15))
BEGIN
	UPDATE contenido_web SET Contenido = colorf WHERE Id = 'colorfondo';
    UPDATE contenido_web SET Contenido = colorl WHERE Id = 'colorletra';
    UPDATE contenido_web SET Contenido = tamanol WHERE Id = 'tamanoletra';
    UPDATE contenido_web SET Contenido = tipol WHERE  Id = 'tipoletra';
	UPDATE contenido_web SET Contenido = cmfondo WHERE  Id = 'colorfmenu';
	UPDATE contenido_web SET Contenido = cmletra WHERE  Id = 'colorlmenu';
    UPDATE contenido_web SET Contenido = tamanolm WHERE  Id = 'tamanoletram';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UPDATE_PRODUCTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_PRODUCTO`(image LONGBLOB,id varchar(3),modelo varchar(30),marca varchar(3),descr text,nom varchar(50),idm varchar(4),pre varchar(6),s varchar(3))
BEGIN
	IF image != '' then
    UPDATE productos SET imagen = image,nombre = nom,Id_marca = marca,descripciÃ³n = descr,precio = pre,stock = s  WHERE Id_producto = id;
    ELSE
	UPDATE productos SET nombre = nom,Id_marca = marca,descripciÃ³n = descr,precio = pre,stock = s  WHERE Id_producto = id;
	END IF;
    	UPDATE modelo SET Nom_modelo = modelo WHERE Id_modelo = idm;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-30 18:53:08
