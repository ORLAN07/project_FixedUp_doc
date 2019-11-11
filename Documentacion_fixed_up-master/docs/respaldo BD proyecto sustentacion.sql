-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_sustentacion
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.16-MariaDB

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id_area` int(11) NOT NULL COMMENT 'muestra el codigo del area',
  `nombre_area` varchar(20) NOT NULL COMMENT 'muestra la descripcion del area',
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'gerencia'),(2,'ventas'),(3,'produccion'),(4,'bodega'),(5,'ninguno');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL COMMENT 'muestra el codigo de la ciudad',
  `nombre_ciudad` varchar(30) NOT NULL COMMENT 'muestra el nombre de la ciudad',
  PRIMARY KEY (`id_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'bogota'),(2,'medellin'),(3,'cali'),(4,'bucaramanga'),(5,'barranquilla'),(6,'leticia');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `personas_documento` int(11) NOT NULL COMMENT 'id del documento del usuaro',
  `tipos_cliente_id_tipo_cliente` int(11) NOT NULL COMMENT 'id del tipo de cliente',
  PRIMARY KEY (`personas_documento`,`tipos_cliente_id_tipo_cliente`),
  KEY `fk_clientes_personas1_idx` (`personas_documento`),
  KEY `fk_clientes_tipos_cliente1_idx` (`tipos_cliente_id_tipo_cliente`),
  CONSTRAINT `fk_clientes_personas1` FOREIGN KEY (`personas_documento`) REFERENCES `personas` (`documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_clientes_tipos_cliente1` FOREIGN KEY (`tipos_cliente_id_tipo_cliente`) REFERENCES `tipos_cliente` (`id_tipo_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,1),(11,2),(12,3),(13,4),(14,2),(15,3);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dificultades`
--

DROP TABLE IF EXISTS `dificultades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dificultades` (
  `id_dificultad` int(11) NOT NULL COMMENT 'id de la dificultad del proyecto',
  `descripcion_dificultad` varchar(25) NOT NULL COMMENT 'descripcion de la dificultad. facil, media, dificil',
  PRIMARY KEY (`id_dificultad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dificultades`
--

LOCK TABLES `dificultades` WRITE;
/*!40000 ALTER TABLE `dificultades` DISABLE KEYS */;
INSERT INTO `dificultades` VALUES (1,'facil'),(2,'intermedio'),(3,'dificil');
/*!40000 ALTER TABLE `dificultades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL COMMENT 'id del estado del proyecto',
  `descripcion_estado` varchar(30) NOT NULL COMMENT 'descripcion del estado del proyecto. pausa, iniciado, finalizado.',
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'en proceso'),(2,'en pausa'),(3,'finalizado');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `listar_el_total_del_stock_poliestireno_acrilico`
--

DROP TABLE IF EXISTS `listar_el_total_del_stock_poliestireno_acrilico`;
/*!50001 DROP VIEW IF EXISTS `listar_el_total_del_stock_poliestireno_acrilico`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_el_total_del_stock_poliestireno_acrilico` AS SELECT 
 1 AS `valor_total_material`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_los_clientes_que_hacen_un_pedido_por_primera_vez`
--

DROP TABLE IF EXISTS `listar_los_clientes_que_hacen_un_pedido_por_primera_vez`;
/*!50001 DROP VIEW IF EXISTS `listar_los_clientes_que_hacen_un_pedido_por_primera_vez`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_los_clientes_que_hacen_un_pedido_por_primera_vez` AS SELECT 
 1 AS `documento`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `descripcion_cliente`,
 1 AS `id_pedido`,
 1 AS `nombre_proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_los_clientes_que_son_de_empresas`
--

DROP TABLE IF EXISTS `listar_los_clientes_que_son_de_empresas`;
/*!50001 DROP VIEW IF EXISTS `listar_los_clientes_que_son_de_empresas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_los_clientes_que_son_de_empresas` AS SELECT 
 1 AS `documento`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `descripcion_cliente`,
 1 AS `id_pedido`,
 1 AS `nombre_proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_los_clientes_que_son_frecuentes`
--

DROP TABLE IF EXISTS `listar_los_clientes_que_son_frecuentes`;
/*!50001 DROP VIEW IF EXISTS `listar_los_clientes_que_son_frecuentes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_los_clientes_que_son_frecuentes` AS SELECT 
 1 AS `documento`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `descripcion_cliente`,
 1 AS `id_pedido`,
 1 AS `nombre_proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_los_clientes_que_son_internos`
--

DROP TABLE IF EXISTS `listar_los_clientes_que_son_internos`;
/*!50001 DROP VIEW IF EXISTS `listar_los_clientes_que_son_internos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_los_clientes_que_son_internos` AS SELECT 
 1 AS `documento`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `descripcion_cliente`,
 1 AS `id_pedido`,
 1 AS `nombre_proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_los_proyectos_entregados_en_determinada_fecha`
--

DROP TABLE IF EXISTS `listar_los_proyectos_entregados_en_determinada_fecha`;
/*!50001 DROP VIEW IF EXISTS `listar_los_proyectos_entregados_en_determinada_fecha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_los_proyectos_entregados_en_determinada_fecha` AS SELECT 
 1 AS `documento`,
 1 AS `nombre`,
 1 AS `tipos_cliente_id_tipo_cliente`,
 1 AS `descripcion_cliente`,
 1 AS `id_pedido`,
 1 AS `fecha_entrega`,
 1 AS `nombre_proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_los_proyectos_que_se_terminaron_en_el_dia`
--

DROP TABLE IF EXISTS `listar_los_proyectos_que_se_terminaron_en_el_dia`;
/*!50001 DROP VIEW IF EXISTS `listar_los_proyectos_que_se_terminaron_en_el_dia`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_los_proyectos_que_se_terminaron_en_el_dia` AS SELECT 
 1 AS `documento`,
 1 AS `nombre`,
 1 AS `tipos_cliente_id_tipo_cliente`,
 1 AS `descripcion_cliente`,
 1 AS `id_pedido`,
 1 AS `fecha_entrega`,
 1 AS `nombre_proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_proyectos_con_mas_dificultad`
--

DROP TABLE IF EXISTS `listar_proyectos_con_mas_dificultad`;
/*!50001 DROP VIEW IF EXISTS `listar_proyectos_con_mas_dificultad`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_proyectos_con_mas_dificultad` AS SELECT 
 1 AS `id`,
 1 AS `mombre_proyecto`,
 1 AS `estado`,
 1 AS `dificultades_id_dificultad`,
 1 AS `personas_responsable`,
 1 AS `nombre`,
 1 AS `apellido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_proyectos_iniciados`
--

DROP TABLE IF EXISTS `listar_proyectos_iniciados`;
/*!50001 DROP VIEW IF EXISTS `listar_proyectos_iniciados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_proyectos_iniciados` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `documento`,
 1 AS `descripcion_cliente`,
 1 AS `cantidad`,
 1 AS `nombre_proyecto`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_proyectos_pausados`
--

DROP TABLE IF EXISTS `listar_proyectos_pausados`;
/*!50001 DROP VIEW IF EXISTS `listar_proyectos_pausados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_proyectos_pausados` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `documento`,
 1 AS `descripcion_cliente`,
 1 AS `cantidad`,
 1 AS `nombre_proyecto`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_proyectos_terminados`
--

DROP TABLE IF EXISTS `listar_proyectos_terminados`;
/*!50001 DROP VIEW IF EXISTS `listar_proyectos_terminados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_proyectos_terminados` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `documento`,
 1 AS `descripcion_cliente`,
 1 AS `cantidad`,
 1 AS `nombre_proyecto`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_stock_que_esta_por_acabarse`
--

DROP TABLE IF EXISTS `listar_stock_que_esta_por_acabarse`;
/*!50001 DROP VIEW IF EXISTS `listar_stock_que_esta_por_acabarse`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_stock_que_esta_por_acabarse` AS SELECT 
 1 AS `id_stock`,
 1 AS `stock`,
 1 AS `referencia`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `materias_prima`
--

DROP TABLE IF EXISTS `materias_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_prima` (
  `referencia` varchar(20) NOT NULL COMMENT 'referencia de la materia prima',
  `tipo_materia_prima` varchar(20) NOT NULL COMMENT 'tipo de la materia prima. poliestireno, acrilico',
  `calibre` int(11) NOT NULL COMMENT 'calibre de la materia prima (grosor).',
  `dimension_largo` int(11) NOT NULL COMMENT 'largo de la lamina',
  `dimension_alto` int(11) NOT NULL COMMENT 'alto de la lamina',
  `stocks_id_stock` int(11) NOT NULL,
  `pedido_id_pedido` int(11) NOT NULL,
  PRIMARY KEY (`referencia`,`stocks_id_stock`,`pedido_id_pedido`),
  KEY `fk_materias_prima_bodega1_idx` (`stocks_id_stock`),
  KEY `fk_materias_prima_pedido1_idx` (`pedido_id_pedido`),
  CONSTRAINT `fk_materias_prima_bodega1` FOREIGN KEY (`stocks_id_stock`) REFERENCES `stocks` (`id_stock`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_materias_prima_pedido1` FOREIGN KEY (`pedido_id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_prima`
--

LOCK TABLES `materias_prima` WRITE;
/*!40000 ALTER TABLE `materias_prima` DISABLE KEYS */;
INSERT INTO `materias_prima` VALUES ('a155','acrilico',2,50,50,1,1),('ak47','poliestireno',2,25,25,3,3),('alc123','acrilico',6,50,250,6,6),('eln1992','poliestireno',2,25,30,4,4),('p789','acrilico',4,70,70,2,2),('sua55','acrilico',2,25,50,5,5);
/*!40000 ALTER TABLE `materias_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_prima_proveedores`
--

DROP TABLE IF EXISTS `materias_prima_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_prima_proveedores` (
  `materias_prima_referencia` varchar(20) NOT NULL,
  `proveedores_nit_proveedor` varchar(20) NOT NULL,
  PRIMARY KEY (`materias_prima_referencia`,`proveedores_nit_proveedor`),
  KEY `fk_materias_prima_has_proveedores_proveedores1_idx` (`proveedores_nit_proveedor`),
  KEY `fk_materias_prima_has_proveedores_materias_prima1_idx` (`materias_prima_referencia`),
  CONSTRAINT `fk_materias_prima_has_proveedores_materias_prima1` FOREIGN KEY (`materias_prima_referencia`) REFERENCES `materias_prima` (`referencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_materias_prima_has_proveedores_proveedores1` FOREIGN KEY (`proveedores_nit_proveedor`) REFERENCES `proveedores` (`nit_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_prima_proveedores`
--

LOCK TABLES `materias_prima_proveedores` WRITE;
/*!40000 ALTER TABLE `materias_prima_proveedores` DISABLE KEYS */;
INSERT INTO `materias_prima_proveedores` VALUES ('a155','a10'),('ak47','b11'),('alc123','c13'),('eln1992','d14'),('p789','e15'),('sua55','f16');
/*!40000 ALTER TABLE `materias_prima_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL COMMENT 'identificador del pedido',
  `cantidad` int(11) NOT NULL COMMENT 'cantidad pedida por el cliente',
  `fecha_ingreso` date NOT NULL COMMENT 'fecha en la que se ingreso el proyecto',
  `fecha_entrega` date NOT NULL COMMENT 'fecha en la que se entrega el proyecto',
  `descripcion` varchar(50) NOT NULL COMMENT 'detalles especificos del proyecto',
  `dimension_alto` double NOT NULL COMMENT 'alto utilizado del proyecto',
  `dimension_ancho` double NOT NULL COMMENT 'ancho utilizado del proyecto',
  `clientes_personas_documento` int(11) NOT NULL,
  PRIMARY KEY (`id_pedido`,`clientes_personas_documento`),
  KEY `fk_pedido_clientes1_idx` (`clientes_personas_documento`),
  CONSTRAINT `fk_pedido_clientes1` FOREIGN KEY (`clientes_personas_documento`) REFERENCES `clientes` (`personas_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,50,'2017-01-01','2017-02-01','señalizacion escaleras',10,5,2),(2,2,'2017-01-10','2017-01-20','letrero externo',10,40,11),(3,10,'2017-01-11','2017-02-10','trofeos',15,4,12),(4,100,'2017-01-11','2017-03-30','fichas de tangram',5,5,13),(5,25,'2017-01-17','2017-01-30','señalizaciones de transito',7,28,14),(6,500,'2017-01-20','2017-06-30','adornos separador carrera caracas',50,250,15);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `documento` int(11) NOT NULL COMMENT 'documento de identidad del personal',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre del personal',
  `apellido` varchar(20) NOT NULL COMMENT 'apellido del personal',
  `telefono` int(11) NOT NULL COMMENT 'telefono del personal',
  `direccion` varchar(30) NOT NULL COMMENT 'direccion del personal',
  `roles_id_rol` int(11) NOT NULL,
  `areas_id_area` int(11) NOT NULL,
  PRIMARY KEY (`documento`,`roles_id_rol`,`areas_id_area`),
  KEY `fk_personas_areas1_idx` (`areas_id_area`),
  KEY `fk_personas_roles1_idx` (`roles_id_rol`),
  CONSTRAINT `fk_personas_areas1` FOREIGN KEY (`areas_id_area`) REFERENCES `areas` (`id_area`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_personas_roles1` FOREIGN KEY (`roles_id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'edgar','zamora',1234,'calle 1',1,1),(2,'david','zamora',5678,'calle 2',1,1),(3,'alexis','zamora',9101,'calle 3',2,2),(4,'orlando','rubio',1011,'calle 4',2,2),(5,'alexander','benavides',1213,'calle 5',2,2),(6,'diana','otalora',1415,'calle 6',4,3),(7,'edixon','guallara',1617,'calle 7',4,3),(8,'huanio','gonzales',1819,'calle 8',4,3),(9,'aldemar','peña',2021,'calle 9',4,3),(10,'andrez','florez',2223,'calle 10',4,3),(11,'aura','cendales',2425,'calle 11',3,5),(12,'angie','delgado',2627,'calle 12',3,5),(13,'andy','uriel',2829,'calle 13',3,5),(14,'camilo','beltran',3031,'calle 14',3,5),(15,'uribe','santos',3233,'calle 15',3,5);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `nit_proveedor` varchar(20) NOT NULL COMMENT 'nit de la empresa ',
  `nombre_empresa` varchar(30) NOT NULL COMMENT 'nombre de la empresa',
  `direccion` varchar(25) NOT NULL COMMENT 'direccion de la empresa',
  `telefono` int(11) NOT NULL COMMENT 'telefono de la empresa',
  `representante_legal` varchar(30) NOT NULL COMMENT 'nombre del representante legal de la empresa',
  `ciudades_id_ciudad` int(11) NOT NULL,
  PRIMARY KEY (`nit_proveedor`,`ciudades_id_ciudad`),
  KEY `fk_proveedores_ciudades1_idx` (`ciudades_id_ciudad`),
  CONSTRAINT `fk_proveedores_ciudades1` FOREIGN KEY (`ciudades_id_ciudad`) REFERENCES `ciudades` (`id_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES ('a10','acricol ltda','calle 50',3031,'benito calamardo',1),('b11','acribest','calle 51',3233,'armando mendoza',2),('c13','eco-acril','calle 52',3435,'yina parody',3),('d14','acriplast','calle 53',3637,'manuel teodoro',4),('e15','policril','calle 54',3839,'jesus de nasareth',5),('f16','poliestirenos del oeste','calle 55',4041,'luis fernando',6);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL COMMENT 'codigo del proyecto',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre del proyecto propuesto por el cliente',
  `estado` varchar(20) NOT NULL COMMENT 'estado del proyecto, iniciado, pausado, terminado',
  `pedido_id_pedido` int(11) NOT NULL,
  `dificultades_id_dificultad` int(11) NOT NULL,
  `personas_responsable` int(11) NOT NULL,
  `estados_id_estado` int(11) NOT NULL,
  PRIMARY KEY (`id_proyecto`,`pedido_id_pedido`,`dificultades_id_dificultad`,`personas_responsable`,`estados_id_estado`),
  KEY `fk_proyecto_pedido1_idx` (`pedido_id_pedido`),
  KEY `fk_proyecto_dificultades1_idx` (`dificultades_id_dificultad`),
  KEY `fk_proyecto_personas1_idx` (`personas_responsable`),
  KEY `fk_proyecto_estados1_idx` (`estados_id_estado`),
  CONSTRAINT `fk_proyecto_dificultades1` FOREIGN KEY (`dificultades_id_dificultad`) REFERENCES `dificultades` (`id_dificultad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyecto_estados1` FOREIGN KEY (`estados_id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyecto_pedido1` FOREIGN KEY (`pedido_id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyecto_personas1` FOREIGN KEY (`personas_responsable`) REFERENCES `personas` (`documento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (1,'señalizacion escaler','1',1,1,6,1),(2,'letreros supermercad','2',2,2,7,2),(3,'trofeos campeonato d','3',3,3,8,3),(4,'fichas de tangram','1',4,1,9,1),(5,'modernizacion carrer','2',5,2,10,2),(6,'modernizacion caraca','3',6,3,6,3);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL COMMENT 'identificador del rol',
  `nombre_rol` varchar(20) NOT NULL COMMENT 'descripcion del rol',
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'administrador'),(2,'vendedor'),(3,'cliente'),(4,'operario');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `id_stock` int(11) NOT NULL COMMENT 'id del stock (bodega)',
  `stock` int(11) NOT NULL COMMENT 'numero que hay de la materia prima',
  PRIMARY KEY (`id_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,50),(2,30),(3,2),(4,0),(5,6),(6,1),(7,9),(8,100),(9,10),(10,0);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_cliente`
--

DROP TABLE IF EXISTS `tipos_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_cliente` (
  `id_tipo_cliente` int(11) NOT NULL COMMENT 'identificador del cliente',
  `descripcion_cliente` varchar(30) NOT NULL COMMENT 'descripcion del cliente. frecuente, interno, primera vez...',
  PRIMARY KEY (`id_tipo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_cliente`
--

LOCK TABLES `tipos_cliente` WRITE;
/*!40000 ALTER TABLE `tipos_cliente` DISABLE KEYS */;
INSERT INTO `tipos_cliente` VALUES (1,'interno'),(2,'empresa'),(3,'primera vez'),(4,'frecuente');
/*!40000 ALTER TABLE `tipos_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `listar_el_total_del_stock_poliestireno_acrilico`
--

/*!50001 DROP VIEW IF EXISTS `listar_el_total_del_stock_poliestireno_acrilico`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_el_total_del_stock_poliestireno_acrilico` AS select sum(`stocks`.`stock`) AS `valor_total_material` from `stocks` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_los_clientes_que_hacen_un_pedido_por_primera_vez`
--

/*!50001 DROP VIEW IF EXISTS `listar_los_clientes_que_hacen_un_pedido_por_primera_vez`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_los_clientes_que_hacen_un_pedido_por_primera_vez` AS select `personas`.`documento` AS `documento`,`personas`.`nombre` AS `nombre`,`personas`.`apellido` AS `apellido`,`tipos_cliente`.`descripcion_cliente` AS `descripcion_cliente`,`pedidos`.`id_pedido` AS `id_pedido`,`proyectos`.`nombre` AS `nombre_proyecto` from ((((`personas` join `clientes` on((`personas`.`documento` = `clientes`.`personas_documento`))) join `tipos_cliente` on((`tipos_cliente`.`id_tipo_cliente` = `clientes`.`tipos_cliente_id_tipo_cliente`))) join `pedidos` on((`clientes`.`personas_documento` = `pedidos`.`clientes_personas_documento`))) join `proyectos` on((`pedidos`.`id_pedido` = `proyectos`.`pedido_id_pedido`))) where (`tipos_cliente`.`id_tipo_cliente` = 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_los_clientes_que_son_de_empresas`
--

/*!50001 DROP VIEW IF EXISTS `listar_los_clientes_que_son_de_empresas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_los_clientes_que_son_de_empresas` AS select `personas`.`documento` AS `documento`,`personas`.`nombre` AS `nombre`,`personas`.`apellido` AS `apellido`,`tipos_cliente`.`descripcion_cliente` AS `descripcion_cliente`,`pedidos`.`id_pedido` AS `id_pedido`,`proyectos`.`nombre` AS `nombre_proyecto` from ((((`personas` join `clientes` on((`personas`.`documento` = `clientes`.`personas_documento`))) join `tipos_cliente` on((`tipos_cliente`.`id_tipo_cliente` = `clientes`.`tipos_cliente_id_tipo_cliente`))) join `pedidos` on((`clientes`.`personas_documento` = `pedidos`.`clientes_personas_documento`))) join `proyectos` on((`pedidos`.`id_pedido` = `proyectos`.`pedido_id_pedido`))) where (`tipos_cliente`.`id_tipo_cliente` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_los_clientes_que_son_frecuentes`
--

/*!50001 DROP VIEW IF EXISTS `listar_los_clientes_que_son_frecuentes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_los_clientes_que_son_frecuentes` AS select `personas`.`documento` AS `documento`,`personas`.`nombre` AS `nombre`,`personas`.`apellido` AS `apellido`,`tipos_cliente`.`descripcion_cliente` AS `descripcion_cliente`,`pedidos`.`id_pedido` AS `id_pedido`,`proyectos`.`nombre` AS `nombre_proyecto` from ((((`personas` join `clientes` on((`personas`.`documento` = `clientes`.`personas_documento`))) join `tipos_cliente` on((`tipos_cliente`.`id_tipo_cliente` = `clientes`.`tipos_cliente_id_tipo_cliente`))) join `pedidos` on((`clientes`.`personas_documento` = `pedidos`.`clientes_personas_documento`))) join `proyectos` on((`pedidos`.`id_pedido` = `proyectos`.`pedido_id_pedido`))) where (`tipos_cliente`.`id_tipo_cliente` = 4) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_los_clientes_que_son_internos`
--

/*!50001 DROP VIEW IF EXISTS `listar_los_clientes_que_son_internos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_los_clientes_que_son_internos` AS select `personas`.`documento` AS `documento`,`personas`.`nombre` AS `nombre`,`personas`.`apellido` AS `apellido`,`tipos_cliente`.`descripcion_cliente` AS `descripcion_cliente`,`pedidos`.`id_pedido` AS `id_pedido`,`proyectos`.`nombre` AS `nombre_proyecto` from ((((`personas` join `clientes` on((`personas`.`documento` = `clientes`.`personas_documento`))) join `tipos_cliente` on((`tipos_cliente`.`id_tipo_cliente` = `clientes`.`tipos_cliente_id_tipo_cliente`))) join `pedidos` on((`clientes`.`personas_documento` = `pedidos`.`clientes_personas_documento`))) join `proyectos` on((`pedidos`.`id_pedido` = `proyectos`.`pedido_id_pedido`))) where (`tipos_cliente`.`id_tipo_cliente` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_los_proyectos_entregados_en_determinada_fecha`
--

/*!50001 DROP VIEW IF EXISTS `listar_los_proyectos_entregados_en_determinada_fecha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_los_proyectos_entregados_en_determinada_fecha` AS select `personas`.`documento` AS `documento`,`personas`.`nombre` AS `nombre`,`clientes`.`tipos_cliente_id_tipo_cliente` AS `tipos_cliente_id_tipo_cliente`,`tipos_cliente`.`descripcion_cliente` AS `descripcion_cliente`,`pedidos`.`id_pedido` AS `id_pedido`,`pedidos`.`fecha_entrega` AS `fecha_entrega`,`proyectos`.`nombre` AS `nombre_proyecto` from ((((`personas` join `clientes` on((`personas`.`documento` = `clientes`.`personas_documento`))) join `tipos_cliente` on((`clientes`.`tipos_cliente_id_tipo_cliente` = `tipos_cliente`.`id_tipo_cliente`))) join `pedidos` on((`clientes`.`personas_documento` = `pedidos`.`clientes_personas_documento`))) join `proyectos` on((`pedidos`.`id_pedido` = `proyectos`.`pedido_id_pedido`))) where ((month(`pedidos`.`fecha_entrega`) = 2) and (year(`pedidos`.`fecha_entrega`) = 2017)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_los_proyectos_que_se_terminaron_en_el_dia`
--

/*!50001 DROP VIEW IF EXISTS `listar_los_proyectos_que_se_terminaron_en_el_dia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_los_proyectos_que_se_terminaron_en_el_dia` AS select `personas`.`documento` AS `documento`,`personas`.`nombre` AS `nombre`,`clientes`.`tipos_cliente_id_tipo_cliente` AS `tipos_cliente_id_tipo_cliente`,`tipos_cliente`.`descripcion_cliente` AS `descripcion_cliente`,`pedidos`.`id_pedido` AS `id_pedido`,`pedidos`.`fecha_entrega` AS `fecha_entrega`,`proyectos`.`nombre` AS `nombre_proyecto` from ((((`personas` join `clientes` on((`personas`.`documento` = `clientes`.`personas_documento`))) join `tipos_cliente` on((`clientes`.`tipos_cliente_id_tipo_cliente` = `tipos_cliente`.`id_tipo_cliente`))) join `pedidos` on((`clientes`.`personas_documento` = `pedidos`.`clientes_personas_documento`))) join `proyectos` on((`pedidos`.`id_pedido` = `proyectos`.`pedido_id_pedido`))) where (`pedidos`.`fecha_entrega` = '2017-02-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_proyectos_con_mas_dificultad`
--

/*!50001 DROP VIEW IF EXISTS `listar_proyectos_con_mas_dificultad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_proyectos_con_mas_dificultad` AS select `proyectos`.`id_proyecto` AS `id`,`proyectos`.`nombre` AS `mombre_proyecto`,`proyectos`.`estado` AS `estado`,`proyectos`.`dificultades_id_dificultad` AS `dificultades_id_dificultad`,`proyectos`.`personas_responsable` AS `personas_responsable`,`personas`.`nombre` AS `nombre`,`personas`.`apellido` AS `apellido` from (`personas` join `proyectos` on(((`proyectos`.`dificultades_id_dificultad` = 3) and (`proyectos`.`personas_responsable` = `personas`.`documento`)))) group by `proyectos`.`id_proyecto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_proyectos_iniciados`
--

/*!50001 DROP VIEW IF EXISTS `listar_proyectos_iniciados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_proyectos_iniciados` AS select `personas`.`nombre` AS `nombre`,`personas`.`apellido` AS `apellido`,`personas`.`documento` AS `documento`,`tipos_cliente`.`descripcion_cliente` AS `descripcion_cliente`,`pedidos`.`cantidad` AS `cantidad`,`proyectos`.`nombre` AS `nombre_proyecto`,`proyectos`.`estado` AS `estado` from ((((`personas` join `tipos_cliente`) join `pedidos`) join `proyectos`) join `estados`) where ((`proyectos`.`estado` = 1) and (`proyectos`.`personas_responsable` = `personas`.`documento`)) group by `proyectos`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_proyectos_pausados`
--

/*!50001 DROP VIEW IF EXISTS `listar_proyectos_pausados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_proyectos_pausados` AS select `personas`.`nombre` AS `nombre`,`personas`.`apellido` AS `apellido`,`personas`.`documento` AS `documento`,`tipos_cliente`.`descripcion_cliente` AS `descripcion_cliente`,`pedidos`.`cantidad` AS `cantidad`,`proyectos`.`nombre` AS `nombre_proyecto`,`proyectos`.`estado` AS `estado` from ((((`personas` join `tipos_cliente`) join `pedidos`) join `proyectos`) join `estados`) where ((`proyectos`.`estado` = 2) and (`proyectos`.`personas_responsable` = `personas`.`documento`)) group by `proyectos`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_proyectos_terminados`
--

/*!50001 DROP VIEW IF EXISTS `listar_proyectos_terminados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_proyectos_terminados` AS select `personas`.`nombre` AS `nombre`,`personas`.`apellido` AS `apellido`,`personas`.`documento` AS `documento`,`tipos_cliente`.`descripcion_cliente` AS `descripcion_cliente`,`pedidos`.`cantidad` AS `cantidad`,`proyectos`.`nombre` AS `nombre_proyecto`,`proyectos`.`estado` AS `estado` from ((((`personas` join `tipos_cliente`) join `pedidos`) join `proyectos`) join `estados`) where ((`proyectos`.`estado` = 3) and (`proyectos`.`personas_responsable` = `personas`.`documento`)) group by `proyectos`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_stock_que_esta_por_acabarse`
--

/*!50001 DROP VIEW IF EXISTS `listar_stock_que_esta_por_acabarse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_stock_que_esta_por_acabarse` AS select `stocks`.`id_stock` AS `id_stock`,`stocks`.`stock` AS `stock`,`materias_prima`.`referencia` AS `referencia` from (`stocks` join `materias_prima`) where (`stocks`.`stock` < 15) group by `stocks`.`id_stock` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-02 19:46:22
